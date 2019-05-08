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
        $authorsList = $this->authorsRepository->findAll();
        $this->view->assign('author', $authorsList[rand(0, count($authorsList) - 1)]);
    }

}
