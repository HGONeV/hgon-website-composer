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
     */
    protected $projectsRepository = null;

    /**
     * sysCategoryRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\SysCategoryRepository
     * @inject
     */
    protected $sysCategoryRepository = null;

	/**
	 * action journalHighlight
	 *
	 * @return void
	 */
	public function journalHighlightAction()
	{

        // @toDo: if no pid is set, use the newest with a category

        // @toDo: Handle multi-categories

        // @toDo: Im idealfall nichts spezielles schreiben. Für das Journal wird ggf die RkwRelated verwendet

     //   DebuggerUtility::var_dump($this->pagesRepository->findByIdentifier(intval($this->settings['journalHighlight']['pid']))); exit;

        $this->view->assign('pages', $this->pagesRepository->findByIdentifier(intval($this->settings['journalHighlight']['pid'])));
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
        // if shuffle, just select three entries
        if ($this->settings['projectTeaser']['random']) {
            $projectList = $this->projectsRepository->findAll()->toArray();
            shuffle($projectList);
            $projectList = array_slice($projectList, 0, 3, true);
        } else {
            $projectList = $this->projectsRepository->findByUidList($this->settings['projectTeaser']['projectUidList']);
        }

        // ugly function, because we don't have pages objects (we got typolinks)
        /** @var \HGON\HgonTemplate\Domain\Model\Projects $project */
        foreach ($projectList as $project) {
            if ($project->getProjectPid()) {
                $explodedLink = \TYPO3\CMS\Core\Utility\GeneralUtility::trimExplode('=', $project->getProjectPid());
                $project->setPages($this->pagesRepository->findByIdentifier(intval(end($explodedLink))));
            }
        }

        $this->view->assign('projectList', $projectList);
    }



    /**
     * Shows author which is contact person of the current project
     *
     * @return void
     */
    public function sidebarContactPersonAction()
    {
        // get PageRepository and rootline
        $repository = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance('TYPO3\\CMS\\Frontend\\Page\\PageRepository');
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
            $this->view->assign('author', $result->getTxRkwprojectsProject()->getProjectManager());
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

        // @toDo: Was könnte bei ExcludePages noch eingetragen werden?
        $excludePages = [];
        if ($this->settings['journal']['excludePidList']) {
            $excludePages = array_merge($excludePages, \TYPO3\CMS\Core\Utility\GeneralUtility::trimExplode(',', $this->settings['excludePidList']));
        }

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
            $pagesList = $this->pagesRepository->findTreeByParentPages($pagesWithCategoryList, true, $pageNumber, 9999);
            // $this->view->assign('pagesList', $pagesList);

            // split in four parts (2 x 3/3 width; 1 x 2/3; 1x 1/2)
            $pagesListArray = $pagesList->toArray();
            $templateDataArray['pagesList1'] = array_slice($pagesListArray, 0, 3);
            $templateDataArray['pagesList2'] = array_slice($pagesListArray, 3, 1);
            $templateDataArray['pagesList3'] = array_slice($pagesListArray, 4, 1);
            $templateDataArray['pagesList4'] = array_slice($pagesListArray, 5, 3);
        }

        // get general category list for filter function
        $journalParentCategory = $this->sysCategoryRepository->findByIdentifier($this->settings['journal']['parentCategoryUid']);
        $sysCategoryListFilter = $this->sysCategoryRepository->findOneWithAllRecursiveChildren($journalParentCategory, null, true);
        $templateDataArray['sysCategoryList'] = $sysCategoryListFilter;
        $templateDataArray['pageTypeAjax'] = $this->settings['journal']['ajaxTypeNum'];
        $templateDataArray['selectedSysCategory'] = $sysCategory;

        // check for ajax context
        // WICHTIG: Aktuell findet nur bei der Paginierung ein Ajax-Request statt. Nicht bei der Kategorieauswahl
        // -> Weil die Kategorie Teil der URL sein soll
        if (\TYPO3\CMS\Core\Utility\GeneralUtility::_GP('type') == intval($this->settings['journal']['ajaxTypeNum'])) {

            // get JSON helper
            /** @var \RKW\RkwBasics\Helper\Json $jsonHelper */
            $jsonHelper = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance('RKW\\RkwBasics\\Helper\\Json');

            // if sysCategory and page 1 - reload whole content. Else: Append
            $kindOfRequest = $pageNumber == 1 ? 'replace' : 'append';

            $jsonHelper->setHtml(
                'journal-flex-container',
                $templateDataArray,
                $kindOfRequest,
                'Ajax/Journal/' . ucfirst($kindOfRequest) . '.html'
            );

            print (string)$jsonHelper;
            exit();
            //===

        } else {
            $this->view->assignMultiple($templateDataArray);
        }

    }

}
