<?php

namespace RKW\RkwNewsletter\Controller;
/*
 * This file is part of the TYPO3 CMS project.
 *
 * It is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License, either version 2
 * of the License, or any later version.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 * The TYPO3 project - inspiring people to share!
 */

use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Utility\DebuggerUtility;

/**
 * ReleaseController
 *
 * @author Maximilian Fäßler <maximilian@faesslerweb.de>
 * @author Steffen Kroggel <developer@steffenkroggel.de>
 * @copyright Rkw Kompetenzzentrum
 * @package RKW_RkwNewsletter
 * @license http://www.gnu.org/licenses/gpl.html GNU General Public License, version 3 or later
 */
class ReleaseController extends \TYPO3\CMS\Extbase\Mvc\Controller\ActionController
{
    /**
     * Signal name for use in ext_localconf.php
     *
     * @const string
     */
    const SIGNAL_FOR_SENDING_MAIL_TEST = 'sendTestMail';


    /**
     * newsletterRepository
     *
     * @var \RKW\RkwNewsletter\Domain\Repository\NewsletterRepository
     * @inject
     */
    protected $newsletterRepository = null;

    /**
     * issueRepository
     *
     * @var \RKW\RkwNewsletter\Domain\Repository\IssueRepository
     * @inject
     */
    protected $issueRepository = null;

    /**
     * approvalRepository
     *
     * @var \RKW\RkwNewsletter\Domain\Repository\ApprovalRepository
     * @inject
     */
    protected $approvalRepository = null;

    /**
     * topicRepository
     *
     * @var \RKW\RkwNewsletter\Domain\Repository\TopicRepository
     * @inject
     */
    protected $topicRepository = null;

    /**
     * pagesRepository
     *
     * @var \RKW\RkwNewsletter\Domain\Repository\PagesRepository
     * @inject
     */
    protected $pagesRepository = null;


    /**
     * frontendUserRepository
     *
     * @var \RKW\RkwNewsletter\Domain\Repository\FrontendUserRepository
     * @inject
     */
    protected $frontendUserRepository = null;


    /**
     * backendUserRepository
     *
     * @var \RKW\RkwNewsletter\Domain\Repository\BackendUserRepository
     * @inject
     */
    protected $backendUserRepository = null;

    /**
     * Persistence Manager
     *
     * @var \TYPO3\CMS\Extbase\Persistence\Generic\PersistenceManager
     * @inject
     */
    protected $persistenceManager;

    /**
     * Mail Service
     *
     * @var \RKW\RkwMailer\Service\MailService
     * @inject
     */
    protected $mailService;

    /**
     * Validation Helper
     *
     * @var \RKW\RkwNewsletter\Helper\Validator
     * @inject
     */
    protected $validatorHelper;

    /**
     * Approval Helper
     *
     * @var \RKW\RkwNewsletter\Helper\Approval
     * @inject
     */
    protected $approvalHelper;



    /**
     * action list
     *
     * @return void
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\InvalidQueryException
     */
    public function listAction()
    {
        $issuesOpenApprovalStage1List = $this->issueRepository->findAllToApproveOnStage1ByBackendUser(intval($GLOBALS['BE_USER']->user['uid']));
        $issuesOpenApprovalStage2List = $this->issueRepository->findAllToApproveOnStage2ByBackendUser(intval($GLOBALS['BE_USER']->user['uid']));

        $this->view->assignMultiple(
            [
                'issuesOpenApprovalStage1List' => $issuesOpenApprovalStage1List,
                'issuesOpenApprovalStage2List' => $issuesOpenApprovalStage2List,
                'backendUserId'                => intval($GLOBALS['BE_USER']->user['uid']),
                'backendUserName'              => $GLOBALS['BE_USER']->user['realName'],
            ]
        );
    }


    /**
     * action approve
     *
     * @param \RKW\RkwNewsletter\Domain\Model\Approval $approval
     * @param int $stage
     * @return void
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\UnknownObjectException
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\IllegalObjectTypeException
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\StopActionException
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\UnsupportedRequestTypeException
     * @throws \TYPO3\CMS\Extbase\Configuration\Exception\InvalidConfigurationTypeException
     * @ignorevalidation $approval
     */
    public function approveAction(\RKW\RkwNewsletter\Domain\Model\Approval $approval, $stage = 1)
    {
        if (in_array($stage, array(1, 2))) {

            $setterTstamp = 'setAllowedTstampStage' . intval($stage);
            $setterBackendUser = 'setAllowedByUserStage' . intval($stage);

            /** @var \RKW\RkwNewsletter\Domain\Model\BackendUser $backendUser */
            $backendUser = $this->backendUserRepository->findByUid(intval($GLOBALS['BE_USER']->user['uid']));

            $approval->$setterTstamp(time());
            $approval->$setterBackendUser($backendUser);
            $this->approvalRepository->update($approval);

            $this->addFlashMessage(\TYPO3\CMS\Extbase\Utility\LocalizationUtility::translate(
                'releaseController.message.approvalSuccessful',
                'rkw_newsletter'
            ), '', \TYPO3\CMS\Core\Messaging\FlashMessage::OK);

        } else {
            $this->addFlashMessage(\TYPO3\CMS\Extbase\Utility\LocalizationUtility::translate(
                'releaseController.error.unexpected',
                'rkw_newsletter'
            ), '', \TYPO3\CMS\Core\Messaging\FlashMessage::ERROR);
        }

        $this->redirect('list');
        //===
    }




    /**
     * action defer
     *
     * @return void
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\UnknownObjectException
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\IllegalObjectTypeException
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\StopActionException
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\UnsupportedRequestTypeException
     */
    public function deferAction()
    {

        $request = GeneralUtility::_GP('tx_rkwnewsletter_tools_rkwnewslettermanagement');
        $issue = $this->issueRepository->findByIdentifier(intval($request['issue']));

        $issue->setStatus(98);
        $this->issueRepository->update($issue);

        $this->addFlashMessage(\TYPO3\CMS\Extbase\Utility\LocalizationUtility::translate(
            'releaseController.message.issueDeferredSuccessfully',
            'rkw_newsletter'
        ), '', \TYPO3\CMS\Core\Messaging\FlashMessage::OK);


        $this->redirect('list');
        //===
    }


    /**
     * action testList
     *
     * @return void
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\InvalidQueryException
     */
    public function testListAction()
    {
        /** @var \RKW\RkwNewsletter\Domain\Model\BackendUser $backendUser */
        $backendUser = $this->backendUserRepository->findByUid(intval($GLOBALS['BE_USER']->user['uid']));

        $issues = $this->issueRepository->findAllToApproveOrReleaseByBackendUser(intval($GLOBALS['BE_USER']->user['uid']));

        $this->view->assignMultiple(
           [
                'settings'    => $this->settings,
                'issues'      => $issues,
                'backendUser' => $backendUser,
           ]
        );
    }


    /**
     * action test
     *
     * @return void
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\StopActionException
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\UnsupportedRequestTypeException
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\InvalidQueryException
     * @throws \TYPO3\CMS\Extbase\SignalSlot\Exception\InvalidSlotException
     * @throws \TYPO3\CMS\Extbase\SignalSlot\Exception\InvalidSlotReturnException
     * @throws \TYPO3\CMS\Extbase\Configuration\Exception\InvalidConfigurationTypeException
     * @ignorevalidation $issue
     */
    public function testAction()
    {
        $request = GeneralUtility::_GP('tx_rkwnewsletter_tools_rkwnewslettermanagement');
        $issue = $this->issueRepository->findByIdentifier(intval($request['issue']['__identity']));
        $emails = strval($request['emails']);
        $topic = $this->topicRepository->findByIdentifier(intval($request['topic']));
        $title = strval($request['title']);

        $emailList = GeneralUtility::trimExplode(',', $emails);
        foreach ($emailList as $email) {
            $validateEmail = $this->validatorHelper->email($email);
            if ($validateEmail->hasErrors()) {
                $this->addFlashMessage(
                    \TYPO3\CMS\Extbase\Utility\LocalizationUtility::translate(
                        'releaseController.error.emailIncorrect',
                        'rkw_newsletter',
                        [$email]
                    ),
                    '',
                    \TYPO3\CMS\Core\Messaging\FlashMessage::ERROR
                );

                $this->forward("testList");
                //===
            }
        }

        /** @var \RKW\RkwNewsletter\Domain\Model\BackendUser $backendUser */
        $backendUser = $this->backendUserRepository->findByUid($GLOBALS['BE_USER']->user['uid']);

        /** @var \TYPO3\CMS\Extbase\Persistence\QueryResultInterface<\RKW\RkwNewsletter\Domain\Model\Pages> $pages */
        $pages = $this->pagesRepository->findAllByIssueAndSpecialTopic($issue);

        /** @var \TYPO3\CMS\Extbase\Persistence\QueryResultInterface<\RKW\RkwNewsletter\Domain\Model\Pages> $specialPages */
        $specialPages = $this->pagesRepository->findAllByIssueAndSpecialTopic($issue, true);

        // if user wants his topics only, we need only their pages!
        if ($topic) {
            $pages = $this->pagesRepository->findAllByIssueAndTopic($issue, $topic);
            // $specialPages = $this->pagesRepository->findAllByIssueAndBackendUserAndSpecialTopic($issue, $backendUser, true);
        }

        $this->getSignalSlotDispatcher()->dispatch(__CLASS__, self::SIGNAL_FOR_SENDING_MAIL_TEST, array($backendUser, $emailList, $issue, $pages, $specialPages, $title));

        $this->addFlashMessage(
            \TYPO3\CMS\Extbase\Utility\LocalizationUtility::translate(
                'releaseController.message.testMailSent',
                'rkw_newsletter'
            )
        );

        $this->redirect("testList");
        //===

    }


    /**
     * action sendList
     *
     * @param \RKW\RkwNewsletter\Domain\Model\Issue $confirmIssue
     * @return void
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\InvalidQueryException
     */
    public function sendListAction($confirmIssue = null)
    {

        $issues = $this->issueRepository->findAllToSendByBackendUser(intval($GLOBALS['BE_USER']->user['uid']));
        $this->view->assignMultiple(
            [
                'issues'          => $issues,
                'confirmIssue'    => $confirmIssue,
                'backendUserId'   => intval($GLOBALS['BE_USER']->user['uid']),
                'backendUserName' => $GLOBALS['BE_USER']->user['realName'],
            ]
        );
    }

    /**
     * action sendConfirm
     *
     * @return void
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\StopActionException
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\UnsupportedRequestTypeException
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\UnknownObjectException
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\IllegalObjectTypeException
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\InvalidQueryException
     * @ignorevalidation $issue
     * @throws \TYPO3\CMS\Extbase\Configuration\Exception\InvalidConfigurationTypeException
     */
    public function sendConfirmAction()
    {
        $request = GeneralUtility::_GP('tx_rkwnewsletter_tools_rkwnewslettermanagement');
        $issue = $this->issueRepository->findByIdentifier(intval($request['issue']['__identity']));
        $title = strval($request['title']);

        // check for issue
        if (! $issue) {

            $this->addFlashMessage(
                \TYPO3\CMS\Extbase\Utility\LocalizationUtility::translate(
                    'releaseController.error.selectIssue',
                    'rkw_newsletter'
                ),
                '',
                \TYPO3\CMS\Core\Messaging\FlashMessage::ERROR
            );

            $this->redirect('sendList');
            //===
        }

        /*
        // check title
        if (
            ($title == $issue->getTitle())
            || (
                (strlen($title ) < 40)
                || (strlen($title ) > 60)
            )
        ) {

            $this->addFlashMessage(
                \TYPO3\CMS\Extbase\Utility\LocalizationUtility::translate(
                    'releaseController.warning.checkTitle',
                    'rkw_newsletter'
                ),
                '',
                \TYPO3\CMS\Core\Messaging\FlashMessage::WARNING
            );
        }*/

        // set title
        $issue->setTitle($title);
        $this->issueRepository->update($issue);


        $this->view->assignMultiple(
            [
                'issue' => $issue,
            ]
        );

    }


    /**
     * action send
     *
     * @return void
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\StopActionException
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\UnsupportedRequestTypeException
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\UnknownObjectException
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\IllegalObjectTypeException
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\InvalidQueryException
     * @ignorevalidation $issue
     * @throws \TYPO3\CMS\Extbase\Configuration\Exception\InvalidConfigurationTypeException
     * @throws \Exception
     */
    public function sendAction()
    {
        $request = GeneralUtility::_GP('tx_rkwnewsletter_tools_rkwnewslettermanagement');
        $issue = $this->issueRepository->findByIdentifier(intval($request['issue']['__identity']));
        $title = strval($request['title']);

        // set final title and mark as sending
        $issue->setTitle($title);
        $issue->setStatus(3);
        $issue->setReleaseTstamp(time());
        $this->issueRepository->update($issue);

        // Issue is sent: Update page permissions to "sent"
        /** @var \RKW\RkwNewsletter\Domain\Model\Approval $approval */
        foreach ($issue->getApprovals() as $approval) {
            $this->approvalHelper->updatePagePermissions($approval);
        }

        $this->addFlashMessage(
            \TYPO3\CMS\Extbase\Utility\LocalizationUtility::translate(
                'releaseController.message.sendingStarted',
                'rkw_newsletter'
            )
        );

        $this->redirect('sendList');
        //===

    }


    /**
     * Returns SignalSlotDispatcher
     *
     * @return \TYPO3\CMS\Extbase\SignalSlot\Dispatcher
     */
    protected function getSignalSlotDispatcher()
    {
        if (!$this->signalSlotDispatcher) {
            $objectManager = GeneralUtility::makeInstance('TYPO3\\CMS\\Extbase\\Object\\ObjectManager');
            $this->signalSlotDispatcher = $objectManager->get('TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher');
        }

        return $this->signalSlotDispatcher;
        //===
    }
}