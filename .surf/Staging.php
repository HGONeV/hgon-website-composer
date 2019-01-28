<?php
/**
 * Deployment for RKW Website (Stage)
 *
 * @author Steffen Kroggel <developer@steffenkroggel.de>
 * @copyright Rkw Kompetenzzentrum
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 * @var \TYPO3\Surf\Domain\Model\Deployment $deployment
 */

// Requires
require_once __DIR__ . '/Credentials/Staging.php';
require_once __DIR__ . '/Includes/SecurityQuestion.php';
require_once __DIR__ . '/Includes/RsyncFlags.php';

/*
 * Set application
 */
/** @var \TYPO3\Surf\Application\TYPO3\CMS $application */
$application = new \TYPO3\Surf\Application\TYPO3\CMS;
$application->setOption('projectName', $projectName);
$application->setOption('repositoryUrl', $gitRepository);
$application->setOption('packageMethod', 'git');
$application->setOption('transferMethod', 'rsync');
$application->setOption('updateMethod', null);
$application->setOption('keepReleases', 3);
$application->setOption('composerCommandPath', 'composer');
$application->setOption('phpBinaryPathAndFilename', $phpPath);
$application->setOption('rsyncFlags', implode(' ', $rsyncFlags));
$application->setOption('branch', $gitBranch);
$application->setOption('typo3.surf:gitCheckout[branch]', $gitBranch);
$application->setOption('applicationRootDirectory', 'src');
$application->setDeploymentPath($absolutePath);
$application->setSymlinks(array(
    './web/uploads' => '../../../surf/shared/uploads',
    './web/fileadmin' => '../../../surf/shared/fileadmin',
    './web/typo3conf/LocalConfiguration.php' => '../../../../shared/LocalConfiguration.php',
));
$deployment->addApplication($application);


/*
 * Set node
 */
/** @var \TYPO3\Surf\Domain\Model\Node $node */
$node = new \TYPO3\Surf\Domain\Model\Node($server);
$node->setHostname($server);
$node->setOption('username', $user);
$node->setOption('password', $password);
$node->setOption('port', $port);
$application->addNode($node);


/*
 * Set Workflow with tasks
 */
/** @var \TYPO3\Surf\Domain\Model\SimpleWorkflow $workflow */
$workflow = new \TYPO3\Surf\Domain\Model\SimpleWorkflow;

// define task executed locally
$workflow->defineTask(
    'RKW\\Task\\FixRightsLocal',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {workspacePath} && chmod -R 777 ./ && echo "Fixed rights"')
);
$workflow->defineTask(
    'RKW\\Task\\CopyEnv',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {workspacePath} && if [ -f "_env.' . $fileExtension . '" ]; then cp _env.' . $fileExtension . ' .env; fi')
);
$workflow->defineTask(
    'RKW\\Task\\CopyAdditionalConfiguration',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {workspacePath} && if [ -f "./web/typo3conf/AdditionalConfiguration.' . $fileExtension . '.php" ]; then cp ./web/typo3conf/AdditionalConfiguration.' . $fileExtension . '.php ./web/typo3conf/AdditionalConfiguration.php; fi && echo "Copied AdditionalConfiguration.php."')
);
$workflow->defineTask(
    'RKW\\Task\\CopyHtaccess',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {workspacePath} && if [ -f "./web/_htaccess.' . $fileExtension . '" ]; then cp ./web/_htaccess.' . $fileExtension . ' ./web/.htaccess; fi && if [ -f "./web/_htpasswd.' . $fileExtension . '" ]; then cp ./web/_htpasswd.' . $fileExtension . ' ./web/.htpasswd; fi && echo "Copied .htaccess."')
);
$workflow->defineTask(
    'RKW\\Task\\TYPO3\\GeneratePackageStates',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {releasePath} && ./vendor/bin/typo3cms install:generatepackagestates')
);


// define task executed remotely
$workflow->defineTask(
    'RKW\\Task\\CopyDummyFiles',
    \TYPO3\Surf\Task\ShellTask::class,
    array('command' => 'cd {releasePath} && if [ -d "./dummy" ]; then cp ./dummy/* ./web/fileadmin/media/; fi && echo "Copied dummy files."')
);
$workflow->defineTask(
    'RKW\\Task\\FixRightsRemote',
    \TYPO3\Surf\Task\ShellTask::class,
    array('command' => 'cd {releasePath} && find ./web -type f -exec chmod 640 {} \; && find ./web -type d -exec chmod 750 {} \; && echo "Fixed rights"')
);
$workflow->defineTask(
    'RKW\\Task\\Apc\\ClearCache',
    \TYPO3\Surf\Task\ShellTask::class,
    array('command' => 'cd {releasePath} && ' . $phpPath . ' -r \'apc_clear_cache("' . $user . '");\'')
);
$workflow->defineTask(
    'RKW\\Task\\TYPO3\\FixFolderStructure',
    \TYPO3\Surf\Task\ShellTask::class,
    array('command' => 'cd {releasePath} && ./vendor/bin/typo3cms install:fixfolderstructure')
);
$workflow->defineTask(
    'RKW\\Task\\TYPO3\\ClearCache',
    \TYPO3\Surf\Task\ShellTask::class,
    array('command' => 'cd {releasePath} && ./vendor/bin/typo3cms cache:flush')
);
$workflow->defineTask(
    'RKW\\Task\\TYPO3\\UpdateSchema',
    \TYPO3\Surf\Task\ShellTask::class,
    array('command' => 'cd {releasePath} && if [ -f "./web/typo3conf/LocalConfiguration.php" ]; then ./vendor/bin/typo3cms database:updateschema "*.add,*.change"; fi')
);

$deployment->setWorkflow($workflow);


// Add / remove tasks
$deployment->onInitialize(function () use ($workflow, $application) {

    // remove tasks we don't need
    $workflow->removeTask('TYPO3\\Surf\\Task\\TYPO3\\CMS\\CreatePackageStatesTask');
    $workflow->removeTask('TYPO3\\Surf\\Task\\TYPO3\\CMS\\SetUpExtensionsTask');


    // -----------------------------------------------
    // Step 1: initialize - This is normally used only for an initial deployment to an instance. At this stage you may prefill certain directories for example.

    // -----------------------------------------------
    // Step 2: package - This stage is where you normally package all files and assets, which will be transferred to the next stage.
    $workflow->beforeTask('TYPO3\Surf\DefinedTask\Composer\LocalInstallTask', 'RKW\\Task\\CopyEnv');
    $workflow->beforeTask('TYPO3\Surf\DefinedTask\Composer\LocalInstallTask', 'RKW\\Task\\CopyHtaccess');
    $workflow->beforeTask('TYPO3\Surf\DefinedTask\Composer\LocalInstallTask', 'RKW\\Task\\CopyAdditionalConfiguration');
    $workflow->beforeTask('TYPO3\Surf\DefinedTask\Composer\LocalInstallTask', 'RKW\\Task\\FixRightsLocal');

    // -----------------------------------------------
    // Step 3: transfer - Here all tasks are located which serve to transfer the assets from your local computer to the node, where the application runs.
    $workflow->afterTask('TYPO3\\Surf\\Task\\Generic\\CreateSymlinksTask', 'RKW\\Task\\CopyDummyFiles');

    // -----------------------------------------------
    // Step 4: update - If necessary, the transferred assets can be updated at this stage on the foreign instance.

    // -----------------------------------------------
    // Step 5: migration - Here you can define tasks to do some database updates / migrations. Be careful and do not delete old tables or columns, because the old code, relying on these, is still live.
    $workflow->addTask('RKW\Task\TYPO3\UpdateSchema', 'migrate');
    $workflow->afterStage('migrate', 'RKW\\Task\\FixRightsRemote');

    // -----------------------------------------------
    // Step 6: finalize - This stage is meant for tasks, that should be done short before going live, like cache warm ups and so on.

    // -----------------------------------------------
    // Step 7: test - In the test stage you can make tests, to check if everything is fine before switching the releases.

    // -----------------------------------------------
    // Step 8: switch - This is the crucial stage. Here the old live instance is switched with the new prepared instance. Normally the new instance is symlinked.
    $workflow->beforeStage('switch', 'RKW\\Task\\Apc\\ClearCache');
    $workflow->afterStage('switch', 'RKW\\Task\\Apc\\ClearCache');

    // -----------------------------------------------
    // Step 9: cleanup - At this stage you would cleanup old releases or remove other unused stuff.

});

