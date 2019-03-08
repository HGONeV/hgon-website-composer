<?php
namespace HGON\HgonBasic\Domain\Model;
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
 * Class FrontendUser
 *
 * @author Maximilian Fäßler
 * @copyright Maximilian Fäßler
 * @package HGON_HgonBasic
 */
class FrontendUser extends \TYPO3\CMS\Extbase\Domain\Model\FrontendUser
{
	/**
	 * @var integer
	 */
	protected $crdate;

	/**
	 * @var integer
	 */
	protected $tstamp;

	/**
	 * @var integer
	 */
	protected $starttime;

	/**
	 * @var integer
	 */
	protected $endtime;

	/**
	 * @var integer
	 */
	protected $disable = 1;

	/**
	 * @var integer
	 */
	protected $deleted = 0;

	/**
	 * @var string
	 */
	protected $email = '';


	/**
	 * @var string
	 */
	protected $name = '';

	/**
	 * @var string
	 */
	protected $firstName = '';


	/**
	 * @var string
	 */
	protected $lastName = '';


	/**
	 * @var integer
	 */
	protected $zip = 0;

	/**
	 * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\HGON\HgonBasic\Domain\Model\FrontendUserGroup>
	 */
	protected $usergroup;

	/**
	 * initialize objectStorage
	 *
	 */
	public function __construct() {
		parent::__construct();
		$this->usergroup = new \TYPO3\CMS\Extbase\Persistence\ObjectStorage();
	}


	/**
	 * Sets the username value
	 * ! Important: We need to lowercase it !
	 *
	 * @param string $username
	 * @return void
	 * @api
	 */
	public function setUsername($username) {
		$this->username = strtolower($username);
	}


	/**
	 * Sets the email value
	 * ! Important: We need to lowercase it !
	 *
	 * @param string $email
	 * @return void
	 * @api
	 */
	public function setEmail($email) {
		$this->email = strtolower($email);
	}


	/**
	 * Sets the firstName
	 *
	 * @param string $firstName
	 * @api
	 */
	public function setFirstName($firstName) {
		$this->firstName = $firstName;

		if ($this->getLastName()) {
			$this->name = $this->getFirstName() . ' ' . $this->getLastName();
		} else {
			$this->name = $this->getFirstName();
		}
	}


	/**
	 * Sets the lastName
	 *
	 * @param string $lastName
	 * @api
	 */
	public function setLastName($lastName) {

		$this->lastName = $lastName;

		if ($this->getFirstName()) {
			$this->name = $this->getFirstName() . ' ' . $this->getLastName();
		} else {
			$this->name = $this->getLastName();
		}
	}


	/**
	 * Sets the usergroups. Keep in mind that the property is called "usergroup"
	 * although it can hold several usergroups.
	 *
	 * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage $usergroup
	 * @return void
	 * @api
	 */
	public function setUsergroup(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $usergroup) {
		$this->usergroup = $usergroup;
	}


	/**
	 * Adds a usergroup to the frontend user
	 *
	 * @param \HGON\HgonBasic\Domain\Model\FrontendUserGroup $usergroup
	 * @return void
	 * @api
	 */
	public function addUsergroup(\HGON\HgonBasic\Domain\Model\FrontendUserGroup $usergroup) {
		$this->usergroup->attach($usergroup);

	}

	/**
	 * Removes a usergroup from the frontend user
	 *
	 * @param \HGON\HgonBasic\Domain\Model\FrontendUserGroup $usergroup
	 * @return void
	 * @api
	 */
	public function removeUsergroup(\HGON\HgonBasic\Domain\Model\FrontendUserGroup $usergroup) {

		$this->usergroup->detach($usergroup);
	}


	/**
	 * Returns the usergroups. Keep in mind that the property is called "usergroup"
	 * although it can hold several usergroups.
	 *
	 * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage An object storage containing the usergroup
	 * @api
	 */
	public function getUsergroup() {
		return $this->usergroup;
		//===
	}


	/**
	 * Sets the crdate value
	 *
	 * @param integer $crdate
	 * @api
	 */
	public function setCrdate($crdate) {
		$this->crdate = $crdate;
	}


	/**
	 * Returns the crdate value
	 *
	 * @return integer
	 * @api
	 */
	public function getCrdate() {

		return $this->crdate;
		//===
	}

	/**
	 * Sets the tstamp value
	 *
	 * @param integer $tstamp
	 * @api
	 */
	public function setTstamp($tstamp) {
		$this->tstamp = $tstamp;
	}


	/**
	 * Returns the tstamp value
	 *
	 * @return integer
	 * @api
	 */
	public function getTstamp() {
		return $this->tstamp;
		//===
	}


	/**
	 * Sets the starttime value
	 *
	 * @param integer $starttime
	 * @api
	 */
	public function setStarttime($starttime) {
		$this->starttime = $starttime;
	}


	/**
	 * Returns the starttime value
	 *
	 * @return integer
	 * @api
	 */
	public function getStarttime() {
		return $this->starttime;
		//===
	}


	/**
	 * Sets the endtime value
	 *
	 * @param integer $endtime
	 * @api
	 */
	public function setEndtime($endtime) {
		$this->endtime = $endtime;
	}


	/**
	 * Returns the endtime value
	 *
	 * @return integer
	 * @api
	 */
	public function getEndtime() {
		return $this->endtime;
		//===
	}


	/**
	 * Sets the disable value
	 *
	 * @param integer $disable
	 * @return void
	 *
	 */
	public function setDisable($disable) {
		$this->disable = $disable;
	}



	/**
	 * Returns the disable value
	 *
	 * @return integer
	 */
	public function getDisable() {
		return $this->disable;
		//===
	}


	/**
	 * Sets the deleted value
	 *
	 * @param integer $deleted
	 * @return void
	 *
	 */
	public function setDeleted($deleted) {
		$this->deleted = $deleted;
	}


	/**
	 * Returns the deleted value
	 *
	 * @return integer
	 *
	 */
	public function getDeleted() {
		return $this->deleted;
		//===
	}

}
