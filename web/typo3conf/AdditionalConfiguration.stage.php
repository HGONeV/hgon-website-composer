<?php
// add application-context to sitename
$applicationContext = \TYPO3\CMS\Core\Utility\GeneralUtility::getApplicationContext()->__toString();
$GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] .= ' / ' . $applicationContext;

// deactivate cache completely
foreach ($GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations'] as $cacheName => $cacheConfiguration) {
    $GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations'][$cacheName]['backend'] = \TYPO3\CMS\Core\Cache\Backend\NullBackend::class;
}

// ====================================================
// Page not found handling
// ====================================================
$GLOBALS['TYPO3_CONF_VARS']['FE']['pageNotFound_handling'] = 'USER_FUNCTION:HGON\\HgonTemplate\\UserFunctions\\PageNotFound->pageNotFound';
$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics'] = array ();

$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['rkw_basics']['_DEFAULT'] = array (
    'fallbackPid' => 68,
    'defaultDomain' => 'stage.hgon.de'
);

// ====================================================
// Important settings
// ====================================================
$GLOBALS['TYPO3_CONF_VARS']['FE']['cHashExcludedParameters'] = 'L, v, type, pk_campaign, pk_kwd, utm_source, utm_medium, utm_campaign, utm_term, utm_content, tx_rkwevents_pi1[event]';
$GLOBALS['TYPO3_CONF_VARS']['FE']['disableNoCacheParameter'] = 1; // disable &no_cache=1 param; relevant for performance and security
$GLOBALS['TYPO3_CONF_VARS']['FE']['pageNotFoundOnCHashError'] = 0; // simply show page if cHash is invalid
$GLOBALS['TYPO3_CONF_VARS']['FE']['pageNotFound_handling_statheader'] = 'HTTP/1.0 404 Not Found';
$GLOBALS['TYPO3_CONF_VARS']['FE']['pageUnavailable_handling'] = 'READFILE:status/ServiceUnavailable.html';
$GLOBALS['TYPO3_CONF_VARS']['FE']['pageUnavailable_handling_statheader'] = 'HTTP/1.0 503 Service Temporarily Unavailable';
$GLOBALS['TYPO3_CONF_VARS']['FE']['loginSecurityLevel'] = 'rsa'; // use RSA password encryption; needs rsaauth extension
$GLOBALS['TYPO3_CONF_VARS']['FE']['lockIP'] = 4; // lock FE-Users to full IP-address of their session
$GLOBALS['TYPO3_CONF_VARS']['FE']['sessionDataLifetime'] = 86400 ; // delete anonymous session data after 24 hours
$GLOBALS['TYPO3_CONF_VARS']['FE']['cookieSameSite'] = 'strict' ; // lock cookie to current domain; cookie unavailable through iFrames
$GLOBALS['TYPO3_CONF_VARS']['FE']['cookieDomain'] = ''; // uses [SYS][cookieDomain] if empty
$GLOBALS['TYPO3_CONF_VARS']['FE']['versionNumberInFilename'] = ''; // deactivate version numbers on css/js-files

$GLOBALS['TYPO3_CONF_VARS']['BE']['lockSSL'] = 1; // lock BE to SSL
$GLOBALS['TYPO3_CONF_VARS']['BE']['sessionTimeout'] = 28800; // set session timeout to 8 hours
$GLOBALS['TYPO3_CONF_VARS']['BE']['versionNumberInFilename'] = 0; // use filemtime appended to the query-string instead of timestamp
$GLOBALS['TYPO3_CONF_VARS']['BE']['warning_email_addr'] = 'info@hgon.de'; // sent warnings on failed BE-logins and InstallTool-Logins
$GLOBALS['TYPO3_CONF_VARS']['BE']['loginSecurityLevel'] = 'rsa'; // use RSA password encryption; needs rsaauth extension
$GLOBALS['TYPO3_CONF_VARS']['BE']['lockIP'] = 4; // lock BE-Users to full IP-address of their session
$GLOBALS['TYPO3_CONF_VARS']['BE']['lockBeUserToDBmounts'] = 1; // lock BE-Users to their page-mounts
$GLOBALS['TYPO3_CONF_VARS']['BE']['cookieSameSite'] = 'strict' ; // lock cookie to current domain; cookie unavailable through iFrames
$GLOBALS['TYPO3_CONF_VARS']['BE']['cookieDomain'] = ''; // uses [SYS][cookieDomain] if empty

$GLOBALS['TYPO3_CONF_VARS']['SYS']['UTF8filesystem'] = 1; // use utf-8 to store file names
$GLOBALS['TYPO3_CONF_VARS']['SYS']['fileCreateMask'] = '0664'; // File mode mask for Unix file systems
$GLOBALS['TYPO3_CONF_VARS']['SYS']['folderCreateMask'] = '2775'; // Folder mode mask for Unix file systems
$GLOBALS['TYPO3_CONF_VARS']['SYS']['ipAnonymization'] = 2; // Mask the last two bytes for IPv4 addresses / Mask the Interface ID and SLA ID for IPv6 addresses
$GLOBALS['TYPO3_CONF_VARS']['SYS']['cookieDomain'] = '/\\.(hgon)\\.de$/';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['cookieSecure'] = 2; // the cookie uses the secure flag if a secure (HTTPS) connection exists
$GLOBALS['TYPO3_CONF_VARS']['SYS']['reverseProxyIP'] = '127.0.0.1'; // revers proxy IP
$GLOBALS['TYPO3_CONF_VARS']['SYS']['systemLocale'] = 'de_DE.UTF-8'; // locale used for certain system related functions
$GLOBALS['TYPO3_CONF_VARS']['SYS']['trustedHostsPattern'] = '(.*\\.hgon\\.de)';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['generateApacheHtaccess'] = 1; // create .htaccess files for protection
$GLOBALS['TYPO3_CONF_VARS']['SYS']['systemLog'] = 'mail,3';

$GLOBALS['TYPO3_CONF_VARS']['MAIL']['defaultMailFromName'] = 'HGON e.V.';
$GLOBALS['TYPO3_CONF_VARS']['MAIL']['defaultMailReturnAddress'] = 'bounces@hgon.de';
$GLOBALS['TYPO3_CONF_VARS']['MAIL']['defaultMailFromAddress'] = 'info@hgon.de';
$GLOBALS['TYPO3_CONF_VARS']['MAIL']['defaultMailReplyAddress'] = 'info@hgon.de';

$GLOBALS['TYPO3_CONF_VARS']['GFX']['gdlib_png'] = 1; // use GD-Lib for PNGs
$GLOBALS['TYPO3_CONF_VARS']['GFX']['jpg_quality'] = 90; // Default JPEG generation quality
$GLOBALS['TYPO3_CONF_VARS']['GFX']['processor'] = 'ImageMagick'; // Use Image- or GraphicsMagick
$GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_enabled'] = 1; // Enables the use of Image- or GraphicsMagick.
$GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_path'] = '/usr/bin/'; // Path to the IM tools 'convert', 'combine', 'identify'.
$GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_path_lzw'] = '/usr/bin/'; // Path to the IM tool 'convert' with LZW enabled
$GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_effects'] = 1; // Allow blur and sharpening in ImageMagick.
$GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_allowTemporaryMasksAsPng'] = 1; // Using PNGs as masks; usually faster
$GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_effects'] = 1; // Allow blur and sharpening in ImageMagick.
$GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_stripColorProfileByDefault'] = 1; // Remove existing color profiles.
$GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_stripColorProfileCommand'] = '+profile \'*\''; // command to strip the profile information
$GLOBALS['TYPO3_CONF_VARS']['GFX']['processor_colorspace'] = 'sRGB'; // Colorspace to use



