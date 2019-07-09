<?php
if (!defined('TYPO3_MODE')) {
    die ('Access denied.');
}

// add types
$GLOBALS['TCA']['tx_news_domain_model_news']['columns']['type']['config']['items']['0'] = ['Newsmeldung', 0];
$GLOBALS['TCA']['tx_news_domain_model_news']['columns']['type']['config']['items']['1'] = ['Pressemitteilung', 1];
$GLOBALS['TCA']['tx_news_domain_model_news']['columns']['type']['config']['items']['2'] = ['Projektvorstellung', 2];

// set available fields (also overwrite standard news with type 0)
//$showFields = ['showitem' => 'type, title, teaser, datetime, bodytext, fal_media, categories, tags, tx_hgon_workgroup'];
$showFields = ['showitem' => '
                    --palette--;;paletteCore,type,title,--palette--;;paletteSlug,teaser,
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
                    --palette--;' . $ll . 'tx_news_domain_model_news.palettes.alternativeTitles;alternativeTitles,
                --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:language,
                    --palette--;;paletteLanguage,
                --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:access,
                    --palette--;;paletteHidden,
                    --palette--;;paletteAccess,
                --div--;' . $ll . 'notes,
                    notes,
                --div--;LLL:EXT:frontend/Resources/Private/Language/locallang_tca.xlf:pages.tabs.extended,'
        ];

$GLOBALS['TCA']['tx_news_domain_model_news']['types']['0'] = $showFields;
$GLOBALS['TCA']['tx_news_domain_model_news']['types']['1'] = $showFields;
$GLOBALS['TCA']['tx_news_domain_model_news']['types']['2'] = $showFields;