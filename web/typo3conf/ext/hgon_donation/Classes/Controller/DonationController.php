<?php
namespace HGON\HgonDonation\Controller;

/***
 *
 * This file is part of the "HGON Donation" Extension for TYPO3 CMS.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 *  (c) 2018 Maximilian Fäßler <maximilian@faesslerweb.de>, Fäßler Web UG
 *
 ***/

/**
 * DonationController
 */
class DonationController extends \TYPO3\CMS\Extbase\Mvc\Controller\ActionController
{
	/**
	 * donationTypeRepository
	 *
	 * @var \HGON\HgonDonation\Domain\Repository\DonationTypeRepository
	 * @inject
	 */
	protected $donationTypeRepository = null;



	/**
	 * action list
	 *
	 * @return void
	 */
	public function listAction()
	{
		$this->view->assign('donationTypeList', $this->donationTypeRepository->findAll());
	}



	/**
	 * action show
	 *
	 * @param \HGON\HgonDonation\Domain\Model\DonationType $donationType
	 * @return void
	 */
	public function showDonationTypeAction(\HGON\HgonDonation\Domain\Model\DonationType $donationType)
	{
		$this->view->assign('donationType', $donationType);
	}



	/**
	 * action showDonationTypeTime
	 *
	 * @param \HGON\HgonDonation\Domain\Model\DonationType $donationType
	 * @param \HGON\HgonDonation\Domain\Model\DonationTypeTime $donationTypeTime
	 * @return void
	 */
	public function showDonationTypeTimeAction(\HGON\HgonDonation\Domain\Model\DonationType $donationType, \HGON\HgonDonation\Domain\Model\DonationTypeTime $donationTypeTime)
	{
	//	\TYPO3\CMS\Extbase\Utility\DebuggerUtility::var_dump($donationTypeTime); exit;
		$this->view->assign('donationType', $donationType);
		$this->view->assign('donationTypeTime', $donationTypeTime);
	}



	/**
	 * action createDonationTypeTime
	 *
	 * @param array $formFields
	 * @return void
	 */
	public function createDonationTypeTimeAction($formFields)
	{
		// via Ajax?

		// just send a mail?
		// -> "Darunter gibt es die Möglichkeit, sich direkt per E-Mail auf den Job zu bewerben, wenn der Job noch aktiv ist"
		// ... an sich wäre ein eigenes Model und eine automatische Zuteilung auch nicht schlecht (und ein Redakteur
		// akzeptiert die Anmeldung und nimmt kontakt auf, oder lehnt ab)

		//$this->redirect('list');
	}



	/**
	 * action new
	 *
	 * @return void
	 */
	public function newAction()
	{

	}



	/**
	 * action create
	 *
	 * @param \HGON\HgonDonation\Domain\Model\Donation $newDonation
	 * @return void
	 */
	public function createAction(\HGON\HgonDonation\Domain\Model\Donation $newDonation)
	{
		$this->addFlashMessage('The object was created. Please be aware that this action is publicly accessible unless you implement an access check. See https://docs.typo3.org/typo3cms/extensions/extension_builder/User/Index.html', '', \TYPO3\CMS\Core\Messaging\AbstractMessage::WARNING);
		$this->donationRepository->add($newDonation);
		$this->redirect('list');
	}



	/**
	 * action edit
	 *
	 * @param \HGON\HgonDonation\Domain\Model\Donation $donation
	 * @ignorevalidation $donation
	 * @return void
	 */
	public function editAction(\HGON\HgonDonation\Domain\Model\Donation $donation)
	{
		$this->view->assign('donation', $donation);
	}

	/**
	 * action update
	 *
	 * @param \HGON\HgonDonation\Domain\Model\Donation $donation
	 * @return void
	 */
	public function updateAction(\HGON\HgonDonation\Domain\Model\Donation $donation)
	{
		$this->addFlashMessage('The object was updated. Please be aware that this action is publicly accessible unless you implement an access check. See https://docs.typo3.org/typo3cms/extensions/extension_builder/User/Index.html', '', \TYPO3\CMS\Core\Messaging\AbstractMessage::WARNING);
		$this->donationRepository->update($donation);
		$this->redirect('list');
	}



	/**
	 * action delete
	 *
	 * @param \HGON\HgonDonation\Domain\Model\Donation $donation
	 * @return void
	 */
	public function deleteAction(\HGON\HgonDonation\Domain\Model\Donation $donation)
	{
		$this->addFlashMessage('The object was deleted. Please be aware that this action is publicly accessible unless you implement an access check. See https://docs.typo3.org/typo3cms/extensions/extension_builder/User/Index.html', '', \TYPO3\CMS\Core\Messaging\AbstractMessage::WARNING);
		$this->donationRepository->remove($donation);
		$this->redirect('list');
	}
}
