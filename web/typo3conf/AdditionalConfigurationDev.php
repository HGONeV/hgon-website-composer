<?php

// ====================================================
// Backend
// ====================================================
// compression for JS/CSS in BE
$GLOBALS['TYPO3_CONF_VARS']['BE']['compressionLevel'] = 0;

// Debug-mode for BE; ONLY FOR DEV!
$GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = true;

// lock backend to SSL; should be on for live
$GLOBALS['TYPO3_CONF_VARS']['BE']['lockSSL'] = 0;

// InstallTool-Password; should be kept secret
$GLOBALS['TYPO3_CONF_VARS']['BE']['installToolPassword'] = '$P$C8.8X90tS2Djh1XOCTFehnh6Xu5uAp1'; // joh316

// ====================================================
// Database-Credentials; should be kept secret
// ====================================================
$GLOBALS['TYPO3_CONF_VARS']['DB']['database'] = 'rkw_dev_komze';
$GLOBALS['TYPO3_CONF_VARS']['DB']['host']     = 'localhost';
$GLOBALS['TYPO3_CONF_VARS']['DB']['username'] = 'rkw_dev_komze';
$GLOBALS['TYPO3_CONF_VARS']['DB']['password'] = 'rkw';

// ====================================================
// Mailing-Credentials; should be kept secret
// ====================================================
$GLOBALS['TYPO3_CONF_VARS']['BE']['MAIL']['transport'] => 'mail';
$GLOBALS['TYPO3_CONF_VARS']['BE']['MAIL']['transport_smtp_server'] => '';
$GLOBALS['TYPO3_CONF_VARS']['BE']['MAIL']['transport_smtp_username'] => '',
$GLOBALS['TYPO3_CONF_VARS']['BE']['MAIL']['transport_smtp_password'] = '';

// ====================================================
// Security; should be set on live!
// ====================================================
// sets the valid domains for FE cookies
$GLOBALS['TYPO3_CONF_VARS']['SYS']['cookieDomain'] = '';

// sets the trusted hosts
$GLOBALS['TYPO3_CONF_VARS']['SYS']['trustedHostsPattern'] = '';

// It indicates that the cookie should only be transmitted over a secure HTTPS connection between client and server.
$GLOBALS['TYPO3_CONF_VARS']['SYS']['cookieSecure'] = '0';

// is used for salted passwords etc.; should be kept secret
$GLOBALS['TYPO3_CONF_VARS']['SYS']['encryptionKey'] = 'WhatSoEver';

// ====================================================
// Debugging; should be off on live!
// ====================================================
$TYPO3_CONF_VARS['SYS']['displayErrors'] = '1';
$TYPO3_CONF_VARS['SYS']['errorHandlerErrors'] = E_ALL ^ E_NOTICE;
$TYPO3_CONF_VARS['SYS']['exceptionalErrors'] = E_ALL ^ E_NOTICE ^ E_WARNING ^ E_USER_ERROR ^ E_USER_NOTICE ^ E_USER_WARNING;
$TYPO3_CONF_VARS['SYS']['enableDeprecationLog'] = 'file';

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
    'defaultDomain' => 'www.rkw-kompetenzzentrum.local'
);
// =====================================
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['mein.rkw.local'] = array (
    'fallbackPid' => 3579,
    'defaultDomain' => 'mein.rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.aprodi-projekt.local'] = array (
    'fallbackPid' => 3873,
    'defaultDomain' => 'www.aprodi-projekt.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.baumitbim.local'] = array (
    'fallbackPid' => 4375,
    'defaultDomain' => 'www.baumitbim.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.digitalisierungs-cockpit.local'] = array (
    'fallbackPid' => 4180,
    'defaultDomain' => 'www.digitalisierungs-cockpit.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.eanpc.eu'] = array (
    'fallbackPid' => 3902,
    'defaultDomain' => 'www.eanpc.eu'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.frauenambau.local'] = array (
    'fallbackPid' => 3692,
    'defaultDomain' => 'www.frauenambau.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.karriereseiten-check.local'] = array (
    'fallbackPid' => 3950,
    'defaultDomain' => 'www.karriereseiten-check.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.ressinnobau.local'] = array (
    'fallbackPid' => 3681,
    'defaultDomain' => 'www.ressinnobau.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.rkw.local'] = array (
    'fallbackPid' => 4362,
    'defaultDomain' => 'www.rkw.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.rkw-nord.local'] = array (
    'fallbackPid' => 3616,
    'defaultDomain' => 'www.rkw-nord.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.rkw-sachsenanhalt.local'] = array (
    'fallbackPid' => 3500,
    'defaultDomain' => 'www.rkw-sachsenanhalt.local'
);
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['www.rkw-thueringen.local'] = array (
    'fallbackPid' => 3778,
    'defaultDomain' => 'www.rkw-thueringen.local'
);

// =====================================
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['bremen.rkw-kompetenzzentrum.local'] = array (
    'fallbackPid' => 4784,
    'defaultDomain' => 'bremen.rkw-kompetenzzentrum.local'
);

$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['nord.rkw-kompetenzzentrum.local'] = array (
    'fallbackPid' => 3616,
    'defaultDomain' => 'nord.rkw-kompetenzzentrum.local'
);

$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['management-digital.rkw-kompetenzzentrum.local'] = array (
    'fallbackPid' => 3647,
    'defaultDomain' => 'management-digital.rkw-kompetenzzentrum.local'
);

?>
