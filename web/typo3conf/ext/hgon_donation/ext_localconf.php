<?php
defined('TYPO3_MODE') || die('Access denied.');

call_user_func(
	function($extKey)
	{
		\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
			'HGON.HgonDonation',
			'Donate',
			[
				'Donation' => 'list, showDonationType, showDonationTypeTime, createDonationTypeTime'
				//'Donation' => 'list, show, new, create, edit, update, delete'
			],
			// non-cacheable actions
			[
				'Donation' => 'create, update, delete'
			]
		);
	},
	$_EXTKEY
);
