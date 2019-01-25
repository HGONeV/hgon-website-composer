<?php

// ====================================================
// OrientDb 
// ====================================================
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_search']['OrientDB']['DB'] = array (
    'user' => 'rkw-search-dev',
    'password' => 'rkj2QxFwpfEaxMcDSqcuYeqSSYkw6fRns2e8pKuCQXDdAGHhVLBLQRuzFEVC',
    'database' => 'RkwSearchDev',
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
    'defaultDomain' => 'rkw-kompetenzzentrum.rkw.local'
);
// =====================================
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['rkw.rkw.local'] = array (
    'fallbackPid' => 3579,
    'defaultDomain' => 'mein.rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['aprodi-projekt.rkw.local'] = array (
    'fallbackPid' => 3873,
    'defaultDomain' => 'waprodi-projekt.rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['baumitbim.rkw.local'] = array (
    'fallbackPid' => 4375,
    'defaultDomain' => 'baumitbim.rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['eanpc.rkw.local'] = array (
    'fallbackPid' => 3902,
    'defaultDomain' => 'eanpc.rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['frauenambau.rkw.local'] = array (
    'fallbackPid' => 3692,
    'defaultDomain' => 'frauenambau.rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['karriereseiten-check.rkw.local'] = array (
    'fallbackPid' => 3950,
    'defaultDomain' => 'karriereseiten-check.rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['ressinnobau.rkw.local'] = array (
    'fallbackPid' => 3681,
    'defaultDomain' => 'ressinnobau.rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['rkw.local'] = array (
    'fallbackPid' => 4362,
    'defaultDomain' => 'rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['rkw-nord.rkw.local'] = array (
    'fallbackPid' => 3616,
    'defaultDomain' => 'rkw-nord.rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['rkw-sachsenanhalt.rkw.local'] = array (
    'fallbackPid' => 3500,
    'defaultDomain' => 'rkw-sachsenanhalt.rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['rkw-thueringen.rkw.local'] = array (
    'fallbackPid' => 3778,
    'defaultDomain' => 'rkw-thueringen.rkw.local'
);

// =====================================
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['bremen.rkw.local'] = array (
    'fallbackPid' => 4784,
    'defaultDomain' => 'bremen.rkw.local'
);

$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['nord.rkw.local'] = array (
    'fallbackPid' => 3616,
    'defaultDomain' => 'nord.rkw.local'
);
