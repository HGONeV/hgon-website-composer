<?php
namespace HGON\HgonBasic\ViewHelpers;
use \RKW\RkwBasics\Helper\Common;
use \TYPO3\CMS\Extbase\Configuration\ConfigurationManagerInterface;
use \TYPO3\CMS\Core\Utility\GeneralUtility;

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
 * Class AssociationOperatorViewHelper
 *
 * @author Maximilian Fäßler <maximilian@faesslerweb.de>
 * @copyright Fäßler Web UG
 * @date August 2018
 * @package HGON_HgonBasic
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 */
class AssociationOperatorViewHelper extends \TYPO3\CMS\Fluid\Core\ViewHelper\AbstractViewHelper
{
	/**
	 * Returns a standard text for the privacy checkbox
	 * (not a partial because this is more complicated to use it universally in several extensions)
	 *
	 * @param \HGON\HgonBasic\Domain\Model\AssociationOperator|array $associationOperator
	 * @param boolean $singleView
	 * @return string
	 */
	public function render(\HGON\HgonBasic\Domain\Model\AssociationOperator $associationOperator, $singleView = true)
	{
		$settingsExtension = $this->getSettings(ConfigurationManagerInterface::CONFIGURATION_TYPE_FRAMEWORK);

		/** @var \TYPO3\CMS\Fluid\View\StandaloneView $template */
		$template = GeneralUtility::makeInstance('TYPO3\\CMS\\Fluid\\View\\StandaloneView');
		$template->setLayoutRootPaths($settingsExtension['view']['layoutRootPaths']);
		$template->setPartialRootPaths($settingsExtension['view']['partialRootPaths']);
		$template->setTemplateRootPaths($settingsExtension['view']['templateRootPaths']);
		$template->getRequest()->setControllerExtensionName(GeneralUtility::underscoredToUpperCamelCase('hgon_basic'));
		if ($singleView) {
			$template->setTemplate('AssociationOperator/SingleView');
		} else {
			$template->setTemplate('AssociationOperator/ListView');
		}
		$template->assignMultiple(
			array (
				'associationOperator' => $associationOperator
			)
		);

		return $template->render();
		//===
	}



	/**
	 * Returns TYPO3 settings
	 *
	 * @param string $which Which type of settings will be loaded
	 * @return array
	 */
	public function getSettings($which = ConfigurationManagerInterface::CONFIGURATION_TYPE_SETTINGS)
	{
		return Common::getTyposcriptConfiguration('Hgonbasic', $which);
		//===
	}


}