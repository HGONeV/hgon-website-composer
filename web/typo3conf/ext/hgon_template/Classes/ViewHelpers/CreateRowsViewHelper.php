<?php
namespace HGON\HgonTemplate\ViewHelpers;
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
use TYPO3\CMS\Extbase\Utility\DebuggerUtility;
use TYPO3\CMS\Core\Utility\GeneralUtility;
/**
 * CreateRowsViewHelper
 *
 * @author Maximilian Fäßler <maximilian@faesslerweb.de>
 * @copyright HGON
 * @package HGON_HgonTemplate
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 */
class CreateRowsViewHelper extends \TYPO3\CMS\Fluid\Core\ViewHelper\AbstractViewHelper
{
    /**
     * create rows (for automatical handling if we need c4, c6, c8 or c12 boxes for the last items)
     * -> we can calculate the html item-type, if we know, how many items we have in a row
     *
     * @param mixed $list
     * @param int $itemsPerRow
     *
     * @return array
     */
    public function render($list, $itemsPerRow = 3)
    {
        if ($list instanceof \TYPO3\CMS\Extbase\Persistence\Generic\QueryResult) {
            $list = $list->toArray();
        }
        $newList = [];

        $i = 0;
        do {
            if (count($list) > $itemsPerRow) {
                $newList[$i] = array_splice($list, 0, $itemsPerRow);
            } else {
                // put last elements into array
                $newList[$i] = array_splice($list, 0, count($list));
            }
            $i++;
        } while (count($list));

        return $newList;
        //===
    }


}