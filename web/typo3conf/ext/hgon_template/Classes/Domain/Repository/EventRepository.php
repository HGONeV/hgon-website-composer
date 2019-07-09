<?php

namespace HGON\HgonTemplate\Domain\Repository;

use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Persistence\QueryInterface;
use TYPO3\CMS\Extbase\Utility\DebuggerUtility;

/*
 * This file is part of the TYPO3 CMS project.
 *
 * It is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License, either version 2
 * of the License, or any later version.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 * The TYPO3 project - inspiring people to share!
 */

/**
 * Class EventRepository
 * The repository for events
 *
 * @author Maximilian Fäßler <maximilian@faesslerweb.de>
 * @copyright HGON
 * @package HGON_HgonTemplate
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 */
class EventRepository extends \RKW\RkwEvents\Domain\Repository\EventRepository
{

    /**
     * Return not finished events of workgroups (tx_hgonworkgroup)
     * For the FIRST result page (just with simple limit)
     *
     * @param int $limit
     * @param array $settings
     * @return array|\TYPO3\CMS\Extbase\Persistence\QueryResultInterface
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\InvalidQueryException
     */
    public function findWorkgroupEventsNotFinishedOrderAsc($limit, $settings = array())
    {
        // First: Set workgroup pid (is the pid where workgroup events are saved)
        if ($settings['persistence']['storagePid']) {
            $querySettings = $this->objectManager->get('TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QuerySettingsInterface');
            $querySettings->setStoragePageIds([$settings['persistence']['storagePid']]);
            $this->setDefaultQuerySettings($querySettings);
        }

        $query = $this->createQuery();

        $constraints = array(
            $query->greaterThanOrEqual('start', time()),
            $query->logicalNot($query->equals('title', '')),
        );

        return $query->matching(
            $query->logicalAnd($constraints)
        )
            ->setOrderings(
                array(
                    'start' => \TYPO3\CMS\Extbase\Persistence\QueryInterface::ORDER_ASCENDING,
                )
            )
            ->setLimit($limit)
            ->execute();
    }



    /**
     * findByFilterOptions
     *
     * @param array $filter
     * @param int $limit
     * @param int $page
     * @param boolean $archive
     * @return array|\TYPO3\CMS\Extbase\Persistence\QueryResultInterface
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\InvalidQueryException
     */
    public function findByFilterOptions($filter, $limit, $page, $archive = false)
    {
        // results between 'from' and 'till' (with additional proof item to check, if there are more results -> +1)
        $offset = $page * $limit;
        $limit = $limit + 1;

        // if we are on a page > 1, we also fetch none item twice
        // we need this to figure out which date was the last for grouping!
        if ($page > 0) {
            $offset--;
            $limit++;
        }

        $query = $this->createQuery();
        $constraints = array();

        // set initial start time (normally overwritten below)
        $constraints[] = $query->greaterThanOrEqual('start', time());

        // additional filter options
        if ($filter['time']) {
            $constraints[] = $query->greaterThanOrEqual('start', intval($filter['time']));
        }
        if ($filter['documentType']) {
            $constraints[] = $query->equals('documentType', intval($filter['documentType']));
        }
        if ($filter['workGroup']) {
            $constraints[] = $query->contains('txHgonWorkgroup', intval($filter['workGroup']));
        }

        // NOW: construct final query!
        if ($constraints) {
            $query->matching($query->logicalAnd($constraints));
        }

        $query->setOffset($offset);
        $query->setLimit($limit);

        // 1. Sort by end-date
        $query->setOrderings(
            array(
                'start' => \TYPO3\CMS\Extbase\Persistence\QueryInterface::ORDER_ASCENDING,
            )
        );

        // Hint: if no query is added, this dataset is equal to findAll() with sort & date restriction
        $result = $query->execute();

        return $result;
        //===
    }
}