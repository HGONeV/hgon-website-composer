<?php
defined('TYPO3_MODE') || die('Access denied.');

$GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets']['hgon_default'] = 'EXT:hgon_template/Configuration/Yaml/RTE/HgonDefault.yaml';

call_user_func(
    function($extKey)
    {

        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'HGON.HgonTemplate',
            'JournalHighlight',
            [
                'Standard' => 'journalHighlight'
            ],
            // non-cacheable actions
            [
                'Standard' => 'journalHighlight'
            ]
        );

        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'HGON.HgonTemplate',
            'PageHighlight',
            [
                'Standard' => 'pageHighlight'
            ],
            // non-cacheable actions
            [
                'Standard' => 'pageHighlight'
            ]
        );

        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'HGON.HgonTemplate',
            'RandomAuthor',
            [
                'Standard' => 'randomAuthor'
            ],
            // non-cacheable actions
            [
                'Standard' => 'randomAuthor'
            ]
        );

    },
    $_EXTKEY
);