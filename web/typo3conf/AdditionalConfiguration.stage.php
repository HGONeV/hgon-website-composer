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
