<?php
if (!defined('TYPO3_MODE')) {
    die ('Access denied.');
}

// hide tx_news own type
$condFce = 'FIELD:type:!=:0';
$GLOBALS['TCA']['tx_news_domain_model_news']['columns']['type']['displayCond'] = $condFce;

// the tx_news-type is working like a doktype and has much influence on queries. Create own type!
$tempPagesColumns = array(

    'tx_hgontemplate_type' => [
        'exclude' => false,
        'label' => 'LLL:EXT:hgon_template/Resources/Private/Language/locallang_db.xlf:tx_hgontemplate_domain_model_news.tx_hgontemplate_type',
        'config' => [
            'type' => 'select',
            'renderType' => 'selectSingle',
            'items' => [
                ['LLL:EXT:hgon_template/Resources/Private/Language/locallang_db.xlf:tx_hgontemplate_domain_model_news.tx_hgontemplate_type.0', 0],
                ['LLL:EXT:hgon_template/Resources/Private/Language/locallang_db.xlf:tx_hgontemplate_domain_model_news.tx_hgontemplate_type.1', 1],
                ['LLL:EXT:hgon_template/Resources/Private/Language/locallang_db.xlf:tx_hgontemplate_domain_model_news.tx_hgontemplate_type.2', 2],
            ],
            'fieldWizard' => [
                'selectIcons' => [
                    'disabled' => false,
                ],
            ],
            'size' => 1,
            'maxitems' => 1,
        ]
    ],

);
// Add TCA
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTCAcolumns(
    'tx_news_domain_model_news',
    $tempPagesColumns
);
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addToAllTCAtypes(
    'tx_news_domain_model_news',
    'tx_hgontemplate_type',
    '',
    'before:title'
);



// set available fields (also overwrite standard news with type 0)
//$showFields = ['showitem' => 'type, title, teaser, datetime, bodytext, fal_media, categories, tags, tx_hgon_workgroup'];
$showFields = ['showitem' => '
                --palette--;;paletteCore,title,--palette--;;paletteSlug,teaser,
                --palette--;;paletteDate,
                bodytext,
                --div--;' . $ll . 'tx_news_domain_model_news.content_elements,
                    content_elements,
                --div--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:tabs.media,
                    fal_media,fal_related_files,
                --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:categories,
                    categories,
                --div--;' . $ll . 'tx_news_domain_model_news.tabs.relations,
                    related,related_from,
                    related_links,tags,
                    tx_hgon_workgroup,
                --div--;LLL:EXT:frontend/Resources/Private/Language/locallang_tca.xlf:pages.tabs.metadata,
                    --palette--;LLL:EXT:frontend/Resources/Private/Language/locallang_tca.xlf:pages.palettes.editorial;paletteAuthor,
                    --palette--;LLL:EXT:frontend/Resources/Private/Language/locallang_tca.xlf:pages.palettes.metatags;metatags,
                    --palette--;' . $ll . '                                                        palettes.alternativeTitles;alternativeTitles,
                --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:language,
                    --palette--;;paletteLanguage,
                --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:access,
                    --palette--;;paletteHidden,
                    --palette--;;paletteAccess,
                --div--;' . $ll . 'notes,
                    notes,
                --div--;LLL:EXT:frontend/Resources/Private/Language/locallang_tca.xlf:pages.tabs.extended,'
        ];
