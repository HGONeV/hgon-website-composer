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

		// wizards
		\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig(
			'mod {
				wizards.newContentElement.wizardItems.plugins {
					elements {
						donate {
							icon = ' . \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::extRelPath($extKey) . 'Resources/Public/Icons/user_plugin_donate.svg
							title = LLL:EXT:hgon_donation/Resources/Private/Language/locallang_db.xlf:tx_hgon_donation_domain_model_donate
							description = LLL:EXT:hgon_donation/Resources/Private/Language/locallang_db.xlf:tx_hgon_donation_domain_model_donate.description
							tt_content_defValues {
								CType = list
								list_type = hgondonation_donate
							}
						}
					}
					show = *
				}
		   }'
		);
	},
	$_EXTKEY
);
