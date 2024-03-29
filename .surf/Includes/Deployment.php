<?php
/**
 * Deployment-Script
 *
 * @author Steffen Kroggel <developer@steffenkroggel.de>
 * @copyright Rkw Kompetenzzentrum
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 * @var \TYPO3\Surf\Domain\Model\Deployment $deployment
 * @version 1.0.2
 */


/*
 * Set application
 */
/** @var \TYPO3\Surf\Application\TYPO3\CMS $application */
$application = new \TYPO3\Surf\Application\TYPO3\CMS(md5($projectName));
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

//---------------------------------------
// define task executed locally
//---------------------------------------
$workflow->defineTask(
    'RKW\\Task\\Local\\FixRights',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {workspacePath} && chmod -R 770 ./ && echo "Fixed rights in {workspacePath}"')
);
$workflow->defineTask(
    'RKW\\Task\\Local\\SetGitFileModeIgnore',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {workspacePath} && ./scripts/git-filemode-recursive.sh && echo "Set \'git config core.filemode false\' on all repositories in {workspacePath}"')
);
$workflow->defineTask(
    'RKW\\Task\\Local\\CopyEnv',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {workspacePath} && if [ -f "_.env.' . $fileExtension . '" ]; then cp _.env.' . $fileExtension . ' .env; fi')
);
$workflow->defineTask(
    'RKW\\Task\\Local\\CopyAdditionalConfiguration',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {workspacePath} && if [ -f "./web/typo3conf/AdditionalConfiguration.' . $fileExtension . '.php" ]; then cp ./web/typo3conf/AdditionalConfiguration.' . $fileExtension . '.php ./web/typo3conf/AdditionalConfiguration.php; fi && echo "Copied AdditionalConfiguration.php in {workspacePath}."')
);
$workflow->defineTask(
    'RKW\\Task\\Local\\CopyHtaccess',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {workspacePath} && if [ -f "./web/_.htaccess.' . $fileExtension . '" ]; then cp ./web/_.htaccess.' . $fileExtension . ' ./web/.htaccess; fi && if [ -f "./web/_.htpasswd.' . $fileExtension . '" ]; then cp ./web/_.htpasswd.' . $fileExtension . ' ./web/.htpasswd; fi && echo "Copied .htaccess in {workspacePath}."')
);
$workflow->defineTask(
    'RKW\\Task\\Local\\RemoveComposerLock',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {workspacePath} && rm ./composer.lock && echo "Removed composer.lock in {workspacePath}"')
);
// own task because we need --no-scripts and --prefer-dist
$workflow->defineTask(
    'RKW\\Task\\Local\\ComposerInstall',
    \TYPO3\Surf\Task\LocalShellTask::class,
    array('command' => 'cd {workspacePath} && composer install --no-ansi --no-interaction --no-dev --no-progress --classmap-authoritative --prefer-dist 2>&1')
);

//---------------------------------------
// define task executed remotely
//---------------------------------------
$workflow->defineTask(
    'RKW\\Task\\Remote\\CopyDummyFiles',
    \TYPO3\Surf\Task\ShellTask::class,
    array('command' => 'cd {releasePath} && if [ -d "./dummy" ] && [ -d "./web/fileadmin/" ]; then if [ ! -d "./web/fileadmin/media" ]; then mkdir ./web/fileadmin/media; fi && cp ./dummy/* ./web/fileadmin/media/ && echo "Copied dummy files in {releasePath}."; fi')
);
$workflow->defineTask(
    'RKW\\Task\\Remote\\FixRights',
    \TYPO3\Surf\Task\ShellTask::class,
    array('command' => 'cd {releasePath} && find ./web -type f -exec chmod 640 {} \; && find ./web -type d -exec chmod 750 {} \; && echo "Fixed rights in {releasePath}"')
);
$workflow->defineTask(
    'RKW\\Task\\Remote\\Apc\\ClearCache',
    \TYPO3\Surf\Task\ShellTask::class,
    array('command' => 'cd {releasePath} && ' . $phpPath . ' -r \'apc_clear_cache("' . $user . '");\'')
);
$workflow->defineTask(
    'RKW\\Task\\Remote\\TYPO3\\FixFolderStructure',
    \TYPO3\Surf\Task\ShellTask::class,
    array('command' => 'cd {releasePath} && ./vendor/bin/typo3cms install:fixfolderstructure')
);
$workflow->defineTask(
    'RKW\\Task\\Remote\\TYPO3\\UpdateSchema',
    \TYPO3\Surf\Task\ShellTask::class,
    array('command' => 'cd {releasePath} && if [ -f "./web/typo3conf/LocalConfiguration.php" ]; then ./vendor/bin/typo3cms database:updateschema "*.add,*.change"; fi')
);


// Set options for varnish ban
if ($varnishAdmPath) {
    $workflow->setTaskOptions('TYPO3\\Surf\\Task\\VarnishBanTask',
        [
            'varnishadm' => $varnishAdmPath,
            'secretFile' => $varnishSecret,
            'banUrl' => $varnishBanUrl
        ]
    );
}



$deployment->setWorkflow($workflow);


// Add / remove tasks
$deployment->onInitialize(function () use ($workflow, $application, $gitBranch, $varnishAdmPath) {

    // remove tasks we don't need or we want to handle ourselves!
    $workflow->removeTask('TYPO3\\Surf\\Task\\TYPO3\\CMS\\CopyConfigurationTask'); // is deprecated
    $workflow->removeTask('TYPO3\\Surf\\Task\\TYPO3\\CMS\\SetUpExtensionsTask'); // not needed, throws exceptions
    $workflow->removeTask('TYPO3\\Surf\\DefinedTask\\Composer\\LocalInstallTask'); // we use an own task for that
    $workflow->removeTask('TYPO3\\Surf\\Task\\Package\\GitTask'); // we add this later on again

    // -----------------------------------------------
    // Step 1: initialize - This is normally used only for an initial deployment to an instance. At this stage you may prefill certain directories for example.

    // -----------------------------------------------
    // Step 2: package - This stage is where you normally package all files and assets, which will be transferred to the next stage.
    $workflow->addTask('RKW\\Task\\Local\\ComposerInstall', 'package');
    $workflow->beforeTask('RKW\\Task\\Local\\ComposerInstall', 'TYPO3\\Surf\\Task\\Package\\GitTask');

    $workflow->afterTask('TYPO3\\Surf\\Task\\Package\\GitTask', 'RKW\\Task\\Local\\CopyEnv');
    $workflow->afterTask('TYPO3\\Surf\\Task\\Package\\GitTask', 'RKW\\Task\\Local\\CopyHtaccess');
    $workflow->afterTask('TYPO3\\Surf\\Task\\Package\\GitTask', 'RKW\\Task\\Local\\CopyAdditionalConfiguration');
    $workflow->afterTask('TYPO3\\Surf\\Task\\Package\\GitTask', 'RKW\\Task\\Local\\FixRights');

    $workflow->afterTask('RKW\\Task\\Local\\FixRights', 'RKW\\Task\\Local\\SetGitFileModeIgnore');

    // -----------------------------------------------
    // Step 3: transfer - Here all tasks are located which serve to transfer the assets from your local computer to the node, where the application runs.

    // -----------------------------------------------
    // Step 4: update - If necessary, the transferred assets can be updated at this stage on the foreign instance.

    // -----------------------------------------------
    // Step 5: migration - Here you can define tasks to do some database updates / migrations. Be careful and do not delete old tables or columns, because the old code, relying on these, is still live.
    $workflow->addTask('RKW\\Task\\Remote\\TYPO3\\UpdateSchema', 'migrate');

    // -----------------------------------------------
    // Step 6: finalize - This stage is meant for tasks, that should be done short before going live, like cache warm ups and so on.
    $workflow->beforeStage('finalize', 'RKW\\Task\\Remote\\FixRights');
    $workflow->afterStage('finalize', 'RKW\\Task\\Remote\\TYPO3\\FixFolderStructure');
    if ($gitBranch != 'production') {
        $workflow->afterStage('finalize', 'RKW\\Task\\Remote\\CopyDummyFiles');
    }

    // -----------------------------------------------
    // Step 7: test - In the test stage you can make tests, to check if everything is fine before switching the releases.

    // -----------------------------------------------
    // Step 8: switch - This is the crucial stage. Here the old live instance is switched with the new prepared instance. Normally the new instance is symlinked.
    $workflow->beforeStage('switch', 'RKW\\Task\\Remote\\Apc\\ClearCache');
    $workflow->afterTask('RKW\\Task\\Remote\\Apc\\ClearCache', 'TYPO3\\Surf\\Task\\TYPO3\\CMS\\FlushCachesTask');

    // -----------------------------------------------
    // Step 9: cleanup - At this stage you would cleanup old releases or remove other unused stuff.
    $workflow->beforeStage('cleanup', 'RKW\\Task\\Remote\\Apc\\ClearCache');
    $workflow->afterTask(' TYPO3\\Surf\\Task\\TYPO3\\CMS\\FlushCachesTask', 'RKW\\Task\\Remote\\Apc\\ClearCache');
    // @toDo: Make it work :)
    /*if ($varnishAdmPath) {
        $workflow->addTask('TYPO3\\Surf\\Task\\VarnishBanTask', 'cleanup');
    }*/

});
