<?php

// ====================================================
// OrientDb 
// ====================================================
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_search']['OrientDB']['DB'] = array (
    'user' => 'rkw-search-live',
    'password' => '2aRGRnTDxsgXdSaNRgHpvuXEEJ5MJkejymg3ZGbSZ3Q6HLeG8kf5Lwcq93ur',
    'database' => 'RkwSearchLive',
    'host' => 'localhost',

    'debug' => 0,
    'driver' => 'binary',
    'readOnly' => 0
);

// ====================================================
// Page not found handling
// ====================================================
$GLOBALS['TYPO3_CONF_VARS']['FE']['pageNotFound_handling'] = 'USER_FUNCTION:RKW\\RkwBasics\\UserFunctions\\PageNotFound->pageNotFound';
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics'] = array ();
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['_DEFAULT'] = array (
    'fallbackPid' => 2023,
    'defaultDomain' => 'www.rkw-kompetenzzentrum.de'
);
// =====================================
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['mein.rkw.de'] = array (
    'fallbackPid' => 3579,
    'defaultDomain' => 'mein.rkw.de'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.aprodi-projekt.de'] = array (
    'fallbackPid' => 3873,
    'defaultDomain' => 'www.aprodi-projekt.de'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.baumitbim.de'] = array (
    'fallbackPid' => 4375,
    'defaultDomain' => 'www.baumitbim.de'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.eanpc.eu'] = array (
    'fallbackPid' => 3902,
    'defaultDomain' => 'www.eanpc.eu'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.frauenambau.de'] = array (
    'fallbackPid' => 3692,
    'defaultDomain' => 'www.frauenambau.de'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.karriereseiten-check.de'] = array (
    'fallbackPid' => 3950,
    'defaultDomain' => 'www.karriereseiten-check.de'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.ressinnobau.de'] = array (
    'fallbackPid' => 3681,
    'defaultDomain' => 'www.ressinnobau.de'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.rkw.de'] = array (
    'fallbackPid' => 4362,
    'defaultDomain' => 'www.rkw.de'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.rkw-nord.de'] = array (
    'fallbackPid' => 3616,
    'defaultDomain' => 'www.rkw-nord.de'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.rkw-sachsenanhalt.de'] = array (
    'fallbackPid' => 3500,
    'defaultDomain' => 'www.rkw-sachsenanhalt.de'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.rkw-thueringen.de'] = array (
    'fallbackPid' => 3778,
    'defaultDomain' => 'www.rkw-thueringen.de'
);

// =====================================
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['bremen.rkw-kompetenzzentrum.de'] = array (
    'fallbackPid' => 4784,
    'defaultDomain' => 'bremen.rkw-kompetenzzentrum.de'
);

$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['nord.rkw-kompetenzzentrum.de'] = array (
    'fallbackPid' => 3616,
    'defaultDomain' => 'nord.rkw-kompetenzzentrum.de'
);


