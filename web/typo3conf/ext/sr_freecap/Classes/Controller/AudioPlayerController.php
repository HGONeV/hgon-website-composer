<?php
namespace SJBR\SrFreecap\Controller;
use TYPO3\CMS\Extbase\Utility\DebuggerUtility;

/***************************************************************
*  Copyright notice
*
*  (c) 2012-2015 Stanislas Rolland <typo3(arobas)sjbr.ca>
*  All rights reserved
*
*  This script is part of the TYPO3 project. The TYPO3 project is
*  free software; you can redistribute it and/or modify
*  it under the terms of the GNU General Public License as published by
*  the Free Software Foundation; either version 2 of the License, or
*  (at your option) any later version.
*
*  The GNU General Public License can be found at
*  http://www.gnu.org/copyleft/gpl.html.
*  A copy is found in the textfile GPL.txt and important notices to the license
*  from the author is found in LICENSE.txt distributed with these scripts.
*
*
*  This script is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU General Public License for more details.
*
*  This copyright notice MUST APPEAR in all copies of the script!
***************************************************************/
/**
 * Renders a wav audio version of the CAPTCHA
 *
 * @author	Stanislas Rolland	<typo3(arobas)sjbr.ca>
 */
class AudioPlayerController extends \TYPO3\CMS\Extbase\Mvc\Controller\ActionController {

	/**
	 * @var string Name of the extension this controller belongs to
	 */
	protected $extensionName = 'SrFreecap';

	/**
	 * @var \SJBR\SrFreecap\Domain\Repository\WordRepository
	 */
	protected $wordRepository;

	/**
	 * Initialize any action
	 *
	 * @return void
	 */
	protected function initializeAction() {
		// Get an instance of the word repository
		$this->wordRepository = $this->objectManager->get('SJBR\\SrFreecap\\Domain\\Repository\\WordRepository');
	}

	/**
	 * Play the audio catcha
	 *
	 * @return string Audio content to be sent to the client
	 */
	public function playAction() {
		$word = $this->wordRepository->getWord();
		$this->view->assign('word', $word);
	}
}