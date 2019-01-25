<?php
/**
 * Class SecurityQuestion
 *
 * @author Steffen Kroggel <developer@steffenkroggel.de>
 * @copyright Rkw Kompetenzzentrum
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 */

$question = new \Symfony\Component\Console\Question\ConfirmationQuestion('Continue with deployment of branch [' . $gitBranch . '] for domain ' . $domain . ' [' . $server . "]?\n(y|N) ", false, '/^(y|j)/i');
$helper   = new \Symfony\Component\Console\Helper\QuestionHelper;
$input    = new \Symfony\Component\Console\Input\ArgvInput;
$output   = new \Symfony\Component\Console\Output\StreamOutput(fopen('php://stdout', 'w'));

if (!$helper->ask($input, $output, $question)) {
    exit;
}