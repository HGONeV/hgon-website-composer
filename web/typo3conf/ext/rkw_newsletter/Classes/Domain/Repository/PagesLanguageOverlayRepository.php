<?php

namespace RKW\RkwNewsletter\Domain\Repository;
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
 * PagesLanguageOverlayRepository
 *
 * @author Maximilian Fäßler <maximilian@faesslerweb.de>
 * @author Steffen Kroggel <developer@steffenkroggel.de>
 * @copyright Rkw Kompetenzzentrum
 * @package RKW_RkwNewsletter
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 */
class PagesLanguageOverlayRepository extends \TYPO3\CMS\Extbase\Persistence\Repository
{
    /*
     * initializeObject
     */
    public function initializeObject()
    {
        $this->defaultQuerySettings = $this->objectManager->get('TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Typo3QuerySettings');
        $this->defaultQuerySettings->setRespectStoragePage(false);
        $this->defaultQuerySettings->setRespectSysLanguage(false);
    }


    /**
     * findByPid
     *
     * @param integer $pid
     * @return \RKW\RkwNewsletter\Domain\Model\Pages|object
     */
    public function findByPid($pid)
    {
        $query = $this->createQuery();
        $query->matching($query->equals('pid', $pid));

        return $query->execute()->getFirst();
        //===
    }

}