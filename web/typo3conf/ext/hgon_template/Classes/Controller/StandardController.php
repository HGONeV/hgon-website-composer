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

/**
 * StandardController
 */
class StandardController extends \TYPO3\CMS\Extbase\Mvc\Controller\ActionController
{
    /**
     * pagesRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\PagesRepository
     * @inject
     */
    protected $pagesRepository = null;

    /**
     * authorsRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\AuthorsRepository
     * @inject
     */
    protected $authorsRepository = null;

    /**
     * projectsRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\ProjectsRepository
     * @inject

    protected $projectsRepository = null;
     */

    /**
     * sysCategoryRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\SysCategoryRepository
     * @inject
     */
    protected $sysCategoryRepository = null;

    /**
     * eventRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\EventRepository
     * @inject
     */
    protected $eventRepository = null;

    /**
     * newsRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\NewsRepository
     * @inject
     */
    protected $newsRepository = null;

    /**
     * didYouKnowRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\DidYouKnowRepository
     * @inject
     */
    protected $didYouKnowRepository = null;

    /**
     * cacheManager
     *
     * @var \TYPO3\CMS\Core\Cache\Frontend\VariableFrontend
     */
    protected $cacheManager;

    /**
     * @var \TYPO3\CMS\Frontend\ContentObject\ContentObjectRenderer
     */
    protected $cObj;


    public function initializeAction()
    {
      //  $this->cacheManager = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance('TYPO3\\CMS\\Core\\Cache\\CacheManager')->getCache("hgon_template");
      //  $this->cObj = $this->configurationManager->getContentObject();
    }

	/**
	 * action journalHighlight
	 *
	 * @return void
	 */
	public function journalHighlightAction()
	{
        // if set: Show manual choosen page first
        $this->view->assign('pagesManualSelect', $this->pagesRepository->findByIdentifier(intval($this->settings['journalHighlight']['pid'])));

        // add further journal entries
        /** @var \RKW\RkwRegistration\Domain\Repository\FrontendUserRepository $frontendUserRepository */
        $objectManager = GeneralUtility::makeInstance('TYPO3\\CMS\\Extbase\\Object\\ObjectManager');
        /** @var \HGON\HgonTemplate\Helper\Journal $journalHelper */
        $journalHelper = $objectManager->get('HGON\\HgonTemplate\\Helper\\Journal');

        $helperRequest = $journalHelper->getPagesList($this->settings, 1);
        /** @var \TYPO3\CMS\Extbase\Persistence\QueryResultInterface $pagesWithCategoryList */
        $this->view->assign('journalPagesList', $helperRequest['journalRowList']);

	}



    /**
     * action pageHighlight
     *
     * @return void
     */
    public function pageHighlightAction()
    {
        $this->view->assign('pages', $this->pagesRepository->findByIdentifier(intval($this->settings['pageHighlight']['pid'])));
        $this->view->assign('subPagesList', $this->pagesRepository->findByPid(intval($this->settings['pageHighlight']['pid'])));
    }



    /**
     * action randomAuthor
     * shows a random author (from RkwAuthors)
     *
     * @return void
     */
    public function randomAuthorAction()
    {
        //$authorsList = $this->authorsRepository->findAll();
        $authorsList = $this->authorsRepository->findByUidList($this->settings['randomAuthor']['authorUidList']);
        $this->view->assign('author', $authorsList[rand(0, count($authorsList) - 1)]);
    }



    /**
     * action projectTeaser
     *
     * @return void
     */
    public function projectTeaserAction()
    {
        /*
        // if shuffle, just select three entries
        if ($this->settings['projectTeaser']['random']) {
            $projectList = $this->projectsRepository->findAll()->toArray();
            shuffle($projectList);
            $projectList = array_slice($projectList, 0, 3, true);
        } else {
            $projectList = $this->projectsRepository->findByUidList($this->settings['projectTeaser']['projectUidList']);
        }

        // ugly function, because we don't have pages objects (we got typolinks)
        /** @var \HGON\HgonTemplate\Domain\Model\Projects $project
        foreach ($projectList as $project) {
            if ($project->getProjectPid()) {
                $explodedLink = GeneralUtility::trimExplode('=', $project->getProjectPid());
                $project->setPages($this->pagesRepository->findByIdentifier(intval(end($explodedLink))));
            }
        }

        $this->view->assign('projectList', $projectList);
        */
    }



    /**
     * Shows author which is contact person of the current project
     *
     * @return void
     */
    public function sidebarContactPersonAction()
    {
        // get PageRepository and rootline
        $repository = GeneralUtility::makeInstance('TYPO3\\CMS\\Frontend\\Page\\PageRepository');
        $rootlinePages = $repository->getRootLine(intval($GLOBALS['TSFE']->id));

        // fo through all pages and take the one that has a match in the corresponsing field
        $pid = intval($GLOBALS['TSFE']->id);

        foreach ($rootlinePages as $page => $values) {
            if (
                ($values['tx_rkwprojects_project_uid'] > 0)
                && ($pid)
            ) {
                $pid = intval($values['uid']);
                break;
                //===
            }
        }

        $result = $this->pagesRepository->findByUid($pid);

        if ($result instanceof \HGON\HgonTemplate\Domain\Model\Pages) {
            if ($result->getTxRkwprojectsProject()){
                $this->view->assign('author', $result->getTxRkwprojectsProject()->getProjectManager());
            }
        }
    }



    /**
     * Shows a project overview of sibling pages
     *
     * @return void
     */
    public function siblingPagesOverviewAction()
    {
        /** @var \HGON\HgonTemplate\Domain\Model\Pages $currentPages */
        $currentPages = $this->pagesRepository->findByIdentifier(intval($GLOBALS['TSFE']->id));

        // Get sibling pages of current PageUid
        $siblingPagesList = $this->pagesRepository->findByPagesExcludeCurrent($currentPages);

        // Get (direct) sub-pages of this siblings -> delivers NOT the whole pagetree!
        /** @var \HGON\HgonTemplate\Domain\Model\Pages $siblingPages */
        foreach ($siblingPagesList as $siblingPages) {
            $subPagesList = $this->pagesRepository->findByPid($siblingPages->getUid());
            foreach ($subPagesList as $subPages) {
                $siblingPages->addSubPages($subPages);
            }
        }

        // Return Sibling-Pages with subPages to view
        $this->view->assign('pagesList', $siblingPagesList);
    }



    /**
     * action journalOverview
     *
     * @param \HGON\HgonTemplate\Domain\Model\SysCategory $sysCategory
     * @param integer $pageNumber
     * @return void
     */
    public function journalOverviewAction(\HGON\HgonTemplate\Domain\Model\SysCategory $sysCategory = null, $pageNumber = 0)
    {
        $pageNumber++;
        $templateDataArray = [];

        /** @var \RKW\RkwRegistration\Domain\Repository\FrontendUserRepository $frontendUserRepository */
        $objectManager = GeneralUtility::makeInstance('TYPO3\\CMS\\Extbase\\Object\\ObjectManager');
        /** @var \HGON\HgonTemplate\Helper\Journal $journalHelper */
        $journalHelper = $objectManager->get('HGON\\HgonTemplate\\Helper\\Journal');

        // a) Entweder: Völlig dynamisch
        //    $templateDataArray['journalRowList'] = $journalHelper->createResultSet($this->settings, $pageNumber, $sysCategory);

        // b) Oder: Einfach
        $helperRequest = $journalHelper->getPagesList($this->settings, $pageNumber, $sysCategory);
        /** @var \TYPO3\CMS\Extbase\Persistence\QueryResultInterface $pagesWithCategoryList */
        $pagesWithCategoryList = $helperRequest['sysCategoryList'];
        $templateDataArray['journalRowList'] = $helperRequest['journalRowList'];
        // @toDo: If $templateDataArray['journalRowList'] delivers only a few results: Try to fill with news
        $templateDataArray['news'] = $this->newsRepository->findByFilter($sysCategory, [], [], $pageNumber, 1)->getFirst();

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

        // get general category list for filter function
        $journalParentCategory = $this->sysCategoryRepository->findByIdentifier(intval($this->settings['journal']['parentCategoryUid']));
        $sysCategoryListFilter = $this->sysCategoryRepository->findOneWithAllRecursiveChildren($journalParentCategory, null, true);
        $templateDataArray['sysCategoryList'] = $sysCategoryListFilter;
        $templateDataArray['selectedSysCategory'] = $sysCategory;
        $templateDataArray['pageTypeAjax'] = $this->settings['journal']['ajaxTypeNum'];
        $templateDataArray['pageNumber'] = $pageNumber;
        if (count($pagesWithCategoryList)) {
            $templateDataArray['showMoreLink'] = $this->pagesRepository->findTreeByParentPages($pagesWithCategoryList, true, $pageNumber, 9999)->count() > $pageNumber * intval($this->settings['journal']['itemsPerPage']) ? true : false;
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
     * action pageSlider
     *
     * @return void
     */
    public function pageSliderAction()
    {
        $this->view->assign('pagesList', $this->pagesRepository->findByUidList($this->settings['pageSlider']['pidList']));
    }



    /**
     * action donationForm
     * -> TESTING: Shows a "Fundraising form"
     *
     * @deprecated Not used.
     * @return void
     */
    public function donationFormAction()
    {
        // @TESTING: Shows a "Fundraising form"
        // do nothing else: Show JS in Template
    }



    /**
     * action supportOptions
     * - become a member form
     * - donate money
     * - donate time
     * -> Options are defined via flexForm
     *
     * @deprecated Moved to HGON DONATION
     * @return void
     */
    public function supportOptionsAction()
    {
        // do nothing else
    }



    /**
     * action supportOptionsLight
     * -> Gives no real forms. Only anchros for opening forms of "supportOptions" plugin, which is used as standard footer element
     *
     * @deprecated Moved to HGON DONATION
     * @return void
     */
    public function supportOptionsLightAction()
    {
        // do nothing else
    }



    /**
     * action sixReasons
     *
     * @return void
     */
    public function sixReasonsAction()
    {
        // do nothing else (output of flexform content)
    }

}
