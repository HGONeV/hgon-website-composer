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

        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'HGON.HgonTemplate',
            'ProjectTeaser',
            [
                'Standard' => 'projectTeaser'
            ],
            // non-cacheable actions
            [
                'Standard' => 'projectTeaser'
            ]
        );

        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'HGON.HgonTemplate',
            'SidebarContactPerson',
            [
                'Standard' => 'sidebarContactPerson'
            ],
            // non-cacheable actions
            [
                'Standard' => 'sidebarContactPerson'
            ]
        );

        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'HGON.HgonTemplate',
            'SiblingPagesOverview',
            [
                'Standard' => 'siblingPagesOverview'
            ],
            // non-cacheable actions
            [
                'Standard' => 'siblingPagesOverview'
            ]
        );

        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'HGON.HgonTemplate',
            'JournalOverview',
            [
                'Standard' => 'journalOverview'
            ],
            // non-cacheable actions
            [
                'Standard' => 'journalOverview'
            ]
        );

        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'HGON.HgonTemplate',
            'PageSlider',
            [
                'Standard' => 'pageSlider'
            ],
            // non-cacheable actions
            [
                'Standard' => 'pageSlider'
            ]
        );

        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'HGON.HgonTemplate',
            'DonationForm',
            [
                'Standard' => 'donationForm'
            ],
            // non-cacheable actions
            [
                'Standard' => 'donationForm'
            ]
        );


        // for content slide
        $GLOBALS['TYPO3_CONF_VARS']['FE']['addRootLineFields'] .= ',subtitle,tx_rkwbasics_article_image,';

        /*
        // caching
        if( !is_array($GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$extKey] ) ) {
            $GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$extKey] = array();
        }
        // Hier ist der entscheidende Punkt! Es ist der Cache von Variablen gesetzt!
        if( !isset($GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$extKey]['frontend'] ) ) {
            $GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$extKey]['frontend'] = 'TYPO3\\CMS\\Core\\Cache\\Frontend\\VariableFrontend';
        }

        if( !isset($GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$extKey]['groups'] ) ) {
            $GLOBALS['TYPO3_CONF_VARS'] ['SYS']['caching']['cacheConfigurations'][$extKey]['groups'] = array('pages');
        }
        */

    },
    $_EXTKEY
);