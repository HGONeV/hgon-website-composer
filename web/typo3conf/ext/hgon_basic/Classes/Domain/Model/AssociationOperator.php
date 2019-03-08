<?php
namespace HGON\HgonBasic\Domain\Model;

/***
 *
 * This file is part of the "HGON Basic" Extension for TYPO3 CMS.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 *  (c) 2018 Maximilian Fäßler <maximilian@faesslerweb.de>, Fäßler Web UG
 *
 ***/

/**
 * AssociationOperator
 */
class AssociationOperator extends \TYPO3\CMS\Extbase\DomainObject\AbstractEntity
{
	/**
	 * firstName
	 *
	 * @var string
	 */
	protected $firstName = '';

	/**
	 * middleName
	 *
	 * @var string
	 */
	protected $middleName = '';

	/**
	 * lastName
	 *
	 * @var string
	 */
	protected $lastName = '';

	/**
	 * titleAfter
	 *
	 * @var string
	 */
	protected $titleAfter = '';

	/**
	 * titleBefore
	 *
	 * @var string
	 */
	protected $titleBefore = '';

	/**
	 * street
	 *
	 * @var string
	 */
	protected $street = '';

	/**
	 * houseNumber
	 *
	 * @var string
	 */
	protected $houseNumber = '';

	/**
	 * zip
	 *
	 * @var int
	 */
	protected $zip = 0;

	/**
	 * city
	 *
	 * @var string
	 */
	protected $city = '';

	/**
	 * email
	 *
	 * @var string
	 */
	protected $email = '';

	/**
	 * phoneFixed
	 *
	 * @var string
	 */
	protected $phoneFixed = '';

	/**
	 * phoneMobile
	 *
	 * @var string
	 */
	protected $phoneMobile = '';

	/**
	 * fax
	 *
	 * @var string
	 */
	protected $fax = '';

	/**
	 * url
	 *
	 * @var string
	 */
	protected $url = '';

	/**
	 * facebookUrl
	 *
	 * @var string
	 */
	protected $facebookUrl = '';

	/**
	 * twitterUrl
	 *
	 * @var string
	 */
	protected $twitterUrl = '';

	/**
	 * xingUrl
	 *
	 * @var string
	 */
	protected $xingUrl = '';

	/**
	 * image
	 *
	 * @var \TYPO3\CMS\Extbase\Domain\Model\FileReference
	 * @cascade remove
	 */
	protected $image = null;

	/**
	 * Returns the fullName
	 *
	 * @return string $fullName
	 */
	public function getFullName()
	{
		return $this->firstName . ' ' . $this->lastName;
	}

	/**
	 * Returns the firstName
	 *
	 * @return string $firstName
	 */
	public function getFirstName()
	{
		return $this->firstName;
	}

	/**
	 * Sets the firstName
	 *
	 * @param string $firstName
	 * @return void
	 */
	public function setFirstName($firstName)
	{
		$this->firstName = $firstName;
	}

	/**
	 * Returns the middleName
	 *
	 * @return string $middleName
	 */
	public function getMiddleName()
	{
		return $this->middleName;
	}

	/**
	 * Sets the middleName
	 *
	 * @param string $middleName
	 * @return void
	 */
	public function setMiddleName($middleName)
	{
		$this->middleName = $middleName;
	}

	/**
	 * Returns the lastName
	 *
	 * @return string $lastName
	 */
	public function getLastName()
	{
		return $this->lastName;
	}

	/**
	 * Sets the lastName
	 *
	 * @param string $lastName
	 * @return void
	 */
	public function setLastName($lastName)
	{
		$this->lastName = $lastName;
	}

	/**
	 * Returns the titleAfter
	 *
	 * @return string $titleAfter
	 */
	public function getTitleAfter()
	{
		return $this->titleAfter;
	}

	/**
	 * Sets the titleAfter
	 *
	 * @param string $titleAfter
	 * @return void
	 */
	public function setTitleAfter($titleAfter)
	{
		$this->titleAfter = $titleAfter;
	}

	/**
	 * Returns the titleBefore
	 *
	 * @return string $titleBefore
	 */
	public function getTitleBefore()
	{
		return $this->titleBefore;
	}

	/**
	 * Sets the titleBefore
	 *
	 * @param string $titleBefore
	 * @return void
	 */
	public function setTitleBefore($titleBefore)
	{
		$this->titleBefore = $titleBefore;
	}

	/**
	 * Returns the street
	 *
	 * @return string $street
	 */
	public function getStreet()
	{
		return $this->street;
	}

	/**
	 * Sets the street
	 *
	 * @param string $street
	 * @return void
	 */
	public function setStreet($street)
	{
		$this->street = $street;
	}

	/**
	 * Returns the houseNumber
	 *
	 * @return string $houseNumber
	 */
	public function getHouseNumber()
	{
		return $this->houseNumber;
	}

	/**
	 * Sets the houseNumber
	 *
	 * @param string $houseNumber
	 * @return void
	 */
	public function setHouseNumber($houseNumber)
	{
		$this->houseNumber = $houseNumber;
	}

	/**
	 * Returns the zip
	 *
	 * @return int $zip
	 */
	public function getZip()
	{
		return $this->zip;
	}

	/**
	 * Sets the zip
	 *
	 * @param int $zip
	 * @return void
	 */
	public function setZip($zip)
	{
		$this->zip = $zip;
	}

	/**
	 * Returns the city
	 *
	 * @return string $city
	 */
	public function getCity()
	{
		return $this->city;
	}

	/**
	 * Sets the city
	 *
	 * @param string $city
	 * @return void
	 */
	public function setCity($city)
	{
		$this->city = $city;
	}

	/**
	 * Returns the email
	 *
	 * @return string $email
	 */
	public function getEmail()
	{
		return $this->email;
	}

	/**
	 * Sets the email
	 *
	 * @param string $email
	 * @return void
	 */
	public function setEmail($email)
	{
		$this->email = $email;
	}

	/**
	 * Returns the phoneFixed
	 *
	 * @return string $phoneFixed
	 */
	public function getPhoneFixed()
	{
		return $this->phoneFixed;
	}

	/**
	 * Sets the phoneFixed
	 *
	 * @param string $phoneFixed
	 * @return void
	 */
	public function setPhoneFixed($phoneFixed)
	{
		$this->phoneFixed = $phoneFixed;
	}

	/**
	 * Returns the phoneMobile
	 *
	 * @return string $phoneMobile
	 */
	public function getPhoneMobile()
	{
		return $this->phoneMobile;
	}

	/**
	 * Sets the phoneMobile
	 *
	 * @param string $phoneMobile
	 * @return void
	 */
	public function setPhoneMobile($phoneMobile)
	{
		$this->phoneMobile = $phoneMobile;
	}

	/**
	 * Returns the fax
	 *
	 * @return string $fax
	 */
	public function getFax()
	{
		return $this->fax;
	}

	/**
	 * Sets the fax
	 *
	 * @param string $fax
	 * @return void
	 */
	public function setFax($fax)
	{
		$this->fax = $fax;
	}

	/**
	 * Returns the url
	 *
	 * @return string $url
	 */
	public function getUrl()
	{
		return $this->url;
	}

	/**
	 * Sets the url
	 *
	 * @param string $url
	 * @return void
	 */
	public function setUrl($url)
	{
		$this->url = $url;
	}

	/**
	 * Returns the facebookUrl
	 *
	 * @return string $facebookUrl
	 */
	public function getFacebookUrl()
	{
		return $this->facebookUrl;
	}

	/**
	 * Sets the facebookUrl
	 *
	 * @param string $facebookUrl
	 * @return void
	 */
	public function setFacebookUrl($facebookUrl)
	{
		$this->facebookUrl = $facebookUrl;
	}

	/**
	 * Returns the twitterUrl
	 *
	 * @return string $twitterUrl
	 */
	public function getTwitterUrl()
	{
		return $this->twitterUrl;
	}

	/**
	 * Sets the twitterUrl
	 *
	 * @param string $twitterUrl
	 * @return void
	 */
	public function setTwitterUrl($twitterUrl)
	{
		$this->twitterUrl = $twitterUrl;
	}

	/**
	 * Returns the xingUrl
	 *
	 * @return string $xingUrl
	 */
	public function getXingUrl()
	{
		return $this->xingUrl;
	}

	/**
	 * Sets the xingUrl
	 *
	 * @param string $xingUrl
	 * @return void
	 */
	public function setXingUrl($xingUrl)
	{
		$this->xingUrl = $xingUrl;
	}

	/**
	 * Returns the image
	 *
	 * @return \TYPO3\CMS\Extbase\Domain\Model\FileReference $image
	 */
	public function getImage()
	{
		return $this->image;
	}

	/**
	 * Sets the image
	 *
	 * @param \TYPO3\CMS\Extbase\Domain\Model\FileReference $image
	 * @return void
	 */
	public function setImage(\TYPO3\CMS\Extbase\Domain\Model\FileReference $image)
	{
		$this->image = $image;
	}
}
