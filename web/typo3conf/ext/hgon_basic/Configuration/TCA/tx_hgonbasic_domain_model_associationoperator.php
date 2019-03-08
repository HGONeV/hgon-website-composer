<?php
return [
	'ctrl' => [
		'title'	=> 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator',
		'label' => 'last_name',
		'label_alt' => 'first_name, email',
		'label_alt_force' => true,
		'tstamp' => 'tstamp',
		'crdate' => 'crdate',
		'cruser_id' => 'cruser_id',
		'versioningWS' => true,
		'languageField' => 'sys_language_uid',
		'transOrigPointerField' => 'l10n_parent',
		'transOrigDiffSourceField' => 'l10n_diffsource',
		'delete' => 'deleted',
		'enablecolumns' => [
			'disabled' => 'hidden',
			'starttime' => 'starttime',
			'endtime' => 'endtime',
		],
		'searchFields' => 'first_name,middle_name,last_name,title_after,title_before,street,house_number,zip,city,email,phone_fixed,phone_mobile,fax,url,facebook_url,twitter_url,xing_url,image',
		'iconfile' => 'EXT:hgon_basic/Resources/Public/Icons/tx_hgonbasic_domain_model_associationoperator.gif'
	],
	'interface' => [
		'showRecordFieldList' => 'sys_language_uid, l10n_parent, l10n_diffsource, hidden, first_name, middle_name, last_name, title_after, title_before, street, house_number, zip, city, email, phone_fixed, phone_mobile, fax, url, facebook_url, twitter_url, xing_url, image',
	],
	'types' => [
		'1' => ['showitem' => 'sys_language_uid, l10n_parent, l10n_diffsource, hidden, first_name, middle_name, last_name, title_after, title_before, street, house_number, zip, city, email, phone_fixed, phone_mobile, fax, url, facebook_url, twitter_url, xing_url, image, --div--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:tabs.access, starttime, endtime'],
	],
	'columns' => [
		'sys_language_uid' => [
			'exclude' => true,
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.language',
			'config' => [
				'type' => 'select',
				'renderType' => 'selectSingle',
				'special' => 'languages',
				'items' => [
					[
						'LLL:EXT:lang/locallang_general.xlf:LGL.allLanguages',
						-1,
						'flags-multiple'
					]
				],
				'default' => 0,
			],
		],
		'l10n_parent' => [
			'displayCond' => 'FIELD:sys_language_uid:>:0',
			'exclude' => true,
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.l18n_parent',
			'config' => [
				'type' => 'select',
				'renderType' => 'selectSingle',
				'items' => [
					['', 0],
				],
				'foreign_table' => 'tx_hgonbasic_domain_model_associationoperator',
				'foreign_table_where' => 'AND tx_hgonbasic_domain_model_associationoperator.pid=###CURRENT_PID### AND tx_hgonbasic_domain_model_associationoperator.sys_language_uid IN (-1,0)',
			],
		],
		'l10n_diffsource' => [
			'config' => [
				'type' => 'passthrough',
			],
		],
		't3ver_label' => [
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.versionLabel',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'max' => 255,
			],
		],
		'hidden' => [
			'exclude' => true,
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.hidden',
			'config' => [
				'type' => 'check',
				'items' => [
					'1' => [
						'0' => 'LLL:EXT:lang/locallang_core.xlf:labels.enabled'
					]
				],
			],
		],
		'starttime' => [
			'exclude' => true,
			'l10n_mode' => 'mergeIfNotBlank',
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.starttime',
			'config' => [
				'type' => 'input',
				'size' => 13,
				'eval' => 'datetime',
				'default' => 0,
			]
		],
		'endtime' => [
			'exclude' => true,
			'l10n_mode' => 'mergeIfNotBlank',
			'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.endtime',
			'config' => [
				'type' => 'input',
				'size' => 13,
				'eval' => 'datetime',
				'default' => 0,
				'range' => [
					'upper' => mktime(0, 0, 0, 1, 1, 2038)
				]
			],
		],
		'first_name' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.first_name',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'middle_name' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.middle_name',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'last_name' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.last_name',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'title_after' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.title_after',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'title_before' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.title_before',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'street' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.street',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'house_number' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.house_number',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'zip' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.zip',
			'config' => [
				'type' => 'input',
				'size' => 4,
				'eval' => 'int'
			]
		],
		'city' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.city',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'email' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.email',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'phone_fixed' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.phone_fixed',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'phone_mobile' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.phone_mobile',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'fax' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.fax',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'url' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.url',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'facebook_url' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.facebook_url',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'twitter_url' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.twitter_url',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'xing_url' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.xing_url',
			'config' => [
				'type' => 'input',
				'size' => 30,
				'eval' => 'trim'
			],
		],
		'image' => [
			'exclude' => true,
			'label' => 'LLL:EXT:hgon_basic/Resources/Private/Language/locallang_db.xlf:tx_hgonbasic_domain_model_associationoperator.image',
			'config' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::getFileFieldTCAConfig(
				'image',
				[
					'appearance' => [
						'createNewRelationLinkTitle' => 'LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:images.addFileReference'
					],
					'foreign_types' => [
						'0' => [
							'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
						],
						\TYPO3\CMS\Core\Resource\File::FILETYPE_TEXT => [
							'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
						],
						\TYPO3\CMS\Core\Resource\File::FILETYPE_IMAGE => [
							'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
						],
						\TYPO3\CMS\Core\Resource\File::FILETYPE_AUDIO => [
							'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
						],
						\TYPO3\CMS\Core\Resource\File::FILETYPE_VIDEO => [
							'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
						],
						\TYPO3\CMS\Core\Resource\File::FILETYPE_APPLICATION => [
							'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
						]
					],
					'maxitems' => 1
				],
				$GLOBALS['TYPO3_CONF_VARS']['GFX']['imagefile_ext']
			),
		],
	],
];
