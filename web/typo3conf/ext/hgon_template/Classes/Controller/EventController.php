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
use RKW\RkwEvents\Helper\DivUtility;
use \RKW\RkwBasics\Helper\Common;
use \TYPO3\CMS\Extbase\Configuration\ConfigurationManagerInterface;
use \HGON\HgonTemplate\Helper\Event as EventHelper;

/**
 * EventController
 */
class EventController extends \RKW\RkwEvents\Controller\EventController
{
    /**
     * eventRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\EventRepository
     * @inject
     */
    protected $eventRepository = null;

    /**
     * workGroupRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\WorkGroupRepository
     * @inject
     */
    protected $workGroupRepository = null;

    /**
     * documentTypeRepository
     *
     * @var \HGON\HgonTemplate\Domain\Repository\DocumentTypeRepository
     * @inject
     */
    protected $documentTypeRepository = null;



    /**
     *
     */
    public function listAction()
    {
        $listItemsPerView = intval($this->settings['itemsPerPage']) ? intval($this->settings['itemsPerPage']) : 10;

        parent::listAction();

        // the parent listAction pre-fills the filter with a "project" entry. This disturbed the ajax call
        $this->view->assign('filter', []);

        // Additional to standard events: Get workgroup list
        $hgonWorkGroupSettings = self::getSettings('HgonWorkgroup', ConfigurationManagerInterface::CONFIGURATION_TYPE_FRAMEWORK);
        $workGroupEventList = $this->eventRepository->findWorkgroupEventsNotFinishedOrderAsc($listItemsPerView + 1, $hgonWorkGroupSettings);
        $this->view->assign('workGroupEventList', $workGroupEventList);
        // filter options
        $this->view->assign('documentTypeList', $this->documentTypeRepository->findAllByTypeAndVisibility('events', false));
        $this->view->assign('workGroupList', $this->workGroupRepository->findAll());
        $this->view->assign('timeArrayList', EventHelper::createMonthListArray());

        /*
        // standard link
        <a data-page-type="1472648979"
        class="btn btn--primary btn--rounded ajax next-page autoload"
        href="index.php?id=3
        &amp;tx_rkwevents_pi1%5Bpage%5D=1
        &amp;tx_rkwevents_pi1%5Barchive%5D=
        &amp;tx_rkwevents_pi1%5Baction%5D=filter
        &amp;tx_rkwevents_pi1%5Bcontroller%5D=Ajax
        &amp;type=1472648979
        &amp;cHash=5e315764bd6c54eb1228d860edd0ea2b">
            Jetzt mehr anzeigen
        </a>

        // after using filter option
        <a data-page-type="1472648979"
        class="btn btn--primary btn--rounded ajax next-page autoload"
        href="index.php?id=3
        &amp;tx_rkwevents_pi1%5Bfilter%5D%5Btime%5D=1561932000
        &amp;tx_rkwevents_pi1%5Bfilter%5D%5BdocumentType%5D=0
        &amp;tx_rkwevents_pi1%5Bfilter%5D%5BworkGroup%5D=0
        &amp;tx_rkwevents_pi1%5Bpage%5D=1
        &amp;tx_rkwevents_pi1%5Barchive%5D=
        &amp;tx_rkwevents_pi1%5Baction%5D=filter
        &amp;tx_rkwevents_pi1%5Bcontroller%5D=Ajax
        &amp;type=1472648979
        &amp;cHash=5e315764bd6c54eb1228d860edd0ea2b">
         Jetzt mehr anzeigen
        </a>

        // after show more
        <a data-page-type="1472648979"
        class="btn btn--primary btn--rounded ajax next-page autoload"
        href="index.php?id=3
        &amp;tx_rkwevents_pi1%5Bpage%5D=2
        &amp;tx_rkwevents_pi1%5Barchive%5D=
        &amp;tx_rkwevents_pi1%5Baction%5D=filter
        &amp;tx_rkwevents_pi1%5Bcontroller%5D=Ajax
        &amp;type=1472648979
        &amp;cHash=51ab1347a8a981ff64a27c72f8209b97">
        Jetzt mehr anzeigen
        </a>

         */
    }



    /**
     * Returns TYPO3 settings
     *
     * @param string $extension extension name
     * @param string $which Which type of settings will be loaded
     * @return array
     */
    protected static function getSettings($extension = 'Rkwevents', $which = ConfigurationManagerInterface::CONFIGURATION_TYPE_SETTINGS)
    {
        return Common::getTyposcriptConfiguration($extension, $which);
        //===
    }
}
