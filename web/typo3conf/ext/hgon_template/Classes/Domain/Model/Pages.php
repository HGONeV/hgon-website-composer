<?php
namespace HGON\HgonTemplate\Domain\Model;

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
 * Class Pages
 *
 * @author Maximilian Fäßler <maximilian@faesslerweb.de>
 * @copyright HGON
 * @package RKW_HgonTemplate
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 */
class Pages extends \RKW\RkwBasics\Domain\Model\Pages
{
    /**
     * txRkwprojectsProject
     *
     * @var \HGON\HgonTemplate\Domain\Model\Projects
     */
    protected $txRkwprojectsProject = null;

    /**
     * SysCategory
     *
     * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\HGON\HgonTemplate\Domain\Model\SysCategory>
     */
    protected $categories;

    /**
     * subPages
     *
     * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\HGON\HgonTemplate\Domain\Model\Pages>
     */
    protected $subPages;


    /**
     * __construct
     */
    public function __construct()
    {
        //Do not remove the next line: It would break the functionality
        $this->initStorageObjects();
    }


    /**
     * Initializes all ObjectStorage properties
     * Do not modify this method!
     * It will be rewritten on each save in the extension builder
     * You may modify the constructor of this class instead
     *
     * @return void
     */
    protected function initStorageObjects()
    {
        $this->subPages = new \TYPO3\CMS\Extbase\Persistence\ObjectStorage();
    }

    /**
     * Returns the txRkwProjectsProject
     *
     * @return \HGON\HgonTemplate\Domain\Model\Projects $txRkwprojectsProject
     */
    public function getTxRkwprojectsProject()
    {
        return $this->txRkwprojectsProject;
    }

    /**
     * Sets the txRkwProjectsProject
     *
     * @param \HGON\HgonTemplate\Domain\Model\Projects $txRkwprojectsProject
     * @return void
     */
    public function setTxRkwprojectsProject(\HGON\HgonTemplate\Domain\Model\Projects $txRkwprojectsProject)
    {
        $this->txRkwprojectsProject = $txRkwprojectsProject;
    }

    /**
     * Adds a Category
     *
     * @param \HGON\HgonTemplate\Domain\Model\SysCategory $category
     * @return void
     */
    public function addCategory(\HGON\HgonTemplate\Domain\Model\SysCategory $category)
    {
        $this->categories->attach($category);
    }

    /**
     * Removes a Category
     *
     * @param \HGON\HgonTemplate\Domain\Model\SysCategory $categoryToRemove The Category to be removed
     * @return void
     */
    public function removeCategory(\HGON\HgonTemplate\Domain\Model\SysCategory $categoryToRemove)
    {
        $this->categories->detach($categoryToRemove);
    }

    /**
     * Returns the categories
     *
     * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\HGON\HgonTemplate\Domain\Model\SysCategory> $categories
     */
    public function getCategories()
    {
        return $this->categories;
    }

    /**
     * Sets the categories
     *
     * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\HGON\HgonTemplate\Domain\Model\SysCategory> $categories
     * @return void
     */
    public function setCategories(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $categories)
    {
        $this->categories = $categories;
    }

    /**
     * Adds a SubPages
     *
     * @param \HGON\HgonTemplate\Domain\Model\Pages $subPages
     * @return void
     */
    public function addSubPages(\HGON\HgonTemplate\Domain\Model\Pages $subPages)
    {
        // dirty hack: Constructor isn't called by any reason
        if (!$this->subPages instanceof \TYPO3\CMS\Extbase\Persistence\ObjectStorage) {
            $this->initStorageObjects();
        }

        $this->subPages->attach($subPages);
    }

    /**
     * Removes a subPages
     *
     * @param \HGON\HgonTemplate\Domain\Model\Pages $subPagesToRemove The Pages to be removed
     * @return void
     */
    public function removeSubPages(\HGON\HgonTemplate\Domain\Model\Pages $subPagesToRemove)
    {
        $this->subPages->detach($subPagesToRemove);
    }

    /**
     * Returns the subPages
     *
     * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\HGON\HgonTemplate\Domain\Model\Pages> $subPages
     */
    public function getSubPages()
    {
        // dirty hack: Constructor isn't called by any reason
        if (!$this->subPages instanceof \TYPO3\CMS\Extbase\Persistence\ObjectStorage) {
            $this->initStorageObjects();
        }

        return $this->subPages;
    }

    /**
     * Sets the subPages
     *
     * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\HGON\HgonTemplate\Domain\Model\Pages> $subPages
     * @return void
     */
    public function setSubPages(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $subPages)
    {
        $this->subPages = $subPages;
    }
}

?>