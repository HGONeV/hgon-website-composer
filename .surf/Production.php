<?php
/**
 * Deployment-Script
 *
 * @author Steffen Kroggel <developer@steffenkroggel.de>
 * @copyright Rkw Kompetenzzentrum
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 * @var \TYPO3\Surf\Domain\Model\Deployment $deployment
 * @version 1.0.1
 */

// Requires
require_once __DIR__ . '/Credentials/Production.php';
require_once __DIR__ . '/Includes/SecurityQuestion.php';
require_once __DIR__ . '/Includes/RsyncFlags.php';
require_once __DIR__ . '/Includes/Deployment.php';
