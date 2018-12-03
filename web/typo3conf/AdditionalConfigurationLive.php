<?php

// ====================================================
// Backend
// ====================================================
// InstallTool-Password; should be kept secret
$GLOBALS['TYPO3_CONF_VARS']['BE']['installToolPassword'] = '$P$C8.8X90tS2Djh1XOCTFehnh6Xu5uAp1'; // joh316

// ====================================================
// Database-Credentials; should be kept secret
// ====================================================
$GLOBALS['TYPO3_CONF_VARS']['DB']['database'] = 'rkw_live_komze';
$GLOBALS['TYPO3_CONF_VARS']['DB']['host']     = 'localhost';
$GLOBALS['TYPO3_CONF_VARS']['DB']['username'] = 'rkw_live_komze';
$GLOBALS['TYPO3_CONF_VARS']['DB']['password'] = 'rkw';

// ====================================================
// Mailing-Credentials; should be kept secret
// ====================================================
$GLOBALS['TYPO3_CONF_VARS']['BE']['MAIL']['transport_smtp_server'] => 'localhost:25';
$GLOBALS['TYPO3_CONF_VARS']['BE']['MAIL']['transport_smtp_username'] => 'service@mein.rkw.de',
$GLOBALS['TYPO3_CONF_VARS']['BE']['MAIL']['transport_smtp_password'] = 'rkw';

// ====================================================
// Security; should be set on live!
// ====================================================
// is used for salted passwords etc.; should be kept secret
$GLOBALS['TYPO3_CONF_VARS']['SYS']['encryptionKey'] = 'WhatSoEver';


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
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.digitalisierungs-cockpit.de'] = array (
    'fallbackPid' => 4180,
    'defaultDomain' => 'www.digitalisierungs-cockpit.de'
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

$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['management-digital.rkw-kompetenzzentrum.de'] = array (
    'fallbackPid' => 3647,
    'defaultDomain' => 'management-digital.rkw-kompetenzzentrum.de'
);


?>
