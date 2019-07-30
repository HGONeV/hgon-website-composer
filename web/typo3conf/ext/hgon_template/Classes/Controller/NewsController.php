<?php
namespace HGON\HgonTemplate\Controller;

/***
 *
 * This file is part of the "HGON Template" Extension for TYPO3 CMS.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 *  (c) 2018 Maximilian Fäßler <maximilian@faesslerweb.de>, Fäßler Web UG
 *
 ***/
use TYPO3\CMS\Extbase\Utility\DebuggerUtility;
use TYPO3\CMS\Core\Utility\GeneralUtility;

use \RKW\RkwBasics\Helper\Common;
use \TYPO3\CMS\Extbase\Configuration\ConfigurationManagerInterface;
/**
 * NewsController
 */
class NewsController extends \GeorgRinger\News\Controller\NewsController
{
    /**
     * pagesRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\PagesRepository
     * @inject
     */
    protected $pagesRepository = null;

    /**
     * newsRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\NewsRepository
     * @inject
     */
    protected $newsRepository = null;

    /**
     * sysCategoryRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\SysCategoryRepository
     * @inject
     */
    protected $sysCategoryRepository = null;

    /**
     * didYouKnowRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\DidYouKnowRepository
     * @inject
     */
    protected $didYouKnowRepository = null;

    /**
     * showRelatedSidebarAction
     */
    public function showRelatedSidebarAction()
    {
        /** @var \HGON\HgonTemplate\Domain\Model\Pages $pages */
        $pages = $this->pagesRepository->findByIdentifier(intval($GLOBALS['TSFE']->id));
        if (count($pages->getCategories())) {
            $this->view->assign('newsList', $this->newsRepository->findByCategories($pages->getCategories()));
        }
        $this->view->assign('settingsHgonTemplate', self::getSettings('HgonTemplate'));
    }



    /**
     * action journalHighlight
     *
     * @return void
     */
    public function journalHighlightAction()
    {
        // if set: Show manual choosen news first
        $mainNews = $this->newsRepository->findByIdentifier(intval($this->settings['journalHighlight']['newsUid']));
        $this->view->assign('newsManualSelect', $mainNews);
        $this->view->assign('newsList', $this->newsRepository->findAllExceptCurrent($mainNews));

    }



    /**
     * action journal
     *
     *
     * @param \HGON\HgonTemplate\Domain\Model\SysCategory $sysCategory
     * @param integer $pageNumber
     * @return void
     */
    public function journalAction(\HGON\HgonTemplate\Domain\Model\SysCategory $sysCategory = null, $pageNumber = 0)
    {
        $pageNumber++;
        $templateDataArray = [];

        /** @var \RKW\RkwRegistration\Domain\Repository\FrontendUserRepository $frontendUserRepository */
     //   $objectManager = GeneralUtility::makeInstance('TYPO3\\CMS\\Extbase\\Object\\ObjectManager');
        /** @var \HGON\HgonTemplate\Helper\Journal $journalHelper */
     //   $journalHelper = $objectManager->get('HGON\\HgonTemplate\\Helper\\Journal');

        // a) Entweder: Völlig dynamisch
        //    $templateDataArray['journalRowList'] = $journalHelper->createResultSet($this->settings, $pageNumber, $sysCategory);

        // b) Oder: Einfach
     //   $helperRequest = $journalHelper->getPagesList($this->settings, $pageNumber, $sysCategory);
        /** @var \TYPO3\CMS\Extbase\Persistence\QueryResultInterface $pagesWithCategoryList */
      //  $pagesWithCategoryList = $helperRequest['sysCategoryList'];
      //  $templateDataArray['journalRowList'] = $helperRequest['journalRowList'];
        // @toDo: If $templateDataArray['journalRowList'] delivers only a few results: Try to fill with news
        $templateDataArray['journalRowList'] = $this->newsRepository->findByFilter($sysCategory, [], [], $pageNumber, intval($this->settings['journal']['itemsPerPage']));
        // sysCategory is set, if user is filtering
        /*
        if ($sysCategory) {
            $journalParentCategory = $sysCategory;
        } else {
            $journalParentCategory = $this->sysCategoryRepository->findByIdentifier($this->settings['journal']['parentCategoryUid']);
        }

        // category list (find by "journal"-sysCategory, or given sysCategory)
        $sysCategoryList = $this->sysCategoryRepository->findOneWithAllRecursiveChildren($journalParentCategory, null, true);

        // pages list
        $pagesWithCategoryList = $this->pagesRepository->findBySysCategory($sysCategoryList);
        if ($pagesWithCategoryList->count()) {
            $templateDataArray['journalRowList'] = $this->pagesRepository->findTreeByParentPages($pagesWithCategoryList, true, $pageNumber, intval($this->settings['journal']['itemsPerPage']));
        }
        */

        // get categories of news
        $newsList = $this->newsRepository->findAll();
        $categoryList = [];
        /** @var \HGON\HgonTemplate\Domain\Model\News $news */
        foreach ($newsList as $news) {
            /** @var \HGON\HgonTemplate\Domain\Model\SysCategory $category */
            foreach ($news->getCategories() as $category) {
                $categoryList[$category->getUid()] = $category;
            }
        }

        // get general category list for filter function
    //    $journalParentCategory = $this->sysCategoryRepository->findByIdentifier(intval($this->settings['journal']['parentCategoryUid']));
        // @toDo: Nur Kategorien anzeigen, zu denen es auch news gibt?
    //    $sysCategoryListFilter = $this->sysCategoryRepository->findOneWithAllRecursiveChildren($journalParentCategory, null, true);
    //    $templateDataArray['sysCategoryList'] = $sysCategoryListFilter;
        $templateDataArray['sysCategoryList'] = $categoryList;
        $templateDataArray['selectedSysCategory'] = $sysCategory;
        $templateDataArray['pageTypeAjax'] = $this->settings['journal']['ajaxTypeNum'];
        $templateDataArray['pageNumber'] = $pageNumber;



        if (count($templateDataArray['journalRowList'])) {
            $templateDataArray['showMoreLink'] = $this->newsRepository->findByFilter($sysCategory, [], [], $pageNumber, 9999)->count() > $pageNumber * intval($this->settings['journal']['itemsPerPage']) ? true : false;
        } else {
            $templateDataArray['showMoreLink'] = false;
        }


        // add "didYouKnow" random (check for category-entry. Else take something)
        // @toDo: Maybe also search for parent-category?
        $didYouKnowListByCategory = $this->didYouKnowRepository->findBySysCategory($sysCategory);
        if ($didYouKnowListByCategory->count()) {
            $didYouKnowList = $didYouKnowListByCategory;
        } else {
            $didYouKnowList = $this->didYouKnowRepository->findAll();
        }
        $templateDataArray['didYouKnow'] = $didYouKnowList[rand(0, count($didYouKnowList) - 1)];


        // check for ajax context
        // WICHTIG: Aktuell findet nur bei der Paginierung ein Ajax-Request statt. NICHT bei der Kategorieauswahl!
        // -> Weil die Kategorie Teil der URL sein soll
        if (GeneralUtility::_GP('type') == intval($this->settings['journal']['ajaxTypeNum'])) {

            // get JSON helper
            /** @var \RKW\RkwBasics\Helper\Json $jsonHelper */
            $jsonHelper = GeneralUtility::makeInstance('RKW\\RkwBasics\\Helper\\Json');

            // ajax context: Set settings manually
            $templateDataArray['settings'] = $this->settings;

            // if sysCategory and page 1 - reload whole content. Else: Append
            $kindOfRequest = $pageNumber == 1 ? 'replace' : 'append';

            // Content
            $jsonHelper->setHtml(
                'journal-flex-container',
                $templateDataArray,
                $kindOfRequest,
                'Ajax/Journal/' . ucfirst($kindOfRequest) . '.html'
            );

            // More link replace
            $jsonHelper->setHtml(
                'journal-more-link-container',
                $templateDataArray,
                'replace',
                'Ajax/Journal/MoreLink.html'
            );

            print (string)$jsonHelper;
            exit();
            //===

        } else {
            $this->view->assignMultiple($templateDataArray);
        }

    }



    /**
     * Returns TYPO3 settings
     *
     * @param string $extension extension name
     * @param string $which Which type of settings will be loaded
     * @return array
     */
    protected static function getSettings($extension = 'News', $which = ConfigurationManagerInterface::CONFIGURATION_TYPE_SETTINGS)
    {
        return Common::getTyposcriptConfiguration($extension, $which);
        //===
    }

}
