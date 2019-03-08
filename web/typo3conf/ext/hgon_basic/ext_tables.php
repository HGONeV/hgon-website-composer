<?php
defined('TYPO3_MODE') || die('Access denied.');

call_user_func(
	function($extKey)
	{

		\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile($extKey, 'Configuration/TypoScript', 'HGON Basic');

		\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addLLrefForTCAdescr('tx_hgonbasic_domain_model_operator', 'EXT:hgon_basic/Resources/Private/Language/locallang_csh_tx_hgonbasic_domain_model_operator.xlf');
		\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_hgonbasic_domain_model_operator');

	},
	$_EXTKEY
);
