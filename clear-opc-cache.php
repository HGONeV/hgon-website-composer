<?php
require_once('vendor/typo3/cms/typo3/sysext/core/Classes/Service/OpcodeCacheService.php');

/** @var \TYPO3\CMS\Core\Service\OpcodeCacheService $service */
$service = new \TYPO3\CMS\Core\Service\OpcodeCacheService();
$service->clearAllActive();
