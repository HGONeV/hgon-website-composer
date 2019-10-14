<?php
use  RKW\SurfDeployment\Deployment;
/**
 * Deployment-Script
 *
 * @author Steffen Kroggel <developer@steffenkroggel.de>
 * @copyright Rkw Kompetenzzentrum
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 * @var \TYPO3\Surf\Domain\Model\Deployment $deployment
 */
// load options
$options = require_once __DIR__ . '/Credentials/Staging.php';
// make deployment
$rkwDeployment = new Deployment($deployment, $options);