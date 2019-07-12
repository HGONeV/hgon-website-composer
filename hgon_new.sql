-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: hgon
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci,
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci,
  `tables_modify` text COLLATE utf8_unicode_ci,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `subgroup` text COLLATE utf8_unicode_ci,
  `hide_in_lists` smallint(6) NOT NULL DEFAULT '0',
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
INSERT INTO `be_groups` VALUES (1,0,1560759110,'HGON Redakteur','','','',NULL,'1,38','1,4,3,254','pages,sys_category,sys_collection,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,sys_file_storage,backend_layout,fe_groups,fe_users,pages_language_overlay,sys_domain,tt_content,sys_note,tx_rkwbasics_domain_model_department,tx_rkwbasics_domain_model_documenttype,tx_rkwbasics_domain_model_enterprisesize,tx_rkwbasics_domain_model_mediasources,tx_rkwbasics_domain_model_sector,tx_rkwbasics_domain_model_series,tx_rkwevents_domain_model_event,tx_rkwevents_domain_model_eventcontact,tx_rkwevents_domain_model_eventorganizer,tx_rkwevents_domain_model_eventplace,tx_rkwevents_domain_model_eventreservation,tx_rkwevents_domain_model_eventseries,tx_rkwevents_domain_model_eventsheet,tx_rkwevents_domain_model_eventworkshop,tx_hgonbasic_domain_model_associationoperator,tx_hgondonation_domain_model_donationplace,tx_hgondonation_domain_model_donationtype,tx_hgondonation_domain_model_donationtypemoney,tx_hgondonation_domain_model_donationtypetime,tx_rkwauthors_domain_model_authors,tx_hgontemplate_domain_model_didyouknow,tx_rkwprojects_domain_model_projects,tx_gridelements_backend_layout,tx_hgonworkgroup_domain_model_workgroup','pages,sys_collection,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,pages_language_overlay,tt_content,tx_rkwevents_domain_model_event,tx_rkwevents_domain_model_eventcontact,tx_rkwevents_domain_model_eventplace,tx_rkwevents_domain_model_eventreservation,tx_rkwevents_domain_model_eventseries,tx_rkwevents_domain_model_eventsheet,tx_rkwauthors_domain_model_authors,tx_rkwprojects_domain_model_projects',1560757784,3,'web_layout,web_ViewpageView,web_list,file_FilelistList,help_CshmanualCshmanual,help_AboutAboutmodules','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile',0,'','',0,'<INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:rkw_template/Configuration/TsConfigBeGroups/_Core/Editors.ts\">','',0,0,''),(2,0,1560760521,'HGON Admin','','','',NULL,'1,38','1,4,3,254','pages,sys_category,sys_collection,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,sys_file_storage,backend_layout,fe_groups,fe_users,pages_language_overlay,sys_domain,tt_content,sys_note,tx_rkwbasics_domain_model_department,tx_rkwbasics_domain_model_documenttype,tx_rkwbasics_domain_model_enterprisesize,tx_rkwbasics_domain_model_mediasources,tx_rkwbasics_domain_model_sector,tx_rkwbasics_domain_model_series,tx_rkwevents_domain_model_event,tx_rkwevents_domain_model_eventcontact,tx_rkwevents_domain_model_eventorganizer,tx_rkwevents_domain_model_eventplace,tx_rkwevents_domain_model_eventreservation,tx_rkwevents_domain_model_eventseries,tx_rkwevents_domain_model_eventsheet,tx_rkwevents_domain_model_eventworkshop,tx_hgonbasic_domain_model_associationoperator,tx_hgondonation_domain_model_donationplace,tx_hgondonation_domain_model_donationtype,tx_hgondonation_domain_model_donationtypemoney,tx_hgondonation_domain_model_donationtypetime,tx_rkwauthors_domain_model_authors,tx_hgontemplate_domain_model_didyouknow,tx_rkwprojects_domain_model_projects,tx_rkwregistration_domain_model_privacy,tx_rkwregistration_domain_model_registration,tx_rkwregistration_domain_model_service,tx_rkwregistration_domain_model_title,tx_gridelements_backend_layout,tx_hgonworkgroup_domain_model_workgroup','pages,sys_category,sys_collection,sys_file_collection,sys_file_metadata,sys_file_reference,fe_groups,fe_users,tt_content,tx_rkwbasics_domain_model_department,tx_rkwbasics_domain_model_documenttype,tx_rkwbasics_domain_model_enterprisesize,tx_rkwbasics_domain_model_mediasources,tx_rkwbasics_domain_model_sector,tx_rkwbasics_domain_model_series,tx_rkwevents_domain_model_event,tx_rkwevents_domain_model_eventcontact,tx_rkwevents_domain_model_eventorganizer,tx_rkwevents_domain_model_eventplace,tx_rkwevents_domain_model_eventreservation,tx_rkwevents_domain_model_eventseries,tx_rkwevents_domain_model_eventsheet,tx_rkwevents_domain_model_eventworkshop,tx_rkwprojects_domain_model_projects',1560760509,3,'web_layout,web_ViewpageView,web_list,web_info,file_FilelistList,tools_RkwMailerMailadministration,tools_BmPdf2contentMod1,help_CshmanualCshmanual,help_AboutAboutmodules','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile',0,'','',0,'<INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:rkw_template/Configuration/TsConfigBeGroups/_Core/Admins.ts\">','',0,1,'');
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longblob,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  `ses_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('bfe9787eb3795054268c581f5f5e43eb','127.0.0.1',3,1562682245,_binary 'a:5:{s:26:\"formProtectionSessionToken\";s:64:\"6e072b3f585a5d58ca9e6732d58066777b1648422b45f6202a68fcb14a87c60c\";s:31:\"TYPO3\\CMS\\Recordlist\\RecordList\";a:1:{s:12:\"search_field\";N;}s:27:\"core.template.flashMessages\";N;s:54:\"extbase.flashmessages.tx_recycler_web_recyclerrecycler\";N;s:49:\"extbase.flashmessages.tx_form_web_formformbuilder\";N;}',0,'',0);
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `options` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  `tx_news_categorymounts` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (2,0,0,'_cli_lowlevel','',0,'7b21fff86ccd74976ce2af0f80b5ebbd344f4f8dda8c268d',0,'',0,0,0,'','',NULL,0,0,0,'',NULL,'',_binary 'a:15:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:0:{}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:29:\"help_AboutmodulesAboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1550158511;}',NULL,NULL,1,'',0,0,NULL,0,0,NULL,0,1,'',''),(3,0,1554390960,'admin','',0,'$P$Co8tvc7cjhSpWkBtNFvnsGQm4I8QZd/',1,'',0,0,0,'de','',NULL,0,1550158817,0,'',NULL,'',_binary 'a:35:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:18:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:8:\"web_list\";a:0:{}s:6:\"web_ts\";a:11:{s:8:\"function\";s:87:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateObjectBrowserModuleFunctionController\";s:19:\"constant_editor_cat\";s:19:\"plugin.tx_rkwbasics\";s:15:\"ts_browser_type\";s:5:\"setup\";s:16:\"ts_browser_const\";s:1:\"0\";s:19:\"ts_browser_fixedLgd\";s:1:\"1\";s:23:\"ts_browser_showComments\";s:1:\"1\";s:25:\"tsbrowser_depthKeys_const\";a:9:{s:19:\"globalWebsiteConfig\";i:1;s:33:\"globalWebsiteConfig.templatePaths\";i:1;s:41:\"globalWebsiteConfig.templatePaths.default\";i:1;s:6:\"plugin\";i:1;s:19:\"plugin.tx_rkwevents\";i:1;s:31:\"plugin.tx_rkwevents.persistence\";i:1;s:24:\"plugin.tx_rkwevents.view\";i:1;s:20:\"plugin.tx_rkwauthors\";i:1;s:32:\"plugin.tx_rkwauthors.persistence\";i:1;}s:25:\"tsbrowser_depthKeys_setup\";a:55:{s:28:\"plugin.tx_rkwtemplate_config\";i:1;s:7:\"page.10\";i:1;s:22:\"page.10.dataProcessing\";i:1;s:23:\"config.tx_rkwbasics_cdn\";i:1;s:18:\"lib.content.render\";i:1;s:25:\"lib.content.render.select\";i:1;s:31:\"lib.content.render.select.where\";i:1;s:39:\"lib.content.render.select.where.cObject\";i:1;s:13:\"config.config\";i:1;s:18:\"lib.contentElement\";i:1;s:35:\"lib.contentElement.partialRootPaths\";i:1;s:36:\"lib.contentElement.templateRootPaths\";i:1;s:34:\"lib.fluidContent.templateRootPaths\";i:1;s:23:\"page.10.layoutRootPaths\";i:1;s:24:\"page.includeJSFooterlibs\";i:1;s:34:\"lib.contentElement.layoutRootPaths\";i:1;s:24:\"page.10.partialRootPaths\";i:1;s:16:\"lib.gridelements\";i:1;s:33:\"lib.gridelements.defaultGridSetup\";i:1;s:31:\"page.10.variables.siteLogo.file\";i:1;s:38:\"page.10.variables.siteLogo.file.import\";i:1;s:20:\"page.includeJSFooter\";i:1;s:31:\"plugin.tx_rkwevents.persistence\";i:1;s:28:\"plugin.tx_rkwevents.settings\";i:1;s:24:\"plugin.tx_rkwbasics.view\";i:1;s:31:\"plugin.tx_rkwbasics.persistence\";i:1;s:28:\"plugin.tx_rkwbasics.features\";i:1;s:18:\"txRkweventsAjax.10\";i:1;s:22:\"txRkweventsAjax.config\";i:1;s:27:\"plugin.tx_hgontemplate.view\";i:1;s:45:\"plugin.tx_hgontemplate.view.templateRootPaths\";i:1;s:32:\"plugin.tx_rkwauthors.persistence\";i:1;s:32:\"plugin.tx_hgonworkgroup.settings\";i:1;s:26:\"plugin.tx_rkwprojects.view\";i:1;s:33:\"plugin.tx_rkwprojects.persistence\";i:1;s:33:\"tt_content.custom_content_element\";i:1;s:36:\"tt_content.custom_content_element.20\";i:1;s:45:\"tt_content.custom_content_element.20.settings\";i:1;s:44:\"tt_content.custom_content_element.20.extbase\";i:1;s:21:\"txHgondonationAjax.10\";i:1;s:28:\"txHgontemplateJournalAjax.10\";i:1;s:49:\"txHgondonationAjax.10.switchableControllerActions\";i:1;s:56:\"txHgontemplateJournalAjax.10.switchableControllerActions\";i:1;s:65:\"txHgontemplateJournalAjax.10.switchableControllerActions.Standard\";i:1;s:58:\"txHgondonationAjax.10.switchableControllerActions.Donation\";i:1;s:30:\"txHgondonationAjax.10.settings\";i:1;s:37:\"txHgontemplateJournalAjax.10.settings\";i:1;s:14:\"plugin.tt_news\";i:1;s:19:\"plugin.tx_news.view\";i:1;s:36:\"plugin.tx_news.view.partialRootPaths\";i:1;s:35:\"plugin.tx_news.view.layoutRootPaths\";i:1;s:6:\"config\";i:1;s:6:\"plugin\";i:1;s:23:\"plugin.tx_hgonworkgroup\";i:1;s:35:\"plugin.tx_hgonworkgroup.persistence\";i:1;}s:24:\"ts_analyzer_checkLinenum\";s:1:\"1\";s:23:\"ts_analyzer_checkSyntax\";s:1:\"1\";s:22:\"ts_browser_regexsearch\";s:1:\"0\";}s:10:\"FormEngine\";a:2:{i:0;a:5:{s:32:\"d6f2e53b007c6103bde3bb00fa6088d4\";a:4:{i:0;s:21:\"<em>[Kein Titel]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:145;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:3:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:4:\"list\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:175:\"&edit[tt_content][145]=edit&defVals[tt_content][colPos]=0&defVals[tt_content][sys_language_uid]=0&defVals[tt_content][CType]=list&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:145;s:3:\"pid\";i:64;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"0088a4670331e3b2f8635389d20df21b\";a:4:{i:0;s:21:\"<em>[Kein Titel]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:145;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:82:\"&edit[tt_content][145]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:145;s:3:\"pid\";i:64;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"ae396d31387e761d98d4cac4e2d8b27e\";a:4:{i:0;s:21:\"<em>[Kein Titel]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:103;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:82:\"&edit[tt_content][103]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:103;s:3:\"pid\";i:8;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"b9fc33495cc130680ba830c684a46801\";a:4:{i:0;s:12:\"Reservierung\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:64;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:76:\"&edit[pages][64]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:64;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"d0a0fa5a99ecd21a92444a2a4ba728e0\";a:4:{i:0;s:22:\"Geschichte und Auftrag\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:7;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:75:\"&edit[pages][7]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:7;s:3:\"pid\";i:6;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"d0a0fa5a99ecd21a92444a2a4ba728e0\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:8:\"web_func\";a:1:{s:8:\"function\";s:76:\"TYPO3\\CMS\\WizardCrpages\\Controller\\CreatePagesWizardModuleFunctionController\";}s:16:\"opendocs::recent\";a:8:{s:32:\"b9fc33495cc130680ba830c684a46801\";a:4:{i:0;s:12:\"Reservierung\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:64;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:76:\"&edit[pages][64]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:64;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"c653235843a901f9cf4a90f4ca33a07e\";a:4:{i:0;s:11:\"Fortbildung\";i:1;a:6:{s:4:\"edit\";a:1:{s:38:\"tx_rkwbasics_domain_model_documenttype\";a:1:{i:4;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tx_rkwbasics_domain_model_documenttype][4]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:38:\"tx_rkwbasics_domain_model_documenttype\";s:3:\"uid\";i:4;s:3:\"pid\";i:37;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"81f9a55b397b2792d9e53192d5b0fc2c\";a:4:{i:0;s:11:\"HGON Reisen\";i:1;a:6:{s:4:\"edit\";a:1:{s:38:\"tx_rkwbasics_domain_model_documenttype\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tx_rkwbasics_domain_model_documenttype][5]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:38:\"tx_rkwbasics_domain_model_documenttype\";s:3:\"uid\";i:5;s:3:\"pid\";i:37;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"913162656adae20aa4f354e6deff8572\";a:4:{i:0;s:7:\"Vortrag\";i:1;a:6:{s:4:\"edit\";a:1:{s:38:\"tx_rkwbasics_domain_model_documenttype\";a:1:{i:7;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tx_rkwbasics_domain_model_documenttype][7]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:38:\"tx_rkwbasics_domain_model_documenttype\";s:3:\"uid\";i:7;s:3:\"pid\";i:37;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"b28b045daeaa901455c571851e0e45b7\";a:4:{i:0;s:6:\"Kinder\";i:1;a:6:{s:4:\"edit\";a:1:{s:38:\"tx_rkwbasics_domain_model_documenttype\";a:1:{i:6;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tx_rkwbasics_domain_model_documenttype][6]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:38:\"tx_rkwbasics_domain_model_documenttype\";s:3:\"uid\";i:6;s:3:\"pid\";i:37;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"6f8a8b7151932690a197b913eae1d55e\";a:4:{i:0;s:9:\"Exkursion\";i:1;a:6:{s:4:\"edit\";a:1:{s:38:\"tx_rkwbasics_domain_model_documenttype\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tx_rkwbasics_domain_model_documenttype][3]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:38:\"tx_rkwbasics_domain_model_documenttype\";s:3:\"uid\";i:3;s:3:\"pid\";i:37;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"4217cd2e37ca9d85782dfd053c837bfd\";a:4:{i:0;s:19:\"Arbeitskreistreffen\";i:1;a:6:{s:4:\"edit\";a:1:{s:38:\"tx_rkwbasics_domain_model_documenttype\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[tx_rkwbasics_domain_model_documenttype][2]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:38:\"tx_rkwbasics_domain_model_documenttype\";s:3:\"uid\";i:2;s:3:\"pid\";i:37;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"9fd70d2e4633450fd3f0168933a68eea\";a:4:{i:0;s:14:\"HGON Redakteur\";i:1;a:6:{s:4:\"edit\";a:1:{s:9:\"be_groups\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:79:\"&edit[be_groups][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:9:\"be_groups\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:16:\"browse_links.php\";a:1:{s:10:\"expandPage\";s:2:\"60\";}s:9:\"file_list\";a:0:{}s:9:\"clipboard\";a:5:{s:5:\"tab_1\";a:0:{}s:5:\"tab_2\";a:0:{}s:5:\"tab_3\";a:0:{}s:7:\"current\";s:6:\"normal\";s:6:\"normal\";a:2:{s:2:\"el\";a:1:{s:8:\"pages|32\";s:1:\"1\";}s:4:\"mode\";s:4:\"copy\";}}s:4:\"page\";a:1:{s:28:\"gridelementsCollapsedColumns\";a:0:{}}s:9:\"tx_beuser\";s:530:\"O:40:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\ModuleData\":2:{s:9:\"\0*\0demand\";O:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\":12:{s:11:\"\0*\0userName\";s:0:\"\";s:11:\"\0*\0userType\";i:0;s:9:\"\0*\0status\";i:0;s:9:\"\0*\0logins\";i:0;s:19:\"\0*\0backendUserGroup\";N;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}s:18:\"\0*\0compareUserList\";a:0:{}}\";s:9:\"user_task\";a:1:{s:4:\"mode\";s:11:\"information\";}s:16:\"extensionbuilder\";a:1:{s:9:\"firstTime\";i:0;}s:13:\"system_config\";a:3:{s:8:\"function\";s:1:\"1\";s:6:\"node_0\";a:1:{s:11:\"EXT.extConf\";i:1;}s:6:\"node_1\";a:8:{s:5:\"pages\";i:1;s:38:\"tx_rkwbasics_domain_model_documenttype\";i:1;s:46:\"tx_rkwbasics_domain_model_documenttype.columns\";i:1;s:63:\"tx_rkwbasics_domain_model_documenttype.columns.sys_language_uid\";i:1;s:70:\"tx_rkwbasics_domain_model_documenttype.columns.sys_language_uid.config\";i:1;s:76:\"tx_rkwbasics_domain_model_documenttype.columns.sys_language_uid.config.items\";i:1;s:78:\"tx_rkwbasics_domain_model_documenttype.columns.sys_language_uid.config.items.1\";i:1;s:78:\"tx_rkwbasics_domain_model_documenttype.columns.sys_language_uid.config.items.0\";i:1;}}s:12:\"system_dbint\";a:3:{s:8:\"function\";s:8:\"refindex\";s:6:\"search\";s:3:\"raw\";s:22:\"search_query_makeQuery\";s:3:\"all\";}s:20:\"system_txschedulerM1\";a:1:{s:8:\"function\";s:9:\"scheduler\";}s:8:\"web_info\";a:4:{s:8:\"function\";s:72:\"TYPO3\\CMS\\InfoPagetsconfig\\Controller\\InfoPageTyposcriptConfigController\";s:5:\"pages\";s:1:\"0\";s:5:\"depth\";s:1:\"0\";s:12:\"tsconf_parts\";s:1:\"0\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:0:\"\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";s:2:\"50\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:2:\"de\";s:19:\"firstLoginTimeStamp\";i:1550158827;s:15:\"moduleSessionID\";a:17:{s:10:\"web_layout\";s:32:\"97909649e599d95bc900958d4cbfcd36\";s:8:\"web_list\";s:32:\"97909649e599d95bc900958d4cbfcd36\";s:6:\"web_ts\";s:32:\"138e2435ca8db4cbe6506dbf276c1a9e\";s:10:\"FormEngine\";s:32:\"bfe9787eb3795054268c581f5f5e43eb\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"bfe9787eb3795054268c581f5f5e43eb\";s:8:\"web_func\";s:32:\"1f18dc55ef0d4ad33c854655af179261\";s:16:\"opendocs::recent\";s:32:\"bfe9787eb3795054268c581f5f5e43eb\";s:16:\"browse_links.php\";s:32:\"a051a387e7368e2189ca11d8b7e06164\";s:9:\"file_list\";s:32:\"4fcfe10246436d43e32fd3735243f1e2\";s:9:\"clipboard\";s:32:\"7a80be7fc84cea508f71bcbbc8c782ff\";s:9:\"tx_beuser\";s:32:\"ac944496f0bc4c306b073e5ea8cdbcc8\";s:9:\"user_task\";s:32:\"f9d22e2b75cc9a7392902ac2f9c5e228\";s:16:\"extensionbuilder\";s:32:\"dd8cbea2c4c44e5322bf903187bc3703\";s:13:\"system_config\";s:32:\"76aea386a59affffe66680901736b92b\";s:12:\"system_dbint\";s:32:\"bfe9787eb3795054268c581f5f5e43eb\";s:20:\"system_txschedulerM1\";s:32:\"7a80be7fc84cea508f71bcbbc8c782ff\";s:8:\"web_info\";s:32:\"76aea386a59affffe66680901736b92b\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:50:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"1\";i:15;s:1:\"1\";i:16;s:1:\"1\";i:17;s:1:\"1\";i:18;s:1:\"1\";i:19;s:1:\"1\";i:20;s:1:\"1\";i:21;s:1:\"1\";i:22;s:1:\"1\";i:23;s:1:\"1\";i:25;s:1:\"1\";i:26;s:1:\"1\";i:29;s:1:\"1\";i:30;s:1:\"1\";i:31;s:1:\"1\";i:32;s:1:\"1\";i:33;s:1:\"1\";i:34;s:1:\"1\";i:35;s:1:\"1\";i:36;s:1:\"1\";i:37;s:1:\"1\";i:38;s:1:\"1\";i:39;s:1:\"1\";s:4:\"root\";s:1:\"1\";s:16:\"lastSelectedNode\";s:2:\"p7\";s:2:\"1c\";s:1:\"1\";s:2:\"1d\";s:1:\"1\";s:2:\"1e\";s:1:\"1\";s:2:\"1f\";s:1:\"1\";s:1:\"a\";s:1:\"1\";s:2:\"1b\";s:1:\"1\";s:2:\"2a\";s:1:\"1\";s:2:\"1a\";s:1:\"1\";s:2:\"2e\";s:1:\"1\";s:2:\"2f\";s:1:\"1\";s:1:\"b\";s:1:\"1\";s:2:\"3c\";s:1:\"1\";s:2:\"2d\";s:1:\"1\";s:2:\"3b\";s:1:\"1\";s:2:\"3d\";s:1:\"1\";}}}}s:10:\"inlineView\";s:4160:\"a:7:{i:0;b:0;s:10:\"tt_content\";a:39:{s:25:\"NEW5c794f3f238ef112488674\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:2;}}i:9;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:1:\"2\";}}i:13;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:3;}}i:14;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:4;}}i:15;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:5;}}s:25:\"NEW5c80df8600046700568531\";a:1:{s:18:\"sys_file_reference\";a:4:{i:0;i:6;i:1;i:7;i:2;i:8;i:3;i:9;}}i:16;a:1:{s:18:\"sys_file_reference\";a:4:{i:0;s:1:\"6\";i:1;s:0:\"\";i:2;i:105;i:3;i:106;}}s:25:\"NEW5c80e517b8c85888499323\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:10;}}s:25:\"NEW5c80e54a995f6649378342\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:11;}}s:25:\"NEW5c80e6988796a869905180\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:12;}}i:20;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:13;}}s:25:\"NEW5c824747d61fc406900309\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:14;}}i:22;a:1:{s:18:\"sys_file_reference\";a:1:{i:4;s:2:\"15\";}}i:29;a:2:{s:10:\"tt_content\";a:1:{i:7;s:2:\"22\";}s:18:\"sys_file_reference\";a:1:{i:0;s:2:\"15\";}}i:32;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:16;}}s:25:\"NEW5c86969f94e41393940802\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:17;}}i:39;a:2:{s:10:\"tt_content\";a:1:{i:0;s:2:\"40\";}s:18:\"sys_file_reference\";a:1:{i:0;i:21;}}s:25:\"NEW5c87de66cd026838042428\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:24;}}i:59;a:1:{s:18:\"sys_file_reference\";a:2:{i:0;i:25;i:3;s:2:\"26\";}}s:25:\"NEW5c891a4c48e7b772162459\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:27;}}s:25:\"NEW5c92065c252d7315945152\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:28;}}i:66;a:1:{s:18:\"sys_file_reference\";a:1:{i:2;s:2:\"28\";}}i:65;a:1:{s:18:\"sys_file_reference\";a:3:{i:0;s:0:\"\";i:1;i:103;i:2;i:104;}}s:25:\"NEW5c936567c28fa657731059\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:30;}}s:25:\"NEW5c938bdc867c5909214814\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:31;}}s:25:\"NEW5c939d11732e9904939285\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:35;}}s:25:\"NEW5c9a2d8fa60aa225707659\";a:1:{s:18:\"sys_file_reference\";a:3:{i:0;i:39;i:1;i:40;i:2;i:41;}}s:25:\"NEW5ca72b63a4e8d110909054\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:42;}}s:25:\"NEW5cac62422b35b946573216\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:43;}}s:25:\"NEW5cbdca8325ffe989188224\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:44;}}i:95;a:1:{s:18:\"sys_file_reference\";a:2:{i:0;s:2:\"44\";i:3;s:2:\"45\";}}i:63;a:1:{s:18:\"sys_file_reference\";a:1:{i:2;s:2:\"27\";}}i:82;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:2:\"39\";}}i:28;a:1:{s:10:\"tt_content\";a:1:{i:1;s:0:\"\";}}s:25:\"NEW5cdbda39cceb2639362367\";a:1:{s:18:\"sys_file_reference\";a:3:{i:0;i:63;i:1;i:64;i:2;i:65;}}i:56;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:2:\"24\";}}i:139;a:1:{s:18:\"sys_file_reference\";a:3:{i:0;i:95;i:1;i:96;i:2;s:0:\"\";}}i:140;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:0:\"\";}}i:125;a:1:{s:18:\"sys_file_reference\";a:2:{i:2;i:109;i:3;s:0:\"\";}}}s:5:\"pages\";a:10:{i:6;a:1:{s:18:\"sys_file_reference\";a:1:{i:6;s:2:\"46\";}}i:2;a:1:{s:18:\"sys_file_reference\";a:2:{i:0;s:0:\"\";i:1;i:66;}}i:25;a:1:{s:18:\"sys_file_reference\";a:2:{i:0;i:58;i:2;s:0:\"\";}}i:1;a:1:{s:18:\"sys_file_reference\";a:0:{}}i:26;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:69;}}i:27;a:1:{s:18:\"sys_file_reference\";a:1:{i:1;s:0:\"\";}}i:46;a:1:{s:18:\"sys_file_reference\";a:1:{i:1;s:0:\"\";}}s:25:\"NEW5ce663de632fa722312187\";a:1:{s:18:\"sys_file_reference\";a:2:{i:0;i:72;i:1;i:73;}}i:32;a:1:{s:18:\"sys_file_reference\";a:2:{i:1;i:81;i:2;s:0:\"\";}}i:3;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:94;}}}s:34:\"tx_rkwauthors_domain_model_authors\";a:2:{s:25:\"NEW5cd1884d488d2540069001\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:48;}}i:1;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:2:\"48\";}}}s:36:\"tx_rkwprojects_domain_model_projects\";a:4:{i:4;a:1:{s:18:\"sys_file_reference\";a:1:{i:2;s:2:\"51\";}}i:1;a:1:{s:18:\"sys_file_reference\";a:1:{i:3;s:0:\"\";}}i:2;a:1:{s:18:\"sys_file_reference\";a:1:{i:1;s:0:\"\";}}i:3;a:1:{s:18:\"sys_file_reference\";a:1:{i:1;s:0:\"\";}}}s:39:\"tx_hgonworkgroup_domain_model_workgroup\";a:1:{i:1;a:1:{s:31:\"tx_rkwevents_domain_model_event\";a:2:{i:0;s:0:\"\";i:1;i:5;}}}s:25:\"tx_news_domain_model_news\";a:1:{i:1;a:2:{s:18:\"sys_file_reference\";a:1:{i:0;s:0:\"\";}s:25:\"tx_news_domain_model_link\";a:1:{i:0;i:1;}}}}\";s:11:\"browseTrees\";a:1:{s:11:\"browsePages\";s:66:\"a:1:{i:0;a:6:{i:0;i:1;i:1;i:1;i:2;i:1;i:6;i:1;i:25;i:1;i:38;i:1;}}\";}s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:0;s:10:\"copyLevels\";s:0:\"\";s:15:\"recursiveDelete\";i:0;s:18:\"resetConfiguration\";s:0:\"\";s:42:\"dragAndDropHideNewElementWizardInfoOverlay\";i:0;s:17:\"hideColumnHeaders\";i:0;s:18:\"hideContentPreview\";i:0;s:19:\"showGridInformation\";i:0;s:11:\"tx_recycler\";a:3:{s:14:\"depthSelection\";i:0;s:14:\"tableSelection\";s:0:\"\";s:11:\"resultLimit\";i:25;}s:7:\"reports\";a:1:{s:9:\"selection\";a:2:{s:9:\"extension\";s:0:\"\";s:6:\"report\";s:0:\"\";}}s:10:\"modulemenu\";s:2:\"{}\";}',NULL,NULL,1,'',0,0,NULL,1562657354,0,NULL,0,1,'',''),(4,0,1550159867,'_cli_','',0,'$P$CxZLbp/K2i2wdKujLwwuBhXhbWfzJJ/',1,'',0,0,0,'','',NULL,0,1550159867,0,'',NULL,'',_binary 'a:13:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:0:{}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:22:\"help_AboutAboutmodules\";s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1550159867;}',NULL,NULL,1,'',0,0,NULL,0,0,NULL,0,1,'',''),(5,0,1554391040,'maximilian@faesslerweb.de','',0,'$P$CDJdlvlCsbMwnMfhju5aSwudBcI4Ym0',0,'',0,0,0,'','maximilian@faesslerweb.de','',3,1554390910,3,'','','',_binary 'a:13:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:0:{}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:22:\"help_AboutAboutmodules\";s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1555664901;}','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile',1,'',0,0,'',0,0,NULL,0,1,'',''),(6,0,1560757990,'helllicht','',0,'$P$C5lSt2yrGPtlgj61HSrryFrk/oMbcM/',0,'1',0,0,0,'de','','',3,1560757983,3,'','','',_binary 'a:15:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:5:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:8:\"web_list\";a:0:{}s:9:\"file_list\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:1:{s:32:\"41d021b89dca113c37d94f600f353c2b\";a:4:{i:0;s:211:\"<span title=\"Besonders stolz sind wir auf unsere 24 HGON-Arbeitskreise, die sich mit Herz und Seele um den Natur- und Artenschutz in Hessen kümmern.\">Besonders stolz sind wir auf unsere 24 HGON-Arbeit...</span>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:9;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:80:\"&edit[tt_content][9]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:9;s:3:\"pid\";i:6;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"41d021b89dca113c37d94f600f353c2b\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:22:\"help_AboutAboutmodules\";s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:2:\"de\";s:19:\"firstLoginTimeStamp\";i:1560757992;s:15:\"moduleSessionID\";a:5:{s:10:\"web_layout\";s:32:\"ac944496f0bc4c306b073e5ea8cdbcc8\";s:8:\"web_list\";s:32:\"ac944496f0bc4c306b073e5ea8cdbcc8\";s:9:\"file_list\";s:32:\"ac944496f0bc4c306b073e5ea8cdbcc8\";s:10:\"FormEngine\";s:32:\"ac944496f0bc4c306b073e5ea8cdbcc8\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"ac944496f0bc4c306b073e5ea8cdbcc8\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:21:{i:0;s:1:\"1\";s:4:\"root\";s:1:\"1\";s:16:\"lastSelectedNode\";s:4:\"p6-1\";s:4:\"22-1\";s:1:\"1\";s:4:\"23-1\";s:1:\"1\";s:4:\"24-1\";s:1:\"1\";s:4:\"21-1\";s:1:\"1\";s:3:\"1-1\";s:1:\"1\";s:3:\"7-1\";s:1:\"1\";s:4:\"10-1\";s:1:\"1\";s:4:\"15-1\";s:1:\"1\";s:4:\"16-1\";s:1:\"1\";s:4:\"17-1\";s:1:\"1\";s:4:\"28-1\";s:1:\"1\";s:5:\"26-26\";s:1:\"1\";s:5:\"2a-26\";s:1:\"1\";s:5:\"29-26\";s:1:\"1\";s:5:\"2d-26\";s:1:\"1\";s:5:\"25-26\";s:1:\"1\";s:5:\"39-26\";s:1:\"1\";s:3:\"6-1\";s:1:\"1\";}}}}}','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile',1,'',0,0,'',0,0,'1',0,1,'','');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext COLLATE utf8_unicode_ci,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_news_category`
--

DROP TABLE IF EXISTS `cf_cache_news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_news_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_news_category`
--

LOCK TABLES `cf_cache_news_category` WRITE;
/*!40000 ALTER TABLE `cf_cache_news_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_news_category_tags`
--

DROP TABLE IF EXISTS `cf_cache_news_category_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_news_category_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_news_category_tags`
--

LOCK TABLES `cf_cache_news_category_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_news_category_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_news_category_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_pb_social_cache`
--

DROP TABLE IF EXISTS `cf_pb_social_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_pb_social_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_pb_social_cache`
--

LOCK TABLES `cf_pb_social_cache` WRITE;
/*!40000 ALTER TABLE `cf_pb_social_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_pb_social_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_pb_social_cache_tags`
--

DROP TABLE IF EXISTS `cf_pb_social_cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_pb_social_cache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_pb_social_cache_tags`
--

LOCK TABLES `cf_pb_social_cache_tags` WRITE;
/*!40000 ALTER TABLE `cf_pb_social_cache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_pb_social_cache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_rkw_mailer`
--

DROP TABLE IF EXISTS `cf_rkw_mailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_rkw_mailer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_rkw_mailer`
--

LOCK TABLES `cf_rkw_mailer` WRITE;
/*!40000 ALTER TABLE `cf_rkw_mailer` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_rkw_mailer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_rkw_mailer_tags`
--

DROP TABLE IF EXISTS `cf_rkw_mailer_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_rkw_mailer_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_rkw_mailer_tags`
--

LOCK TABLES `cf_rkw_mailer_tags` WRITE;
/*!40000 ALTER TABLE `cf_rkw_mailer_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_rkw_mailer_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_main`
--

DROP TABLE IF EXISTS `cf_vhs_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_main` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_main`
--

LOCK TABLES `cf_vhs_main` WRITE;
/*!40000 ALTER TABLE `cf_vhs_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_main_tags`
--

DROP TABLE IF EXISTS `cf_vhs_main_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_main_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_main_tags`
--

LOCK TABLES `cf_vhs_main_tags` WRITE;
/*!40000 ALTER TABLE `cf_vhs_main_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_main_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_markdown`
--

DROP TABLE IF EXISTS `cf_vhs_markdown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_markdown` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_markdown`
--

LOCK TABLES `cf_vhs_markdown` WRITE;
/*!40000 ALTER TABLE `cf_vhs_markdown` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_markdown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_markdown_tags`
--

DROP TABLE IF EXISTS `cf_vhs_markdown_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_markdown_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_markdown_tags`
--

LOCK TABLES `cf_vhs_markdown_tags` WRITE;
/*!40000 ALTER TABLE `cf_vhs_markdown_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_markdown_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_workspaces_cache`
--

DROP TABLE IF EXISTS `cf_workspaces_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_workspaces_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_workspaces_cache`
--

LOCK TABLES `cf_workspaces_cache` WRITE;
/*!40000 ALTER TABLE `cf_workspaces_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_workspaces_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_workspaces_cache_tags`
--

DROP TABLE IF EXISTS `cf_workspaces_cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_workspaces_cache_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_workspaces_cache_tags`
--

LOCK TABLES `cf_workspaces_cache_tags` WRITE;
/*!40000 ALTER TABLE `cf_workspaces_cache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_workspaces_cache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `subgroup` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `tx_rkwregistration_is_service` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_rkwregistration_service_opening_date` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwregistration_service_closing_date` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwregistration_service_mandatory_fields` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwregistration_service_admins` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwregistration_service_pid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_session_data`
--

DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_session_data`
--

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` mediumblob,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ses_anonymous` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ses_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
INSERT INTO `fe_sessions` VALUES ('7b32d2fd390eb96791a997544ef7ab97','127.0',0,1562596868,_binary 'a:2:{s:45:\"tx_form_honeypot_name_mitgliedsformularpage-1\";s:9:\"spd4EyAWl\";s:20:\"headerImageIteration\";i:2;}',0,1,'',0),('ba74184cd9fe5f4fcc30b052f9742a70','127.0',0,1562677530,_binary 'a:3:{s:45:\"tx_form_honeypot_name_mitgliedsformularpage-1\";s:10:\"8Szny3tBiY\";s:20:\"headerImageIteration\";i:2;s:43:\"extbase.flashmessages.tx_hgonworkgroup_list\";a:3:{i:0;O:37:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessage\":6:{s:17:\"\0*\0storeInSession\";b:1;s:10:\"\0*\0classes\";a:5:{i:-2;s:6:\"notice\";i:-1;s:4:\"info\";i:0;s:7:\"success\";i:1;s:7:\"warning\";i:2;s:6:\"danger\";}s:8:\"\0*\0icons\";a:5:{i:-2;s:11:\"lightbulb-o\";i:-1;s:4:\"info\";i:0;s:5:\"check\";i:1;s:11:\"exclamation\";i:2;s:5:\"times\";}s:8:\"\0*\0title\";s:0:\"\";s:10:\"\0*\0message\";s:102:\"An error occurred while trying to call HGON\\HgonWorkgroup\\Controller\\WorkGroupController->showAction()\";s:11:\"\0*\0severity\";i:2;}i:1;O:37:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessage\":6:{s:17:\"\0*\0storeInSession\";b:1;s:10:\"\0*\0classes\";a:5:{i:-2;s:6:\"notice\";i:-1;s:4:\"info\";i:0;s:7:\"success\";i:1;s:7:\"warning\";i:2;s:6:\"danger\";}s:8:\"\0*\0icons\";a:5:{i:-2;s:11:\"lightbulb-o\";i:-1;s:4:\"info\";i:0;s:5:\"check\";i:1;s:11:\"exclamation\";i:2;s:5:\"times\";}s:8:\"\0*\0title\";s:0:\"\";s:10:\"\0*\0message\";s:102:\"An error occurred while trying to call HGON\\HgonWorkgroup\\Controller\\WorkGroupController->showAction()\";s:11:\"\0*\0severity\";i:2;}i:2;O:37:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessage\":6:{s:17:\"\0*\0storeInSession\";b:1;s:10:\"\0*\0classes\";a:5:{i:-2;s:6:\"notice\";i:-1;s:4:\"info\";i:0;s:7:\"success\";i:1;s:7:\"warning\";i:2;s:6:\"danger\";}s:8:\"\0*\0icons\";a:5:{i:-2;s:11:\"lightbulb-o\";i:-1;s:4:\"info\";i:0;s:5:\"check\";i:1;s:11:\"exclamation\";i:2;s:5:\"times\";}s:8:\"\0*\0title\";s:0:\"\";s:10:\"\0*\0message\";s:102:\"An error occurred while trying to call HGON\\HgonWorkgroup\\Controller\\WorkGroupController->showAction()\";s:11:\"\0*\0severity\";i:2;}}}',0,1,'',0);
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8_unicode_ci,
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `uc` blob,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `felogin_forgotHash` varchar(80) COLLATE utf8_unicode_ci DEFAULT '',
  `tx_rkwregistration_mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwregistration_gender` smallint(6) NOT NULL DEFAULT '99',
  `tx_rkwregistration_federal_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwregistration_twitter_id` int(11) NOT NULL DEFAULT '0',
  `tx_rkwregistration_twitter_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwregistration_facebook_id` int(11) NOT NULL DEFAULT '0',
  `tx_rkwregistration_facebook_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwregistration_xing_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwregistration_registered_by` smallint(6) NOT NULL DEFAULT '0',
  `tx_rkwregistration_register_remote_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwregistration_language_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `tx_rkwregistration_login_error_count` smallint(6) NOT NULL DEFAULT '0',
  `tx_rkwregistration_is_anonymous` smallint(6) NOT NULL DEFAULT '0',
  `tx_rkwregistration_cross_domain_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwregistration_cross_domain_token_tstamp` int(11) NOT NULL DEFAULT '0',
  `tx_rkwregistration_privacy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_rkwregistration_title` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_unicode_ci,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_rkwbasics_alternative_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwbasics_fe_layout_next_level` int(11) NOT NULL DEFAULT '0',
  `tx_rkwbasics_css_class` int(11) NOT NULL DEFAULT '0',
  `tx_rkwbasics_teaser_text` text COLLATE utf8_unicode_ci NOT NULL,
  `tx_rkwbasics_teaser_image` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwbasics_article_image` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwbasics_article_video` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwbasics_information` text COLLATE utf8_unicode_ci NOT NULL,
  `tx_rkwbasics_department` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwbasics_document_type` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwbasics_series` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwbasics_enterprisesize` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwbasics_sector` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwbasics_file` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwbasics_cover` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwbasics_old_domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwbasics_old_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwbasics_use_as_canonical` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_rkwbasics_proxy_caching` int(11) unsigned NOT NULL DEFAULT '0',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_yoastseo_focuskeyword` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `canonical_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_yoastseo_robot_instructions` int(11) NOT NULL DEFAULT '0',
  `og_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_image` int(11) NOT NULL DEFAULT '0',
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_image` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `tx_yoastseo_dont_use` smallint(6) NOT NULL DEFAULT '0',
  `tx_yoastseo_hide_snippet_preview` smallint(6) NOT NULL DEFAULT '0',
  `no_index` smallint(6) NOT NULL DEFAULT '0',
  `no_follow` smallint(6) NOT NULL DEFAULT '0',
  `tx_yoastseo_cornerstone` smallint(6) NOT NULL DEFAULT '0',
  `tx_yoastseo_score_readability` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_yoastseo_score_seo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_yoastseo_snippetpreview` smallint(6) NOT NULL DEFAULT '0',
  `tx_yoastseo_focuskeyword_analysis` smallint(6) NOT NULL DEFAULT '0',
  `tx_yoastseo_readability_analysis` smallint(6) NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_nocache` int(1) NOT NULL DEFAULT '0',
  `tx_bmpdf2content_is_import` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_bmpdf2content_is_import_sub` int(11) unsigned NOT NULL DEFAULT '0',
  `tx_ddgooglesitemap_lastmod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_ddgooglesitemap_priority` int(3) NOT NULL DEFAULT '5',
  `tx_rkwauthors_authorship` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_rkwprojects_project_uid` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `tx_yoastseo_cornerstone` (`tx_yoastseo_cornerstone`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1562242619,256,0,3,2,31,25,25,0,1548424564,1,0,'Startseite',1,'<INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:hgon_template/Configuration/TsConfig/TsConfig.typoscript\">',1,0,'',0,0,1,6,0,0,'','',0,'',0,0,'',0,'',0,'',0,1562242619,'','',0,'','','',0,0,0,0,'',0,0,'pagets__home','pagets__pageTxtHeader','EXT:rkw_template/Configuration/TsConfig/_Core/TsConfig.ts',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548678819,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1562147376,1562147418,1562147437,1562242573,1562242619',5,0,0),(2,1,0,0,0,'',0,0,0,0,0,0,1558432289,256,0,3,2,31,25,25,0,1548429123,1,0,'Unsere Arbeit',4,'',0,0,'',0,0,1,0,1,0,'','Lernen Sie unsere Arbeit kennen',0,'',0,0,'',0,'',0,'',0,1552483117,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,1,'',0,0,'CSS Problem: Zu wenig Text sorgt für Verschiebung!\r\n\r\nAt vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',1,1,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548429124,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557835250,1557835336,1557848019,1558431746,1558432289',5,0,0),(3,1,0,0,0,'',0,0,0,0,0,0,1559568775,288,0,3,2,31,25,25,0,1548429199,1,0,'Veranstaltungen',1,'',0,0,'',0,0,1,0,0,0,'','Eine Übersicht über unsere Veranstaltungen',0,'',0,0,'',0,'',0,'',0,1562242619,'','',0,'','','',0,0,0,0,'',0,0,'pagets__events','pagets__events','',0,0,'',0,0,'Veranstaltungs-Teaser-Text',0,1,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548429200,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1554715191,1554715193,1558614256,1558614408,1559568776',5,0,0),(4,1,0,0,0,'',0,0,0,0,0,0,1557911989,304,0,3,2,31,25,25,0,1548429215,1,0,'Beobachten',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1557911989,'','',0,'','','',0,0,0,0,'',0,0,'pagets__info','pagets__single','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548429216,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1555675011,1555676249,1555677213,1557911863,1557911990',5,0,0),(5,1,0,0,0,'',0,0,0,0,0,0,1548429230,320,0,3,2,31,25,25,0,1548429230,1,0,'Service',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1556013507,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548429231,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(6,1,0,0,0,'',0,0,0,0,0,0,1562147376,128,0,3,2,31,27,25,0,1548665351,1,0,'HGON',4,'',0,0,'',0,0,1,7,0,0,'','Über den Verein',0,'',0,0,'',0,'',0,'',0,1557480962,'','',0,'','','',0,0,0,0,'',0,0,'','pagets__pageTxtHeader','',0,1,'',0,0,'-> CSS Problem: Zuwenig Text führt zur optischen Verschiebung!\r\n\r\nAt vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548862748,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1561985239,1561985275,1562141960,1562146753,1562147376',5,0,0),(7,6,0,0,0,'',0,0,0,0,0,0,1560760289,1792,0,3,2,31,27,25,0,1548665672,1,0,'Geschichte und Auftrag',1,'',0,0,'',0,0,1,0,0,0,'','Subtitle \"Geschichte und Auftrag\"',0,'',0,0,NULL,0,'',0,NULL,0,1562242619,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'Der Teaser-Text der Seite \"Geschichte und Auftrag\"',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548665694,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1559566429,1559566650,1559566663,1560760286,1560760290',5,0,0),(8,6,0,0,0,'',0,0,0,0,0,0,1558970114,2304,0,3,2,31,25,25,0,1548678770,1,0,'Arbeitskreise',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1562242619,'','',0,'','','',0,0,0,0,'',0,0,'pagets__infoCategory','pagets__info','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548678771,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557406944,1557406958,1557904609,1557904627,1558970114',5,0,0),(9,1,0,0,0,'',0,0,0,0,0,0,1548680570,576,0,3,2,31,25,25,0,1548680146,1,0,'Nebenmenü',199,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',1,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548680571,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(10,9,0,0,0,'',0,0,0,0,0,0,1558615068,256,0,3,2,31,25,25,0,1548680180,1,0,'Entdecken',1,NULL,0,0,'',0,0,1,0,0,0,'','Aktuelle Meldungen von unserer Arbeit',0,'',0,0,NULL,0,'',0,NULL,0,1562242619,NULL,'',0,'','','',0,0,0,0,'',0,0,'pagets__journal','',NULL,0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548680195,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558614793,1558614826,1558615068',5,0,0),(11,9,0,0,0,'',0,0,0,0,0,0,1559832106,512,0,3,2,31,25,25,0,1548680207,1,0,'Mitmachen',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1562242619,'','',0,'','','',0,0,0,0,'',0,0,'pagets__pageTxtHeaderSingleCol','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548680208,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1559737142,1559737603,1559737606,1559737707,1559832107',5,0,0),(12,1,0,0,0,'',0,0,0,0,0,0,1548688565,1000000000,1,1,0,31,27,0,0,1548688049,1,0,'Footer',199,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688050,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(13,12,0,0,0,'',0,0,0,0,0,0,1548688557,1000000000,1,1,0,31,27,0,0,1548688094,1,0,'Über uns',199,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688095,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(14,13,0,0,0,'',0,0,0,0,0,0,1548688550,1000000000,1,1,0,31,27,0,0,1548688116,1,0,'Geschichte und Auftrag',1,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1548688129,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688126,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(15,13,0,0,0,'',0,0,0,0,0,0,1548688543,1000000000,1,1,0,31,27,0,0,1548688143,1,0,'Arbeitskreise',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1548688143,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688143,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(16,6,0,0,0,'',0,0,0,0,0,0,1557906766,2048,0,3,2,31,27,25,0,1548688159,1,0,'Vorstand und Teams',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1562147376,'','',0,'','','',0,0,0,0,'',0,0,'pagets__info','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688160,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557739547,1557739556,1557906766',5,0,0),(17,13,0,0,0,'',0,0,0,0,0,0,1548688534,1000000000,1,1,0,31,27,0,0,1548688176,1,0,'FSÖ bei HGON',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1548688176,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688177,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(18,13,0,0,0,'',0,0,0,0,0,0,1548688526,1000000000,1,1,0,31,27,0,0,1548688195,1,0,'Willy-Bauer-Stiftung',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1548688195,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688196,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(19,13,0,0,0,'',0,0,0,0,0,0,1548688517,1000000000,1,1,0,31,27,0,0,1548688208,1,0,'Partner',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1548688208,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688209,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(20,12,0,0,0,'',0,0,0,0,0,0,1548688503,1000000000,1,1,0,31,27,0,0,1548688242,1,0,'Unsere Arbeit',199,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688242,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(21,6,0,0,0,'',0,0,0,0,0,17,1557906797,2560,0,3,2,31,25,25,0,1548688290,1,0,'FSÖ bei HGON',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1557906821,'','',0,'','','',0,0,0,0,'',0,0,'pagets__articleSidebar','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688412,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557739582,1557906797',5,0,0),(22,6,0,0,0,'',0,0,0,0,0,18,1557906821,2816,0,3,2,31,25,25,0,1548688316,1,0,'Willy-Bauer-Stiftung',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1559568775,'','',0,'','','',0,0,0,0,'',0,0,'pagets__info','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688420,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557906822',5,0,0),(23,6,0,0,0,'',0,0,0,0,0,19,1557906845,3072,0,3,2,31,25,25,0,1548688401,1,0,'Partner',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1559568775,'','',0,'','','',0,0,0,0,'',0,0,'pagets__info','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548688426,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557906845',5,0,0),(24,2,0,0,0,'',0,0,0,0,0,0,1558691200,256,0,3,2,31,25,25,0,1548690068,1,0,'Übersicht (tp-info)',1,'',0,0,'',0,0,1,0,0,0,'','Der Subtitle',0,'',0,0,'',0,'',0,'',0,1562242619,'','',0,'','','',0,0,0,0,'',0,0,'pagets__info','pagets__info','',0,0,'Überschrift',0,0,'Übersicht- Teaser Text',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548690068,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558600625,1558600630,1558600635,1558611940,1558691200',5,0,0),(25,2,0,0,0,'',0,0,0,0,0,0,1562147778,288,0,3,2,31,25,25,0,1548690087,1,0,'Vögel (tp-page-2)',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1562242619,'','',0,'','','',0,0,0,0,'',0,0,'pagets__pageImgHeader','pagets__pageImgHeader','',0,1,'',0,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',1,1,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548690088,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558600756,1558619552,1562147731,1562147745,1562147779',5,0,1),(26,2,0,0,0,'',0,0,0,0,0,0,1558943580,304,0,3,2,31,25,25,0,1548690104,1,0,'Lebensräume (tp-info-category)',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1562147778,'','',0,'','','',0,0,0,0,'',0,0,'pagets__infoCategory','pagets__infoCategory','',0,1,'',0,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548690105,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557849317,1557849535,1558446343,1558515922,1558943580',5,0,2),(27,2,0,0,0,'',0,0,0,0,0,0,1558943590,320,0,3,2,31,25,25,0,1548690122,1,0,'Artenschutz (tp-page)',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1560780450,'','',0,'','','',0,0,0,0,'',0,0,'pagets__pageTxtHeader','pagets__pageTxtHeader','',0,1,'',0,0,'Lernen Sie unsere Arbeit kennen',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548690123,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557911261,1557911272,1558446365,1558515933,1558943590',5,0,3),(28,5,0,0,0,'',0,0,0,0,0,0,1548690170,256,0,3,2,31,25,25,0,1548690153,1,0,'Beobachten',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1557221179,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548690154,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(29,5,0,0,0,'',0,0,0,0,0,0,1548690193,512,0,3,2,31,25,25,0,1548690186,1,0,'Veranstaltungen',1,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1557221179,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548690187,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(30,5,0,0,0,'',0,0,0,0,0,0,1548690205,768,0,3,2,31,25,25,0,1548690205,1,0,'Downloads',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1557221179,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548690206,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(31,5,0,0,0,'',0,0,0,0,0,0,1548690220,1024,0,3,2,31,25,25,0,1548690220,1,0,'Newsletter',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1557221179,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,1548690220,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'',5,0,0),(32,27,0,0,0,'',0,0,0,0,0,0,1559911541,256,0,3,2,31,25,25,0,1550761254,3,0,'Greifvogelschutz (tp-single)',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1560780450,'','',0,'','','',0,0,0,0,'',0,0,'pagets__single','','',0,0,'',0,0,'Teaser Text Lalala',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557850376,1558611682,1558611689,1558611749,1559911541',5,0,0),(33,1,0,0,0,'',0,0,0,0,0,0,1553095656,832,0,3,2,31,25,25,0,1553095598,3,0,'Rechtliches',199,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1553095599,1553095657',5,0,0),(34,33,0,0,0,'',0,0,0,0,0,0,1561026718,256,0,3,2,31,25,25,0,1553095685,3,0,'Kontakt',1,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1561026718,NULL,'',0,'','','',0,0,0,0,'',0,0,'pagets__pageTxtHeader','',NULL,0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1560938075,1561023134,1561026671,1561026698,1561026718',5,0,0),(35,33,0,0,0,'',0,0,0,0,0,0,1553095755,512,0,3,2,31,25,25,0,1553095714,3,0,'Datenschutz',1,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1561023133,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1553095715,1553095722,1553095739,1553095755',5,0,0),(36,33,0,0,0,'',0,0,0,0,0,0,1553095776,768,0,3,2,31,25,25,0,1553095765,3,0,'Impressum',1,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1558435177,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1553095766,1553095772',5,0,0),(37,38,0,0,0,'',0,0,0,0,0,0,1562573163,256,0,3,2,31,25,25,0,1554388901,3,0,'Veranstaltungen',254,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1562320352,1562332350,1562332362,1562332374,1562573164',5,0,0),(38,0,0,0,0,'',0,0,0,0,0,0,1554391891,384,0,3,2,31,25,25,0,1554388924,3,0,'Datensammlung',254,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1554389460,1554390714,1554390745,1554391852,1554391892',5,0,0),(39,38,0,0,0,'',0,0,0,0,0,0,1554390880,1000000000,1,3,0,31,27,0,0,1554390859,3,0,'BackendUser',254,'',0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1554390860',5,0,0),(40,3,0,0,0,'',0,0,0,0,0,0,1562249258,256,0,3,2,31,25,25,0,1554459032,3,0,'Details',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1562249258,'','',0,'','','',1,0,0,0,'',0,0,'pagets__single','pagets__single','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1554708035,1562249213,1562249231,1562249257,1562249259',5,0,0),(41,38,0,0,0,'',0,0,0,0,0,0,1558529114,192,0,3,2,31,25,25,0,1557235766,3,0,'Autoren',254,'',0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557753483,1557753497,1557753569,1558528546,1558529114',5,0,0),(42,38,0,0,0,'',0,0,0,0,0,0,1562333886,128,0,3,2,31,25,25,0,1557317267,3,0,'Arbeitskreise',254,'',0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557410416,1557410624,1557905003,1557907014,1562333886',5,0,0),(43,8,0,0,0,'',0,0,0,0,0,0,1557407915,256,0,3,2,31,25,25,0,1557398214,3,0,'Details',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1562242619,'','',0,'','','',1,0,0,0,'',0,0,'pagets__single','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557406629,1557406883,1557407612,1557407619,1557407915',5,0,0),(44,6,0,0,0,'',0,0,0,0,0,0,1557480937,1000000000,1,3,1,31,31,31,0,1557479947,3,0,'Über unseren Verein',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1557480660,'','',0,'','','',0,0,0,0,'',0,0,'pagets__articleSidebar','','',0,0,'',0,0,'Individueller Teaser Text aus den Seiteneigentschaften -> Metadaten -> Teaser-Text',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1557480061,1557480118,1557480244,1557480575,1557480661',5,0,0),(45,38,0,0,0,'',0,0,0,0,0,0,1558520139,224,0,3,2,31,25,25,0,1557754037,3,0,'Projekte',254,'',0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558512586,1558515813,1558515819,1558515824,1558520140',5,0,0),(46,25,0,0,0,'',0,0,0,0,0,0,1558602411,256,0,3,2,31,25,25,0,1558602059,3,0,'Vögel - Testseite 1',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'Vögel Unterseite 1 Teaser Text',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558602060,1558602307,1558602411',5,0,0),(47,26,0,0,0,'',0,0,0,0,0,0,1558602794,256,0,3,2,31,25,25,0,1558602783,3,0,'Lebensräume -Testseite 1',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558602783',5,0,0),(48,2,0,0,0,'',0,0,0,0,0,0,1558603492,1000000000,1,3,1,31,31,31,0,1558602960,3,0,'Lebensräume -Testseite 1',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558602960',5,0,0),(49,25,0,0,0,'',0,0,0,0,0,46,1558603036,512,0,3,2,31,25,25,0,1558602970,3,0,'Vögel - Testseite 2',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'Vögel Unterseite 1 Teaser Text',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558602411,1558602970,1558602985,1558602995,1558603036',5,0,0),(50,25,0,0,0,'',0,0,0,0,0,49,1558603437,1000000000,1,3,1,31,31,31,0,1558603009,3,1,'Vögel - Testseite 2 (Kopie 1)',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'Vögel Unterseite 1 Teaser Text',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558602411,1558602970,1558602985,1558602995,1558603009',5,0,0),(51,25,0,0,0,'',0,0,0,0,0,49,1558603041,640,0,3,2,31,25,25,0,1558603015,3,0,'Vögel - Testseite 3',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'Vögel Unterseite 1 Teaser Text',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558602985,1558602995,1558603016,1558603024,1558603041',5,0,0),(52,26,0,0,0,'',0,0,0,0,0,47,1558603446,512,0,3,2,31,25,25,0,1558603381,3,0,'Lebensräume -Testseite 2',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1558603451,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558602783,1558603382,1558603410,1558603446',5,0,0),(53,26,0,0,0,'',0,0,0,0,0,47,1558603451,768,0,3,2,31,25,25,0,1558603389,3,0,'Lebensräume -Testseite 3',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558602783,1558603390,1558603420,1558603451',5,0,0),(54,26,0,0,0,'',0,0,0,0,0,47,1558603455,1024,0,3,2,31,25,25,0,1558603399,3,0,'Lebensräume -Testseite 4',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558602783,1558603399,1558603429,1558603456',5,0,0),(55,27,0,0,0,'',0,0,0,0,0,32,1558611782,512,0,3,2,31,25,25,0,1558611704,3,0,'Artenschutz - Testseite 3',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'pagets__single','','',0,0,'',0,0,'Teaser Text Lalala',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558611682,1558611689,1558611704,1558611758,1558611782',5,0,0),(56,27,0,0,0,'',0,0,0,0,0,32,1558611754,384,0,3,2,31,25,25,0,1558611711,3,0,'Artenschutz - Testseite 2',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'pagets__single','','',0,0,'',0,0,'Teaser Text Lalala',1,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1558611682,1558611689,1558611711,1558611737,1558611754',5,0,0),(57,38,0,0,0,'',0,0,0,0,0,0,1559641646,512,0,3,2,31,25,25,0,1559638772,3,0,'Wussten Sie schon?',254,'',0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1559640135,1559640162,1559641198,1559641635,1559641647',5,0,0),(58,11,0,0,0,'',0,0,0,0,0,0,1559911055,256,0,3,2,31,25,25,0,1559894459,3,0,'Mitglied werden',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1560847200,'','',0,'','','',0,0,0,0,'',0,0,'pagets__pageTxtHeaderSingleCol','','',0,0,'',0,0,'Bei uns gibt‘s was geschenkt!',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1559894492,1559894495,1559894503,1559900775,1559911055',5,0,0),(59,38,0,0,0,'',0,0,0,0,0,0,1560950555,240,0,3,0,31,27,0,0,1560935243,3,0,'Spenden',254,'',0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1560949659,1560949697,1560950363,1560950517,1560950555',5,0,0),(60,38,0,0,0,'',0,0,0,0,0,0,1562240354,208,0,3,0,31,27,0,0,1561988010,3,0,'News',254,'',0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1562235624,1562239834,1562239851,1562239928,1562240355',5,0,0),(61,1,0,0,0,'',0,0,0,0,0,0,1562163887,1088,0,3,1,31,31,31,0,1562163887,3,0,'Sonstiges',199,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1562163887',5,0,0),(62,61,0,0,0,'',0,0,0,0,0,0,1562245193,256,0,3,1,31,31,31,0,1562163921,3,0,'News Detailseite',1,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1562245193,NULL,'',0,'','','',0,0,0,0,'',0,0,'pagets__SingleTextHeader','pagets__SingleTextHeader',NULL,0,0,'',0,0,'Detailansicht einer News',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1562227134,1562227138,1562227148,1562228066,1562245193',5,0,0),(63,38,0,0,0,'',0,0,0,0,0,0,1562587024,200,0,3,0,31,27,0,0,1562326848,3,0,'Dokumentenart',254,'',0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1562326848,1562587024',5,0,0),(64,3,0,0,0,'',0,0,0,0,0,0,1562677528,512,0,3,1,31,31,31,0,1562673887,3,0,'Reservierung',1,'',0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1562677528,'','',0,'','','',1,0,0,0,'',0,0,'pagets__single','pagets__single','',0,0,'',0,0,'',0,0,'','',0,0,0,0,0,0,0,'','',0,0,'','','',0,'','',0,'','',0,0,0,0,0,0,0,'','',0,0,0,0,'',0,0,0,0,0,'1562673911,1562673935,1562673944,1562673947,1562677529',5,0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `abstract` text COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `tx_rkwbasics_alternative_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwbasics_teaser_text` text COLLATE utf8_unicode_ci NOT NULL,
  `tx_rkwbasics_information` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_yoastseo_focuskeyword` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `canonical_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_yoastseo_robot_instructions` int(11) NOT NULL DEFAULT '0',
  `og_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_image` int(11) NOT NULL DEFAULT '0',
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_image` int(11) NOT NULL DEFAULT '0',
  `tx_yoastseo_cornerstone` smallint(6) NOT NULL DEFAULT '0',
  `tx_yoastseo_score_readability` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_yoastseo_score_seo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT '0',
  `no_follow` smallint(6) NOT NULL DEFAULT '0',
  `tx_yoastseo_snippetpreview` smallint(6) NOT NULL DEFAULT '0',
  `tx_yoastseo_focuskeyword_analysis` smallint(6) NOT NULL DEFAULT '0',
  `tx_yoastseo_readability_analysis` smallint(6) NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`),
  KEY `tx_yoastseo_cornerstone` (`tx_yoastseo_cornerstone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_countries`
--

DROP TABLE IF EXISTS `static_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_countries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `cn_iso_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_iso_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_iso_nr` int(11) NOT NULL DEFAULT '0',
  `cn_parent_territory_uid` int(11) NOT NULL DEFAULT '0',
  `cn_parent_tr_iso_nr` int(11) NOT NULL DEFAULT '0',
  `cn_official_name_local` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_official_name_en` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_capital` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_tldomain` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_currency_uid` int(11) NOT NULL DEFAULT '0',
  `cn_currency_iso_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_currency_iso_nr` int(11) NOT NULL DEFAULT '0',
  `cn_phone` int(11) NOT NULL DEFAULT '0',
  `cn_eu_member` smallint(6) NOT NULL DEFAULT '0',
  `cn_uno_member` smallint(6) NOT NULL DEFAULT '0',
  `cn_address_format` smallint(6) NOT NULL DEFAULT '0',
  `cn_zone_flag` smallint(6) NOT NULL DEFAULT '0',
  `cn_short_local` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_short_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cn_country_zones` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_countries`
--

LOCK TABLES `static_countries` WRITE;
/*!40000 ALTER TABLE `static_countries` DISABLE KEYS */;
INSERT INTO `static_countries` VALUES (1,0,0,'AD','AND',20,10,39,'Principat d\'Andorra','Principality of Andorra','Andorra la Vella','ad',49,'EUR',978,376,0,1,1,0,'Andorra','Andorra',0),(2,0,0,'AE','ARE',784,9,145,'الإمارات العربيّة المتّحدة','United Arab Emirates','Abu Dhabi','ae',2,'AED',784,971,0,1,1,0,'الإمارات العربيّة المتّحدة','United Arab Emirates',0),(3,0,0,'AF','AFG',4,30,34,'د افغانستان اسلامي دولت','Islamic Republic of Afghanistan','Kabul','af',171,'AFN',971,93,0,1,2,0,'افغانستان','Afghanistan',0),(4,0,0,'AG','ATG',28,19,29,'Antigua and Barbuda','Antigua and Barbuda','St John\'s','ag',163,'XCD',951,1268,0,1,1,0,'Antigua and Barbuda','Antigua and Barbuda',0),(5,0,0,'AI','AIA',660,19,29,'Anguilla','Anguilla','The Valley','ai',163,'XCD',951,1264,0,0,1,0,'Anguilla','Anguilla',0),(6,0,0,'AL','ALB',8,10,39,'Republika e Shqipërisë','Republic of Albania','Tirana','al',4,'ALL',8,355,0,1,1,0,'Shqipëria','Albania',0),(7,0,0,'AM','ARM',51,9,145,'Հայաստանի Հանրապետություն','Republic of Armenia','Yerevan','am',5,'AMD',51,374,0,1,1,0,'Հայաստան','Armenia',0),(8,0,1,'AN','ANT',530,19,29,'Nederlandse Antillen','Netherlands Antilles','Willemstad','an',6,'ANG',532,599,0,0,1,0,'Nederlandse Antillen','Netherlands Antilles',0),(9,0,0,'AO','AGO',24,23,17,'República de Angola','Republic of Angola','Luanda','ao',7,'AOA',973,244,0,1,1,0,'Angola','Angola',0),(10,0,0,'AQ','ATA',10,0,0,'Antarctica','Antarctica','','aq',0,'',0,67212,0,0,1,0,'Antarctica','Antarctica',0),(11,0,0,'AR','ARG',32,16,5,'República Argentina','Argentine Republic','Buenos Aires','ar',8,'ARS',32,54,0,1,2,0,'Argentina','Argentina',0),(12,0,0,'AS','ASM',16,28,61,'Amerika Samoa','American Samoa','Pago Pago','as',155,'USD',840,685,0,0,1,0,'Amerika Samoa','American Samoa',0),(13,0,0,'AT','AUT',40,13,155,'Republik Österreich','Republic of Austria','Vienna','at',49,'EUR',978,43,1,1,1,0,'Österreich','Austria',9),(14,0,0,'AU','AUS',36,25,53,'Commonwealth of Australia','Commonwealth of Australia','Canberra','au',9,'AUD',36,61,0,1,3,0,'Australia','Australia',8),(15,0,0,'AW','ABW',533,19,29,'Aruba','Aruba','Oranjestad','aw',10,'AWG',533,297,0,0,0,0,'Aruba','Aruba',0),(16,0,0,'AZ','AZE',31,9,145,'Azərbaycan Respublikası','Republic of Azerbaijan','Baku','az',11,'AZN',944,994,0,1,1,0,'Azərbaycan','Azerbaijan',0),(17,0,0,'BA','BIH',70,10,39,'Bosna i Hercegovina / Босна и Херцеговина','Bosnia and Herzegovina','Sarajevo','ba',12,'BAM',977,387,0,1,0,0,'BiH/БиХ','Bosnia and Herzegovina',0),(18,0,0,'BB','BRB',52,19,29,'Barbados','Barbados','Bridgetown','bb',13,'BBD',52,1246,0,1,1,0,'Barbados','Barbados',0),(19,0,0,'BD','BGD',50,30,34,'গনপ্রজাতন্ত্রী বাংলা','People’s Republic of Bangladesh','Dhaka','bd',14,'BDT',50,880,0,1,1,0,'বাংলাদেশ','Bangladesh',0),(20,0,0,'BE','BEL',56,13,155,'Koninkrijk België / Royaume de Belgique','Kingdom of Belgium','Brussels','be',49,'EUR',978,32,1,1,1,0,'Belgique','Belgium',0),(21,0,0,'BF','BFA',854,20,11,'Burkina Faso','Burkina Faso','Ouagadougou','bf',164,'XOF',952,226,0,1,1,0,'Burkina','Burkina Faso',0),(22,0,0,'BG','BGR',100,11,151,'Република България','Republic of Bulgaria','Sofia','bg',16,'BGN',975,359,1,1,1,0,'Bulgaria','Bulgaria',0),(23,0,0,'BH','BHR',48,9,145,'مملكة البحرين','Kingdom of Bahrain','Manama','bh',17,'BHD',48,973,0,1,1,0,'البحري','Bahrain',0),(24,0,0,'BI','BDI',108,21,14,'Republika y\'u Burundi','Republic of Burundi','Bujumbura','bi',18,'BIF',108,257,0,1,1,0,'Burundi','Burundi',0),(25,0,0,'BJ','BEN',204,20,11,'République du Bénin','Republic of Benin','Porto Novo','bj',164,'XOF',952,229,0,1,1,0,'Bénin','Benin',0),(26,0,0,'BM','BMU',60,18,21,'Bermuda','Bermuda','Hamilton','bm',19,'BMD',60,1441,0,0,1,0,'Bermuda','Bermuda',0),(27,0,0,'BN','BRN',96,7,35,'برني دارالسلام','Sultanate of Brunei','Bandar Seri Begawan','bn',20,'BND',96,673,0,1,1,0,'دارالسلام','Brunei',0),(28,0,0,'BO','BOL',68,16,5,'Estado Plurinacional de Bolivia','Plurinational State of Bolivia','Sucre','bo',21,'BOB',68,591,0,1,1,0,'Bolivia','Bolivia',0),(29,0,0,'BR','BRA',76,16,5,'República Federativa do Brasil','Federative Republic of Brazil','Brasilia','br',23,'BRL',986,55,0,1,9,0,'Brasil','Brazil',27),(30,0,0,'BS','BHS',44,19,29,'Commonwealth of The Bahamas','Commonwealth of The Bahamas','Nassau','bs',24,'BSD',44,1242,0,1,1,0,'The Bahamas','The Bahamas',0),(31,0,0,'BT','BTN',64,30,34,'Druk-Yul','Kingdom of Bhutan','Thimphu','bt',25,'BTN',64,975,0,1,1,0,'Druk-Yul','Bhutan',0),(32,0,0,'BV','BVT',74,0,0,'Bouvet Island','Bouvet Island','','bv',111,'NOK',578,0,0,0,1,0,'Bouvetøya','Bouvet Island',0),(33,0,0,'BW','BWA',72,24,18,'Republic of Botswana','Republic of Botswana','Gaborone','bw',26,'BWP',72,267,0,1,1,0,'Botswana','Botswana',0),(34,0,0,'BY','BLR',112,11,151,'Рэспубліка Беларусь','Republic of Belarus','Minsk','by',27,'BYR',974,375,0,1,1,0,'Беларусь','Belarus',0),(35,0,0,'BZ','BLZ',84,17,13,'Belize','Belize','Belmopan','bz',28,'BZD',84,501,0,1,1,0,'Belize','Belize',0),(36,0,0,'CA','CAN',124,18,21,'Canada','Canada','Ottawa','ca',29,'CAD',124,1,0,1,4,0,'Canada','Canada',13),(37,0,0,'CC','CCK',166,25,53,'Territory of Cocos (Keeling) Islands','Territory of Cocos (Keeling) Islands','Bantam','cc',9,'AUD',36,6722,0,0,1,0,'Cocos (Keeling) Islands','Cocos (Keeling) Islands',0),(38,0,0,'CD','COD',180,23,17,'République Démocratique du Congo','Democratic Republic of the Congo','Kinshasa','cd',30,'CDF',976,243,0,1,0,0,'Congo','Congo',0),(39,0,0,'CF','CAF',140,23,17,'République centrafricaine','Central African Republic','Bangui','cf',162,'XAF',950,236,0,1,1,0,'République centrafricaine','Central African Republic',0),(40,0,0,'CG','COG',178,23,17,'République du Congo','Republic of the Congo','Brazzaville','cg',162,'XAF',950,242,0,1,1,0,'Congo-Brazzaville','Congo-Brazzaville',0),(41,0,0,'CH','CHE',756,13,155,'Confédération suisse / Schweizerische Eidgenossenschaft','Swiss Confederation','Berne','ch',31,'CHF',756,41,0,1,1,0,'Schweiz','Switzerland',26),(42,0,0,'CI','CIV',384,20,11,'République de Côte d’Ivoire','Republic of Côte d\'Ivoire','Yamoussoukro','ci',164,'XOF',952,225,0,1,2,0,'Côte d’Ivoire','Côte d’Ivoire',0),(43,0,0,'CK','COK',184,28,61,'Cook Islands','Cook Islands','Avarua','ck',113,'NZD',554,682,0,0,1,0,'Cook Islands','Cook Islands',0),(44,0,0,'CL','CHL',152,16,5,'República de Chile','Republic of Chile','Santiago','cl',33,'CLP',152,56,0,1,1,0,'Chile','Chile',0),(45,0,0,'CM','CMR',120,23,17,'Republic of Cameroon / République du Cameroun','Republic of Cameroon','Yaoundé','cm',162,'XAF',950,237,0,1,1,0,'Cameroun','Cameroon',0),(46,0,0,'CN','CHN',156,6,30,'中华人民共和国','People’s Republic of China','Beijing','cn',34,'CNY',156,86,0,1,1,0,'中华','China',0),(47,0,0,'CO','COL',170,16,5,'República de Colombia','Republic of Colombia','Bogotá','co',35,'COP',170,57,0,1,1,0,'Colombia','Colombia',0),(48,0,0,'CR','CRI',188,17,13,'República de Costa Rica','Republic of Costa Rica','San José','cr',36,'CRC',188,506,0,1,1,0,'Costa Rica','Costa Rica',0),(49,0,0,'CU','CUB',192,19,29,'República de Cuba','Republic of Cuba','Havana','cu',37,'CUP',192,53,0,1,1,0,'Cuba','Cuba',0),(50,0,0,'CV','CPV',132,20,11,'República de Cabo Verde','Republic of Cape Verde','Praia','cv',38,'CVE',132,238,0,1,1,0,'Cabo Verde','Cape Verde',0),(51,0,0,'CX','CXR',162,0,0,'Territory of Christmas Island','Territory of Christmas Island','Flying Fish Cove','cx',9,'AUD',36,6724,0,0,1,0,'Christmas Island','Christmas Island',0),(52,0,0,'CY','CYP',196,9,145,'Κυπριακή Δημοκρατία / Kıbrıs Cumhuriyeti','Republic of Cyprus','Nicosia','cy',49,'EUR',978,357,1,1,1,0,'Κύπρος / Kıbrıs','Cyprus',0),(53,0,0,'CZ','CZE',203,11,151,'Česká republika','Czech Republic','Prague','cz',40,'CZK',203,420,1,1,1,0,'Česko','Czech Republic',0),(54,0,0,'DE','DEU',276,13,155,'Bundesrepublik Deutschland','Federal Republic of Germany','Berlin','de',49,'EUR',978,49,1,1,1,0,'Deutschland','Germany',16),(55,0,0,'DJ','DJI',262,21,14,'جمهورية جيبوتي / République de Djibouti','Republic of Djibouti','Djibouti','dj',41,'DJF',262,253,0,1,1,0,'جيبوتي /Djibouti','Djibouti',0),(56,0,0,'DK','DNK',208,12,154,'Kongeriget Danmark','Kingdom of Denmark','Copenhagen','dk',42,'DKK',208,45,1,1,1,0,'Danmark','Denmark',0),(57,0,0,'DM','DMA',212,19,29,'Commonwealth of Dominica','Commonwealth of Dominica','Roseau','dm',163,'XCD',951,1767,0,1,1,0,'Dominica','Dominica',0),(58,0,0,'DO','DOM',214,19,29,'República Dominicana','Dominican Republic','Santo Domingo','do',43,'DOP',214,1809,0,1,1,0,'Quisqueya','Dominican Republic',0),(59,0,0,'DZ','DZA',12,22,15,'الجمهورية الجزائرية الديمقراطية','People’s Democratic Republic of Algeria','Algiers','dz',44,'DZD',12,213,0,1,1,0,'الجزائ','Algeria',0),(60,0,0,'EC','ECU',218,16,5,'República del Ecuador','Republic of Ecuador','Quito','ec',155,'USD',840,593,0,1,1,0,'Ecuador','Ecuador',0),(61,0,0,'EE','EST',233,12,154,'Eesti Vabariik','Republic of Estonia','Tallinn','ee',49,'EUR',978,372,1,1,1,0,'Eesti','Estonia',0),(62,0,0,'EG','EGY',818,22,15,'جمهوريّة مصر العربيّة','Arab Republic of Egypt','Cairo','eg',46,'EGP',818,20,0,1,1,0,'مصر','Egypt',0),(63,0,0,'EH','ESH',732,22,15,'الصحراء الغربية','Western Sahara','El Aaiún','eh',92,'MAD',504,212,0,0,1,0,'الصحراء الغربي','Western Sahara',0),(64,0,0,'ER','ERI',232,21,14,'ሃግሬ ኤርትራ','State of Eritrea','Asmara','er',47,'ERN',232,291,0,1,1,0,'ኤርትራ','Eritrea',0),(65,0,0,'ES','ESP',724,10,39,'Reino de España','Kingdom of Spain','Madrid','es',49,'EUR',978,34,1,1,8,0,'España','Spain',52),(66,0,0,'ET','ETH',231,21,14,'የኢትዮጵያ ፌዴራላዊ','Federal Democratic Republic of Ethiopia','Addis Ababa','et',48,'ETB',230,251,0,1,1,0,'ኢትዮጵያ','Ethiopia',0),(67,0,0,'FI','FIN',246,12,154,'Suomen Tasavalta / Republiken Finland','Republic of Finland','Helsinki','fi',49,'EUR',978,358,1,1,1,0,'Suomi','Finland',0),(68,0,0,'FJ','FJI',242,26,54,'Republic of Fiji / Matanitu Tu-Vaka-i-koya ko Vi','Republic of Fiji','Suva','fj',50,'FJD',242,679,0,1,1,0,'Fiji / Viti','Fiji',0),(69,0,0,'FK','FLK',238,16,5,'Falkland Islands','Falkland Islands','Stanley','fk',51,'FKP',238,500,0,0,1,0,'Falkland Islands','Falkland Islands',0),(70,0,0,'FM','FSM',583,27,57,'Federated States of Micronesia','Federated States of Micronesia','Palikir','fm',155,'USD',840,691,0,1,1,0,'Micronesia','Micronesia',0),(71,0,0,'FO','FRO',234,12,154,'Føroyar / Færøerne','Faroe Islands','Thorshavn','fo',42,'DKK',208,298,0,0,1,0,'Føroyar / Færøerne','Faroes',0),(72,0,0,'FR','FRA',250,13,155,'République française','French Republic','Paris','fr',49,'EUR',978,33,1,1,1,0,'France','France',131),(73,0,0,'GA','GAB',266,23,17,'République Gabonaise','Gabonese Republic','Libreville','ga',162,'XAF',950,241,0,1,1,0,'Gabon','Gabon',0),(74,0,0,'GB','GBR',826,12,154,'United Kingdom of Great Britain and Northern Ireland','United Kingdom of Great Britain and Northern Ireland','London','uk',52,'GBP',826,44,1,1,5,0,'United Kingdom','United Kingdom',105),(75,0,0,'GD','GRD',308,19,29,'Grenada','Grenada','St George\'s','gd',163,'XCD',951,1473,0,1,1,0,'Grenada','Grenada',0),(76,0,0,'GE','GEO',268,9,145,'საქართველო','Georgia','Tbilisi','ge',53,'GEL',981,995,0,1,1,0,'საქართველო','Georgia',0),(77,0,0,'GF','GUF',254,16,5,'Guyane française','French Guiana','Cayenne','gf',49,'EUR',978,594,0,0,1,0,'Guyane française','French Guiana',0),(78,0,0,'GH','GHA',288,20,11,'Republic of Ghana','Republic of Ghana','Accra','gh',177,'GHS',936,233,0,1,1,0,'Ghana','Ghana',0),(79,0,0,'GI','GIB',292,10,39,'Gibraltar','Gibraltar','Gibraltar','gi',55,'GIP',292,350,0,0,1,0,'Gibraltar','Gibraltar',0),(80,0,0,'GL','GRL',304,18,21,'Kalaallit Nunaat / Grønland','Greenland','Nuuk','gl',42,'DKK',208,299,0,0,1,0,'Grønland','Greenland',0),(81,0,0,'GM','GMB',270,20,11,'Republic of The Gambia','Republic of The Gambia','Banjul','gm',56,'GMD',270,220,0,1,1,0,'Gambia','Gambia',0),(82,0,0,'GN','GIN',324,20,11,'République de Guinée','Republic of Guinea','Conakry','gn',57,'GNF',324,224,0,1,1,0,'Guinée','Guinea',0),(83,0,0,'GP','GLP',312,19,29,'Département de la Guadeloupe','Department of Guadeloupe','Basse Terre','gp',49,'EUR',978,590,0,0,1,0,'Guadeloupe','Guadeloupe',0),(84,0,0,'GQ','GNQ',226,23,17,'República de Guinea Ecuatorial','Republic of Equatorial Guinea','Malabo','gq',162,'XAF',950,240,0,1,1,0,'Guinea Ecuatorial','Equatorial Guinea',0),(85,0,0,'GR','GRC',300,10,39,'Ελληνική Δημοκρατία','Hellenic Republic','Athens','gr',49,'EUR',978,30,1,1,1,0,'Ελλάδα','Greece',0),(86,0,0,'GS','SGS',239,0,0,'South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands','','gs',52,'GBP',826,0,0,0,0,0,'South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands',0),(87,0,0,'GT','GTM',320,17,13,'República de Guatemala','Republic of Guatemala','Guatemala City','gt',58,'GTQ',320,502,0,1,1,0,'Guatemala','Guatemala',0),(88,0,0,'GU','GUM',316,27,57,'The Territory of Guam / Guåhån','The Territory of Guam','Hagåtña','gu',155,'USD',840,671,0,0,1,0,'Guåhån','Guam',0),(89,0,0,'GW','GNB',624,20,11,'República da Guiné-Bissau','Republic of Guinea-Bissau','Bissau','gw',164,'XOF',952,245,0,1,1,0,'Guiné-Bissau','Guinea-Bissau',0),(90,0,0,'GY','GUY',328,16,5,'Co-operative Republic of Guyana','Co-operative Republic of Guyana','Georgetown','gy',60,'GYD',328,592,0,1,1,0,'Guyana','Guyana',0),(91,0,0,'HK','HKG',344,6,30,'香港特別行政區','Hong Kong SAR of the People’s Republic of China','','hk',61,'HKD',344,852,0,0,1,0,'香港','Hong Kong SAR of China',0),(92,0,0,'HN','HND',340,17,13,'República de Honduras','Republic of Honduras','Tegucigalpa','hn',62,'HNL',340,504,0,1,1,0,'Honduras','Honduras',0),(93,0,0,'HR','HRV',191,10,39,'Republika Hrvatska','Republic of Croatia','Zagreb','hr',63,'HRK',191,385,1,1,1,0,'Hrvatska','Croatia',21),(94,0,0,'HT','HTI',332,19,29,'Repiblik d Ayiti / République d\'Haïti','Republic of Haiti','Port-au-Prince','ht',64,'HTG',332,509,0,1,1,0,'Ayiti','Haiti',0),(95,0,0,'HU','HUN',348,11,151,'Magyar Köztársaság','Hungary','Budapest','hu',65,'HUF',348,36,1,1,1,0,'Magyarország','Hungary',0),(96,0,0,'ID','IDN',360,7,35,'Republik Indonesia','Republic of Indonesia','Jakarta','id',66,'IDR',360,62,0,1,2,0,'Indonesia','Indonesia',0),(97,0,0,'IE','IRL',372,12,154,'Poblacht na hÉireann / Republic of Ireland','Republic of Ireland','Dublin','ie',49,'EUR',978,353,1,1,1,0,'Éire','Ireland',26),(98,0,0,'IL','ISR',376,9,145,'دولة إسرائيل / מדינת ישראלل','State of Israel','Tel Aviv','il',67,'ILS',376,972,0,1,2,0,'ישראל','Israel',0),(99,0,0,'IN','IND',356,30,34,'Bharat; Republic of India','Republic of India','New Delhi','in',68,'INR',356,91,0,1,2,0,'India','India',0),(100,0,0,'IO','IOT',86,30,34,'British Indian Ocean Territory','British Indian Ocean Territory','','io',52,'GBP',826,0,0,0,1,0,'British Indian Ocean Territory','British Indian Ocean Territory',0),(101,0,0,'IQ','IRQ',368,9,145,'الجمهورية العراقية','Republic of Iraq','Baghdad','iq',69,'IQD',368,964,0,1,1,0,'العراق / عيَراق','Iraq',0),(102,0,0,'IR','IRN',364,30,34,'جمهوری اسلامی ايران','Islamic Republic of Iran','Tehran','ir',70,'IRR',364,98,0,1,1,0,'ايران','Iran',0),(103,0,0,'IS','ISL',352,12,154,'Lýðveldið Ísland','Republic of Iceland','Reykjavík','is',71,'ISK',352,354,0,1,1,0,'Ísland','Iceland',0),(104,0,0,'IT','ITA',380,10,39,'Repubblica Italiana','Italian Republic','Rome','it',49,'EUR',978,39,1,1,7,0,'Italia','Italy',110),(105,0,0,'JM','JAM',388,19,29,'Commonwealth of Jamaica','Commonwealth of Jamaica','Kingston','jm',72,'JMD',388,1876,0,1,2,0,'Jamaica','Jamaica',0),(106,0,0,'JO','JOR',400,9,145,'المملكة الأردنية الهاشمية','Hashemite Kingdom of Jordan','Amman','jo',73,'JOD',400,962,0,1,1,0,'أردنّ','Jordan',0),(107,0,0,'JP','JPN',392,6,30,'日本国','Japan','Tokyo','jp',74,'JPY',392,81,0,1,2,0,'日本','Japan',0),(108,0,0,'KE','KEN',404,21,14,'Jamhuri va Kenya','Republic of Kenia','Nairobi','ke',75,'KES',404,254,0,1,1,0,'Kenya','Kenya',0),(109,0,0,'KG','KGZ',417,8,143,'Кыргызстан','Kyrgyzstan','Bishkek','kg',76,'KGS',417,996,0,1,1,0,'Кыргызстан','Kyrgyzstan',0),(110,0,0,'KH','KHM',116,7,35,'Preăh Réachéanachâkr Kâmpŭchea','Kingdom of Cambodia','Phnom Penh','kh',77,'KHR',116,855,0,1,1,0,'Kâmpŭchea','Cambodia',0),(111,0,0,'KI','KIR',296,27,57,'Republic of Kiribati','Republic of Kiribati','Bairiki','ki',9,'AUD',36,686,0,1,0,0,'Kiribati','Kiribati',0),(112,0,0,'KM','COM',174,21,14,'Udzima wa Komori /Union des Comores /اتحاد القمر','Union of the Comoros','Moroni','km',78,'KMF',174,269,0,1,1,0,'اتحاد القمر','Comoros',0),(113,0,0,'KN','KNA',659,19,29,'Federation of Saint Kitts and Nevis','Federation of Saint Kitts and Nevis','Basseterre','kn',163,'XCD',951,1869,0,1,1,0,'Saint Kitts and Nevis','Saint Kitts and Nevis',0),(114,0,0,'KP','PRK',408,6,30,'조선민주주의인민화국','Democratic People’s Republic of Korea','Pyongyang','kp',79,'KPW',408,850,0,1,0,0,'북조선','North Korea',0),(115,0,0,'KR','KOR',410,6,30,'대한민국','Republic of Korea','Seoul','kr',80,'KRW',410,82,0,1,1,0,'한국','South Korea',0),(116,0,0,'KW','KWT',414,9,145,'دولة الكويت','State of Kuweit','Kuwait City','kw',81,'KWD',414,965,0,1,1,0,'الكويت','Kuwait',0),(117,0,0,'KY','CYM',136,19,29,'Cayman Islands','Cayman Islands','George Town','ky',82,'KYD',136,1345,0,0,1,0,'Cayman Islands','Cayman Islands',0),(118,0,0,'KZ','KAZ',398,8,143,'Қазақстан Республикасы /Республика Казахстан','Republic of Kazakhstan','Astana','kz',83,'KZT',398,7,0,1,1,0,'Қазақстан /Казахстан','Kazakhstan',0),(119,0,0,'LA','LAO',418,7,35,'ສາທາລະນະລັດປະຊາທິປະໄຕປະຊາຊົນລາວ','Lao People’s Democratic Republic','Vientiane','la',84,'LAK',418,856,0,1,1,0,'ເມືອງລາວ','Laos',0),(120,0,0,'LB','LBN',422,9,145,'الجمهوريّة اللبنانيّة','Republic of Lebanon','Beirut','lb',85,'LBP',422,961,0,1,1,0,'لبنان','Lebanon',0),(121,0,0,'LC','LCA',662,19,29,'Saint Lucia','Saint Lucia','Castries','lc',163,'XCD',951,1758,0,1,1,0,'Saint Lucia','Saint Lucia',0),(122,0,0,'LI','LIE',438,13,155,'Fürstentum Liechtenstein','Principality of Liechtenstein','Vaduz','li',31,'CHF',756,423,0,1,1,0,'Liechtenstein','Liechtenstein',0),(123,0,0,'LK','LKA',144,30,34,'ශ්‍රී ලංකා / இலங்கை சனநாயக சோஷலிசக் குடியரசு','Democratic Socialist Republic of Sri Lanka','Colombo','lk',86,'LKR',144,94,0,1,2,0,'ශ්‍රී ලංකා / இலங்கை','Sri Lanka',0),(124,0,0,'LR','LBR',430,20,11,'Republic of Liberia','Republic of Liberia','Monrovia','lr',87,'LRD',430,231,0,1,1,0,'Liberia','Liberia',0),(125,0,0,'LS','LSO',426,24,18,'Muso oa Lesotho / Kingdom of Lesotho','Kingdon of Lesotho','Maseru','ls',88,'LSL',426,266,0,1,1,0,'Lesotho','Lesotho',0),(126,0,0,'LT','LTU',440,12,154,'Lietuvos Respublika','Republic of Lithuania','Vilnius','lt',49,'EUR',978,370,1,1,1,0,'Lietuva','Lithuania',0),(127,0,0,'LU','LUX',442,13,155,'Grand-Duché de Luxembourg / Großherzogtum Luxemburg / Groussherzogtum Lëtzebuerg','Grand Duchy of Luxembourg','Luxembourg','lu',49,'EUR',978,352,1,1,1,0,'Luxemburg','Luxembourg',0),(128,0,0,'LV','LVA',428,12,154,'Latvijas Republika','Republic of Latvia','Riga','lv',49,'EUR',978,371,1,1,1,0,'Latvija','Latvia',0),(129,0,0,'LY','LBY',434,22,15,'‏ليبيا‎','State of Libya','Tripoli','ly',91,'LYD',434,218,0,1,1,0,'‏ليبيا‎','Libya',0),(130,0,0,'MA','MAR',504,22,15,'المملكة المغربية','Kingdom of Morocco','Rabat','ma',92,'MAD',504,212,0,1,1,0,'المغربية','Morocco',0),(131,0,0,'MC','MCO',492,13,155,'Principauté de Monaco / Principatu de Munegu','Principality of Monaco','Monaco','mc',49,'EUR',978,377,0,1,1,0,'Monaco','Monaco',0),(132,0,0,'MD','MDA',498,11,151,'Republica Moldova','Republic of Moldova','Chisinau','md',93,'MDL',498,373,0,1,1,0,'Moldova','Moldova',0),(133,0,0,'MG','MDG',450,21,14,'Repoblikan\'i Madagasikara / République de Madagascar','Republic of Madagascar','Antananarivo','mg',173,'MGA',969,261,0,1,1,0,'Madagascar','Madagascar',0),(134,0,0,'MH','MHL',584,27,57,'Aolepān Aorōkin M̧ajeļ / Republic of the Marshall Islands','Republic of the Marshall Islands','Dalap-Uliga-Darrit (DUD)','mh',155,'USD',840,692,0,1,1,0,'Marshall Islands','Marshall Islands',0),(135,0,0,'MK','MKD',807,10,39,'Република Македонија','Republic of Macedonia','Skopje','mk',95,'MKD',807,389,0,1,1,0,'Македонија','Macedonia',0),(136,0,0,'ML','MLI',466,20,11,'République du Mali','Republik Mali','Bamako','ml',164,'XOF',952,223,0,1,1,0,'Mali','Mali',0),(137,0,0,'MM','MMR',104,7,35,'Pyidaungzu Myanma Naingngandaw','Republic of the Union of Myanmar','Yangon','mm',96,'MMK',104,95,0,1,1,0,'Myanmar','Myanmar',0),(138,0,0,'MN','MNG',496,6,30,'Монгол Улс','Mongolia','Ulan Bator','mn',97,'MNT',496,976,0,1,1,0,'Монгол Улс','Mongolia',0),(139,0,0,'MO','MAC',446,6,30,'中華人民共和國澳門特別行政區 / Região Administrativa Especial de Macau da República Popular da China','Macao SAR of the People’s Republic of China','Macau','mo',98,'MOP',446,853,0,0,1,0,'澳門 / Macau','Macao SAR of China',0),(140,0,0,'MP','MNP',580,27,57,'Commonwealth of the Northern Mariana Islands','Commonwealth of the Northern Mariana Islands','Garapan','mp',155,'USD',840,1670,0,0,0,0,'Northern Marianas','Northern Marianas',0),(141,0,0,'MQ','MTQ',474,19,29,'Département de la Martinique','Department of Martinique','Fort-de-France','mq',49,'EUR',978,596,0,0,1,0,'Martinique','Martinique',0),(142,0,0,'MR','MRT',478,20,11,'الجمهورية الإسلامية الموريتانية','Islamic Republic of Mauritania','Nouakchott','mr',99,'MRO',478,222,0,1,1,0,'الموريتانية','Mauritania',0),(143,0,0,'MS','MSR',500,19,29,'Montserrat','Montserrat','Plymouth','ms',163,'XCD',951,1664,0,0,1,0,'Montserrat','Montserrat',0),(144,0,0,'MT','MLT',470,10,39,'Repubblika ta\' Malta / Republic of Malta','Republic of Malta','Valletta','mt',49,'EUR',978,356,1,1,1,0,'Malta','Malta',0),(145,0,0,'MU','MUS',480,21,14,'Republic of Mauritius','Republic of Mauritius','Port Louis','mu',101,'MUR',480,230,0,1,1,0,'Mauritius','Mauritius',0),(146,0,0,'MV','MDV',462,30,34,'ދިވެހިރާއްޖޭގެ ޖުމުހޫރިއްޔާ','Republic of Maldives','Malé','mv',102,'MVR',462,960,0,1,1,0,'ޖުމުހޫރިއްޔ','Maldives',0),(147,0,0,'MW','MWI',454,21,14,'Republic of Malawi / Dziko la Malaŵi','Republic of Malawi','Lilongwe','mw',103,'MWK',454,265,0,1,1,0,'Malawi','Malawi',0),(148,0,0,'MX','MEX',484,17,13,'Estados Unidos Mexicanos','United Mexican States','Mexico City','mx',104,'MXN',484,52,0,1,6,0,'México','Mexico',32),(149,0,0,'MY','MYS',458,7,35,'ڤرسكوتوان مليسيا','Malaysia','Kuala Lumpur','my',106,'MYR',458,60,0,1,1,0,'مليسيا','Malaysia',0),(150,0,0,'MZ','MOZ',508,21,14,'República de Moçambique','Republic of Mozambique','Maputo','mz',178,'MZN',943,258,0,1,1,0,'Moçambique','Mozambique',0),(151,0,0,'NA','NAM',516,24,18,'Republic of Namibia','Republic of Namibia','Windhoek','na',108,'NAD',516,264,0,1,1,0,'Namibia','Namibia',0),(152,0,0,'NC','NCL',540,26,54,'Territoire de Nouvelle-Caledonie et Dépendances','Territory of New Caledonia','Nouméa','nc',165,'XPF',953,687,0,0,1,0,'Nouvelle-Calédonie','New Caledonia',0),(153,0,0,'NE','NER',562,20,11,'République du Niger','Republic of Niger','Niamey','ne',164,'XOF',952,227,0,1,1,0,'Niger','Niger',0),(154,0,0,'NF','NFK',574,25,53,'Territory of Norfolk Island','Territory of Norfolk Island','Kingston','nf',9,'AUD',36,6723,0,0,1,0,'Norfolk Island','Norfolk Island',0),(155,0,0,'NG','NGA',566,20,11,'Federal Republic of Nigeria','Federal Republic of Nigeria','Abuja','ng',109,'NGN',566,234,0,1,1,0,'Nigeria','Nigeria',0),(156,0,0,'NI','NIC',558,17,13,'República de Nicaragua','Republic of Nicaragua','Managua','ni',110,'NIO',558,505,0,1,1,0,'Nicaragua','Nicaragua',0),(157,0,0,'NL','NLD',528,13,155,'Koninkrijk der Nederlanden','Kingdom of the Netherlands','Amsterdam','nl',49,'EUR',978,31,1,1,1,0,'Nederland','Netherlands',12),(158,0,0,'NO','NOR',578,12,154,'Kongeriket Norge','Kingdom of Norway','Oslo','no',111,'NOK',578,47,0,1,1,0,'Norge','Norway',0),(159,0,0,'NP','NPL',524,30,34,'सङ्घीय लोकतान्त्रिक गणतन्त्र नेपाल','Federal Democratic Republic of Nepal','Kathmandu','np',112,'NPR',524,977,0,1,1,0,'नेपाल','Nepal',0),(160,0,0,'NR','NRU',520,27,57,'Ripublik Naoero','Republic of Nauru','Yaren','nr',9,'AUD',36,674,0,1,1,0,'Naoero','Nauru',0),(161,0,0,'NU','NIU',570,28,61,'Niue','Niue','Alofi','nu',113,'NZD',554,683,0,0,1,0,'Niue','Niue',0),(162,0,0,'NZ','NZL',554,25,53,'New Zealand / Aotearoa','New Zealand','Wellington','nz',113,'NZD',554,64,0,1,2,0,'New Zealand / Aotearoa','New Zealand',0),(163,0,0,'OM','OMN',512,9,145,'سلطنة عُمان','Sultanate of Oman','Muscat','om',114,'OMR',512,968,0,1,1,0,'عُمان','Oman',0),(164,0,0,'PA','PAN',591,17,13,'República de Panamá','Repulic of Panama','Panama City','pa',115,'PAB',590,507,0,1,2,0,'Panamá','Panama',0),(165,0,0,'PE','PER',604,16,5,'República del Perú','Republic of Peru','Lima','pe',116,'PEN',604,51,0,1,2,0,'Perú','Peru',0),(166,0,0,'PF','PYF',258,28,61,'Polynésie française','French Polynesia','Papeete','pf',165,'XPF',953,689,0,0,1,0,'Polynésie française','French Polynesia',0),(167,0,0,'PG','PNG',598,26,54,'Independent State of Papua New Guinea / Papua Niugini','Independent State of Papua New Guinea','Port Moresby','pg',117,'PGK',598,675,0,1,1,0,'Papua New Guinea  / Papua Niugini','Papua New Guinea',0),(168,0,0,'PH','PHL',608,7,35,'Republika ng Pilipinas / Republic of the Philippines','Republic of the Philippines','Manila','ph',118,'PHP',608,63,0,1,2,0,'Philippines','Philippines',0),(169,0,0,'PK','PAK',586,30,34,'Islamic Republic of Pakistan / اسلامی جمہوریۂ پاکستان','Islamic Republic of Pakistan','Islamabad','pk',119,'PKR',586,92,0,1,1,0,'پاکستان','Pakistan',0),(170,0,0,'PL','POL',616,11,151,'Rzeczpospolita Polska','Republic of Poland','Warsaw','pl',120,'PLN',985,48,1,1,1,0,'Polska','Poland',16),(171,0,0,'PM','SPM',666,18,21,'Saint-Pierre-et-Miquelon','Saint Pierre and Miquelon','Saint-Pierre','pm',49,'EUR',978,508,0,0,1,0,'Saint-Pierre-et-Miquelon','Saint Pierre and Miquelon',0),(172,0,0,'PN','PCN',612,28,61,'Pitcairn Islands','Pitcairn Islands','Adamstown','pn',113,'NZD',554,0,0,0,1,0,'Pitcairn Islands','Pitcairn Islands',0),(173,0,0,'PR','PRI',630,19,29,'Estado Libre Asociado de Puerto Rico / Commonwealth of Puerto Rico','Commonwealth of Puerto Rico','San Juan','pr',155,'USD',840,1787,0,0,2,0,'Puerto Rico','Puerto Rico',0),(174,0,0,'PT','PRT',620,10,39,'República Portuguesa','Portuguese Republic','Lisbon','pt',49,'EUR',978,351,1,1,1,0,'Portugal','Portugal',0),(175,0,0,'PW','PLW',585,27,57,'Belu\'u era Belau / Republic of Palau','Republic of Palau','Koror','pw',155,'USD',840,680,0,1,1,0,'Belau / Palau','Palau',0),(176,0,0,'PY','PRY',600,16,5,'República del Paraguay / Tetä Paraguáype','Republic of Paraguay','Asunción','py',121,'PYG',600,595,0,1,1,0,'Paraguay','Paraguay',0),(177,0,0,'QA','QAT',634,9,145,'دولة قطر','State of Qatar','Doha','qa',122,'QAR',634,974,0,1,1,0,'قطر','Qatar',0),(178,0,0,'RE','REU',638,21,14,'Département de la Réunion','Department of Réunion','Saint-Denis','re',49,'EUR',978,262,0,0,1,0,'Réunion','Reunion',0),(179,0,0,'RO','ROU',642,11,151,'România','Romania','Bucharest','ro',179,'RON',946,40,1,1,1,0,'România','Romania',0),(180,0,0,'RU','RUS',643,11,151,'Российская Федерация','Russian Federation','Moscow','ru',124,'RUB',643,7,0,1,1,0,'Росси́я','Russia',0),(181,0,0,'RW','RWA',646,21,14,'Repubulika y\'u Rwanda / République Rwandaise','Republic of Rwanda','Kigali','rw',126,'RWF',646,250,0,1,1,0,'Rwanda','Rwanda',0),(182,0,0,'SA','SAU',682,9,145,'المملكة العربية السعودية','Kingdom of Saudi Arabia','Riyadh','sa',127,'SAR',682,966,0,1,2,0,'السعودية','Saudi Arabia',0),(183,0,0,'SB','SLB',90,26,54,'Solomon Islands','Solomon Islands','Honiara','sb',128,'SBD',90,677,0,1,1,0,'Solomon Islands','Solomon Islands',0),(184,0,0,'SC','SYC',690,21,14,'Repiblik Sesel / Republic of Seychelles / République des Seychelles','Republic of Seychelles','Victoria','sc',129,'SCR',690,248,0,1,1,0,'Seychelles','Seychelles',0),(185,0,0,'SD','SDN',729,22,15,'جمهورية السودان','Republic of the Sudan','Khartoum','sd',130,'SDG',938,249,0,1,1,0,'السودان','Sudan',0),(186,0,0,'SE','SWE',752,12,154,'Konungariket Sverige','Kingdom of Sweden','Stockholm','se',131,'SEK',752,46,1,1,1,0,'Sverige','Sweden',0),(187,0,0,'SG','SGP',702,7,35,'Republic of Singapore / 新加坡共和国 / Republik Singapura / சிங்கப்பூர் குடியரசு','Republic of Singapore','Singapore','sg',132,'SGD',702,65,0,1,2,0,'Singapore','Singapore',0),(188,0,0,'SH','SHN',654,20,11,'Saint Helena, Ascension and Tristan da Cunha','Saint Helena, Ascension and Tristan da Cunha','Jamestown','sh',133,'SHP',654,290,0,0,1,0,'Saint Helena, Ascension and Tristan da Cunha','Saint Helena, Ascension and Tristan da Cunha',0),(189,0,0,'SI','SVN',705,10,39,'Republika Slovenija','Republic of Slovenia','Ljubljana','si',49,'EUR',978,386,1,1,1,0,'Slovenija','Slovenia',0),(190,0,0,'SJ','SJM',744,12,154,'Svalbard','Svalbard','Longyearbyen','sj',111,'NOK',578,47,0,0,1,0,'Svalbard','Svalbard',0),(191,0,0,'SK','SVK',703,11,151,'Slovenská republika','Slovak Republic','Bratislava','sk',49,'EUR',978,421,1,1,1,0,'Slovensko','Slovakia',0),(192,0,0,'SL','SLE',694,20,11,'Republic of Sierra Leone','Republic of Sierra Leone','Freetown','sl',136,'SLL',694,232,0,1,1,0,'Sierra Leone','Sierra Leone',0),(193,0,0,'SM','SMR',674,10,39,'Serenissima Repubblica di San Marino','Most Serene Republic of San Marino','San Marino','sm',49,'EUR',978,378,0,1,1,0,'San Marino','San Marino',0),(194,0,0,'SN','SEN',686,20,11,'République de Sénégal','Republic of Senegal','Dakar','sn',164,'XOF',952,221,0,1,1,0,'Sénégal','Senegal',0),(195,0,0,'SO','SOM',706,21,14,'Soomaaliya','Federal Republic of Somalia','Mogadishu','so',137,'SOS',706,252,0,1,1,0,'Soomaaliya','Somalia',0),(196,0,0,'SR','SUR',740,16,5,'Republiek Suriname','Republic of Surinam','Paramaribo','sr',174,'SRD',968,597,0,1,1,0,'Suriname','Suriname',0),(197,0,0,'ST','STP',678,23,17,'República Democrática de São Tomé e Príncipe','Democratic Republic of São Tomé e Príncipe','São Tomé','st',139,'STD',678,239,0,1,1,0,'São Tomé e Príncipe','São Tomé e Príncipe',0),(198,0,0,'SV','SLV',222,17,13,'República de El Salvador','Republic of El Salvador','San Salvador','sv',140,'SVC',222,503,0,1,1,0,'El Salvador','El Salvador',0),(199,0,0,'SY','SYR',760,9,145,'الجمهوريّة العربيّة السّوريّة','Syrian Arab Republic','Damascus','sy',141,'SYP',760,963,0,1,1,0,'سوري','Syria',0),(200,0,0,'SZ','SWZ',748,24,18,'Umboso weSwatini / Kingdom of Eswatini','Kingdom of Eswatini','Mbabane','sz',142,'SZL',748,268,0,1,1,0,'eSwatini','Eswatini',0),(201,0,0,'TC','TCA',796,19,29,'Turks and Caicos Islands','Turks and Caicos Islands','Cockburn Town','tc',155,'USD',840,1649,0,0,1,0,'Turks and Caicos Islands','Turks and Caicos Islands',0),(202,0,0,'TD','TCD',148,23,17,'جمهورية تشاد / République du Tchad','Republic of Chad','N\'Djamena','td',162,'XAF',950,235,0,1,1,0,'تشاد / Tchad','Chad',0),(203,0,0,'TF','ATF',260,0,0,'Terres australes françaises','French Southern Territories','','tf',49,'EUR',978,0,0,0,0,0,'Terres australes françaises','French Southern Territories',0),(204,0,0,'TG','TGO',768,20,11,'République Togolaise','Republic of Togo','Lomé','tg',164,'XOF',952,228,0,1,1,0,'Togo','Togo',0),(205,0,0,'TH','THA',764,7,35,'ราชอาณาจักรไทย','Kingdom of Thailand','Bangkok','th',143,'THB',764,66,0,1,2,0,'ไทย','Thailand',0),(206,0,0,'TJ','TJK',762,8,143,'Ҷумҳурии Тоҷикистон','Republic of Tajikistan','Dushanbe','tj',144,'TJS',972,992,0,1,1,0,'Тоҷикистон','Tajikistan',0),(207,0,0,'TK','TKL',772,28,61,'Tokelau','Tokelau','Fakaofo','tk',113,'NZD',554,0,0,0,1,0,'Tokelau','Tokelau',0),(208,0,0,'TM','TKM',795,8,143,'Türkmenistan Jumhuriyäti','Republic of Turkmenistan','Ashgabat','tm',180,'TMT',934,993,0,1,1,0,'Türkmenistan','Turkmenistan',0),(209,0,0,'TN','TUN',788,22,15,'الجمهورية التونسية','Republic of Tunisia','Tunis','tn',146,'TND',788,216,0,1,1,0,'التونسية','Tunisia',0),(210,0,0,'TO','TON',776,28,61,'Pule\'anga Fakatu\'i \'o Tonga / Kingdom of Tonga','Kingdom of Tonga','Nuku\'alofa','to',147,'TOP',776,676,0,1,1,0,'Tonga','Tonga',0),(211,0,0,'TL','TLS',626,7,35,'Repúblika Demokrátika Timor Lorosa\'e / República Democrática de Timor-Leste','Democratic Republic of Timor-Leste','Dili','tp',155,'USD',840,670,0,1,1,0,'Timor Lorosa\'e','Timor-Leste',0),(212,0,0,'TR','TUR',792,9,145,'Türkiye Cumhuriyeti','Republic of Turkey','Ankara','tr',175,'TRY',949,90,0,1,1,0,'Türkiye','Turkey',0),(213,0,0,'TT','TTO',780,19,29,'Republic of Trinidad and Tobago','Republic of Trinidad and Tobago','Port of Spain','tt',150,'TTD',780,1868,0,1,1,0,'Trinidad and Tobago','Trinidad and Tobago',0),(214,0,0,'TV','TUV',798,28,61,'Tuvalu','Tuvalu','Fongafale','tv',9,'AUD',36,688,0,1,1,0,'Tuvalu','Tuvalu',0),(215,0,0,'TW','TWN',158,6,30,'中華民國','Republic of China','Taipei','tw',151,'TWD',901,886,0,0,1,0,'中華','Taiwan',0),(216,0,0,'TZ','TZA',834,21,14,'Jamhuri ya Muungano wa Tanzania','United Republic of Tanzania','Dodoma','tz',152,'TZS',834,255,0,1,1,0,'Tanzania','Tanzania',0),(217,0,0,'UA','UKR',804,11,151,'Україна','Ukraine','Kiev','ua',153,'UAH',980,380,0,1,1,0,'Україна','Ukraine',0),(218,0,0,'UG','UGA',800,21,14,'Republic of Uganda','Republic of Uganda','Kampala','ug',154,'UGX',800,256,0,1,1,0,'Uganda','Uganda',0),(219,0,0,'UM','UMI',581,0,0,'United States Minor Outlying Islands','United States Minor Outlying Islands','','um',155,'USD',840,0,0,0,0,0,'United States Minor Outlying Islands','United States Minor Outlying Islands',0),(220,0,0,'US','USA',840,18,21,'United States of America','United States of America','Washington DC','us',155,'USD',840,1,0,1,3,1,'United States','United States',53),(221,0,0,'UY','URY',858,16,5,'República Oriental del Uruguay','Eastern Republic of Uruguay','Montevideo','uy',156,'UYU',858,598,0,1,1,0,'Uruguay','Uruguay',0),(222,0,0,'UZ','UZB',860,8,143,'O‘zbekiston Respublikasi','Republic of Uzbekistan','Tashkent','uz',157,'UZS',860,998,0,1,1,0,'O‘zbekiston','Uzbekistan',0),(223,0,0,'VA','VAT',336,10,39,'Status Civitatis Vaticanae / Città del Vaticano','Vatican City','Vatican City','va',49,'EUR',978,396,0,0,1,0,'Vaticano','Vatican City',0),(224,0,0,'VC','VCT',670,19,29,'Saint Vincent and the Grenadines','Saint Vincent and the Grenadines','Kingstown','vc',163,'XCD',951,1784,0,1,1,0,'Saint Vincent and the Grenadines','Saint Vincent and the Grenadines',0),(225,0,0,'VE','VEN',862,16,5,'República Bolivariana de Venezuela','Bolivarian Republic of Venezuela','Caracas','ve',158,'VEF',937,58,0,1,1,0,'Venezuela','Venezuela',0),(226,0,0,'VG','VGB',92,19,29,'British Virgin Islands','British Virgin Islands','Road Town','vg',155,'USD',840,1284,0,0,1,0,'British Virgin Islands','British Virgin Islands',0),(227,0,0,'VI','VIR',850,19,29,'United States Virgin Islands','United States Virgin Islands','Charlotte Amalie','vi',155,'USD',840,1340,0,0,1,0,'US Virgin Islands','US Virgin Islands',0),(228,0,0,'VN','VNM',704,7,35,'Cộng Hòa Xã Hội Chủ Nghĩa Việt Nam','Socialist Republic of Vietnam','Hanoi','vn',159,'VND',704,84,0,1,1,0,'Việt Nam','Vietnam',0),(229,0,0,'VU','VUT',548,26,54,'Ripablik blong Vanuatu / Republic of Vanuatu / République du Vanuatu','Republic of Vanuatu','Port Vila','vu',160,'VUV',548,678,0,1,1,0,'Vanuatu','Vanuatu',0),(230,0,0,'WF','WLF',876,28,61,'Territoire de Wallis et Futuna','Territory of Wallis and Futuna Islands','Mata-Utu','wf',165,'XPF',953,681,0,0,1,0,'Wallis and Futuna','Wallis and Futuna',0),(231,0,0,'WS','WSM',882,28,61,'Malo Sa\'oloto Tuto\'atasi o Samoa / Independent State of Samoa','Independent State of Samoa','Apia','ws',161,'WST',882,685,0,1,1,0,'Samoa','Samoa',0),(232,0,0,'YE','YEM',887,9,145,'الجمهوريّة اليمنية','Republic of Yemen','San\'a','ye',166,'YER',886,967,0,1,1,0,'اليمنية','Yemen',0),(233,0,0,'YT','MYT',175,21,14,'Mayotte','Mayotte','Mamoudzou','yt',49,'EUR',978,269,0,0,0,0,'Mayotte','Mayotte',0),(235,0,0,'ZA','ZAF',710,24,18,'Republic of South Africa / Republiek van Suid-Afrika / Rephaboliki ya Afrika-Borwa','Republic of South Africa','Pretoria','za',168,'ZAR',710,27,0,1,2,0,'Afrika-Borwa','South Africa',0),(236,0,0,'ZM','ZMB',894,21,14,'Republic of Zambia','Republic of Zambia','Lusaka','zm',169,'ZMW',967,260,0,1,1,0,'Zambia','Zambia',0),(237,0,0,'ZW','ZWE',716,21,14,'Republic of Zimbabwe','Republic of Zimbabwe','Harare','zw',169,'ZMW',967,263,0,1,1,0,'Zimbabwe','Zimbabwe',0),(238,0,0,'PS','PSE',275,9,145,'دولة فلسطين','State of Palestine','','ps',0,'',0,0,0,0,0,0,'فلسطين','Palestine',0),(239,0,1,'CS','CSG',891,10,39,'Државна заједница Србија и Црна Гора','State Union of Serbia and Montenegro','Belgrade','cs',0,'CSD',891,381,0,1,0,0,'Србија и Црна Гора','Serbia and Montenegro',0),(240,0,0,'AX','ALA',248,12,154,'Landskapet Åland','Åland Islands','Mariehamn','ax',49,'EUR',978,35818,1,0,0,0,'Åland','Åland',0),(241,0,0,'HM','HMD',334,25,53,'Heard Island and McDonald Islands','Heard Island and McDonald Islands','','',9,'AUD',36,0,0,0,0,0,'Heard Island and McDonald Islands','Heard Island and McDonald Islands',0),(242,0,0,'ME','MNE',499,10,39,'Republike Crne Gore','Montenegro','Podgorica','me',49,'EUR',978,382,0,1,1,0,'Crna Gora','Montenegro',0),(243,0,0,'RS','SRB',688,10,39,'Republika Srbija','Republic of Serbia','Belgrade','rs',172,'RSD',941,381,0,1,1,0,'Srbija','Serbia',0),(244,0,0,'JE','JEY',832,12,154,'Bailiwick of Jersey','Bailiwick of Jersey','Saint Helier','je',52,'GBP',826,44,0,0,5,0,'Jersey','Jersey',0),(245,0,0,'GG','GGY',831,12,154,'Bailiwick of Guernsey','Bailiwick of Guernsey','Saint Peter Port','gg',52,'GBP',826,44,0,0,5,0,'Guernsey','Guernsey',0),(246,0,0,'IM','IMN',833,12,154,'Isle of Man / Ellan Vannin','Isle of Man','Douglas','im',52,'GBP',826,44,0,0,5,0,'Mann / Mannin','Isle of Man',0),(247,0,0,'MF','MAF',652,19,29,'Collectivité de Saint-Martin','Collectivity of Saint Martin','Marigot','fr',49,'EUR',978,590,0,0,1,0,'Saint-Martin','Saint Martin',0),(248,0,0,'BL','BLM',652,19,29,'Collectivité de Saint-Barthélemy','Collectivity of Saint Barthélemy','Gustavia','fr',49,'EUR',978,590,0,0,1,0,'Saint-Barthélemy','Saint Barthélemy',0),(249,0,0,'BQ','BES',535,19,29,'Bonaire, Sint Eustatius en Saba','Bonaire, Sint Eustatius and Saba','Oranjestad','bq',155,'USD',840,599,0,0,0,0,'Bonaire, Sint Eustatius en Saba','Bonaire, Sint Eustatius and Saba',0),(250,0,0,'CW','CUW',531,19,29,'Curaçao','Curaçao','Willemstad','cw',6,'ANG',532,599,0,0,0,0,'Curaçao','Curaçao',0),(251,0,0,'SX','SXM',534,19,29,'Sint Maarten','Sint Maarten','Philipsburg','sx',6,'ANG',532,599,0,0,0,0,'Sint Maarten','Sint Maarten',0),(252,0,0,'SS','SSD',728,22,15,'Republic of South Sudan','Republic of South Sudan','Juba','ss',176,'SSP',728,211,0,0,0,0,'South Sudan','South Sudan',0),(253,0,0,'XK','XKX',926,10,39,'Republika e Kosovës / Република Косово','Republic of Kosovo','Pristina','rs',49,'EUR',978,383,0,0,0,0,'Kosovo','Kosovo',0);
/*!40000 ALTER TABLE `static_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_country_zones`
--

DROP TABLE IF EXISTS `static_country_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_country_zones` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `zn_country_iso_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zn_country_iso_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zn_country_iso_nr` int(11) NOT NULL DEFAULT '0',
  `zn_code` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zn_name_local` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zn_name_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zn_country_uid` int(11) NOT NULL DEFAULT '0',
  `zn_country_table` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=710 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_country_zones`
--

LOCK TABLES `static_country_zones` WRITE;
/*!40000 ALTER TABLE `static_country_zones` DISABLE KEYS */;
INSERT INTO `static_country_zones` VALUES (1,0,0,'US','USA',840,'AL','Alabama','',220,'static_countries'),(2,0,0,'US','USA',840,'AK','Alaska','',220,'static_countries'),(4,0,0,'US','USA',840,'AZ','Arizona','',220,'static_countries'),(5,0,0,'US','USA',840,'AR','Arkansas','',220,'static_countries'),(12,0,0,'US','USA',840,'CA','California','',220,'static_countries'),(13,0,0,'US','USA',840,'CO','Colorado','',220,'static_countries'),(14,0,0,'US','USA',840,'CT','Connecticut','',220,'static_countries'),(15,0,0,'US','USA',840,'DE','Delaware','',220,'static_countries'),(16,0,0,'US','USA',840,'DC','District of Columbia','',220,'static_countries'),(18,0,0,'US','USA',840,'FL','Florida','',220,'static_countries'),(19,0,0,'US','USA',840,'GA','Georgia','',220,'static_countries'),(20,0,0,'US','USA',840,'GU','Guam','',220,'static_countries'),(21,0,0,'US','USA',840,'HI','Hawaii','',220,'static_countries'),(22,0,0,'US','USA',840,'ID','Idaho','',220,'static_countries'),(23,0,0,'US','USA',840,'IL','Illinois','',220,'static_countries'),(24,0,0,'US','USA',840,'IN','Indiana','',220,'static_countries'),(25,0,0,'US','USA',840,'IA','Iowa','',220,'static_countries'),(26,0,0,'US','USA',840,'KS','Kansas','',220,'static_countries'),(27,0,0,'US','USA',840,'KY','Kentucky','',220,'static_countries'),(28,0,0,'US','USA',840,'LA','Louisiana','',220,'static_countries'),(29,0,0,'US','USA',840,'ME','Maine','',220,'static_countries'),(31,0,0,'US','USA',840,'MD','Maryland','',220,'static_countries'),(32,0,0,'US','USA',840,'MA','Massachusetts','',220,'static_countries'),(33,0,0,'US','USA',840,'MI','Michigan','',220,'static_countries'),(34,0,0,'US','USA',840,'MN','Minnesota','',220,'static_countries'),(35,0,0,'US','USA',840,'MS','Mississippi','',220,'static_countries'),(36,0,0,'US','USA',840,'MO','Missouri','',220,'static_countries'),(37,0,0,'US','USA',840,'MT','Montana','',220,'static_countries'),(38,0,0,'US','USA',840,'NE','Nebraska','',220,'static_countries'),(39,0,0,'US','USA',840,'NV','Nevada','',220,'static_countries'),(40,0,0,'US','USA',840,'NH','New Hampshire','',220,'static_countries'),(41,0,0,'US','USA',840,'NJ','New Jersey','',220,'static_countries'),(42,0,0,'US','USA',840,'NM','New Mexico','',220,'static_countries'),(43,0,0,'US','USA',840,'NY','New York','',220,'static_countries'),(44,0,0,'US','USA',840,'NC','North Carolina','',220,'static_countries'),(45,0,0,'US','USA',840,'ND','North Dakota','',220,'static_countries'),(47,0,0,'US','USA',840,'OH','Ohio','',220,'static_countries'),(48,0,0,'US','USA',840,'OK','Oklahoma','',220,'static_countries'),(49,0,0,'US','USA',840,'OR','Oregon','',220,'static_countries'),(51,0,0,'US','USA',840,'PA','Pennsylvania','',220,'static_countries'),(52,0,0,'US','USA',840,'PR','Puerto Rico','',220,'static_countries'),(53,0,0,'US','USA',840,'RI','Rhode Island','',220,'static_countries'),(54,0,0,'US','USA',840,'SC','South Carolina','',220,'static_countries'),(55,0,0,'US','USA',840,'SD','South Dakota','',220,'static_countries'),(56,0,0,'US','USA',840,'TN','Tennessee','',220,'static_countries'),(57,0,0,'US','USA',840,'TX','Texas','',220,'static_countries'),(58,0,0,'US','USA',840,'UT','Utah','',220,'static_countries'),(59,0,0,'US','USA',840,'VT','Vermont','',220,'static_countries'),(61,0,0,'US','USA',840,'VA','Virginia','',220,'static_countries'),(62,0,0,'US','USA',840,'WA','Washington','',220,'static_countries'),(63,0,0,'US','USA',840,'WV','West Virginia','',220,'static_countries'),(64,0,0,'US','USA',840,'WI','Wisconsin','',220,'static_countries'),(65,0,0,'US','USA',840,'WY','Wyoming','',220,'static_countries'),(66,0,0,'CA','CAN',124,'AB','Alberta','',36,'static_countries'),(67,0,0,'CA','CAN',124,'BC','British Columbia','',36,'static_countries'),(68,0,0,'CA','CAN',124,'MB','Manitoba','',36,'static_countries'),(69,0,0,'CA','CAN',124,'NF','Newfoundland and Labrabor','',36,'static_countries'),(70,0,0,'CA','CAN',124,'NB','New Brunswick','',36,'static_countries'),(71,0,0,'CA','CAN',124,'NS','Nova Scotia','',36,'static_countries'),(72,0,0,'CA','CAN',124,'NT','Northwest Territories','',36,'static_countries'),(73,0,0,'CA','CAN',124,'NU','Nunavut','',36,'static_countries'),(74,0,0,'CA','CAN',124,'ON','Ontario','',36,'static_countries'),(75,0,0,'CA','CAN',124,'PE','Prince Edward Island','',36,'static_countries'),(76,0,0,'CA','CAN',124,'QC','Québec','Quebec',36,'static_countries'),(77,0,0,'CA','CAN',124,'SK','Saskatchewan','',36,'static_countries'),(78,0,0,'CA','CAN',124,'YT','Yukon Territory','',36,'static_countries'),(79,0,0,'DE','DEU',276,'NI','Niedersachsen','Lower Saxony',54,'static_countries'),(80,0,0,'DE','DEU',276,'BW','Baden-Württemberg','',54,'static_countries'),(81,0,0,'DE','DEU',276,'BY','Bayern','Bavaria',54,'static_countries'),(82,0,0,'DE','DEU',276,'BE','Berlin','',54,'static_countries'),(83,0,0,'DE','DEU',276,'BB','Brandenburg','',54,'static_countries'),(84,0,0,'DE','DEU',276,'HB','Bremen','',54,'static_countries'),(85,0,0,'DE','DEU',276,'HH','Hamburg','',54,'static_countries'),(86,0,0,'DE','DEU',276,'HE','Hessen','Hesse',54,'static_countries'),(87,0,0,'DE','DEU',276,'MV','Mecklenburg-Vorpommern','Mecklenburg-Western Pomerania',54,'static_countries'),(88,0,0,'DE','DEU',276,'NW','Nordrhein-Westfalen','North Rhine-Westphalia',54,'static_countries'),(89,0,0,'DE','DEU',276,'RP','Rheinland-Pfalz','Rhineland-Palatinate',54,'static_countries'),(90,0,0,'DE','DEU',276,'SL','Saarland','',54,'static_countries'),(91,0,0,'DE','DEU',276,'SN','Sachsen','Saxony',54,'static_countries'),(92,0,0,'DE','DEU',276,'ST','Sachsen-Anhalt','Saxony-Anhalt',54,'static_countries'),(93,0,0,'DE','DEU',276,'SH','Schleswig-Holstein','',54,'static_countries'),(94,0,0,'DE','DEU',276,'TH','Thüringen','Thuringia',54,'static_countries'),(95,0,0,'AT','AUT',40,'9','Wien','Vienna',13,'static_countries'),(96,0,0,'AT','AUT',40,'3','Niederösterreich','Lower Austria',13,'static_countries'),(97,0,0,'AT','AUT',40,'4','Oberösterreich','Upper Austria',13,'static_countries'),(98,0,0,'AT','AUT',40,'5','Salzburg','',13,'static_countries'),(99,0,0,'AT','AUT',40,'2','Kärnten','Carinthia',13,'static_countries'),(100,0,0,'AT','AUT',40,'6','Steiermark','Styria',13,'static_countries'),(101,0,0,'AT','AUT',40,'7','Tirol','Tyrol',13,'static_countries'),(102,0,0,'AT','AUT',40,'1','Burgenland','',13,'static_countries'),(103,0,0,'AT','AUT',40,'8','Vorarlberg','',13,'static_countries'),(104,0,0,'CH','CHE',756,'AG','Aargau','Aargau',41,'static_countries'),(105,0,0,'CH','CHE',756,'AI','Appenzell Innerrhoden','Appenzell Innerrhoden',41,'static_countries'),(106,0,0,'CH','CHE',756,'AR','Appenzell Ausserrhoden','Appenzell Ausserrhoden',41,'static_countries'),(107,0,0,'CH','CHE',756,'BE','Bern','Bern',41,'static_countries'),(108,0,0,'CH','CHE',756,'BL','Basel-Landschaft','Basel Landschaft',41,'static_countries'),(109,0,0,'CH','CHE',756,'BS','Basel-Stadt','Basel Stadt',41,'static_countries'),(110,0,0,'CH','CHE',756,'FR','Fribourg','Fribourg',41,'static_countries'),(111,0,0,'CH','CHE',756,'GE','Genève','Geneva',41,'static_countries'),(112,0,0,'CH','CHE',756,'GL','Glarus','Glarus',41,'static_countries'),(113,0,0,'CH','CHE',756,'GR','Graubünden','Graubünden',41,'static_countries'),(114,0,0,'CH','CHE',756,'JU','Jura','Jura',41,'static_countries'),(115,0,0,'CH','CHE',756,'LU','Luzern','Lucerne',41,'static_countries'),(116,0,0,'CH','CHE',756,'NE','Neuchâtel','Neuchâtel',41,'static_countries'),(117,0,0,'CH','CHE',756,'NW','Nidwalden','Nidwalden',41,'static_countries'),(118,0,0,'CH','CHE',756,'OW','Obwalden','Obwalden',41,'static_countries'),(119,0,0,'CH','CHE',756,'SG','St. Gallen','St. Gallen',41,'static_countries'),(120,0,0,'CH','CHE',756,'SH','Schaffhausen','Schaffhausen',41,'static_countries'),(121,0,0,'CH','CHE',756,'SO','Solothurn','Solothurn',41,'static_countries'),(122,0,0,'CH','CHE',756,'SZ','Schwyz','Schwyz',41,'static_countries'),(123,0,0,'CH','CHE',756,'TG','Thurgau','Thurgau',41,'static_countries'),(124,0,0,'CH','CHE',756,'TI','Ticino','Ticino',41,'static_countries'),(125,0,0,'CH','CHE',756,'UR','Uri','Uri',41,'static_countries'),(126,0,0,'CH','CHE',756,'VD','Vaud','Vaud',41,'static_countries'),(127,0,0,'CH','CHE',756,'VS','Valais','Valais',41,'static_countries'),(128,0,0,'CH','CHE',756,'ZG','Zug','Zug',41,'static_countries'),(129,0,0,'CH','CHE',756,'ZH','Zürich','Zurich',41,'static_countries'),(130,0,0,'ES','ESP',724,'Alava','Alava','',65,'static_countries'),(131,0,0,'ES','ESP',724,'Malaga','Malaga','',65,'static_countries'),(132,0,0,'ES','ESP',724,'Segovia','Segovia','',65,'static_countries'),(133,0,0,'ES','ESP',724,'Granada','Granada','',65,'static_countries'),(134,0,0,'ES','ESP',724,'Jaen','Jaen','',65,'static_countries'),(135,0,0,'ES','ESP',724,'Sevilla','Sevilla','',65,'static_countries'),(136,0,0,'ES','ESP',724,'Barcelona','Barcelona','',65,'static_countries'),(137,0,0,'ES','ESP',724,'Valencia','Valencia','',65,'static_countries'),(138,0,0,'ES','ESP',724,'Albacete','Albacete','',65,'static_countries'),(139,0,0,'ES','ESP',724,'Alicante','Alicante','',65,'static_countries'),(140,0,0,'ES','ESP',724,'Almeria','Almeria','',65,'static_countries'),(141,0,0,'ES','ESP',724,'Asturias','Asturias','',65,'static_countries'),(142,0,0,'ES','ESP',724,'Avila','Avila','',65,'static_countries'),(143,0,0,'ES','ESP',724,'Badajoz','Badajoz','',65,'static_countries'),(144,0,0,'ES','ESP',724,'Burgos','Burgos','',65,'static_countries'),(145,0,0,'ES','ESP',724,'Caceres','Caceres','',65,'static_countries'),(146,0,0,'ES','ESP',724,'Cadiz','Cadiz','',65,'static_countries'),(147,0,0,'ES','ESP',724,'Cantabria','Cantabria','',65,'static_countries'),(148,0,0,'ES','ESP',724,'Castellon','Castellon','',65,'static_countries'),(149,0,0,'ES','ESP',724,'Ceuta','Ceuta','',65,'static_countries'),(150,0,0,'ES','ESP',724,'Ciudad Real','Ciudad Real','',65,'static_countries'),(151,0,0,'ES','ESP',724,'Cordoba','Cordoba','',65,'static_countries'),(152,0,0,'ES','ESP',724,'Cuenca','Cuenca','',65,'static_countries'),(153,0,0,'ES','ESP',724,'Girona','Girona','',65,'static_countries'),(154,0,0,'ES','ESP',724,'Las Palmas','Las Palmas','',65,'static_countries'),(155,0,0,'ES','ESP',724,'Guadalajara','Guadalajara','',65,'static_countries'),(156,0,0,'ES','ESP',724,'Guipuzcoa','Guipuzcoa','',65,'static_countries'),(157,0,0,'ES','ESP',724,'Huelva','Huelva','',65,'static_countries'),(158,0,0,'ES','ESP',724,'Huesca','Huesca','',65,'static_countries'),(159,0,0,'ES','ESP',724,'A Coruña','A Coruña','',65,'static_countries'),(160,0,0,'ES','ESP',724,'La Rioja','La Rioja','',65,'static_countries'),(161,0,0,'ES','ESP',724,'Leon','Leon','',65,'static_countries'),(162,0,0,'ES','ESP',724,'Lugo','Lugo','',65,'static_countries'),(163,0,0,'ES','ESP',724,'Lleida','Lleida','',65,'static_countries'),(164,0,0,'ES','ESP',724,'Madrid','Madrid','',65,'static_countries'),(165,0,0,'ES','ESP',724,'Baleares','Baleares','',65,'static_countries'),(166,0,0,'ES','ESP',724,'Murcia','Murcia','',65,'static_countries'),(167,0,0,'ES','ESP',724,'Navarra','Navarra','',65,'static_countries'),(168,0,0,'ES','ESP',724,'Ourense','Ourense','',65,'static_countries'),(169,0,0,'ES','ESP',724,'Palencia','Palencia','',65,'static_countries'),(170,0,0,'ES','ESP',724,'Pontevedra','Pontevedra','',65,'static_countries'),(171,0,0,'ES','ESP',724,'Salamanca','Salamanca','',65,'static_countries'),(172,0,0,'ES','ESP',724,'Soria','Soria','',65,'static_countries'),(173,0,0,'ES','ESP',724,'Tarragona','Tarragona','',65,'static_countries'),(174,0,0,'ES','ESP',724,'Tenerife','Tenerife','',65,'static_countries'),(175,0,0,'ES','ESP',724,'Teruel','Teruel','',65,'static_countries'),(176,0,0,'ES','ESP',724,'Toledo','Toledo','',65,'static_countries'),(177,0,0,'ES','ESP',724,'Valladolid','Valladolid','',65,'static_countries'),(178,0,0,'ES','ESP',724,'Vizcaya','Vizcaya','',65,'static_countries'),(179,0,0,'ES','ESP',724,'Zamora','Zamora','',65,'static_countries'),(180,0,0,'ES','ESP',724,'Zaragoza','Zaragoza','',65,'static_countries'),(181,0,0,'ES','ESP',724,'Melilla','Melilla','',65,'static_countries'),(182,0,0,'MX','MEX',484,'AGS','Aguascalientes','',148,'static_countries'),(183,0,0,'MX','MEX',484,'BCS','Baja California Sur','',148,'static_countries'),(184,0,0,'MX','MEX',484,'BC','Baja California Norte','',148,'static_countries'),(185,0,0,'MX','MEX',484,'CAM','Campeche','',148,'static_countries'),(186,0,0,'MX','MEX',484,'CHIS','Chiapas','',148,'static_countries'),(187,0,0,'MX','MEX',484,'CHIH','Chihuahua','',148,'static_countries'),(188,0,0,'MX','MEX',484,'COAH','Coahuila','',148,'static_countries'),(189,0,0,'MX','MEX',484,'COL','Colima','',148,'static_countries'),(190,0,0,'MX','MEX',484,'DIF','Distrito Federal','',148,'static_countries'),(191,0,0,'MX','MEX',484,'DGO','Durango','',148,'static_countries'),(192,0,0,'MX','MEX',484,'GTO','Guanajuato','',148,'static_countries'),(193,0,0,'MX','MEX',484,'GRO','Guerrero','',148,'static_countries'),(194,0,0,'MX','MEX',484,'HGO','Hidalgo','',148,'static_countries'),(195,0,0,'MX','MEX',484,'JAL','Jalisco','',148,'static_countries'),(196,0,0,'MX','MEX',484,'MEX','México','',148,'static_countries'),(197,0,0,'MX','MEX',484,'MICH','Michoacán','',148,'static_countries'),(198,0,0,'MX','MEX',484,'MOR','Morelos','',148,'static_countries'),(199,0,0,'MX','MEX',484,'NAY','Nayarit','',148,'static_countries'),(200,0,0,'MX','MEX',484,'NL','Nuevo León','',148,'static_countries'),(201,0,0,'MX','MEX',484,'OAX','Oaxaca','',148,'static_countries'),(202,0,0,'MX','MEX',484,'PUE','Puebla','',148,'static_countries'),(203,0,0,'MX','MEX',484,'QRO','Querétaro','',148,'static_countries'),(204,0,0,'MX','MEX',484,'QROO','Quintana Roo','',148,'static_countries'),(205,0,0,'MX','MEX',484,'SLP','San Luis Potosí','',148,'static_countries'),(206,0,0,'MX','MEX',484,'SIN','Sinaloa','',148,'static_countries'),(207,0,0,'MX','MEX',484,'SON','Sonora','',148,'static_countries'),(208,0,0,'MX','MEX',484,'TAB','Tabasco','',148,'static_countries'),(209,0,0,'MX','MEX',484,'TAMPS','Tamaulipas','',148,'static_countries'),(210,0,0,'MX','MEX',484,'TLAX','Tlaxcala','',148,'static_countries'),(211,0,0,'MX','MEX',484,'VER','Veracruz','',148,'static_countries'),(212,0,0,'MX','MEX',484,'YUC','Yucatán','',148,'static_countries'),(213,0,0,'MX','MEX',484,'ZAC','Zacatecas','',148,'static_countries'),(214,0,0,'AU','AUS',36,'ACT','Australian Capital Territory','',14,'static_countries'),(215,0,0,'AU','AUS',36,'NSW','New South Wales','',14,'static_countries'),(216,0,0,'AU','AUS',36,'NT','Northern Territory','',14,'static_countries'),(217,0,0,'AU','AUS',36,'QLD','Queensland','',14,'static_countries'),(218,0,0,'AU','AUS',36,'SA','South Australia','',14,'static_countries'),(219,0,0,'AU','AUS',36,'TAS','Tasmania','',14,'static_countries'),(220,0,0,'AU','AUS',36,'VIC','Victoria','',14,'static_countries'),(221,0,0,'AU','AUS',36,'WA','Western Australia','',14,'static_countries'),(222,0,0,'IT','ITA',380,'AG','Agrigento','',104,'static_countries'),(223,0,0,'IT','ITA',380,'AL','Alessandria','',104,'static_countries'),(224,0,0,'IT','ITA',380,'AN','Ancona','',104,'static_countries'),(225,0,0,'IT','ITA',380,'AO','Aosta','',104,'static_countries'),(226,0,0,'IT','ITA',380,'AP','Ascoli Piceno','',104,'static_countries'),(227,0,0,'IT','ITA',380,'AQ','L\'Aquila','',104,'static_countries'),(228,0,0,'IT','ITA',380,'AR','Arezzo','',104,'static_countries'),(229,0,0,'IT','ITA',380,'AT','Asti','',104,'static_countries'),(230,0,0,'IT','ITA',380,'AV','Avellino','',104,'static_countries'),(231,0,0,'IT','ITA',380,'BA','Bari','',104,'static_countries'),(232,0,0,'IT','ITA',380,'BG','Bergamo','',104,'static_countries'),(233,0,0,'IT','ITA',380,'BI','Biella','',104,'static_countries'),(234,0,0,'IT','ITA',380,'BL','Belluno','',104,'static_countries'),(235,0,0,'IT','ITA',380,'BN','Benevento','',104,'static_countries'),(236,0,0,'IT','ITA',380,'BO','Bologna','',104,'static_countries'),(237,0,0,'IT','ITA',380,'BR','Brindisi','',104,'static_countries'),(238,0,0,'IT','ITA',380,'BS','Brescia','',104,'static_countries'),(239,0,0,'IT','ITA',380,'BT','Barletta-Andria-Trani','',104,'static_countries'),(240,0,0,'IT','ITA',380,'BZ','Bozen','',104,'static_countries'),(241,0,0,'IT','ITA',380,'CA','Cagliari','',104,'static_countries'),(242,0,0,'IT','ITA',380,'CB','Campobasso','',104,'static_countries'),(243,0,0,'IT','ITA',380,'CE','Caserta','',104,'static_countries'),(244,0,0,'IT','ITA',380,'CH','Chieti','',104,'static_countries'),(245,0,0,'IT','ITA',380,'CI','Carbonia-Iglesias','',104,'static_countries'),(246,0,0,'IT','ITA',380,'CL','Caltanissetta','',104,'static_countries'),(247,0,0,'IT','ITA',380,'CN','Cuneo','',104,'static_countries'),(248,0,0,'IT','ITA',380,'CO','Como','',104,'static_countries'),(249,0,0,'IT','ITA',380,'CR','Cremona','',104,'static_countries'),(250,0,0,'IT','ITA',380,'CS','Cosenza','',104,'static_countries'),(251,0,0,'IT','ITA',380,'CT','Catania','',104,'static_countries'),(252,0,0,'IT','ITA',380,'CZ','Catanzaro','',104,'static_countries'),(253,0,0,'IT','ITA',380,'EN','Enna','',104,'static_countries'),(254,0,0,'IT','ITA',380,'FE','Ferrara','',104,'static_countries'),(255,0,0,'IT','ITA',380,'FG','Foggia','',104,'static_countries'),(256,0,0,'IT','ITA',380,'FI','Firenze','Florence',104,'static_countries'),(257,0,0,'IT','ITA',380,'FM','Fermo','',104,'static_countries'),(258,0,0,'IT','ITA',380,'FC','Forlì-Cesena','',104,'static_countries'),(259,0,0,'IT','ITA',380,'FR','Frosinone','',104,'static_countries'),(260,0,0,'IT','ITA',380,'GE','Genova','',104,'static_countries'),(261,0,0,'IT','ITA',380,'GO','Gorizia','',104,'static_countries'),(262,0,0,'IT','ITA',380,'GR','Grosseto','',104,'static_countries'),(263,0,0,'IT','ITA',380,'IM','Imperia','',104,'static_countries'),(264,0,0,'IT','ITA',380,'IS','Isernia','',104,'static_countries'),(265,0,0,'IT','ITA',380,'KR','Crotone','',104,'static_countries'),(266,0,0,'IT','ITA',380,'LC','Lecco','',104,'static_countries'),(267,0,0,'IT','ITA',380,'LE','Lecce','',104,'static_countries'),(268,0,0,'IT','ITA',380,'LI','Livorno','',104,'static_countries'),(269,0,0,'IT','ITA',380,'LO','Lodi','',104,'static_countries'),(270,0,0,'IT','ITA',380,'LT','Latina','',104,'static_countries'),(271,0,0,'IT','ITA',380,'LU','Lucca','',104,'static_countries'),(272,0,0,'IT','ITA',380,'MB','Monza e Brianza','',104,'static_countries'),(273,0,0,'IT','ITA',380,'MC','Macerata','',104,'static_countries'),(274,0,0,'IT','ITA',380,'ME','Messina','',104,'static_countries'),(275,0,0,'IT','ITA',380,'MI','Milano','',104,'static_countries'),(276,0,0,'IT','ITA',380,'MN','Mantova','',104,'static_countries'),(277,0,0,'IT','ITA',380,'MO','Modena','',104,'static_countries'),(278,0,0,'IT','ITA',380,'MS','Massa Carrara','',104,'static_countries'),(279,0,0,'IT','ITA',380,'MT','Matera','',104,'static_countries'),(280,0,0,'IT','ITA',380,'NA','Napoli','Naples',104,'static_countries'),(281,0,0,'IT','ITA',380,'NO','Novara','',104,'static_countries'),(282,0,0,'IT','ITA',380,'NU','Nuoro','',104,'static_countries'),(283,0,0,'IT','ITA',380,'OG','Ogliastra','',104,'static_countries'),(284,0,0,'IT','ITA',380,'OR','Oristano','',104,'static_countries'),(285,0,0,'IT','ITA',380,'OT','Olbia-Tempio','',104,'static_countries'),(286,0,0,'IT','ITA',380,'PA','Palermo','',104,'static_countries'),(287,0,0,'IT','ITA',380,'PC','Piacenza','',104,'static_countries'),(288,0,0,'IT','ITA',380,'PD','Padova','',104,'static_countries'),(289,0,0,'IT','ITA',380,'PE','Pescara','',104,'static_countries'),(290,0,0,'IT','ITA',380,'PG','Perugia','',104,'static_countries'),(291,0,0,'IT','ITA',380,'PI','Pisa','',104,'static_countries'),(292,0,0,'IT','ITA',380,'PN','Pordenone','',104,'static_countries'),(293,0,0,'IT','ITA',380,'PR','Parma','',104,'static_countries'),(294,0,0,'IT','ITA',380,'PT','Pistoia','',104,'static_countries'),(295,0,0,'IT','ITA',380,'PU','Pesaro e Urbino','',104,'static_countries'),(296,0,0,'IT','ITA',380,'PV','Pavia','',104,'static_countries'),(297,0,0,'IT','ITA',380,'PO','Prato','',104,'static_countries'),(298,0,0,'IT','ITA',380,'PZ','Potenza','',104,'static_countries'),(299,0,0,'IT','ITA',380,'RA','Ravenna','',104,'static_countries'),(300,0,0,'IT','ITA',380,'RC','Reggio Calabria','',104,'static_countries'),(301,0,0,'IT','ITA',380,'RE','Reggio Emilia','',104,'static_countries'),(302,0,0,'IT','ITA',380,'RG','Ragusa','',104,'static_countries'),(303,0,0,'IT','ITA',380,'RI','Rieti','',104,'static_countries'),(304,0,0,'IT','ITA',380,'RM','Roma','Rome',104,'static_countries'),(305,0,0,'IT','ITA',380,'RN','Rimini','',104,'static_countries'),(306,0,0,'IT','ITA',380,'RO','Rovigo','',104,'static_countries'),(307,0,0,'IT','ITA',380,'SA','Salerno','',104,'static_countries'),(308,0,0,'IT','ITA',380,'SI','Siena','',104,'static_countries'),(309,0,0,'IT','ITA',380,'SO','Sondrio','',104,'static_countries'),(310,0,0,'IT','ITA',380,'SP','La Spezia','',104,'static_countries'),(311,0,0,'IT','ITA',380,'SR','Siracusa','',104,'static_countries'),(312,0,0,'IT','ITA',380,'SS','Sassari','',104,'static_countries'),(313,0,0,'IT','ITA',380,'SV','Savona','',104,'static_countries'),(314,0,0,'IT','ITA',380,'TA','Taranto','',104,'static_countries'),(315,0,0,'IT','ITA',380,'TE','Teramo','',104,'static_countries'),(316,0,0,'IT','ITA',380,'TN','Trento','',104,'static_countries'),(317,0,0,'IT','ITA',380,'TO','Torino','',104,'static_countries'),(318,0,0,'IT','ITA',380,'TP','Trapani','',104,'static_countries'),(319,0,0,'IT','ITA',380,'TR','Terni','',104,'static_countries'),(320,0,0,'IT','ITA',380,'TS','Trieste','',104,'static_countries'),(321,0,0,'IT','ITA',380,'TV','Treviso','',104,'static_countries'),(322,0,0,'IT','ITA',380,'UD','Udine','',104,'static_countries'),(323,0,0,'IT','ITA',380,'VA','Varese','',104,'static_countries'),(324,0,0,'IT','ITA',380,'VB','Verbano-Cusio-Ossola','',104,'static_countries'),(325,0,0,'IT','ITA',380,'VC','Vercelli','',104,'static_countries'),(326,0,0,'IT','ITA',380,'VE','Venezia','Venice',104,'static_countries'),(327,0,0,'IT','ITA',380,'VI','Vicenza','',104,'static_countries'),(328,0,0,'IT','ITA',380,'VR','Verona','',104,'static_countries'),(329,0,0,'IT','ITA',380,'VS','Medio Campidano','',104,'static_countries'),(330,0,0,'IT','ITA',380,'VT','Viterbo','',104,'static_countries'),(331,0,0,'IT','ITA',380,'VV','Vibo Valentia','',104,'static_countries'),(332,0,0,'GB','GBR',826,'ALD','Alderney','',74,'static_countries'),(333,0,0,'GB','GBR',826,'ARM','Armagh','',74,'static_countries'),(334,0,0,'GB','GBR',826,'ATM','Antrim','',74,'static_countries'),(335,0,0,'GB','GBR',826,'BDS','Borders','',74,'static_countries'),(336,0,0,'GB','GBR',826,'BFD','Bedfordshire','',74,'static_countries'),(337,0,0,'GB','GBR',826,'BIR','Birmingham','',74,'static_countries'),(338,0,0,'GB','GBR',826,'BLG','Blaenau Gwent','',74,'static_countries'),(339,0,0,'GB','GBR',826,'BRI','Bridgend','',74,'static_countries'),(340,0,0,'GB','GBR',826,'BRK','Berkshire','',74,'static_countries'),(341,0,0,'GB','GBR',826,'BRS','Bristol','',74,'static_countries'),(342,0,0,'GB','GBR',826,'BUX','Buckinghamshire','',74,'static_countries'),(343,0,0,'GB','GBR',826,'CAP','Caerphilly','',74,'static_countries'),(344,0,0,'GB','GBR',826,'CAR','Cardiff','',74,'static_countries'),(345,0,0,'GB','GBR',826,'CAS','Carmarthenshire','',74,'static_countries'),(346,0,0,'GB','GBR',826,'CBA','Cumbria','',74,'static_countries'),(347,0,0,'GB','GBR',826,'CBE','Cambridgeshire','',74,'static_countries'),(348,0,0,'GB','GBR',826,'CER','Ceredigion','',74,'static_countries'),(349,0,0,'GB','GBR',826,'CHI','Channel Islands','',74,'static_countries'),(350,0,0,'GB','GBR',826,'CHS','Cheshire','',74,'static_countries'),(351,0,0,'GB','GBR',826,'CLD','Clwyd','',74,'static_countries'),(352,0,0,'GB','GBR',826,'CNL','Cornwall','',74,'static_countries'),(353,0,0,'GB','GBR',826,'CON','Conway','',74,'static_countries'),(354,0,0,'GB','GBR',826,'CTR','Central','',74,'static_countries'),(355,0,0,'GB','GBR',826,'CVE','Cleveland','',74,'static_countries'),(356,0,0,'GB','GBR',826,'DEN','Denbighshire','',74,'static_countries'),(357,0,0,'GB','GBR',826,'DFD','Dyfed','',74,'static_countries'),(358,0,0,'GB','GBR',826,'DGL','Dumfries and Galloway','',74,'static_countries'),(359,0,0,'GB','GBR',826,'DHM','Durham','',74,'static_countries'),(360,0,0,'GB','GBR',826,'DOR','Dorset','',74,'static_countries'),(361,0,0,'GB','GBR',826,'DVN','Devon','',74,'static_countries'),(362,0,0,'GB','GBR',826,'DWN','Down','',74,'static_countries'),(363,0,0,'GB','GBR',826,'DYS','Derbyshire','',74,'static_countries'),(364,0,0,'GB','GBR',826,'ESX','Essex','',74,'static_countries'),(365,0,0,'GB','GBR',826,'FER','Fermanagh','',74,'static_countries'),(366,0,0,'GB','GBR',826,'FFE','Fife','',74,'static_countries'),(367,0,0,'GB','GBR',826,'FLI','Flintshire','',74,'static_countries'),(368,0,0,'GB','GBR',826,'FMH','County Fermanagh','',74,'static_countries'),(369,0,0,'GB','GBR',826,'GDD','Gwynedd','',74,'static_countries'),(370,0,0,'GB','GBR',826,'GLO','Gloucestershire','',74,'static_countries'),(371,0,0,'GB','GBR',826,'GLR','Gloucester','',74,'static_countries'),(372,0,0,'GB','GBR',826,'GNM','Mid Glamorgan','',74,'static_countries'),(373,0,0,'GB','GBR',826,'GNS','South Glamorgan','',74,'static_countries'),(374,0,0,'GB','GBR',826,'GNW','West Glamorgan','',74,'static_countries'),(375,0,0,'GB','GBR',826,'GRN','Grampian','',74,'static_countries'),(376,0,0,'GB','GBR',826,'GUR','Guernsey','',74,'static_countries'),(377,0,0,'GB','GBR',826,'GWT','Gwent','',74,'static_countries'),(378,0,0,'GB','GBR',826,'HBS','Humberside','',74,'static_countries'),(379,0,0,'GB','GBR',826,'HFD','Hertfordshire','',74,'static_countries'),(380,0,0,'GB','GBR',826,'HLD','Highlands','',74,'static_countries'),(381,0,0,'GB','GBR',826,'HPH','Hampshire','',74,'static_countries'),(382,0,0,'GB','GBR',826,'HWR','Hereford and Worcester','',74,'static_countries'),(383,0,0,'GB','GBR',826,'IOM','Isle of Man','',74,'static_countries'),(384,0,0,'GB','GBR',826,'IOW','Isle of Wight','',74,'static_countries'),(385,0,0,'GB','GBR',826,'ISL','Isle of Anglesey','',74,'static_countries'),(386,0,0,'GB','GBR',826,'JER','Jersey','',74,'static_countries'),(387,0,0,'GB','GBR',826,'KNT','Kent','',74,'static_countries'),(388,0,0,'GB','GBR',826,'LCN','Lincolnshire','',74,'static_countries'),(389,0,0,'GB','GBR',826,'LDN','Greater London','',74,'static_countries'),(390,0,0,'GB','GBR',826,'LDR','Londonderry','',74,'static_countries'),(391,0,0,'GB','GBR',826,'LEC','Leicestershire','',74,'static_countries'),(392,0,0,'GB','GBR',826,'LNH','Lancashire','',74,'static_countries'),(393,0,0,'GB','GBR',826,'LON','London','',74,'static_countries'),(394,0,0,'GB','GBR',826,'LTE','East Lothian','',74,'static_countries'),(395,0,0,'GB','GBR',826,'LTM','Mid Lothian','',74,'static_countries'),(396,0,0,'GB','GBR',826,'LTW','West Lothian','',74,'static_countries'),(397,0,0,'GB','GBR',826,'MCH','Greater Manchester','',74,'static_countries'),(398,0,0,'GB','GBR',826,'MER','Merthyr Tydfil','',74,'static_countries'),(399,0,0,'GB','GBR',826,'MON','Monmouthshire','',74,'static_countries'),(400,0,0,'GB','GBR',826,'MSY','Merseyside','',74,'static_countries'),(401,0,0,'GB','GBR',826,'NET','Neath Port Talbot','',74,'static_countries'),(402,0,0,'GB','GBR',826,'NEW','Newport','',74,'static_countries'),(403,0,0,'GB','GBR',826,'NHM','Northamptonshire','',74,'static_countries'),(404,0,0,'GB','GBR',826,'NLD','Northumberland','',74,'static_countries'),(405,0,0,'GB','GBR',826,'NOR','Norfolk','',74,'static_countries'),(406,0,0,'GB','GBR',826,'NOT','Nottinghamshire','',74,'static_countries'),(407,0,0,'GB','GBR',826,'NWH','North West Highlands','',74,'static_countries'),(408,0,0,'GB','GBR',826,'OFE','Oxfordshire','',74,'static_countries'),(409,0,0,'GB','GBR',826,'ORK','Orkney','',74,'static_countries'),(410,0,0,'GB','GBR',826,'PEM','Pembrokeshire','',74,'static_countries'),(411,0,0,'GB','GBR',826,'PWS','Powys','',74,'static_countries'),(412,0,0,'GB','GBR',826,'SCD','Strathclyde','',74,'static_countries'),(413,0,0,'GB','GBR',826,'SFD','Staffordshire','',74,'static_countries'),(414,0,0,'GB','GBR',826,'SFK','Suffolk','',74,'static_countries'),(415,0,0,'GB','GBR',826,'SLD','Shetland','',74,'static_countries'),(416,0,0,'GB','GBR',826,'SOM','Somerset','',74,'static_countries'),(417,0,0,'GB','GBR',826,'SPE','Shropshire','',74,'static_countries'),(418,0,0,'GB','GBR',826,'SRK','Sark','',74,'static_countries'),(419,0,0,'GB','GBR',826,'SRY','Surrey','',74,'static_countries'),(420,0,0,'GB','GBR',826,'SWA','Swansea','',74,'static_countries'),(421,0,0,'GB','GBR',826,'SXE','East Sussex','',74,'static_countries'),(422,0,0,'GB','GBR',826,'SXW','West Sussex','',74,'static_countries'),(423,0,0,'GB','GBR',826,'TAF','Rhondda Cynon Taff','',74,'static_countries'),(424,0,0,'GB','GBR',826,'TOR','Torfaen','',74,'static_countries'),(425,0,0,'GB','GBR',826,'TWR','Tyne and Wear','',74,'static_countries'),(426,0,0,'GB','GBR',826,'TYR','Tyrone','',74,'static_countries'),(427,0,0,'GB','GBR',826,'TYS','Tayside','',74,'static_countries'),(428,0,0,'GB','GBR',826,'VAL','Vale of Glamorgan','',74,'static_countries'),(429,0,0,'GB','GBR',826,'WIL','Western Isles','',74,'static_countries'),(430,0,0,'GB','GBR',826,'WKS','Warwickshire','',74,'static_countries'),(431,0,0,'GB','GBR',826,'WLT','Wiltshire','',74,'static_countries'),(432,0,0,'GB','GBR',826,'WMD','West Midlands','',74,'static_countries'),(433,0,0,'GB','GBR',826,'WRE','Wrexham','',74,'static_countries'),(434,0,0,'GB','GBR',826,'YSN','North Yorkshire','',74,'static_countries'),(435,0,0,'GB','GBR',826,'YSS','South Yorkshire','',74,'static_countries'),(436,0,0,'GB','GBR',826,'YSW','West Yorkshire','',74,'static_countries'),(460,0,0,'IE','IRL',372,'CAR','Carlow','',97,'static_countries'),(461,0,0,'IE','IRL',372,'CAV','Cavan','',97,'static_countries'),(462,0,0,'IE','IRL',372,'CLA','Clare','',97,'static_countries'),(463,0,0,'IE','IRL',372,'COR','Cork','',97,'static_countries'),(464,0,0,'IE','IRL',372,'DON','Donegal','',97,'static_countries'),(465,0,0,'IE','IRL',372,'DUB','Dublin','',97,'static_countries'),(466,0,0,'IE','IRL',372,'GAL','Galway','',97,'static_countries'),(467,0,0,'IE','IRL',372,'KER','Kerry','',97,'static_countries'),(468,0,0,'IE','IRL',372,'KIL','Kildare','',97,'static_countries'),(469,0,0,'IE','IRL',372,'KLK','Kilkenny','',97,'static_countries'),(470,0,0,'IE','IRL',372,'LAO','Laois','',97,'static_countries'),(471,0,0,'IE','IRL',372,'LEI','Leitrim','',97,'static_countries'),(472,0,0,'IE','IRL',372,'LIM','Limerick','',97,'static_countries'),(473,0,0,'IE','IRL',372,'LON','Longford','',97,'static_countries'),(474,0,0,'IE','IRL',372,'LOU','Louth','',97,'static_countries'),(475,0,0,'IE','IRL',372,'MAY','Mayo','',97,'static_countries'),(476,0,0,'IE','IRL',372,'MEA','Meath','',97,'static_countries'),(477,0,0,'IE','IRL',372,'MON','Monaghan','',97,'static_countries'),(478,0,0,'IE','IRL',372,'OFF','Offaly','',97,'static_countries'),(479,0,0,'IE','IRL',372,'ROS','Roscommon','',97,'static_countries'),(480,0,0,'IE','IRL',372,'SLI','Sligo','',97,'static_countries'),(481,0,0,'IE','IRL',372,'TIP','Tipperary','',97,'static_countries'),(482,0,0,'IE','IRL',372,'WAT','Waterford','',97,'static_countries'),(483,0,0,'IE','IRL',372,'WES','Westmeath','',97,'static_countries'),(484,0,0,'IE','IRL',372,'WEX','Wexford','',97,'static_countries'),(485,0,0,'IE','IRL',372,'WIC','Wicklow','',97,'static_countries'),(490,0,0,'BR','BRA',76,'AC','Acre','',29,'static_countries'),(491,0,0,'BR','BRA',76,'AP','Amapá','',29,'static_countries'),(492,0,0,'BR','BRA',76,'AL','Alagoas','',29,'static_countries'),(493,0,0,'BR','BRA',76,'AM','Amazonas','',29,'static_countries'),(494,0,0,'BR','BRA',76,'BA','Bahia','',29,'static_countries'),(495,0,0,'BR','BRA',76,'CE','Ceará','',29,'static_countries'),(496,0,0,'BR','BRA',76,'DF','Distrito Federal','',29,'static_countries'),(497,0,0,'BR','BRA',76,'ES','Espírito Santo','',29,'static_countries'),(498,0,0,'BR','BRA',76,'GO','Goiás','',29,'static_countries'),(499,0,0,'BR','BRA',76,'MA','Maranhão','',29,'static_countries'),(500,0,0,'BR','BRA',76,'MG','Minas Gerais','',29,'static_countries'),(501,0,0,'BR','BRA',76,'MS','Mato Grosso do Sul','',29,'static_countries'),(502,0,0,'BR','BRA',76,'MT','Mato Grosso','',29,'static_countries'),(503,0,0,'BR','BRA',76,'PA','Pará','',29,'static_countries'),(504,0,0,'BR','BRA',76,'PB','Paraíba','',29,'static_countries'),(505,0,0,'BR','BRA',76,'PE','Pernambuco','',29,'static_countries'),(506,0,0,'BR','BRA',76,'PI','Piauí','',29,'static_countries'),(507,0,0,'BR','BRA',76,'PR','Paraná','',29,'static_countries'),(508,0,0,'BR','BRA',76,'RJ','Rio de Janeiro','',29,'static_countries'),(509,0,0,'BR','BRA',76,'RN','Rio Grande do Norte','',29,'static_countries'),(510,0,0,'BR','BRA',76,'RO','Rondônia','',29,'static_countries'),(511,0,0,'BR','BRA',76,'RR','Roraima','',29,'static_countries'),(512,0,0,'BR','BRA',76,'RS','Rio Grande do Sul','',29,'static_countries'),(513,0,0,'BR','BRA',76,'SC','Santa Catarina','',29,'static_countries'),(514,0,0,'BR','BRA',76,'SE','Sergipe','',29,'static_countries'),(515,0,0,'BR','BRA',76,'SP','São Paulo','',29,'static_countries'),(516,0,0,'BR','BRA',76,'TO','Tocantins','',29,'static_countries'),(530,0,0,'NL','NLD',528,'DR','Drenthe','',157,'static_countries'),(531,0,0,'NL','NLD',528,'FL','Flevoland','',157,'static_countries'),(532,0,0,'NL','NLD',528,'FR','Friesland','',157,'static_countries'),(533,0,0,'NL','NLD',528,'GE','Gelderland','',157,'static_countries'),(534,0,0,'NL','NLD',528,'GR','Groningen','',157,'static_countries'),(535,0,0,'NL','NLD',528,'LI','Limburg','',157,'static_countries'),(536,0,0,'NL','NLD',528,'NB','Noord-Brabant','',157,'static_countries'),(537,0,0,'NL','NLD',528,'NH','Noord-Holland','',157,'static_countries'),(538,0,0,'NL','NLD',528,'OV','Overijssel','',157,'static_countries'),(539,0,0,'NL','NLD',528,'UT','Utrecht','',157,'static_countries'),(540,0,0,'NL','NLD',528,'ZH','Zuid-Holland','',157,'static_countries'),(541,0,0,'NL','NLD',528,'ZE','Zeeland','',157,'static_countries'),(542,0,0,'FR','FRA',250,'A','Alsace','',72,'static_countries'),(543,0,0,'FR','FRA',250,'B','Aquitaine','',72,'static_countries'),(544,0,0,'FR','FRA',250,'C','Auvergne','',72,'static_countries'),(545,0,0,'FR','FRA',250,'D','Bourgogne','',72,'static_countries'),(546,0,0,'FR','FRA',250,'E','Bretagne','',72,'static_countries'),(547,0,0,'FR','FRA',250,'F','Centre','',72,'static_countries'),(548,0,0,'FR','FRA',250,'G','Champagne-Ardenne','',72,'static_countries'),(549,0,0,'FR','FRA',250,'H','Corse','',72,'static_countries'),(550,0,0,'FR','FRA',250,'I','Franche-Comté','',72,'static_countries'),(551,0,0,'FR','FRA',250,'J','Île-de-France','',72,'static_countries'),(552,0,0,'FR','FRA',250,'K','Languedoc-Roussillon','',72,'static_countries'),(553,0,0,'FR','FRA',250,'L','Limousin','',72,'static_countries'),(554,0,0,'FR','FRA',250,'M','Lorraine','',72,'static_countries'),(555,0,0,'FR','FRA',250,'N','Midi-Pyrénées','',72,'static_countries'),(556,0,0,'FR','FRA',250,'O','Nord-Pas-de-Calais','',72,'static_countries'),(557,0,0,'FR','FRA',250,'P','Basse-Normandie','',72,'static_countries'),(558,0,0,'FR','FRA',250,'Q','Haute-Normandie','',72,'static_countries'),(559,0,0,'FR','FRA',250,'R','Pays de la Loire','',72,'static_countries'),(560,0,0,'FR','FRA',250,'S','Picardie','',72,'static_countries'),(561,0,0,'FR','FRA',250,'T','Poitou-Charentes','',72,'static_countries'),(562,0,0,'FR','FRA',250,'U','Provence-Alpes-Côte d\'Azur','',72,'static_countries'),(563,0,0,'FR','FRA',250,'V','Rhône-Alpes','',72,'static_countries'),(564,0,0,'FR','FRA',250,'01','Ain','',72,'static_countries'),(565,0,0,'FR','FRA',250,'02','Aisne','',72,'static_countries'),(566,0,0,'FR','FRA',250,'03','Allier','',72,'static_countries'),(567,0,0,'FR','FRA',250,'04','Alpes-de-Haute-Provence','',72,'static_countries'),(568,0,0,'FR','FRA',250,'05','Hautes-Alpes','',72,'static_countries'),(569,0,0,'FR','FRA',250,'06','Alpes-Maritimes','',72,'static_countries'),(570,0,0,'FR','FRA',250,'07','Ardèche','',72,'static_countries'),(571,0,0,'FR','FRA',250,'08','Ardennes','',72,'static_countries'),(572,0,0,'FR','FRA',250,'09','Ariège','',72,'static_countries'),(573,0,0,'FR','FRA',250,'10','Aube','',72,'static_countries'),(574,0,0,'FR','FRA',250,'11','Aude','',72,'static_countries'),(575,0,0,'FR','FRA',250,'12','Aveyron','',72,'static_countries'),(576,0,0,'FR','FRA',250,'13','Bouches-du-Rhône','',72,'static_countries'),(577,0,0,'FR','FRA',250,'14','Calvados','',72,'static_countries'),(578,0,0,'FR','FRA',250,'15','Cantal','',72,'static_countries'),(579,0,0,'FR','FRA',250,'16','Charente','',72,'static_countries'),(580,0,0,'FR','FRA',250,'17','Charente-Maritime','',72,'static_countries'),(581,0,0,'FR','FRA',250,'18','Cher','',72,'static_countries'),(582,0,0,'FR','FRA',250,'19','Corrèze','',72,'static_countries'),(583,0,0,'FR','FRA',250,'2A','Corse-du-Sud','',72,'static_countries'),(584,0,0,'FR','FRA',250,'2B','Haute-Corse','',72,'static_countries'),(585,0,0,'FR','FRA',250,'21','Côte-d\'Or','',72,'static_countries'),(586,0,0,'FR','FRA',250,'22','Côtes-d\'Armor','',72,'static_countries'),(587,0,0,'FR','FRA',250,'23','Creuse','',72,'static_countries'),(588,0,0,'FR','FRA',250,'24','Dordogne','',72,'static_countries'),(589,0,0,'FR','FRA',250,'25','Doubs','',72,'static_countries'),(590,0,0,'FR','FRA',250,'26','Drôme','',72,'static_countries'),(591,0,0,'FR','FRA',250,'27','Eure','',72,'static_countries'),(592,0,0,'FR','FRA',250,'28','Eure-et-Loir','',72,'static_countries'),(593,0,0,'FR','FRA',250,'29','Finistère','',72,'static_countries'),(594,0,0,'FR','FRA',250,'30','Gard','',72,'static_countries'),(595,0,0,'FR','FRA',250,'31','Haute-Garonne','',72,'static_countries'),(596,0,0,'FR','FRA',250,'32','Gers','',72,'static_countries'),(597,0,0,'FR','FRA',250,'33','Gironde','',72,'static_countries'),(598,0,0,'FR','FRA',250,'34','Hérault','',72,'static_countries'),(599,0,0,'FR','FRA',250,'35','Ille-et-Vilaine','',72,'static_countries'),(600,0,0,'FR','FRA',250,'36','Indre','',72,'static_countries'),(601,0,0,'FR','FRA',250,'37','Indre-et-Loire','',72,'static_countries'),(602,0,0,'FR','FRA',250,'38','Isère','',72,'static_countries'),(603,0,0,'FR','FRA',250,'39','Jura','',72,'static_countries'),(604,0,0,'FR','FRA',250,'40','Landes','',72,'static_countries'),(605,0,0,'FR','FRA',250,'41','Loir-et-Cher','',72,'static_countries'),(606,0,0,'FR','FRA',250,'42','Loire','',72,'static_countries'),(607,0,0,'FR','FRA',250,'43','Haute-Loire','',72,'static_countries'),(608,0,0,'FR','FRA',250,'44','Loire-Atlantique','',72,'static_countries'),(609,0,0,'FR','FRA',250,'45','Loiret','',72,'static_countries'),(610,0,0,'FR','FRA',250,'46','Lot','',72,'static_countries'),(611,0,0,'FR','FRA',250,'47','Lot-et-Garonne','',72,'static_countries'),(612,0,0,'FR','FRA',250,'48','Lozère','',72,'static_countries'),(613,0,0,'FR','FRA',250,'49','Maine-et-Loire','',72,'static_countries'),(614,0,0,'FR','FRA',250,'50','Manche','',72,'static_countries'),(615,0,0,'FR','FRA',250,'51','Marne','',72,'static_countries'),(616,0,0,'FR','FRA',250,'52','Haute-Marne','',72,'static_countries'),(617,0,0,'FR','FRA',250,'53','Mayenne','',72,'static_countries'),(618,0,0,'FR','FRA',250,'54','Meurthe-et-Moselle','',72,'static_countries'),(619,0,0,'FR','FRA',250,'55','Meuse','',72,'static_countries'),(620,0,0,'FR','FRA',250,'56','Morbihan','',72,'static_countries'),(621,0,0,'FR','FRA',250,'57','Moselle','',72,'static_countries'),(622,0,0,'FR','FRA',250,'58','Nièvre','',72,'static_countries'),(623,0,0,'FR','FRA',250,'59','Nord','',72,'static_countries'),(624,0,0,'FR','FRA',250,'60','Oise','',72,'static_countries'),(625,0,0,'FR','FRA',250,'61','Orne','',72,'static_countries'),(626,0,0,'FR','FRA',250,'62','Pas-de-Calais','',72,'static_countries'),(627,0,0,'FR','FRA',250,'63','Puy-de-Dôme','',72,'static_countries'),(628,0,0,'FR','FRA',250,'64','Pyrénées-Atlantiques','',72,'static_countries'),(629,0,0,'FR','FRA',250,'65','Hautes-Pyrénées','',72,'static_countries'),(630,0,0,'FR','FRA',250,'66','Pyrénées-Orientales','',72,'static_countries'),(631,0,0,'FR','FRA',250,'67','Bas-Rhin','',72,'static_countries'),(632,0,0,'FR','FRA',250,'68','Haut-Rhin','',72,'static_countries'),(633,0,0,'FR','FRA',250,'69','Rhône','',72,'static_countries'),(634,0,0,'FR','FRA',250,'70','Haute-Saône','',72,'static_countries'),(635,0,0,'FR','FRA',250,'71','Saône-et-Loire','',72,'static_countries'),(636,0,0,'FR','FRA',250,'72','Sarthe','',72,'static_countries'),(637,0,0,'FR','FRA',250,'73','Savoie','',72,'static_countries'),(638,0,0,'FR','FRA',250,'74','Haute-Savoie','',72,'static_countries'),(639,0,0,'FR','FRA',250,'75','Paris','',72,'static_countries'),(640,0,0,'FR','FRA',250,'76','Seine-Maritime','',72,'static_countries'),(641,0,0,'FR','FRA',250,'77','Seine-et-Marne','',72,'static_countries'),(642,0,0,'FR','FRA',250,'78','Yvelines','',72,'static_countries'),(643,0,0,'FR','FRA',250,'79','Deux-Sèvres','',72,'static_countries'),(644,0,0,'FR','FRA',250,'80','Somme','',72,'static_countries'),(645,0,0,'FR','FRA',250,'81','Tarn','',72,'static_countries'),(646,0,0,'FR','FRA',250,'82','Tarn-et-Garonne','',72,'static_countries'),(647,0,0,'FR','FRA',250,'83','Var','',72,'static_countries'),(648,0,0,'FR','FRA',250,'84','Vaucluse','',72,'static_countries'),(649,0,0,'FR','FRA',250,'85','Vendée','',72,'static_countries'),(650,0,0,'FR','FRA',250,'86','Vienne','',72,'static_countries'),(651,0,0,'FR','FRA',250,'87','Haute-Vienne','',72,'static_countries'),(652,0,0,'FR','FRA',250,'88','Vosges','',72,'static_countries'),(653,0,0,'FR','FRA',250,'89','Yonne','',72,'static_countries'),(654,0,0,'FR','FRA',250,'90','Territoire de Belfort','',72,'static_countries'),(655,0,0,'FR','FRA',250,'91','Essonne','',72,'static_countries'),(656,0,0,'FR','FRA',250,'92','Hauts-de-Seine','',72,'static_countries'),(657,0,0,'FR','FRA',250,'93','Seine-Saint-Denis','',72,'static_countries'),(658,0,0,'FR','FRA',250,'94','Val-de-Marne','',72,'static_countries'),(659,0,0,'FR','FRA',250,'95','Val-d\'Oise','',72,'static_countries'),(660,0,0,'FR','FRA',250,'GP','Guadeloupe','',72,'static_countries'),(661,0,0,'FR','FRA',250,'GF','Guyane française','French Guiana',72,'static_countries'),(662,0,0,'FR','FRA',250,'MQ','Martinique','Martinique',72,'static_countries'),(663,0,0,'FR','FRA',250,'RE','La Réunion','Réunion',72,'static_countries'),(664,0,0,'FR','FRA',250,'CP','Clipperton','',72,'static_countries'),(665,0,0,'FR','FRA',250,'YT','Mayotte','',72,'static_countries'),(666,0,0,'FR','FRA',250,'NC','Nouvelle-Calédonie','New Caledonia',72,'static_countries'),(667,0,0,'FR','FRA',250,'PF','Polynésie française','French Polynesia',72,'static_countries'),(668,0,0,'FR','FRA',250,'BL','Saint-Barthélemy','Saint Barthélemy',72,'static_countries'),(669,0,0,'FR','FRA',250,'MF','Saint-Martin','Saint Martin',72,'static_countries'),(670,0,0,'FR','FRA',250,'PM','Saint-Pierre-et-Miquelon','Saint Pierre and Miquelon',72,'static_countries'),(671,0,0,'FR','FRA',250,'TF','Terres australes françaises','French Southern Territories',72,'static_countries'),(672,0,0,'FR','FRA',250,'WF','Wallis-et-Futuna','Wallis and Futuna',72,'static_countries'),(673,0,0,'PL','POL',616,'DS','dolnośląskie','',170,'static_countries'),(674,0,0,'PL','POL',616,'KP','kujawsko-pomorskie','',170,'static_countries'),(675,0,0,'PL','POL',616,'LU','lubelskie','',170,'static_countries'),(676,0,0,'PL','POL',616,'LB','lubuskie','',170,'static_countries'),(677,0,0,'PL','POL',616,'LD','łódzkie','',170,'static_countries'),(678,0,0,'PL','POL',616,'MA','małopolskie','',170,'static_countries'),(679,0,0,'PL','POL',616,'MZ','mazowieckie','',170,'static_countries'),(680,0,0,'PL','POL',616,'OP','opolskie','',170,'static_countries'),(681,0,0,'PL','POL',616,'PK','podkarpackie','',170,'static_countries'),(682,0,0,'PL','POL',616,'PD','podlaskie','',170,'static_countries'),(683,0,0,'PL','POL',616,'PM','pomorskie','',170,'static_countries'),(684,0,0,'PL','POL',616,'SL','śląskie','',170,'static_countries'),(685,0,0,'PL','POL',616,'SK','świętokrzyskie','',170,'static_countries'),(686,0,0,'PL','POL',616,'WN','warmińsko-mazurskie','',170,'static_countries'),(687,0,0,'PL','POL',616,'WP','wielkopolskie','',170,'static_countries'),(688,0,0,'PL','POL',616,'ZP','zachodniopomorskie','',170,'static_countries'),(689,0,0,'HR','HRV',191,'21','Grad Zagreb','City of Zagreb',93,'static_countries'),(690,0,0,'HR','HRV',191,'07','Bjelovarsko-bilogorska županija','Bjelovar-Bilogora',93,'static_countries'),(691,0,0,'HR','HRV',191,'12','Brodsko-posavska županija','Brod-Posavina',93,'static_countries'),(692,0,0,'HR','HRV',191,'19','Dubrovačko-neretvanska županija','Dubrovnik-Neretva',93,'static_countries'),(693,0,0,'HR','HRV',191,'18','Istarska županija','Istria',93,'static_countries'),(694,0,0,'HR','HRV',191,'04','Karlovačka županija','Karlovac',93,'static_countries'),(695,0,0,'HR','HRV',191,'06','Koprivničko-križevačka županija','Koprivnica-Križevci',93,'static_countries'),(696,0,0,'HR','HRV',191,'02','Krapinsko-zagorska županija','Krapina-Zagorje',93,'static_countries'),(697,0,0,'HR','HRV',191,'09','Ličko-senjska županija','Lika-Senj',93,'static_countries'),(698,0,0,'HR','HRV',191,'20','Međimurska županija','Međimurje',93,'static_countries'),(699,0,0,'HR','HRV',191,'14','Osječko-baranjska županija','Osijek-Baranja',93,'static_countries'),(700,0,0,'HR','HRV',191,'11','Požeško-slavonska županija','Požega-Slavonia',93,'static_countries'),(701,0,0,'HR','HRV',191,'08','Primorsko-goranska županija','Primorje-Gorski Kotar',93,'static_countries'),(702,0,0,'HR','HRV',191,'03','Sisačko-moslavačka županija','Sisak-Moslavina',93,'static_countries'),(703,0,0,'HR','HRV',191,'17','Splitsko-dalmatinska županija','Split-Dalmatia',93,'static_countries'),(704,0,0,'HR','HRV',191,'15','Šibensko-kninska županija','Šibenik-Knin',93,'static_countries'),(705,0,0,'HR','HRV',191,'05','Varaždinska županija','Varaždin',93,'static_countries'),(706,0,0,'HR','HRV',191,'10','Virovitičko-podravska županija','Virovitica-Podravina',93,'static_countries'),(707,0,0,'HR','HRV',191,'16','Vukovarsko-srijemska županija','Vukovar-Syrmia',93,'static_countries'),(708,0,0,'HR','HRV',191,'13','Zadarska županija','Zadar',93,'static_countries'),(709,0,0,'HR','HRV',191,'01','Zagrebačka županija','Zagreb',93,'static_countries');
/*!40000 ALTER TABLE `static_country_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_currencies`
--

DROP TABLE IF EXISTS `static_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_currencies` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `cu_iso_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_iso_nr` int(11) NOT NULL DEFAULT '0',
  `cu_name_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_symbol_left` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_symbol_right` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_thousands_point` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_decimal_point` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_decimal_digits` smallint(6) NOT NULL DEFAULT '0',
  `cu_sub_name_en` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_sub_divisor` int(11) NOT NULL DEFAULT '1',
  `cu_sub_symbol_left` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cu_sub_symbol_right` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_currencies`
--

LOCK TABLES `static_currencies` WRITE;
/*!40000 ALTER TABLE `static_currencies` DISABLE KEYS */;
INSERT INTO `static_currencies` VALUES (2,0,0,'AED',784,'United Arab Emirates dirham','Dhs.','','.',',',2,'fils',100,'',''),(4,0,0,'ALL',8,'Albanian Lek','L','','.',',',2,'qindarka',100,'',''),(5,0,0,'AMD',51,'Armenian Dram','Dram','','.',',',2,'luma',100,'',''),(6,0,0,'ANG',532,'Netherlands Antillean gulden','NAƒ','','.',',',2,'cent',100,'',''),(7,0,0,'AOA',973,'Angolan Kwanza','Kz','','.',',',2,'centavo',100,'',''),(8,0,0,'ARS',32,'Argentine Peso','$','','.',',',2,'centavo',100,'',''),(9,0,0,'AUD',36,'Australian Dollar','$A','','.',',',2,'cent',100,'',''),(10,0,0,'AWG',533,'Aruban Guilder','Af.','','.',',',2,'cent',100,'',''),(11,0,0,'AZN',944,'Azerbaijani Manat','','','.',',',2,'qəpik',100,'',''),(12,0,0,'BAM',977,'Bosnia-Herzegovina Convertible Mark','KM','','.',',',2,'feninga',100,'',''),(13,0,0,'BBD',52,'Barbados Dollar','Bds$','','.',',',2,'cent',100,'',''),(14,0,0,'BDT',50,'Bangladeshi taka','Tk','','.',',',2,'paisa',100,'',''),(16,0,0,'BGN',975,'Bulgarian Lev','lv','','.',',',2,'stotinka',100,'',''),(17,0,0,'BHD',48,'Bahraini Dinar','BD','','.',',',3,'fils',1000,'',''),(18,0,0,'BIF',108,'Burundi Franc','FBu','','.','',2,'centime',100,'',''),(19,0,0,'BMD',60,'Bermuda Dollar','BM$','','.',',',2,'cent',100,'',''),(20,0,0,'BND',96,'Brunei Dollar','B$','','.',',',2,'sen',100,'',''),(21,0,0,'BOB',68,'Boliviano','Bs','','.',',',2,'centavo',100,'',''),(23,0,0,'BRL',986,'Brazilian Real','R$','','.',',',2,'centavo',100,'',''),(24,0,0,'BSD',44,'Bahamian Dollar','$','','.',',',2,'cent',100,'',''),(25,0,0,'BTN',64,'Bhutanese Ngultrum','Nu','','.',',',2,'chetrum',100,'',''),(26,0,0,'BWP',72,'Botswana pula','P','','.',',',2,'thebe',100,'',''),(27,0,0,'BYR',974,'Belarussian Ruble','Br','','.',',',2,'kapiejka',100,'',''),(28,0,0,'BZD',84,'Belize Dollar','BZ','','.',',',2,'cent',100,'',''),(29,0,0,'CAD',124,'Canadian Dollar','$','','.',',',2,'cent',100,'','¢'),(30,0,0,'CDF',976,'Congolese franc','FC','','.',',',2,'centime',100,'',''),(31,0,0,'CHF',756,'Swiss franc','SFr.','','\'','.',2,'centime',100,'',''),(33,0,0,'CLP',152,'Chilean Peso','$','','.','',0,'',1,'',''),(34,0,0,'CNY',156,'Chinese Yuan Renminbi','Ұ','','.',',',2,'fen',100,'',''),(35,0,0,'COP',170,'Colombian Peso','$','','.',',',2,'centavo',100,'',''),(36,0,0,'CRC',188,'Costa Rican colón','₡','','.',',',2,'centimo',100,'',''),(37,0,0,'CUP',192,'Cuban peso','Cub$','','.',',',2,'centavo',100,'',''),(38,0,0,'CVE',132,'Cape Verde Escudo','CVEsc.','','.',',',2,'centavo',100,'',''),(39,0,1,'CYP',196,'Cypriot pound','C£','','.',',',2,'cent',100,'',''),(40,0,0,'CZK',203,'Czech koruna','','Kč','.',',',2,'haléř',100,'',''),(41,0,0,'DJF',262,'Djibouti franc','FD','','.','',0,'',1,'',''),(42,0,0,'DKK',208,'Danish krone','kr.','','.',',',2,'Øre',100,'',''),(43,0,0,'DOP',214,'Dominican peso','RD$','','.',',',2,'centavo',100,'',''),(44,0,0,'DZD',12,'Algerian Dinar','DA','','.',',',2,'centime',100,'',''),(45,0,0,'EEK',233,'Estonian kroon','','ekr','.',',',2,'sent',100,'',''),(46,0,0,'EGP',818,'Egyptian pound','LE','','.',',',2,'piastre',100,'',''),(47,0,0,'ERN',232,'Eritrean nakfa','Nfa','','.',',',2,'cent',100,'',''),(48,0,0,'ETB',230,'Ethiopian birr','Br','','.',',',2,'santim',100,'',''),(49,0,0,'EUR',978,'Euro','€','','.',',',2,'cent',100,'¢',''),(50,0,0,'FJD',242,'Fijian dollar','FJ$','','.',',',2,'cent',100,'',''),(51,0,0,'FKP',238,'Falkland Islands pound','Fl£','','.',',',2,'penny',100,'',''),(52,0,0,'GBP',826,'Pound sterling','£','',',','.',2,'penny',100,'','p'),(53,0,0,'GEL',981,'Georgian lari','','lari','.',',',2,'tetri',100,'',''),(54,0,1,'GHC',288,'Ghanaian cedi','','','.',',',2,'pesewa',100,'',''),(55,0,0,'GIP',292,'Gibraltar pound','£','','.',',',2,'penny',100,'',''),(56,0,0,'GMD',270,'Gambian dalasi','D','','.',',',2,'butut',100,'',''),(57,0,0,'GNF',324,'Guinea Franc','GF','','.','',0,'',1,'',''),(58,0,0,'GTQ',320,'Guatemalan quetzal','Q.','','.',',',2,'centavo',100,'',''),(59,0,0,'GWP',624,'Guinea-Bissau Peso','','','.',',',2,'',100,'',''),(60,0,0,'GYD',328,'Guyana Dollar','G$','','.',',',2,'Cent',100,'',''),(61,0,0,'HKD',344,'Hong Kong dollar','HK$','','.',',',2,'cent',100,'',''),(62,0,0,'HNL',340,'Honduran lempira','L','','.',',',2,'centavo',100,'',''),(63,0,0,'HRK',191,'Croatian kuna','kn','','.',',',2,'lipa',100,'',''),(64,0,0,'HTG',332,'Haitian gourde','Gde.','','.',',',2,'centime',100,'',''),(65,0,0,'HUF',348,'Hungarian forint','','Ft','.',',',2,'fillér',100,'',''),(66,0,0,'IDR',360,'Indonesian rupiah','Rp.','','.',',',2,'sen',100,'',''),(67,0,0,'ILS',376,'New Israeli Sheqel','','NIS','.',',',2,'agora',100,'',''),(68,0,0,'INR',356,'Indian rupee','Rs','','.',',',2,'paisha',100,'',''),(69,0,0,'IQD',368,'Iraqi dinar','ID','','.',',',3,'fils',1000,'',''),(70,0,0,'IRR',364,'Iranian rial','Rls','','.',',',2,'dinar',100,'',''),(71,0,0,'ISK',352,'Icelandic króna','','ikr','.',',',2,'aurar',100,'',''),(72,0,0,'JMD',388,'Jamaican dollar','J$','','.',',',2,'cent',100,'',''),(73,0,0,'JOD',400,'Jordanian dinar','JD','','.',',',2,'piastre',100,'',''),(74,0,0,'JPY',392,'Japanese yen','¥','','.','',2,'sen',100,'',''),(75,0,0,'KES',404,'Kenyan shilling','Kshs.','','.',',',2,'cent',100,'',''),(76,0,0,'KGS',417,'Kyrgyzstani som','K.S.','','.',',',2,'tyiyn',100,'',''),(77,0,0,'KHR',116,'Cambodian riel','CR','','.',',',2,'sen',100,'',''),(78,0,0,'KMF',174,'Comorian Franc','CF','','.','',0,'',1,'',''),(79,0,0,'KPW',408,'North Korean won','₩n','','.',',',2,'chon',100,'',''),(80,0,0,'KRW',410,'South Corean won','￦','','.','',2,'jeon',100,'',''),(81,0,0,'KWD',414,'Kuwaiti dinar','KD','','.',',',3,'fils',1000,'',''),(82,0,0,'KYD',136,'Cayman Islands Dollar','$','','.',',',2,'cent',100,'',''),(83,0,0,'KZT',398,'Kazakhstani tenge','T','','.',',',2,'tiyin',100,'',''),(84,0,0,'LAK',418,'Lao kip','₭','','.',',',2,'at',100,'',''),(85,0,0,'LBP',422,'Lebanese pound','','LL','.',',',2,'piastre',100,'',''),(86,0,0,'LKR',144,'Sri Lankan rupee','Re','','.',',',2,'cent',100,'',''),(87,0,0,'LRD',430,'Liberian dollar','Lib$','','.',',',2,'cent',100,'',''),(88,0,0,'LSL',426,'Lesotho loti','M','','.',',',2,'sente',100,'',''),(89,0,0,'LTL',440,'Lithuanian litas','','Lt','.',',',2,'centas',100,'',''),(90,0,0,'LVL',428,'Latvian lats','Ls','','.',',',2,'santim',100,'',''),(91,0,0,'LYD',434,'Libyan dinar','LD.','','.',',',3,'dirham',1000,'',''),(92,0,0,'MAD',504,'Moroccan dirham','Dh','','.',',',2,'centime',100,'',''),(93,0,0,'MDL',498,'Moldovan leu','','','.',',',2,'ban',100,'',''),(95,0,0,'MKD',807,'Macedonian denar','Den','','.',',',2,'deni',100,'',''),(96,0,0,'MMK',104,'Myanmar kyat','K','','.',',',2,'pya',100,'',''),(97,0,0,'MNT',496,'Mongolian tugrug','₮','','.',',',2,'mongo',100,'',''),(98,0,0,'MOP',446,'Macanese pataca','Pat.','','.',',',2,'avo',100,'',''),(99,0,0,'MRO',478,'Mauritanian ouguiya','UM','','.',',',2,'khoum',100,'',''),(100,0,1,'MTL',470,'Maltese lira','Lm','','.',',',2,'cent',100,'',''),(101,0,0,'MUR',480,'Mauritian rupee','Rs','','.',',',2,'cent',100,'',''),(102,0,0,'MVR',462,'Maldivian rufiyaa','Rf','','.',',',2,'laari',100,'',''),(103,0,0,'MWK',454,'Malawian kwacha','MK','','.',',',2,'tambala',100,'',''),(104,0,0,'MXN',484,'Mexican peso','$','','.',',',2,'centavo',100,'',''),(106,0,0,'MYR',458,'Malaysian ringgit','RM','','.',',',2,'sen',100,'',''),(107,0,1,'MZM',508,'Mozambican metical','','Mt','.',',',2,'centavo',100,'',''),(108,0,0,'NAD',516,'Namibian dollar','N$','','.',',',2,'cent',100,'',''),(109,0,0,'NGN',566,'Nigerian naira','₦','','.',',',2,'kobo',100,'',''),(110,0,0,'NIO',558,'Nicaraguan córdoba','C$','','.',',',2,'centavo',100,'',''),(111,0,0,'NOK',578,'Norvegian krone','kr','','.',',',2,'øre',100,'',''),(112,0,0,'NPR',524,'Nepalese rupee','Rs.','','.',',',2,'paisa',100,'',''),(113,0,0,'NZD',554,'New Zealand dollar','$','',',','.',2,'cent',100,'',''),(114,0,0,'OMR',512,'Omani rial','OR','','.',',',3,'baiza',1000,'',''),(115,0,0,'PAB',590,'Panamanian balboa','B','','.',',',2,'centésimo',100,'',''),(116,0,0,'PEN',604,'Peruvian nuevo sol','Sl.','','.',',',2,'centimo',100,'',''),(117,0,0,'PGK',598,'Papua New Guinean kina','K','','.',',',2,'toea',100,'',''),(118,0,0,'PHP',608,'Philippine peso','P','','.',',',2,'centavo',100,'',''),(119,0,0,'PKR',586,'Pakistani rupee','Rs.','','.',',',2,'paisa',100,'',''),(120,0,0,'PLN',985,'Polish złoty','','zł','.',',',2,'grosz',100,'',''),(121,0,0,'PYG',600,'Paraguayan guaraní','G','','.','',2,'centimo',100,'',''),(122,0,0,'QAR',634,'Qatari riyal','QR','','.',',',2,'dirham',100,'',''),(123,0,1,'ROL',642,'Romanian leu','','l','.',',',2,'ban',100,'',''),(124,0,0,'RUB',643,'Russian ruble','','R','.',',',2,'kopek',100,'',''),(126,0,0,'RWF',646,'Rwandan franc','frw','','.','',0,'centime',1,'',''),(127,0,0,'SAR',682,'Saudi riyal','SR','','.',',',2,'hallalah',100,'',''),(128,0,0,'SBD',90,'Solomon Islands dollar','SI$','','.',',',2,'cent',100,'',''),(129,0,0,'SCR',690,'Seychelles rupee','SR','','.',',',2,'cent',100,'',''),(130,0,0,'SDG',938,'Sudanese pound','£','','.',',',2,'piastre',100,'',''),(131,0,0,'SEK',752,'Swedish krona','','kr','.',',',2,'öre',100,'',''),(132,0,0,'SGD',702,'Singapore dollar','$','','.',',',2,'cent',100,'',''),(133,0,0,'SHP',654,'Saint Helena pound','£','','.',',',2,'penny',100,'',''),(134,0,1,'SIT',705,'Slovenian tolar','SIT','','.',',',2,'stotin',100,'',''),(135,0,1,'SKK',703,'Slovak koruna','','Sk','.',',',2,'halier',100,'','h'),(136,0,0,'SLL',694,'Sierra Leonean leone','Le','','.',',',2,'cent',100,'',''),(137,0,0,'SOS',706,'Somali shilling','So.','','.',',',2,'centesimo',100,'',''),(139,0,0,'STD',678,'São Tomé and Príncipe dobra','Db','','.',',',2,'cêntimo',100,'',''),(140,0,0,'SVC',222,'Salvadoran colón','₡','','.',',',2,'centavo',100,'',''),(141,0,0,'SYP',760,'Syrian pound','£S','','.',',',2,'piastre',100,'',''),(142,0,0,'SZL',748,'Swazi lilangeni','','','.',',',2,'cent',100,'',''),(143,0,0,'THB',764,'Baht','','Bt','.',',',2,'satang',100,'',''),(144,0,0,'TJS',972,'Tajikistani somoni','','','.',',',2,'diram',100,'',''),(145,0,1,'TMM',795,'Turkmenistani manat','','','.',',',2,'tenge',100,'',''),(146,0,0,'TND',788,'Tunisian dinar','TD','','.',',',3,'millime',1000,'',''),(147,0,0,'TOP',776,'Tongan pa\'anga','T$','','.',',',2,'seniti',100,'',''),(150,0,0,'TTD',780,'Trinidad and Tobago dollar','TT$','','.',',',2,'cent',100,'',''),(151,0,0,'TWD',901,'New Taiwan dollar','NT$','','.',',',2,'cent',100,'',''),(152,0,0,'TZS',834,'Tanzanian shilling','TSh','','.',',',2,'cent',100,'',''),(153,0,0,'UAH',980,'Ukrainian hryvnia','hrn','','.',',',2,'kopiyka',100,'',''),(154,0,0,'UGX',800,'Ugandan shilling','USh','','.',',',2,'cent',100,'',''),(155,0,0,'USD',840,'US dollar','$','',',','.',2,'cent',100,'','¢'),(156,0,0,'UYU',858,'Uruguayan peso','UR$','','.',',',2,'centésimo',100,'',''),(157,0,0,'UZS',860,'Uzbekistani som','U.S.','','.',',',2,'tiyin',100,'',''),(158,0,0,'VEF',937,'Bolivar','Bs.','','.',',',2,'céntimo',100,'',''),(159,0,0,'VND',704,'Vietnamese đồng','','₫','.',',',2,'xu',100,'',''),(160,0,0,'VUV',548,'Vatu','','VT','.','',0,'centime',1,'',''),(161,0,0,'WST',882,'Samoan tala','WS$','','.',',',2,'sene',100,'',''),(162,0,0,'XAF',950,'CFA Franc BEAC','CFAF','','.','',0,'',1,'',''),(163,0,0,'XCD',951,'East Caribbean dollar','EC$','','.',',',2,'cent',100,'',''),(164,0,0,'XOF',952,'CFA Franc BCEAO','CFAF','','.','',0,'',1,'',''),(165,0,0,'XPF',953,'CFP Franc','CFPF','','.','',0,'',1,'',''),(166,0,0,'YER',886,'Yemeni rial','RI','','.',',',2,'fils',100,'',''),(168,0,0,'ZAR',710,'South African rand','R','','.',',',2,'cent',100,'',''),(169,0,0,'ZMW',967,'Zambian kwacha','K','','.',',',2,'ngwee',100,'',''),(170,0,1,'ZWD',716,'Zimbabwean dollar','$','','.',',',2,'cent',100,'',''),(171,0,0,'AFN',971,'Afghan afghani','Af','','.',',',2,'pul',100,'',''),(172,0,0,'RSD',941,'Serbian dinar','','','.',',',2,'para',100,'',''),(173,0,0,'MGA',969,'Malagasy ariary','','','.',',',1,'iraimbilanja',5,'',''),(174,0,0,'SRD',968,'Suriname dollar','$','','.',',',2,'cent',100,'',''),(175,0,0,'TRY',949,'Turkish lira','₺','','.',',',2,'kuruş',100,'',''),(176,0,0,'SSP',728,'South Sudanese pound','£','','.',',',2,'piastre',100,'',''),(177,0,0,'GHS',936,'Ghanaian cedi','GH₵','','.',',',2,'pesewa',100,'','Gp'),(178,0,0,'MZN',943,'Mozambican metical','MT','','.',',',2,'centavo',100,'',''),(179,0,0,'RON',946,'Romanian new leu','','l','.',',',2,'ban',100,'',''),(180,0,0,'TMT',934,'Turkmenistani manat','T','','.',',',2,'tenge',100,'','');
/*!40000 ALTER TABLE `static_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_languages`
--

DROP TABLE IF EXISTS `static_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_languages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `lg_iso_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_name_local` varchar(99) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_name_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_typo3` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_country_iso_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_collate_locale` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lg_sacred` smallint(6) NOT NULL DEFAULT '0',
  `lg_constructed` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_languages`
--

LOCK TABLES `static_languages` WRITE;
/*!40000 ALTER TABLE `static_languages` DISABLE KEYS */;
INSERT INTO `static_languages` VALUES (1,0,0,'AB','Аҧсуа бызшәа','Abkhazian','','','',0,0),(2,0,0,'AA','Afaraf','Afar','','','',0,0),(3,0,0,'AF','Afrikaans','Afrikaans','','','',0,0),(4,0,0,'SQ','Gjuha shqipe','Albanian','sq','','sq',0,0),(5,0,0,'AM','አማርኛ','Amharic','','','',0,0),(6,0,0,'AR','العربية','Arabic','ar','','ar_SA',0,0),(7,0,0,'HY','Հայերեն','Armenian','','','',0,0),(8,0,0,'AS','অসমীয়া','Assamese','','','',0,0),(9,0,0,'AY','Aymar aru','Aymara','','','',0,0),(10,0,0,'AZ','Azərbaycan dili','Azerbaijani','','','',0,0),(11,0,0,'BA','Башҡорт','Bashkir','','','',0,0),(12,0,0,'EU','Euskara','Basque','eu','','eu_ES',0,0),(13,0,0,'BN','বাংলা','Bengali','','','',0,0),(14,0,0,'DZ','ཇོང་ཁ','Dzongkha','','','',0,0),(15,0,0,'BH','भोजपुरी','Bihari','','','',0,0),(16,0,0,'BI','Bislama','Bislama','','','',0,0),(17,0,0,'BR','Brezhoneg','Breton','','','',0,0),(18,0,0,'BG','Български','Bulgarian','bg','','bg_BG',0,0),(19,0,0,'MY','မ္ရန္‌မာစာ','Burmese','my','','my_MM',0,0),(20,0,0,'BE','Беларуская','Belarusian','','','',0,0),(21,0,0,'KM','ភាសាខ្មែរ','Khmer','km','','km',0,0),(22,0,0,'CA','Català','Catalan','ca','','ca_ES',0,0),(23,0,0,'ZA','Sawcuengh','Zhuang','','','',0,0),(24,0,0,'ZH','漢語','Chinese (Traditional)','hk','HK','zh_HK',0,0),(25,0,0,'CO','Corsu','Corsican','','','',0,0),(26,0,0,'HR','Hrvatski','Croatian','hr','','hr_HR',0,0),(27,0,0,'CS','Čeština','Czech','cz','','cs_CZ',0,0),(28,0,0,'DA','Dansk','Danish','dk','','da_DK',0,0),(29,0,0,'NL','Nederlands','Dutch','nl','','nl_NL',0,0),(30,0,0,'EN','English','English','','','en',0,0),(31,0,0,'EO','Esperanto','Esperanto','eo','','',0,1),(32,0,0,'ET','Eesti','Estonian','et','','et_EE',0,0),(33,0,0,'FO','Føroyskt','Faeroese','fo','','fo_FO',0,0),(34,0,0,'FA','فارسی','Persian','fa','','fa_IR',0,0),(35,0,0,'FJ','Na Vosa Vakaviti','Fijian','','','',0,0),(36,0,0,'FI','Suomi','Finnish','fi','','fi_FI',0,0),(37,0,0,'FR','Français','French','fr','','fr_FR',0,0),(38,0,0,'FY','Frysk','Frisian','','','',0,0),(39,0,0,'GL','Galego','Galician','ga','','gl_ES',0,0),(40,0,0,'GD','Gàidhlig','Scottish Gaelic','','','',0,0),(41,0,0,'GV','Gaelg','Manx','','','',0,0),(42,0,0,'KA','ქართული','Georgian','ge','','ka',0,0),(43,0,0,'DE','Deutsch','German','de','','de_DE',0,0),(44,0,0,'EL','Ελληνικά','Greek','gr','','el_GR',0,0),(45,0,0,'KL','Kalaallisut','Greenlandic','gl','','kl_DK',0,0),(46,0,0,'GN','Avañe\'ẽ','Guaraní','','','',0,0),(47,0,0,'GU','ગુજરાતી','Gujarati','','','',0,0),(48,0,0,'HA','Hausa','Hausa','','','',0,0),(49,0,0,'HE','עברית','Hebrew','he','','he_IL',0,0),(50,0,0,'HI','हिन्दी','Hindi','hi','','hi_IN',0,0),(51,0,0,'HU','Magyar','Hungarian','hu','','hu_HU',0,0),(52,0,0,'IS','Íslenska','Icelandic','is','','is_IS',0,0),(53,0,0,'ID','Bahasa Indonesia','Indonesian','','','',0,0),(54,0,0,'IA','Interlingua','Interlingua','','','',0,1),(55,0,0,'IE','Interlingue','Interlingue','','','',0,1),(56,0,0,'IU','ᐃᓄᒃᑎᑐᑦ','Inuktitut','','','',0,0),(57,0,0,'IK','Iñupiak','Inupiaq','','','',0,0),(58,0,0,'GA','Gaeilge','Irish','','','',0,0),(59,0,0,'IT','Italiano','Italian','it','','it_IT',0,0),(60,0,0,'JA','日本語','Japanese','jp','','ja_JP',0,0),(62,0,0,'KN','ಕನ್ನಡ','Kannada','','','',0,0),(63,0,0,'KS','कॉशुर','Kashmiri','','','',0,0),(64,0,0,'KK','Қазақ тілі','Kazakh','','','',0,0),(65,0,0,'RW','Kinyarwanda','Kinyarwanda','','','',0,0),(66,0,0,'KY','Кыргыз тили','Kirghiz','','','',0,0),(67,0,0,'RN','kiRundi','Kirundi','','','',0,0),(68,0,0,'KO','한국말','Korean','kr','','ko_KR',0,0),(69,0,0,'KU','Kurdî','Kurdish','','','',0,0),(70,0,0,'LO','ພາສາລາວ','Lao','','','',0,0),(71,0,0,'LA','Lingua latina','Latin','','','',1,0),(72,0,0,'LV','Latviešu','Latvian','lv','','lv_LV',0,0),(73,0,0,'LN','Lingála','Lingala','','','',0,0),(74,0,0,'LT','Lietuvių','Lithuanian','lt','','lt_LT',0,0),(75,0,0,'MK','Македонски','Macedonian','','','',0,0),(76,0,0,'MG','Merina','Malagasy','','','',0,0),(77,0,0,'MS','Bahasa Melayu','Malay','','','',0,0),(78,0,0,'ML','മലയാളം','Malayalam','','','',0,0),(79,0,0,'MT','Malti','Maltese','','','mt_MT',0,0),(80,0,0,'MI','Māori','Māori','','','',0,0),(81,0,0,'MR','मराठी','Marathi','','','',0,0),(82,0,0,'MO','молдовеняскэ','Moldavian','','','',0,0),(83,0,0,'MN','Монгол','Mongolian','','','',0,0),(84,0,0,'NA','Ekakairũ Naoero','Nauru','','','',0,0),(85,0,0,'NE','नेपाली','Nepali','','','',0,0),(86,0,0,'NO','Norsk','Norwegian','no','','no_NO',0,0),(87,0,0,'OC','Occitan','Occitan','','','',0,0),(88,0,0,'OR','ଓଡ଼ିଆ','Oriya','','','',0,0),(89,0,0,'OM','Afaan Oromoo','Oromo','','','',0,0),(90,0,0,'PS','پښت','Pashto','','','',0,0),(91,0,0,'PL','Polski','Polish','pl','','pl_PL',0,0),(92,0,0,'PT','Português','Portuguese','pt','','pt_PT',0,0),(93,0,0,'PA','ਪੰਜਾਬੀ / پنجابی','Punjabi','','','',0,0),(94,0,0,'QU','Runa Simi','Quechua','','','',0,0),(95,0,0,'RM','Rumantsch','Rhaeto-Romance','','','',0,0),(96,0,0,'RO','Română','Romanian','ro','','ro_RO',0,0),(97,0,0,'RU','Русский','Russian','ru','','ru_RU',0,0),(98,0,0,'SM','Gagana faʼa Samoa','Samoan','','','',0,0),(99,0,0,'SG','Sängö','Sango','','','',0,0),(100,0,0,'SA','संस्कृतम्','Sanskrit','','','',1,0),(101,0,0,'SR','Српски / Srpski','Serbian','sr','','sr_YU',0,0),(103,0,0,'ST','seSotho','Sesotho','','','',0,0),(104,0,0,'TN','Setswana','Setswana','','','',0,0),(105,0,0,'SN','chiShona','Shona','','','',0,0),(106,0,0,'SD','سنڌي، سندھی','Sindhi','','','',0,0),(107,0,0,'SI','සිංහල','Sinhala','','','',0,0),(108,0,0,'SS','siSwati','Swati','','','',0,0),(109,0,0,'SK','Slovenčina','Slovak','sk','','sk_SK',0,0),(110,0,0,'SL','Slovenščina','Slovenian','si','','sl_SI',0,0),(111,0,0,'SO','af Soomaali','Somali','','','',0,0),(112,0,0,'ES','Español','Spanish','es','','es_ES',0,0),(113,0,0,'SU','Basa Sunda','Sundanese','','','',0,0),(114,0,0,'SW','Kiswahili','Swahili','','','',0,0),(115,0,0,'SV','Svenska','Swedish','se','','sv_SE',0,0),(116,0,0,'TL','Tagalog','Tagalog','','','',0,0),(117,0,0,'TG','тоҷикӣ / تاجیکی','Tajik','','','',0,0),(118,0,0,'TA','தமிழ்','Tamil','','','',0,0),(119,0,0,'TT','татарча / tatarça / تاتارچ','Tatar','','','',0,0),(120,0,0,'TE','తెలుగు','Telugu','','','',0,0),(121,0,0,'TH','ภาษาไทย','Thai','th','','th_TH',0,0),(122,0,0,'BO','བོད་ཡིག','Tibetan','','','',0,0),(123,0,0,'TI','ትግርኛ','Tigrinya','','','',0,0),(124,0,0,'TO','faka-Tonga','Tongan','','','',0,0),(125,0,0,'TS','Tsonga','Tsonga','','','',0,0),(126,0,0,'TR','Türkçe','Turkish','tr','','tr_TR',0,0),(127,0,0,'TK','Türkmen dili','Turkmen','','','',0,0),(128,0,0,'TW','Twi','Twi','','','',0,0),(129,0,0,'UG','ئۇيغۇرچه','Uyghur','','','',0,0),(130,0,0,'UK','Українська','Ukrainian','ua','','uk_UA',0,0),(131,0,0,'UR','اردو','Urdu','','','',0,0),(132,0,0,'UZ','Ўзбек / O\'zbek','Uzbek','','','',0,0),(133,0,0,'VI','Tiếng Việt','Vietnamese','vn','','vi_VN',0,0),(134,0,0,'VO','Volapük','Volapük','','','',0,1),(135,0,0,'CY','Cymraeg','Welsh','','','',0,0),(136,0,0,'WO','Wolof','Wolof','','','',0,0),(137,0,0,'XH','isiXhosa','Xhosa','','','',0,0),(138,0,0,'YI','ייִדיש','Yiddish','','','',0,0),(139,0,0,'YO','Yorùbá','Yoruba','','','',0,0),(140,0,0,'ZU','isiZulu','Zulu','','','',0,0),(141,0,0,'BS','Bosanski','Bosnian','ba','','bs_BA',0,0),(142,0,0,'AE','Avestan','Avestan','','','',1,0),(143,0,0,'AK','Akan','Akan','','','',0,0),(144,0,0,'AN','Aragonés','Aragonese','','','',0,0),(145,0,0,'AV','магӀарул мацӀ','Avar','','','',0,0),(146,0,0,'BM','Bamanankan','Bambara','','','',0,0),(147,0,0,'CE','Нохчийн','Chechen','','','',0,0),(148,0,0,'CH','Chamoru','Chamorro','','','',0,0),(149,0,0,'CR','ᓀᐦᐃᔭᐤ','Cree','','','',0,0),(150,0,0,'CU','церковнославя́нский язы́к','Church Slavonic','','','',1,0),(151,0,0,'CV','Чăваш чěлхи','Chuvash','','','',0,0),(152,0,0,'DV','ދިވެހި','Dhivehi','','','',0,0),(153,0,0,'EE','Ɛʋɛgbɛ','Ewe','','','',0,0),(154,0,0,'FF','Fulfulde / Pulaar','Fula','','','',0,0),(155,0,0,'HO','Hiri motu','Hiri motu','','','',0,0),(156,0,0,'HT','Krèyol ayisyen','Haïtian Creole','','','',0,0),(157,0,0,'HZ','otsiHerero','Herero','','','',0,0),(158,0,0,'IG','Igbo','Igbo','','','',0,0),(159,0,0,'II','ꆇꉙ','Yi','','','',0,0),(160,0,0,'IO','Ido','Ido','','','',0,1),(161,0,0,'JV','Basa Jawa','Javanese','','','',0,0),(162,0,0,'KG','Kikongo','Kongo','','','',0,0),(163,0,0,'KI','Gĩkũyũ','Kikuyu','','','',0,0),(164,0,0,'KJ','Kuanyama','Kuanyama','','','',0,0),(165,0,0,'KR','Kanuri','Kanuri','','','',0,0),(166,0,0,'KV','коми кыв','Komi','','','',0,0),(167,0,0,'KW','Kernewek','Cornish','','','',0,0),(168,0,0,'LB','Lëtzebuergesch','Luxembourgish','','','',0,0),(169,0,0,'LG','Luganda','Luganda','','','',0,0),(170,0,0,'LI','Limburgs','Limburgish','','','',0,0),(171,0,0,'LU','Luba-Katanga','Luba-Katanga','','','',0,0),(172,0,0,'MH','Kajin M̧ajeļ','Marshallese','','','',0,0),(173,0,0,'NB','Norsk bokmål','Norwegian Bokmål','','','',0,0),(174,0,0,'ND','isiNdebele','North Ndebele','','','',0,0),(175,0,0,'NG','Owambo','Ndonga','','','',0,0),(176,0,0,'NN','Norsk nynorsk','Norwegian Nynorsk','','','',0,0),(177,0,0,'NR','Ndébélé','South Ndebele','','','',0,0),(178,0,0,'NV','Dinékʼehǰí','Navajo','','','',0,0),(179,0,0,'NY','chiCheŵa','Chichewa','','','',0,0),(180,0,0,'OJ','ᐊᓂᔑᓈᐯᒧᐎᓐ','Ojibwa','','','',0,0),(181,0,0,'OS','Ирон æвзаг','Ossetic','','','',0,0),(182,0,0,'PI','Pāli','Pali','','','',1,0),(183,0,0,'SC','Sardu','Sardinian','','','',0,0),(184,0,0,'SE',' Sámegiella','Northern Sami','','','',0,0),(186,0,0,'TY','Reo Tahiti','Tahitian','','','',0,0),(187,0,0,'VE','tshiVenḓa','Venda','','','',0,0),(188,0,0,'WA','Walon','Walloon','','','',0,0),(189,0,0,'PT','Português brasileiro','Brazilian Portuguese','br','BR','pt_BR',0,0),(190,0,0,'ZH','汉语','Chinese (Simplified)','ch','CN','zh_CN',0,0),(191,0,0,'FR','Français canadien','Canadian French','qc','CA','fr_CA',0,0),(192,0,0,'TL','Filipino','Filipino','','PH','fil',0,0),(193,0,0,'SR','Crnogorski jezik','Montenegrin','','ME','sr_ME',0,0),(194,0,0,'DE','Deutsch (Schweiz)','German (Switzerland)','de','CH','de_CH',0,0),(195,0,0,'DE','Deutsch (Österreich)','German (Austria)','de','AT','de_AT',0,0),(196,0,0,'EN','English (USA)','English (USA)','','US','en_US',0,0),(197,0,0,'EN','English (United Kingdom)','English (United Kingdom)','','GB','en_GB',0,0);
/*!40000 ALTER TABLE `static_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_territories`
--

DROP TABLE IF EXISTS `static_territories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_territories` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `tr_iso_nr` int(11) NOT NULL DEFAULT '0',
  `tr_parent_territory_uid` int(11) NOT NULL DEFAULT '0',
  `tr_parent_iso_nr` int(11) NOT NULL DEFAULT '0',
  `tr_name_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_territories`
--

LOCK TABLES `static_territories` WRITE;
/*!40000 ALTER TABLE `static_territories` DISABLE KEYS */;
INSERT INTO `static_territories` VALUES (1,0,0,2,0,0,'Africa'),(2,0,0,9,0,0,'Oceania'),(3,0,0,19,0,0,'Americas'),(4,0,0,142,0,0,'Asia'),(5,0,0,150,0,0,'Europe'),(6,0,0,30,4,142,'Eastern Asia'),(7,0,0,35,4,142,'South-eastern Asia'),(8,0,0,143,4,142,'Central Asia'),(9,0,0,145,4,142,'Western Asia'),(10,0,0,39,5,150,'Southern Europe'),(11,0,0,151,5,150,'Eastern Europe'),(12,0,0,154,5,150,'Northern Europe'),(13,0,0,155,5,150,'Western Europe'),(16,0,0,5,31,419,'South America'),(17,0,0,13,31,419,'Central America'),(18,0,0,21,3,19,'Northern America'),(19,0,0,29,31,419,'Caribbean'),(20,0,0,11,1,2,'Western Africa'),(21,0,0,14,1,2,'Eastern Africa'),(22,0,0,15,1,2,'Northern Africa'),(23,0,0,17,1,2,'Middle Africa'),(24,0,0,18,1,2,'Southern Africa'),(25,0,0,53,2,9,'Australia and New Zealand'),(26,0,0,54,2,9,'Melanesia'),(27,0,0,57,2,9,'Micronesian Region'),(28,0,0,61,2,9,'Polynesia'),(30,0,0,34,4,142,'Southern Asia'),(31,0,0,419,3,19,'Latin America and the Caribbean');
/*!40000 ALTER TABLE `static_territories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `images` int(10) unsigned DEFAULT '0',
  `single_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(11) NOT NULL DEFAULT '0',
  `import_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_description` text COLLATE utf8_unicode_ci,
  `seo_headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_text` text COLLATE utf8_unicode_ci,
  `slug` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `import` (`import_id`,`import_source`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
INSERT INTO `sys_category` VALUES (1,1,1556197174,1556197174,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,256,0,0,'','Hgon-Testkategorie','',0,0,NULL,'0',0,0,0,'','','',NULL,'',NULL,NULL),(2,1,1558616629,1558615285,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,128,0,0,_binary 'a:8:{s:5:\"title\";N;s:6:\"parent\";N;s:5:\"items\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:11:\"description\";N;}','Vögel','',5,0,NULL,'0',0,0,0,'','','',NULL,'',NULL,NULL),(3,1,1558616641,1558615294,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,192,0,0,_binary 'a:8:{s:5:\"title\";N;s:6:\"parent\";N;s:5:\"items\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:11:\"description\";N;}','Feldhamster','',5,0,NULL,'0',0,0,0,'','','',NULL,'',NULL,NULL),(4,1,1558616591,1558615308,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,224,0,0,_binary 'a:8:{s:5:\"title\";N;s:6:\"parent\";N;s:5:\"items\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:11:\"description\";N;}','Wald','',5,0,NULL,'0',0,0,0,'','','',NULL,'',NULL,NULL),(5,1,1558616255,1558616236,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,240,0,0,_binary 'a:8:{s:5:\"title\";N;s:6:\"parent\";N;s:5:\"items\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:11:\"description\";N;}','Journal-Kategorien','',0,0,NULL,'0',0,0,0,'','','',NULL,'',NULL,NULL),(6,1,1558943555,1558943549,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,64,0,0,_binary 'a:8:{s:5:\"title\";N;s:6:\"parent\";N;s:5:\"items\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:11:\"description\";N;}','Lebensräume','',5,0,NULL,'0',0,0,0,'','','',NULL,'',NULL,NULL),(7,1,1558943562,1558943562,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,96,0,0,'','Artenschutz','',5,0,NULL,'0',0,0,0,'','','',NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
INSERT INTO `sys_category_record_mm` VALUES (1,6,'pages','categories',0,1),(1,3,'tx_rkwprojects_domain_model_projects','sys_category',0,1),(1,98,'tt_content','categories',0,1),(1,2,'pages','categories',0,1),(2,25,'pages','categories',0,1),(6,26,'pages','categories',0,1),(7,27,'pages','categories',0,1),(2,1,'tx_hgontemplate_domain_model_didyouknow','sys_category',0,1),(3,2,'tx_hgontemplate_domain_model_didyouknow','sys_category',0,1),(2,1,'tx_news_domain_model_news','categories',0,1),(2,2,'tx_news_domain_model_news','categories',0,1);
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8_unicode_ci,
  `items` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectTo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`),
  KEY `getDomainStartPage` (`pid`,`hidden`,`domainName`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
INSERT INTO `sys_domain` VALUES (1,1,1550593187,1550593187,3,0,'hgon.local','',301,256,0,0);
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` smallint(6) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8_unicode_ci,
  `identifier_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `sha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1548685180,0,0,0,'2',0,'/typo3conf/ext/hgon/Resources/Public/Images/logo-hgon.svg','bd879963b0c5a43aae5c1341d932389b0fe83008','723c7a32ae78bce7f2cf6bb5f0de3a81991ed40f','svg','image/svg+xml','logo-hgon.svg','f30a0f1d53a15b93daee523b6582526d4f2806cc',15200,1548684291,1543929691),(2,0,1548685334,0,0,0,'2',0,'/typo3conf/ext/hgon/Resources/Public/Images/img-hero.jpg','64056f5daa879604446b2f4247f1b98721440099','723c7a32ae78bce7f2cf6bb5f0de3a81991ed40f','jpg','image/jpeg','img-hero.jpg','70557374b9253004b03b8ded219e917ec7995fc4',150126,1548684291,1543929691),(3,0,1548687846,1548687846,0,1,'2',0,'/user_upload/Bildschirmfoto_vom_2019-01-24_11-22-25.png','7123709293cd679d5bc6f73ae3c0d02f91f80389','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','Bildschirmfoto_vom_2019-01-24_11-22-25.png','ae0085c07ec0529e5af8800fe25f2370e3087450',53734,1548687846,1548687846),(4,0,1551454061,1551454061,0,1,'2',0,'/user_upload/profil-conz.jpg','b91c9067663155d853eaab45a724bfb7feef9ed5','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','profil-conz.jpg','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934',4466,1551454061,1551454061),(5,0,1551886250,1551886250,0,1,'2',0,'/user_upload/fff.png','a2e82dc13dcc02c78d6f2e90429b37f99d8d2f82','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','fff.png','148f440e9c2dafe4d07bb9a2da513721ac161b70',1255,1551886250,1551886250),(6,0,1551886374,1551886374,0,1,'0',0,'/user_upload/index.html','c25533f303185517ca3e1e24b215d53aa74076d2','19669f1e02c2f16705ec7587044c66443be70725','html','inode/x-empty','index.html','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,1550158006,1550158006),(7,0,1551949719,1551949719,0,1,'2',0,'/user_upload/Bildschirmfoto_vom_2019-03-04_13-48-09.png','0386660c3fd41d588dd69a62ea3b648b83d9e24b','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','Bildschirmfoto_vom_2019-03-04_13-48-09.png','672c002ca7d9943993f039a9f4f57c50d9a17792',21123,1551949719,1551949719),(8,0,1551949719,1551949719,0,1,'2',0,'/user_upload/Bildschirmfoto_vom_2019-03-04_13-53-29.png','32ecade2b69a56b1cb779e9ac32e331807a43924','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','Bildschirmfoto_vom_2019-03-04_13-53-29.png','d136c2135168a4b5c3a34fe587f279fc5c35c7bc',33325,1551949719,1551949719),(9,0,1551949719,1551949719,0,1,'2',0,'/user_upload/Bildschirmfoto_vom_2019-03-04_14-12-57.png','d70b9d9668e54826543563d78cf0f34c75c2da4d','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','Bildschirmfoto_vom_2019-03-04_14-12-57.png','760491c9dcde653cd8541d5fbb55bea5b9caf857',36537,1551949719,1551949719),(10,0,1551949719,1551949719,0,1,'2',0,'/user_upload/Bildschirmfoto_vom_2019-03-05_09-31-56.png','58d005353a4802982be30d30a96d52c9fa8362c1','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','Bildschirmfoto_vom_2019-03-05_09-31-56.png','edd059133ce8a602451549409ad41e5253453424',40183,1551949719,1551949719),(11,0,1551954417,1551954417,0,1,'2',0,'/user_upload/slider1.png','e612dcbcf4831c7af65c1b398434b2e501ac7fe8','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','slider1.png','3357d7d2abbdde3b9951af4d05e64efa1e06c2d0',5498,1551954417,1551954417),(12,0,1552041820,1552041820,0,1,'2',0,'/user_upload/fff2.png','5cd962938dc13e7e85c726baf0b85a8dd51b1b4d','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','fff2.png','dafe98e1e913ee8c56cdcfea343400044531c94f',5498,1552041820,1552041820),(13,0,1552294082,1552294082,0,1,'2',0,'/user_upload/fff300x400.png','bc51ec62659d14f0b09a9b5316bc390577316762','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','fff300x400.png','0191a04192a2af576c16ca5ea724eec1ce005a65',852,1552294083,1552294083),(14,0,1552318257,1552318257,0,1,'2',0,'/user_upload/fff500x400.png','f756a4b94783951079e7f37010636218eed894e8','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','fff500x400.png','898473980c3d09f0bedc9fdc0e462bc76a583cfe',1480,1552318257,1552318257),(15,0,1552474050,1552474050,0,1,'2',0,'/user_upload/fff1680x600.png','0eac1fc79a3301b34bc00e5821d80b265e60d0eb','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','fff1680x600.png','16330877cd45441d1be163dfe6f885e99c472e29',6542,1552474050,1552474050),(16,0,1552473965,1552473965,0,1,'5',0,'/media/file-placeholder.pdf','49cb64b7e8a4770deb466a09200b881f127bb7a4','9b0b10211237e189ca11fde3729d3b1a2243ee9c','pdf','application/pdf','file-placeholder.pdf','4ff7b753c45fd7bd70ba18f649a4f6ee711b53ce',3523621,1550157214,1550157214),(17,0,1552473965,1552473965,0,1,'2',0,'/media/image-placeholder.jpg','f0201b2486575f48248d4bd2a8a2117294fe4bdd','9b0b10211237e189ca11fde3729d3b1a2243ee9c','jpg','image/jpeg','image-placeholder.jpg','5f00dd740814556cea85f0db83ffc1c061778cdd',1027778,1550157214,1550157214),(18,0,1553073798,1553073798,0,1,'2',0,'/user_upload/csm_img-hero_40d930c487.jpg','d4ef380308189ec86ce82d3a83dc8da4f3c8475d','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','csm_img-hero_40d930c487.jpg','90ef92e67404c0c7864340b8877ed465bd7efa3d',146204,1553073798,1553073798),(19,0,1553173523,1553173523,0,1,'2',0,'/user_upload/395x300.png','3b38c83209e73cda790ccb3d05eeb056974b370e','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','395x300.png','148f440e9c2dafe4d07bb9a2da513721ac161b70',1255,1553173522,1553173522),(20,0,1553178121,1553178121,0,1,'2',0,'/user_upload/450x260.png','ffd271efc264976ef30742acf4a3ac82fcc7c8b7','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','450x260.png','a657479537f0dfb820159e4cc7da3c1928bd443a',1504,1553178120,1553178120),(21,0,1553608245,1553608245,0,1,'2',0,'/user_upload/860x480-2.png','f3146471ddb9e88f35bc271e78735ee60f5894e6','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','860x480-2.png','bc4027a124b7ca92ad5fd8ca373250201b9d5713',3122,1553608245,1553608245),(22,0,1553608245,1553608245,0,1,'2',0,'/user_upload/860x480-1.png','8ed4f26d91ddedffa4205f897c2e1eb6cec5b187','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','860x480-1.png','e2f186dbdb96475409925e7986387064be7d4f83',3122,1553608245,1553608245),(23,0,1553608245,1553608245,0,1,'2',0,'/user_upload/860x480-3.png','ce84d483f03f0ffb6e8a463ec13dc3288cd99ddb','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','860x480-3.png','968b2281e8bc5393e9ec4341c58cc5cbcf39c41e',3122,1553608245,1553608245),(24,0,1555669485,1555579098,0,1,'1',0,'/user_upload/contactForm.form.yaml','6fe6ed7b0917b7267d51a7e1185ab854702462ed','19669f1e02c2f16705ec7587044c66443be70725','yaml','text/plain','contactForm.form.yaml','599d90085d835c81284f55a0a75bcb4dd05c76d9',3273,1555669484,1555669484),(25,0,1555674453,0,0,0,'1',0,'/typo3conf/ext/hgon/Resources/Private/Extension/FormFramework/birdnet.form.yaml','bc41de79c95890f3d07d4f836f8e80b19c4881be','26550de40a71433d292c980e65009ac4d0dfbe5d','yaml','text/plain','birdnet.form.yaml','e4e64b459684fc6970cbcaae2af4fbe2db68f295',142,1555674452,1555674452),(26,0,1556186565,0,0,0,'2',0,'/typo3conf/ext/hgon_template/Resources/Public/Images/img-hero.jpg','70a0e7714add98bf1966db0c2528bfb6cb4f1e32','14b6032026892fec98621b25169c4ef0a7f58db5','jpg','image/jpeg','img-hero.jpg','70557374b9253004b03b8ded219e917ec7995fc4',150126,1554280979,1554280979),(27,0,1557218858,1557218858,0,1,'2',0,'/user_upload/img-hero-alt.jpg','4ed3446aa1586158fb9103bf101aaa0991743c32','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','img-hero-alt.jpg','7bab50a1dd406cb6c93e420426d59006fbd762dd',197173,1557218858,1557218858),(28,0,1557911932,0,0,0,'1',0,'/typo3conf/ext/hgon_template/Resources/Private/Extension/FormFramework/birdnet.form.yaml','38f8243b992324ed8e2e40a662ea47bc6727effe','c9adc071d21f9612e7f7a6dee3fb17629a094ef3','yaml','text/plain','birdnet.form.yaml','4c886c8a854b2bd3bc19a2892644db9094e670f5',2002,1555677797,1555677797),(29,0,1558602781,1558602781,0,1,'2',0,'/user_upload/595x300.png','cab5f8b48a6de65383f81a18af4e277e770f9500','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','595x300.png','6085d64271e27b0c67061ac838e83f461c60f8d2',2089,1558602781,1558602781),(31,0,1559894190,0,0,0,'1',0,'/typo3conf/ext/hgon_template/Resources/Private/Extension/FormFramework/mitgliedsformular.form.yaml','c1639869e50daa9f5da76544b20981ac25268cd2','c9adc071d21f9612e7f7a6dee3fb17629a094ef3','yaml','text/plain','mitgliedsformular.form.yaml','c23e8bc553686a57d8e13192757c5075d4cca08e',1766,1559894189,1559894189),(32,0,1562240405,0,0,0,'2',0,'/typo3conf/ext/news/Resources/Public/Images/dummy-preview-image.png','9f596bc172c8537a3ddc2d6efbb7e3212094e837','e70c7d8d1f511f7ac68ed0154b9a7ded896e72f2','png','image/png','dummy-preview-image.png','b069aa085f06da6743b904400b0e412c3b0b5b07',25896,1561987891,1555325663);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text COLLATE utf8_unicode_ci,
  `recursive` smallint(6) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `l10n_state` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `visible` int(11) unsigned DEFAULT '1',
  `status` varchar(24) COLLATE utf8_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8_unicode_ci,
  `caption` text COLLATE utf8_unicode_ci,
  `creator_tool` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `download_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `creator` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `publisher` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `copyright` text COLLATE utf8_unicode_ci,
  `location_country` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
  `location_region` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
  `location_city` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
  `latitude` decimal(24,14) DEFAULT '0.00000000000000',
  `longitude` decimal(24,14) DEFAULT '0.00000000000000',
  `ranking` int(11) unsigned DEFAULT '0',
  `content_creation_date` int(11) unsigned DEFAULT '0',
  `content_modification_date` int(11) unsigned DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `unit` varchar(3) COLLATE utf8_unicode_ci DEFAULT '',
  `duration` double DEFAULT '0',
  `color_space` varchar(4) COLLATE utf8_unicode_ci DEFAULT '',
  `pages` int(4) unsigned DEFAULT '0',
  `language` varchar(12) COLLATE utf8_unicode_ci DEFAULT '',
  `fe_groups` tinytext COLLATE utf8_unicode_ci,
  `tx_rkwbasics_publisher` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_rkwbasics_source` int(11) unsigned DEFAULT '0',
  `tx_rkwprojects_project_uid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `pid` (`pid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1548685180,1548685179,1,0,0,'',0,0,0,'',0,0,0,0,0,0,1,NULL,60,60,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(2,0,1548685334,1548685333,1,0,0,'',0,0,0,'',0,0,0,0,0,0,2,NULL,1440,796,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(3,0,1548687846,1548687845,1,0,0,'',0,0,0,'',0,0,0,0,0,0,3,NULL,1027,907,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(4,0,1557240217,1551454061,3,0,0,_binary 'a:23:{s:5:\"title\";N;s:11:\"description\";N;s:7:\"ranking\";N;s:8:\"keywords\";N;s:11:\"alternative\";N;s:7:\"caption\";N;s:13:\"download_name\";N;s:16:\"sys_language_uid\";N;s:26:\"tx_rkwprojects_project_uid\";N;s:22:\"tx_rkwbasics_publisher\";N;s:19:\"tx_rkwbasics_source\";N;s:8:\"language\";N;s:16:\"location_country\";N;s:15:\"location_region\";N;s:13:\"location_city\";N;s:8:\"latitude\";N;s:9:\"longitude\";N;s:21:\"content_creation_date\";N;s:25:\"content_modification_date\";N;s:7:\"visible\";N;s:6:\"status\";N;s:9:\"fe_groups\";N;s:10:\"categories\";N;}',0,0,0,'',0,0,0,0,0,0,4,'Oliver Conz - Titel',100,100,NULL,NULL,NULL,0,1,'1',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(5,0,1551886250,1551886250,3,0,0,'',0,0,0,'',0,0,0,0,0,0,5,NULL,395,300,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(6,0,1551886374,1551886373,3,0,0,'',0,0,0,'',0,0,0,0,0,0,6,NULL,0,0,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(7,0,1551949719,1551949718,3,0,0,'',0,0,0,'',0,0,0,0,0,0,8,NULL,810,422,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(8,0,1551949719,1551949718,3,0,0,'',0,0,0,'',0,0,0,0,0,0,9,NULL,780,558,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(9,0,1551949719,1551949718,3,0,0,'',0,0,0,'',0,0,0,0,0,0,7,NULL,1658,524,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(10,0,1551949719,1551949718,3,0,0,'',0,0,0,'',0,0,0,0,0,0,10,NULL,1284,601,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(11,0,1551954417,1551954417,3,0,0,'',0,0,0,'',0,0,0,0,0,0,11,NULL,1680,680,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(12,0,1552041820,1552041819,3,0,0,'',0,0,0,'',0,0,0,0,0,0,12,NULL,1680,680,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(13,0,1552294082,1552294082,3,0,0,'',0,0,0,'',0,0,0,0,0,0,13,NULL,300,400,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(14,0,1552318257,1552318255,3,0,0,'',0,0,0,'',0,0,0,0,0,0,14,NULL,500,400,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(15,0,1552474050,1552467946,3,0,0,'',0,0,0,'',0,0,0,0,0,0,15,NULL,1680,600,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(16,0,1552473965,1552473964,3,0,0,'',0,0,0,'',0,0,0,0,0,0,16,NULL,0,0,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(17,0,1552473965,1552473964,3,0,0,'',0,0,0,'',0,0,0,0,0,0,17,NULL,2048,1365,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(18,0,1553073798,1553073798,3,0,0,'',0,0,0,'',0,0,0,0,0,0,18,NULL,1440,800,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(19,0,1553173523,1553173522,3,0,0,'',0,0,0,'',0,0,0,0,0,0,19,NULL,395,300,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(20,0,1553178121,1553178119,3,0,0,'',0,0,0,'',0,0,0,0,0,0,20,NULL,450,260,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(21,0,1553608245,1553608245,3,0,0,'',0,0,0,'',0,0,0,0,0,0,21,NULL,860,480,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(22,0,1553608245,1553608245,3,0,0,'',0,0,0,'',0,0,0,0,0,0,22,NULL,860,480,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(23,0,1553608245,1553608245,3,0,0,'',0,0,0,'',0,0,0,0,0,0,23,NULL,860,480,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(24,0,1555579098,1555579097,3,0,0,'',0,0,0,'',0,0,0,0,0,0,24,NULL,0,0,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(25,0,1556186565,1556186563,3,0,0,'',0,0,0,'',0,0,0,0,0,0,26,NULL,1440,796,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(26,0,1557218858,1557218858,3,0,0,'',0,0,0,'',0,0,0,0,0,0,27,NULL,1440,796,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(27,0,1558602781,1558602780,3,0,0,'',0,0,0,'',0,0,0,0,0,0,29,NULL,595,300,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0),(28,0,1562240405,1562240405,3,0,0,'',0,0,0,'',0,0,0,0,0,0,32,NULL,128,128,NULL,NULL,NULL,0,1,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `configurationsha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (1,1562244632,1551886250,1,5,'',NULL,'a:3:{s:5:\"width\";i:395;s:6:\"height\";d:300;s:4:\"crop\";N;}','6b58ef983c4c79a01b1a8cf4ab9274a6adf29901','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.CropScaleMask','8728fd4e43',NULL,NULL),(2,1561986554,1552467946,1,15,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','92d3098d1f',NULL,NULL),(3,1561986554,1552041819,1,12,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','dafe98e1e913ee8c56cdcfea343400044531c94f','Image.CropScaleMask','7988720b9b',NULL,NULL),(4,1557240272,1557240272,1,18,'/_processed_/a/c/csm_csm_img-hero_40d930c487_2fa0b2095a.jpg','csm_csm_img-hero_40d930c487_2fa0b2095a.jpg','a:7:{s:5:\"width\";i:1440;s:6:\"height\";i:800;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:116.09756097260919;s:8:\"\0*\0width\";d:1440;s:9:\"\0*\0height\";d:567.8048780547816;}}','9bab0e27f50aeaefb3534b9cc32c34f4190355b0','90ef92e67404c0c7864340b8877ed465bd7efa3d','Image.CropScaleMask','2fa0b2095a',1440,800),(5,1558529805,1551454061,1,4,'',NULL,'a:3:{s:5:\"width\";i:100;s:6:\"height\";d:100;s:4:\"crop\";N;}','4a860413a1e79b8492da5c20521a35f9b9adcbc2','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.CropScaleMask','739f10e4b8',NULL,NULL),(6,1557240273,1557240273,1,27,'/_processed_/9/6/csm_img-hero-alt_604cc649cc.jpg','csm_img-hero-alt_604cc649cc.jpg','a:7:{s:5:\"width\";i:1440;s:6:\"height\";i:800;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:114.09756097260919;s:8:\"\0*\0width\";d:1440;s:9:\"\0*\0height\";d:567.8048780547816;}}','818b170ae6bd9493e8944197039e5f93f66a5240','7bab50a1dd406cb6c93e420426d59006fbd762dd','Image.CropScaleMask','604cc649cc',1440,800),(7,1557240273,1557240273,1,13,'/_processed_/8/6/csm_fff300x400_4d39f2b9f0.png','csm_fff300x400_4d39f2b9f0.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:295;s:9:\"\0*\0height\";d:400;}}','2ccb59911625bc140cb7e7ce9439c7962d2bfc61','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','4d39f2b9f0',295,400),(8,1557240273,1557240273,1,13,'/_processed_/8/6/csm_fff300x400_f5f3ab99f5.png','csm_fff300x400_f5f3ab99f5.png','a:7:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:295;s:9:\"\0*\0height\";d:400;}}','ea64b904d389a804e01970c40887ff6d421cd45c','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','f5f3ab99f5',300,400),(9,1557240273,1557240273,1,13,'/_processed_/8/6/csm_fff300x400_b2a9ca9278.png','csm_fff300x400_b2a9ca9278.png','a:7:{s:5:\"width\";i:500;s:6:\"height\";i:400;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:295;s:9:\"\0*\0height\";d:400;}}','ff764fe09f6f2483c47406695ed51878ab82f4ca','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','b2a9ca9278',500,400),(10,1557240273,1557240273,1,4,'/_processed_/9/3/csm_profil-conz_176afc47f4.jpg','csm_profil-conz_176afc47f4.jpg','a:7:{s:5:\"width\";s:5:\"100px\";s:6:\"height\";s:5:\"100px\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:30.284552845320086;s:8:\"\0*\0width\";d:100;s:9:\"\0*\0height\";d:39.430894309359836;}}','90d1b74705c65672661083ae8239d7a5489c430e','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.CropScaleMask','176afc47f4',100,100),(11,1557240297,1557240297,1,4,'/_processed_/9/3/preview_profil-conz_87f614891c.jpg','preview_profil-conz_87f614891c.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:134:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.30284552845320084,\"width\":1,\"height\":0.3943089430935984},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','2130ee2d02575846927cd3332f4fe97f6a51727b','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.Preview','87f614891c',45,45),(12,1557240302,1557240302,1,4,'/_processed_/9/3/csm_profil-conz_f8c2d65b6f.jpg','csm_profil-conz_f8c2d65b6f.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:30.284552845320086;s:8:\"\0*\0width\";d:100;s:9:\"\0*\0height\";d:39.430894309359836;}}','8b035a5da95a725b9d55a4ca931bf2ea41430022','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.CropScaleMask','f8c2d65b6f',100,39),(13,1558529105,1551454061,1,4,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1000;s:9:\"maxHeight\";i:1000;s:4:\"crop\";N;}','1097b19f7c94bc1bdd2bf43bfc22198c30890d2e','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.CropScaleMask','f41d029dd4',NULL,NULL),(14,1558529105,1551454061,1,4,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:300;s:9:\"maxHeight\";i:300;s:4:\"crop\";N;}','e239fcbae08ee546b841850592062fe370de3336','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.CropScaleMask','7ce1e246a7',NULL,NULL),(15,1557240317,1557240317,1,4,'/_processed_/9/3/preview_profil-conz_d79cc2f30a.jpg','preview_profil-conz_d79cc2f30a.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:99:\"{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"0_00\",\"focusArea\":null}}\";}','7c89dc1fe1256a79fc499e3f897287f33fd2f5d4','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.Preview','d79cc2f30a',45,45),(16,1562677233,1551454061,1,4,'',NULL,'a:7:{s:5:\"width\";s:5:\"100px\";s:6:\"height\";s:5:\"100px\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','794f804f5e443f5a8ca1130b1bee21e374d8416f','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.CropScaleMask','5110c386d2',NULL,NULL),(17,1557302150,1557302150,1,5,'/_processed_/3/f/csm_fff_06d484ecef.png','csm_fff_06d484ecef.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";N;}','1721acbe390638a893310b0f6fe9845a9cd2b754','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.CropScaleMask','06d484ecef',64,64),(18,1557302150,1557302150,1,15,'/_processed_/6/7/csm_fff1680x600_619e88c4d9.png','csm_fff1680x600_619e88c4d9.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";N;}','1721acbe390638a893310b0f6fe9845a9cd2b754','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','619e88c4d9',64,64),(19,1557302151,1557302151,1,12,'/_processed_/7/1/csm_fff2_2c6e773d7d.png','csm_fff2_2c6e773d7d.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";N;}','1721acbe390638a893310b0f6fe9845a9cd2b754','dafe98e1e913ee8c56cdcfea343400044531c94f','Image.CropScaleMask','2c6e773d7d',64,64),(20,1557302151,1557302151,1,18,'/_processed_/a/c/csm_csm_img-hero_40d930c487_03e84b59a8.jpg','csm_csm_img-hero_40d930c487_03e84b59a8.jpg','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";a:0:{}}','bc1f0c05789fb979eae617866d760a757ed8011a','90ef92e67404c0c7864340b8877ed465bd7efa3d','Image.CropScaleMask','03e84b59a8',64,64),(21,1557302151,1557302151,1,27,'/_processed_/9/6/csm_img-hero-alt_eff2c270aa.jpg','csm_img-hero-alt_eff2c270aa.jpg','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";a:0:{}}','bc1f0c05789fb979eae617866d760a757ed8011a','7bab50a1dd406cb6c93e420426d59006fbd762dd','Image.CropScaleMask','eff2c270aa',64,64),(22,1557302151,1557302151,1,4,'/_processed_/9/3/csm_profil-conz_fa295f3d70.jpg','csm_profil-conz_fa295f3d70.jpg','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";N;}','1721acbe390638a893310b0f6fe9845a9cd2b754','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.CropScaleMask','fa295f3d70',64,64),(23,1557302155,1557302155,1,18,'/_processed_/a/c/preview_csm_img-hero_40d930c487_70535cb2fa.jpg','preview_csm_img-hero_40d930c487_70535cb2fa.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:132:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1451219512157615,\"width\":1,\"height\":0.709756097568477},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','3d775751a81293fdf8557ceb2bfa5bdd1a8b6037','90ef92e67404c0c7864340b8877ed465bd7efa3d','Image.Preview','70535cb2fa',45,25),(24,1557302155,1557302155,1,27,'/_processed_/9/6/preview_img-hero-alt_2d69f7a945.jpg','preview_img-hero-alt_2d69f7a945.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:134:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.14333864443795125,\"width\":1,\"height\":0.7133227111240975},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','7b7642e7269a6959613df60377ed39b46cae1495','7bab50a1dd406cb6c93e420426d59006fbd762dd','Image.Preview','2d69f7a945',45,25),(25,1562677470,1552294082,1,13,'',NULL,'a:11:{s:5:\"width\";N;s:6:\"height\";N;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:1200;s:9:\"maxHeight\";i:630;s:8:\"minWidth\";i:200;s:9:\"minHeight\";i:200;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','18ab6662db3ef933b8d79807c81e112eff8bfe6b','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','cdec70a28e',NULL,NULL),(26,1557325418,1557325418,1,13,'/_processed_/8/6/preview_fff300x400_1f29d6e1aa.png','preview_fff300x400_1f29d6e1aa.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:116:\"{\"default\":{\"cropArea\":{\"height\":1,\"width\":0.9833333333333333,\"x\":0,\"y\":0},\"selectedRatio\":\"0_00\",\"focusArea\":null}}\";}','2a032909872f5d6624e3d9599c907bfb493d2713','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.Preview','1f29d6e1aa',34,45),(27,1562141962,1548687845,1,3,'',NULL,'a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";a:0:{}}','bc1f0c05789fb979eae617866d760a757ed8011a','ae0085c07ec0529e5af8800fe25f2370e3087450','Image.CropScaleMask','df7f1338eb',NULL,NULL),(28,1559912422,1553608245,1,21,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','bc4027a124b7ca92ad5fd8ca373250201b9d5713','Image.CropScaleMask','ac7283fe69',NULL,NULL),(29,1559912422,1553608245,1,22,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','e2f186dbdb96475409925e7986387064be7d4f83','Image.CropScaleMask','ba8b9aa45f',NULL,NULL),(30,1559912422,1553608245,1,23,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','968b2281e8bc5393e9ec4341c58cc5cbcf39c41e','Image.CropScaleMask','bad10d2b9b',NULL,NULL),(31,1557839837,1553178119,1,20,'',NULL,'a:3:{s:5:\"width\";i:450;s:6:\"height\";d:260;s:4:\"crop\";N;}','ea6742f3c64a86d3e2670858c8810ca7bfe915fa','a657479537f0dfb820159e4cc7da3c1928bd443a','Image.CropScaleMask','051dbfacb6',NULL,NULL),(32,1557839837,1553173522,1,19,'',NULL,'a:3:{s:5:\"width\";i:395;s:6:\"height\";d:300;s:4:\"crop\";N;}','6b58ef983c4c79a01b1a8cf4ab9274a6adf29901','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.CropScaleMask','c3f3240188',NULL,NULL),(33,1557406015,1557406015,1,15,'/_processed_/6/7/csm_fff1680x600_8d97fe23e0.png','csm_fff1680x600_8d97fe23e0.png','a:3:{s:5:\"width\";i:600;s:6:\"height\";d:236;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:79.17525774;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1521.64948452;s:9:\"\0*\0height\";d:600;}}','3c93efd367c88ddd5fc973f290d3adb2145eb56d','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','8d97fe23e0',600,236),(34,1557760127,1557760127,1,19,'/_processed_/c/2/preview_395x300_7b0d5dd141.png','preview_395x300_7b0d5dd141.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.Preview','7b0d5dd141',45,34),(35,1557826558,1557826558,1,13,'/_processed_/8/6/csm_fff300x400_2178336042.png','csm_fff300x400_2178336042.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:141.83943089369424;s:8:\"\0*\0width\";d:295;s:9:\"\0*\0height\";d:116.32113821261152;}}','0481aeec74564dd7ac6eb82865f8bd75f2e4e82a','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','2178336042',295,116),(36,1557826566,1557826566,1,13,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1000;s:9:\"maxHeight\";i:1000;s:4:\"crop\";N;}','1097b19f7c94bc1bdd2bf43bfc22198c30890d2e','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','5d90b79e72',NULL,NULL),(37,1557826566,1557826566,1,13,'/_processed_/8/6/csm_fff300x400_233d52a028.png','csm_fff300x400_233d52a028.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:300;s:9:\"maxHeight\";i:300;s:4:\"crop\";N;}','e239fcbae08ee546b841850592062fe370de3336','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','233d52a028',225,300),(38,1557826576,1557826576,1,13,'/_processed_/8/6/csm_fff300x400_8772e87e32.png','csm_fff300x400_8772e87e32.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:140.85365853596025;s:8:\"\0*\0width\";d:300;s:9:\"\0*\0height\";d:118.2926829280795;}}','08275848e0fbdf0753bb955f1c01047035071e9c','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','8772e87e32',300,118),(39,1557826576,1557826576,1,13,'/_processed_/8/6/preview_fff300x400_c9179cced4.png','preview_fff300x400_c9179cced4.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:99:\"{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"0_00\",\"focusArea\":null}}\";}','7c89dc1fe1256a79fc499e3f897287f33fd2f5d4','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.Preview','c9179cced4',34,45),(40,1557827121,1552294082,1,13,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','a300fa1c26',NULL,NULL),(41,1557827121,1552294082,1,13,'',NULL,'a:7:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','6051721d37be65c89f3cfc382f29c9546ccf1b3e','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','642f316dfa',NULL,NULL),(42,1557826580,1557826580,1,13,'/_processed_/8/6/csm_fff300x400_517134d5e3.png','csm_fff300x400_517134d5e3.png','a:7:{s:5:\"width\";i:500;s:6:\"height\";i:400;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','5e6236b784275ecaa01de71d8665c17435e5f9e0','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','517134d5e3',500,400),(43,1557826634,1557826634,1,14,'/_processed_/3/c/csm_fff500x400_8572dc80d8.png','csm_fff500x400_8572dc80d8.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:101.42276422660042;s:8:\"\0*\0width\";d:500;s:9:\"\0*\0height\";d:197.1544715467992;}}','416390314de3c5ae14697ec682dce15adb417d47','898473980c3d09f0bedc9fdc0e462bc76a583cfe','Image.CropScaleMask','8572dc80d8',381,150),(44,1557826634,1557826634,1,14,'/_processed_/3/c/preview_fff500x400_cc3c153de1.png','preview_fff500x400_cc3c153de1.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','898473980c3d09f0bedc9fdc0e462bc76a583cfe','Image.Preview','cc3c153de1',45,36),(45,1557826648,1557826648,1,14,'/_processed_/3/c/preview_fff500x400_c6bf4fa319.png','preview_fff500x400_c6bf4fa319.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:133:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.25355691056650104,\"width\":1,\"height\":0.492886178866998},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','bce34482b78d1bba94f8c6b94b3bd363ceca246a','898473980c3d09f0bedc9fdc0e462bc76a583cfe','Image.Preview','c6bf4fa319',45,36),(46,1557826669,1557826669,1,14,'/_processed_/3/c/csm_fff500x400_8c047d0b31.png','csm_fff500x400_8c047d0b31.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:101.42276422660042;s:8:\"\0*\0width\";d:500;s:9:\"\0*\0height\";d:197.1544715467992;}}','b06b245d5ddf4a5256416809b9f781bb8bf7f400','898473980c3d09f0bedc9fdc0e462bc76a583cfe','Image.CropScaleMask','8c047d0b31',500,197),(47,1557826669,1557826669,1,14,'/_processed_/3/c/csm_fff500x400_2ebd1f4088.png','csm_fff500x400_2ebd1f4088.png','a:7:{s:5:\"width\";i:500;s:6:\"height\";i:400;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:101.42276422660042;s:8:\"\0*\0width\";d:500;s:9:\"\0*\0height\";d:197.1544715467992;}}','a17a8f74ad86ac1e9c9c0dc5ce9f4b614f70f9f5','898473980c3d09f0bedc9fdc0e462bc76a583cfe','Image.CropScaleMask','2ebd1f4088',500,400),(48,1557827203,1557827203,1,13,'/_processed_/8/6/preview_fff300x400_1fb0b4d35d.png','preview_fff300x400_1fb0b4d35d.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:135:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.35213414633990064,\"width\":1,\"height\":0.29573170732019877},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','cf4cae429749eceda2cc94c68038f496267adef1','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.Preview','1fb0b4d35d',34,45),(49,1557827206,1557827206,1,13,'/_processed_/8/6/csm_fff300x400_33ca7f6442.png','csm_fff300x400_33ca7f6442.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:140.85365853596025;s:8:\"\0*\0width\";d:300;s:9:\"\0*\0height\";d:118.2926829280795;}}','b65b1ba98cca230a00de0ab4ea04fd6c364644dc','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','33ca7f6442',300,118),(50,1557827206,1557827206,1,13,'/_processed_/8/6/csm_fff300x400_6f987df962.png','csm_fff300x400_6f987df962.png','a:7:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:140.85365853596025;s:8:\"\0*\0width\";d:300;s:9:\"\0*\0height\";d:118.2926829280795;}}','e1698e93434ca96d9d72000e5685073d0989d2d4','0191a04192a2af576c16ca5ea724eec1ce005a65','Image.CropScaleMask','6f987df962',300,400),(51,1557827574,1557827574,1,20,'/_processed_/b/5/csm_450x260_14541ff5ff.png','csm_450x260_14541ff5ff.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";N;}','1721acbe390638a893310b0f6fe9845a9cd2b754','a657479537f0dfb820159e4cc7da3c1928bd443a','Image.CropScaleMask','14541ff5ff',64,64),(52,1557827574,1557827574,1,19,'/_processed_/c/2/csm_395x300_6bc3ca58ce.png','csm_395x300_6bc3ca58ce.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";N;}','1721acbe390638a893310b0f6fe9845a9cd2b754','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.CropScaleMask','6bc3ca58ce',64,64),(53,1557847922,1552318255,1,14,'',NULL,'a:11:{s:5:\"width\";N;s:6:\"height\";N;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:1200;s:9:\"maxHeight\";i:630;s:8:\"minWidth\";i:200;s:9:\"minHeight\";i:200;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','18ab6662db3ef933b8d79807c81e112eff8bfe6b','898473980c3d09f0bedc9fdc0e462bc76a583cfe','Image.CropScaleMask','3ede6fc49f',NULL,NULL),(54,1557827916,1557827916,1,22,'/_processed_/f/2/csm_860x480-1_9886151de1.png','csm_860x480-1_9886151de1.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";N;}','1721acbe390638a893310b0f6fe9845a9cd2b754','e2f186dbdb96475409925e7986387064be7d4f83','Image.CropScaleMask','9886151de1',64,64),(55,1557827916,1557827916,1,23,'/_processed_/5/c/csm_860x480-3_37450cb26d.png','csm_860x480-3_37450cb26d.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";N;}','1721acbe390638a893310b0f6fe9845a9cd2b754','968b2281e8bc5393e9ec4341c58cc5cbcf39c41e','Image.CropScaleMask','37450cb26d',64,64),(56,1557827916,1557827916,1,21,'/_processed_/7/5/csm_860x480-2_4be3230251.png','csm_860x480-2_4be3230251.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";N;}','1721acbe390638a893310b0f6fe9845a9cd2b754','bc4027a124b7ca92ad5fd8ca373250201b9d5713','Image.CropScaleMask','4be3230251',64,64),(57,1557840281,1557840281,1,15,'/_processed_/6/7/csm_fff1680x600_5b939a4950.png','csm_fff1680x600_5b939a4950.png','a:3:{s:5:\"width\";i:600;s:6:\"height\";d:236;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:78.96;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1523.76;s:9:\"\0*\0height\";d:600;}}','cf0c215e0537e72af2cb5c91d22cd98859a80a35','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','5b939a4950',600,236),(58,1557840511,1557840511,1,15,'/_processed_/6/7/csm_fff1680x600_c5bc0bf650.png','csm_fff1680x600_c5bc0bf650.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";a:0:{}}','bc1f0c05789fb979eae617866d760a757ed8011a','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','c5bc0bf650',64,64),(59,1557840536,1557840536,1,5,'/_processed_/3/f/preview_fff_192634ef82.png','preview_fff_192634ef82.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.Preview','192634ef82',45,34),(60,1557842962,1557842962,1,15,'/_processed_/6/7/csm_fff1680x600_dc2b716c30.png','csm_fff1680x600_dc2b716c30.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:79.17525774;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1521.64948452;s:9:\"\0*\0height\";d:600;}}','c0727a526cec508b9a8e12b8f9000d4b4d7a95cd','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','dc2b716c30',381,150),(61,1557842962,1557842962,1,15,'/_processed_/6/7/preview_fff1680x600_439cdf7821.png','preview_fff1680x600_439cdf7821.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','16330877cd45441d1be163dfe6f885e99c472e29','Image.Preview','439cdf7821',45,16),(62,1557842975,1557842975,1,15,'/_processed_/6/7/preview_fff1680x600_ca63ae02b5.png','preview_fff1680x600_ca63ae02b5.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:134:\"{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','59971aa03620b276996a3d13fa48a2b2eff989c9','16330877cd45441d1be163dfe6f885e99c472e29','Image.Preview','ca63ae02b5',45,16),(63,1557843932,1557843932,1,15,'/_processed_/6/7/csm_fff1680x600_9ebb07a8f4.png','csm_fff1680x600_9ebb07a8f4.png','a:11:{s:5:\"width\";N;s:6:\"height\";N;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:1200;s:9:\"maxHeight\";i:630;s:8:\"minWidth\";i:200;s:9:\"minHeight\";i:200;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','18ab6662db3ef933b8d79807c81e112eff8bfe6b','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','9ebb07a8f4',1200,429),(64,1557846817,1552467946,1,15,'',NULL,'a:11:{s:5:\"width\";N;s:6:\"height\";N;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','a0078b092538fd01a741e1783fa62dd2c2d4d6f3','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','6e48567535',NULL,NULL),(65,1557846868,1557846868,1,15,'/_processed_/6/7/csm_fff1680x600_20ffd01184.png','csm_fff1680x600_20ffd01184.png','a:11:{s:5:\"width\";N;s:6:\"height\";N;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:79.17525774;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1521.64948452;s:9:\"\0*\0height\";d:600;}}','02755eb165c05cb2991c868e40685449f9b71557','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','20ffd01184',1521,600),(66,1557912136,1557912136,1,10,'/_processed_/2/4/csm_Bildschirmfoto_vom_2019-03-05_09-31-56_c49f128b11.png','csm_Bildschirmfoto_vom_2019-03-05_09-31-56_c49f128b11.png','a:3:{s:5:\"width\";s:4:\"590m\";s:6:\"height\";N;s:4:\"crop\";N;}','d5e685a99905080ee894072160ee152f1a6f03e3','edd059133ce8a602451549409ad41e5253453424','Image.CropScaleMask','c49f128b11',590,277),(67,1557912142,1557912142,1,7,'/_processed_/a/8/csm_Bildschirmfoto_vom_2019-03-04_13-48-09_8186fe8e36.png','csm_Bildschirmfoto_vom_2019-03-04_13-48-09_8186fe8e36.png','a:3:{s:5:\"width\";s:4:\"590m\";s:6:\"height\";N;s:4:\"crop\";N;}','d5e685a99905080ee894072160ee152f1a6f03e3','672c002ca7d9943993f039a9f4f57c50d9a17792','Image.CropScaleMask','8186fe8e36',590,187),(68,1557912150,1557912150,1,22,'/_processed_/f/2/csm_860x480-1_46281b2e98.png','csm_860x480-1_46281b2e98.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:70.44715446975269;s:8:\"\0*\0width\";d:860;s:9:\"\0*\0height\";d:339.1056910604946;}}','de8c166a412b0e64b86ff81f6c5a5edc1c0639ee','e2f186dbdb96475409925e7986387064be7d4f83','Image.CropScaleMask','46281b2e98',381,150),(69,1557912150,1557912150,1,22,'/_processed_/f/2/preview_860x480-1_4f1788891f.png','preview_860x480-1_4f1788891f.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','e2f186dbdb96475409925e7986387064be7d4f83','Image.Preview','4f1788891f',45,25),(70,1557912153,1557912153,1,21,'/_processed_/7/5/csm_860x480-2_28f087aede.png','csm_860x480-2_28f087aede.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:70.44715446975269;s:8:\"\0*\0width\";d:860;s:9:\"\0*\0height\";d:339.1056910604946;}}','de8c166a412b0e64b86ff81f6c5a5edc1c0639ee','bc4027a124b7ca92ad5fd8ca373250201b9d5713','Image.CropScaleMask','28f087aede',381,150),(71,1557912153,1557912153,1,21,'/_processed_/7/5/preview_860x480-2_6d225b4be4.png','preview_860x480-2_6d225b4be4.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','bc4027a124b7ca92ad5fd8ca373250201b9d5713','Image.Preview','6d225b4be4',45,25),(72,1557912158,1557912158,1,23,'/_processed_/5/c/csm_860x480-3_6885aafceb.png','csm_860x480-3_6885aafceb.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:70.44715446975269;s:8:\"\0*\0width\";d:860;s:9:\"\0*\0height\";d:339.1056910604946;}}','de8c166a412b0e64b86ff81f6c5a5edc1c0639ee','968b2281e8bc5393e9ec4341c58cc5cbcf39c41e','Image.CropScaleMask','6885aafceb',381,150),(73,1557912158,1557912158,1,23,'/_processed_/5/c/preview_860x480-3_f1ef462ec4.png','preview_860x480-3_f1ef462ec4.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','968b2281e8bc5393e9ec4341c58cc5cbcf39c41e','Image.Preview','f1ef462ec4',45,25),(74,1557912159,1557912159,1,22,'/_processed_/f/2/preview_860x480-1_a82179cf45.png','preview_860x480-1_a82179cf45.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:133:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1467649051453181,\"width\":1,\"height\":0.7064701897093638},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','e5e0e69fd4d01001d1b4377cf97c499e32725084','e2f186dbdb96475409925e7986387064be7d4f83','Image.Preview','a82179cf45',45,25),(75,1557912159,1557912159,1,21,'/_processed_/7/5/preview_860x480-2_cbc7b1485b.png','preview_860x480-2_cbc7b1485b.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:133:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1467649051453181,\"width\":1,\"height\":0.7064701897093638},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','e5e0e69fd4d01001d1b4377cf97c499e32725084','bc4027a124b7ca92ad5fd8ca373250201b9d5713','Image.Preview','cbc7b1485b',45,25),(76,1557912159,1557912159,1,23,'/_processed_/5/c/preview_860x480-3_5e94a4a62f.png','preview_860x480-3_5e94a4a62f.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:133:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1467649051453181,\"width\":1,\"height\":0.7064701897093638},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','e5e0e69fd4d01001d1b4377cf97c499e32725084','968b2281e8bc5393e9ec4341c58cc5cbcf39c41e','Image.Preview','5e94a4a62f',45,25),(77,1557912161,1557912161,1,22,'/_processed_/f/2/csm_860x480-1_e7368a7e10.png','csm_860x480-1_e7368a7e10.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:70.44715446975269;s:8:\"\0*\0width\";d:860;s:9:\"\0*\0height\";d:339.1056910604946;}}','25917ad0636149cc833bd3f551ce87ef7858c981','e2f186dbdb96475409925e7986387064be7d4f83','Image.CropScaleMask','e7368a7e10',860,339),(78,1557912161,1557912161,1,21,'/_processed_/7/5/csm_860x480-2_2441ed28b8.png','csm_860x480-2_2441ed28b8.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:70.44715446975269;s:8:\"\0*\0width\";d:860;s:9:\"\0*\0height\";d:339.1056910604946;}}','25917ad0636149cc833bd3f551ce87ef7858c981','bc4027a124b7ca92ad5fd8ca373250201b9d5713','Image.CropScaleMask','2441ed28b8',860,339),(79,1557912161,1557912161,1,23,'/_processed_/5/c/csm_860x480-3_bbd84aa173.png','csm_860x480-3_bbd84aa173.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:70.44715446975269;s:8:\"\0*\0width\";d:860;s:9:\"\0*\0height\";d:339.1056910604946;}}','25917ad0636149cc833bd3f551ce87ef7858c981','968b2281e8bc5393e9ec4341c58cc5cbcf39c41e','Image.CropScaleMask','bbd84aa173',860,339),(80,1557922861,1557922861,1,4,'/_processed_/9/3/preview_profil-conz_8f1ffc1d5e.jpg','preview_profil-conz_8f1ffc1d5e.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.Preview','8f1ffc1d5e',45,45),(81,1558428034,1558428034,1,18,'/_processed_/a/c/csm_csm_img-hero_40d930c487_3eb318d74f.jpg','csm_csm_img-hero_40d930c487_3eb318d74f.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:116.09756097260919;s:8:\"\0*\0width\";d:1440;s:9:\"\0*\0height\";d:567.8048780547816;}}','1637703bca6590089a2b2db299b8c4463617ebbe','90ef92e67404c0c7864340b8877ed465bd7efa3d','Image.CropScaleMask','3eb318d74f',381,150),(82,1558428034,1558428034,1,18,'/_processed_/a/c/preview_csm_img-hero_40d930c487_81aa6cac07.jpg','preview_csm_img-hero_40d930c487_81aa6cac07.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','90ef92e67404c0c7864340b8877ed465bd7efa3d','Image.Preview','81aa6cac07',45,25),(83,1558431744,1558431744,1,27,'/_processed_/9/6/csm_img-hero-alt_f6e234e052.jpg','csm_img-hero-alt_f6e234e052.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:114.09756097260919;s:8:\"\0*\0width\";d:1440;s:9:\"\0*\0height\";d:567.8048780547816;}}','d38236414ed796f01386edb5b4408fe23299cc33','7bab50a1dd406cb6c93e420426d59006fbd762dd','Image.CropScaleMask','f6e234e052',381,150),(84,1558431744,1558431744,1,27,'/_processed_/9/6/preview_img-hero-alt_c1dba3296e.jpg','preview_img-hero-alt_c1dba3296e.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','7bab50a1dd406cb6c93e420426d59006fbd762dd','Image.Preview','c1dba3296e',45,25),(85,1558433975,1558433975,1,15,'/_processed_/6/7/csm_fff1680x600_512e916dd8.png','csm_fff1680x600_512e916dd8.png','a:7:{s:5:\"width\";i:1440;s:6:\"height\";i:800;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:79.17525774;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1521.64948452;s:9:\"\0*\0height\";d:600;}}','184d8c30864a8dc0d618c27559458ffc365a584c','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','512e916dd8',1440,800),(86,1558445795,1558445795,1,21,'/_processed_/7/5/csm_860x480-2_41e8a1e0b5.png','csm_860x480-2_41e8a1e0b5.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";a:0:{}}','bc1f0c05789fb979eae617866d760a757ed8011a','bc4027a124b7ca92ad5fd8ca373250201b9d5713','Image.CropScaleMask','41e8a1e0b5',64,64),(87,1558445795,1558445795,1,22,'/_processed_/f/2/csm_860x480-1_d750790f5f.png','csm_860x480-1_d750790f5f.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";a:0:{}}','bc1f0c05789fb979eae617866d760a757ed8011a','e2f186dbdb96475409925e7986387064be7d4f83','Image.CropScaleMask','d750790f5f',64,64),(88,1558445795,1558445795,1,23,'/_processed_/5/c/csm_860x480-3_493358df3d.png','csm_860x480-3_493358df3d.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";a:0:{}}','bc1f0c05789fb979eae617866d760a757ed8011a','968b2281e8bc5393e9ec4341c58cc5cbcf39c41e','Image.CropScaleMask','493358df3d',64,64),(89,1558446314,1558446314,1,19,'/_processed_/c/2/csm_395x300_293d2d489b.png','csm_395x300_293d2d489b.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:72.12398373901432;s:8:\"\0*\0width\";d:395;s:9:\"\0*\0height\";d:155.75203252197136;}}','6f88322f23bacb2c89d8d4734387f7a04d29b94a','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.CropScaleMask','293d2d489b',383,150),(90,1558446316,1558446316,1,19,'/_processed_/c/2/preview_395x300_e866b7a6dc.png','preview_395x300_e866b7a6dc.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:134:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','551a1e99321219f81bbb8068073ebc837815a228','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.Preview','e866b7a6dc',45,34),(91,1558446318,1558446318,1,19,'/_processed_/c/2/csm_395x300_5057e6fc2b.png','csm_395x300_5057e6fc2b.png','a:7:{s:5:\"width\";i:395;s:6:\"height\";i:300;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:72.12398373901432;s:8:\"\0*\0width\";d:395;s:9:\"\0*\0height\";d:155.75203252197136;}}','c60019dc3c8f954d606250a9a376e557e0fe1091','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.CropScaleMask','5057e6fc2b',395,300),(92,1558447958,1558447958,1,19,'/_processed_/c/2/csm_395x300_c13ecb41b9.png','csm_395x300_c13ecb41b9.png','a:7:{s:5:\"width\";i:595;s:6:\"height\";i:300;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:72.12398373901432;s:8:\"\0*\0width\";d:395;s:9:\"\0*\0height\";d:155.75203252197136;}}','7cb9328848dfaffddd5bbe641a6bf66a184b9b56','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.CropScaleMask','c13ecb41b9',595,300),(93,1562244639,1551454061,1,4,'',NULL,'a:7:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','1aa425df7c3273f6fd638622b902c937562128c7','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.CropScaleMask','81b3fe0713',NULL,NULL),(94,1558528551,1558528551,1,4,'/_processed_/9/3/csm_profil-conz_0080b30ab2.jpg','csm_profil-conz_0080b30ab2.jpg','a:7:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:30.284552845320086;s:8:\"\0*\0width\";d:100;s:9:\"\0*\0height\";d:39.430894309359836;}}','5ebe5c6ddbedadd1d39d1b0fae4fbbec488b44f1','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.CropScaleMask','0080b30ab2',100,100),(95,1558602781,1558602781,1,29,'/_processed_/f/7/preview_595x300_bec6fdbd8c.png','preview_595x300_bec6fdbd8c.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','6085d64271e27b0c67061ac838e83f461c60f8d2','Image.Preview','bec6fdbd8c',64,32),(96,1558602781,1558602781,1,29,'/_processed_/f/7/csm_595x300_69297b26a9.png','csm_595x300_69297b26a9.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:32.69308942965448;s:8:\"\0*\0width\";d:595;s:9:\"\0*\0height\";d:234.61382114069104;}}','6c19fdc478c7bfd893d0fe05946080788ec3bab3','6085d64271e27b0c67061ac838e83f461c60f8d2','Image.CropScaleMask','69297b26a9',382,150),(97,1558602781,1558602781,1,29,'/_processed_/f/7/preview_595x300_c3568aba2b.png','preview_595x300_c3568aba2b.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','6085d64271e27b0c67061ac838e83f461c60f8d2','Image.Preview','c3568aba2b',45,23),(98,1558602784,1558602784,1,29,'/_processed_/f/7/preview_595x300_32d87a3fe9.png','preview_595x300_32d87a3fe9.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:134:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.10897696476551492,\"width\":1,\"height\":0.7820460704689701},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','3011058ae24b266750f55cf15430fa6971291311','6085d64271e27b0c67061ac838e83f461c60f8d2','Image.Preview','32d87a3fe9',45,23),(99,1558602797,1558602797,1,29,'/_processed_/f/7/csm_595x300_67affdbd02.png','csm_595x300_67affdbd02.png','a:7:{s:5:\"width\";i:595;s:6:\"height\";i:300;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:32.69308942965448;s:8:\"\0*\0width\";d:595;s:9:\"\0*\0height\";d:234.61382114069104;}}','5033d0b2b63e064d3761bbefb68218d92d2c225b','6085d64271e27b0c67061ac838e83f461c60f8d2','Image.CropScaleMask','67affdbd02',595,300),(100,1558947858,1558947858,1,19,'/_processed_/c/2/csm_395x300_a48842c491.png','csm_395x300_a48842c491.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:72.12398373901432;s:8:\"\0*\0width\";d:395;s:9:\"\0*\0height\";d:155.75203252197136;}}','cf10a167c66d31497f4005f84f881f2f1e058c03','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.CropScaleMask','a48842c491',395,155),(101,1558947858,1558947858,1,19,'/_processed_/c/2/csm_395x300_7aab15d00d.png','csm_395x300_7aab15d00d.png','a:7:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:72.12398373901432;s:8:\"\0*\0width\";d:395;s:9:\"\0*\0height\";d:155.75203252197136;}}','7a77fc60bb1894a3c2159f12b3bc8ec6d84e724e','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.CropScaleMask','7aab15d00d',300,400),(102,1558951021,1558951021,1,29,'/_processed_/f/7/csm_595x300_d5d2ff760f.png','csm_595x300_d5d2ff760f.png','a:7:{s:5:\"width\";i:395;s:6:\"height\";i:300;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:32.69308942965448;s:8:\"\0*\0width\";d:595;s:9:\"\0*\0height\";d:234.61382114069104;}}','e28c13ee436d026193db10c634872496203c253d','6085d64271e27b0c67061ac838e83f461c60f8d2','Image.CropScaleMask','d5d2ff760f',395,300),(103,1559051483,1559051483,1,4,'/_processed_/9/3/csm_profil-conz_9413a2eee7.jpg','csm_profil-conz_9413a2eee7.jpg','a:7:{s:5:\"width\";i:395;s:6:\"height\";i:300;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','ba2771fdc34b66e6482a652983cf57c31be14db5','98bf97b3d621e3f2e5defdb63a43ef22e0aaf934','Image.CropScaleMask','9413a2eee7',395,300),(104,1559566251,1559566251,1,15,'/_processed_/6/7/preview_fff1680x600_3640d3ecff.png','preview_fff1680x600_3640d3ecff.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','16330877cd45441d1be163dfe6f885e99c472e29','Image.Preview','3640d3ecff',45,16),(105,1559566251,1559566251,1,12,'/_processed_/7/1/preview_fff2_c722decd0e.png','preview_fff2_c722decd0e.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','dafe98e1e913ee8c56cdcfea343400044531c94f','Image.Preview','c722decd0e',45,18),(106,1559653864,1559653864,1,15,'/_processed_/6/7/csm_fff1680x600_18e1af2abc.png','csm_fff1680x600_18e1af2abc.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:79.17525774;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1521.64948452;s:9:\"\0*\0height\";d:600;}}','19db2a09ad33d5b59b105d6415c9ea296a53f602','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','18e1af2abc',1521,600),(107,1560776041,1560776041,1,19,'/_processed_/c/2/preview_395x300_a64cdf1ee9.png','preview_395x300_a64cdf1ee9.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.Preview','a64cdf1ee9',64,49),(108,1562677531,1553173522,1,19,'',NULL,'a:7:{s:5:\"width\";i:395;s:6:\"height\";i:300;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','ba2771fdc34b66e6482a652983cf57c31be14db5','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.CropScaleMask','cbc26640b3',NULL,NULL),(109,1562062375,1562062375,1,29,'/_processed_/f/7/csm_595x300_7ebec0678c.png','csm_595x300_7ebec0678c.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:32.69308942965448;s:8:\"\0*\0width\";d:595;s:9:\"\0*\0height\";d:234.61382114069104;}}','c5c77a56c4e16de7396edbafc2bb3f7bf15bf111','6085d64271e27b0c67061ac838e83f461c60f8d2','Image.CropScaleMask','7ebec0678c',595,234),(110,1562146450,1562146450,1,12,'/_processed_/7/1/csm_fff2_5c090b2923.png','csm_fff2_5c090b2923.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";a:0:{}}','bc1f0c05789fb979eae617866d760a757ed8011a','dafe98e1e913ee8c56cdcfea343400044531c94f','Image.CropScaleMask','5c090b2923',64,64),(111,1562146450,1562146450,1,11,'/_processed_/b/8/csm_slider1_0617b83841.png','csm_slider1_0617b83841.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";a:0:{}}','bc1f0c05789fb979eae617866d760a757ed8011a','3357d7d2abbdde3b9951af4d05e64efa1e06c2d0','Image.CropScaleMask','0617b83841',64,64),(112,1562146459,1562146459,1,22,'/_processed_/f/2/csm_860x480-1_feca1b8b98.png','csm_860x480-1_feca1b8b98.png','a:3:{s:5:\"width\";i:295;s:6:\"height\";d:116;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:70.44715446975269;s:8:\"\0*\0width\";d:860;s:9:\"\0*\0height\";d:339.1056910604946;}}','4d3856138d0d4f1e12ff51ad5c0e4a73be4719a1','e2f186dbdb96475409925e7986387064be7d4f83','Image.CropScaleMask','feca1b8b98',295,116),(113,1562146460,1562146460,1,21,'/_processed_/7/5/csm_860x480-2_7545e81ebf.png','csm_860x480-2_7545e81ebf.png','a:3:{s:5:\"width\";i:295;s:6:\"height\";d:116;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:70.44715446975269;s:8:\"\0*\0width\";d:860;s:9:\"\0*\0height\";d:339.1056910604946;}}','4d3856138d0d4f1e12ff51ad5c0e4a73be4719a1','bc4027a124b7ca92ad5fd8ca373250201b9d5713','Image.CropScaleMask','7545e81ebf',295,116),(114,1562146460,1562146460,1,23,'/_processed_/5/c/csm_860x480-3_0aaebb7f6d.png','csm_860x480-3_0aaebb7f6d.png','a:3:{s:5:\"width\";i:295;s:6:\"height\";d:116;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:70.44715446975269;s:8:\"\0*\0width\";d:860;s:9:\"\0*\0height\";d:339.1056910604946;}}','4d3856138d0d4f1e12ff51ad5c0e4a73be4719a1','968b2281e8bc5393e9ec4341c58cc5cbcf39c41e','Image.CropScaleMask','0aaebb7f6d',295,116),(115,1562146465,1562146465,1,12,'/_processed_/7/1/csm_fff2_49bbbb671f.png','csm_fff2_49bbbb671f.png','a:3:{s:5:\"width\";i:600;s:6:\"height\";d:236;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:8.780487801377376;s:8:\"\0*\0width\";d:1680;s:9:\"\0*\0height\";d:662.4390243972452;}}','d74ddd60157deeb6190731a2761176a7722cd23a','dafe98e1e913ee8c56cdcfea343400044531c94f','Image.CropScaleMask','49bbbb671f',600,236),(116,1562146465,1562146465,1,11,'/_processed_/b/8/csm_slider1_255c6d0457.png','csm_slider1_255c6d0457.png','a:3:{s:5:\"width\";i:600;s:6:\"height\";d:236;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:8.780487801377376;s:8:\"\0*\0width\";d:1680;s:9:\"\0*\0height\";d:662.4390243972452;}}','d74ddd60157deeb6190731a2761176a7722cd23a','3357d7d2abbdde3b9951af4d05e64efa1e06c2d0','Image.CropScaleMask','255c6d0457',600,236),(117,1562146465,1562146465,1,18,'/_processed_/a/c/csm_csm_img-hero_40d930c487_13a9e410c1.jpg','csm_csm_img-hero_40d930c487_13a9e410c1.jpg','a:3:{s:5:\"width\";i:295;s:6:\"height\";d:116;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:116.09756097260919;s:8:\"\0*\0width\";d:1440;s:9:\"\0*\0height\";d:567.8048780547816;}}','d09abd2d038693be7cfe7a67946446a34f0397bf','90ef92e67404c0c7864340b8877ed465bd7efa3d','Image.CropScaleMask','13a9e410c1',295,116),(118,1562146465,1562146465,1,15,'/_processed_/6/7/csm_fff1680x600_66e9248efc.png','csm_fff1680x600_66e9248efc.png','a:3:{s:5:\"width\";i:295;s:6:\"height\";d:116;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:79.17525774;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1521.64948452;s:9:\"\0*\0height\";d:600;}}','0e5e1ffe1fe973a017db7c71a4ac0953ca68a128','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','66e9248efc',295,116),(119,1562147278,1562147278,1,15,'/_processed_/6/7/csm_fff1680x600_51ed74c302.png','csm_fff1680x600_51ed74c302.png','a:3:{s:5:\"width\";i:295;s:6:\"height\";d:105;s:4:\"crop\";N;}','6c15d575a994f28884b66633918461b0672dded4','16330877cd45441d1be163dfe6f885e99c472e29','Image.CropScaleMask','51ed74c302',295,105),(120,1562147278,1562147278,1,12,'/_processed_/7/1/csm_fff2_ec496cc076.png','csm_fff2_ec496cc076.png','a:3:{s:5:\"width\";i:295;s:6:\"height\";d:119;s:4:\"crop\";N;}','ad83f97cc75997869152fa561da7616fc1764cbe','dafe98e1e913ee8c56cdcfea343400044531c94f','Image.CropScaleMask','ec496cc076',295,119),(121,1562147405,1562147405,1,5,'/_processed_/3/f/csm_fff_162c92017e.png','csm_fff_162c92017e.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:72.12398373901432;s:8:\"\0*\0width\";d:395;s:9:\"\0*\0height\";d:155.75203252197136;}}','6f88322f23bacb2c89d8d4734387f7a04d29b94a','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.CropScaleMask','162c92017e',383,150),(122,1562147406,1562147406,1,5,'/_processed_/3/f/preview_fff_251e3cbe20.png','preview_fff_251e3cbe20.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','148f440e9c2dafe4d07bb9a2da513721ac161b70','Image.Preview','251e3cbe20',45,34),(123,1562147413,1562147413,1,12,'/_processed_/7/1/csm_fff2_2c16e7b9f5.png','csm_fff2_2c16e7b9f5.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:8.780487801377376;s:8:\"\0*\0width\";d:1680;s:9:\"\0*\0height\";d:662.4390243972452;}}','a2bdd1c6ca32521aa0020810f439d4735d2bfa76','dafe98e1e913ee8c56cdcfea343400044531c94f','Image.CropScaleMask','2c16e7b9f5',381,150),(124,1562147413,1562147413,1,12,'/_processed_/7/1/preview_fff2_90f320404a.png','preview_fff2_90f320404a.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','dafe98e1e913ee8c56cdcfea343400044531c94f','Image.Preview','90f320404a',45,18),(125,1562147418,1562147418,1,12,'/_processed_/7/1/preview_fff2_2317573da7.png','preview_fff2_2317573da7.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:135:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.012912482060849082,\"width\":1,\"height\":0.9741750358783018},\"selectedRatio\":\"2_54\",\"focusArea\":null}}\";}','f901dbf883fb4812680dc5ddb7599c1f982287fd','dafe98e1e913ee8c56cdcfea343400044531c94f','Image.Preview','2317573da7',45,18),(126,1562147421,1562147421,1,12,'/_processed_/7/1/csm_fff2_4837da475e.png','csm_fff2_4837da475e.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:8.780487801377376;s:8:\"\0*\0width\";d:1680;s:9:\"\0*\0height\";d:662.4390243972452;}}','95a53e186ed855ea0ddb2de4554d1e05c2603871','dafe98e1e913ee8c56cdcfea343400044531c94f','Image.CropScaleMask','4837da475e',1680,662),(127,1562162970,1562162970,1,21,'/_processed_/7/5/csm_860x480-2_433728cefc.png','csm_860x480-2_433728cefc.png','a:3:{s:5:\"width\";i:295;s:6:\"height\";d:164;s:4:\"crop\";N;}','fb8ffef23651adeae40a1b0b1f3967550431aabb','bc4027a124b7ca92ad5fd8ca373250201b9d5713','Image.CropScaleMask','433728cefc',295,164),(128,1562162970,1562162970,1,22,'/_processed_/f/2/csm_860x480-1_517ff0fcff.png','csm_860x480-1_517ff0fcff.png','a:3:{s:5:\"width\";i:295;s:6:\"height\";d:164;s:4:\"crop\";N;}','fb8ffef23651adeae40a1b0b1f3967550431aabb','e2f186dbdb96475409925e7986387064be7d4f83','Image.CropScaleMask','517ff0fcff',295,164),(129,1562162970,1562162970,1,23,'/_processed_/5/c/csm_860x480-3_35f54726b9.png','csm_860x480-3_35f54726b9.png','a:3:{s:5:\"width\";i:295;s:6:\"height\";d:164;s:4:\"crop\";N;}','fb8ffef23651adeae40a1b0b1f3967550431aabb','968b2281e8bc5393e9ec4341c58cc5cbcf39c41e','Image.CropScaleMask','35f54726b9',295,164),(130,1562239836,1562239836,1,29,'/_processed_/f/7/csm_595x300_4a28ea8d07.png','csm_595x300_4a28ea8d07.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";s:3:\"282\";s:9:\"maxHeight\";s:0:\"\";s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:32.69308942965448;s:8:\"\0*\0width\";d:595;s:9:\"\0*\0height\";d:234.61382114069104;}}','e08c9f21a37c7555ef671cbec312726f9f0c0dca','6085d64271e27b0c67061ac838e83f461c60f8d2','Image.CropScaleMask','4a28ea8d07',282,111),(131,1562240343,1562240343,1,29,'/_processed_/f/7/csm_595x300_55614164b5.png','csm_595x300_55614164b5.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";a:0:{}}','bc1f0c05789fb979eae617866d760a757ed8011a','6085d64271e27b0c67061ac838e83f461c60f8d2','Image.CropScaleMask','55614164b5',64,64),(132,1562240405,1562240405,0,32,'/typo3temp/assets/_processed_/7/e/csm_dummy-preview-image_ffbf12aeea.png','csm_dummy-preview-image_ffbf12aeea.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";s:3:\"100\";s:9:\"maxHeight\";s:3:\"100\";s:4:\"crop\";N;}','7453c7fb8144053cd781abdc92c94b459a82a5b1','b069aa085f06da6743b904400b0e412c3b0b5b07','Image.CropScaleMask','ffbf12aeea',100,100);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `downloadname` tinytext COLLATE utf8_unicode_ci,
  `showinpreview` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,6,1548687904,1548687904,1,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',3,3,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.27676114412507,\"width\":1,\"height\":0.44647771174986},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(2,6,1560762184,1551454062,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',4,9,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(3,6,1562147224,1551886253,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',5,13,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"0_00\",\"focusArea\":null}}',0,NULL,NULL,0),(4,6,1562147217,1551886386,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',5,14,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"0_00\",\"focusArea\":null}}',0,NULL,NULL,0),(5,6,1562147209,1551886425,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',5,15,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"0_00\",\"focusArea\":null}}',0,NULL,NULL,0),(6,6,1551951166,1551949727,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',8,16,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(7,6,1551951166,1551949727,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',10,16,'tt_content','media',2,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(8,6,1551951166,1551949727,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',7,16,'tt_content','media',3,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(9,6,1551951166,1551949727,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',9,16,'tt_content','media',4,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(10,6,1551951495,1551951140,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',7,18,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.09924390335319659,\"y\":0,\"width\":0.8015121932936068,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(11,6,1551951501,1551951186,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',10,19,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.07879144514793653,\"width\":1,\"height\":0.842417109704127},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(12,6,1551954420,1551951522,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',7,20,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.09924390335319659,\"y\":0,\"width\":0.8015121932936068,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(13,6,1562147173,1551954420,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',11,20,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.012912482060849082,\"width\":1,\"height\":0.9741750358783018},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(14,6,1562147163,1552041838,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',12,21,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.012912482060849082,\"width\":1,\"height\":0.9741750358783018},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(15,6,1556208562,1552294084,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',13,22,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.9966666666666667,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(16,6,1556208562,1552318267,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',14,32,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(17,6,1552324309,1552324280,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',13,41,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(18,1,1562147181,1552384886,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',5,43,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"0_00\",\"focusArea\":null}}',0,NULL,NULL,0),(19,1,1562147192,1552384886,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',5,44,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"0_00\",\"focusArea\":null}}',0,NULL,NULL,0),(20,1,1562147200,1552384886,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',5,45,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"0_00\",\"focusArea\":null}}',0,NULL,NULL,0),(21,6,1557760301,1552405464,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',5,40,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(22,6,1557760301,1552405597,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',5,54,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(23,6,1557760301,1552405606,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',5,55,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(24,1,1558529890,1552408190,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',4,56,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(25,2,1552474053,1552467962,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',15,59,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(26,2,1552475202,1552474053,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',15,59,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(27,26,1555943019,1552489057,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',15,63,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(28,6,1553074608,1553073799,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',18,66,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(29,6,1562146752,1553074631,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',18,65,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1451219512157615,\"width\":1,\"height\":0.709756097568477},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(30,26,1553163655,1553163655,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',5,70,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(31,27,1557909564,1553173535,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',19,73,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(32,27,1557909564,1553173701,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',19,74,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(33,27,1557909564,1553173706,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',19,75,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(34,27,1557909564,1553173716,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',19,76,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(35,27,1557909564,1553178130,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',20,80,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(36,27,1557909564,1553178612,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',20,81,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(37,6,1562147376,1553591886,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',15,16,'tt_content','image',1,'sys_file','Greifvögel in Hessen','Majestätisch gleiten sie durch die Lüfte. Ihr Körperbau macht sie zu perfekten Fliegern. Ihr Sehvermögern macht aus den Flugkünstlern bestechende Jäger. Anmut und Kraft der Greifvögel faszinieren die Menschen seit jeher. Aber Greifvögel haben nicht nur Freunde.','Projekt im Kreis Gross-Gerau','t3://page?uid=27','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(38,6,1562147376,1553591916,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',12,16,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(39,24,1553608252,1553608248,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',21,82,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(40,24,1553608252,1553608248,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',22,82,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(41,24,1553608252,1553608248,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',23,82,'tt_content','image',3,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(42,3,1554459687,1554459524,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',15,84,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(43,32,1554801252,1554801252,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',15,89,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(44,25,1555942502,1555942052,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',15,95,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(45,25,1562147774,1555942535,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',15,95,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"height\":1,\"width\":0.907,\"x\":0.047,\"y\":0},\"selectedRatio\":\"0_00\",\"focusArea\":null}}',0,NULL,NULL,0),(46,6,1559566630,1556196639,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',13,6,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.35213414633990064,\"width\":1,\"height\":0.29573170732019877},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(47,1,1561985274,1557218865,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',27,65,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.14333864443795125,\"width\":1,\"height\":0.7133227111240975},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(48,41,1558529114,1557236016,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',4,1,'tx_rkwauthors_domain_model_authors','image_boxes',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"0_00\",\"focusArea\":null}}',0,NULL,NULL,0),(49,1,1557237820,1557236322,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',4,99,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(50,1,1558511724,1557236350,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',4,100,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(51,45,1558515824,1557760129,3,0,0,0,0,0,0,'',0,0,0,0,0,0,-1,0,_binary 'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',19,4,'tx_rkwprojects_domain_model_projects','partnerLogos',1,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(52,45,1558520139,1557760146,3,0,0,0,0,0,0,'',0,0,0,0,0,0,-1,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,1,'tx_rkwprojects_domain_model_projects','partnerLogos',1,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(53,45,1558515813,1557760155,3,0,0,0,0,0,0,'',0,0,0,0,0,0,-1,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,2,'tx_rkwprojects_domain_model_projects','partnerLogos',1,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(54,45,1558515819,1557760164,3,0,0,0,0,0,0,'',0,0,0,0,0,0,-1,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,3,'tx_rkwprojects_domain_model_projects','partnerLogos',1,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(55,2,1558432289,1557826647,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',14,2,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.25355691056650104,\"width\":1,\"height\":0.492886178866998},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(56,27,1557840571,1557840571,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',5,108,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(57,24,1557842628,1557842628,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',5,115,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(58,25,1558619552,1557842974,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',15,25,'pages','txRkwBasicsArticleImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(59,2,1558432289,1557848019,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',15,2,'pages','txRkwBasicsArticleImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(60,32,1557850344,1557850344,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',21,122,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(61,32,1557850344,1557850344,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',22,122,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(62,32,1557850344,1557850344,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',23,122,'tt_content','image',3,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(63,25,1562147731,1557912158,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',22,125,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1467649051453181,\"width\":1,\"height\":0.7064701897093638},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(64,25,1562147731,1557912158,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',21,125,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1467649051453181,\"width\":1,\"height\":0.7064701897093638},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(65,25,1562147731,1557912158,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',23,125,'tt_content','image',3,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1467649051453181,\"width\":1,\"height\":0.7064701897093638},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(66,2,1558432289,1558431746,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',27,2,'pages','txRkwBasicsArticleImage',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.14333864443795125,\"width\":1,\"height\":0.7133227111240975},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(67,1,1562146752,1558433849,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',15,65,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(68,25,1558619552,1558446314,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,25,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(69,26,1558943580,1558446343,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',19,26,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(70,27,1558943590,1558446365,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,27,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(71,46,1558602411,1558602411,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',19,46,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(72,47,1558602794,1558602783,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',29,47,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.10897696476551492,\"width\":1,\"height\":0.7820460704689701},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(73,0,1558603492,1558602960,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',29,48,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.10897696476551492,\"width\":1,\"height\":0.7820460704689701},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(74,49,1558602994,1558602970,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,49,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(75,50,1558603437,1558603009,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,50,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(76,51,1558603024,1558603015,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,51,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(77,52,1558603410,1558603381,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',29,52,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.10897696476551492,\"width\":1,\"height\":0.7820460704689701},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(78,53,1558603419,1558603389,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',29,53,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.10897696476551492,\"width\":1,\"height\":0.7820460704689701},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(79,54,1558603429,1558603399,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',29,54,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.10897696476551492,\"width\":1,\"height\":0.7820460704689701},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(80,32,1558611749,1558611682,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',19,32,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(81,32,1559911541,1558611688,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',19,32,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(82,55,1558611782,1558611704,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',19,55,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(83,55,1558611782,1558611704,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,55,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(84,55,1558611704,1558611704,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',15,130,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(85,55,1558611704,1558611704,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',21,128,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(86,55,1558611704,1558611704,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',22,128,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(87,55,1558611704,1558611704,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',23,128,'tt_content','image',3,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(88,56,1558611737,1558611711,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,56,'pages','txRkwBasicsTeaserImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(89,56,1558611737,1558611711,3,0,1,0,0,0,0,'',0,0,0,0,0,0,0,0,'',19,56,'pages','txRkwBasicsTeaserImage',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.24041327913004773,\"width\":1,\"height\":0.5191734417399045},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(90,56,1558611711,1558611711,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',15,133,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(91,56,1558611711,1558611711,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',21,131,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(92,56,1558611711,1558611711,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',22,131,'tt_content','image',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(93,56,1558611711,1558611711,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',23,131,'tt_content','image',3,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL,NULL,0),(94,3,1559568775,1558614256,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',15,3,'pages','txRkwBasicsArticleImage',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(95,1,1560776170,1560776093,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',19,0,'','',0,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(96,1,1560777579,1560776170,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',19,0,'','',0,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(97,1,1560777833,1560777644,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,0,'','',0,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(98,1,1560778416,1560778367,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',19,0,'','',0,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(99,1,1560778416,1560778367,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',19,0,'','',0,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(100,1,1560780161,1560778521,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,0,'','',0,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(101,1,1560780450,1560780161,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',19,0,'','',0,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(102,1,1560780420,1560780161,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',19,0,'','',0,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0),(103,1,1562146957,1562146957,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',18,65,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1451219512157615,\"width\":1,\"height\":0.709756097568477},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(104,1,1562146957,1562146957,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',15,65,'tt_content','assets',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(105,1,1562147418,1562147418,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',15,16,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0.04712812960714286,\"y\":0,\"width\":0.9057437407857143,\"height\":1},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(106,1,1562147418,1562147418,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',12,16,'tt_content','assets',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.012912482060849082,\"width\":1,\"height\":0.9741750358783018},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(107,25,1562147744,1562147744,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',22,125,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1467649051453181,\"width\":1,\"height\":0.7064701897093638},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(108,25,1562147744,1562147744,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',21,125,'tt_content','assets',2,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1467649051453181,\"width\":1,\"height\":0.7064701897093638},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(109,25,1562147744,1562147744,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',23,125,'tt_content','assets',3,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.1467649051453181,\"width\":1,\"height\":0.7064701897093638},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(110,60,1562239927,1562239834,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',29,1,'tx_news_domain_model_news','fal_media',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.10897696476551492,\"width\":1,\"height\":0.7820460704689701},\"selectedRatio\":\"2_54\",\"focusArea\":null}}',0,NULL,NULL,0),(111,60,1562239927,1562239850,3,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:5:{s:5:\"title\";N;s:11:\"description\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',23,1,'tx_news_domain_model_news','fal_related_files',1,'sys_file',NULL,NULL,NULL,'','',0,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `driver` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `is_browsable` smallint(6) NOT NULL DEFAULT '0',
  `is_public` smallint(6) NOT NULL DEFAULT '0',
  `is_writable` smallint(6) NOT NULL DEFAULT '0',
  `is_online` smallint(6) NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1548424549,1548424549,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `read_only` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
INSERT INTO `sys_filemounts` VALUES (1,0,1560759019,'Verzeichnisfreigabe','','/',1,0,0,256,0);
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext COLLATE utf8_unicode_ci,
  `fieldlist` text COLLATE utf8_unicode_ci,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext COLLATE utf8_unicode_ci,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
INSERT INTO `sys_lockedrecords` VALUES (10,3,1562681861,'pages',7,0,'admin',0);
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details_nr` smallint(6) NOT NULL DEFAULT '0',
  `IP` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8_unicode_ci,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `recuidIdx` (`recuid`,`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,0,3,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Call to a member function getUid() on null | Error thrown in file /var/www/hgon-website-composer/vendor/typo3/cms/typo3/sysext/form/Classes/Hooks/SoftReferenceParserHook.php in line 66. Requested URL: http://hgon.local/typo3/index.php?M=system_dbint&moduleToken=--AnonymizedToken--&id=&SET%%5Bfunction%%5D=refindex',1562681840,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(2,0,3,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Call to a member function getUid() on null | Error thrown in file /var/www/hgon-website-composer/vendor/typo3/cms/typo3/sysext/form/Classes/Hooks/SoftReferenceParserHook.php in line 66. Requested URL: http://hgon.local/typo3/index.php?M=system_dbint&moduleToken=--AnonymizedToken--',1562681845,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(3,0,3,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Call to a member function getUid() on null | Error thrown in file /var/www/hgon-website-composer/vendor/typo3/cms/typo3/sysext/form/Classes/Hooks/SoftReferenceParserHook.php in line 66. Requested URL: http://hgon.local/typo3/index.php?M=system_dbint&moduleToken=--AnonymizedToken--',1562681867,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(4,0,3,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Call to a member function getUid() on null | Error thrown in file /var/www/hgon-website-composer/vendor/typo3/cms/typo3/sysext/form/Classes/Hooks/SoftReferenceParserHook.php in line 66. Requested URL: http://hgon.local/typo3/index.php?M=system_dbint&moduleToken=--AnonymizedToken--',1562682137,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci,
  `personal` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_preview`
--

DROP TABLE IF EXISTS `sys_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_preview` (
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `config` text,
  PRIMARY KEY (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_preview`
--

LOCK TABLES `sys_preview` WRITE;
/*!40000 ALTER TABLE `sys_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('000666215b9f9020c02195c0b9b27b74','tx_rkwevents_domain_model_event',4,'document_type','','','',0,0,0,'tx_rkwbasics_domain_model_documenttype',1,''),('000960cf100ac613e2599090b3153503','static_countries',104,'cn_country_zones','','','',97,0,0,'static_country_zones',318,''),('00404f44186d9ab4a21bf809521f9bcc','static_countries',36,'cn_country_zones','','','',3,0,0,'static_country_zones',70,''),('0046c2957ec4dd8979f3171fa7eec417','static_countries',61,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('005b4042044290c46a8978ee6f1c3bc5','static_countries',57,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('00992b297562fafdaf800c78bd279d64','sys_file_reference',75,'uid_local','','','',0,1,0,'sys_file',19,''),('00b8e05676f85ed80e2161aefe864b8d','static_countries',74,'cn_country_zones','','','',47,0,0,'static_country_zones',381,''),('00f05eec8ed62feec736543be162f08c','sys_file',27,'metadata','','','',0,0,0,'sys_file_metadata',26,''),('018a4a8c31bea275fc2a3b08fece27d5','static_countries',60,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('02390f42c793d1577418b3f5b464694e','static_countries',74,'cn_country_zones','','','',14,0,0,'static_country_zones',345,''),('02da444a6aa0b4f01cab8d1e31ee5271','static_countries',253,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('030a98066b8bb779940083b71b74733d','sys_file_reference',73,'uid_local','','','',0,1,0,'sys_file',29,''),('0342d392f465768d4b3e82b5c391a5c1','static_countries',118,'cn_currency_uid','','','',0,0,0,'static_currencies',83,''),('036003a4e4c4c4b89a11569df3b2e0e1','static_countries',26,'cn_parent_territory_uid','','','',0,0,0,'static_territories',18,''),('03955dab567cae651a21405ccdb8dcb6','static_territories',31,'tr_parent_territory_uid','','','',0,0,0,'static_territories',3,''),('048b71e0b3608a1add56b5807eb7ff72','static_countries',51,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('056ee95aeffe7c32064e9f6e98cb0768','static_territories',25,'tr_parent_territory_uid','','','',0,0,0,'static_territories',2,''),('057fdebaad6ef792c46ccef52e0d6ab7','tt_content',30,'pages','','','',0,1,0,'pages',2,''),('0599f68325b39b51b3001328f1a93b01','static_countries',74,'cn_country_zones','','','',26,0,0,'static_country_zones',363,''),('05efed153f3fec58674d8db80929c754','tt_content',139,'pi_flexform','sDEF2/lDEF/settings.supportOptions.donateMoney.image/vDEF/','','',0,1,0,'sys_file_reference',98,''),('0602416bcee8233336131c30ff9d5608','static_countries',147,'cn_currency_uid','','','',0,0,0,'static_currencies',103,''),('0608ed753e9b49b1509f9a50ef7ad016','static_countries',157,'cn_country_zones','','','',4,0,0,'static_country_zones',534,''),('062c6e7c5843a099aeb653563a3ea7d8','static_countries',72,'cn_country_zones','','','',120,0,0,'static_country_zones',654,''),('063b854772d23c9cb4664ad8d5f2305b','static_countries',74,'cn_country_zones','','','',54,0,0,'static_country_zones',384,''),('0661321a8e4744221a36077eab40b016','static_countries',170,'cn_country_zones','','','',15,0,0,'static_country_zones',688,''),('0672841beb48d2dc069f86ea71a72f4c','static_countries',196,'cn_currency_uid','','','',0,0,0,'static_currencies',174,''),('0674ac29e7b0d98b24b44c8f89bf562d','static_countries',72,'cn_country_zones','','','',58,0,0,'static_country_zones',656,''),('06d19c3f162e1b4a208441391058888a','sys_file_reference',55,'uid_local','','','',0,0,0,'sys_file',14,''),('06fff2bd787e45be72ec75fe880d298f','static_countries',74,'cn_country_zones','','','',41,0,0,'static_country_zones',375,''),('0716ddbac1db1d509bacf0665c38d5d8','static_countries',119,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('0756af1081681ec4eff5f0b3af70c48b','static_countries',72,'cn_country_zones','','','',72,0,0,'static_country_zones',608,''),('077d17137c01ff634b70f900062bce32','static_countries',168,'cn_currency_uid','','','',0,0,0,'static_currencies',118,''),('079800d7be6f9224ab24219fd844733e','static_countries',162,'cn_parent_territory_uid','','','',0,0,0,'static_territories',25,''),('07c908a1addc5f40d3f31c949f0e1089','static_countries',170,'cn_country_zones','','','',14,0,0,'static_country_zones',687,''),('07d63f2bbf4a20ba4cd16e1189763991','static_countries',74,'cn_country_zones','','','',87,0,0,'static_country_zones',412,''),('07df58be55dc3d3ecd5fb16e371d492e','static_countries',72,'cn_country_zones','','','',2,0,0,'static_country_zones',566,''),('084866fd9f36697bf1149d66f245afc1','static_countries',93,'cn_country_zones','','','',1,0,0,'static_country_zones',691,''),('08565facf4757476426771f944a13cd4','static_countries',95,'cn_currency_uid','','','',0,0,0,'static_currencies',65,''),('089561abaf15f53a9d85bc0ca1dc1761','sys_file',26,'metadata','','','',0,0,0,'sys_file_metadata',25,''),('08dda64e164f907f66e2c75906225193','sys_file',14,'storage','','','',0,0,0,'sys_file_storage',1,''),('08f2c56429cdc851e909d36fef83b61c','static_countries',41,'cn_country_zones','','','',13,0,0,'static_country_zones',117,''),('090bdf7b8ad2abaa22905fbf2f18d67b','static_countries',58,'cn_currency_uid','','','',0,0,0,'static_currencies',43,''),('0916540f4ba379a1041cb113f5dd00b8','static_countries',157,'cn_country_zones','','','',10,0,0,'static_country_zones',541,''),('094f25ebc1a747b0bf0c2dc9dd7145fa','static_countries',104,'cn_country_zones','','','',101,0,0,'static_country_zones',322,''),('09704560549b718c894dc4b7b6779512','static_countries',104,'cn_country_zones','','','',76,0,0,'static_country_zones',292,''),('09afb148070e288352af8347c3fcc63b','static_countries',220,'cn_country_zones','','','',49,0,0,'static_country_zones',62,''),('09e22661dcc4654007cfaaf28f30b8a8','static_countries',207,'cn_currency_uid','','','',0,0,0,'static_currencies',113,''),('09f1ec6f7e28e7760c15c9f17b55ef44','static_countries',216,'cn_currency_uid','','','',0,0,0,'static_currencies',152,''),('09fd00cded421fda31dab90ee6ba0ff3','tx_rkwevents_domain_model_event',5,'department','','','',0,0,0,'tx_rkwbasics_domain_model_department',1,''),('09feeb9cd65e8ace15b35a6270ceae39','sys_file_reference',109,'uid_local','','','',0,0,0,'sys_file',23,''),('0a2a30c1f70f0f7b838eb38fecd8c16f','static_countries',72,'cn_country_zones','','','',22,0,0,'static_country_zones',548,''),('0a4e926a60e964ae3d9417bbbaa26571','static_countries',230,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('0a862d43db0d38c60816a85a467af054','static_countries',204,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('0ac2e6640d8158e4af78fe580b451f74','static_countries',182,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('0afe2a176ea771e51b1e2fddd26806c2','tt_content',84,'image','','','',0,0,0,'sys_file_reference',42,''),('0b4158a40c1efb6766ff7a6dbd640d2c','pages',25,'tx_rkwprojects_project_uid','','','',0,0,0,'tx_rkwprojects_domain_model_projects',1,''),('0b7979fd67c02beb6924784748958b04','static_countries',110,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('0bed3a53ad1bdb486a838da7fae944f3','static_countries',177,'cn_currency_uid','','','',0,0,0,'static_currencies',122,''),('0c0815179e115ed642b09e72d7f6fec9','static_countries',93,'cn_country_zones','','','',5,0,0,'static_country_zones',694,''),('0c166d8c43f41a5fa35369f80110975e','static_countries',220,'cn_country_zones','','','',22,0,0,'static_country_zones',32,''),('0c5c78bbdae90e87911ebf67179890f4','sys_file',13,'metadata','','','',0,0,0,'sys_file_metadata',13,''),('0c956a3b8258316ac57d72c60d98baeb','static_countries',65,'cn_country_zones','','','',42,0,0,'static_country_zones',172,''),('0ccbe93304eae4c3ea1db5cfd853cf69','tt_content',118,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',2,0,0,'tx_rkwprojects_domain_model_projects',3,''),('0d2724028e7cefcbc4a3ecb06eef1d36','tx_hgontemplate_domain_model_didyouknow',2,'sys_language_uid','','','',0,0,0,'sys_language',-1,''),('0d27f48781c27e79d26d2c479a483eb1','sys_file_reference',71,'uid_local','','','',0,0,0,'sys_file',19,''),('0d3be11129dfdf8debf38797afd6f1d5','static_countries',72,'cn_country_zones','','','',67,0,0,'static_country_zones',604,''),('0d77fe4bd61f8ab524842f9e183ccad5','static_countries',38,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('0d790ae9c3272e5a995bc126de941b4c','static_countries',104,'cn_country_zones','','','',105,0,0,'static_country_zones',325,''),('0d7bcf2e3ab8574688679a90666106e0','static_countries',220,'cn_country_zones','','','',24,0,0,'static_country_zones',34,''),('0dff7101f25216d99a3f798f7890d5c8','sys_file_reference',22,'uid_local','','','',0,1,0,'sys_file',5,''),('0e0501310f012ca537e198dd92f8ed6c','static_countries',220,'cn_country_zones','','','',0,0,0,'static_country_zones',1,''),('0e0ffe7e301ed9f79b4bd7cea34ccd26','static_countries',72,'cn_country_zones','','','',99,0,0,'static_country_zones',561,''),('0e5cb3cfdf06d3b650fe0e11e55f0be7','tx_rkwevents_domain_model_event',2,'department','','','',0,0,0,'tx_rkwbasics_domain_model_department',1,''),('0e72116b5a91484407952c9e4f64e2d4','static_countries',155,'cn_currency_uid','','','',0,0,0,'static_currencies',109,''),('0e8e86baf2ef574643023b25acd81e0e','static_territories',23,'tr_parent_territory_uid','','','',0,0,0,'static_territories',1,''),('0ebaae339f0bcdc4b65d911543f01ece','static_countries',65,'cn_country_zones','','','',0,0,0,'static_country_zones',159,''),('0f10e68939ac47c5c18f3520c0ff3050','static_countries',101,'cn_currency_uid','','','',0,0,0,'static_currencies',69,''),('0f115690c74902e72268712b59f353a8','static_countries',74,'cn_country_zones','','','',34,0,0,'static_country_zones',421,''),('0f59b4a81d5a70a0100c37f16f2bc6ae','static_countries',164,'cn_currency_uid','','','',0,0,0,'static_currencies',115,''),('0f63b49df7931fb31d2ac6ddd861f0b5','static_countries',72,'cn_country_zones','','','',3,0,0,'static_country_zones',567,''),('0f701991a1f1e8a0b417e38b74ffedad','sys_file',7,'storage','','','',0,0,0,'sys_file_storage',1,''),('0f79acd49a62124bf962c55ddf110515','static_countries',6,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('0fc6cb7f1091386c50b8055c75c82b92','static_countries',50,'cn_currency_uid','','','',0,0,0,'static_currencies',38,''),('0fd9fc3113bc787de949501f8b8d4cec','static_countries',204,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('0fdb1448c72eb0625eb37c13a59290fe','static_countries',190,'cn_currency_uid','','','',0,0,0,'static_currencies',111,''),('0ffa69e71e55dfbc0a5f732f6e01d1c5','static_countries',74,'cn_country_zones','','','',72,0,0,'static_country_zones',403,''),('10034d14de6b8c87aa0096de9d029498','sys_file',1,'metadata','','','',0,0,0,'sys_file_metadata',1,''),('10adf135f60abab6d60e7fddbdc0269c','static_countries',148,'cn_country_zones','','','',21,0,0,'static_country_zones',203,''),('10c559349dfcb1b3aac314a82ae9c4b9','static_countries',21,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('112286b5097bc6a10eb025fa24ae90f4','be_groups',1,'db_mountpoints','','','',1,0,0,'pages',38,''),('11730d4cd6cde61ee9763db563c71ea4','pages',56,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',88,''),('1193082e2b1fccb61f817bf1c9d714be','sys_file_reference',34,'uid_local','','','',0,1,0,'sys_file',19,''),('1223595f51f05719eac88c369b491c7d','static_countries',55,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('126d483f347967e24fe009a935686e5f','tt_content',89,'image','','','',0,0,0,'sys_file_reference',43,''),('128df13dc25fa21950b6eb466968622d','static_countries',1,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('12a8d62e3df6b36131701808e68bad29','tx_rkwevents_domain_model_event',2,'place','','','',0,0,0,'tx_rkwevents_domain_model_eventplace',1,''),('12c3c100a29cc54eb42b9dc1ce45852d','static_countries',104,'cn_country_zones','','','',2,0,0,'static_country_zones',224,''),('12f58268bf25955fb065e33e70af7401','sys_file_reference',27,'uid_local','','','',0,0,0,'sys_file',15,''),('1307034ddcbcedd8b42e10c12037d54b','static_countries',29,'cn_country_zones','','','',3,0,0,'static_country_zones',493,''),('130bf2d0d7b637ca034f61ea15b94574','sys_file',15,'storage','','','',0,0,0,'sys_file_storage',1,''),('1344e1d9cb7ea01f98c3c4c1844e4459','static_countries',43,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('134ba10461a8484c002f0a25a75a3987','static_countries',70,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('136baf432ddcf169c88baf700999185c','tt_content',22,'bodytext','','typolink_tag','1',-1,1,0,'pages',24,''),('13d8dff81f7ad8911a356b4f406add40','static_countries',65,'cn_country_zones','','','',9,0,0,'static_country_zones',136,''),('141a696b44f21b77515b478945a8f35b','tt_content',139,'pi_flexform','sDEF3/lDEF/settings.supportOptions.donateTime.image/vDEF/','','',0,1,0,'sys_file_reference',99,''),('1424effc8e5768ce12f57332fa81ad2f','static_countries',206,'cn_currency_uid','','','',0,0,0,'static_currencies',144,''),('144310ea71516242f3401111b830626e','static_countries',104,'cn_country_zones','','','',3,0,0,'static_country_zones',225,''),('1453086485b34a1b2744d39012f7be11','static_countries',104,'cn_country_zones','','','',89,0,0,'static_country_zones',313,''),('145b588356d5438fe9184cb084fc6ad1','sys_file',27,'storage','','','',0,0,0,'sys_file_storage',1,''),('146401c611eee338fafc0b44f7d5df36','static_countries',74,'cn_country_zones','','','',70,0,0,'static_country_zones',407,''),('14be16c3e528b8679e14abb79d8dc470','static_territories',12,'tr_parent_territory_uid','','','',0,0,0,'static_territories',5,''),('14d28bb062a7f8169c371e954c1d9aaf','static_territories',13,'tr_parent_territory_uid','','','',0,0,0,'static_territories',5,''),('14f6d02073b053562b9f3348611230bf','static_countries',104,'cn_country_zones','','','',91,0,0,'static_country_zones',311,''),('14fe885dce6429cb5555465b7031912f','static_countries',148,'cn_country_zones','','','',23,0,0,'static_country_zones',205,''),('1550ee50867b9baed0cd1dc38d128682','static_countries',24,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('1560a0355fbafa835bf6bc1098e7f497','static_countries',253,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('157b1c7a3e0fd99807f0eb2c78dfa94f','static_countries',13,'cn_country_zones','','','',1,0,0,'static_country_zones',99,''),('1602abfcb528e2755c1a5147a46621cd','tx_news_domain_model_news',1,'tags','','','',1,0,0,'tx_news_domain_model_tag',2,''),('163288bd59236618bb096ef4707a24d3','static_countries',14,'cn_country_zones','','','',1,0,0,'static_country_zones',215,''),('163866d9da74aa64fc472ff0ff5afe3a','static_countries',74,'cn_country_zones','','','',8,0,0,'static_country_zones',339,''),('16722196ee4d4eb86e5c3e3778be3525','static_countries',243,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('16895af3ed406ec7375c6592dab3be97','static_countries',65,'cn_country_zones','','','',1,0,0,'static_country_zones',130,''),('16db4dcf58703c602976bd0518da33ce','static_countries',65,'cn_country_zones','','','',34,0,0,'static_country_zones',166,''),('16fd42bfb0fb74d9e975aaa4c14e2d78','static_countries',225,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('1719a51cd7dbe673f03e4b1175e23dd5','static_countries',143,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('17b3e1b8c16976d1480ee6186ed22d44','static_countries',29,'cn_country_zones','','','',1,0,0,'static_country_zones',492,''),('17b8b560b198a8df08236bff9e6afbf2','static_countries',77,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('17c1c29b90c3124f289847ab16fac6aa','static_countries',14,'cn_parent_territory_uid','','','',0,0,0,'static_territories',25,''),('17ebfacc717ba6efe1c333793aa80dfa','static_countries',104,'cn_country_zones','','','',30,0,0,'static_country_zones',247,''),('181ceef6e71ab78134dac24d93f82081','static_countries',171,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('185611a6c74b7a186fca2187414efe88','static_countries',104,'cn_country_zones','','','',8,0,0,'static_country_zones',231,''),('1856894e4449d5dfc8a2a309fe2df993','static_countries',74,'cn_country_zones','','','',44,0,0,'static_country_zones',376,''),('1874126b4bb0de62ef5910edaaf7ab4c','static_countries',148,'cn_country_zones','','','',13,0,0,'static_country_zones',195,''),('18ace264890318a2a0a86f4de9964425','static_countries',29,'cn_currency_uid','','','',0,0,0,'static_currencies',23,''),('1911bf9e2c0e8b8b02fbbbb776e5a636','static_countries',11,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('19454b55818a34d4ea1427846780a37d','tt_content',65,'assets','','','',0,0,0,'sys_file_reference',103,''),('1956e70d9978d23eb1e0b28488f8a4b1','static_countries',148,'cn_country_zones','','','',20,0,0,'static_country_zones',202,''),('196869b7fcfdabbc15008f411aacb082','static_countries',148,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('19715a64687a1f1750a1db86bb0fda9a','tx_rkwprojects_domain_model_projects',2,'project_pid','','typolink','24214c6c77891e9bf4eedf1656f9b149:0',-1,0,0,'_STRING',0,'t3://page?uid=26'),('19cbd72358bc58a0de76a16cec4bd7eb','static_countries',36,'cn_currency_uid','','','',0,0,0,'static_currencies',29,''),('19d3cb91630bcf83ab664b4320fa789a','static_countries',123,'cn_currency_uid','','','',0,0,0,'static_currencies',86,''),('19e28941c0bf1625eb0f1a79106de025','static_countries',72,'cn_country_zones','','','',19,0,0,'static_country_zones',577,''),('1a02abd05ec5bd7db9b5f5270dff5a69','static_countries',74,'cn_country_zones','','','',35,0,0,'static_country_zones',364,''),('1a4a525cf396263f6215d7d86700244b','sys_file',11,'metadata','','','',0,0,0,'sys_file_metadata',11,''),('1a5a01a49cf2196c94d0c3e0c0ef78c3','static_countries',104,'cn_country_zones','','','',100,0,0,'static_country_zones',320,''),('1a6573edf43073321604f32ca6df1b28','sys_file_reference',78,'uid_local','','','',0,0,0,'sys_file',29,''),('1a7683a278e23fd9e0a34baf00a5fead','tt_content',82,'image','','','',0,0,0,'sys_file_reference',39,''),('1a78e37c4b2b91b8fe6f4e48f7c98034','static_countries',145,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('1a9b279c4ac334b8479263513ee3a1db','static_countries',74,'cn_country_zones','','','',73,0,0,'static_country_zones',404,''),('1a9bb641d48c8d57a73918c90d79f730','static_countries',36,'cn_country_zones','','','',1,0,0,'static_country_zones',67,''),('1af672bafb9ddb7fd61efea23bfe4a79','static_countries',104,'cn_country_zones','','','',41,0,0,'static_country_zones',263,''),('1b4c297440fcc054c0752a9aedb626a9','tt_content',125,'image','','','',2,0,0,'sys_file_reference',65,''),('1b5b4428d1f0f9e10ffda091dcf51e8d','sys_file_reference',102,'uid_local','','','',0,0,0,'sys_file',19,''),('1b7602569302bc12e4acc40139ac7cb0','static_countries',70,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('1b8902390257ad52e3bbc0ce40201946','static_countries',201,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('1b8da0f565d99883eebc5623c6a23776','static_countries',214,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('1ba117b5850fc5cdbf1da7704cbdc85a','static_countries',72,'cn_country_zones','','','',71,0,0,'static_country_zones',606,''),('1bc4791166ad93d703076c701d4296cc','static_countries',104,'cn_country_zones','','','',68,0,0,'static_country_zones',293,''),('1bf18105efe62e0950b9697f7149c08d','static_countries',36,'cn_country_zones','','','',2,0,0,'static_country_zones',68,''),('1c3277d0897e68babc985ee65ef2a172','static_countries',104,'cn_country_zones','','','',108,0,0,'static_country_zones',327,''),('1c3d67e2b3df979c98d8c206817fbe3d','tt_content',65,'image','','','',0,0,0,'sys_file_reference',29,''),('1c588f1c94b339e4967381fc222665aa','sys_file_reference',60,'uid_local','','','',0,0,0,'sys_file',21,''),('1c6b3ffd36f17c70f12a4768a19549cc','sys_file',8,'storage','','','',0,0,0,'sys_file_storage',1,''),('1c774c0a3302e2de766c30f1122ce6cc','static_countries',127,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('1c8c03b52588190d6a4640338e2ac601','sys_file_reference',32,'uid_local','','','',0,1,0,'sys_file',19,''),('1ca5e9c35b017496457f5ceafb436746','static_countries',233,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('1cae69f61859f790220ac1963cf76df4','static_countries',74,'cn_country_zones','','','',65,0,0,'static_country_zones',395,''),('1cc81d3ca1bbba7036cd21e5d40da207','static_countries',33,'cn_currency_uid','','','',0,0,0,'static_currencies',26,''),('1ce4be6668175e5f850ebb06a5bfe680','static_countries',104,'cn_country_zones','','','',65,0,0,'static_country_zones',284,''),('1ddd6fda0421ba604d7121b3b9edab02','tx_rkwprojects_domain_model_projects',1,'project_pid','','typolink','0cdc3cef2df5fae74ded0da10240ba4a:0',-1,0,0,'_STRING',0,'t3://page?uid=25'),('1deaba77b8907e7a5ab43222b1ad2eba','static_countries',220,'cn_country_zones','','','',30,0,0,'static_country_zones',40,''),('1df778f539542fe4eef95bcda0a660d4','static_countries',65,'cn_country_zones','','','',27,0,0,'static_country_zones',154,''),('1e3a1f7b95fffcbc6cd33e0d7092c2ca','sys_file_reference',6,'uid_local','','','',0,1,0,'sys_file',8,''),('1e48d65e22ec9ae3f3f264021669096e','static_countries',147,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('1e8846ef33b1c6b77f360f349c662b62','static_countries',4,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('1e8f404095be870112a341b4379de0ed','static_countries',247,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('1e9927aa988086408ba3a0c4c0e91cdb','static_countries',104,'cn_country_zones','','','',31,0,0,'static_country_zones',253,''),('1e997b0da05f1d3b48dce8d8c995f965','sys_file_reference',79,'uid_local','','','',0,0,0,'sys_file',29,''),('1ea9a9b51d2447905066db26da647852','static_countries',65,'cn_country_zones','','','',20,0,0,'static_country_zones',133,''),('1eb7a6820e30bad886717378c1dbb9b7','static_countries',126,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('1ed887d37119e81d74c78471804a3bf1','sys_file_reference',47,'uid_local','','','',0,1,0,'sys_file',27,''),('1ee568cf690add7f68f33c848c453d70','static_countries',252,'cn_currency_uid','','','',0,0,0,'static_currencies',176,''),('1f692449a712401ea1193a8347744478','static_countries',233,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('1f772e7333bd9a5e3cd19ced875216bb','tt_content',70,'image','','','',0,0,0,'sys_file_reference',30,''),('1f7f542402faeb3745cd545278be24cd','static_countries',65,'cn_country_zones','','','',3,0,0,'static_country_zones',139,''),('201f47f6f504e221609de4afe25230b2','static_countries',65,'cn_country_zones','','','',18,0,0,'static_country_zones',152,''),('203b24512a5f2ac0fdd3d62ff3b0ce6b','static_countries',29,'cn_country_zones','','','',9,0,0,'static_country_zones',499,''),('205b5525833f68379161bf6593df1e02','static_countries',171,'cn_parent_territory_uid','','','',0,0,0,'static_territories',18,''),('2082764dca7b6f4a9741d3cd0310e3e2','sys_file_reference',110,'uid_local','','','',0,0,0,'sys_file',29,''),('20931873d6d23363c8a0762c39f05cc0','sys_file_reference',68,'uid_local','','','',0,0,0,'sys_file',19,''),('20b70db46bf30aed5fb0ec0cd18d0621','static_countries',160,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('20f7fc63ee42ad250b1576505b4d9982','pages',2,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',55,''),('211bf2ac7ec12f17f67c8810d335bf43','static_countries',121,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('2128fdf4d4f1286fb0f9a011d78c4a5a','static_countries',72,'cn_country_zones','','','',83,0,0,'static_country_zones',665,''),('218b6b2411367c2c8e0094d970f35124','static_countries',40,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('2192758c7cbbe8b12237adfce26a7680','static_countries',5,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('219d149ce2a011d93e5d9273463a7e2d','static_countries',220,'cn_country_zones','','','',35,0,0,'static_country_zones',45,''),('21c80dabd6761c0c40db272f84ad2790','static_countries',104,'cn_country_zones','','','',10,0,0,'static_country_zones',234,''),('220e7598329e76aa2fd2e55dffc8a332','static_countries',201,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('224c8c9cdb2c922b9a2245bfb7c4321f','static_countries',121,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('22b5a76c9d65e4953f25f7e943f2365b','static_countries',220,'cn_country_zones','','','',7,0,0,'static_country_zones',15,''),('22f026b234a01aaecd490f7d384746d6','static_countries',72,'cn_country_zones','','','',112,0,0,'static_country_zones',637,''),('230cde3200d19a1d7aecaacd56438e55','static_countries',45,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('23103ce1d2d246520f316e6bffe84d76','static_countries',104,'cn_country_zones','','','',21,0,0,'static_country_zones',245,''),('232ae35f150c9f8a371d7691195c7427','static_countries',83,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('233772150a1a508ceb889fbb8cdb94fb','static_countries',72,'cn_country_zones','','','',7,0,0,'static_country_zones',570,''),('234f561fcdc2c53807b2f6b5d803c035','sys_category',7,'parent','','','',0,0,0,'sys_category',5,''),('23629fb4cee257cd5c3d3cf14e13c64c','static_countries',92,'cn_currency_uid','','','',0,0,0,'static_currencies',62,''),('2383dc8fe3d070c4e3729364575ef467','tx_rkwevents_domain_model_event',2,'be_user','','','',0,0,0,'be_users',5,''),('23b051d741e8d5d1a349a321c80a8a37','sys_file',17,'metadata','','','',0,0,0,'sys_file_metadata',17,''),('23bf304a730d0269a8a536f2b38742c9','static_countries',103,'cn_currency_uid','','','',0,0,0,'static_currencies',71,''),('23f58d1c53af7f56e8bee3738ebd7a99','tx_hgonworkgroup_domain_model_workgroup',1,'event','','','',1,0,0,'tx_rkwevents_domain_model_event',4,''),('24074b51dfce96135be9c05dc86e0be9','static_countries',148,'cn_country_zones','','','',8,0,0,'static_country_zones',190,''),('241eda258a8925cc362b3496f371c206','static_countries',105,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('245fc841059288271591da1fac7b7ea9','static_countries',170,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('247330c3e088c1608105029b9a84c444','static_countries',221,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('247e14e9f07911bfbd34db17205f1e1d','static_countries',72,'cn_country_zones','','','',88,0,0,'static_country_zones',621,''),('24a12896c9644313894f7a485ff3a230','static_countries',117,'cn_currency_uid','','','',0,0,0,'static_currencies',82,''),('24a1aaf0d99e6f14a935c433299dcfca','static_countries',12,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('24ba533cb002d4827145c6285838481a','static_countries',93,'cn_country_zones','','','',16,0,0,'static_country_zones',705,''),('24c9e7d81daaa394ef5fc257d7bbfab8','static_countries',220,'cn_country_zones','','','',32,0,0,'static_country_zones',42,''),('24e304e8f25451bd09208f49dfca9b42','static_countries',13,'cn_country_zones','','','',0,0,0,'static_country_zones',102,''),('253b6fa2273dadcc354793da8758aabe','tx_news_domain_model_link',1,'uri','','typolink','c8a761a413977538fbfb76b52eee2f5a:0',-1,0,0,'_STRING',0,'t3://page?uid=16'),('257e3d887bc50d2e3d952e506589b955','static_countries',158,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('25c237f8c7caa1b53dd6a3dd91fe533a','sys_file_reference',66,'uid_local','','','',0,1,0,'sys_file',27,''),('25cda87bbb1dec030537acf6aee50b00','static_countries',72,'cn_country_zones','','','',11,0,0,'static_country_zones',574,''),('26207f1c41f23a8e441627198b4081b9','sys_category',7,'items','','','',0,0,0,'pages',27,''),('2678430b22940b790386bf77b25ab3a2','tx_rkwprojects_domain_model_projects',4,'partner_logos','','','',0,0,0,'sys_file_reference',51,''),('267b0efee608521253bcb3f1bd262809','tt_content',125,'assets','','','',1,0,0,'sys_file_reference',108,''),('26981bcfe594c16a8073e5b387488a0a','sys_file_reference',51,'uid_local','','','',0,0,0,'sys_file',19,''),('26d0316803ca3c5272be7d59ccd77f07','tt_content',16,'image','','','',0,0,0,'sys_file_reference',37,''),('26ed0af592cbf41005cd70d8d43ec3ad','static_countries',104,'cn_country_zones','','','',12,0,0,'static_country_zones',232,''),('2703722a4dab88898cfa8755dcb6e35c','static_countries',78,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('27191593005d575cbbe17adea5bcb4c9','static_countries',220,'cn_country_zones','','','',26,0,0,'static_country_zones',36,''),('2738234ea74c61864a1e0c261844a520','static_countries',20,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('2770651a2eeb99132a5ea4f6ed400ba7','static_countries',77,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('2777df29f2f82a605cb9bccf475f31ea','static_countries',104,'cn_country_zones','','','',42,0,0,'static_country_zones',264,''),('277dbaa5b5789fda317b0b1e75602ef0','static_countries',29,'cn_country_zones','','','',8,0,0,'static_country_zones',498,''),('2780ccd79887fc4eb83f49b037c3db44','static_countries',72,'cn_country_zones','','','',47,0,0,'static_country_zones',632,''),('27bd6a827b0dc4351d4851c0a04ac4a7','tt_content',122,'image','','','',2,0,0,'sys_file_reference',62,''),('27f204e28dfb02c954748ea3fc283320','static_countries',82,'cn_currency_uid','','','',0,0,0,'static_currencies',57,''),('27fe6bf00d4345bd0d630e8502b11bdb','static_countries',29,'cn_country_zones','','','',4,0,0,'static_country_zones',494,''),('2842258cb57e2f3ad4ec6460febac2c9','static_countries',57,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('2843213266c8019fc904ee5bdc81ce59','static_countries',54,'cn_country_zones','','','',7,0,0,'static_country_zones',87,''),('288c3217db45cda9858b746e629cf03f','static_countries',239,'cn_parent_territory_uid','','','',0,1,0,'static_territories',10,''),('28ba9eb65bfe14d845ec0a11e26c3a9d','static_countries',237,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('28edc6ce04bb02354874bb005a8d1800','static_countries',124,'cn_currency_uid','','','',0,0,0,'static_currencies',87,''),('28f2125077226ada64eba760547d40c3','sys_file_reference',19,'uid_local','','','',0,1,0,'sys_file',5,''),('29a0c54a24e78a941135f8c9fd406583','static_countries',68,'cn_currency_uid','','','',0,0,0,'static_currencies',50,''),('29b6606fc57c95c7aee0f4d4d4e627b8','static_countries',220,'cn_country_zones','','','',38,0,0,'static_country_zones',49,''),('29c8da45dd86409b66269d27fbf137b8','sys_file',12,'metadata','','','',0,0,0,'sys_file_metadata',12,''),('29ef12ab9a78d44968da4e4823d0b018','pages',25,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',68,''),('2a236353aa297459d1a2c93943b8c564','tt_content',131,'image','','','',2,0,0,'sys_file_reference',93,''),('2a2d853764cc2c31c1fab647adeb0024','static_countries',236,'cn_currency_uid','','','',0,0,0,'static_currencies',169,''),('2a351aca9a60e6cb623bac54e9c0cb81','tx_rkwevents_domain_model_event',1,'department','','','',0,0,0,'tx_rkwbasics_domain_model_department',1,''),('2a42979c22456db4dd1194f696bea515','static_countries',104,'cn_country_zones','','','',106,0,0,'static_country_zones',328,''),('2a48a67ec7e1e1f5a606d88b3f3fedb4','static_countries',217,'cn_currency_uid','','','',0,0,0,'static_currencies',153,''),('2a521ac6ef86f14d16b96827c03409af','static_countries',104,'cn_country_zones','','','',9,0,0,'static_country_zones',239,''),('2a6294056ac735153f7a9b6e52fb4bd5','static_countries',184,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('2a8ddaef88f43c61d930a3bf57e64f6d','static_countries',74,'cn_country_zones','','','',43,0,0,'static_country_zones',397,''),('2a8f91dcbfb14f5b2dcba77b02915ada','tx_rkwevents_domain_model_event',3,'organizer','','','',0,0,0,'tx_rkwevents_domain_model_eventorganizer',1,''),('2aa320ac0372f85f01f70e05b4f83d8a','static_countries',97,'cn_country_zones','','','',20,0,0,'static_country_zones',480,''),('2ae6e4aa036b4959846f160a9587b665','sys_file',32,'metadata','','','',0,0,0,'sys_file_metadata',28,''),('2af70442e7c591084879b1ac99752c0d','static_countries',65,'cn_country_zones','','','',39,0,0,'static_country_zones',171,''),('2b1f9530a75fd18c4c580f383e93dc69','sys_file_reference',13,'uid_local','','','',0,1,0,'sys_file',11,''),('2b209d80e7e6510f40f2ca1549a7451e','static_countries',9,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('2b2b584e9e6365f4bac435cc91ef2728','sys_file_reference',5,'uid_local','','','',0,1,0,'sys_file',5,''),('2b49290783d27c0edff3d7be1c669416','static_countries',41,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('2b53f6ad2f65850ab8209a5717fa0400','tt_content',16,'assets','','','',1,0,0,'sys_file_reference',106,''),('2b5b7858ca5303221bbcc5e725ecb103','static_countries',54,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('2b892016c16791ea2c4d5db439b62c3d','static_countries',54,'cn_country_zones','','','',5,0,0,'static_country_zones',85,''),('2b9ad2f236a14d3a6459e46978f072b1','static_countries',54,'cn_country_zones','','','',0,0,0,'static_country_zones',80,''),('2bbe04e45e2d5ecf77fb22c0fda97abb','sys_file_reference',85,'uid_local','','','',0,0,0,'sys_file',21,''),('2c19a5cc983ee2361f862f7cc89bbfbe','static_countries',64,'cn_currency_uid','','','',0,0,0,'static_currencies',47,''),('2c7c12e1d4f74350dd35a60864296678','static_countries',74,'cn_country_zones','','','',74,0,0,'static_country_zones',406,''),('2c94bdf3bf8a0bdcc9f7a6a90801f296','sys_file_reference',54,'sys_language_uid','','','',0,0,0,'sys_language',-1,''),('2c94ed842329734b28e0ce7b30851bea','static_countries',41,'cn_country_zones','','','',11,0,0,'static_country_zones',115,''),('2ca4778b942d72fd27b3f8b23e461204','static_countries',52,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('2d00f80af86bc1dfde2eaa5965eb4a27','static_countries',29,'cn_country_zones','','','',11,0,0,'static_country_zones',501,''),('2d18cf1f4d95c20cdaa5e9f2fc10acbd','sys_file_metadata',10,'file','','','',0,0,0,'sys_file',10,''),('2d253d1e3fbfa61c445b3932d47ddb1e','tx_rkwevents_domain_model_event',1,'place','','','',0,0,0,'tx_rkwevents_domain_model_eventplace',1,''),('2d5594266a28c7184761d93be7e7e8e1','sys_category',2,'parent','','','',0,0,0,'sys_category',5,''),('2d888d96d9bd774c2ff90bf77f7bc162','static_countries',223,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('2e32ccf5758058cfce83d0233a193684','static_countries',13,'cn_country_zones','','','',2,0,0,'static_country_zones',96,''),('2e469775534e35d8cddafd9c3a6ee8e3','tt_content',45,'header_link','','typolink','acd7df507659b949fc76a5e575b3978c:0',-1,1,0,'_STRING',0,'t3://page?uid=3'),('2e845cfed354eb630b814206e0e3a226','static_countries',104,'cn_country_zones','','','',14,0,0,'static_country_zones',236,''),('2ea3923e1b391e95c11800666ee71bb9','static_countries',65,'cn_country_zones','','','',19,0,0,'static_country_zones',153,''),('2eaf0b372fe5bfa3efcf18d8e92a3a78','tt_content',141,'pi_flexform','sDEF/lDEF/settings.persistenceIdentifier/vDEF/','formPersistenceIdentifier','ae46b86d82daf713ba83b76d1ecd6509',-1,1,0,'sys_file',31,''),('2f4c0037102251306fe84d8baf3ee8ae','static_countries',93,'cn_country_zones','','','',0,0,0,'static_country_zones',690,''),('2f58828387dfab53a20785814c1b399c','static_countries',104,'cn_country_zones','','','',15,0,0,'static_country_zones',240,''),('2f6ed7714f6d8129284d4e09e40b70d6','static_countries',65,'cn_country_zones','','','',12,0,0,'static_country_zones',146,''),('2f8f24e7ab39ce1646cadcc0737b425f','static_countries',138,'cn_currency_uid','','','',0,0,0,'static_currencies',97,''),('2fa34f2998ceeeb36e6f14e9f45ef257','static_countries',74,'cn_country_zones','','','',80,0,0,'static_country_zones',418,''),('2fac7266e6e146cac20fe69b06ff49b8','static_countries',72,'cn_country_zones','','','',80,0,0,'static_country_zones',615,''),('2fbfbd51fadfa3ca21dd049585c663c6','static_countries',65,'cn_country_zones','','','',4,0,0,'static_country_zones',140,''),('2fd0a97c12ef6ea454bec7fb65b8f644','static_countries',189,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('3048743cfd840aa9096af7b7dd1ab866','static_countries',14,'cn_country_zones','','','',7,0,0,'static_country_zones',221,''),('3050547dc0a8d7f54d06283db33ed15e','static_countries',104,'cn_country_zones','','','',16,0,0,'static_country_zones',238,''),('309f4abcd48dc8408ed5ac938c67d9a9','static_countries',72,'cn_country_zones','','','',91,0,0,'static_country_zones',556,''),('30b39cd94d76b6a14e1a7c6e6c82f862','static_countries',160,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('30ebf9853e40d264f2db68cbc7932e7a','static_countries',41,'cn_country_zones','','','',21,0,0,'static_country_zones',125,''),('30f3d3ce79c5b71ebbfa1d795e5a7742','static_countries',75,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('31008180f777db15c3f0800afaa12d18','sys_file_reference',24,'uid_local','','','',0,1,0,'sys_file',4,''),('3122f9afe5d3daffb1be49ab6b401b66','static_countries',72,'cn_country_zones','','','',62,0,0,'static_country_zones',600,''),('3143ce8438dbb3649fd692fad3763791','sys_file_reference',69,'uid_local','','','',0,0,0,'sys_file',19,''),('31987bee7d7294e454ea41b5cb39a121','static_countries',72,'cn_country_zones','','','',61,0,0,'static_country_zones',599,''),('323a54a854bfff0da04c6ad69b0c8ea9','static_countries',5,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('324555aee4a0b561f15cd254c5fe80dd','sys_file',11,'storage','','','',0,0,0,'sys_file_storage',1,''),('32cfc55c0e0f73239fa408fbf12974f9','static_countries',148,'cn_country_zones','','','',15,0,0,'static_country_zones',197,''),('32d8ef7a2a8955ad163e92d800299e9e','static_countries',212,'cn_currency_uid','','','',0,0,0,'static_currencies',175,''),('330cf07ad1a72ac5029879a6f1f85ab2','static_countries',99,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('336a9f660507f280942fb7f3db6d6777','static_countries',74,'cn_country_zones','','','',16,0,0,'static_country_zones',348,''),('337a009efb3aed01f60c029a9c5fcb34','sys_file',16,'metadata','','','',0,0,0,'sys_file_metadata',16,''),('33976d9135ebf7e2991a99003d0a3088','static_countries',72,'cn_country_zones','','','',111,0,0,'static_country_zones',636,''),('33a1c27f4fb46b57b0fa05cb45604105','static_countries',186,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('33c12217a946d7860c7f7b57c48dd1c5','static_countries',211,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('33e177b07a571c2d7e347307da6a3478','static_countries',220,'cn_country_zones','','','',11,0,0,'static_country_zones',20,''),('3417e5b25b669174822b0091a378ba60','sys_file_reference',58,'uid_local','','','',0,0,0,'sys_file',15,''),('3449c8ba528ed417f803881d8a707677','static_countries',72,'cn_country_zones','','','',70,0,0,'static_country_zones',605,''),('3452f3ace9e65210da64d6456fbc2200','static_countries',104,'cn_country_zones','','','',84,0,0,'static_country_zones',305,''),('347779877836653d7a99ea89ee85852d','static_countries',95,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('34de8d30c3518b54e18b819e0e680d3b','static_countries',252,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('34eac459d6623bd05b992e4ffb41dcff','static_countries',169,'cn_currency_uid','','','',0,0,0,'static_currencies',119,''),('3546b542b800c4ef99e04a132c38deb9','tt_content',125,'image','','','',0,0,0,'sys_file_reference',63,''),('3597f248df0b98b2e1dd45bb77c8e5d7','static_territories',16,'tr_parent_territory_uid','','','',0,0,0,'static_territories',31,''),('35b6eea9726218a8bf4b5ff7f2b028b4','static_countries',89,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('35cc81e6dc46df0dee865bdb940f16e9','static_countries',74,'cn_country_zones','','','',42,0,0,'static_country_zones',389,''),('35d8a0db85dda6a01efcd7e542cebd50','static_countries',29,'cn_country_zones','','','',25,0,0,'static_country_zones',514,''),('36061b3d4da401544045fac73261265e','static_countries',72,'cn_country_zones','','','',32,0,0,'static_country_zones',587,''),('3632897033e9467877462f31a280ee1c','static_countries',125,'cn_currency_uid','','','',0,0,0,'static_currencies',88,''),('369854c68f7bd1e7c857d4c153bd3465','static_countries',25,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('36a02c9854d8884fed48978247a70490','static_countries',104,'cn_country_zones','','','',32,0,0,'static_country_zones',257,''),('375bb8429175620a79b8717514db1caf','sys_file_reference',45,'uid_local','','','',0,1,0,'sys_file',15,''),('37ea27e2ecb10291171069d857c714e5','static_countries',65,'cn_country_zones','','','',32,0,0,'static_country_zones',131,''),('382e6cbd99d62b7a9239e9c0b17006c6','static_countries',74,'cn_country_zones','','','',11,0,0,'static_country_zones',343,''),('3838d0463f8ac7e4f87254db89bf8cdd','static_countries',220,'cn_country_zones','','','',5,0,0,'static_country_zones',13,''),('384d7a129ed8d97d679058c4160a797b','static_countries',15,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('3871ed8451fcb704785006d87a656e10','tx_hgonworkgroup_domain_model_workgroup',1,'event','','','',0,0,0,'tx_rkwevents_domain_model_event',5,''),('388f74ff1d90c370605a36df969c73c7','static_countries',66,'cn_currency_uid','','','',0,0,0,'static_currencies',48,''),('38e5aa8a83f349da745ed5d1d77f6def','static_countries',251,'cn_currency_uid','','','',0,0,0,'static_currencies',6,''),('39034f2d3bcc93a2d9995910b003118f','static_countries',74,'cn_country_zones','','','',104,0,0,'static_country_zones',433,''),('390f2b2be83ca6f6afb80d4c1fead895','static_countries',65,'cn_country_zones','','','',7,0,0,'static_country_zones',143,''),('39475000b2d96d57171a0a9655c9e429','static_countries',74,'cn_country_zones','','','',12,0,0,'static_country_zones',347,''),('3955ac0828349abc054408ca5eb6cc2b','static_countries',72,'cn_country_zones','','','',85,0,0,'static_country_zones',619,''),('39ae3337d080fd1b6112e18427475865','sys_file_metadata',4,'file','','','',0,0,0,'sys_file',4,''),('39ce49f2cd9f96cba43a55f4fec064f1','static_territories',10,'tr_parent_territory_uid','','','',0,0,0,'static_territories',5,''),('39d59a8e89f3f3576a877a470b7631ac','sys_category',1,'items','','','',0,0,0,'pages',6,''),('39f11f69cd84bbbdc2e45b6679b72508','static_countries',104,'cn_country_zones','','','',77,0,0,'static_country_zones',298,''),('3a00e8d349e73dbbbf4bd548ccdfd38b','static_countries',6,'cn_currency_uid','','','',0,0,0,'static_currencies',4,''),('3a13e3c09015855332c98c9a9e6b7104','static_countries',105,'cn_currency_uid','','','',0,0,0,'static_currencies',72,''),('3a57a07d202f1d9e618f9ca018f33336','sys_file_reference',26,'uid_local','','','',0,0,0,'sys_file',15,''),('3a59bb6474f7cedfa9d6c4e64edebdad','static_countries',72,'cn_country_zones','','','',10,0,0,'static_country_zones',573,''),('3a5c0166db6f5036c521e68bbae85ef5','static_countries',113,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('3a7ccf6ffeb4ccda853e751b7bec4adb','static_countries',211,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('3a83e6f063e94cace0603ce3e69549a4','static_countries',17,'cn_currency_uid','','','',0,0,0,'static_currencies',12,''),('3aa3f06c819844ae3f12f179b26fd515','tt_content',134,'pi_flexform','sDEF/lDEF/settings.pageSlider.pidList/vDEF/','','',1,0,0,'pages',25,''),('3ad2e42ca7080f7184875c1ef1eb4510','static_countries',104,'cn_country_zones','','','',75,0,0,'static_country_zones',294,''),('3af3df6ae908246d49185a64e2a1889f','static_territories',27,'tr_parent_territory_uid','','','',0,0,0,'static_territories',2,''),('3b1527628529744f59032ae9f1b42468','static_countries',180,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('3b1cabe0c88107e2444dae50334e789b','static_countries',49,'cn_currency_uid','','','',0,0,0,'static_currencies',37,''),('3b4831dc59d7a308cd5a27512c856034','static_countries',56,'cn_currency_uid','','','',0,0,0,'static_currencies',42,''),('3b4fe841c41123c54d7f5412aa8ce20c','static_countries',167,'cn_parent_territory_uid','','','',0,0,0,'static_territories',26,''),('3b56eca52e2da48f500d87538270528c','static_countries',31,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('3b746ce41bcf0faa9b3248bcf66f07ef','sys_file_reference',48,'uid_local','','','',0,0,0,'sys_file',4,''),('3b7640c61083d6ff4e2bad4646816fd9','static_countries',104,'cn_country_zones','','','',23,0,0,'static_country_zones',251,''),('3bacff09ab103de5c56f493dba4f1cc9','static_countries',74,'cn_country_zones','','','',7,0,0,'static_country_zones',335,''),('3bc2fb8270a7e4732940b6d325355c52','static_countries',41,'cn_currency_uid','','','',0,0,0,'static_currencies',31,''),('3bc7bbe23c8411ab822fff90375954e6','sys_file',13,'storage','','','',0,0,0,'sys_file_storage',1,''),('3c19b4be306190a10c6fa216cb2a7216','static_countries',74,'cn_country_zones','','','',0,0,0,'static_country_zones',332,''),('3c441cd3db2d29daa908555839fe8f06','tx_rkwevents_domain_model_event',5,'place','','','',0,0,0,'tx_rkwevents_domain_model_eventplace',1,''),('3c668811be892d7b1e7a4d055cd8bad1','sys_file_metadata',28,'file','','','',0,0,0,'sys_file',32,''),('3c6ffcd034ff0b6d0fe43dd06858e8c5','static_countries',219,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('3c7c208ae7843da1585aa6357089b32a','static_countries',34,'cn_currency_uid','','','',0,0,0,'static_currencies',27,''),('3ca275c9e1f45ffb20a250acc5fa5bdf','static_countries',72,'cn_country_zones','','','',21,0,0,'static_country_zones',547,''),('3cbeaa56007f4273bedc42461e93f1ab','static_countries',13,'cn_country_zones','','','',4,0,0,'static_country_zones',98,''),('3cc54dd00137e03bcdecbb3c99334498','static_countries',11,'cn_currency_uid','','','',0,0,0,'static_currencies',8,''),('3cd02831eb3b982f8c053f87450f730c','static_countries',148,'cn_country_zones','','','',10,0,0,'static_country_zones',192,''),('3cf81bd682bcde42042d23a1f2949d1d','static_countries',54,'cn_country_zones','','','',8,0,0,'static_country_zones',79,''),('3d08f315a440e331b5f1015260888d51','static_countries',173,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('3d2fff3a05a1df7fa98b39bcbb6e94b2','static_countries',36,'cn_country_zones','','','',10,0,0,'static_country_zones',76,''),('3d304f812dc515493452d84ec65fa02f','static_countries',97,'cn_country_zones','','','',23,0,0,'static_country_zones',483,''),('3d479194d77602311fbbdc2d7ce1e7d0','static_countries',244,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('3d4eecbb12feaef89b23d115628bf1c4','static_countries',72,'cn_country_zones','','','',76,0,0,'static_country_zones',611,''),('3d75a21dc0bdd53fb7ac0a5d2aa2ed66','static_countries',72,'cn_country_zones','','','',37,0,0,'static_country_zones',655,''),('3d82e279f30d1eca82e3308ecbca474a','static_countries',104,'cn_country_zones','','','',87,0,0,'static_country_zones',307,''),('3d8af1126bd256c2325ac710de05634f','sys_file_reference',35,'uid_local','','','',0,1,0,'sys_file',20,''),('3d949645df51c7fe9c852bf05210642e','tx_rkwevents_domain_model_event',5,'currency','','','',0,0,0,'static_currencies',49,''),('3df7667a6b244fedcf1798ffaf9f7b6b','static_countries',194,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('3dfa53f91a6f7d7afd56315b9d76353c','sys_file_reference',106,'uid_local','','','',0,0,0,'sys_file',12,''),('3e28381aa3d0d5b2fc87f0acb04470c6','static_countries',155,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('3e397c7b9e031a0f6b6ff5972e022a65','sys_file_reference',70,'uid_local','','','',0,0,0,'sys_file',19,''),('3e57a518cf30017a73409ce527122edc','static_countries',74,'cn_country_zones','','','',103,0,0,'static_country_zones',431,''),('3e5ff71ae1090f79e5436cf6cae12ee3','static_countries',104,'cn_country_zones','','','',83,0,0,'static_country_zones',303,''),('3e6ab11ad0ced244357cf323b662df6a','static_countries',74,'cn_country_zones','','','',75,0,0,'static_country_zones',409,''),('3f92b51c7fc5dfc1e4a38b244d0b2510','sys_file_reference',98,'uid_local','','','',0,0,0,'sys_file',19,''),('3fcc8d9e5233ba20829a85ad9eda1064','static_countries',104,'cn_country_zones','','','',94,0,0,'static_country_zones',315,''),('3fd84954748d63f54b96e48ebf954a26','sys_file',22,'storage','','','',0,0,0,'sys_file_storage',1,''),('405cc4d9c1b5d40779072c5694b7a385','static_countries',33,'cn_parent_territory_uid','','','',0,0,0,'static_territories',24,''),('4087c60385425fa0e493c09b57abf07d','static_countries',241,'cn_parent_territory_uid','','','',0,0,0,'static_territories',25,''),('40a35e608f07bcab65fde510b6966eda','static_countries',14,'cn_country_zones','','','',3,0,0,'static_country_zones',217,''),('40c32ee7166f95e835d5f04f3d84e2bc','sys_file',22,'metadata','','','',0,0,0,'sys_file_metadata',22,''),('40e8f3ff3d3413cf5a070fb5f1865880','static_countries',104,'cn_country_zones','','','',24,0,0,'static_country_zones',252,''),('41028fbcf98611385272abf6dcb9ed40','sys_file_reference',56,'uid_local','','','',0,0,0,'sys_file',5,''),('4104001be23b85503840f5c7924caba6','sys_file_reference',62,'uid_local','','','',0,0,0,'sys_file',23,''),('414718ea4a6212d700c2fb339edd06dc','static_countries',73,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('417f575a05551637a4661cc7c0cf4ed6','tx_rkwprojects_domain_model_projects',2,'partner_logos','','','',0,0,0,'sys_file_reference',53,''),('418c5ad2ec90238998768f247f8c3061','static_countries',72,'cn_country_zones','','','',66,0,0,'static_country_zones',663,''),('41d7d6596189e8ecf86cf799633adf24','static_countries',41,'cn_country_zones','','','',9,0,0,'static_country_zones',113,''),('42218514c39a1cb84952e229fc0f2bcb','static_countries',65,'cn_country_zones','','','',40,0,0,'static_country_zones',132,''),('422ba908f7593e3d339e98f8e7493f67','sys_file_metadata',22,'file','','','',0,0,0,'sys_file',22,''),('4267888d812b641cf9ef3a70d7d9494a','static_countries',235,'cn_parent_territory_uid','','','',0,0,0,'static_territories',24,''),('4275276ec7492b846e5742c9d742d527','static_countries',74,'cn_country_zones','','','',61,0,0,'static_country_zones',390,''),('42b14b1b40346654d273615ff24a4272','static_territories',24,'tr_parent_territory_uid','','','',0,0,0,'static_territories',1,''),('42b20e8eddf9148accba636a83a5bd60','static_countries',220,'cn_country_zones','','','',40,0,0,'static_country_zones',52,''),('42bcff4cd7721a44779744287e16d45b','static_countries',148,'cn_country_zones','','','',3,0,0,'static_country_zones',185,''),('434ce8f483892a40cbbf9e7e42c316d4','static_countries',74,'cn_country_zones','','','',5,0,0,'static_country_zones',337,''),('436d7981334627cd7c89acf02f73522a','static_countries',104,'cn_country_zones','','','',102,0,0,'static_country_zones',323,''),('4376c8b29a1e950ac677f89bf68bbe5b','static_countries',14,'cn_country_zones','','','',0,0,0,'static_country_zones',214,''),('437e13d42c38a0e0dc61ab57487a9402','static_countries',193,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('43b82cb2405bd535ac68ca5792392e45','static_countries',247,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('43dcd22125983b5b3ca7350336bd205b','static_countries',93,'cn_country_zones','','','',6,0,0,'static_country_zones',695,''),('43ff668d97b0e7feb35eb13d7106ab00','static_countries',13,'cn_country_zones','','','',5,0,0,'static_country_zones',100,''),('4419774dbaeb3ad8723237e6016b9907','sys_file_reference',7,'uid_local','','','',0,1,0,'sys_file',10,''),('4450791b4d81a3bb77d226815fdccf7c','static_countries',72,'cn_country_zones','','','',106,0,0,'static_country_zones',563,''),('44b960c8da691d962ca9f4ba109341b6','static_countries',220,'cn_country_zones','','','',12,0,0,'static_country_zones',21,''),('44fe4dd30c34775fbd5b58d042ae85ee','static_countries',104,'cn_country_zones','','','',18,0,0,'static_country_zones',241,''),('45136d7775ba139a635189dd7d4d3985','static_countries',71,'cn_currency_uid','','','',0,0,0,'static_currencies',42,''),('45afeb6a796975fd8c6e768db3211046','static_countries',72,'cn_country_zones','','','',102,0,0,'static_country_zones',627,''),('4609adb6857ba908cf9fbeb0ab308cf9','pages',46,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',71,''),('4643b2744cbe5be831779310a6c99fc4','sys_file_reference',30,'uid_local','','','',0,0,0,'sys_file',5,''),('4688c65ea2fa27f507a2fefdbe7d93f6','tt_content',113,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',1,0,0,'tx_rkwprojects_domain_model_projects',2,''),('46abb76ac29ac1af11babd12941c9e42','static_countries',220,'cn_country_zones','','','',41,0,0,'static_country_zones',53,''),('46c631d13211cd6b9d1249e093db70fe','static_countries',108,'cn_currency_uid','','','',0,0,0,'static_currencies',75,''),('46c82094094b539b10ba4f43a5f292c7','static_countries',44,'cn_currency_uid','','','',0,0,0,'static_currencies',33,''),('472aa796d0ed0c5a7a2e5f18f99941ed','sys_file_metadata',8,'file','','','',0,0,0,'sys_file',9,''),('4784a4f1a0168efb2d7f531bd6db9511','static_countries',157,'cn_country_zones','','','',3,0,0,'static_country_zones',533,''),('47aa9223a259166d30a95511e7781d11','sys_file_reference',9,'uid_local','','','',0,1,0,'sys_file',9,''),('47dde2cf4bb571ce0571037200c0ee2b','static_countries',90,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('4821da930346696406e3ccf3ec22d999','sys_file_metadata',21,'file','','','',0,0,0,'sys_file',21,''),('484db17c2f3964b2f4af19411615fa86','static_countries',14,'cn_country_zones','','','',2,0,0,'static_country_zones',216,''),('4857a7ed7cedb0413d31c65b1b8a1ae8','static_countries',65,'cn_country_zones','','','',35,0,0,'static_country_zones',167,''),('48ea8fa6863e14157c2d926a339e0160','static_countries',104,'cn_country_zones','','','',95,0,0,'static_country_zones',319,''),('48ead7977b8cf484df5082e272329877','static_countries',104,'cn_country_zones','','','',20,0,0,'static_country_zones',242,''),('490efb4b73907ec8f2be264097711859','tx_rkwevents_domain_model_event',1,'currency','','','',0,0,0,'static_currencies',49,''),('49201ff5bfe73e28c92400ceb1eba33c','static_countries',3,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('4930731ac90e7153e8bb4ded0ece2565','sys_file_reference',93,'uid_local','','','',0,0,0,'sys_file',23,''),('4930ae6005330f1d68b8c754f70074f9','static_countries',72,'cn_country_zones','','','',18,0,0,'static_country_zones',546,''),('493a1f1370bb9bde9a36b386aab4dff9','sys_file_reference',96,'uid_local','','','',0,0,0,'sys_file',19,''),('495e1f3b1dc15f65f3c388c4f4f52031','static_countries',19,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('4970a8bca53b37e7934db79d4e535cbc','static_countries',148,'cn_country_zones','','','',22,0,0,'static_country_zones',204,''),('499e49c76c1dc1454dec0cd4247f4e1d','sys_domain',1,'domainName','','substitute','0',-1,0,0,'_STRING',0,'hgon.local'),('49e7527b7ec8a61bc38efa7168d22a1f','sys_file_reference',52,'sys_language_uid','','','',0,0,0,'sys_language',-1,''),('49fafbfe6b16abdecbd58aca81cd63f9','static_countries',220,'cn_country_zones','','','',25,0,0,'static_country_zones',35,''),('49fc71ff3cfb9f7ede0f076819af6a41','sys_file',19,'storage','','','',0,0,0,'sys_file_storage',1,''),('49fe84a06e764a1940e38b0e59fe5dbf','sys_file_reference',40,'uid_local','','','',0,0,0,'sys_file',22,''),('4a452843423ffd573b9e6b3f90c45d4b','static_countries',148,'cn_country_zones','','','',25,0,0,'static_country_zones',207,''),('4a4eadb5dfdbbcc5e8099f2ef73c6d36','static_countries',246,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('4a6654f4fd64f5380e1060aaa6523ed1','static_countries',104,'cn_country_zones','','','',4,0,0,'static_country_zones',228,''),('4a86f53f5ef4b9421f79b5fb71f867d6','static_countries',72,'cn_country_zones','','','',96,0,0,'static_country_zones',626,''),('4ad33a54a04bb83a1c4039b90c11a4b1','tt_content',138,'pi_flexform','sDEF/lDEF/settings.persistenceIdentifier/vDEF/','formPersistenceIdentifier','6017ad8678d81c0ff8e583440e41d95e',-1,0,0,'sys_file',31,''),('4ad5f1d636d8d01379f0b87af64aef6a','static_countries',115,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('4ae4dedef9586b178b1e85e2c62229ed','static_countries',82,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('4afdb1265c8bdf300e9fad138fb73a7f','static_countries',104,'cn_country_zones','','','',70,0,0,'static_country_zones',290,''),('4b2bfe8aa3509b054d83946a2e78855e','static_countries',72,'cn_country_zones','','','',101,0,0,'static_country_zones',562,''),('4b63ef3fa1ac6a8860a5928d9fa167b5','tt_content',118,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',1,0,0,'tx_rkwprojects_domain_model_projects',4,''),('4b925bf0d5a367b36dbf3cc0fe317de1','static_countries',170,'cn_country_zones','','','',8,0,0,'static_country_zones',681,''),('4be63b49327d6e01ef54435a155e36da','static_countries',72,'cn_country_zones','','','',20,0,0,'static_country_zones',578,''),('4c010c3d4e441edb0ec3264dbe4a98d0','static_countries',81,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('4c80315e2b4fe249722e048b3f94a193','sys_file_reference',18,'uid_local','','','',0,1,0,'sys_file',5,''),('4c8333580fc5f80b3690e80d1c61d930','tt_content',113,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',2,0,0,'tx_rkwprojects_domain_model_projects',3,''),('4cad7ea107187c0f5b1b815c2be15285','static_countries',72,'cn_country_zones','','','',1,0,0,'static_country_zones',565,''),('4caefde689abef1ee1b08655c2665703','tx_rkwevents_domain_model_event',3,'currency','','','',0,0,0,'static_currencies',49,''),('4cbd9d7f84264f760c0534d3827b6be5','static_countries',74,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('4cfb040156eadc1357eeafdcafc4e814','static_countries',141,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('4d108704d5184d81cb5a03f0e3260f93','static_countries',74,'cn_country_zones','','','',55,0,0,'static_country_zones',386,''),('4d7d3d99585e597eafd64fb622dc12ee','static_countries',230,'cn_currency_uid','','','',0,0,0,'static_currencies',165,''),('4d7d851eb16c3e2738a356be97b40afa','static_countries',65,'cn_country_zones','','','',14,0,0,'static_country_zones',148,''),('4d8338456b9dd3da5f826d42027b88e2','static_countries',175,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('4da82bb5a2b82551509cd6defa35f846','tx_rkwbasics_domain_model_department',1,'main_page','','typolink','48870ddc606953b2070de695d9544226:0',-1,0,0,'_STRING',0,'t3://page?uid=6'),('4db64c3ca1991b95301fd2590d361436','sys_file',18,'storage','','','',0,0,0,'sys_file_storage',1,''),('4dc6761ca6cfceae97353137f31728bf','static_countries',145,'cn_currency_uid','','','',0,0,0,'static_currencies',101,''),('4e47bd23de439d6483f42d96b5448bd3','static_countries',146,'cn_currency_uid','','','',0,0,0,'static_currencies',102,''),('4e5d3607fb7ce7cb74f67dd782b68293','static_countries',59,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('4e664eb89c508880f3e2cbf918aa37c5','static_countries',72,'cn_country_zones','','','',68,0,0,'static_country_zones',552,''),('4eb003bca3c8f0a2e8c31291824eb37f','static_countries',74,'cn_country_zones','','','',20,0,0,'static_country_zones',351,''),('4eb2a39af242efed0f6f81d7d337eab4','static_territories',20,'tr_parent_territory_uid','','','',0,0,0,'static_territories',1,''),('4ed247ee8b785ff490d2137b2aa45679','sys_file_metadata',7,'file','','','',0,0,0,'sys_file',8,''),('4efdad5b75a9d3ea73489f469c56ce94','static_countries',29,'cn_country_zones','','','',20,0,0,'static_country_zones',512,''),('4f1fdcdb112b5383a63cbdd508a1cbbe','static_countries',65,'cn_country_zones','','','',46,0,0,'static_country_zones',176,''),('4fb0e7ce8371218868c09ce1a2717e3b','static_countries',182,'cn_currency_uid','','','',0,0,0,'static_currencies',127,''),('4fb217d9109af71fd830e441899ba56e','static_countries',72,'cn_country_zones','','','',103,0,0,'static_country_zones',628,''),('500f1e89cc4088427f2e3ac074f19f01','static_countries',72,'cn_country_zones','','','',130,0,0,'static_country_zones',642,''),('502a12c38b2542459fe1db9176ddb3db','tx_rkwevents_domain_model_event',3,'be_user','','','',0,0,0,'be_users',5,''),('502ee338ce09ad826387e99b0cbfa345','static_territories',30,'tr_parent_territory_uid','','','',0,0,0,'static_territories',4,''),('5051371aa670d88d1e7b5d0eaed8f8b5','static_countries',186,'cn_currency_uid','','','',0,0,0,'static_currencies',131,''),('505e705b90728e13f3e2fa3e61814e48','static_countries',104,'cn_country_zones','','','',72,0,0,'static_country_zones',289,''),('50754f807e82b42b17881b3486548617','static_countries',29,'cn_country_zones','','','',16,0,0,'static_country_zones',505,''),('507eec35d0badda6c3785b3ed4301370','static_countries',97,'cn_country_zones','','','',11,0,0,'static_country_zones',471,''),('50978a89bf47aa12b89845de884ca501','tx_rkwevents_domain_model_event',5,'document_type','','','',0,0,0,'tx_rkwbasics_domain_model_documenttype',2,''),('50b4d8d8e8c56583335080a79026341e','static_countries',22,'cn_currency_uid','','','',0,0,0,'static_currencies',16,''),('50c3b860b9261b87faef634978ef4f08','static_countries',220,'cn_country_zones','','','',10,0,0,'static_country_zones',19,''),('50c72534ad33e287f331583f21b09255','static_countries',41,'cn_country_zones','','','',0,0,0,'static_country_zones',104,''),('50e6263c9f798bbba1e03e8c3519eb5d','static_countries',27,'cn_currency_uid','','','',0,0,0,'static_currencies',20,''),('517724d8de14aa37e8419771cee0c8d6','sys_file_metadata',6,'file','','','',0,0,0,'sys_file',6,''),('51d018b59091e9a6301accc07d5e9cf1','sys_file',5,'metadata','','','',0,0,0,'sys_file_metadata',5,''),('52206a0378a42f2c71f828df0a49d07b','tt_content',3,'image','','','',0,0,0,'sys_file_reference',1,''),('5235fe35476eda70828fab1644a20c1b','static_countries',107,'cn_currency_uid','','','',0,0,0,'static_currencies',74,''),('5266c55c6471917d370890b0e38d4d9c','static_countries',71,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('5277bdfdb0d519c2ac53c645582c311f','static_countries',72,'cn_country_zones','','','',74,0,0,'static_country_zones',554,''),('529113d186577788720980a8c108023c','static_countries',23,'cn_currency_uid','','','',0,0,0,'static_currencies',17,''),('529c34e38487146e69d35f4aaf8199d4','static_countries',93,'cn_country_zones','','','',19,0,0,'static_country_zones',708,''),('52a3bd105cfffae70e0681c3fc326ba7','static_countries',74,'cn_country_zones','','','',27,0,0,'static_country_zones',361,''),('52a52cbaf57b6c337d323da07ad2f8c9','static_countries',54,'cn_country_zones','','','',14,0,0,'static_country_zones',93,''),('52ec4b7fa53b31f47b98094c3d7696d1','static_countries',65,'cn_country_zones','','','',6,0,0,'static_country_zones',142,''),('53254d8b94bb96ad7d6528fc165ea065','static_countries',220,'cn_country_zones','','','',36,0,0,'static_country_zones',47,''),('532b5525a2153e091c7095451a019931','static_countries',150,'cn_currency_uid','','','',0,0,0,'static_currencies',178,''),('53b7da3ee5a362f768225c942d8e47be','static_countries',104,'cn_country_zones','','','',98,0,0,'static_country_zones',316,''),('5405a38fc5f472830b9d2d93c2617717','static_countries',104,'cn_country_zones','','','',79,0,0,'static_country_zones',302,''),('540f8e8d341ca2dbdc7fbc51da8021f9','static_countries',1,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('541daf2bfbceb900f32361bf672d8af9','static_countries',104,'cn_country_zones','','','',73,0,0,'static_country_zones',287,''),('546717514a1103b22d25034dd40e1a8d','static_countries',220,'cn_country_zones','','','',51,0,0,'static_country_zones',64,''),('547834c1a91916a0a169834c73c07057','static_countries',192,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('54c17abd2aa3d92e346c69e7f7d17077','static_countries',104,'cn_country_zones','','','',5,0,0,'static_country_zones',226,''),('54d14e00cda68ec08f689163c7424303','static_countries',74,'cn_country_zones','','','',50,0,0,'static_country_zones',380,''),('554dcfc5be63d602671c42147976dc35','tt_content',97,'pages','','','',0,0,0,'pages',6,''),('557bd9392740db0a8b32db0b02994cdd','static_countries',139,'cn_currency_uid','','','',0,0,0,'static_currencies',98,''),('557de1cd99f1b4d25f681d822c060598','sys_file_metadata',1,'file','','','',0,0,0,'sys_file',1,''),('562bb300f1f3546b68acd0a73081bcc3','static_countries',65,'cn_country_zones','','','',26,0,0,'static_country_zones',160,''),('562e9e5a179da39424bba1dd5dc91de2','static_countries',104,'cn_country_zones','','','',99,0,0,'static_country_zones',321,''),('566ea9c18483888a073c93d771a2fa89','sys_file_reference',92,'uid_local','','','',0,0,0,'sys_file',22,''),('56721b1a2d2722a965457aae6d188299','static_countries',74,'cn_country_zones','','','',52,0,0,'static_country_zones',385,''),('568bd73ea08636f3e2131de800d21327','static_countries',103,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('56929a6c6e7e0305fc08b4b47f5c9174','static_countries',104,'cn_country_zones','','','',74,0,0,'static_country_zones',291,''),('56d8d756c2f4e0321638e57708619437','static_countries',54,'cn_country_zones','','','',1,0,0,'static_country_zones',81,''),('5716f3ad6231832680e5fea58047b508','static_countries',72,'cn_country_zones','','','',6,0,0,'static_country_zones',543,''),('575dc91597adfea22fef31083efd0be3','static_countries',93,'cn_country_zones','','','',3,0,0,'static_country_zones',689,''),('57992d65d3cbeb1e0b5dbf9f30be8f67','static_countries',129,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('57a7e6e4414eb79b81498ea26d35c265','tx_rkwevents_domain_model_event',2,'currency','','','',0,0,0,'static_currencies',49,''),('57ca3e27a722958fd804e39841585322','static_countries',29,'cn_country_zones','','','',6,0,0,'static_country_zones',496,''),('57f20c6b99d5725eacae5c28727d8361','be_groups',1,'db_mountpoints','','','',0,0,0,'pages',1,''),('57f699e3677a706d09d2a8a7f2db6ae7','static_countries',185,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('58cff31a441aaa134870a0bf5ee6ea39','static_countries',104,'cn_country_zones','','','',71,0,0,'static_country_zones',295,''),('59afda693ea1dc4af229b9e99192e48b','sys_file_reference',107,'uid_local','','','',0,0,0,'sys_file',22,''),('59b472bd91365187964e81779c5920e1','static_countries',148,'cn_country_zones','','','',31,0,0,'static_country_zones',213,''),('59b578dc09ba6e0a1b6b7f88de443a5d','static_countries',9,'cn_currency_uid','','','',0,0,0,'static_currencies',7,''),('5a56dd427ec280887e430dad43f5122e','tt_content',125,'image','','','',1,0,0,'sys_file_reference',64,''),('5a7e43592f396a84a22513dedee6071d','static_countries',93,'cn_country_zones','','','',10,0,0,'static_country_zones',699,''),('5a9e3fc55ce0d44ce58e02421b7d8ece','static_countries',69,'cn_currency_uid','','','',0,0,0,'static_currencies',51,''),('5ab691278fdeec69994e419e5f738541','static_countries',72,'cn_country_zones','','','',56,0,0,'static_country_zones',568,''),('5ad207b3dc308914465aedf83e565cdf','static_countries',38,'cn_currency_uid','','','',0,0,0,'static_currencies',30,''),('5ae13fbb180cff76ba8a9e765ab495e6','static_territories',7,'tr_parent_territory_uid','','','',0,0,0,'static_territories',4,''),('5af675446b1fba20abee6872f3ba7b9a','static_countries',104,'cn_country_zones','','','',66,0,0,'static_country_zones',288,''),('5b04c6671401c636eb12c20ec73082ef','static_countries',220,'cn_parent_territory_uid','','','',0,0,0,'static_territories',18,''),('5b26ad4da9c0b2db07bb5a3667d55971','static_countries',72,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('5b89d55e705a2d9d7c2734625a43e1b0','tt_content',65,'image','','','',1,0,0,'sys_file_reference',67,''),('5bc73fdbb848863622d7cbb240c202c5','static_countries',151,'cn_parent_territory_uid','','','',0,0,0,'static_territories',24,''),('5bcaa37d1609ab827a01d61adf857ca2','static_countries',220,'cn_country_zones','','','',29,0,0,'static_country_zones',39,''),('5bd5a49e4b718b7044933662c4a94bec','static_countries',148,'cn_country_zones','','','',24,0,0,'static_country_zones',206,''),('5be51f6e3720028b6a50888c448d0c9e','tx_rkwevents_domain_model_event',1,'document_type','','','',0,0,0,'tx_rkwbasics_domain_model_documenttype',3,''),('5c020a87a21b0856b5192600e9189b74','static_countries',133,'cn_currency_uid','','','',0,0,0,'static_currencies',173,''),('5c155f3a8f9a9de246cbb90a84e92666','static_countries',72,'cn_country_zones','','','',28,0,0,'static_country_zones',549,''),('5c1908c1ace84c0e79fa658f72abd5f1','static_countries',74,'cn_country_zones','','','',66,0,0,'static_country_zones',399,''),('5c38ff1a0491eb6e668cc1082658f682','static_countries',49,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('5d0b67d6dcc42a68f459f105a6a08e33','tt_content',59,'image','','','',0,0,0,'sys_file_reference',26,''),('5d67befbd38cf6224629f41136387d8c','static_countries',104,'cn_country_zones','','','',96,0,0,'static_country_zones',317,''),('5d720f725460f684b2ec35c594e26457','static_countries',72,'cn_country_zones','','','',41,0,0,'static_country_zones',550,''),('5df40382b3e5cce72619e1f347d9e91d','tx_rkwprojects_domain_model_projects',3,'partner_logos','','','',0,0,0,'sys_file_reference',54,''),('5e142047a04075e69585d5cd5130723a','static_countries',104,'cn_country_zones','','','',80,0,0,'static_country_zones',299,''),('5e88454b91d3f8ca377153343a369709','tx_news_domain_model_news',1,'fal_related_files','','','',0,0,0,'sys_file_reference',111,''),('5e990d2e7575323171e74525d7645bf1','static_countries',53,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('5e9ed785fd61a095c7a02ec719169641','static_countries',74,'cn_country_zones','','','',89,0,0,'static_country_zones',419,''),('5ebfbfebdd0103633e02238b093688cf','pages',51,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',76,''),('5ec2c87258be8a66bb8c7800d15889cb','static_countries',227,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('5eca5d59e00eacbb0809ab8fb2517c54','sys_file',24,'storage','','','',0,0,0,'sys_file_storage',1,''),('5ef1e1b0817277fdb8fc1b3c051e3c56','static_countries',209,'cn_currency_uid','','','',0,0,0,'static_currencies',146,''),('5f334411adb22a29eca7e4378b8a643d','static_countries',65,'cn_country_zones','','','',41,0,0,'static_country_zones',135,''),('5f6cabd3c5a425f8a9eced664e714baf','static_countries',65,'cn_country_zones','','','',43,0,0,'static_country_zones',173,''),('5f75b76dbc7fc717cc23c5d8e299fced','static_countries',170,'cn_country_zones','','','',3,0,0,'static_country_zones',676,''),('5f8917ac8e6e2e090478ef7fab27697f','sys_file',7,'metadata','','','',0,0,0,'sys_file_metadata',9,''),('5f99a59e5e1b738465757d86d2b920aa','static_countries',93,'cn_country_zones','','','',14,0,0,'static_country_zones',702,''),('5fc6ac672dbd2422b725c0396adc3ed8','tt_content',92,'pi_flexform','sDEF/lDEF/settings.persistenceIdentifier/vDEF/','formPersistenceIdentifier','5a9ffc3ef08a2ac1a8f779ecdb61669d',-1,0,0,'sys_file',24,''),('5fe0535690f30d63fd5fe5ed356038b0','static_countries',17,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('5fe145d4e903e57212c56b32b721f0da','static_countries',241,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('5fee43c1681238cacf84478aeab9b976','sys_file',19,'metadata','','','',0,0,0,'sys_file_metadata',19,''),('5ff6d823677f808ade56e74796ebf7c0','static_countries',74,'cn_country_zones','','','',15,0,0,'static_country_zones',354,''),('5ff8233dc394b2907f8c8b3879e97301','static_countries',41,'cn_country_zones','','','',2,0,0,'static_country_zones',105,''),('600058e02f1254dd97b3e1d34ffa3816','sys_file_reference',103,'uid_local','','','',0,0,0,'sys_file',18,''),('60045e19d3571b54336c2735f3f3a0f5','static_countries',40,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('6038375d1c9fa3d114914d905103d5fe','static_countries',220,'cn_country_zones','','','',45,0,0,'static_country_zones',57,''),('609360d5008a728512900c5ff95bfb76','sys_file_reference',44,'uid_local','','','',0,1,0,'sys_file',15,''),('60dd604a8f4b844f63c1e00d2b6c77b2','tt_content',114,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',2,0,0,'tx_rkwprojects_domain_model_projects',3,''),('60dd9766b044f3068b6153c96aabeb6b','tt_content',115,'image','','','',0,0,0,'sys_file_reference',57,''),('61122d794454997c8576351c9b1ea40b','static_countries',12,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('611fea31ef484647ccee9e6ea3d71056','static_countries',74,'cn_country_zones','','','',39,0,0,'static_country_zones',371,''),('61241dcad1e3278defd6bd836c2bbe4f','static_countries',106,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('612550ae64a5e9550cfde05e85b11adf','static_countries',72,'cn_country_zones','','','',75,0,0,'static_country_zones',610,''),('615e9fcc525514668c8c75811a18ce7a','static_countries',74,'cn_country_zones','','','',62,0,0,'static_country_zones',400,''),('6180810cb037519eee4a869ccb11084a','static_countries',63,'cn_currency_uid','','','',0,0,0,'static_currencies',92,''),('6191cae26d62680e7f38b928e8cf57d4','static_countries',197,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('61a15d4e7790b9017d3cfd9d87eb1870','static_countries',97,'cn_country_zones','','','',18,0,0,'static_country_zones',478,''),('61f2c83b9e42f66ba2f578a57adc7cb9','tx_rkwevents_domain_model_event',4,'currency','','','',0,0,0,'static_currencies',49,''),('624192e35dce6102a5acecf31dad2686','tt_content',118,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',0,0,0,'tx_rkwprojects_domain_model_projects',1,''),('628b0849fa0926183cb8f7af6d5f3639','static_countries',72,'cn_country_zones','','','',42,0,0,'static_country_zones',594,''),('6299c392a4f3e7bdea1537ed6f120b90','tx_rkwevents_domain_model_event',4,'place','','','',0,0,0,'tx_rkwevents_domain_model_eventplace',1,''),('62a6061bb337c8ebe4f7b9dcf3e924e4','static_countries',72,'cn_country_zones','','','',35,0,0,'static_country_zones',589,''),('63294cf8b9178552d8b55ecc108a6431','static_countries',65,'cn_country_zones','','','',24,0,0,'static_country_zones',158,''),('636ec7117df0422904c94fbb58ca81d9','static_countries',128,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('6373846061bc6a4ec46259bce1a74c16','static_countries',29,'cn_country_zones','','','',23,0,0,'static_country_zones',513,''),('638e41fe07bfc39a1c4f3de6128198c6','static_territories',9,'tr_parent_territory_uid','','','',0,0,0,'static_territories',4,''),('639973677a11c28bedb74daaac17abb6','static_countries',36,'cn_country_zones','','','',7,0,0,'static_country_zones',73,''),('646b12cb6b658c58e46af7da56675be9','tx_rkwevents_domain_model_event',4,'tx_hgon_workgroup','','','',0,0,0,'tx_hgonworkgroup_domain_model_workgroup',1,''),('64712e6cc434167abccea3ae80fc6604','tx_rkwauthors_domain_model_authors',1,'image_boxes','','','',0,0,0,'sys_file_reference',48,''),('647ade48f16d3fef6a98ce06e00febda','static_countries',136,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('64955e70f61f35d15c1ec57674cc623c','static_countries',170,'cn_country_zones','','','',11,0,0,'static_country_zones',684,''),('64ddcc58e9a95c7232adbb9b4838c283','static_countries',236,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('64fd067ad1ed39b0973f1302d71931fd','static_countries',72,'cn_country_zones','','','',97,0,0,'static_country_zones',559,''),('65533699e67cdec0d349aac605ab4b6e','static_countries',74,'cn_country_zones','','','',37,0,0,'static_country_zones',366,''),('655993e1a639290c437d2980acdbdb39','sys_file',16,'storage','','','',0,0,0,'sys_file_storage',1,''),('6588728f1c2f2069b4b781ab1d102fff','sys_file',21,'storage','','','',0,0,0,'sys_file_storage',1,''),('658fd2bb5a31d9b13dd3f50002f7162b','static_countries',104,'cn_country_zones','','','',25,0,0,'static_country_zones',244,''),('659b94cf3174e244ba74a3c19ba447a1','static_countries',74,'cn_country_zones','','','',23,0,0,'static_country_zones',368,''),('659baa03d9cfdc93ae572d1e47a8113b','tt_content',97,'pi_flexform','sDEF/lDEF/settings.journalHighlight.pid/vDEF/','','',0,0,0,'pages',6,''),('65f36cf72bf20e7840d99401266b6087','sys_file_reference',39,'uid_local','','','',0,0,0,'sys_file',21,''),('65fb4175374c27f4f66cc5c7b35be4f8','static_countries',178,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('66242c76c410468b40ac2da870cbffb2','static_countries',18,'cn_currency_uid','','','',0,0,0,'static_currencies',13,''),('6628767cc0a723b6192dec8861816e1e','static_countries',170,'cn_currency_uid','','','',0,0,0,'static_currencies',120,''),('6662f76fe16c3e6f36140e86d84b760d','tt_content',14,'header_link','','typolink','fa26111d3aeaf51a5e93d193026e20e2:0',-1,1,0,'_STRING',0,'t3://page?uid=2'),('668abcff16924267571cef633edf73ca','static_countries',112,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('668caedbadae860e21562788472e1c3a','static_countries',29,'cn_country_zones','','','',13,0,0,'static_country_zones',503,''),('66a32dbf500ae5e04bcf209e11a015c5','sys_file_reference',54,'uid_local','','','',0,0,0,'sys_file',19,''),('67086bbfd943b39d29d39777f29f25ab','static_countries',183,'cn_parent_territory_uid','','','',0,0,0,'static_territories',26,''),('67a0a424856583acf77c541803d118d9','static_countries',123,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('6860c2473e24df357088bb321123ad85','static_countries',223,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('687510d0be7d378cdd0c8a939aa648ec','static_countries',220,'cn_country_zones','','','',6,0,0,'static_country_zones',14,''),('68b02bbc33661556ef0b676e1c9f6dce','sys_file_reference',86,'uid_local','','','',0,0,0,'sys_file',22,''),('68c2b48ced0d5d617f50c9d89496ba42','static_countries',84,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('68ce39cdf7a96103e8e4088a61b817f2','static_countries',174,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('68d2560bb309e6f765b0d5cb85cbbc53','static_countries',93,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('68f6358111ed648f24608a9bdaaec98a','tx_rkwevents_domain_model_event',4,'organizer','','','',0,0,0,'tx_rkwevents_domain_model_eventorganizer',1,''),('68f81caacac26244b946e6782af1271c','static_countries',72,'cn_country_zones','','','',116,0,0,'static_country_zones',644,''),('6945d5129c8d58a03fea006ed0351192','sys_file_reference',101,'uid_local','','','',0,0,0,'sys_file',19,''),('6951777a87bb229bc8a21e1c31353f4a','static_countries',157,'cn_country_zones','','','',2,0,0,'static_country_zones',532,''),('6960c66826fdc760f7673c8a5918ca7e','static_countries',104,'cn_country_zones','','','',39,0,0,'static_country_zones',261,''),('69c193d9f73f442d170c3532dfc6ffb2','static_countries',74,'cn_country_zones','','','',13,0,0,'static_country_zones',344,''),('69da5888602485f21bfe9f8fc6ef0084','static_countries',151,'cn_currency_uid','','','',0,0,0,'static_currencies',108,''),('69dd3acaf87b0d271b26160d817f2578','static_countries',104,'cn_country_zones','','','',19,0,0,'static_country_zones',246,''),('6a11aa0f1a87821aa451b796e4274968','sys_file_metadata',26,'file','','','',0,0,0,'sys_file',27,''),('6a11ba9f399b0a5c637cb58113762c5b','static_countries',249,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('6a8500405f45a32db3689e6d69808235','static_countries',224,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('6ab8ef0d259bd083a403592a9f88c638','static_countries',97,'cn_country_zones','','','',17,0,0,'static_country_zones',477,''),('6ac6dd7a5142989a46d3ac77ef2b3f1c','static_countries',148,'cn_country_zones','','','',1,0,0,'static_country_zones',184,''),('6ad1e2dc3bba07298cab0fe36600adc9','static_countries',220,'cn_country_zones','','','',15,0,0,'static_country_zones',24,''),('6ae72b7d280ee0fc4e2c94fe671854c1','tt_content',134,'pi_flexform','sDEF/lDEF/settings.pageSlider.pidList/vDEF/','','',0,0,0,'pages',7,''),('6af2e623d12a14d4a8e0dbbce7d47012','static_countries',72,'cn_country_zones','','','',8,0,0,'static_country_zones',571,''),('6b74aa384af0e5a5ce5352d427aebbc1','tt_content',122,'image','','','',0,0,0,'sys_file_reference',60,''),('6bcd72ef97d5026f24913ce33272d032','static_countries',165,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('6bd28a2d26af3f07092d3509e34d6c97','static_countries',93,'cn_country_zones','','','',17,0,0,'static_country_zones',706,''),('6bd47c5177229560706ee45c701a8cf0','static_countries',104,'cn_country_zones','','','',90,0,0,'static_country_zones',308,''),('6bf0f79765e26beed73365c9f3c68ac0','sys_file_reference',37,'uid_local','','','',0,0,0,'sys_file',15,''),('6c1b134a522a9c98a900a9038f51e783','static_countries',72,'cn_country_zones','','','',34,0,0,'static_country_zones',588,''),('6c4a99aceeaa1cf15d50c74d63597e32','tt_content',111,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',1,0,0,'tx_rkwprojects_domain_model_projects',3,''),('6c889226c8fc7319c498565c6864dbc7','static_countries',97,'cn_country_zones','','','',16,0,0,'static_country_zones',476,''),('6c8aa4160b99b39b58bbfdf1bda065ce','sys_file_reference',82,'uid_local','','','',0,1,0,'sys_file',19,''),('6cf50aaa039f45ce9946a4d20a4b7ece','static_countries',148,'cn_country_zones','','','',17,0,0,'static_country_zones',199,''),('6cf8cc33e7570d8f0c1686f137e4c067','sys_file_reference',41,'uid_local','','','',0,0,0,'sys_file',23,''),('6d9d4945787a05f9abae44a750d77187','tt_content',128,'image','','','',1,0,0,'sys_file_reference',86,''),('6dcd4d83bc17eb8221855308259d3b00','static_countries',74,'cn_country_zones','','','',102,0,0,'static_country_zones',429,''),('6dd4f4cd2bf6014de8be6146c4d4a270','sys_file_reference',64,'uid_local','','','',0,0,0,'sys_file',21,''),('6df4f30063964303acd5eb1975f8665c','static_countries',74,'cn_country_zones','','','',76,0,0,'static_country_zones',408,''),('6e01f63b1b9d1b8eaae9d17b5ef8dd62','static_countries',65,'cn_country_zones','','','',33,0,0,'static_country_zones',181,''),('6ec8360980d76e37b43aacc457d92c31','tx_rkwauthors_domain_model_authors',2,'email','','typolink','5db8afe2b5a7c940da1ef858ee34ead6:0',-1,0,0,'_STRING',0,'max@max.de'),('6f0568fb8734cc88cf49631519256834','static_countries',119,'cn_currency_uid','','','',0,0,0,'static_currencies',84,''),('6f22663aca9ca34710ab92cb7658c09f','static_countries',210,'cn_currency_uid','','','',0,0,0,'static_currencies',147,''),('6f3029a1ceec4d2a5f617ce9707da2c0','static_countries',156,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('6f404129c5d682710fe323b9f2264a4c','static_countries',166,'cn_currency_uid','','','',0,0,0,'static_currencies',165,''),('6f6f25deb35ed0bb78b3b2b6c8182d92','static_countries',65,'cn_country_zones','','','',15,0,0,'static_country_zones',149,''),('6f74373f937c36a2650a1e69d6886540','tx_rkwevents_domain_model_event',3,'document_type','','','',0,0,0,'tx_rkwbasics_domain_model_documenttype',6,''),('6f98f018f8f7d6f0bd32e7306ce9997b','static_countries',118,'cn_parent_territory_uid','','','',0,0,0,'static_territories',8,''),('6fad753400cc020356c73ef779bbb6b9','static_countries',163,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('6fb1950be98c9c2ab01a0067eddea8e5','static_countries',250,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('6fe0000cd87900d327f46098245af092','static_countries',74,'cn_country_zones','','','',57,0,0,'static_country_zones',392,''),('703c8ad281723dd970aa55c1bbf41452','tx_rkwevents_domain_model_event',5,'be_user','','','',0,0,0,'be_users',5,''),('705345c07a4663d6e85680e177c2034b','static_countries',79,'cn_currency_uid','','','',0,0,0,'static_currencies',55,''),('705ed3d86a478b0badac60bea7c3328a','tx_rkwevents_domain_model_event',2,'document_type','','','',0,0,0,'tx_rkwbasics_domain_model_documenttype',4,''),('70a1f3fd8b175f72b153ceaa5af10b3f','sys_file_reference',67,'uid_local','','','',0,0,0,'sys_file',15,''),('70a9e361c4e214eb46811153412c1c9d','static_countries',242,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('70b54e7b9c69914c2bf3581a6b545a0d','static_countries',170,'cn_country_zones','','','',13,0,0,'static_country_zones',686,''),('70d7ecf296110f8ee26f306d0a29a709','static_countries',29,'cn_country_zones','','','',0,0,0,'static_country_zones',490,''),('70f472cad0c595d38faeef1fbf4d69a8','tt_content',101,'pi_flexform','sDEF/lDEF/settings.randomAuthor.authorUidList/vDEF/','','',0,0,0,'tx_rkwauthors_domain_model_authors',1,''),('70fff04d3fa38cf35d7b935ed4baf994','sys_file_reference',31,'uid_local','','','',0,1,0,'sys_file',19,''),('711e87ce7ea30667b8f33946a11642a4','static_countries',74,'cn_country_zones','','','',6,0,0,'static_country_zones',338,''),('711ea258449ea09658d0bfd850809b0c','sys_file_reference',59,'uid_local','','','',0,0,0,'sys_file',15,''),('71736f96a15b68393898d34f3b10bac6','sys_file',10,'metadata','','','',0,0,0,'sys_file_metadata',10,''),('7242ee4b2c97aa9bcbb8fc51e522a5fb','static_countries',220,'cn_country_zones','','','',34,0,0,'static_country_zones',44,''),('7247a025a17d2d2d1a5ade1aa8b6c646','static_countries',65,'cn_country_zones','','','',29,0,0,'static_country_zones',163,''),('7270d94e31e83bac279825ceb460be10','static_countries',104,'cn_country_zones','','','',58,0,0,'static_country_zones',277,''),('72b3f8e4f762ddd2e1b2b15ab601d076','static_countries',154,'cn_parent_territory_uid','','','',0,0,0,'static_territories',25,''),('72cc854ab5be1e9b0d8b8885f6acef4c','static_countries',72,'cn_country_zones','','','',31,0,0,'static_country_zones',586,''),('72ff22b93a1e6f8eb3dec344dec9af58','sys_file',17,'storage','','','',0,0,0,'sys_file_storage',1,''),('738ea63dc9c7f732359ac8363c97497a','static_countries',104,'cn_country_zones','','','',48,0,0,'static_country_zones',268,''),('73aa15167da704293ff95033fd1b8722','static_countries',72,'cn_country_zones','','','',119,0,0,'static_country_zones',671,''),('73bc9c274e0afa197cfb7ed33a8be994','static_countries',115,'cn_currency_uid','','','',0,0,0,'static_currencies',80,''),('73d451a0dcfbafe190d5bc4e7a58c942','static_countries',14,'cn_country_zones','','','',4,0,0,'static_country_zones',218,''),('742518cc5096a3a2b93cf107ebe09d00','sys_category',2,'items','','','',1,0,0,'tx_hgontemplate_domain_model_didyouknow',1,''),('74355507689ece9d265ef1ac76ab139b','static_countries',74,'cn_country_zones','','','',81,0,0,'static_country_zones',415,''),('7438c4c9db7e1af2eb8996784a8bae20','sys_file_reference',38,'uid_local','','','',0,0,0,'sys_file',12,''),('746fb67a74b31e2451ff755953b63774','static_countries',74,'cn_country_zones','','','',53,0,0,'static_country_zones',383,''),('7485caa980b4349f06baed679f9a1914','sys_file_reference',10,'uid_local','','','',0,1,0,'sys_file',7,''),('749b08f9009340eb65da7d55a3f34867','tx_news_domain_model_news',1,'related_links','','','',0,0,0,'tx_news_domain_model_link',1,''),('74e31771f84be16db3d68f92e273f95a','static_countries',88,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('758afb3425cb8dfbbb41d4dd6f864f18','static_countries',29,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('75919bded3e71adeef765afd8495671f','static_countries',74,'cn_country_zones','','','',100,0,0,'static_country_zones',422,''),('7599fee20c873668a78eb8c9d3adcc14','static_countries',165,'cn_currency_uid','','','',0,0,0,'static_currencies',116,''),('75fdfff71e171162473ce90dda61b048','static_countries',43,'cn_currency_uid','','','',0,0,0,'static_currencies',113,''),('7646998ca782f4b157b6d7728f970d15','static_countries',13,'cn_country_zones','','','',6,0,0,'static_country_zones',101,''),('764ed7b4d26b234a0b36628e00db1247','sys_file',5,'storage','','','',0,0,0,'sys_file_storage',1,''),('7653e77bda5d5f4f2b1ff961f16f50f6','static_countries',185,'cn_currency_uid','','','',0,0,0,'static_currencies',130,''),('76a64547f439f421bf50e13864e2c9ea','sys_file_reference',91,'uid_local','','','',0,0,0,'sys_file',21,''),('76ac6b75b79f42e6ed228324c04c0a26','tt_content',107,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',2,0,0,'tx_rkwprojects_domain_model_projects',3,''),('76c27f157a3215976409898fad35cbb0','sys_file',2,'metadata','','','',0,0,0,'sys_file_metadata',2,''),('76dcd21ab998910629349ff8a0500410','static_countries',47,'cn_currency_uid','','','',0,0,0,'static_currencies',35,''),('76dfdbb732f6ea83bec2230d8d0c7f2f','static_countries',65,'cn_country_zones','','','',45,0,0,'static_country_zones',175,''),('770d7759e08ae27f1170a1b95a902528','static_countries',104,'cn_country_zones','','','',78,0,0,'static_country_zones',297,''),('7718e472308fa908d2b21380689dd333','static_countries',97,'cn_country_zones','','','',15,0,0,'static_country_zones',475,''),('772580e42ca3939afdee322c2688c9db','static_countries',94,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('773f33002cfc57bac636b326bcb6bf6b','static_countries',205,'cn_currency_uid','','','',0,0,0,'static_currencies',143,''),('774467fabe349693a5080ba9dee95a4d','static_countries',104,'cn_country_zones','','','',47,0,0,'static_country_zones',266,''),('77b06f2c5f02514c568cdce7c1f48842','static_countries',74,'cn_country_zones','','','',38,0,0,'static_country_zones',367,''),('77b82e57ff062a04cd89e43170812671','static_countries',72,'cn_country_zones','','','',82,0,0,'static_country_zones',617,''),('77cf74c7735b7ed06535ca691fbbfe07','sys_file',12,'storage','','','',0,0,0,'sys_file_storage',1,''),('77d726aa2687056f67da51dba2ceb7d4','static_countries',54,'cn_country_zones','','','',4,0,0,'static_country_zones',84,''),('77f15fd50c649b63c2f4bb7b21d05df0','sys_file_reference',105,'uid_local','','','',0,0,0,'sys_file',15,''),('77f8557bbb9b6463a0c9090bc3bd1b7e','static_countries',41,'cn_country_zones','','','',14,0,0,'static_country_zones',118,''),('781a01bc58c722d1849ae290debc17b0','sys_file_reference',16,'uid_local','','','',0,1,0,'sys_file',14,''),('7846c8ff7db9a02226f6fc0ee2be082a','static_countries',30,'cn_currency_uid','','','',0,0,0,'static_currencies',24,''),('7859f16ee47267e615b11e3b4c010d17','static_countries',72,'cn_country_zones','','','',107,0,0,'static_country_zones',668,''),('788cafd0617230c2bec5cf14ef67f3f6','tt_content',65,'header_link','','typolink','a5965f368324b14cc3a577b0e516966a:0',-1,0,0,'_STRING',0,'t3://page?uid=27'),('789b26b86b54477e5d30850a370162d5','static_countries',97,'cn_country_zones','','','',2,0,0,'static_country_zones',462,''),('78b0a4d4a70e15f5189af4585f2e1a4d','tt_content',82,'image','','','',2,0,0,'sys_file_reference',41,''),('78d9a3925e8e1ce57243a7ea0b18eeda','static_countries',29,'cn_country_zones','','','',21,0,0,'static_country_zones',510,''),('795416a81147cfb98ff6cefaee648c58','static_countries',74,'cn_country_zones','','','',33,0,0,'static_country_zones',394,''),('798cdc7510e03ad33624cb28beec479b','static_countries',72,'cn_country_zones','','','',52,0,0,'static_country_zones',558,''),('79d5658b803322c93934a58c0bfe6905','static_countries',72,'cn_country_zones','','','',113,0,0,'static_country_zones',641,''),('79ee253ed702e0d47fa685854a5accb3','static_countries',104,'cn_country_zones','','','',33,0,0,'static_country_zones',254,''),('7a137a8599116d37d5148851784e6c38','static_countries',72,'cn_country_zones','','','',104,0,0,'static_country_zones',630,''),('7a401c52347c5d2e170b6a843bb31dda','static_countries',195,'cn_currency_uid','','','',0,0,0,'static_currencies',137,''),('7a50cb4d61ae63101f8c277c66126670','static_countries',74,'cn_country_zones','','','',60,0,0,'static_country_zones',393,''),('7a66b3840db495c00630b24088cf396c','sys_file',3,'metadata','','','',0,0,0,'sys_file_metadata',3,''),('7aa35c4e68c6a4581f77562395fd0980','static_countries',36,'cn_country_zones','','','',6,0,0,'static_country_zones',71,''),('7ab33bbe83dfb228c902123ddf6d13bd','static_countries',98,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('7abd7002f60cdc6bd1524f426aa01f30','static_countries',190,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('7ac474ffd2e682c8f95f88056652bebb','static_countries',104,'cn_country_zones','','','',28,0,0,'static_country_zones',249,''),('7adb3ef461bebcb668e78829b6737257','static_countries',74,'cn_country_zones','','','',71,0,0,'static_country_zones',434,''),('7b58704d49dc70b1ac50e0369c7f5bac','static_countries',65,'cn_country_zones','','','',5,0,0,'static_country_zones',141,''),('7bac9335aa28fc2d5690de9a6a6fb354','static_countries',104,'cn_country_zones','','','',107,0,0,'static_country_zones',331,''),('7bff9472f4ec6b10e7a98b9f839e1e7a','static_countries',36,'cn_country_zones','','','',5,0,0,'static_country_zones',72,''),('7c140f19f978b49389c6a39e41c0c1c8','static_countries',13,'cn_country_zones','','','',3,0,0,'static_country_zones',97,''),('7c94a8629af2cacecbd251999941620b','tt_content',43,'header_link','','typolink','4f41ab257d850be225b3378547c42494:0',-1,1,0,'_STRING',0,'t3://page?uid=4'),('7c9e4fd025cbb7d6968e793239b42be9','static_countries',177,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('7cf4782b6f9048eef82e727bff1de183','sys_file_reference',25,'uid_local','','','',0,1,0,'sys_file',15,''),('7cf5194f985f5a0744f6550081145126','static_countries',35,'cn_currency_uid','','','',0,0,0,'static_currencies',28,''),('7d234bfff41b1ad7f97776eda8f30e52','static_countries',42,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('7d429346419c069d06d6c05d287f14f0','static_countries',74,'cn_country_zones','','','',82,0,0,'static_country_zones',417,''),('7d55b4334640876fda4a23bc27a96919','static_countries',58,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('7d744d5f7e9c39412cd411d44d24b59f','static_territories',6,'tr_parent_territory_uid','','','',0,0,0,'static_territories',4,''),('7dda489529b8e692ab45805eeb79c7a5','static_countries',97,'cn_country_zones','','','',12,0,0,'static_country_zones',472,''),('7df36a57d5032d4f07ad3aa50b8d8f27','static_countries',72,'cn_country_zones','','','',129,0,0,'static_country_zones',653,''),('7df54f70471fdf00fbf64be0f55f1c68','static_countries',65,'cn_country_zones','','','',36,0,0,'static_country_zones',168,''),('7e03dcc95dadd1e95318a9e245f637b0','static_countries',148,'cn_country_zones','','','',19,0,0,'static_country_zones',201,''),('7e538c7ba047d77a2d2b8fa11a835a05','static_countries',72,'cn_country_zones','','','',117,0,0,'static_country_zones',645,''),('7e715a8b02f080aa15f4268cb4a47d85','static_countries',148,'cn_country_zones','','','',29,0,0,'static_country_zones',211,''),('7e919c2c2c8153c65c2341a3750823ea','static_countries',74,'cn_country_zones','','','',10,0,0,'static_country_zones',342,''),('7e93cf40f720f868c78ddcf2a852bdc4','static_countries',195,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('7eaa7a85678fdc11e89dfd621f1d867e','static_countries',86,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('7ee2869912f990163c21adc38fb26c0f','static_countries',41,'cn_country_zones','','','',19,0,0,'static_country_zones',123,''),('7f2a46e429a6de3340ae8a4d8920e0f9','static_countries',104,'cn_country_zones','','','',11,0,0,'static_country_zones',235,''),('8035d3d6b361b13450a2e00adf666ec3','static_countries',29,'cn_country_zones','','','',2,0,0,'static_country_zones',491,''),('80ebbae13d0e7b6853a8afd41e45d810','sys_file_reference',104,'uid_local','','','',0,0,0,'sys_file',15,''),('813857ffad4e69b5fc664aeea296a476','sys_file_metadata',3,'file','','','',0,0,0,'sys_file',3,''),('815a4bc45035f0c32826e2be60a14446','static_countries',93,'cn_country_zones','','','',8,0,0,'static_country_zones',697,''),('817767e6c2654c474369819943ce2b69','static_countries',36,'cn_country_zones','','','',8,0,0,'static_country_zones',74,''),('8185fb25f418254565ae9d07bcb46444','static_countries',41,'cn_country_zones','','','',23,0,0,'static_country_zones',126,''),('81ae1aa6bfce306b3ce21c0394ab400e','static_countries',229,'cn_currency_uid','','','',0,0,0,'static_currencies',160,''),('81dae76ff60a6878ac7f6e91a30b079a','static_countries',72,'cn_country_zones','','','',49,0,0,'static_country_zones',595,''),('81fe8893a5d57f17647d448a8bca83d5','static_countries',87,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('8232292faa2eeafe2de0f172b2684e2a','static_countries',157,'cn_country_zones','','','',0,0,0,'static_country_zones',530,''),('823bf9339de3cb86aacd11ab96b570cb','sys_file',24,'metadata','','','',0,0,0,'sys_file_metadata',24,''),('823e0922994c19464d0195f1764b7a9b','static_territories',17,'tr_parent_territory_uid','','','',0,0,0,'static_territories',31,''),('826f5ce935127958a8947a4001e8b441','tx_rkwevents_domain_model_eventplace',1,'country','','','',0,0,0,'static_countries',54,''),('82713cc70fdb931e90f4a16c2c12416b','static_countries',220,'cn_country_zones','','','',1,0,0,'static_country_zones',2,''),('828c503c980ffc80d68f759c722f251e','static_countries',249,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('82f1536eeb65ddcc19084436921f986d','sys_file_reference',36,'uid_local','','','',0,1,0,'sys_file',20,''),('832265aa65bbe301e3f5e1e8ec984a26','static_countries',54,'cn_country_zones','','','',13,0,0,'static_country_zones',92,''),('83447e0f0300924350f67804c9d742db','static_countries',91,'cn_currency_uid','','','',0,0,0,'static_currencies',61,''),('835f5fc3888eaef64007c822c97d7858','static_countries',202,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('837b895df5447f345e270b14dba8f937','static_countries',93,'cn_country_zones','','','',4,0,0,'static_country_zones',693,''),('838af64bc7198f0d0717064c85b299a4','static_countries',65,'cn_country_zones','','','',28,0,0,'static_country_zones',161,''),('839380d9e37bc05d09724bb1b3612d58','static_territories',21,'tr_parent_territory_uid','','','',0,0,0,'static_territories',1,''),('839394a4f2c53c9fac76b84493ad32a1','static_countries',74,'cn_country_zones','','','',97,0,0,'static_country_zones',374,''),('83ac951d8c25be6a8758d738d874a1ee','sys_file',10,'storage','','','',0,0,0,'sys_file_storage',1,''),('83ae3368ec75d97d10e44716b299ab35','static_countries',28,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('83d8c16cec8b0d66039f393a5c1476c6','static_countries',104,'cn_country_zones','','','',43,0,0,'static_country_zones',227,''),('846c75683b0694c2cb66602fb8aa1d6d','static_countries',54,'cn_country_zones','','','',12,0,0,'static_country_zones',91,''),('846db0a4366e67ff5e7c5298143250e4','static_countries',97,'cn_country_zones','','','',1,0,0,'static_country_zones',461,''),('849ff8c7b72b5865100f6d0062581763','static_countries',248,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('84b2780d3f22e4fdc5e4ab4ff7fd478b','static_countries',78,'cn_currency_uid','','','',0,0,0,'static_currencies',177,''),('8507df84c33184f62fc6e751fd533f2d','sys_file_reference',74,'uid_local','','','',0,0,0,'sys_file',19,''),('85b12584cd7a3a4a95057d1ed9c91b1b','static_countries',200,'cn_parent_territory_uid','','','',0,0,0,'static_territories',24,''),('85bd7d2b264895c2cbc29e1f0a047a05','static_countries',200,'cn_currency_uid','','','',0,0,0,'static_currencies',142,''),('85c667ec749f225bde40413c96492455','static_countries',104,'cn_country_zones','','','',88,0,0,'static_country_zones',312,''),('86515f417503f484474ffb15289dcffc','static_countries',41,'cn_country_zones','','','',6,0,0,'static_country_zones',110,''),('8652623c7f1ace8b3c61144f6933942f','sys_file',14,'metadata','','','',0,0,0,'sys_file_metadata',14,''),('865f24864ee02eb9f4fc56ef2a2e32a1','static_countries',220,'cn_country_zones','','','',23,0,0,'static_country_zones',33,''),('865f85a9d3207773195ef1fee0fa1286','sys_file_reference',99,'uid_local','','','',0,0,0,'sys_file',19,''),('868198e1e2dc71af15bd1b904807b419','tx_news_domain_model_news',1,'tx_hgon_workgroup','','','',0,0,0,'tx_hgonworkgroup_domain_model_workgroup',1,''),('8698d43b3bd5b6d8d352780b66f0a2b9','static_countries',179,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('86da65d2271d74447a35222c2a0f8ffd','static_countries',129,'cn_currency_uid','','','',0,0,0,'static_currencies',91,''),('86ea1fd2f56f83b7d8d552dccda32177','sys_file_reference',50,'uid_local','','','',0,1,0,'sys_file',4,''),('874c6c07f9cb563364e3ab9a90a5be20','static_countries',104,'cn_country_zones','','','',7,0,0,'static_country_zones',230,''),('87af65a040ea23f97f9a4644fa27978d','static_countries',76,'cn_currency_uid','','','',0,0,0,'static_currencies',53,''),('87d8082f3af15f6332b019f737277833','static_countries',104,'cn_country_zones','','','',92,0,0,'static_country_zones',309,''),('87f3fff8d9c1b2739d2409c8669caf12','static_countries',72,'cn_country_zones','','','',115,0,0,'static_country_zones',657,''),('8804797eade334f8bf858356692cb5c0','pages',6,'shortcut','','','',0,0,0,'pages',7,''),('884a3324f22d7d57d64c229bf6868786','static_countries',218,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('88542c1439b31e5507f8a423edf514fe','static_countries',41,'cn_country_zones','','','',20,0,0,'static_country_zones',124,''),('889b55f25ecf76cc02a9f7d978d28109','static_countries',97,'cn_country_zones','','','',13,0,0,'static_country_zones',473,''),('889c24f312cab36b80720be5a3b4983a','static_countries',220,'cn_country_zones','','','',21,0,0,'static_country_zones',31,''),('8903d3cca327b3cdbce09734e3d699b0','static_countries',216,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('893e20b39f66903f90c681e8c41b6297','sys_file',3,'storage','','','',0,0,0,'sys_file_storage',1,''),('894b0ca17b1deae62dce1be1fe3f3257','static_countries',97,'cn_country_zones','','','',22,0,0,'static_country_zones',482,''),('897c21ef229d4f55c4aa2b15ec6db725','static_countries',97,'cn_country_zones','','','',7,0,0,'static_country_zones',467,''),('89c669ea1c151be0462f1adfad097ee1','static_countries',72,'cn_country_zones','','','',94,0,0,'static_country_zones',625,''),('89c8d42bfc8895b03dde3b2f4954a200','static_countries',59,'cn_currency_uid','','','',0,0,0,'static_currencies',44,''),('89cbaa3992ccea9ce0dab4dcb9a2bfcf','static_countries',74,'cn_country_zones','','','',28,0,0,'static_country_zones',360,''),('8a2d91664c654d8d299595b9c3f22efe','static_countries',54,'cn_country_zones','','','',2,0,0,'static_country_zones',82,''),('8a461d8512579d42372ddc1418a4e0df','static_countries',4,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('8a639254e6e23075ce48e1fcf0146da1','static_countries',104,'cn_country_zones','','','',93,0,0,'static_country_zones',314,''),('8a672780f903b92b3bd6cb3e4c57b412','static_countries',157,'cn_country_zones','','','',9,0,0,'static_country_zones',539,''),('8a8d4ff2bb9f46502c8b5ff197bedb87','tx_hgondonation_domain_model_donationtypetime',1,'pages','','typolink','bc0349149ffb7aa80c8d1d696e4d6f91:0',-1,0,0,'_STRING',0,'t3://page?uid=7'),('8a92ec08e4f108dca88b46cadf2d4584','static_countries',65,'cn_country_zones','','','',8,0,0,'static_country_zones',165,''),('8ab4f8f92d90aa555239d5375965c6ef','static_countries',72,'cn_country_zones','','','',105,0,0,'static_country_zones',633,''),('8aea7ab2301f722f29a4921c70bf2520','sys_file_reference',11,'uid_local','','','',0,1,0,'sys_file',10,''),('8aec7a0efe29ed06f78abaf784c3d9ce','static_countries',93,'cn_country_zones','','','',18,0,0,'static_country_zones',707,''),('8af58cda8523f0670ab2649b35dacba2','static_countries',65,'cn_country_zones','','','',11,0,0,'static_country_zones',145,''),('8afc100af7484101253529752049dbf6','static_countries',148,'cn_country_zones','','','',2,0,0,'static_country_zones',183,''),('8b2173802252a4bdd1097f838bd1db36','static_countries',220,'cn_country_zones','','','',48,0,0,'static_country_zones',61,''),('8b31123ab257cf23899d2ae0669da85a','be_users',5,'email','','email','2',-1,0,0,'_STRING',0,'maximilian@faesslerweb.de'),('8b6d4357b05b821402db1b0cda2a96d0','static_countries',148,'cn_country_zones','','','',9,0,0,'static_country_zones',191,''),('8b72593aa128fb8f32091809ed0df40d','static_countries',41,'cn_country_zones','','','',18,0,0,'static_country_zones',119,''),('8bd9408c535b95a880092b611b652d36','static_countries',93,'cn_country_zones','','','',11,0,0,'static_country_zones',700,''),('8bfb391523ff61c0aaa13cf45e33d85d','static_countries',93,'cn_country_zones','','','',12,0,0,'static_country_zones',701,''),('8c0f4fe7b32165efa1c21e696371fa6e','static_countries',169,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('8c15058f85354fbd228bba50aca5d76b','pages',54,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',79,''),('8c36e3b716980652b339a885b3dd5410','static_countries',72,'cn_country_zones','','','',122,0,0,'static_country_zones',658,''),('8c5cc8a5564c5bbbdaf66a5d97b0f1a1','static_countries',72,'cn_country_zones','','','',43,0,0,'static_country_zones',596,''),('8c6607122578e8bd13cddbf5bb3e29c9','static_countries',153,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('8c953207b7810595a88138b99cab77d9','sys_file_metadata',5,'file','','','',0,0,0,'sys_file',5,''),('8ca36b5d95669e09790ee59db1a4a521','static_countries',65,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('8cd779e99d7ce1a10e9105b71ded0d0d','static_countries',72,'cn_country_zones','','','',89,0,0,'static_country_zones',622,''),('8cea4f30299a186a1d3b55001560c638','sys_file_metadata',14,'file','','','',0,0,0,'sys_file',14,''),('8d0631a10637d62e0ca3135d85a6da20','static_countries',104,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('8d94e1526fe88dabd886997790ca3def','static_countries',232,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('8e48101aba59d565572a9308493791f2','static_countries',111,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('8ea836cff238fa8fe19944bdd1c53991','static_countries',136,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('8f0d2612bc6d70546dd206b2fb0c9727','static_countries',149,'cn_currency_uid','','','',0,0,0,'static_currencies',106,''),('8f374dbf6cd47f2cf7cd3d93344c445d','static_countries',36,'cn_parent_territory_uid','','','',0,0,0,'static_territories',18,''),('8ff706e772dd919fd6c3ecf59214443b','static_countries',202,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('8ff8d269136beaf4b76ef17712bd1d9d','static_countries',13,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('9007cad8193495f971d145521c090ee3','static_countries',159,'cn_currency_uid','','','',0,0,0,'static_currencies',112,''),('90105a18d88b8f4c907ca857ae191302','pages',47,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',72,''),('90155434cfe2c8f5df14f80adcd53c32','static_countries',65,'cn_country_zones','','','',44,0,0,'static_country_zones',174,''),('9056864201c5aba9349b0a493eed5cb5','sys_file_reference',77,'uid_local','','','',0,0,0,'sys_file',29,''),('90608fe0cacb15ff7eacc7ef45c657c2','static_countries',126,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('90686c32aa613cdad7aac14adf70da7c','static_countries',74,'cn_country_zones','','','',22,0,0,'static_country_zones',352,''),('9071d5ec504b5f411853bf9f0c11f454','tx_rkwevents_domain_model_event',3,'place','','','',0,0,0,'tx_rkwevents_domain_model_eventplace',1,''),('9077b4b047c3c60ef0520e2c99d61db7','static_countries',199,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('9096d000727ec551d1ef45f21667fd8a','static_countries',220,'cn_country_zones','','','',52,0,0,'static_country_zones',65,''),('90baa8864f530b8e316f83a952d27377','static_countries',65,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('90ea670eb40c41d95806839efbbd2f98','pages',26,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',69,''),('91091d9bd47d9b3a463ef1a771be0dd6','sys_file',4,'metadata','','','',0,0,0,'sys_file_metadata',4,''),('9121c0eeb9ac44c4e837f160f86df1b0','static_countries',104,'cn_country_zones','','','',51,0,0,'static_country_zones',273,''),('913a0406b03b52ee86d9aba0ba4cdc1f','static_countries',96,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('9167b05d4f3b0efac8d6ac2c2b7fffed','sys_file_reference',95,'uid_local','','','',0,0,0,'sys_file',19,''),('916b75ed2bde0633834b37083de74968','static_countries',72,'cn_country_zones','','','',121,0,0,'static_country_zones',659,''),('9195eb5162d127ca7b8fd83bbffedbdb','static_territories',19,'tr_parent_territory_uid','','','',0,0,0,'static_territories',31,''),('91976f3a02b65084616bd10338081e30','static_countries',54,'cn_country_zones','','','',3,0,0,'static_country_zones',83,''),('91c9d2e46c3d1db14ceeba25ab85ceb0','static_countries',29,'cn_country_zones','','','',19,0,0,'static_country_zones',509,''),('92130b04183c51b4a8d767c1f0ba2360','static_countries',54,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('9217f144ee52bd3744e1d5f69d6208b2','static_countries',104,'cn_country_zones','','','',50,0,0,'static_country_zones',271,''),('923114b4f85f6308a7dc3f566a9f8c3c','static_countries',72,'cn_country_zones','','','',26,0,0,'static_country_zones',664,''),('9233c133136342cde48ca22780fbe221','static_countries',111,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('92ab13a784abb38d3c3f6d82d2da360b','static_countries',2,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('92e369d931def1ed7c7ba3c9dff8419e','static_countries',72,'cn_country_zones','','','',69,0,0,'static_country_zones',553,''),('930953ef9b1036d5dff16ee57a1bfc12','static_countries',54,'cn_country_zones','','','',10,0,0,'static_country_zones',89,''),('933ce5fcf30aa0bd9c5f9e06a35aafe0','static_countries',104,'cn_country_zones','','','',17,0,0,'static_country_zones',237,''),('934c2489a6cdc5980ff5d175f4055cf3','static_countries',175,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('934e13c1139aa38328f1b0dfbe1df8f5','static_countries',148,'cn_country_zones','','','',26,0,0,'static_country_zones',208,''),('936423b754a5dac1e3efbbeb9bf816da','static_countries',170,'cn_country_zones','','','',7,0,0,'static_country_zones',680,''),('9375cafbe5a4f0677f7fb537eb229f04','static_countries',41,'cn_country_zones','','','',17,0,0,'static_country_zones',121,''),('946159e4e083508044d58cf6b8c5e9d1','sys_file_reference',97,'uid_local','','','',0,0,0,'sys_file',19,''),('9486888d2bd0770d42ae4c0c385f7307','static_countries',157,'cn_country_zones','','','',8,0,0,'static_country_zones',538,''),('949cec572b52c3a71f68ec44898858be','static_countries',54,'cn_country_zones','','','',15,0,0,'static_country_zones',94,''),('94c883b2c7ca1ef7c6d705bbe8dd4709','sys_file',29,'metadata','','','',0,0,0,'sys_file_metadata',27,''),('9512ac6d6de7874e0d422eb05fcd3eb4','static_countries',213,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('951f540c3924c97f2c93d983a86d7843','static_countries',29,'cn_country_zones','','','',18,0,0,'static_country_zones',508,''),('957033f48ae3f54159b54496d3bc15ba','static_countries',148,'cn_country_zones','','','',11,0,0,'static_country_zones',193,''),('957abbc18e670c495da8c09710e59c73','static_countries',84,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('9580b0f4c3061fab6d84abc2e23f0525','static_countries',104,'cn_country_zones','','','',54,0,0,'static_country_zones',279,''),('9596b73c0400d4723f54d16ee26a122f','static_countries',80,'cn_currency_uid','','','',0,0,0,'static_currencies',42,''),('95d00c137f13aca898544d0402527b68','static_countries',53,'cn_currency_uid','','','',0,0,0,'static_currencies',40,''),('95f38442b9e7d4708e32bfdc26dd4986','static_countries',161,'cn_currency_uid','','','',0,0,0,'static_currencies',113,''),('96164a4ac15fea686d691b0595e2d799','sys_file_reference',3,'uid_local','','','',0,1,0,'sys_file',5,''),('961b9c2515fe3241d7db0c78616bd29d','static_countries',135,'cn_currency_uid','','','',0,0,0,'static_currencies',95,''),('965951071ab9dce91f9c8570a650003b','static_countries',159,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('965b0b68c83b18b56694b2ad71ab7787','static_countries',72,'cn_country_zones','','','',23,0,0,'static_country_zones',579,''),('96a7c1b05da354ac3f5c1d889a4f1e72','static_countries',250,'cn_currency_uid','','','',0,0,0,'static_currencies',6,''),('96c20495c44cf2cfd890156a7f55f850','static_countries',8,'cn_currency_uid','','','',0,1,0,'static_currencies',6,''),('96daed76bc1b66181af83f6097dbd0e2','static_countries',26,'cn_currency_uid','','','',0,0,0,'static_currencies',19,''),('9747d62b54fefc009c66f86a2d1e876f','static_countries',97,'cn_country_zones','','','',4,0,0,'static_country_zones',464,''),('97d5e808a0cec2e993a518725174b5bf','static_countries',228,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('97fea077397ae6aa53136354ed5fc401','static_countries',142,'cn_currency_uid','','','',0,0,0,'static_currencies',99,''),('98088d207f6a37d034c0a680f8dc514f','static_countries',46,'cn_currency_uid','','','',0,0,0,'static_currencies',34,''),('98504e63513ea9c42f89c6fcaf32cc5a','static_countries',41,'cn_country_zones','','','',12,0,0,'static_country_zones',116,''),('986bf0af016da12e75a09a2f156b472a','static_countries',74,'cn_country_zones','','','',90,0,0,'static_country_zones',420,''),('98c53117d820c23b72d4d95dfb8dfe5d','sys_file_reference',53,'sys_language_uid','','','',0,0,0,'sys_language',-1,''),('98ca43284d0fa5febdd953544af325ba','static_countries',65,'cn_country_zones','','','',47,0,0,'static_country_zones',137,''),('9908529d9e6e629d2af382fa7f5a3a88','sys_file_reference',4,'uid_local','','','',0,1,0,'sys_file',5,''),('9908567afacb9add188b4818f2e2ee85','sys_file_reference',88,'uid_local','','','',0,0,0,'sys_file',19,''),('992dd65df223fa1f56bdfc2421c3a2cf','static_countries',148,'cn_country_zones','','','',27,0,0,'static_country_zones',209,''),('99e244d575b3843ee43cb9db0a05df74','static_countries',97,'cn_country_zones','','','',19,0,0,'static_country_zones',479,''),('9a617ae068b23b21bc7c2fe10bc9cd0a','static_countries',116,'cn_currency_uid','','','',0,0,0,'static_currencies',81,''),('9ab3e050d4ff36e50e37e3a818bcf112','static_countries',104,'cn_country_zones','','','',40,0,0,'static_country_zones',262,''),('9ad3386679b989c4b9335885609ea5fd','static_countries',72,'cn_country_zones','','','',29,0,0,'static_country_zones',583,''),('9b5d9a67e2025d4474df9b522d4b3c9d','static_countries',65,'cn_country_zones','','','',10,0,0,'static_country_zones',144,''),('9b80baa061e45573496b29e501ae59fc','static_countries',65,'cn_country_zones','','','',2,0,0,'static_country_zones',138,''),('9ba71b075d4e3ee3937b1d14aa9ce3e4','static_countries',72,'cn_country_zones','','','',73,0,0,'static_country_zones',609,''),('9bb40c41abaab2911817604842a6ab9d','static_countries',176,'cn_currency_uid','','','',0,0,0,'static_currencies',121,''),('9bba044f5081c639b8fc5b255d8c480c','static_countries',91,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('9c3c8e5b6f07e12876f75008dd8b51d6','tt_content',125,'assets','','','',0,0,0,'sys_file_reference',107,''),('9c60f8cbde0f0edaf128e86a7f4e80cf','static_countries',107,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('9c71cb951bde96846557a17903fb32cf','static_countries',19,'cn_currency_uid','','','',0,0,0,'static_currencies',14,''),('9ca325e7d07f3683b6100d938cea39a8','static_countries',170,'cn_country_zones','','','',12,0,0,'static_country_zones',685,''),('9cdbcc213e87a7eee462cbba3271d3dc','static_countries',41,'cn_country_zones','','','',3,0,0,'static_country_zones',108,''),('9d135e8b2bf36de7ed4718ed9f0e5d4e','static_countries',65,'cn_country_zones','','','',31,0,0,'static_country_zones',164,''),('9d15002b8d50209bac4e2bffb34233c7','static_countries',170,'cn_country_zones','','','',9,0,0,'static_country_zones',682,''),('9d6791e5d6e659625d2884ec4f8aa648','static_countries',148,'cn_country_zones','','','',0,0,0,'static_country_zones',182,''),('9da928e713ab679a512a4afa1993f33a','static_countries',65,'cn_country_zones','','','',23,0,0,'static_country_zones',157,''),('9e0e08779831c094db0967e7ca2b7a9a','sys_file_reference',14,'uid_local','','','',0,1,0,'sys_file',12,''),('9e4e87ea6daf31c4c920dbc60f69445f','static_countries',251,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('9e4fe02dc007bff46f81ba0ad29334f0','pages',32,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',81,''),('9e5222eb998a25b2a9c6cf7fb57db949','pages',26,'tx_rkwprojects_project_uid','','','',0,0,0,'tx_rkwprojects_domain_model_projects',2,''),('9e7836d3e31c7cec8ffa57d55351bb11','static_countries',240,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('9e807aa8ae3ce2a5b612908fd5bee23c','pages',2,'tx_rkwbasics_article_image','','','',0,0,0,'sys_file_reference',59,''),('9eb13e3d3d30e4926537618b07f2179d','tt_content',128,'image','','','',0,0,0,'sys_file_reference',85,''),('9eb7221ee05622f401c6a490c7cc5445','sys_file',8,'metadata','','','',0,0,0,'sys_file_metadata',7,''),('9ed04e1349e39ff0ca94271d7e8fd8a1','static_countries',97,'cn_country_zones','','','',8,0,0,'static_country_zones',468,''),('9f08386df462730855ede779116c60b6','sys_file_reference',89,'uid_local','','','',0,1,0,'sys_file',19,''),('9f45634d0823593c22007ed50cb5e3bf','sys_file_reference',46,'uid_local','','','',0,0,0,'sys_file',13,''),('9fac9796d9d417a08f16d2eb043c0040','static_countries',104,'cn_country_zones','','','',57,0,0,'static_country_zones',275,''),('9fc34af1e3a5a53b1e6f7c71366f15b5','static_countries',104,'cn_country_zones','','','',44,0,0,'static_country_zones',310,''),('9fe4a9a2fbfb3d6b8fc90d31093f3137','static_countries',72,'cn_country_zones','','','',84,0,0,'static_country_zones',618,''),('a0074548c1ec020f37bf6324a47ec273','tt_content',114,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',0,0,0,'tx_rkwprojects_domain_model_projects',1,''),('a02f4c1afba39666f072804e82afc5be','static_countries',74,'cn_country_zones','','','',85,0,0,'static_country_zones',435,''),('a0661a2813da137cd4fb493d59e92dce','static_countries',16,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('a069c917b1ac182f5d61dea5a5d33c8c','static_countries',65,'cn_country_zones','','','',17,0,0,'static_country_zones',151,''),('a09ec0cbdaf173c011f9df407db8e210','sys_file_reference',37,'link','','typolink','3e82f32db5cf4c8a52cbd3a844763008:0',-1,0,0,'_STRING',0,'t3://page?uid=27'),('a0f82909e5cc44cf7472f7f8794c7427','static_countries',72,'cn_country_zones','','','',36,0,0,'static_country_zones',590,''),('a106e86233390366371366cc78e9a86a','static_countries',143,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('a1310deef2cdbe516c87866ac6864784','static_countries',65,'cn_country_zones','','','',30,0,0,'static_country_zones',162,''),('a143a24c66325a7378a0b4d1ba0f38fd','sys_file_reference',23,'uid_local','','','',0,1,0,'sys_file',5,''),('a14d33956fce5643e9624f1b500f994a','static_countries',48,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('a14f24e92e48d24abe6bfb09c710b7bd','static_countries',99,'cn_currency_uid','','','',0,0,0,'static_currencies',68,''),('a15f0208c7a758437d2eb64a1f2d8022','static_countries',170,'cn_country_zones','','','',5,0,0,'static_country_zones',678,''),('a180748abfc4768ddcc0489d5ced8b51','static_countries',13,'cn_country_zones','','','',8,0,0,'static_country_zones',95,''),('a182dc5656ef36e4d3db3148e1fcc8e3','static_countries',7,'cn_currency_uid','','','',0,0,0,'static_currencies',5,''),('a187cfc57ed06836dee28e30c156a51c','static_countries',31,'cn_currency_uid','','','',0,0,0,'static_currencies',25,''),('a1a9579734b44ef659032b7fc65718bb','static_countries',72,'cn_country_zones','','','',90,0,0,'static_country_zones',623,''),('a1b9158cbced812482a2aa4bc9717631','static_countries',88,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('a1c0f5a6ed88ce667c3e534a7880ea09','static_countries',74,'cn_country_zones','','','',19,0,0,'static_country_zones',355,''),('a1c737d8289f3bae6aa91e7528a65327','tt_content',13,'header_link','','typolink','1d28858bc7ed26d03d63beeff282a7ed:0',-1,1,0,'_STRING',0,'t3://page?uid=3'),('a1fd59e04a86f1450c66e310ed58af43','static_countries',153,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('a275c6941b0da288a8f08eb5c2583afe','static_countries',142,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('a2a9f701d355dd5dcedd94302c962af0','static_countries',93,'cn_country_zones','','','',7,0,0,'static_country_zones',696,''),('a2ffcc59e94b66b54bbf25a4bc173f12','static_countries',104,'cn_country_zones','','','',22,0,0,'static_country_zones',243,''),('a3062d8508fbcb523ce27f9d2e6399e5','static_countries',68,'cn_parent_territory_uid','','','',0,0,0,'static_territories',26,''),('a3550bad5fd2e3f12535a7ead71e786d','static_countries',104,'cn_country_zones','','','',69,0,0,'static_country_zones',296,''),('a385fb81178deacd24fa9a0235487168','static_countries',18,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('a3896c728cf6302ee832563bd002b746','static_countries',96,'cn_currency_uid','','','',0,0,0,'static_currencies',66,''),('a3958290ddc5ac2d505b529987feb5c5','sys_file_reference',21,'uid_local','','','',0,1,0,'sys_file',5,''),('a3bd2e56b060ee6106d407e1a94dfe5a','sys_file_reference',8,'uid_local','','','',0,1,0,'sys_file',7,''),('a3d2158bc96e7d13e9312fa81dcb706c','static_countries',220,'cn_country_zones','','','',33,0,0,'static_country_zones',43,''),('a3dc721e995d242c51a043dbf115374f','static_countries',170,'cn_country_zones','','','',1,0,0,'static_country_zones',674,''),('a407e1b0d4a6258bc8fdb12f1cde7fe0','static_countries',162,'cn_currency_uid','','','',0,0,0,'static_currencies',113,''),('a419bece2a038b204d65c90e8bd7e22b','tt_content',80,'header_link','','typolink','ef255e27d6e64509d020970e397f2f5f:0',-1,1,0,'_STRING',0,'t3://page?uid=5'),('a4386464a8873d9b366a45757839e12a','static_countries',74,'cn_country_zones','','','',99,0,0,'static_country_zones',432,''),('a459cbf7c778a7bb7d6c3da6de03646c','static_countries',72,'cn_country_zones','','','',30,0,0,'static_country_zones',585,''),('a49a5bcffb09f64f4a749d79b59bed5c','static_countries',124,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('a4f1f332c1ae2a6f72f46f8420d46fd4','static_countries',74,'cn_country_zones','','','',32,0,0,'static_country_zones',357,''),('a50e1a30204bfe1b4b3f877e36d959d3','static_countries',128,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('a52d0a0d95c5fbaaeeb7b17c678e71e4','static_countries',41,'cn_country_zones','','','',15,0,0,'static_country_zones',120,''),('a541704576704358410e6280f4763b7c','tt_content',107,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',0,0,0,'tx_rkwprojects_domain_model_projects',1,''),('a5809931ec09aeafbb36dbb8a4d5926c','static_countries',85,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('a5ba8b669fbe1b2885e11e783bafa04d','static_countries',198,'cn_currency_uid','','','',0,0,0,'static_currencies',140,''),('a5c129068d2f07ffac6e5eb516bdd211','static_countries',74,'cn_country_zones','','','',92,0,0,'static_country_zones',424,''),('a5c82231f07705cb152865a3b21620df','static_countries',29,'cn_country_zones','','','',15,0,0,'static_country_zones',507,''),('a5dcb9da149c75b88b47dc4c27b2193a','static_countries',191,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('a5f36fdc8d7778e6fa5c8210d7d0c570','static_countries',97,'cn_country_zones','','','',0,0,0,'static_country_zones',460,''),('a5fd369085d5eaa15038f0ed5dd2a29b','static_countries',97,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('a66e6785a7e9f06d44bed3672c8cd3d8','static_countries',104,'cn_country_zones','','','',37,0,0,'static_country_zones',259,''),('a68fc8f139013bda051bd1e27111f9a1','static_countries',187,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('a6d3472d54196c57148650796e1ef520','static_countries',21,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('a70066610763f77065aaeace9f91b2c3','static_countries',72,'cn_country_zones','','','',65,0,0,'static_country_zones',603,''),('a7455e46f7348c42159d648cc88aeeea','sys_file_reference',61,'uid_local','','','',0,0,0,'sys_file',22,''),('a756ddc7a0e25e7f8bf9b74064109ecc','static_countries',72,'cn_country_zones','','','',46,0,0,'static_country_zones',661,''),('a79e8dc1f9b883c154bd3e5107c09468','static_countries',181,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('a7ed54a32a64d554ba4968335a75ab4b','tt_content',111,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',3,0,0,'tx_rkwprojects_domain_model_projects',4,''),('a7f734da1a906b9ecc58762396d7beb0','static_countries',74,'cn_country_zones','','','',9,0,0,'static_country_zones',341,''),('a7fe5428faebee8218cf9f477c4df531','static_countries',104,'cn_country_zones','','','',62,0,0,'static_country_zones',282,''),('a813963103ab3872c58c4297c3a1566b','tt_content',139,'pi_flexform','sDEF1/lDEF/settings.supportOptions.becomeMember.image/vDEF/','','',0,1,0,'sys_file_reference',97,''),('a890f2215049a8d1c6fd54826d8821c5','static_countries',170,'cn_country_zones','','','',6,0,0,'static_country_zones',679,''),('a8bd15e75d3655fc4fa4d6f046d61631','static_countries',104,'cn_country_zones','','','',26,0,0,'static_country_zones',248,''),('a8f15d91b94e124b0268f324100a3727','static_countries',72,'cn_country_zones','','','',100,0,0,'static_country_zones',667,''),('a9676a22a56b9e3aedccd4091f43e0f7','static_countries',93,'cn_country_zones','','','',13,0,0,'static_country_zones',704,''),('a9d183af939c0897e460b3c93b1a1996','static_countries',72,'cn_country_zones','','','',98,0,0,'static_country_zones',560,''),('a9e04980e5d6fbf8eda9da4ba74f4d19','sys_category',3,'parent','','','',0,0,0,'sys_category',5,''),('aa0396fd5747fe7adc2191d5eecee9fd','static_countries',152,'cn_currency_uid','','','',0,0,0,'static_currencies',165,''),('aa164a94941d7c11742fcb7673dd64dd','tt_content',81,'header_link','','typolink','d86716a8b3a73881d3566a497eeaf31b:0',-1,1,0,'_STRING',0,'t3://page?uid=5'),('aa222413ee2df7f01e97f8b5671a80c6','sys_file_reference',65,'uid_local','','','',0,0,0,'sys_file',23,''),('aa6b56fdb1fbd7b97e98e5d6783633f5','static_countries',29,'cn_country_zones','','','',5,0,0,'static_country_zones',495,''),('aa7f033988dbe57ecb3a1b0de2e4ab61','static_countries',45,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('aa9821378d790c2091c9166e10305498','static_countries',2,'cn_currency_uid','','','',0,0,0,'static_currencies',2,''),('aaa2d16626ccf1656ab4c08738f75bb0','static_countries',74,'cn_country_zones','','','',31,0,0,'static_country_zones',359,''),('aaf239696b692bd8c2bd060fdb8449fc','static_countries',116,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('ab1d48743723ac1c38aa4ce5c733a069','sys_file_reference',83,'uid_local','','','',0,0,0,'sys_file',19,''),('ab2ca9993072c556c5ca8f29041f8a0d','static_countries',41,'cn_country_zones','','','',22,0,0,'static_country_zones',127,''),('ab5672460e20845963667d9d68e83316','static_countries',220,'cn_country_zones','','','',43,0,0,'static_country_zones',55,''),('ab69b4d205dcbc61ba13e7a7286b6af0','static_countries',72,'cn_country_zones','','','',24,0,0,'static_country_zones',580,''),('ab8325185000388fbc3e95dc61e06c40','static_countries',41,'cn_country_zones','','','',16,0,0,'static_country_zones',122,''),('abd67f2ebe256ac1c2e50897feafb6a3','tt_content',114,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',1,0,0,'tx_rkwprojects_domain_model_projects',4,''),('ac28871fea88e05b1099a48b2431e292','static_countries',104,'cn_country_zones','','','',34,0,0,'static_country_zones',256,''),('ac2c40867b16ca7e14d1285371bf3070','sys_file_reference',51,'sys_language_uid','','','',0,0,0,'sys_language',-1,''),('ac33bf31be318b154a3bdd332ee20c29','static_countries',109,'cn_parent_territory_uid','','','',0,0,0,'static_territories',8,''),('ac4fd07c876922d5ac3332787f969ff4','static_countries',35,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('ac520582bf9f56182e36c68837b9d201','static_countries',72,'cn_country_zones','','','',59,0,0,'static_country_zones',598,''),('ac6bdd4d3cbd3fae246958a3e0f57db4','static_countries',85,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('ac7bd6e5d0ac22b9215f5f5b8659f284','sys_file_reference',72,'uid_local','','','',0,0,0,'sys_file',29,''),('acaad6d6d9bb9b7341016d100569ddbc','static_countries',220,'cn_country_zones','','','',4,0,0,'static_country_zones',12,''),('ad0bd534312166add2e0f153c63074a1','static_countries',29,'cn_country_zones','','','',17,0,0,'static_country_zones',506,''),('ae097d525a9e4f2a6d6e8f6a8df2f241','sys_file_reference',1,'uid_local','','','',0,0,0,'sys_file',3,''),('ae09e00e24e055b23a068d02fc0d3e59','static_countries',157,'cn_country_zones','','','',5,0,0,'static_country_zones',535,''),('ae41070400b2568939cb2c628debd528','static_countries',74,'cn_country_zones','','','',59,0,0,'static_country_zones',388,''),('aea93a60d2819d548843b6ec7cd11a89','static_countries',37,'cn_parent_territory_uid','','','',0,0,0,'static_territories',25,''),('aec5db3bfaeeb83b91360efb0a2cdb09','static_countries',196,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('aece045e7e576fb39b15814c6c3c4ab4','static_countries',131,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('aeec01cd8fdbe2cf67f0c9724d11dacb','tt_content',122,'image','','','',1,0,0,'sys_file_reference',61,''),('af1f8d852b717456b1ba813d9ee81287','static_countries',25,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('af23beac5be15d55f05df188c81c8f56','pages',55,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',83,''),('af3a8f7276d0840f248bd07050ae7559','static_countries',120,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('afa98f3d026a9b2de52d6b6ea882a37d','static_territories',11,'tr_parent_territory_uid','','','',0,0,0,'static_territories',5,''),('b0118237d908ecaf60c4aab1381e80ae','tx_rkwevents_domain_model_event',1,'be_user','','','',0,0,0,'be_users',5,''),('b020b3fd8f8653d8d221285a9e0155ad','static_countries',208,'cn_currency_uid','','','',0,0,0,'static_currencies',180,''),('b06b652e91fd6fa586c15b3fa7591393','static_countries',189,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('b0c2e42d03430769b0ea8ed7b7221b2c','sys_category',3,'items','','','',0,0,0,'tx_hgontemplate_domain_model_didyouknow',2,''),('b0d973922d00ff649147d11011c8f027','static_countries',65,'cn_country_zones','','','',13,0,0,'static_country_zones',147,''),('b0e471115042276347c2f4e2cd595278','sys_file_metadata',18,'file','','','',0,0,0,'sys_file',18,''),('b0f8faa088bfed91a6eb800b6b5d7002','static_countries',72,'cn_country_zones','','','',39,0,0,'static_country_zones',592,''),('b0fd3c3fd0886701f5bac2ec9ed1ea77','static_countries',172,'cn_currency_uid','','','',0,0,0,'static_currencies',113,''),('b1291ae70aebc5982cb12de6b40fcf6f','static_countries',138,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('b16011f2151d3fd31874bd75b823b34a','static_countries',194,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('b19a074fb27cfd0231913a48b0e67f10','static_countries',141,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('b1c68ea71b322dcc5b4ed7b5d6ce4ded','static_countries',72,'cn_country_zones','','','',38,0,0,'static_country_zones',591,''),('b1da18b1d9bdb975776fa9dabc1f33b8','sys_file_reference',100,'uid_local','','','',0,0,0,'sys_file',19,''),('b1e7bedb1f0042b2ccaa350365f3f7a8','tt_content',130,'image','','','',0,0,0,'sys_file_reference',84,''),('b224076c1bdf052e2cdfc43cc99db4de','static_countries',104,'cn_country_zones','','','',35,0,0,'static_country_zones',255,''),('b2291c9268bc09146f89d9ad63734f9d','static_countries',16,'cn_currency_uid','','','',0,0,0,'static_currencies',11,''),('b25f3b6f029344b8d854bf1e49829b01','static_countries',74,'cn_country_zones','','','',58,0,0,'static_country_zones',391,''),('b297d9cd3298939eda0e07108cbd6381','static_countries',97,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('b2a8a9a02a6890da8b18c01c0263903f','tt_content',44,'header_link','','typolink','3fd670bc2be21d92bd6cf10cec7e4444:0',-1,1,0,'_STRING',0,'t3://page?uid=2'),('b2fa1fc87900ac92ddf21452ced6ad59','static_countries',36,'cn_country_zones','','','',9,0,0,'static_country_zones',75,''),('b308be7c1e1613a42cc4d2eef0c6292c','pages',3,'tx_rkwbasics_article_image','','','',0,0,0,'sys_file_reference',94,''),('b32d28a65b3773e5f696194dcce0c61a','static_countries',74,'cn_country_zones','','','',86,0,0,'static_country_zones',413,''),('b33614f5bd7663bec24cc0c78dd77e9b','static_countries',72,'cn_country_zones','','','',5,0,0,'static_country_zones',542,''),('b3400808d4368df708148d86fddf9b11','tt_content',22,'header_link','','typolink','78d12bfb3ee76d77daeeed3194dbe96b:0',-1,1,0,'_STRING',0,'t3://page?uid=5'),('b378ac105c0c8983c1b8563541045111','static_countries',72,'cn_country_zones','','','',55,0,0,'static_country_zones',651,''),('b3a6267f87972272b3dc506a4eb24dc2','static_countries',220,'cn_country_zones','','','',47,0,0,'static_country_zones',59,''),('b3f1633b13ada2dd06f781c3b20caac2','pages',53,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',78,''),('b400c0534528c460cf1771fcc4ab8e2f','static_territories',28,'tr_parent_territory_uid','','','',0,0,0,'static_territories',2,''),('b415d3d5365934887a6a47b8b261305b','sys_file',23,'storage','','','',0,0,0,'sys_file_storage',1,''),('b41d668e187e3008c1ea7fc1af4b5789','static_countries',3,'cn_currency_uid','','','',0,0,0,'static_currencies',171,''),('b41e0775e2e833105c57fda2134956ec','static_countries',65,'cn_country_zones','','','',38,0,0,'static_country_zones',170,''),('b43c125d7a1112ff1639da5e824fa3dc','static_countries',110,'cn_currency_uid','','','',0,0,0,'static_currencies',77,''),('b4651024f8a8d0be0b7b9780afb33d8b','static_countries',93,'cn_country_zones','','','',2,0,0,'static_country_zones',692,''),('b46be86064b3f15984f439aa4fd3473f','static_countries',74,'cn_country_zones','','','',45,0,0,'static_country_zones',377,''),('b48bc2366db66a733da50717cb156a33','static_countries',221,'cn_currency_uid','','','',0,0,0,'static_currencies',156,''),('b4b7bff0cdbd6a34d4ac3967fabb3757','static_countries',220,'cn_country_zones','','','',27,0,0,'static_country_zones',37,''),('b4cbe1d8cc4f363d46a310b9d2c8ee2d','static_countries',97,'cn_country_zones','','','',6,0,0,'static_country_zones',466,''),('b4e96ab682e93c4780b5cc4f3f833518','static_countries',164,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('b5227893114b7a8d1d0394bf8f0b1d61','static_countries',36,'cn_country_zones','','','',12,0,0,'static_country_zones',78,''),('b52753c81a8d8c74db8480e0e6883950','tx_rkwprojects_domain_model_projects',1,'partner_logos','','','',0,0,0,'sys_file_reference',52,''),('b5938a14a0ec41a465c620d8cf1984c1','static_countries',104,'cn_country_zones','','','',103,0,0,'static_country_zones',326,''),('b5b696035adc44f3d1854d7ff117ebb3','sys_category',1,'items','','','',1,0,0,'tx_rkwprojects_domain_model_projects',3,''),('b5ced6fa927781c9ab941c8fd7186a57','static_countries',139,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('b6561d27186b5fd9b82cf047b1b1c0fa','tt_content',98,'pi_flexform','sDEF/lDEF/settings.pageHighlight.pid/vDEF/','','',0,0,0,'pages',2,''),('b69299fdd9c3c2b1b44c15a988ab8e3f','tt_content',140,'pi_flexform','sDEF3/lDEF/settings.supportOptions.donateTime.image/vDEF/','','',0,0,0,'sys_file_reference',102,''),('b6b08e4e38c1e0492b325dcfb46b9b59','sys_file_reference',63,'uid_local','','','',0,0,0,'sys_file',22,''),('b6e1d3e8b38a979a286ef0fe12d43569','static_countries',13,'cn_country_zones','','','',7,0,0,'static_country_zones',103,''),('b7690027f675163e83afd61afee00bed','static_countries',104,'cn_country_zones','','','',86,0,0,'static_country_zones',306,''),('b81207603767fcb44f75c30e2ede5f98','static_countries',41,'cn_country_zones','','','',5,0,0,'static_country_zones',107,''),('b81eb5f8c4858cb451ba73f08e7c3bd2','sys_file_reference',29,'uid_local','','','',0,0,0,'sys_file',18,''),('b844881f0be52ca9133cbc21e4805d1f','static_countries',104,'cn_country_zones','','','',61,0,0,'static_country_zones',281,''),('b85befbfcedc0fc57aa262f70b804d0c','sys_file_reference',108,'uid_local','','','',0,0,0,'sys_file',21,''),('b88bded59e5f86c82677493d7543eff9','sys_file_reference',15,'uid_local','','','',0,1,0,'sys_file',13,''),('b8c27ec68d115f64672a69c56d06723a','static_countries',178,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('b8df04754a799581329f717f150a754d','static_territories',26,'tr_parent_territory_uid','','','',0,0,0,'static_territories',2,''),('b8f7c5f7a81efe6792630f9a8d6b15d0','sys_file',6,'storage','','','',0,0,0,'sys_file_storage',1,''),('b91f35bdc0dd734b1e9f7679511fd908','static_countries',74,'cn_country_zones','','','',30,0,0,'static_country_zones',358,''),('b92507be3f817d4c14e55f279557d465','static_countries',72,'cn_country_zones','','','',109,0,0,'static_country_zones',670,''),('b93c9202a24db6957e724eef34d17b9f','tx_hgondonation_domain_model_donationtypetime',1,'contact_person','','','',0,0,0,'tx_rkwauthors_domain_model_authors',2,''),('b9ab3e0bf1dcd98201e44bde63c766c8','static_countries',72,'cn_country_zones','','','',14,0,0,'static_country_zones',631,''),('ba0ba7b3b7f2920da0d91b1ea955094a','static_countries',104,'cn_country_zones','','','',81,0,0,'static_country_zones',300,''),('ba12d4f6a05045420abd0c9cc01d7a42','static_countries',72,'cn_country_zones','','','',95,0,0,'static_country_zones',639,''),('bb94a47f9edc9c046e547c563ea62885','static_countries',220,'cn_country_zones','','','',16,0,0,'static_country_zones',25,''),('bbb60f0bbba193094f33ff2658c8b929','static_countries',220,'cn_country_zones','','','',46,0,0,'static_country_zones',58,''),('bbbee4aad207868d4498a846d8c68f94','sys_file_reference',43,'uid_local','','','',0,0,0,'sys_file',15,''),('bbc5131aca69fcc0a6b456aab3320fc4','static_countries',72,'cn_country_zones','','','',126,0,0,'static_country_zones',650,''),('bc1c71cce44d2818c887c87675db02f6','static_countries',117,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('bc219916198aa9025db39ac466aa78e0','static_countries',215,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('bc2311d82a40d5da8537eb4e8dca4c9a','static_countries',81,'cn_currency_uid','','','',0,0,0,'static_currencies',56,''),('bc516161714f78c2f0a15605dd31e81f','static_countries',104,'cn_country_zones','','','',45,0,0,'static_country_zones',270,''),('bc81b549c53150e1a9aca65f2aa75028','static_countries',89,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('bcd328a567da44e7dd1b642b113e50e2','static_countries',127,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('bd003d9e0c3ea841f7b35c7b02260c2d','static_countries',217,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('bd09c566f11dca7a255c0c1ccdeb1d81','static_countries',220,'cn_country_zones','','','',28,0,0,'static_country_zones',38,''),('bd0d1c0bdb121d9e3b1f89c868d31b54','static_countries',72,'cn_country_zones','','','',118,0,0,'static_country_zones',646,''),('bd24747fb239c289af05480361f42da1','sys_file_metadata',17,'file','','','',0,0,0,'sys_file',17,''),('bd2b2b042a0f16fca5b0db752734e4d5','static_countries',114,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('bd516a6650cef7404130b36d76c35654','tt_content',111,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',0,0,0,'tx_rkwprojects_domain_model_projects',1,''),('bd91a78d08f8b6d67e3897d4fa1d75db','static_countries',63,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('bda423c2611a93dd15d371cc0766f745','static_countries',34,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('be03c87e70ef9424bc341f6845a99784','static_countries',72,'cn_country_zones','','','',51,0,0,'static_country_zones',616,''),('be0ae53270b1ff5cecf1abf79f807081','tx_news_domain_model_news',1,'tags','','','',0,0,0,'tx_news_domain_model_tag',1,''),('be3b955c1a0cb9972e14cd1ed6c375d0','static_countries',157,'cn_country_zones','','','',1,0,0,'static_country_zones',531,''),('be3f3ece1ad58223bcfc2d9a9082706f','static_countries',72,'cn_country_zones','','','',87,0,0,'static_country_zones',620,''),('be4970ecd93fb91b01be3c967b90c625','sys_file',20,'metadata','','','',0,0,0,'sys_file_metadata',20,''),('be5144d4c8b64d516c3de00f518597ba','static_countries',20,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('be6a8c70c6e2d3fc809c3f0c4dbb5fa5','static_countries',101,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('bead739310fccc888ee67612d20c953c','static_countries',42,'cn_currency_uid','','','',0,0,0,'static_currencies',164,''),('beb671333c60fc663423f263e3acd37c','sys_category',2,'items','','','',2,0,0,'tx_news_domain_model_news',1,''),('beb6cceadec3b8e576470f754ebb196b','static_countries',72,'cn_country_zones','','','',123,0,0,'static_country_zones',647,''),('bec55eb0045b15067e3ed4dd4045d38c','static_countries',220,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('bf17c4c96c474a862ef94a683875b255','static_countries',23,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('bf487519968b83c881d0e54383de641f','static_countries',72,'cn_country_zones','','','',12,0,0,'static_country_zones',544,''),('bfa527945ec2949142519cab10622028','static_countries',149,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('bfb764201823bb80559e184d949ccfdd','static_countries',72,'cn_country_zones','','','',127,0,0,'static_country_zones',652,''),('bff7491b6a4fb978499ec07de86ff56f','static_countries',72,'cn_country_zones','','','',81,0,0,'static_country_zones',662,''),('c08e080f6822fff9cf46df3f0716a36e','sys_file_reference',76,'uid_local','','','',0,0,0,'sys_file',19,''),('c09382cf3cb20f6d7058791f4d15263e','static_countries',74,'cn_country_zones','','','',40,0,0,'static_country_zones',370,''),('c0c1230fd2413439162482a51b08f05c','static_countries',148,'cn_country_zones','','','',16,0,0,'static_country_zones',198,''),('c0f8ebb7e53296ae21a624ec50ced987','sys_file_reference',94,'uid_local','','','',0,0,0,'sys_file',15,''),('c0fe03e8834c2f49fb801c1f3b2b2d3f','static_countries',140,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('c16d9ef575c522fdbffa67d34f3040d5','static_countries',157,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('c187e2ae05419184db4ee39858788340','static_countries',97,'cn_country_zones','','','',14,0,0,'static_country_zones',474,''),('c1921b3ada0f2fae003ab8a75a901450','static_countries',132,'cn_currency_uid','','','',0,0,0,'static_currencies',93,''),('c19bdc7b30376fb3f3b86c6e595ff3aa','sys_file_reference',84,'uid_local','','','',0,0,0,'sys_file',15,''),('c1d9d77e244db911fc170690b3c98beb','sys_file_metadata',23,'file','','','',0,0,0,'sys_file',23,''),('c2074ca74770ab66f2d551a7e144f486','sys_category',1,'items','','','',3,0,0,'pages',2,''),('c209e2fe8d850f9aa421295df57cfc89','sys_category',6,'parent','','','',0,0,0,'sys_category',5,''),('c246f30c6db59ff177525b85167fcf69','static_countries',148,'cn_country_zones','','','',12,0,0,'static_country_zones',194,''),('c257b9967f4feba17dce8bb62099ad6e','static_countries',104,'cn_country_zones','','','',36,0,0,'static_country_zones',258,''),('c25bf854a1f213445d84c1e70cd37def','tt_content',134,'pi_flexform','sDEF/lDEF/settings.pageSlider.pidList/vDEF/','','',2,0,0,'pages',16,''),('c286f8fb3b75d782202d1c55fe5c77ae','static_countries',220,'cn_country_zones','','','',18,0,0,'static_country_zones',27,''),('c2b1606f2a96bbd3a79b587d44e34579','pages',1,'shortcut','','','',0,0,0,'pages',6,''),('c2db2d185e97fb2ed9859cfebdbe6718','sys_file',9,'storage','','','',0,0,0,'sys_file_storage',1,''),('c30a9939e520f8a2ef236908bd9ea916','static_countries',198,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('c31a90cabe2abda4c2c7603d85c1a99e','tt_content',82,'image','','','',1,0,0,'sys_file_reference',40,''),('c35facf156780f7187a67952879f2c59','static_countries',130,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('c3800bcf75cfe3609f9b4263d4c94515','static_countries',104,'cn_country_zones','','','',67,0,0,'static_country_zones',286,''),('c3c1d28bbae67dcf736f04606c86603d','static_countries',74,'cn_country_zones','','','',79,0,0,'static_country_zones',423,''),('c3d446715bf9fa0b4e7ab5294d927e70','sys_file_reference',81,'uid_local','','','',0,0,0,'sys_file',19,''),('c46a3238f2d2ee4615f4bc7b87f1929d','static_countries',72,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('c4d50c4db0fb72288b04005ffc36e3b9','static_countries',112,'cn_currency_uid','','','',0,0,0,'static_currencies',78,''),('c4dc242791cd3c9041035d9b3b4ae2c7','static_countries',104,'cn_country_zones','','','',59,0,0,'static_country_zones',272,''),('c4ebacf6489e96f41df55c33d0bdf9d8','static_countries',220,'cn_country_zones','','','',39,0,0,'static_country_zones',51,''),('c504f67625ee596f76944495c6c0e70a','static_countries',209,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('c52afe1bd6b0d49c953485a3ec86c118','static_countries',245,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('c5530c0355faf483b06bd397f55be765','static_countries',122,'cn_currency_uid','','','',0,0,0,'static_currencies',31,''),('c567cad7f7f8806a857bd649086750ea','static_countries',104,'cn_country_zones','','','',53,0,0,'static_country_zones',278,''),('c5785666d4ec5e550379fd77882c6ad3','static_countries',104,'cn_country_zones','','','',82,0,0,'static_country_zones',301,''),('c579279b3b36d3a51c3bac0a97a224c7','tt_content',107,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',1,0,0,'tx_rkwprojects_domain_model_projects',2,''),('c57aee466476a4d7808632a4c2d570d2','static_countries',97,'cn_country_zones','','','',24,0,0,'static_country_zones',484,''),('c58abb1d72e11113f364fb135ffcae0e','sys_category',1,'items','','','',2,0,0,'tt_content',98,''),('c5e573fcf804c73bc135660e57830036','static_countries',29,'cn_country_zones','','','',14,0,0,'static_country_zones',504,''),('c60a7723b7e58a913f408c3f62237f4d','static_countries',15,'cn_currency_uid','','','',0,0,0,'static_currencies',10,''),('c62c562aa9827f416e0fe93094a83ee0','sys_file',18,'metadata','','','',0,0,0,'sys_file_metadata',18,''),('c65d22f8f27c750935ace503af19ddb8','be_users',6,'usergroup','','','',0,0,0,'be_groups',1,''),('c65fb0f3100d944f658eae982dffbcbd','tt_content',140,'pi_flexform','sDEF2/lDEF/settings.supportOptions.donateMoney.image/vDEF/','','',0,0,0,'sys_file_reference',101,''),('c664856d8c33b7c2432c1d324af7d7bc','sys_category',2,'items','','','',0,0,0,'pages',25,''),('c67ae1f336d269658e4617309ccfea7d','static_countries',74,'cn_country_zones','','','',2,0,0,'static_country_zones',333,''),('c6af6385bb9390f0c7a7afd007dc6fb0','sys_file_metadata',11,'file','','','',0,0,0,'sys_file',11,''),('c742d8ae6746c35a1373942ad21d88ef','static_countries',102,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('c779c36913ed3d975616d6e320d8533f','static_countries',65,'cn_country_zones','','','',16,0,0,'static_country_zones',150,''),('c78f94410d63893a63ccd8e22d86c3e9','tx_hgontemplate_domain_model_didyouknow',3,'sys_language_uid','','','',0,0,0,'sys_language',-1,''),('c7e13ce7f7073cca72d19274ced5936c','sys_file_reference',33,'uid_local','','','',0,1,0,'sys_file',19,''),('c7e5a41082aece3d87ad82ca7989caa4','static_countries',203,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('c88691725b2d7a95184063bdd093715a','static_countries',220,'cn_country_zones','','','',37,0,0,'static_country_zones',48,''),('c8a2df4fb5564d00d67675bf7d892409','be_groups',2,'db_mountpoints','','','',1,0,0,'pages',38,''),('c8ed04907692ae402a7642d23d41aa40','static_countries',14,'cn_country_zones','','','',6,0,0,'static_country_zones',220,''),('c8f28444a10a232455d9584572479df8','static_countries',92,'cn_parent_territory_uid','','','',0,0,0,'static_territories',17,''),('c9434cc74364d290c70e0cc478633061','static_countries',199,'cn_currency_uid','','','',0,0,0,'static_currencies',141,''),('c97413ec43d908197cace431dea9fda3','static_countries',104,'cn_country_zones','','','',27,0,0,'static_country_zones',250,''),('c97fbe16cc5be04ed1cf2c6742f409c0','static_countries',72,'cn_country_zones','','','',54,0,0,'static_country_zones',638,''),('c98740e1c97f647263dc874dc370ad96','static_countries',8,'cn_parent_territory_uid','','','',0,1,0,'static_territories',19,''),('c9bdd1737c215d18ef5c2b3399169ce8','sys_file_metadata',25,'file','','','',0,0,0,'sys_file',26,''),('c9c04db94ec42aef897521fdf024b026','static_countries',191,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('c9dcc3cdd2d1c68233a5cb21dd0d0b35','static_countries',231,'cn_currency_uid','','','',0,0,0,'static_currencies',161,''),('c9ea85182e284bd6ad66440e0b79b5aa','static_countries',220,'cn_country_zones','','','',42,0,0,'static_country_zones',54,''),('c9fd971a548b5d3974015b027efb6596','tt_content',118,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',3,0,0,'tx_rkwprojects_domain_model_projects',2,''),('ca0e6335f8439c1134e6b13abe16ff44','static_countries',65,'cn_country_zones','','','',48,0,0,'static_country_zones',177,''),('ca5f775bf2d11c59120be261dc01a2f4','static_countries',193,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('cac519f2a2d14ae7b4d8557c53cde836','static_countries',242,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('caf1e7acb68479a44cd74becee3cdb34','static_countries',74,'cn_country_zones','','','',1,0,0,'static_country_zones',334,''),('cb070926a375cb8cfbd1e176d7056ac2','sys_category',2,'items','','','',3,0,0,'tx_news_domain_model_news',2,''),('cb0f17924f27113d62e39d5a35ccac32','static_countries',122,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('cb4381a27aca9dd261cee90d0741f892','static_countries',72,'cn_country_zones','','','',27,0,0,'static_country_zones',582,''),('cb752a44db56157c7d75fd79a7c57941','static_countries',93,'cn_country_zones','','','',20,0,0,'static_country_zones',709,''),('cb7c8fcbf51dcfd9b93abad017071c4a','sys_file_reference',80,'uid_local','','','',0,1,0,'sys_file',19,''),('cb88a6d5c299d76e8a54b4c24e9a8e65','static_countries',125,'cn_parent_territory_uid','','','',0,0,0,'static_territories',24,''),('cc14eff78c679e28ce12c94b37d3e6e6','static_countries',168,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('cc26caba7ee86811c1dd66fea2b09e04','static_countries',208,'cn_parent_territory_uid','','','',0,0,0,'static_territories',8,''),('cc309c934a22a125b8a37d4792015171','static_countries',72,'cn_country_zones','','','',9,0,0,'static_country_zones',572,''),('cc59cddc52d341b5ac0fb6d83c8d1563','static_countries',98,'cn_currency_uid','','','',0,0,0,'static_currencies',67,''),('cc8bceccbb77c12966f17fb2bf265d7a','static_countries',104,'cn_country_zones','','','',38,0,0,'static_country_zones',260,''),('cca819a2eda4e18adc0f3e8a4f11e6c7','static_countries',104,'cn_country_zones','','','',13,0,0,'static_country_zones',233,''),('ccc47f2758d603b430e9f5b63daea4b4','static_countries',72,'cn_country_zones','','','',125,0,0,'static_country_zones',649,''),('cd6cf13a3124e1706b8de10a9fc75206','sys_file_reference',111,'uid_local','','','',0,0,0,'sys_file',23,''),('cdad590d7dc8ebf0b8cbda52cb9d40c6','static_countries',73,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('ce0b6caa148153687bb8945a794ffda3','static_countries',62,'cn_currency_uid','','','',0,0,0,'static_currencies',46,''),('ce10e6af57db945ec340acfb04ef8ece','static_countries',72,'cn_country_zones','','','',44,0,0,'static_country_zones',597,''),('ce3dbbae88b1022a262e67da78791028','static_countries',148,'cn_country_zones','','','',5,0,0,'static_country_zones',187,''),('ce813c4db9b53c7be0875ab7eae031bb','static_countries',28,'cn_currency_uid','','','',0,0,0,'static_currencies',21,''),('ced4eef6b94a5b8f0cd768efb703b917','static_countries',135,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('cee8bd78e190e2c5d25bd2deb47eee5f','static_countries',104,'cn_country_zones','','','',29,0,0,'static_country_zones',265,''),('cf0e48cc6845d1db806c650285e8b398','static_countries',188,'cn_currency_uid','','','',0,0,0,'static_currencies',133,''),('cf2702879928a534e26f8e3dcac4a779','static_countries',7,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('cf2fa498e882c28f32969556c744e00b','static_countries',97,'cn_country_zones','','','',5,0,0,'static_country_zones',465,''),('cf73e8ba61d1eae09c18f54b8e9255ec','static_countries',93,'cn_country_zones','','','',15,0,0,'static_country_zones',703,''),('cfa7c79b05f83d5f2ef27be92b9cd710','static_countries',48,'cn_currency_uid','','','',0,0,0,'static_currencies',36,''),('cfce264720613f9dfe49d3cc6d80410e','static_countries',74,'cn_country_zones','','','',95,0,0,'static_country_zones',428,''),('cfcee27fba0b2bc790751e78f394e092','static_countries',170,'cn_country_zones','','','',2,0,0,'static_country_zones',675,''),('cfd13e61fc464cc983af31e211a3cbfb','tx_rkwevents_domain_model_event',5,'tx_hgon_workgroup','','','',0,0,0,'tx_hgonworkgroup_domain_model_workgroup',1,''),('cfd223d22b384cd3c41946d9aae21006','static_territories',8,'tr_parent_territory_uid','','','',0,0,0,'static_territories',4,''),('d0171dd14c68c71e98cd93ca79d03169','static_countries',157,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('d0410e742494ef081b1487d6735ccec2','static_countries',173,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('d05072f83c5081a1a28f51403832c76b','static_countries',244,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('d05ba61b06517e4c8d5540c70295170a','static_countries',157,'cn_country_zones','','','',6,0,0,'static_country_zones',536,''),('d0a70079591e6e167c3f832b51a7f8da','tt_content',9,'image','','','',0,0,0,'sys_file_reference',2,''),('d0eebb96ead12919513700087efd1c30','tt_content',8,'header_link','','typolink','7ba2d7697f1557055afd794c7ab48eb7:0',-1,1,0,'_STRING',0,'https://dummyimage.com/1680x600/333333/fff.png'),('d114028929dc1f0ec55f865402ed362d','static_countries',161,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('d1386de3cbdf4511cecbb83b1f6e649e','static_countries',197,'cn_currency_uid','','','',0,0,0,'static_currencies',139,''),('d1652ef9be4823ccbda220aa4c18a7f4','static_countries',220,'cn_country_zones','','','',13,0,0,'static_country_zones',22,''),('d1657b650408849099784a78159bc058','sys_file',4,'storage','','','',0,0,0,'sys_file_storage',1,''),('d18a79f71f6a209caca9c56581b505f5','tt_content',16,'image','','','',1,0,0,'sys_file_reference',38,''),('d1bbbb087b83350da02c9ca90e01ac79','static_countries',54,'cn_country_zones','','','',11,0,0,'static_country_zones',90,''),('d1e5ba4df2d52f356075fbe406139a9d','static_countries',80,'cn_parent_territory_uid','','','',0,0,0,'static_territories',18,''),('d23b113d1c1bf8d6873f22869616e914','static_countries',148,'cn_country_zones','','','',30,0,0,'static_country_zones',212,''),('d250713db4aefe20c3c351162524f04d','static_countries',104,'cn_country_zones','','','',64,0,0,'static_country_zones',285,''),('d28d10f5cf8e6fda65032d696555dd03','static_countries',148,'cn_country_zones','','','',14,0,0,'static_country_zones',196,''),('d2a128e4bdfefc7e734e2ac14fe4fc2d','static_countries',220,'cn_country_zones','','','',31,0,0,'static_country_zones',41,''),('d2b27d1e21f5621da0dcd48478a69240','static_countries',188,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('d2f0ccf40378a08f3ad0600c4fc23d23','static_countries',41,'cn_country_zones','','','',10,0,0,'static_country_zones',114,''),('d349a89387ab2bd9a434a3901052a1b1','static_countries',74,'cn_country_zones','','','',21,0,0,'static_country_zones',353,''),('d364d09e8e0074adf47707dbdb082392','static_countries',32,'cn_currency_uid','','','',0,0,0,'static_currencies',111,''),('d36daf3f7ce2cade1a5c038e01a10378','static_countries',104,'cn_country_zones','','','',56,0,0,'static_country_zones',274,''),('d38f1f078546e608098aa9d64ed0c31b','sys_file_metadata',12,'file','','','',0,0,0,'sys_file',12,''),('d39dfcdfd009c50a772ccc055227e439','sys_file',29,'storage','','','',0,0,0,'sys_file_storage',1,''),('d3bdb7b982a128e3b638685b36e07641','static_countries',74,'cn_country_zones','','','',78,0,0,'static_country_zones',411,''),('d471b799611066bc874ae3347aed9695','static_countries',170,'cn_country_zones','','','',10,0,0,'static_country_zones',683,''),('d4df12219afda7f3b33413089121f080','tx_rkwevents_domain_model_event',3,'department','','','',0,0,0,'tx_rkwbasics_domain_model_department',1,''),('d53564a84ff887a09c7b8bb5d55dc095','static_countries',47,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('d575451d5ac7a70245b3c37f6d40b392','static_countries',74,'cn_country_zones','','','',48,0,0,'static_country_zones',382,''),('d5778f512398d2da6fffa7fe83645002','static_countries',65,'cn_country_zones','','','',51,0,0,'static_country_zones',180,''),('d579145f53fdbe4f79c4857100ab309c','static_countries',222,'cn_parent_territory_uid','','','',0,0,0,'static_territories',8,''),('d59e9645a7b8fcd2582785e7306902cf','sys_file_metadata',15,'file','','','',0,0,0,'sys_file',15,''),('d5e3e5d0c6b682321203a515e7f1f396','static_countries',74,'cn_country_zones','','','',56,0,0,'static_country_zones',387,''),('d5e527387df3ad8d5589752c9a92eba6','static_countries',75,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('d6412add93b0986119a4eebaa37d5afb','static_countries',29,'cn_country_zones','','','',24,0,0,'static_country_zones',515,''),('d6536192ca44e1ef7cf646e0bc04815d','static_countries',72,'cn_country_zones','','','',93,0,0,'static_country_zones',624,''),('d65b062f31adc707ef91e64dd5d6e428','static_countries',72,'cn_country_zones','','','',128,0,0,'static_country_zones',672,''),('d6769c9653f391ba5c9e8e2191954808','static_countries',104,'cn_country_zones','','','',52,0,0,'static_country_zones',276,''),('d699d4b33ab39afa9887f29b8e1b7e33','static_countries',74,'cn_country_zones','','','',49,0,0,'static_country_zones',379,''),('d69ffd102c4a787b813fd1f990e60574','static_countries',30,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('d6d48db472325eb4c382d29b673dcecf','sys_file_reference',52,'uid_local','','','',0,0,0,'sys_file',19,''),('d6e761d7983b9a28f341a4439c890070','sys_file_reference',49,'uid_local','','','',0,1,0,'sys_file',4,''),('d6f855c2a5e0f8aba8dfaa2270059fcb','static_countries',29,'cn_country_zones','','','',12,0,0,'static_country_zones',500,''),('d715f95b21cc34e02780792fa6b75a42','static_countries',36,'cn_country_zones','','','',11,0,0,'static_country_zones',77,''),('d73fb3afb1770b55cd5ad17c478d66cc','static_countries',74,'cn_country_zones','','','',69,0,0,'static_country_zones',405,''),('d745658ad729da407bb6c0e7f54880b6','static_countries',114,'cn_currency_uid','','','',0,0,0,'static_currencies',79,''),('d7547c221ee113edff4b16278a0ffae4','tx_rkwevents_domain_model_event',5,'project','','','',0,0,0,'tx_rkwprojects_domain_model_projects',2,''),('d773cce558e42b812b53197cdcc3e7a0','static_countries',97,'cn_country_zones','','','',25,0,0,'static_country_zones',485,''),('d7c39df1ff9af6ba6771276de8081118','static_countries',54,'cn_country_zones','','','',6,0,0,'static_country_zones',86,''),('d7da8844c01685f38bc25c8ef9a8f963','static_countries',229,'cn_parent_territory_uid','','','',0,0,0,'static_territories',26,''),('d82930e9f1f304b1437731a51759b5da','sys_file_metadata',19,'file','','','',0,0,0,'sys_file',19,''),('d8bf60552a85fedb8fe9d67b64c729bb','static_countries',104,'cn_country_zones','','','',0,0,0,'static_country_zones',222,''),('d94abaf1635c059eb5dc90b787572584','static_countries',130,'cn_currency_uid','','','',0,0,0,'static_currencies',92,''),('d99e0dc5aba6f4c60582833603963add','static_countries',106,'cn_currency_uid','','','',0,0,0,'static_currencies',73,''),('d9b612e29883641607e0418276b87695','static_countries',62,'cn_parent_territory_uid','','','',0,0,0,'static_territories',22,''),('d9e25ee19b4763615fbaff942f3aeff1','static_countries',184,'cn_currency_uid','','','',0,0,0,'static_currencies',129,''),('da13a1239245feba33b6cb2d5ecd247b','static_countries',157,'cn_country_zones','','','',7,0,0,'static_country_zones',537,''),('da32cf76c5a0df226d666f7539bbcd64','static_countries',64,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('da5e6c2a2cd6a54dbb3ac5223a037eb8','tt_content',131,'image','','','',0,0,0,'sys_file_reference',91,''),('da7bb5b6f5e5c4a056822fc8ce93e52c','static_countries',29,'cn_country_zones','','','',7,0,0,'static_country_zones',497,''),('daa2f3795e3e1603105d22b8364a65bd','static_countries',158,'cn_currency_uid','','','',0,0,0,'static_currencies',111,''),('daa8e7c2fc8110f82c67e913a1592c94','sys_file_reference',42,'uid_local','','','',0,0,0,'sys_file',15,''),('db7909b1d96b1ae9065a6e6bd27635f7','static_countries',225,'cn_currency_uid','','','',0,0,0,'static_currencies',158,''),('db92685f6379695342f827bbc9b1c273','static_countries',65,'cn_country_zones','','','',37,0,0,'static_country_zones',169,''),('dbc176ba4374f6122850ba01d6a2eb1c','static_countries',215,'cn_currency_uid','','','',0,0,0,'static_currencies',151,''),('dbe894d570d7b5c3c75b47634b46ba66','static_countries',224,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('dbed7419ca20e0d25613ae517780ba5b','static_countries',72,'cn_country_zones','','','',25,0,0,'static_country_zones',581,''),('dbed7f85fa23faefdd194eb5c893c760','static_countries',166,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('dbee91a1b4efb4a7982675df454206f2','static_countries',172,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('dbf5278e2d34b71cff5ae8dfeeb037a2','static_countries',72,'cn_country_zones','','','',45,0,0,'static_country_zones',660,''),('dbfc8c04b3e0ee0d8ca517c33e35d82a','static_countries',22,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('dc0b7f26fd8a32c98b67fae92f505d98','static_countries',210,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('dc293974a2b33316896eb3f3fb246acb','static_countries',108,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('dc53da06c1a9f41b66ba9107a278cf8a','static_countries',113,'cn_currency_uid','','','',0,0,0,'static_currencies',163,''),('dc5f3555f3022d95d04de0579e22461e','static_countries',41,'cn_country_zones','','','',7,0,0,'static_country_zones',111,''),('dc73a1ca0eb6e168a81581632a88b665','static_countries',41,'cn_country_zones','','','',8,0,0,'static_country_zones',112,''),('dcc771519c672e602bf380b7bb18b183','static_countries',72,'cn_country_zones','','','',110,0,0,'static_country_zones',635,''),('dcd32750219125f0cd777438293ade4f','static_countries',74,'cn_country_zones','','','',36,0,0,'static_country_zones',365,''),('dd097fb4a76e3cf35d08b816575281cc','static_countries',72,'cn_country_zones','','','',13,0,0,'static_country_zones',575,''),('dd513dbc30c8d32bc42c86879701a10a','sys_file_reference',17,'uid_local','','','',0,1,0,'sys_file',13,''),('ddfb7249219298893e7fcb1611f7ad77','static_countries',74,'cn_country_zones','','','',3,0,0,'static_country_zones',336,''),('de03fd6fdbf13565ddd007229ee8fed9','static_countries',72,'cn_country_zones','','','',50,0,0,'static_country_zones',607,''),('de2bc132fae749fdf7019f25f3315e3b','pages',52,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',77,''),('de2d2b5ad2278d6b412ed35163861f56','static_countries',74,'cn_country_zones','','','',29,0,0,'static_country_zones',362,''),('de447e68b583778e6c41ea968cd7ae86','static_countries',226,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('de8fcaced074d41fa42613cdd27155de','tt_content',101,'pi_flexform','sDEF/lDEF/settings.randomAuthor.authorUidList/vDEF/','','',1,0,0,'tx_rkwauthors_domain_model_authors',2,''),('de96900e815e7cad8d889ca7a66ad8eb','static_countries',220,'cn_country_zones','','','',20,0,0,'static_country_zones',29,''),('deef8280f9962e004781c6c6f48ad551','static_countries',41,'cn_country_zones','','','',25,0,0,'static_country_zones',129,''),('df0a0fafdcc1c074e6fd0e37a6982a86','static_countries',74,'cn_country_zones','','','',94,0,0,'static_country_zones',426,''),('df18cd565b029d032e6fc0bba69be95c','static_countries',74,'cn_country_zones','','','',93,0,0,'static_country_zones',425,''),('df1ea2c096b1b641de2d910363feb9e6','static_countries',74,'cn_country_zones','','','',68,0,0,'static_country_zones',402,''),('df8149c0e1ce6d183fb5c9253dcaf7c9','sys_file_metadata',27,'file','','','',0,0,0,'sys_file',29,''),('df81d9307112f1a960d0a56ae6e3cd4f','static_countries',104,'cn_country_zones','','','',104,0,0,'static_country_zones',324,''),('df86c033faae8777759772bcb91ee0af','static_territories',18,'tr_parent_territory_uid','','','',0,0,0,'static_territories',3,''),('df92644558a3ed94ea517ffa90e1cec8','static_countries',231,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('df96ac4a5645f65116a3306db90b3cc7','static_countries',144,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('dfb58eeaaaa1ccd6d02107236229aae2','static_countries',156,'cn_currency_uid','','','',0,0,0,'static_currencies',110,''),('e0b008b76bf44713af1c3ab39b4a2e01','static_countries',72,'cn_country_zones','','','',108,0,0,'static_country_zones',669,''),('e0debdd65d6e3e6dfe0dcf33512d4b80','static_countries',74,'cn_country_zones','','','',84,0,0,'static_country_zones',373,''),('e0f1a8109a795e5e2991d03633d12f91','static_territories',22,'tr_parent_territory_uid','','','',0,0,0,'static_territories',1,''),('e110e9482490e06855fae43d4096df93','static_countries',148,'cn_country_zones','','','',4,0,0,'static_country_zones',186,''),('e15e18f2ca1899d0c154d2d2ed0fed97','static_countries',72,'cn_country_zones','','','',17,0,0,'static_country_zones',545,''),('e162f013ea9104720c5d7ef3edd47ecb','sys_file_metadata',16,'file','','','',0,0,0,'sys_file',16,''),('e1633292e5cf9f80beed020a22d267b6','static_countries',180,'cn_currency_uid','','','',0,0,0,'static_currencies',124,''),('e16ce005e9a734fd8cecf802bf7a79fc','static_countries',72,'cn_country_zones','','','',4,0,0,'static_country_zones',569,''),('e1dde0dba2b5e9cf67f637f5f56787fc','static_countries',74,'cn_country_zones','','','',64,0,0,'static_country_zones',372,''),('e2341aadd424ea5e199ab0884d4735a9','static_countries',74,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('e2520f8f39cba685b87207c0bbd2f688','static_countries',72,'cn_country_zones','','','',92,0,0,'static_country_zones',666,''),('e2607fd41495eccf726bb72dd8d65613','tt_content',113,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',0,0,0,'tx_rkwprojects_domain_model_projects',1,''),('e2773d9ceb38ef665316861a191468a6','sys_filemounts',1,'base','','','',0,0,0,'sys_file_storage',1,''),('e2d3cb2a82af4ecfe5d9fa75770eed35','static_countries',60,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('e2ed5bc87115eeb0ccde23aaadf84bc7','static_countries',227,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('e2ee1b2059b3375b2a622aba9bfc18c5','static_countries',238,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('e313319a7bbeeccb60af056d0934b742','static_countries',74,'cn_country_zones','','','',67,0,0,'static_country_zones',401,''),('e31e7fe856e72c87387bed6aab5e2cc5','static_countries',61,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('e3342be69376821ffda95d2491964abc','static_countries',222,'cn_currency_uid','','','',0,0,0,'static_currencies',157,''),('e377f300a530e358ba23c2e26badc1c3','static_countries',14,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('e3ed9b65a753a54030b418b52f3cf3de','static_countries',74,'cn_country_zones','','','',83,0,0,'static_country_zones',416,''),('e4051cc0c653a173b70847e3fff4cb3b','static_countries',192,'cn_currency_uid','','','',0,0,0,'static_currencies',136,''),('e40af49a93594f14f1ac5eeab14c09c9','static_countries',104,'cn_country_zones','','','',109,0,0,'static_country_zones',330,''),('e43b2c5e910cbd4ddac132b8bf20f0fd','tt_content',108,'image','','','',0,0,0,'sys_file_reference',56,''),('e477e68a6b000ff0da138ce56552f43c','static_countries',246,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('e4b0b61f0adc8ffc6c996f84d951699a','tt_content',56,'header_link','','typolink','b9f873403aa253ecf26b559f29c2f819:0',-1,1,0,'_STRING',0,'mailto:info@hgon.de'),('e4f5642a7d20c618236f52b9d946ea40','static_countries',76,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('e57484ad747cdc09e7f775efb123a1d4','static_countries',29,'cn_country_zones','','','',22,0,0,'static_country_zones',511,''),('e591a96aaf3dce1c291d85b2727e83b3','static_countries',65,'cn_country_zones','','','',25,0,0,'static_country_zones',134,''),('e5958d61e1e0037bde441d52ecbad1cb','static_countries',97,'cn_country_zones','','','',3,0,0,'static_country_zones',463,''),('e596859f9c20f1971edecd69a76e7a02','static_countries',104,'cn_country_zones','','','',1,0,0,'static_country_zones',223,''),('e5cd0111dcb69ccc2c2177d40851edf2','pages',25,'tx_rkwbasics_article_image','','','',0,0,0,'sys_file_reference',58,''),('e5d2a710efc4248e4cd8c3e3e598d2ad','static_countries',232,'cn_currency_uid','','','',0,0,0,'static_currencies',166,''),('e5d987fb01c74699e53cc81dd06304c2','static_countries',72,'cn_country_zones','','','',33,0,0,'static_country_zones',643,''),('e5df843b9797015c6f178465a81c941a','static_countries',220,'cn_country_zones','','','',9,0,0,'static_country_zones',18,''),('e5f1765929960654d5da51d4ecf504e9','static_countries',72,'cn_country_zones','','','',48,0,0,'static_country_zones',584,''),('e62a9b5c76f00414f011ab1ed982707e','static_countries',104,'cn_country_zones','','','',85,0,0,'static_country_zones',304,''),('e66120461c8fe60d42a15aeb4f362c32','sys_file_metadata',2,'file','','','',0,0,0,'sys_file',2,''),('e695345f2edfc65c59102f8ad859a34c','static_countries',181,'cn_currency_uid','','','',0,0,0,'static_currencies',126,''),('e6a57e11154a8238a60178101e37ee36','static_countries',213,'cn_currency_uid','','','',0,0,0,'static_currencies',150,''),('e6c99982371683ad87025e3735f6b526','static_countries',97,'cn_country_zones','','','',10,0,0,'static_country_zones',470,''),('e76111adcb599dc78124dc40544e15d6','pages',49,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',74,''),('e7ba21ad9d8ee8e164404d2d45c58d52','static_countries',27,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('e7bc901ade906719f648bb9d44f2b2d8','static_countries',131,'cn_parent_territory_uid','','','',0,0,0,'static_territories',13,''),('e81e41049f1c86d7bcdd955148dc1d90','static_countries',220,'cn_country_zones','','','',2,0,0,'static_country_zones',4,''),('e82c8d470dfcb4a05226736577d8f273','static_countries',46,'cn_parent_territory_uid','','','',0,0,0,'static_territories',6,''),('e841f1e7edcc0b675ef2c8b603d91d44','tx_rkwprojects_domain_model_projects',1,'project_manager','','','',0,0,0,'tx_rkwauthors_domain_model_authors',1,''),('e86ec89c29dcfa6d313de44089e263f9','static_countries',97,'cn_country_zones','','','',21,0,0,'static_country_zones',481,''),('e881b071ac4bfbf4c3e13357f8f52803','static_countries',54,'cn_country_zones','','','',9,0,0,'static_country_zones',88,''),('e89ea8d9b3a3e6b68d03ef9201f5aa11','static_countries',83,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('e8a8685d944440a0f21b548e22dde5b8','pages',6,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',46,''),('e8dd87f37fbcc6345658073e323272a5','static_countries',50,'cn_parent_territory_uid','','','',0,0,0,'static_territories',20,''),('e8f9f10be06944528f3dd709814f50bc','tt_content',140,'pi_flexform','sDEF1/lDEF/settings.supportOptions.becomeMember.image/vDEF/','','',0,0,0,'sys_file_reference',100,''),('e8fe1b48fb38eb0b8850eb956f4001db','static_countries',72,'cn_country_zones','','','',40,0,0,'static_country_zones',593,''),('e90c32804ebde0d6310342e8f67b835f','static_countries',148,'cn_currency_uid','','','',0,0,0,'static_currencies',104,''),('e9185d4fe1e6380bff7e4671b6e37359','static_countries',205,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('e929357291f2390c6a8c9e3735a4a8c3','static_countries',72,'cn_country_zones','','','',79,0,0,'static_country_zones',614,''),('e93d3764c0b23c807296a550ee88b204','static_countries',220,'cn_country_zones','','','',19,0,0,'static_country_zones',28,''),('e959095aea16206f690b89060b93b965','static_countries',72,'cn_country_zones','','','',64,0,0,'static_country_zones',602,''),('e98bb04cde2035f1da4e374d541c765e','tt_content',16,'assets','','','',0,0,0,'sys_file_reference',105,''),('e998998b83799e113ee54360693ce641','static_countries',72,'cn_country_zones','','','',114,0,0,'static_country_zones',640,''),('e9a717e1b448a904837c4a814d78c835','static_countries',132,'cn_parent_territory_uid','','','',0,0,0,'static_territories',11,''),('e9f057c3f659ec1b8317da1229a48ac8','static_countries',74,'cn_country_zones','','','',96,0,0,'static_country_zones',430,''),('ea0d5928fa23f413385b9d28d1fc02f7','tt_content',65,'assets','','','',1,0,0,'sys_file_reference',104,''),('ea3883e3bb2fc84816cb785edb5857ca','static_countries',74,'cn_country_zones','','','',4,0,0,'static_country_zones',340,''),('ea4cbd7b8b8c58818e6f0bbecc62b791','static_countries',133,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('eac818fa1003e662d96e58870d5b8a3b','static_countries',102,'cn_currency_uid','','','',0,0,0,'static_currencies',70,''),('ead51f0e31f6d422a3bfbf93e5924c9d','static_countries',93,'cn_currency_uid','','','',0,0,0,'static_currencies',63,''),('eae80c8f074f9bea74f82f6d7145e6b2','sys_file',20,'storage','','','',0,0,0,'sys_file_storage',1,''),('eb01a17e8279f0b805d5d5fcd5a43025','static_countries',163,'cn_currency_uid','','','',0,0,0,'static_currencies',114,''),('eb112e0657a5f0f03f7b6cc60b490788','static_countries',72,'cn_country_zones','','','',78,0,0,'static_country_zones',613,''),('eb2ee4b2502c40c76dfa490034e018ab','static_countries',134,'cn_parent_territory_uid','','','',0,0,0,'static_territories',27,''),('eb3448f55c60e7e227dd8445b6356330','static_countries',41,'cn_country_zones','','','',24,0,0,'static_country_zones',128,''),('eb471161e6af67a9def9f822ca1bcba1','sys_file_reference',53,'uid_local','','','',0,0,0,'sys_file',19,''),('eb726b7be74ca52841daae3ee6c0ee6b','tx_rkwevents_domain_model_event',5,'organizer','','','',0,0,0,'tx_rkwevents_domain_model_eventorganizer',1,''),('eb957d511933b9b9baaf84dc79e1eb35','static_countries',220,'cn_country_zones','','','',17,0,0,'static_country_zones',26,''),('eba5c018d708a818df742389a2790a33','static_countries',167,'cn_currency_uid','','','',0,0,0,'static_currencies',117,''),('ebace44e7cecd94fb5ce0fb01c4c9efe','static_countries',72,'cn_country_zones','','','',0,0,0,'static_country_zones',564,''),('ebc790cd276885488dae086e5d38a481','static_countries',100,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('ebced14d8963eab088933594f3592584','static_countries',235,'cn_currency_uid','','','',0,0,0,'static_currencies',168,''),('ebe8d736d124b3990a8e6ccc0b648b95','static_countries',69,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('ec35166d97bbb636a2d8a73d7b57f98c','static_countries',72,'cn_country_zones','','','',60,0,0,'static_country_zones',551,''),('ec384215a0051ef59ea18093709392b6','sys_file',9,'metadata','','','',0,0,0,'sys_file_metadata',8,''),('ec4eb77f4e3450d74ce3a23212825566','static_countries',220,'cn_country_zones','','','',50,0,0,'static_country_zones',63,''),('ec5088076c1fada25b154692dd3c6aa1','static_countries',67,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('ec58ebfa449b71434587976fc66cb97c','static_countries',154,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('ec5b15ee9ef32cab53a8f9377898b8c7','static_countries',220,'cn_country_zones','','','',8,0,0,'static_country_zones',16,''),('ec6428fbc0fcb6274a90e0f01acd7b0c','static_countries',207,'cn_parent_territory_uid','','','',0,0,0,'static_territories',28,''),('ecaaf08cbf0db6d405e35a84675a6add','sys_file_reference',12,'uid_local','','','',0,1,0,'sys_file',7,''),('ecf2f82b8631f25ae83981dc89372689','static_countries',144,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('ed423994f26c3cda97b71966ea718f0e','static_countries',104,'cn_country_zones','','','',60,0,0,'static_country_zones',280,''),('ed6730d5e65e00b4abe407be75f011ea','static_countries',170,'cn_country_zones','','','',4,0,0,'static_country_zones',677,''),('ed6c976018043b1f871bfec7b796eb06','static_countries',137,'cn_parent_territory_uid','','','',0,0,0,'static_territories',7,''),('ed9df5575e6e1da239667f369e60c334','static_countries',36,'cn_country_zones','','','',0,0,0,'static_country_zones',66,''),('edbebd49c9e18089aef3937e5eab66f9','static_countries',65,'cn_country_zones','','','',22,0,0,'static_country_zones',156,''),('edc165233c7684fc0ae41d0f1ae41eac','static_countries',55,'cn_currency_uid','','','',0,0,0,'static_currencies',41,''),('edfcfc435d074107564d8b07994f2174','static_countries',104,'cn_country_zones','','','',46,0,0,'static_country_zones',267,''),('ee5e20fe0068cf6c9ebe866b8093d55c','static_countries',74,'cn_country_zones','','','',98,0,0,'static_country_zones',396,''),('eeab9776a7527c7feb5f4afbea4b4d7a','sys_file',15,'metadata','','','',0,0,0,'sys_file_metadata',15,''),('eeedd80d45330351c9b1d084ace82773','sys_file_reference',20,'uid_local','','','',0,1,0,'sys_file',5,''),('ef2cae69ceeaa78f39d7fb0f91813436','tx_hgontemplate_domain_model_didyouknow',1,'sys_language_uid','','','',0,0,0,'sys_language',-1,''),('ef4a8545d5d8a5d53678a6dc2ef3e2dd','sys_file',23,'metadata','','','',0,0,0,'sys_file_metadata',23,''),('ef734c7ed6b611a8633fcb35c37ad6d5','static_countries',41,'cn_country_zones','','','',1,0,0,'static_country_zones',106,''),('efbb1995790051f4bd5e790662481e7b','static_countries',104,'cn_country_zones','','','',55,0,0,'static_country_zones',329,''),('f036e27973a4b102060e539e0870c045','static_countries',37,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('f060cf7d2fb01e5ea7190ca306b7fca9','static_countries',74,'cn_country_zones','','','',46,0,0,'static_country_zones',369,''),('f0935dc062b1da4d59f70278bf34c5e8','static_countries',66,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('f0c9a83434c9e8c47f9f210e191e2a55','static_countries',29,'cn_country_zones','','','',10,0,0,'static_country_zones',502,''),('f0f74cd769863803c64fc5c28eec84fe','be_groups',2,'db_mountpoints','','','',0,0,0,'pages',1,''),('f0fb6edccece2af33e68598957cab051','tx_rkwauthors_domain_model_authors',1,'email','','typolink','717e5be77ac21b36340f0ee6b6ebff45:0',-1,0,0,'_STRING',0,'oliver.conz@hgon.de'),('f13bbd0b7d5fe9b9c8adcc4260b9f3ee','tx_news_domain_model_news',1,'fal_media','','','',0,0,0,'sys_file_reference',110,''),('f14e404e0692998534d59ff08908c1e7','static_countries',13,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('f1846590d2baca216d6167121ff50ff2','tt_content',15,'header_link','','typolink','c30a8dbbacd872cbef20641257509d07:0',-1,1,0,'_STRING',0,'t3://page?uid=4'),('f1b4d1034813681480489688c1d45c9e','static_countries',72,'cn_country_zones','','','',124,0,0,'static_country_zones',648,''),('f1c3b463e1e78a5c028ba5a61ac3fe95','static_countries',240,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('f1d46d44d24969844940f4eeba9c8683','static_countries',104,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('f1d79ff67a40cc00c9e9ef11e4fbfa22','tt_content',128,'image','','','',2,0,0,'sys_file_reference',87,''),('f1e0e1517de5313915a0311f6011aad0','static_countries',74,'cn_country_zones','','','',88,0,0,'static_country_zones',414,''),('f1e8dee058e04993ebeb57f4da8858a8','sys_file_reference',87,'uid_local','','','',0,0,0,'sys_file',23,''),('f21211abfaf90c6c3273a0666e49c066','static_countries',65,'cn_country_zones','','','',49,0,0,'static_country_zones',178,''),('f272563b09d585a64aa3b50d4605f25c','static_countries',72,'cn_country_zones','','','',86,0,0,'static_country_zones',555,''),('f28d6374e797ec162d3b48907ed7ad19','static_countries',74,'cn_country_zones','','','',18,0,0,'static_country_zones',350,''),('f29265b7817e9a16da3912a7362c0cff','static_countries',148,'cn_country_zones','','','',7,0,0,'static_country_zones',189,''),('f292e8cd82e08eead3f21fd341cf97e1','sys_file_reference',57,'uid_local','','','',0,0,0,'sys_file',5,''),('f2a226fc4d7373d5e54e08cbfd0def4d','static_countries',65,'cn_country_zones','','','',21,0,0,'static_country_zones',155,''),('f2a65fe1ba49dee542b72a469e94552b','static_countries',109,'cn_currency_uid','','','',0,0,0,'static_currencies',76,''),('f2ab3466b8bddd90889d36ebb351a039','tt_content',125,'assets','','','',2,0,0,'sys_file_reference',109,''),('f2acfbcaa7887cc1075da456e7150bd5','static_countries',52,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('f2ae6929c8d1f577140d6beae465ceca','static_countries',137,'cn_currency_uid','','','',0,0,0,'static_currencies',96,''),('f2affae3a96ef8d4ee8cdd2ac81fa295','static_countries',24,'cn_currency_uid','','','',0,0,0,'static_currencies',18,''),('f31a2135825362af932763188859ff3d','static_countries',237,'cn_currency_uid','','','',0,0,0,'static_currencies',169,''),('f326fa182f9efdab9baa0d7eb6e6ec80','static_countries',29,'cn_country_zones','','','',26,0,0,'static_country_zones',516,''),('f33b56e52f90aeb5353835660771bfd5','static_countries',39,'cn_parent_territory_uid','','','',0,0,0,'static_territories',23,''),('f340b20241976fc6eaa27debc5812453','sys_file',6,'metadata','','','',0,0,0,'sys_file_metadata',6,''),('f34d9b8fab888c49339652519ee829c1','static_countries',72,'cn_country_zones','','','',16,0,0,'static_country_zones',576,''),('f3906bae0a018da36872faa80fd37eaa','tt_content',63,'image','','','',0,0,0,'sys_file_reference',27,''),('f3b7b4a97f9c3ce01848d066626a00ec','static_countries',157,'cn_country_zones','','','',11,0,0,'static_country_zones',540,''),('f3f4d7598ae8df804d205efe111ac710','static_countries',87,'cn_currency_uid','','','',0,0,0,'static_currencies',58,''),('f4202d07f4b60b6a3bdbf0557d1ba459','static_countries',179,'cn_currency_uid','','','',0,0,0,'static_currencies',179,''),('f42098423083fac872004d6279a3af92','static_countries',36,'cn_country_zones','','','',4,0,0,'static_country_zones',69,''),('f429fba210d4c794d3867a80c77c6da6','tx_rkwevents_domain_model_event',1,'organizer','','','',0,0,0,'tx_rkwevents_domain_model_eventorganizer',1,''),('f43ccf21250ad28b8e6285887c762b7e','static_countries',152,'cn_parent_territory_uid','','','',0,0,0,'static_territories',26,''),('f4536585e83b8c3abfbb9c6d12b0f493','sys_category',6,'items','','','',0,0,0,'pages',26,''),('f4a1ae66de0870ff11f8aea41a15f8a1','static_countries',74,'cn_country_zones','','','',91,0,0,'static_country_zones',427,''),('f4c2463c16c050f813c399dd6064b54a','static_countries',93,'cn_country_zones','','','',9,0,0,'static_country_zones',698,''),('f510d58f1a1e23ca33e0f525581bd090','static_countries',243,'cn_currency_uid','','','',0,0,0,'static_currencies',172,''),('f531de7d4a6226df2126e89acd409b31','sys_file_reference',2,'uid_local','','','',0,0,0,'sys_file',4,''),('f5cc1dc71cf5561f436451dd910e2092','sys_file_metadata',9,'file','','','',0,0,0,'sys_file',7,''),('f6387d92e9571348051405af08828286','static_countries',206,'cn_parent_territory_uid','','','',0,0,0,'static_territories',8,''),('f671db6883d246c4eb2bfc0819ed1a32','static_countries',104,'cn_country_zones','','','',49,0,0,'static_country_zones',269,''),('f6ba8d820ed0d602742fbebe456ab7d6','static_countries',245,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('f7078e4b1e491f5b4fb008b0aebc1f4e','tt_content',111,'pi_flexform','sDEF/lDEF/settings.projectTeaser.projectUidList/vDEF/','','',2,0,0,'tx_rkwprojects_domain_model_projects',2,''),('f724d903114addc458751f901db7440f','static_countries',74,'cn_country_zones','','','',63,0,0,'static_country_zones',398,''),('f72fc98bda7f7b0dc4c41008ec69463e','static_countries',72,'cn_country_zones','','','',77,0,0,'static_country_zones',612,''),('f73ad3c7afdcd6dd6bee1f4f5f99f16c','static_countries',140,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('f73c2c653f2e4cf7b49a424de09585b2','static_countries',228,'cn_currency_uid','','','',0,0,0,'static_currencies',159,''),('f7501b0357582e218501589d4f81076a','static_countries',100,'cn_currency_uid','','','',0,0,0,'static_currencies',52,''),('f767bb2e1ef5b8cd0e6c96a6124b841b','static_countries',39,'cn_currency_uid','','','',0,0,0,'static_currencies',162,''),('f768a0cd648a9f9579b4701d9025e71b','pages',27,'tx_rkwbasics_teaser_image','','','',0,0,0,'sys_file_reference',70,''),('f770b693b7d7e0617d3e3261781ff73c','static_countries',148,'cn_country_zones','','','',18,0,0,'static_country_zones',200,''),('f7a88e966e00554af30821e810adf626','static_countries',72,'cn_country_zones','','','',53,0,0,'static_country_zones',634,''),('f7aff865c06e635e0bc62915b60876bc','static_countries',56,'cn_parent_territory_uid','','','',0,0,0,'static_territories',12,''),('f7c2b44a1fefaec748f0392131261547','static_countries',150,'cn_parent_territory_uid','','','',0,0,0,'static_territories',21,''),('f7dfd34f0f59ce45a09b3e7eca9595ef','pages',27,'tx_rkwprojects_project_uid','','','',0,0,0,'tx_rkwprojects_domain_model_projects',3,''),('f7f376dc6b61a76fc9e58e039a0f2c19','static_countries',72,'cn_country_zones','','','',15,0,0,'static_country_zones',557,''),('f7f84f52fefafe622559792cbd0b7462','static_countries',67,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('f8204f5b55207f7536703a217dc811ba','static_countries',74,'cn_country_zones','','','',17,0,0,'static_country_zones',349,''),('f8319c7a44365879a2ec821f6f7bbd0c','static_countries',41,'cn_country_zones','','','',4,0,0,'static_country_zones',109,''),('f83adb294dfdcf8b182615601ba00421','sys_file_reference',90,'uid_local','','','',0,0,0,'sys_file',15,''),('f88713782c310b0b2b6e50b3c7f5e5b6','static_countries',220,'cn_country_zones','','','',3,0,0,'static_country_zones',5,''),('f8da798bc1ab8d2442e30d6b315172cb','static_countries',74,'cn_country_zones','','','',77,0,0,'static_country_zones',410,''),('f8ff0e549b378eec7dfad3880a3f606d','static_countries',248,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('f927d0c7d47ce98f6591e3d0b71ef26c','static_countries',226,'cn_parent_territory_uid','','','',0,0,0,'static_territories',19,''),('f92971ac39257d5afbc15fd6bbebb483','static_countries',79,'cn_parent_territory_uid','','','',0,0,0,'static_territories',10,''),('f98c49cbbc75c771242f2879387da413','sys_category',4,'parent','','','',0,0,0,'sys_category',5,''),('f9ab5018c9ab0f5277117d267cbbaf6c','static_countries',97,'cn_country_zones','','','',9,0,0,'static_country_zones',469,''),('f9faa821d0a46a436e26d635555b931a','static_countries',94,'cn_currency_uid','','','',0,0,0,'static_currencies',64,''),('fa1458778d6c0b0b352afe02c610d8e2','tx_news_domain_model_news',2,'tx_hgon_workgroup','','','',0,0,0,'tx_hgonworkgroup_domain_model_workgroup',1,''),('faa39c3074bea14d12e0041d07592fd0','tt_content',131,'image','','','',1,0,0,'sys_file_reference',92,''),('fadae4a0d477372365382c0811ab935e','static_countries',183,'cn_currency_uid','','','',0,0,0,'static_currencies',128,''),('fb024961daebc3a19415bbb78b514858','static_countries',14,'cn_country_zones','','','',5,0,0,'static_country_zones',219,''),('fb208a52f67c6492cb33b1001099769c','static_countries',74,'cn_country_zones','','','',51,0,0,'static_country_zones',378,''),('fb3080d47ca6675a31fd796af9a9427d','tx_rkwevents_domain_model_event',4,'be_user','','','',0,0,0,'be_users',5,''),('fb8993cbb5f262847a88fecee8007b68','static_countries',176,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('fb9bb739ebf8d15eeed290da2fd559d8','static_countries',120,'cn_currency_uid','','','',0,0,0,'static_currencies',85,''),('fb9bbe66305ac4a85df91d953f29873d','static_countries',134,'cn_currency_uid','','','',0,0,0,'static_currencies',155,''),('fbb611163f20aec314e29912bb355f1e','static_countries',214,'cn_currency_uid','','','',0,0,0,'static_currencies',9,''),('fbcbbcb809dcd2dd8d39e3623bf28ad0','static_countries',220,'cn_country_zones','','','',14,0,0,'static_country_zones',23,''),('fbd16fc20f8d990c5ec8f404cabe95b7','static_countries',74,'cn_country_zones','','','',25,0,0,'static_country_zones',356,''),('fc14bba8b063055f447d1d3c68ffcdfd','static_countries',187,'cn_currency_uid','','','',0,0,0,'static_currencies',132,''),('fc39375e09ce8ffa12500614625f2087','static_countries',44,'cn_parent_territory_uid','','','',0,0,0,'static_territories',16,''),('fc6acc3bbaafa2e0c815099041f6218d','tt_content',67,'header_link','','typolink','215d1a6322e8ef6e884ea04ac19b3a31:0',-1,1,0,'_STRING',0,'t3://page?uid=25'),('fc8dea2e08826f1253df8f0b895b291d','static_countries',174,'cn_currency_uid','','','',0,0,0,'static_currencies',49,''),('fccf3a595b494d6f332392028eb7514b','static_countries',220,'cn_country_zones','','','',44,0,0,'static_country_zones',56,''),('fd00450712dec41d0289992bfb743b2e','static_countries',72,'cn_country_zones','','','',63,0,0,'static_country_zones',601,''),('fd15f115839825773099e223d5b7abe7','sys_file_metadata',13,'file','','','',0,0,0,'sys_file',13,''),('fd2957e8c28be3c9ae62ec33307c227b','static_countries',212,'cn_parent_territory_uid','','','',0,0,0,'static_territories',9,''),('fd9c16dff6d7e8d211fa782416a5a25d','static_countries',90,'cn_currency_uid','','','',0,0,0,'static_currencies',60,''),('fdbd70ba7645b3490c424ab755512936','static_countries',170,'cn_country_zones','','','',0,0,0,'static_country_zones',673,''),('fddb28f294b2bb74f2b4ab3d989ddba5','sys_file_metadata',24,'file','','','',0,0,0,'sys_file',24,''),('fe07357d5f35de426a331991d923f530','static_countries',146,'cn_parent_territory_uid','','','',0,0,0,'static_territories',30,''),('fe14a9b06745e4a1ad0b343741027b6e','tx_rkwprojects_domain_model_projects',3,'project_pid','','typolink','42d2e27fb5fed53719221164a3ccb49a:0',-1,0,0,'_STRING',0,'t3://page?uid=27'),('fe151da243eaaefe3170f41b1c20b3cc','tx_rkwevents_domain_model_event',4,'department','','','',0,0,0,'tx_rkwbasics_domain_model_department',1,''),('fe1c2534ea613804d0ac62d3fdb6f11f','static_countries',218,'cn_currency_uid','','','',0,0,0,'static_currencies',154,''),('fe26869d3636f52d42585aa2e40ba6da','static_countries',148,'cn_country_zones','','','',6,0,0,'static_country_zones',188,''),('fe7d8b0e6ac1c4ade1d08f873020865e','static_countries',72,'cn_country_zones','','','',57,0,0,'static_country_zones',629,''),('fe881627bf03ffd94cce98947d3b5e78','static_countries',65,'cn_country_zones','','','',50,0,0,'static_country_zones',179,''),('fe9487aa95a8293f267741477366c786','sys_file_reference',28,'uid_local','','','',0,1,0,'sys_file',18,''),('feadbd4ca25255e197ff78db082a276a','static_countries',148,'cn_country_zones','','','',28,0,0,'static_country_zones',210,''),('feb784f56faa23879e0d48d9de702675','static_countries',104,'cn_country_zones','','','',63,0,0,'static_country_zones',283,''),('fef17ce45955f24b87a68ef0ed93b1f3','static_countries',74,'cn_country_zones','','','',101,0,0,'static_country_zones',436,''),('ff0a9ca5f364b75bccb699b74d167c83','sys_file',21,'metadata','','','',0,0,0,'sys_file_metadata',21,''),('ff2296dadc523d4df5948bb4cb3764d2','static_countries',104,'cn_country_zones','','','',6,0,0,'static_country_zones',229,''),('ff7a738a5de6689543f9f613005c5ff5','tt_content',133,'image','','','',0,0,0,'sys_file_reference',90,''),('ffae6646e37f636bad45e4f288715ba7','tx_rkwevents_domain_model_event',2,'organizer','','','',0,0,0,'tx_rkwevents_domain_model_eventorganizer',1,''),('ffc9023e126f7dcdba0ea8cfcd09f979','static_countries',74,'cn_country_zones','','','',24,0,0,'static_country_zones',346,''),('ffee38ae9b16ef34767291bac98c09b6','sys_file_metadata',20,'file','','','',0,0,0,'sys_file',20,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AccessRightParametersUpdate',_binary 'i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageIsoCodeUpdate',_binary 'i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PageShortcutParentUpdate',_binary 'i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateShortcutUrlsAgainUpdate',_binary 'i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ProcessedFileChecksumUpdate',_binary 'i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FilesReplacePermissionUpdate',_binary 'i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TableFlexFormToTtContentFieldsUpdate',_binary 'i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileListInAccessModuleListUpdate',_binary 'i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileListIsStartModuleUpdate',_binary 'i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WorkspacesNotificationSettingsUpdate',_binary 'i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateMediaToAssetsForTextMediaCe',_binary 'i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility6ExtractionUpdate',_binary 'i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\OpenidExtractionUpdate',_binary 'i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ExtensionManagerTables',_binary 'i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry',_binary 'i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate',_binary 'i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard',_binary 'i:1;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseRowsUpdateWizard',_binary 'i:1;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\CommandLineBackendUserRemovalUpdate',_binary 'i:1;'),(20,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField',_binary 'i:1;'),(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate',_binary 'i:1;'),(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate',_binary 'i:1;'),(23,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate',_binary 'i:1;'),(24,'installUpdate','TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate',_binary 'i:1;'),(25,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateCscStaticTemplateUpdate',_binary 'i:1;'),(26,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate',_binary 'i:1;'),(27,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileReferenceUpdate',_binary 'i:1;'),(28,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate',_binary 'i:1;'),(29,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate',_binary 'i:1;'),(30,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate',_binary 'i:1;'),(31,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate',_binary 'i:1;'),(32,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageSortingUpdate',_binary 'i:1;'),(33,'installUpdate','TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate',_binary 'i:1;'),(34,'core','formProtectionSessionToken:1',_binary 's:64:\"efe4339e352772b82d8a74028811da9ef384ead2353c82fb6d9f26d574da9248\";'),(35,'extensionDataImport','typo3conf/ext/hgon/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(36,'extensionDataImport','typo3/sysext/filemetadata/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(37,'extensionDataImport','typo3conf/ext/rkw_basics/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(38,'extensionDataImport','typo3conf/ext/hgon_basic/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(39,'extensionDataImport','typo3conf/ext/hgon_donation/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(40,'extensionDataImport','typo3conf/ext/static_info_tables/ext_tables_static+adt.sql',_binary 's:32:\"3bb023dd06e659a6151b3dd51a3d6630\";'),(41,'extensionDataImport','typo3conf/ext/rkw_mailer/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(42,'extensionDataImport','typo3conf/ext/rkw_registration/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(43,'extensionDataImport','typo3conf/ext/rkw_survey/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(44,'extensionDataImport','typo3conf/ext/rkw_events/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(45,'extensionDataImport','typo3conf/ext/rkw_geolocation/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(46,'extensionDataImport','typo3conf/ext/pb_social/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(47,'extensionDataImport','typo3conf/ext/yoast_seo/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(48,'tx_realurl','updateLevel',_binary 'i:4;'),(51,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseCharsetUpdate',_binary 'i:1;'),(52,'extensionDataImport','typo3/sysext/rte_ckeditor/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(53,'extensionDataImport','typo3/sysext/fluid_styled_content/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(54,'extensionDataImport','typo3conf/ext/gridelements/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(55,'TYPO3\\CMS\\Lang','de',_binary 'i:1555662962;'),(56,'extensionDataImport','typo3/sysext/form/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(57,'core','formProtectionSessionToken:3',_binary 's:64:\"6e072b3f585a5d58ca9e6732d58066777b1648422b45f6202a68fcb14a87c60c\";'),(59,'extensionDataImport','typo3/sysext/setup/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(60,'extensionDataImport','typo3conf/ext/hgon_template/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(61,'extensionDataImport','typo3conf/ext/rkw_authors/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(62,'extensionDataImport','typo3conf/ext/rkw_projects/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(63,'extensionDataImport','typo3conf/ext/hgon_workgroup/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(64,'extensionDataImport','typo3conf/ext/typoscript_rendering/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(65,'extensionDataImport','typo3conf/ext/vhs/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(66,'extensionDataImport','typo3conf/ext/news/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(67,'core','sys_refindex_lastUpdate',_binary 'i:1562682232;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clear` smallint(5) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8_unicode_ci,
  `constants` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci,
  `nextLevel` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `basedOn` tinytext COLLATE utf8_unicode_ci,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1562083133,256,1548425685,1,'Hgon Template','',0,0,0,1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:form/Configuration/TypoScript/,EXT:hgon_template/Configuration/TypoScript','','config {\r\ncontentObjectExceptionHandler >\r\n}\r\n\r\npage.config.contentObjectExceptionHandler = 0\r\n\r\npage.config.no_cache = 1\r\n\r\n# Default PAGE object:\r\n#page = PAGE\r\n#page.10 = TEXT\r\n#page.10.value = HELLO WORLD!\r\n','',NULL,'',0,0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_workspace`
--

DROP TABLE IF EXISTS `sys_workspace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_workspace` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `adminusers` varchar(4000) NOT NULL DEFAULT '',
  `members` varchar(4000) NOT NULL DEFAULT '',
  `reviewers` varchar(4000) NOT NULL DEFAULT '',
  `db_mountpoints` varchar(255) NOT NULL DEFAULT '',
  `file_mountpoints` varchar(255) NOT NULL DEFAULT '',
  `publish_time` int(11) NOT NULL DEFAULT '0',
  `unpublish_time` int(11) NOT NULL DEFAULT '0',
  `freeze` smallint(6) NOT NULL DEFAULT '0',
  `live_edit` smallint(6) NOT NULL DEFAULT '0',
  `vtypes` smallint(6) NOT NULL DEFAULT '0',
  `swap_modes` smallint(6) NOT NULL DEFAULT '0',
  `publish_access` smallint(6) NOT NULL DEFAULT '0',
  `custom_stages` int(11) NOT NULL DEFAULT '0',
  `stagechg_notification` smallint(6) NOT NULL DEFAULT '0',
  `edit_notification_mode` tinyint(3) NOT NULL DEFAULT '0',
  `edit_notification_defaults` varchar(255) NOT NULL DEFAULT '',
  `edit_notification_preselection` smallint(6) NOT NULL DEFAULT '3',
  `edit_allow_notificaton_settings` smallint(6) NOT NULL DEFAULT '0',
  `publish_notification_mode` tinyint(3) NOT NULL DEFAULT '0',
  `publish_notification_defaults` varchar(255) NOT NULL DEFAULT '',
  `publish_notification_preselection` smallint(6) NOT NULL DEFAULT '3',
  `publish_allow_notificaton_settings` smallint(6) NOT NULL DEFAULT '0',
  `execute_notification_mode` tinyint(3) NOT NULL DEFAULT '0',
  `execute_notification_defaults` varchar(255) NOT NULL DEFAULT '',
  `execute_notification_preselection` smallint(6) NOT NULL DEFAULT '3',
  `execute_allow_notificaton_settings` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_workspace`
--

LOCK TABLES `sys_workspace` WRITE;
/*!40000 ALTER TABLE `sys_workspace` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_workspace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_workspace_stage`
--

DROP TABLE IF EXISTS `sys_workspace_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_workspace_stage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `responsible_persons` varchar(255) NOT NULL DEFAULT '',
  `default_mailcomment` text,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `parenttable` tinytext NOT NULL,
  `notification_mode` tinyint(3) NOT NULL DEFAULT '0',
  `notification_defaults` varchar(255) NOT NULL DEFAULT '',
  `allow_notificaton_settings` smallint(6) NOT NULL DEFAULT '0',
  `notification_preselection` smallint(6) NOT NULL DEFAULT '8',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_workspace_stage`
--

LOCK TABLES `sys_workspace_stage` WRITE;
/*!40000 ALTER TABLE `sys_workspace_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_workspace_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rowDescription` text COLLATE utf8_unicode_ci,
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assets` int(10) unsigned NOT NULL DEFAULT '0',
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `frame_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8_unicode_ci,
  `pages` text COLLATE utf8_unicode_ci,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(10) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_unicode_ci,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `selected_categories` text COLLATE utf8_unicode_ci,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_rkwbasics_images_no_copyright` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_rkwbasics_bodytext_mobile` text COLLATE utf8_unicode_ci NOT NULL,
  `tx_rkwbasics_header_link_caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `select_key` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagecaption_position` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_compression` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_effects` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_noRows` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `longdescURL` text COLLATE utf8_unicode_ci,
  `section_frame` int(11) unsigned NOT NULL DEFAULT '0',
  `table_bgColor` int(11) unsigned NOT NULL DEFAULT '0',
  `table_border` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellpadding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellspacing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `backupColPos` smallint(6) NOT NULL DEFAULT '-2',
  `tx_gridelements_backend_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_gridelements_children` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_container` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_columns` int(11) NOT NULL DEFAULT '0',
  `tx_news_related_news` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `gridelements` (`tx_gridelements_container`,`tx_gridelements_columns`),
  KEY `index_newscontent` (`tx_news_related_news`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1556179179,1548426354,1,0,1,1000000000,'text','Test :)','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(2,1,0,0,0,'',0,0,0,0,0,0,1556179172,1548427565,1,0,1,1000000000,'text','Mouh','','','<p>Cow</p>',0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,30,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(3,6,0,0,0,'',0,0,0,0,0,0,1550737219,1548687904,1,0,1,7424,'textpic','Artenschutz und Prädation','','','<p>Die Natur ist kein Streichelzoo. Vom putzigen Rotkehlchen bis zum majestätischen Rotmilan: Alle Vogelarten erbeuten andere Tiere und können selbst Beute werden. Uns ist das bewusst. Aber in Zeiten, in denen immer weniger Menschen Kontakt zur Natur haben und viele Arten am Rand des Aussterbens stehen, ist der Verlust eines, mitunter sorgsam gehegten Individuums für manche Zeitgenossen schwer zu ertragen.</p>',0,0,0,0,1,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(4,6,0,0,0,'',0,0,0,0,0,0,1548862286,1548778423,1,0,0,1000000000,'hgon_textPicImageLeft','Hallou :)','',NULL,NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:16:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:32:\"tx_rkwbasics_header_link_caption\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(5,6,0,0,0,'',0,0,0,0,0,0,1548862676,1548862576,1,0,0,1000000000,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','rkwevents_pi1',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(6,1,0,0,0,'',0,0,0,0,0,0,1557760293,1548862748,1,0,0,1000000000,'text','Eine Stime für unsere Umwelt','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',0,0,0,0,0,0,0,2,0,0,12,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'UNSERE MISSION','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(7,1,0,0,0,'',0,0,0,0,0,0,1562146553,1550756768,3,0,1,1000000000,'text','Lorem Ipsum','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',0,0,0,0,0,0,0,2,0,0,12,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'Unsere Projekte','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(8,32,0,0,0,'',0,0,0,0,0,0,1554798743,1550761378,3,0,0,1000000000,'image','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,30,'','','https://dummyimage.com/1680x600/333333/fff.png',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(9,6,0,0,0,'',0,0,0,0,0,0,1562141960,1551454062,3,0,1,7168,'textpic','Besonders stolz sind wir auf unsere 24 HGON-Arbeitskreise, die sich mit Herz und Seele um den Natur- und Artenschutz in Hessen kümmern.','','','',0,0,0,0,1,0,0,1,0,0,13,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'Oliver Conz, Vorstandsvorsitzender','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(10,6,0,0,0,'',0,0,0,0,0,0,1552384873,1551877821,3,0,1,6656,'text','Mitmachen 111','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,0,0,0,2,0,0,11,'default',0,0,0,0,'','',NULL,NULL,0,0,90,'So können Sie uns unterstützen','','',0,'20','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(11,6,0,0,0,'',0,0,0,0,0,0,1551882725,1551881745,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,90,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"flexcols\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"advanced\">\n            <language index=\"lDEF\">\n                <field index=\"justifyContent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'2Columns',0,0,0,0),(12,6,0,0,0,'',0,0,0,0,0,0,1552384877,1551882815,3,0,1,6912,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,50,'default',0,0,0,0,'','',NULL,NULL,0,0,90,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'3Columns',3,0,0,0),(13,1,0,0,0,'',0,0,0,0,0,0,1562147224,1551882837,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','t3://page?uid=3',0,'21','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:33:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,12,10,0),(14,1,0,0,0,'',0,0,0,0,0,0,1562147217,1551882853,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','t3://page?uid=2',0,'21','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:33:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,12,20,0),(15,1,0,0,0,'',0,0,0,0,0,0,1562147209,1551882992,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','t3://page?uid=4',0,'21','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:33:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,12,30,0),(16,1,0,0,0,'',0,0,0,0,0,0,1562147436,1551949727,3,0,1,30,'textmedia','','','',NULL,0,0,0,2,2,0,0,2,0,0,60,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'Slider',2,0,0,0),(17,6,0,0,0,'',0,0,0,0,0,0,1551951204,1551950345,3,0,0,1000000000,'text','Lalala :)','','','<p>Default text</p>',0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(18,6,0,0,0,'',0,0,0,0,0,0,1551951495,1551951140,3,0,0,1000000000,'textmedia','','','','',0,0,0,1,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,16,10,0),(19,6,0,0,0,'',0,0,0,0,0,0,1551951501,1551951186,3,0,0,1000000000,'textmedia','','','','',0,0,0,1,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,16,10,0),(20,1,0,0,0,'',0,0,0,0,0,0,1562147173,1551951522,3,0,0,1000000000,'textpic','Greifvögel in Hessen','','','<p>Majestätisch gleiten sie durch die Lüfte. Ihr Körperbau macht sie zu perfekten Fliegern. Ihr Sehvermögern macht aus den Flugkünstlern bestechende Jäger. Anmut und Kraft der Greifvögel faszinieren die Menschen seit jeher. Aber Greifvögel haben nicht nur Freunde.</p>',0,0,0,0,1,0,0,2,0,0,20,'none',1,0,0,0,'','',NULL,NULL,0,0,0,'Projekt im Kreis Gross-Gerau','','',0,'21','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,16,10,0),(21,1,0,0,0,'',0,0,0,0,0,0,1562147163,1552041838,3,0,0,1000000000,'textpic','fdsfsdf','','','<p>fsdfsdf</p>',0,0,0,0,1,0,0,2,0,0,20,'none',1,0,0,0,'','',NULL,NULL,0,0,0,'ffffffff','','',0,'21','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,16,10,0),(22,1,0,0,0,'',0,0,0,0,0,0,1556208562,1552123851,3,0,0,1000000000,'textpic','Artenschutz und Prädation','','','<p>Die Natur ist kein Streichelzoo. Vom putzigen Rotkehlchen bis zum majestätischen Rotmilan: Alle Vogelarten erbeuten andere Tiere und können selbst Beute werden. Uns ist das bewusst. Aber in Zeiten, in denen immer weniger Menschen Kontakt zur Natur haben und viele Arten am Rand des Aussterbens stehen, ist der Verlust eines, mitunter sorgsam gehegten Individuums für manche Zeitgenossen schwer zu ertragen.</p>\r\n<p><a class=\"btn btn--primary btn--rounded\" href=\"t3://page?uid=24\" title=\"Testlink :)\">Hier lang lalala :)</a></p>',0,0,0,0,1,0,0,2,0,0,25,'none',1,0,0,0,'','',NULL,NULL,0,0,0,'Entdecken','','t3://page?uid=5 - - \"Mehr lesen\"',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:33:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,29,10,0),(23,6,0,0,0,'',0,0,0,0,0,0,1552132461,1552128217,3,0,0,1000000000,'menu_section_pages','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,24,10,0),(24,6,0,0,0,'',0,0,0,0,0,0,1552132461,1552130604,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"type\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'Container',1,0,0,0),(25,6,0,0,0,'',0,0,0,0,0,0,1552134908,1552132490,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"type\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:32:\"tx_rkwbasics_header_link_caption\";N;s:30:\"tx_gridelements_backend_layout\";N;s:11:\"pi_flexform\";N;s:24:\"tx_gridelements_children\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:5:\"media\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'Container',1,0,0,0),(26,6,0,0,0,'',0,0,0,0,0,0,1552134908,1552132515,3,0,0,1000000000,'textpic','Mih mah muh :)','','','',0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,25,10,0),(27,6,0,0,0,'',0,0,0,0,0,0,1552135779,1552134957,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"insert_cols\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"isMainContent\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:32:\"tx_rkwbasics_header_link_caption\";N;s:30:\"tx_gridelements_backend_layout\";N;s:11:\"pi_flexform\";N;s:24:\"tx_gridelements_children\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:5:\"media\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'Container',0,0,0,0),(28,1,0,0,0,'',0,0,0,0,0,0,1556208562,1552135792,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"isMainContent\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'Container',3,0,0,0),(29,1,0,0,0,'',0,0,0,0,0,0,1556208562,1552313964,3,0,1,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"flexcols\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"containerType\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'2Columns',2,28,10,0),(30,1,0,0,0,'',0,0,0,0,0,0,1556208562,1552314039,3,0,0,1000000000,'menu_sitemap_pages','Weitere Inhalte','','',NULL,0,0,0,0,0,0,0,2,0,0,50,'default',1,0,0,0,'','',NULL,'2',0,0,0,'','','',0,'60','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:29:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,29,20,0),(31,1,0,0,0,'',0,0,0,0,0,0,1556208562,1552317950,3,0,1,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"flexcols\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"containerType\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'2Columns',2,28,10,0),(32,1,0,0,0,'',0,0,0,0,0,0,1556208562,1552318221,3,0,0,1000000000,'textpic','Begeisterung und Kompetenz','','','<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,26,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'ÜBER DEN VEREIN','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:33:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,31,10,0),(33,1,0,0,0,'',0,0,0,0,0,0,1556208562,1552318373,3,0,0,1000000000,'menu_sitemap_pages','Weitere Inhalte','','',NULL,0,0,0,0,0,0,0,2,0,0,51,'default',1,0,0,0,'','',NULL,'',0,0,0,'','','',0,'60','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:29:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:5:\"pages\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:19:\"accessibility_title\";N;s:20:\"accessibility_bypass\";N;s:25:\"accessibility_bypass_text\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,31,20,0),(34,1,0,0,0,'',0,0,0,0,0,0,1557750026,1552318760,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"isMainContent\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'Container',0,0,0,0),(35,6,0,0,0,'',0,0,0,0,0,0,1552319794,1552318901,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"isMainContent\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'Container',0,0,0,0),(36,1,0,0,0,'',0,0,0,0,0,0,1557752398,1552321301,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"flexcols\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"containerType\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:32:\"tx_rkwbasics_header_link_caption\";N;s:30:\"tx_gridelements_backend_layout\";N;s:11:\"pi_flexform\";N;s:24:\"tx_gridelements_children\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:5:\"media\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'2Columns',1,0,0,0),(37,1,0,0,0,'',0,0,0,0,0,0,1557752398,1552321345,3,0,0,1000000000,'text','Mitmachen','','','<p>Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'VOR ORT','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,36,10,0),(38,1,0,0,0,'',0,0,0,0,0,0,1557749595,1552322830,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"isMainContent\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'Container',0,0,0,0),(39,1,0,0,0,'',0,0,0,0,0,0,1557760301,1552322856,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'3Columns',3,0,0,0),(40,1,0,0,0,'',0,0,0,0,0,0,1557760301,1552322966,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:32:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:23:\"tx_gridelements_columns\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,39,20,0),(41,6,0,0,0,'',0,0,0,0,0,0,1552324309,1552324280,3,0,0,1000000000,'textpic','','','','',0,0,0,0,1,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(42,1,0,0,0,'',0,0,0,0,0,10,1562147456,1552384849,3,0,1,1000000000,'text','So können Sie uns unterstützen','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,0,0,0,2,0,0,11,'default',1,0,0,0,'','','','',0,0,90,'Mitmachen','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(43,1,0,0,0,'',0,0,0,0,0,15,1562147181,1552384886,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','','','',0,0,0,'','','t3://page?uid=4',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:33:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,46,30,0),(44,1,0,0,0,'',0,0,0,0,0,14,1562147192,1552384886,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','','','',0,0,0,'','','t3://page?uid=2',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:33:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,46,20,0),(45,1,0,0,0,'',0,0,0,0,0,13,1562147200,1552384886,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','','','',0,0,0,'','','t3://page?uid=3',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:33:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,46,10,0),(46,1,0,0,0,'',0,0,0,0,0,12,1562147447,1552384886,3,0,1,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,50,'default',1,0,0,0,'','','','',0,0,90,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'3Columns',3,0,0,0),(47,2,0,0,0,'',0,0,0,0,0,0,1552473685,1552388658,3,0,1,256,'text','HGON','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>',0,0,0,0,0,0,0,2,0,0,11,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'Über unseren Verein','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,30,'0',0,0,0,0),(48,2,0,0,0,'',0,0,0,0,0,0,1552404649,1552389069,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"flexcols\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"containerType\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'2Columns',0,0,0,0),(49,24,0,0,0,'',0,0,0,0,0,0,1552483145,1552403318,3,0,1,1000000000,'textpic','Lalala','','','<p>Lililil :)</p>',0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,30,'','','',0,'0','',1,0,NULL,0,'','',1552345200,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(50,1,0,0,0,'',0,0,0,0,0,0,1562242573,1552404230,3,0,0,1536,'textmedia','SPENDENKONTO NATURSCHUTZ','','','<p>Sparkasse Oberhessen <strong> </strong><br /> <strong>BIC</strong>&nbsp;HELADEF1FRI<strong> </strong><br /> <strong>IBAN</strong>&nbsp;DE07 5185 0079 0085 0026 94</p>',0,0,0,0,0,0,0,2,0,0,40,'none',0,0,0,0,'','',NULL,NULL,0,0,150,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(51,2,0,0,0,'',0,0,0,0,0,0,1552404626,1552404578,3,0,0,1000000000,'header','Mouh :)','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,150,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(52,2,0,0,0,'',0,0,0,0,0,0,1552483251,1552404710,3,0,1,128,'text','','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Es waren begeisterte Vogelbeobachter, die sich 1964 zusammenfanden, um ihr Wissen über die hessische Vogelwelt auszutauschen. Dramatische Bestandseinbrüche vieler Arten ließen sie nicht ruhen.</p>\r\n<p>1972 gründeten sie einen Naturschutzverband mit starkem wissenschaftlichen Fundament, die HGON.</p>\r\n<p>Zum Wappenvogel wählten die Gründer den damals vom Aussterben bedrohten Graureiher. Sie setzten sich für ein Ende der Bejagung und den Schutz seiner Brutkolonien ein. Heute hat sich sein Bestand versechsfacht und der beeindruckende Vogel bevölkert wieder alle hessischen Landschaften.</p>\r\n<p>Begeisterung für die Natur, Kompetenz in der Sache und Beharrlichkeit in der Auseinandersetzung sind seitdem zu einem Markenzeichen für die Arbeit der HGON geworden.</p>\r\n<p>Die Natur braucht diese starke Stimme auch in Zukunft. Darum:&nbsp;schließen Sie sich uns an oder helfen Sie uns mit Ihrer Spende!</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'Zur Geschichte unseres Vereins','','',0,'20','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(53,2,0,0,0,'',0,0,0,0,0,0,1552483254,1552404854,3,0,1,192,'text','','','','<p>Sie fragen sich, wofür wir uns seit Jahren in unserer täglichen Arbeit einsetzen? Mit diesem Film möchten wir Ihnen die Motivation für unser unermüdliches Engagement näher bringen.</p>\r\n\r\n<p>Click to load the video</p>\r\n<p>Please enable JavaScript to watch the video</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'Unser Auftrag unsere Erfolge','','',0,'20','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(54,1,0,0,0,'',0,0,0,0,0,40,1557760301,1552405597,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet (copy 1)','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','','','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,39,10,0),(55,1,0,0,0,'',0,0,0,0,0,40,1557760301,1552405606,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet (copy 2)','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','','','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,39,30,0),(56,1,0,0,0,'',0,0,0,0,0,0,1558529890,1552408190,3,0,1,1000000000,'textpic','DEIN ANSPRECHPARTNER','','','<p>Vorstandvorsitzender</p>',0,0,0,0,1,0,26,2,0,0,41,'none',1,0,0,0,'','',NULL,NULL,0,0,150,'Oliver Conz ','','mailto:info@hgon.de',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'<p>&nbsp;+49 (0)6008-1803 &nbsp;</p>','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(57,1,0,0,0,'',0,0,0,0,0,0,1562242619,1552408229,3,0,0,2560,'textmedia','INFO','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>',0,0,0,0,0,0,0,2,0,0,42,'default',0,0,0,0,'','',NULL,NULL,0,0,150,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(58,2,0,0,0,'',0,0,0,0,0,0,1552483248,1552408880,3,0,1,64,'text','Seiten Test','','','<p>Ein nicht vererbtes Seitenelement :)</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,140,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(59,2,0,0,0,'',0,0,0,0,0,0,1552483245,1552467947,3,0,1,32,'textpic','','','','',0,0,0,0,1,0,0,1,0,0,30,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,30,'0',0,0,0,0),(60,24,0,0,0,'',0,0,0,0,0,0,1553097063,1552483182,3,0,0,256,'text','Über unseren Verein','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>',0,0,0,0,0,0,0,2,0,0,11,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'HGON','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,30,'0',0,0,0,0),(61,24,0,0,0,'',0,0,0,0,0,0,1557842555,1552483211,3,0,1,128,'text','Zur Geschichte unseres Vereins','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Es waren begeisterte Vogelbeobachter, die sich 1964 zusammenfanden, um ihr Wissen über die hessische Vogelwelt auszutauschen. Dramatische Bestandseinbrüche vieler Arten ließen sie nicht ruhen.</p>\r\n<p>1972 gründeten sie einen Naturschutzverband mit starkem wissenschaftlichen Fundament, die HGON.</p>\r\n<p>Zum Wappenvogel wählten die Gründer den damals vom Aussterben bedrohten Graureiher. Sie setzten sich für ein Ende der Bejagung und den Schutz seiner Brutkolonien ein. Heute hat sich sein Bestand versechsfacht und der beeindruckende Vogel bevölkert wieder alle hessischen Landschaften.</p>\r\n<p>Begeisterung für die Natur, Kompetenz in der Sache und Beharrlichkeit in der Auseinandersetzung sind seitdem zu einem Markenzeichen für die Arbeit der HGON geworden.</p>\r\n<p>Die Natur braucht diese starke Stimme auch in Zukunft. Darum:&nbsp;schließen Sie sich uns an oder helfen Sie uns mit Ihrer Spende!</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'20','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(62,24,0,0,0,'',0,0,0,0,0,0,1552483231,1552483231,3,0,0,64,'text','Seiten Test','','','<p>Ein nicht vererbtes Seitenelement :)</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,140,'0',0,0,0,0),(63,26,0,0,0,'',0,0,0,0,0,0,1555943019,1552489057,3,0,0,1792,'textpic','Über unseren Verein','','','',0,0,0,0,1,0,0,2,0,0,31,'default',0,0,0,0,'','',NULL,NULL,0,0,30,'hgon','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:32:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(64,1,0,0,0,'',0,0,0,0,0,0,1553005074,1553000803,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,90,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"isMainContent\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'Container',0,0,0,0),(65,1,0,0,0,'',0,0,0,0,0,0,1562146957,1553008804,3,0,0,1792,'textmedia','Schutz der Artenvielfalt und ihrer Lebensräume in Hessen','','','',0,0,0,2,2,0,0,8,0,0,30,'default',0,0,0,0,'','',NULL,NULL,0,0,30,'Worauf es ankommt','','t3://page?uid=27 - - \"Mehr erfahren\"',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"assets\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(66,6,0,0,0,'',0,0,0,0,0,0,1553074608,1553073799,3,0,0,1000000000,'image','','','',NULL,0,0,0,0,1,1440,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,30,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(67,6,0,0,0,'',0,0,0,0,0,0,1553091493,1553091238,3,0,0,1000000000,'header','Header','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','t3://page?uid=25 Muh - \"Mein Testlink\"',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(68,26,0,0,0,'',0,0,0,0,0,0,1557849253,1553163028,3,0,1,1536,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"flexcols\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"containerType\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'2Columns',2,0,0,0),(69,26,0,0,0,'',0,0,0,0,0,0,1553163772,1553163590,3,0,0,1280,'text','Vögel in Hessen','','','<p>Das Standardwerk über die hessische Vogelwelt! – Mit mehr als 500 Seiten!</p>\r\n<p>eine Doppelseite pro Brutvogelart 	aktuelle, bislang unveröffentlichte Verbreitungskarten aus dem ADEBAR-Projekt 	übersichtliche Informationen zu Phänologie, Häufigkeit und Verbreitung 	faszinierende Bilder von Europas besten Fotografen 	spannende Sonderkapitel</p>\r\n<p>t3://page?uid=5 </p>\r\n<p>t3://page?uid=27</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'Die Brutvögel Hessens in Raum und Zeit – Brutvogelatlas','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,68,10,0),(70,26,0,0,0,'',0,0,0,0,0,0,1553163772,1553163655,3,0,0,1024,'image','','','',NULL,0,0,0,0,1,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,68,20,0),(71,27,0,0,0,'',0,0,0,0,0,0,1555422642,1553173017,3,0,0,4608,'text','Lernen Sie unsere Arbeit kennen','','','',0,0,0,0,0,0,0,2,0,0,11,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'UNSERE ARBEIT','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,30,'0',0,0,0,0),(72,27,0,0,0,'',0,0,0,0,0,0,1557909564,1553173286,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'4Columns',4,78,10,0),(73,27,0,0,0,'',0,0,0,0,0,0,1557909564,1553173535,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'TAGLINE','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,72,10,0),(74,27,0,0,0,'',0,0,0,0,0,73,1557909564,1553173701,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet (copy 1)','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','','','',0,0,0,'TAGLINE','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,72,20,0),(75,27,0,0,0,'',0,0,0,0,0,73,1557909564,1553173706,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet (copy 2)','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','','','',0,0,0,'TAGLINE','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,72,30,0),(76,27,0,0,0,'',0,0,0,0,0,73,1557909564,1553173716,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet (copy 3)','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,14,'default',1,0,0,0,'','','','',0,0,0,'TAGLINE','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,72,40,0),(77,27,0,0,0,'',0,0,0,0,0,0,1557909564,1553174405,3,0,0,1000000000,'text','Unsere Arbeit mit Vögeln','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',0,0,0,0,0,0,0,2,0,0,0,'none',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'20','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,78,10,0),(78,27,0,0,0,'',0,0,0,0,0,0,1557909564,1553174798,3,0,1,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"isMainContent\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'Container',3,0,0,0),(79,27,0,0,0,'',0,0,0,0,0,0,1557909564,1553177791,3,0,0,1000000000,'gridelements_pi1','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'2ColumnsVertical',2,78,10,0),(80,27,0,0,0,'',0,0,0,0,0,0,1557909564,1553178130,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,15,'none',1,0,0,0,'','',NULL,NULL,0,0,0,'','','t3://page?uid=5',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:33:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,79,10,0),(81,27,0,0,0,'',0,0,0,0,0,80,1557909564,1553178612,3,0,0,1000000000,'textpic','Lorem ipsum dolor sit amet (copy 4)','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>',0,0,0,0,1,0,0,2,0,0,15,'none',1,0,0,0,'','','','',0,0,0,'','','t3://page?uid=5',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,79,20,0),(82,24,0,0,0,'',0,0,0,0,0,0,1557842553,1553608248,3,0,1,192,'textpic','','','','',0,0,0,0,3,0,0,2,0,0,61,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(83,1,0,0,0,'',0,0,0,0,0,0,1562147071,1554388875,3,0,0,1000000000,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,'',0,0,1,'','','',0,'0','rkwevents_upcoming',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(84,3,0,0,0,'',0,0,0,0,0,0,1554459687,1554459524,3,0,0,256,'textpic','Veranstaltungen','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>',0,0,0,0,1,0,0,2,0,0,31,'none',0,0,0,0,'','',NULL,NULL,0,0,30,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:32:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(85,3,0,0,0,'',0,0,0,0,0,0,1554715111,1554459772,3,0,0,1000000000,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','rkwevents_pi1',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">Event-&gt;list;Event-&gt;myEvents;Event-&gt;show;Event-&gt;showSheet;EventReservation-&gt;show;EventReservation-&gt;new;EventReservation-&gt;optIn;EventReservation-&gt;create;EventReservation-&gt;edit;EventReservation-&gt;update;EventReservation-&gt;delete</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:28:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(86,3,0,0,0,'',0,0,0,0,0,0,1554715180,1554715123,3,0,0,1000000000,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',1,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','rkwevents_pi1',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">Event-&gt;list;Event-&gt;myEvents;Event-&gt;show;Event-&gt;showSheet;EventReservation-&gt;show;EventReservation-&gt;new;EventReservation-&gt;optIn;EventReservation-&gt;create;EventReservation-&gt;edit;EventReservation-&gt;update;EventReservation-&gt;delete</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:28:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(87,3,0,0,0,'',0,0,0,0,0,0,1554715192,1554715191,3,0,0,128,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','rkwevents_pi1',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">Event-&gt;list;Event-&gt;myEvents;Event-&gt;show;Event-&gt;showSheet;EventReservation-&gt;show;EventReservation-&gt;new;EventReservation-&gt;optIn;EventReservation-&gt;create;EventReservation-&gt;edit;EventReservation-&gt;update;EventReservation-&gt;delete</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:28:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(88,32,0,0,0,'',0,0,0,0,0,0,1555422870,1554798761,3,0,0,256,'text','Greifvögel in Hessen','','','<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong></p>\r\n<p>Es waren begeisterte Vogelbeobachter, die sich 1964 zusammenfanden, um ihr Wissen über die hessische Vogelwelt auszutauschen. Dramatische Bestandseinbrüche vieler Arten ließen sie nicht ruhen.</p>\r\n<p>1972 gründeten sie einen Naturschutzverband mit starkem wissenschaftlichen Fundament, die HGON.</p>\r\n<p>Zum Wappenvogel wählten die Gründer den damals vom Aussterben bedrohten Graureiher. Sie setzten sich für ein Ende der Bejagung und den Schutz seiner Brutkolonien ein. Heute hat sich sein Bestand versechsfacht und der beeindruckende Vogel bevölkert wieder alle hessischen Landschaften.</p>\r\n<p>Begeisterung für die Natur, Kompetenz in der Sache und Beharrlichkeit in der Auseinandersetzung sind seitdem zu einem Markenzeichen für die Arbeit der HGON geworden.</p>',0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'20','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(89,32,0,0,0,'',0,0,0,0,0,0,1554801252,1554801252,3,0,0,128,'textpic','Greifvogelschutz','','','',0,0,0,0,1,0,0,2,0,0,31,'none',0,0,0,0,'','',NULL,NULL,0,0,30,'Projekt','','',0,'0','',1,0,NULL,0,'','',1554760800,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(90,26,0,0,0,'',0,0,0,0,0,0,1556013742,1555423776,3,0,0,512,'text','Eine Überschrift','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'20','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(91,34,0,0,0,'',0,0,0,0,0,0,1555515471,1555514202,3,0,0,256,'text','Melden Sie sich bei uns','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>',0,0,0,0,0,0,0,2,0,0,11,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'Kontakt','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,30,'0',0,0,0,0),(92,34,0,0,0,'',0,0,0,0,0,0,1555667468,1555579331,3,0,0,128,'form_formframework','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">1:/user_upload/contactForm.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"b748301d8346abc801c3929c03443c5e\">\n            <language index=\"lDEF\">\n                <field index=\"settings.finishers.EmailToReceiver.subject\">\n                    <value index=\"vDEF\">Your message: {subject}</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.recipientAddress\">\n                    <value index=\"vDEF\">your.company@example.com</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.recipientName\">\n                    <value index=\"vDEF\">Your Company name</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.senderAddress\">\n                    <value index=\"vDEF\">{email}</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.senderName\">\n                    <value index=\"vDEF\">{name}</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.replyToAddress\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.carbonCopyAddress\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.blindCarbonCopyAddress\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.format\">\n                    <value index=\"vDEF\">html</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.translation.language\">\n                    <value index=\"vDEF\">default</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:32:\"tx_rkwbasics_header_link_caption\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(94,4,0,0,0,'',0,0,0,0,0,0,1555674916,1555674887,3,0,0,128,'text','Bird- und Faunanet','','',NULL,0,0,0,0,0,0,0,2,0,0,11,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'10','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,30,'0',0,0,0,0),(95,25,0,0,0,'',0,0,0,0,0,0,1562147774,1555942052,3,0,0,1000000000,'textpic','Über unseren Vereien','','','',0,0,0,0,1,0,0,2,0,0,31,'none',1,0,0,0,'','',NULL,NULL,0,0,0,'HGON','','',0,'0','',1,0,NULL,0,'','',1555884000,0,0,0,NULL,'',0,'',0,_binary 'a:32:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,30,'0',0,0,0,0),(96,25,0,0,0,'',0,0,0,0,0,0,1562147778,1555942393,3,0,0,128,'textmedia','Zur Geschichte unseres Vereins','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Es waren begeisterte Vogelbeobachter, die sich 1964 zusammenfanden, um ihr Wissen über die hessische Vogelwelt auszutauschen. Dramatische Bestandseinbrüche vieler Arten ließen sie nicht ruhen.</p>\r\n<p>1972 gründeten sie einen Naturschutzverband mit starkem wissenschaftlichen Fundament, die HGON.</p>\r\n<p>Zum Wappenvogel wählten die Gründer den damals vom Aussterben bedrohten Graureiher. Sie setzten sich für ein Ende der Bejagung und den Schutz seiner Brutkolonien ein. Heute hat sich sein Bestand versechsfacht und der beeindruckende Vogel bevölkert wieder alle hessischen Landschaften.</p>\r\n<p>Begeisterung für die Natur, Kompetenz in der Sache und Beharrlichkeit in der Auseinandersetzung sind seitdem zu einem Markenzeichen für die Arbeit der HGON geworden.</p>',0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'20','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(97,1,0,0,0,'',0,0,0,0,0,0,1559660359,1556186693,3,0,0,512,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'6',0,0,1,'','','',0,'0','hgontemplate_journalhighlight',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.journalHightlight.pid\">\n                    <value index=\"vDEF\">6</value>\n                </field>\n                <field index=\"settings.journalHighlight.pid\">\n                    <value index=\"vDEF\">6</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:9:\"recursive\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(98,1,0,0,0,'',0,0,0,0,0,0,1557826693,1556206556,3,0,0,544,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,1,'','','',0,'0','hgontemplate_pagehighlight',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.pageHighlight.pid\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:9:\"recursive\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,1,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(99,1,0,0,0,'',0,0,0,0,0,9,1557237820,1557236322,3,0,1,1000000000,'textpic','Besonders stolz sind wir auf unsere 24 HGON-Arbeitskreise, die sich mit Herz und Seele um den Natur- und Artenschutz in Hessen kümmern.','','','',0,0,0,0,1,0,0,1,0,0,13,'none',1,0,0,0,'','','','',0,0,2,'Oliver Conz, Vorstandsvorsitzender','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(100,1,0,0,0,'',0,0,0,0,0,9,1558511724,1557236350,3,0,1,1000000000,'textpic','Besonders stolz sind wir auf unsere 24 HGON-Arbeitskreise, die sich mit Herz und Seele um den Natur- und Artenschutz in Hessen kümmern. (Kopie 1)','','','',0,0,0,0,1,0,0,1,0,0,13,'none',1,0,0,0,'','','','',0,0,2,'Oliver Conz, Vorstandsvorsitzender','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:4:{s:6:\"colPos\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;s:16:\"sys_language_uid\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(101,1,0,0,0,'',0,0,0,0,0,0,1558450809,1557237847,3,0,0,64,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,2,'','','',0,'0','hgontemplate_randomauthor',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.randomAuthor.authorUidList\">\n                    <value index=\"vDEF\">1,2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:9:\"recursive\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(102,1,0,0,0,'',0,0,0,0,0,0,1562147498,1557308184,3,0,1,1000000000,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',1,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgonworkgroup_search',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.search.preHeader\">\n                    <value index=\"vDEF\">VOR ORT</value>\n                </field>\n                <field index=\"settings.search.header\">\n                    <value index=\"vDEF\">Mitmachen</value>\n                </field>\n                <field index=\"settings.search.text\">\n                    <value index=\"vDEF\">Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(103,8,0,0,0,'',0,0,0,0,0,0,1557326122,1557326067,3,0,0,256,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgonworkgroup_list',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(104,43,0,0,0,'',0,0,0,0,0,0,1557398266,1557398265,3,0,0,256,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgonworkgroup_list',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(105,6,0,0,0,'',0,0,0,0,0,0,1557406260,1557406239,3,0,0,3328,'text','Eine Überschrift','','',NULL,0,0,0,0,0,0,0,2,0,0,11,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,30,'0',0,0,0,0),(106,1,0,0,0,'',0,0,0,0,0,0,1562146584,1557757129,3,0,0,1000000000,'textmedia','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',1,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgontemplate_projectteaser',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.projectTeaser.preHeader\">\n                    <value index=\"vDEF\">UNSERE MISSION</value>\n                </field>\n                <field index=\"settings.projectTeaser.header\">\n                    <value index=\"vDEF\">Eine Stime für unsere Umwelt</value>\n                </field>\n                <field index=\"settings.projectTeaser.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </value>\n                </field>\n                <field index=\"settings.projectTeaser.random\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.projectTeaser.projectUidList\">\n                    <value index=\"vDEF\">1,3,2</value>\n                </field>\n                <field index=\"settings.projectTeaser.pidOverview\">\n                    <value index=\"vDEF\">24</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:9:\"recursive\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(107,27,0,0,0,'',0,0,0,0,0,0,1557907420,1557839866,3,0,1,512,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgontemplate_projectteaser',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.projectTeaser.preHeader\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.projectTeaser.header\">\n                    <value index=\"vDEF\">Unsere Arbeit mit Vögeln</value>\n                </field>\n                <field index=\"settings.projectTeaser.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </value>\n                </field>\n                <field index=\"settings.projectTeaser.random\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.projectTeaser.projectUidList\">\n                    <value index=\"vDEF\">1,2,3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(108,27,0,0,0,'',0,0,0,0,0,70,1557840571,1557840571,3,0,0,768,'image','','','',NULL,0,0,0,0,1,0,0,2,0,0,0,'default',0,0,0,0,'','','','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,110,20,0),(109,27,0,0,0,'',0,0,0,0,0,69,1557842016,1557840571,3,0,0,1024,'text','Vögel in Hessen','','','<p>Das Standardwerk über die hessische Vogelwelt! – Mit mehr als 500 Seiten!</p>\r\n<p>eine Doppelseite pro Brutvogelart aktuelle, bislang unveröffentlichte Verbreitungskarten aus dem ADEBAR-Projekt übersichtliche Informationen zu Phänologie, Häufigkeit und Verbreitung faszinierende Bilder von Europas besten Fotografen spannende Sonderkapitel</p>\r\n<p>t3://page?uid=5</p>\r\n<p>t3://page?uid=27</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','','','',0,0,0,'Die Brutvögel Hessens in Raum und Zeit – Brutvogelatlas','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,110,10,0),(110,27,0,0,0,'',0,0,0,0,0,68,1557907441,1557840571,3,0,1,1280,'gridelements_pi1',' (Kopie 1)','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','','','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"flexcols\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"containerType\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'2Columns',2,0,0,0),(111,27,0,0,0,'',0,0,0,0,0,0,1557907442,1557840664,3,0,1,1536,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgontemplate_projectteaser',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.projectTeaser.preHeader\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.projectTeaser.header\">\n                    <value index=\"vDEF\">Lebensräume</value>\n                </field>\n                <field index=\"settings.projectTeaser.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</value>\n                </field>\n                <field index=\"settings.projectTeaser.random\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.projectTeaser.projectUidList\">\n                    <value index=\"vDEF\">1,3,2,4</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(112,27,0,0,0,'',0,0,0,0,0,0,1557840764,1557840751,3,0,0,1000000000,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',1,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgontemplate_projectteaser',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(113,27,0,0,0,'',0,0,0,0,0,0,1557907443,1557840804,3,0,1,1792,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgontemplate_projectteaser',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.projectTeaser.preHeader\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.projectTeaser.header\">\n                    <value index=\"vDEF\">Artenschutz</value>\n                </field>\n                <field index=\"settings.projectTeaser.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </value>\n                </field>\n                <field index=\"settings.projectTeaser.random\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.projectTeaser.projectUidList\">\n                    <value index=\"vDEF\">1,2,3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(114,24,0,0,0,'',0,0,0,0,0,0,1558600624,1557842594,3,0,1,32,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgontemplate_projectteaser',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.projectTeaser.preHeader\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.projectTeaser.header\">\n                    <value index=\"vDEF\">Unsere Arbeit mit Vögeln</value>\n                </field>\n                <field index=\"settings.projectTeaser.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </value>\n                </field>\n                <field index=\"settings.projectTeaser.random\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.projectTeaser.projectUidList\">\n                    <value index=\"vDEF\">1,4,3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(115,24,0,0,0,'',0,0,0,0,0,108,1557842628,1557842628,3,0,0,1,'image','','','',NULL,0,0,0,0,1,0,0,2,0,0,0,'default',0,0,0,0,'','','','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,117,20,0),(116,24,0,0,0,'',0,0,0,0,0,109,1557842628,1557842628,3,0,0,2,'text','Vögel in Hessen','','','<p>Das Standardwerk über die hessische Vogelwelt! – Mit mehr als 500 Seiten!</p>\r\n<p>eine Doppelseite pro Brutvogelart aktuelle, bislang unveröffentlichte Verbreitungskarten aus dem ADEBAR-Projekt übersichtliche Informationen zu Phänologie, Häufigkeit und Verbreitung faszinierende Bilder von Europas besten Fotografen spannende Sonderkapitel</p>\r\n<p>t3://page?uid=5</p>\r\n<p>t3://page?uid=27</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','','','',0,0,0,'Die Brutvögel Hessens in Raum und Zeit – Brutvogelatlas','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;s:23:\"tx_gridelements_columns\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,117,10,0),(117,24,0,0,0,'',0,0,0,0,0,110,1557849225,1557842628,3,0,1,48,'gridelements_pi1','  (Kopie 1)','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','','','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"flexcols\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"containerType\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'2Columns',2,0,0,0),(118,24,0,0,0,'',0,0,0,0,0,0,1558600629,1557842654,3,0,1,56,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgontemplate_projectteaser',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.projectTeaser.preHeader\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.projectTeaser.header\">\n                    <value index=\"vDEF\">Lebensräume</value>\n                </field>\n                <field index=\"settings.projectTeaser.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </value>\n                </field>\n                <field index=\"settings.projectTeaser.random\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.projectTeaser.projectUidList\">\n                    <value index=\"vDEF\">1,4,3,2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(119,24,0,0,0,'',0,0,0,0,0,0,1558600635,1557842696,3,0,1,60,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgontemplate_projectteaser',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.projectTeaser.preHeader\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.projectTeaser.header\">\n                    <value index=\"vDEF\">Artenschutz</value>\n                </field>\n                <field index=\"settings.projectTeaser.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </value>\n                </field>\n                <field index=\"settings.projectTeaser.random\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.projectTeaser.projectUidList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(120,26,0,0,0,'',0,0,0,0,0,0,1557849317,1557849317,3,0,0,768,'text','@toDo: Fehlendes Element','','','<p>Hier sollen zwei Projekte mit \"Vogelbezug\" angezeigt werden. Manuell ausgewählt? Zufällig? Nach einer bestimmten Sortierung?</p>',0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(121,26,0,0,0,'',0,0,0,0,0,0,1557849534,1557849534,3,0,0,256,'text','@toDo: Headline Aktuelle Meldungen','','','<p>Hier haben wir wohl eine Unterform des \"Journals\": Nach einem Muster ausgewählte Meldungen dieser Kategorie</p>',0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,NULL,0,0,2,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(122,32,0,0,0,'',0,0,0,0,0,82,1557850376,1557850344,3,0,0,512,'textpic','','','','',0,0,0,0,3,0,0,2,0,0,61,'default',0,0,0,0,'','','','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(123,27,0,0,0,'',0,0,0,0,0,0,1557910127,1557907473,3,0,0,256,'text','Zur Geschichte unseres Vereins','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Es waren begeisterte Vogelbeobachter, die sich 1964 zusammenfanden, um ihr Wissen über die hessische Vogelwelt auszutauschen. Dramatische Bestandseinbrüche vieler Arten ließen sie nicht ruhen.</p>\r\n<p>1972 gründeten sie einen Naturschutzverband mit starkem wissenschaftlichen Fundament, die HGON.</p>\r\n<p>Zum Wappenvogel wählten die Gründer den damals vom Aussterben bedrohten Graureiher. Sie setzten sich für ein Ende der Bejagung und den Schutz seiner Brutkolonien ein. Heute hat sich sein Bestand versechsfacht und der beeindruckende Vogel bevölkert wieder alle hessischen Landschaften.</p>\r\n<p>Begeisterung für die Natur, Kompetenz in der Sache und Beharrlichkeit in der Auseinandersetzung sind seitdem zu einem Markenzeichen für die Arbeit der HGON geworden.</p>',0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(124,27,0,0,0,'',0,0,0,0,0,90,1557911285,1557911261,3,0,0,1000000000,'text','Eine Überschrift','','','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',0,0,0,0,0,0,0,2,0,0,0,'none',1,0,0,0,'','','','',0,0,0,'','','',0,'20','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(125,25,0,0,0,'',0,0,0,0,0,0,1562147744,1557912158,3,0,0,192,'textmedia','','','','',0,0,0,3,3,0,0,2,0,0,61,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"assets\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(126,25,0,0,0,'',0,0,0,0,0,0,1558528477,1558518457,3,0,0,1000000000,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',1,0,0,0,'','',NULL,'',0,0,140,'','','',0,'0','hgontemplate_sidebarcontactperson',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(127,24,0,0,0,'',0,0,0,0,0,0,1558611940,1558534970,3,0,1,0,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgontemplate_siblingpagesoverview',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(128,55,0,0,0,'',0,0,0,0,0,122,1558611704,1558611704,3,0,0,256,'textpic','','','','',0,0,0,0,3,0,0,2,0,0,61,'default',0,0,0,0,'','','','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(129,55,0,0,0,'',0,0,0,0,0,88,1558611704,1558611704,3,0,0,128,'text','Greifvögel in Hessen','','','<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong></p>\r\n<p>Es waren begeisterte Vogelbeobachter, die sich 1964 zusammenfanden, um ihr Wissen über die hessische Vogelwelt auszutauschen. Dramatische Bestandseinbrüche vieler Arten ließen sie nicht ruhen.</p>\r\n<p>1972 gründeten sie einen Naturschutzverband mit starkem wissenschaftlichen Fundament, die HGON.</p>\r\n<p>Zum Wappenvogel wählten die Gründer den damals vom Aussterben bedrohten Graureiher. Sie setzten sich für ein Ende der Bejagung und den Schutz seiner Brutkolonien ein. Heute hat sich sein Bestand versechsfacht und der beeindruckende Vogel bevölkert wieder alle hessischen Landschaften.</p>\r\n<p>Begeisterung für die Natur, Kompetenz in der Sache und Beharrlichkeit in der Auseinandersetzung sind seitdem zu einem Markenzeichen für die Arbeit der HGON geworden.</p>',0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','','','',0,0,0,'','','',0,'20','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(130,55,0,0,0,'',0,0,0,0,0,89,1558611704,1558611704,3,0,0,64,'textpic','Greifvogelschutz','','','',0,0,0,0,1,0,0,2,0,0,31,'none',0,0,0,0,'','','','',0,0,30,'Projekt','','',0,'0','',1,0,'',0,'','',1554760800,0,0,0,NULL,'',0,'',0,'',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(131,56,0,0,0,'',0,0,0,0,0,122,1558611711,1558611711,3,0,0,256,'textpic','','','','',0,0,0,0,3,0,0,2,0,0,61,'default',0,0,0,0,'','','','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(132,56,0,0,0,'',0,0,0,0,0,88,1558611711,1558611711,3,0,0,128,'text','Greifvögel in Hessen','','','<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong></p>\r\n<p>Es waren begeisterte Vogelbeobachter, die sich 1964 zusammenfanden, um ihr Wissen über die hessische Vogelwelt auszutauschen. Dramatische Bestandseinbrüche vieler Arten ließen sie nicht ruhen.</p>\r\n<p>1972 gründeten sie einen Naturschutzverband mit starkem wissenschaftlichen Fundament, die HGON.</p>\r\n<p>Zum Wappenvogel wählten die Gründer den damals vom Aussterben bedrohten Graureiher. Sie setzten sich für ein Ende der Bejagung und den Schutz seiner Brutkolonien ein. Heute hat sich sein Bestand versechsfacht und der beeindruckende Vogel bevölkert wieder alle hessischen Landschaften.</p>\r\n<p>Begeisterung für die Natur, Kompetenz in der Sache und Beharrlichkeit in der Auseinandersetzung sind seitdem zu einem Markenzeichen für die Arbeit der HGON geworden.</p>',0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','','','',0,0,0,'','','',0,'20','',1,0,'',0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(133,56,0,0,0,'',0,0,0,0,0,89,1558611711,1558611711,3,0,0,64,'textpic','Greifvogelschutz','','','',0,0,0,0,1,0,0,2,0,0,31,'none',0,0,0,0,'','','','',0,0,30,'Projekt','','',0,'0','',1,0,'',0,'','',1554760800,0,0,0,NULL,'',0,'',0,'',0,'','','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(134,1,0,0,0,'',0,0,0,0,0,0,1562144462,1559653009,3,0,0,29,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgontemplate_pageslider',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.pageSlider.pidList\">\n                    <value index=\"vDEF\">7,25,16</value>\n                </field>\n                <field index=\"settings.supportOptions.preHeader\">\n                    <value index=\"vDEF\">Lorem Ipsum</value>\n                </field>\n                <field index=\"settings.supportOptions.header\">\n                    <value index=\"vDEF\">Unsere Projekte</value>\n                </field>\n                <field index=\"settings.supportOptions.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </value>\n                </field>\n                <field index=\"settings.pageSlider.preHeader\">\n                    <value index=\"vDEF\">Lorem Ipsum</value>\n                </field>\n                <field index=\"settings.pageSlider.header\">\n                    <value index=\"vDEF\">Unsere Projekte</value>\n                </field>\n                <field index=\"settings.pageSlider.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:9:\"recursive\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(135,11,0,0,0,'',0,0,0,0,0,0,1559737570,1559737141,3,0,0,1000000000,'text','','','','<p>&lt;script type=\"text/javascript\" src=\"https://secure.fundraisingbox.com/app/paymentJS?hash=g0gn5jg1d82qlb3w\"&gt;&lt;/script&gt;&lt;noscript&gt;Bitte Javascript aktivieren&lt;/noscript&gt;&lt;a target=\"_blank\" href=\"https://www.fundraisingbox.com\"&gt;&lt;img border=\"0\" style=\"border: 0 !important\" src=\"https://secure.fundraisingbox.com/images/FundraisingBox-Logo-Widget.png\" alt=\"FundraisingBox Logo\" /&gt;&lt;/a&gt;</p>',0,0,0,0,0,0,0,2,0,0,0,'none',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(136,11,0,0,0,'',0,0,0,0,0,0,1559737605,1559737603,3,0,0,256,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgontemplate_donationform',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(137,11,0,0,0,'',0,0,0,0,0,0,1559737723,1559737707,3,0,0,1000000000,'text','','','','<pre>\r\n&lt;script type=\"text/javascript\" src=\"https://secure.fundraisingbox.com/app/paymentJS?hash=g0gn5jg1d82qlb3w\"&gt;&lt;/script&gt;&lt;noscript&gt;Bitte Javascript aktivieren&lt;/noscript&gt;&lt;a target=\"_blank\" href=\"https://www.fundraisingbox.com\"&gt;&lt;img border=\"0\" style=\"border: 0 <strong>!important</strong>\" src=\"https://secure.fundraisingbox.com/images/FundraisingBox-Logo-Widget.png\" alt=\"FundraisingBox Logo\" /&gt;&lt;/a&gt;</pre>',0,0,0,0,0,0,0,2,0,0,0,'none',1,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(138,58,0,0,0,'',0,0,0,0,0,0,1559894502,1559894492,3,0,0,256,'form_formframework','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">EXT:hgon_template/Resources/Private/Extension/FormFramework/mitgliedsformular.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:32:\"tx_rkwbasics_header_link_caption\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(139,1,0,0,0,'',0,0,0,0,0,0,1560781028,1560773450,3,0,1,1000000000,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',1,0,0,0,'','',NULL,'',0,0,90,'','','',0,'0','hgontemplate_supportoptions',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.supportOptions.showBecomeMember\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.supportOptions.donateMoney\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.supportOptions.donateTime\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.projectTeaser.preHeader\">\n                    <value index=\"vDEF\">Mitmachen</value>\n                </field>\n                <field index=\"settings.projectTeaser.header\">\n                    <value index=\"vDEF\">So können Sie uns unterstützen</value>\n                </field>\n                <field index=\"settings.projectTeaser.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </value>\n                </field>\n                <field index=\"settings.projectTeaser.becomeMember.image\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.projectTeaser.becomeMember.header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.projectTeaser.becomeMember.text\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.supportOptions.showDonateMoney\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.supportOptions.showDonateTime\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.supportOptions.preHeader\">\n                    <value index=\"vDEF\">Mitmachen11</value>\n                </field>\n                <field index=\"settings.supportOptions.header\">\n                    <value index=\"vDEF\">So können Sie uns unterstützen</value>\n                </field>\n                <field index=\"settings.supportOptions.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. </value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"sDEF1\">\n            <language index=\"lDEF\">\n                <field index=\"settings.projectTeaser.becomeMember.image\">\n                    <value index=\"vDEF\">95</value>\n                </field>\n                <field index=\"settings.projectTeaser.becomeMember.header\">\n                    <value index=\"vDEF\">Mitgliedschaft</value>\n                </field>\n                <field index=\"settings.projectTeaser.becomeMember.text\">\n                    <value index=\"vDEF\">Unterstützen Sie uns beim Naturschutz und werden Sie Mitglied beim HGON.</value>\n                </field>\n                <field index=\"settings.supportOptions.becomeMember.image\">\n                    <value index=\"vDEF\">97</value>\n                </field>\n                <field index=\"settings.supportOptions.becomeMember.header\">\n                    <value index=\"vDEF\">Mitgliedschaft</value>\n                </field>\n                <field index=\"settings.supportOptions.becomeMember.text\">\n                    <value index=\"vDEF\">Unterstützen Sie uns beim Naturschutz und werden Sie Mitglied beim HGON.</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"sDEF2\">\n            <language index=\"lDEF\">\n                <field index=\"settings.projectTeaser.becomeMember.image\">\n                    <value index=\"vDEF\">96</value>\n                </field>\n                <field index=\"settings.projectTeaser.becomeMember.header\">\n                    <value index=\"vDEF\">Geld spenden</value>\n                </field>\n                <field index=\"settings.projectTeaser.becomeMember.text\">\n                    <value index=\"vDEF\">Werden Sie aktiv oder bringen Sie mit ihrer Spende wichtige Naturschutzprojekte auf den Weg.</value>\n                </field>\n                <field index=\"settings.supportOptions.becomeMember.image\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.supportOptions.becomeMember.header\">\n                    <value index=\"vDEF\">Test Geld Spende</value>\n                </field>\n                <field index=\"settings.supportOptions.becomeMember.text\">\n                    <value index=\"vDEF\">Test Geld Spende</value>\n                </field>\n                <field index=\"settings.supportOptions.donateMoney.image\">\n                    <value index=\"vDEF\">98</value>\n                </field>\n                <field index=\"settings.supportOptions.donateMoney.header\">\n                    <value index=\"vDEF\">LAla</value>\n                </field>\n                <field index=\"settings.supportOptions.donateMoney.text\">\n                    <value index=\"vDEF\">Lili</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"sDEF3\">\n            <language index=\"lDEF\">\n                <field index=\"settings.projectTeaser.becomeMember.image\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.projectTeaser.becomeMember.header\">\n                    <value index=\"vDEF\">Ehrenamtlich helfen</value>\n                </field>\n                <field index=\"settings.projectTeaser.becomeMember.text\">\n                    <value index=\"vDEF\">Machen Sie mit bei unseren Projekten rund um Naturschutz und Vogelkunde.</value>\n                </field>\n                <field index=\"settings.supportOptions.becomeMember.image\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.supportOptions.becomeMember.header\">\n                    <value index=\"vDEF\">Test Zeit Spende</value>\n                </field>\n                <field index=\"settings.supportOptions.becomeMember.text\">\n                    <value index=\"vDEF\">Test Zeit Spende</value>\n                </field>\n                <field index=\"settings.supportOptions.donateTime.image\">\n                    <value index=\"vDEF\">99</value>\n                </field>\n                <field index=\"settings.supportOptions.donateTime.header\">\n                    <value index=\"vDEF\">Lulku</value>\n                </field>\n                <field index=\"settings.supportOptions.donateTime.text\">\n                    <value index=\"vDEF\">fasdf</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(140,1,0,0,0,'',0,0,0,0,0,0,1560780450,1560778458,3,0,0,7744,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,90,'','','',0,'0','hgontemplate_supportoptions',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.supportOptions.preHeader\">\n                    <value index=\"vDEF\">Mitmachen111</value>\n                </field>\n                <field index=\"settings.supportOptions.header\">\n                    <value index=\"vDEF\">So können Sie uns unterstützen111</value>\n                </field>\n                <field index=\"settings.supportOptions.text\">\n                    <value index=\"vDEF\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. 111</value>\n                </field>\n                <field index=\"settings.supportOptions.showBecomeMember\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.supportOptions.showDonateMoney\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.supportOptions.showDonateTime\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"sDEF1\">\n            <language index=\"lDEF\">\n                <field index=\"settings.supportOptions.becomeMember.image\">\n                    <value index=\"vDEF\">100</value>\n                </field>\n                <field index=\"settings.supportOptions.becomeMember.header\">\n                    <value index=\"vDEF\">Mitgliedschaft</value>\n                </field>\n                <field index=\"settings.supportOptions.becomeMember.text\">\n                    <value index=\"vDEF\">Unterstützen Sie uns beim Naturschutz und werden Sie Mitglied beim HGON.</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"sDEF2\">\n            <language index=\"lDEF\">\n                <field index=\"settings.supportOptions.donateMoney.image\">\n                    <value index=\"vDEF\">101</value>\n                </field>\n                <field index=\"settings.supportOptions.donateMoney.header\">\n                    <value index=\"vDEF\">Geld spenden</value>\n                </field>\n                <field index=\"settings.supportOptions.donateMoney.text\">\n                    <value index=\"vDEF\">Werden Sie aktiv oder bringen Sie mit Ihrer Spende wichtige Naturschutzprojekte auf den Weg.</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"sDEF3\">\n            <language index=\"lDEF\">\n                <field index=\"settings.supportOptions.donateTime.image\">\n                    <value index=\"vDEF\">102</value>\n                </field>\n                <field index=\"settings.supportOptions.donateTime.header\">\n                    <value index=\"vDEF\">Ehrenamtlich helfen</value>\n                </field>\n                <field index=\"settings.supportOptions.donateTime.text\">\n                    <value index=\"vDEF\">Machen Sie mit bei unseren Projekten rund um Naturschutz und Vogelkunde.</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:9:\"recursive\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;s:25:\"tx_gridelements_container\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(141,1,0,0,0,'',0,0,0,0,0,0,1562147463,1560847105,3,0,1,1000000000,'form_formframework','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',1,0,0,0,'','',NULL,NULL,0,0,90,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">EXT:hgon_template/Resources/Private/Extension/FormFramework/mitgliedsformular.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"db07d15aa39bc30eb74d278560bee383\">\n            <language index=\"lDEF\">\n                <field index=\"settings.finishers.EmailToReceiver.subject\">\n                    <value index=\"vDEF\">Your message: {subject}</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.recipientAddress\">\n                    <value index=\"vDEF\">your.company@example.com</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.recipientName\">\n                    <value index=\"vDEF\">Your Company name</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.senderAddress\">\n                    <value index=\"vDEF\">{email}</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.senderName\">\n                    <value index=\"vDEF\">{name}</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.replyToAddress\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.carbonCopyAddress\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.blindCarbonCopyAddress\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.format\">\n                    <value index=\"vDEF\">html</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.translation.language\">\n                    <value index=\"vDEF\">default</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(142,34,0,0,0,'',0,0,0,0,0,0,1561026718,1560936846,3,0,0,64,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','hgondonation_donate',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,_binary 'a:1:{s:6:\"hidden\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'0',0,0,0,0),(143,62,0,0,0,'',0,0,0,0,0,0,1562164008,1562163994,3,0,0,256,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','news_pi1',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.selectedList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">News-&gt;detail</value>\n                </field>\n                <field index=\"settings.singleNews\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.previewHiddenRecords\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(144,40,0,0,0,'',0,0,0,0,0,0,1562249258,1562249256,3,0,0,256,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','rkwevents_pi1',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">Event-&gt;list;Event-&gt;myEvents;Event-&gt;show;Event-&gt;showSheet;EventReservation-&gt;show;EventReservation-&gt;new;EventReservation-&gt;optIn;EventReservation-&gt;create;EventReservation-&gt;edit;EventReservation-&gt;update;EventReservation-&gt;delete;EventPoll-&gt;new;EventPoll-&gt;create;EventPoll-&gt;show</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0),(145,64,0,0,0,'',0,0,0,0,0,0,1562673946,1562673935,3,0,0,256,'list','','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'none',0,0,0,0,'','',NULL,'',0,0,0,'','','',0,'0','rkwevents_pi1',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">EventReservation-&gt;new;EventReservation-&gt;create;EventReservation-&gt;optIn</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,_binary 'a:27:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:28:\"tx_rkwbasics_bodytext_mobile\";N;}',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,'','','0','','',0,0,0,NULL,0,0,0,0,0,-2,'',0,0,0,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext COLLATE utf8_unicode_ci,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8_unicode_ci,
  `authorcompany` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `wsdl_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_gridelements_backend_layout`
--

DROP TABLE IF EXISTS `tx_gridelements_backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_gridelements_backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `frame` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `horizontal` smallint(6) NOT NULL DEFAULT '0',
  `top_level_layout` smallint(6) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci,
  `pi_flexform_ds` mediumtext COLLATE utf8_unicode_ci,
  `pi_flexform_ds_file` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gridelements_backend_layout`
--

LOCK TABLES `tx_gridelements_backend_layout` WRITE;
/*!40000 ALTER TABLE `tx_gridelements_backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_gridelements_backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_hgonbasic_domain_model_associationoperator`
--

DROP TABLE IF EXISTS `tx_hgonbasic_domain_model_associationoperator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_hgonbasic_domain_model_associationoperator` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title_after` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title_before` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `house_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` int(11) NOT NULL DEFAULT '0',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone_fixed` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone_mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xing_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_hgonbasic_domain_model_associationoperator`
--

LOCK TABLES `tx_hgonbasic_domain_model_associationoperator` WRITE;
/*!40000 ALTER TABLE `tx_hgonbasic_domain_model_associationoperator` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_hgonbasic_domain_model_associationoperator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_hgondonation_domain_model_donationplace`
--

DROP TABLE IF EXISTS `tx_hgondonation_domain_model_donationplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_hgondonation_domain_model_donationplace` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` int(11) NOT NULL DEFAULT '0',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `longitude` double(11,2) NOT NULL DEFAULT '0.00',
  `latitude` double(11,2) NOT NULL DEFAULT '0.00',
  `country` int(11) unsigned DEFAULT '0',
  `donation_type_time` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_hgondonation_domain_model_donationplace`
--

LOCK TABLES `tx_hgondonation_domain_model_donationplace` WRITE;
/*!40000 ALTER TABLE `tx_hgondonation_domain_model_donationplace` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_hgondonation_domain_model_donationplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_hgondonation_domain_model_donationtype`
--

DROP TABLE IF EXISTS `tx_hgondonation_domain_model_donationtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_hgondonation_domain_model_donationtype` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) unsigned DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `donation_type_time` int(11) unsigned DEFAULT '0',
  `donation_type_money` int(11) unsigned DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_hgondonation_domain_model_donationtype`
--

LOCK TABLES `tx_hgondonation_domain_model_donationtype` WRITE;
/*!40000 ALTER TABLE `tx_hgondonation_domain_model_donationtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_hgondonation_domain_model_donationtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_hgondonation_domain_model_donationtypemoney`
--

DROP TABLE IF EXISTS `tx_hgondonation_domain_model_donationtypemoney`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_hgondonation_domain_model_donationtypemoney` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `donation_goal` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `donation_amount_current` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `donator_count` int(11) NOT NULL DEFAULT '0',
  `frontend_user_to_inform` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `donation_type` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_hgondonation_domain_model_donationtypemoney`
--

LOCK TABLES `tx_hgondonation_domain_model_donationtypemoney` WRITE;
/*!40000 ALTER TABLE `tx_hgondonation_domain_model_donationtypemoney` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_hgondonation_domain_model_donationtypemoney` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_hgondonation_domain_model_donationtypetime`
--

DROP TABLE IF EXISTS `tx_hgondonation_domain_model_donationtypetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_hgondonation_domain_model_donationtypetime` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `time_requirement` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_range_start` int(11) NOT NULL DEFAULT '0',
  `time_range_end` int(11) NOT NULL DEFAULT '0',
  `recurring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `contact_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `finished` smallint(5) unsigned NOT NULL DEFAULT '0',
  `helpers_feedback` text COLLATE utf8_unicode_ci NOT NULL,
  `helpers_image` int(11) unsigned NOT NULL DEFAULT '0',
  `donation_place` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `frontend_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `max_num_frontend_user` int(11) NOT NULL DEFAULT '0',
  `donation_type` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  `pages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_hgondonation_domain_model_donationtypetime`
--

LOCK TABLES `tx_hgondonation_domain_model_donationtypetime` WRITE;
/*!40000 ALTER TABLE `tx_hgondonation_domain_model_donationtypetime` DISABLE KEYS */;
INSERT INTO `tx_hgondonation_domain_model_donationtypetime` VALUES (1,59,'Test zeitspende','Lalaa','fasdfsadf',0,'2-4',1561284000,1561888800,0,0,'2',0,'',0,'','',1,0,1560950555,1560938462,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,_binary 'a:12:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:5:\"title\";N;s:17:\"short_description\";N;s:11:\"description\";N;s:16:\"time_requirement\";N;s:16:\"time_range_start\";N;s:14:\"time_range_end\";N;s:14:\"donation_place\";N;s:5:\"pages\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL,'t3://page?uid=7');
/*!40000 ALTER TABLE `tx_hgondonation_domain_model_donationtypetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_hgontemplate_domain_model_didyouknow`
--

DROP TABLE IF EXISTS `tx_hgontemplate_domain_model_didyouknow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_hgontemplate_domain_model_didyouknow` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `sys_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_hgontemplate_domain_model_didyouknow`
--

LOCK TABLES `tx_hgontemplate_domain_model_didyouknow` WRITE;
/*!40000 ALTER TABLE `tx_hgontemplate_domain_model_didyouknow` DISABLE KEYS */;
INSERT INTO `tx_hgontemplate_domain_model_didyouknow` VALUES (1,57,'','<p>Vögel können fliegen.</p>','1',1559641646,1559640134,3,0,0,-1,0,_binary 'a:5:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:5:\"title\";N;s:11:\"description\";N;s:12:\"sys_category\";N;}',NULL),(2,57,'','<p>Feldhamster haben für gewöhnlich keinen Rüssel.</p>','1',1559640162,1559640162,3,0,0,-1,0,_binary 'a:5:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:5:\"title\";N;s:11:\"description\";N;s:12:\"sys_category\";N;}',NULL),(3,57,'','<p>Ein Hinweis-Text, der keiner Kategorie zugeordnet ist.</p>','0',1559641635,1559641197,3,0,0,-1,0,_binary 'a:5:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:5:\"title\";N;s:11:\"description\";N;s:12:\"sys_category\";N;}',NULL);
/*!40000 ALTER TABLE `tx_hgontemplate_domain_model_didyouknow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_hgonworkgroup_domain_model_workgroup`
--

DROP TABLE IF EXISTS `tx_hgonworkgroup_domain_model_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_hgonworkgroup_domain_model_workgroup` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `short_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `district` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact_person` int(10) unsigned NOT NULL DEFAULT '0',
  `event` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_hgonworkgroup_domain_model_workgroup`
--

LOCK TABLES `tx_hgonworkgroup_domain_model_workgroup` WRITE;
/*!40000 ALTER TABLE `tx_hgonworkgroup_domain_model_workgroup` DISABLE KEYS */;
INSERT INTO `tx_hgonworkgroup_domain_model_workgroup` VALUES (1,42,'Arbeitskreis 1','<p>Das ist ein schöner Arbeitskreis</p>','Kurzbeschreibung','Straße 343','11111, 35083, 55555','Ortschaft','Marburg-Biedenkopf',0,2,1562333886,1557317419,3,0,0,0,0,0,'',0,0,0,0,0,0,0,_binary 'a:11:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:5:\"title\";N;s:11:\"description\";N;s:17:\"short_description\";N;s:7:\"address\";N;s:3:\"zip\";N;s:4:\"city\";N;s:8:\"district\";N;s:14:\"contact_person\";N;s:5:\"event\";N;}',NULL);
/*!40000 ALTER TABLE `tx_hgonworkgroup_domain_model_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_link`
--

DROP TABLE IF EXISTS `tx_news_domain_model_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_link` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `uri` text COLLATE utf8_unicode_ci,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_link`
--

LOCK TABLES `tx_news_domain_model_link` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_link` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_link` VALUES (1,60,1562239927,1562239927,3,0,0,'',0,0,0,0,0,'',0,0,0,0,0,1,0,0,1,'','','t3://page?uid=16',NULL);
/*!40000 ALTER TABLE `tx_news_domain_model_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `editlock` smallint(6) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `teaser` text COLLATE utf8_unicode_ci,
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `datetime` int(11) NOT NULL DEFAULT '0',
  `archive` int(11) NOT NULL DEFAULT '0',
  `author` tinytext COLLATE utf8_unicode_ci,
  `author_email` tinytext COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `related` int(11) NOT NULL DEFAULT '0',
  `related_from` int(11) NOT NULL DEFAULT '0',
  `related_files` tinytext COLLATE utf8_unicode_ci,
  `fal_related_files` int(10) unsigned DEFAULT '0',
  `related_links` tinytext COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `tags` int(11) NOT NULL DEFAULT '0',
  `media` text COLLATE utf8_unicode_ci,
  `fal_media` int(10) unsigned DEFAULT '0',
  `internalurl` text COLLATE utf8_unicode_ci,
  `externalurl` text COLLATE utf8_unicode_ci,
  `istopnews` int(11) NOT NULL DEFAULT '0',
  `content_elements` int(11) NOT NULL DEFAULT '0',
  `path_segment` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_title` tinytext COLLATE utf8_unicode_ci,
  `notes` text COLLATE utf8_unicode_ci,
  `import_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `tx_hgon_workgroup` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `sys_language_uid_l10n_parent` (`sys_language_uid`,`l10n_parent`),
  KEY `import` (`import_id`,`import_source`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news`
--

LOCK TABLES `tx_news_domain_model_news` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_news` VALUES (1,60,1562239927,1562054274,3,0,0,0,'',0,0,0,0,0,0,0,0,0,'a:28:{s:4:\"type\";N;s:9:\"istopnews\";N;s:5:\"title\";N;s:12:\"path_segment\";N;s:6:\"teaser\";N;s:8:\"datetime\";N;s:7:\"archive\";N;s:8:\"bodytext\";N;s:16:\"content_elements\";N;s:9:\"fal_media\";N;s:17:\"fal_related_files\";N;s:10:\"categories\";N;s:7:\"related\";N;s:13:\"related_links\";N;s:4:\"tags\";N;s:17:\"tx_hgon_workgroup\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:17:\"alternative_title\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:5:\"notes\";N;}',0,0,0,0,0,0,'','Test News 1','Teaser Text von News 1 :)','<p>Test Text einer News :)</p>',1562054235,0,'','',1,0,0,NULL,1,'1','0','','',2,NULL,1,NULL,NULL,0,0,'test-news-1','','','','',NULL,'1'),(2,60,1562240354,1562075710,3,0,0,0,'',0,0,0,0,0,0,0,0,0,'a:28:{s:4:\"type\";N;s:9:\"istopnews\";N;s:5:\"title\";N;s:12:\"path_segment\";N;s:6:\"teaser\";N;s:8:\"datetime\";N;s:7:\"archive\";N;s:8:\"bodytext\";N;s:16:\"content_elements\";N;s:9:\"fal_media\";N;s:17:\"fal_related_files\";N;s:10:\"categories\";N;s:7:\"related\";N;s:13:\"related_links\";N;s:4:\"tags\";N;s:17:\"tx_hgon_workgroup\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:17:\"alternative_title\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:5:\"notes\";N;}',0,0,0,0,0,0,'','Test News 2','','<p>Test News 2 test :)</p>',1562075692,0,'','',1,0,0,NULL,0,'0','1','','',0,NULL,0,NULL,NULL,0,0,'test-news-2','','','','',NULL,'1');
/*!40000 ALTER TABLE `tx_news_domain_model_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_related_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_related_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_related_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_related_mm`
--

LOCK TABLES `tx_news_domain_model_news_related_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_related_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_related_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_tag_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_tag_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_tag_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_tag_mm`
--

LOCK TABLES `tx_news_domain_model_news_tag_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_tag_mm` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_news_tag_mm` VALUES (1,1,1),(1,2,2);
/*!40000 ALTER TABLE `tx_news_domain_model_news_tag_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_ttcontent_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_ttcontent_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_ttcontent_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_ttcontent_mm`
--

LOCK TABLES `tx_news_domain_model_news_ttcontent_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_ttcontent_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_ttcontent_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_tag`
--

DROP TABLE IF EXISTS `tx_news_domain_model_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_tag` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `slug` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_description` text COLLATE utf8_unicode_ci,
  `seo_headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_text` text COLLATE utf8_unicode_ci,
  `notes` text COLLATE utf8_unicode_ci,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_tag`
--

LOCK TABLES `tx_news_domain_model_tag` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_tag` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_tag` VALUES (1,60,1562155591,1562155591,3,0,0,0,0,0,'',0,0,0,0,0,'',0,0,0,0,0,'Libellen',NULL,'','','','','',NULL),(2,60,1562235597,1562235597,3,0,0,0,0,0,'',0,0,0,0,0,'',0,0,0,0,0,'Steinadler',NULL,'','','','','',NULL);
/*!40000 ALTER TABLE `tx_news_domain_model_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_pbsocial_domain_model_credential`
--

DROP TABLE IF EXISTS `tx_pbsocial_domain_model_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_pbsocial_domain_model_credential` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `app_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expiration_date` int(11) NOT NULL DEFAULT '0',
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `valid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_pbsocial_domain_model_credential`
--

LOCK TABLES `tx_pbsocial_domain_model_credential` WRITE;
/*!40000 ALTER TABLE `tx_pbsocial_domain_model_credential` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_pbsocial_domain_model_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_pbsocial_domain_model_item`
--

DROP TABLE IF EXISTS `tx_pbsocial_domain_model_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_pbsocial_domain_model_item` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cache_identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT '0',
  `result` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_pbsocial_domain_model_item`
--

LOCK TABLES `tx_pbsocial_domain_model_item` WRITE;
/*!40000 ALTER TABLE `tx_pbsocial_domain_model_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_pbsocial_domain_model_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_pathdata`
--

DROP TABLE IF EXISTS `tx_realurl_pathdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_pathdata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `mpvar` tinytext,
  `pagepath` text,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `pathq1` (`rootpage_id`,`pagepath`(32),`expire`),
  KEY `pathq2` (`page_id`,`language_id`,`rootpage_id`,`expire`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_pathdata`
--

LOCK TABLES `tx_realurl_pathdata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_pathdata` DISABLE KEYS */;
INSERT INTO `tx_realurl_pathdata` VALUES (1,0,6,0,1,'','hgon',0),(2,0,7,0,1,'','hgon/geschichte-und-auftrag',0),(3,0,16,0,1,'','hgon/vorstand-und-teams',0),(4,0,8,0,1,'','hgon/arbeitskreise',0),(5,0,21,0,1,'','hgon/fsoe-bei-hgon',0),(6,0,22,0,1,'','hgon/willy-bauer-stiftung',0),(7,0,23,0,1,'','hgon/partner',0),(8,0,2,0,1,'','unsere-arbeit',0),(9,0,24,0,1,'','unsere-arbeit/uebersicht',0),(10,0,27,0,1,'','unsere-arbeit/artenschutz',0),(11,0,26,0,1,'','unsere-arbeit/lebensraeume',0),(12,0,25,0,1,'','unsere-arbeit/voegel',0),(13,0,3,0,1,'','veranstaltungen',0),(14,0,4,0,1,'','beobachten',0),(15,0,5,0,1,'','service',0),(16,0,28,0,1,'','service/beobachten',0),(17,0,29,0,1,'','service/veranstaltungen',0),(18,0,30,0,1,'','service/downloads',0),(19,0,31,0,1,'','service/newsletter',0),(20,0,10,0,1,'','nebenmenue/entdecken',0),(21,0,11,0,1,'','nebenmenue/mitmachen',0);
/*!40000 ALTER TABLE `tx_realurl_pathdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `field_alias` varchar(255) NOT NULL DEFAULT '',
  `field_id` varchar(60) NOT NULL DEFAULT '',
  `value_alias` varchar(255) NOT NULL DEFAULT '',
  `value_id` int(11) NOT NULL DEFAULT '0',
  `lang` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `tablename` (`tablename`),
  KEY `bk_realurl01` (`field_alias`(20),`field_id`,`value_id`,`lang`,`expire`),
  KEY `bk_realurl02` (`tablename`(32),`field_alias`(20),`field_id`,`value_alias`(20),`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias`
--

LOCK TABLES `tx_realurl_uniqalias` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias_cache_map`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias_cache_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias_cache_map` (
  `alias_uid` int(11) NOT NULL DEFAULT '0',
  `url_cache_id` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`uid`),
  KEY `check_existence` (`alias_uid`,`url_cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias_cache_map`
--

LOCK TABLES `tx_realurl_uniqalias_cache_map` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias_cache_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias_cache_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urldata`
--

DROP TABLE IF EXISTS `tx_realurl_urldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urldata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `original_url` text,
  `speaking_url` text,
  `request_variables` text,
  `expire` int(11) NOT NULL DEFAULT '0',
  `original_url_hash` int(11) unsigned NOT NULL DEFAULT '0',
  `speaking_url_hash` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `page_id` (`page_id`),
  KEY `pathq1` (`rootpage_id`,`original_url_hash`,`expire`),
  KEY `pathq2` (`rootpage_id`,`speaking_url_hash`,`expire`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urldata`
--

LOCK TABLES `tx_realurl_urldata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urldata` DISABLE KEYS */;
INSERT INTO `tx_realurl_urldata` VALUES (1,0,1550159210,6,1,'id=6','hgon/','{\"id\":\"6\"}',0,2380716366,3669357382),(2,0,1550159976,6,1,'ADMCMD_editIcons=1&id=6','hgon/?ADMCMD_editIcons=1','{\"id\":\"6\",\"ADMCMD_editIcons\":\"1\"}',0,1044867538,2009093149),(3,0,1550159977,7,1,'id=7','hgon/geschichte-und-auftrag/','{\"id\":\"7\"}',0,4209109464,760765150),(4,0,1550159977,16,1,'id=16','hgon/vorstand-und-teams/','{\"id\":\"16\"}',0,3272631965,4271379807),(5,0,1550159977,8,1,'id=8','hgon/arbeitskreise/','{\"id\":\"8\"}',0,1784607817,2140187304),(6,0,1550159977,21,1,'id=21','hgon/fsoe-bei-hgon/','{\"id\":\"21\"}',0,1985585405,805038040),(7,0,1550159977,22,1,'id=22','hgon/willy-bauer-stiftung/','{\"id\":\"22\"}',0,4015059271,1321270614),(8,0,1550159977,23,1,'id=23','hgon/partner/','{\"id\":\"23\"}',0,2555888081,3188736683),(9,0,1550159977,2,1,'id=2','unsere-arbeit/','{\"id\":\"2\"}',0,2324372823,2628469813),(10,0,1550159977,24,1,'id=24','unsere-arbeit/uebersicht/','{\"id\":\"24\"}',0,104027250,78025232),(11,0,1550159977,27,1,'id=27','unsere-arbeit/artenschutz/','{\"id\":\"27\"}',0,2671379912,1591968262),(12,0,1550159977,26,1,'id=26','unsere-arbeit/lebensraeume/','{\"id\":\"26\"}',0,3896325470,3288652489),(13,0,1550159977,25,1,'id=25','unsere-arbeit/voegel/','{\"id\":\"25\"}',0,1899259108,2921566794),(14,0,1550159977,3,1,'id=3','veranstaltungen/','{\"id\":\"3\"}',0,4253822401,2168753281),(15,0,1550159977,4,1,'id=4','beobachten/','{\"id\":\"4\"}',0,1676195938,3051944907),(16,0,1550159977,5,1,'id=5','service/','{\"id\":\"5\"}',0,351242484,300940470),(17,0,1550159977,28,1,'id=28','service/beobachten/','{\"id\":\"28\"}',0,260380761,1563974803),(18,0,1550159977,29,1,'id=29','service/veranstaltungen/','{\"id\":\"29\"}',0,2021796047,1119184355),(19,0,1550159977,30,1,'id=30','service/downloads/','{\"id\":\"30\"}',0,407216426,2866842932),(20,0,1550159977,31,1,'id=31','service/newsletter/','{\"id\":\"31\"}',0,1866633660,79870603),(21,0,1550159977,10,1,'id=10','nebenmenue/entdecken/','{\"id\":\"10\"}',0,712229800,1605216544),(22,0,1550159977,11,1,'id=11','nebenmenue/mitmachen/','{\"id\":\"11\"}',0,1567945534,883371062);
/*!40000 ALTER TABLE `tx_realurl_urldata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwauthors_domain_model_authors`
--

DROP TABLE IF EXISTS `tx_rkwauthors_domain_model_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwauthors_domain_model_authors` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title_after` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title_before` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `function_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `function_title_short` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `function_description` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xing_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `internal` smallint(5) unsigned NOT NULL DEFAULT '0',
  `show_work` smallint(5) unsigned NOT NULL DEFAULT '0',
  `department` int(10) unsigned NOT NULL DEFAULT '0',
  `department_name` int(10) unsigned NOT NULL DEFAULT '0',
  `image_small` int(10) unsigned NOT NULL DEFAULT '0',
  `image_big` int(10) unsigned NOT NULL DEFAULT '0',
  `image_boxes` int(10) unsigned NOT NULL DEFAULT '0',
  `image_boxes_is_logo` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  `workgroup` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwauthors_domain_model_authors`
--

LOCK TABLES `tx_rkwauthors_domain_model_authors` WRITE;
/*!40000 ALTER TABLE `tx_rkwauthors_domain_model_authors` DISABLE KEYS */;
INSERT INTO `tx_rkwauthors_domain_model_authors` VALUES (1,41,'Oliver','','Conz','','','','','','','','Vorstandvorsitzender','','<p>Besonders stolz sind wir auf unsere 24 HGON-Arbeitskreise, die sich mit Herz und Seele um den Natur- und Artenschutz in Hessen kümmern.</p>','oliver.conz@hgon.de','490','60081803','','','','','',0,0,0,0,0,0,1,0,1558528546,1557236016,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,_binary 'a:30:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:10:\"first_name\";N;s:11:\"middle_name\";N;s:9:\"last_name\";N;s:11:\"title_after\";N;s:12:\"title_before\";N;s:8:\"internal\";N;s:9:\"show_work\";N;s:15:\"department_name\";N;s:14:\"function_title\";N;s:5:\"email\";N;s:7:\"company\";N;s:6:\"street\";N;s:6:\"number\";N;s:3:\"zip\";N;s:4:\"city\";N;s:5:\"phone\";N;s:6:\"phone2\";N;s:11:\"image_boxes\";N;s:19:\"image_boxes_is_logo\";N;s:9:\"image_big\";N;s:11:\"image_small\";N;s:20:\"function_description\";N;s:3:\"url\";N;s:12:\"facebook_url\";N;s:11:\"twitter_url\";N;s:8:\"xing_url\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL,0),(2,41,'Max','','Mustermann','','','','','','','','Funktionsmensch','','<p>Glück auf!</p>','max@max.de','','','','','','','',0,0,0,0,0,0,0,0,1557753568,1557753483,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,_binary 'a:30:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:10:\"first_name\";N;s:11:\"middle_name\";N;s:9:\"last_name\";N;s:11:\"title_after\";N;s:12:\"title_before\";N;s:8:\"internal\";N;s:9:\"show_work\";N;s:15:\"department_name\";N;s:14:\"function_title\";N;s:5:\"email\";N;s:7:\"company\";N;s:6:\"street\";N;s:6:\"number\";N;s:3:\"zip\";N;s:4:\"city\";N;s:5:\"phone\";N;s:6:\"phone2\";N;s:11:\"image_boxes\";N;s:19:\"image_boxes_is_logo\";N;s:9:\"image_big\";N;s:11:\"image_small\";N;s:20:\"function_description\";N;s:3:\"url\";N;s:12:\"facebook_url\";N;s:11:\"twitter_url\";N;s:8:\"xing_url\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL,0);
/*!40000 ALTER TABLE `tx_rkwauthors_domain_model_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwauthors_pages_authors_mm`
--

DROP TABLE IF EXISTS `tx_rkwauthors_pages_authors_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwauthors_pages_authors_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwauthors_pages_authors_mm`
--

LOCK TABLES `tx_rkwauthors_pages_authors_mm` WRITE;
/*!40000 ALTER TABLE `tx_rkwauthors_pages_authors_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwauthors_pages_authors_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwbasics_domain_model_department`
--

DROP TABLE IF EXISTS `tx_rkwbasics_domain_model_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwbasics_domain_model_department` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `internal_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `css_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `main_page` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `visibility` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwbasics_domain_model_department`
--

LOCK TABLES `tx_rkwbasics_domain_model_department` WRITE;
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_department` DISABLE KEYS */;
INSERT INTO `tx_rkwbasics_domain_model_department` VALUES (1,38,'Hgon test','','Hgon Test','','t3://page?uid=6','',0,1554390714,1554389436,3,0,0,0,0,256,0,0,_binary 'a:11:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:10:\"visibility\";N;s:4:\"name\";N;s:10:\"short_name\";N;s:13:\"internal_name\";N;s:9:\"css_class\";N;s:9:\"main_page\";N;s:11:\"description\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL);
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwbasics_domain_model_documenttype`
--

DROP TABLE IF EXISTS `tx_rkwbasics_domain_model_documenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwbasics_domain_model_documenttype` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `internal_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `box_template_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visibility` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwbasics_domain_model_documenttype`
--

LOCK TABLES `tx_rkwbasics_domain_model_documenttype` WRITE;
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_documenttype` DISABLE KEYS */;
INSERT INTO `tx_rkwbasics_domain_model_documenttype` VALUES (1,63,'Hgon Test1','','HgonTest1','','',0,'events',1562320352,1554389460,3,0,1,0,0,256,0,0,_binary 'a:1:{s:6:\"hidden\";N;}',NULL),(2,63,'Arbeitskreistreffen','','arbeitskreistreffen','','',1,'events',1562587024,1562320258,3,0,0,0,0,128,0,0,_binary 'a:10:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:10:\"visibility\";N;s:4:\"type\";N;s:13:\"internal_name\";N;s:17:\"box_template_name\";N;s:11:\"description\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL),(3,63,'Exkursion','','exkursion','','',1,'events',1562320269,1562320269,3,0,0,0,0,192,0,0,_binary 'a:10:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:10:\"visibility\";N;s:4:\"type\";N;s:13:\"internal_name\";N;s:17:\"box_template_name\";N;s:11:\"description\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL),(4,63,'Fortbildung','','fortbildung','','',1,'events',1562320280,1562320280,3,0,0,0,0,224,0,0,_binary 'a:10:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:10:\"visibility\";N;s:4:\"type\";N;s:13:\"internal_name\";N;s:17:\"box_template_name\";N;s:11:\"description\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL),(5,63,'HGON Reisen','','hgonreisen','','',1,'events',1562320295,1562320295,3,0,0,0,0,240,0,0,_binary 'a:10:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:10:\"visibility\";N;s:4:\"type\";N;s:13:\"internal_name\";N;s:17:\"box_template_name\";N;s:11:\"description\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL),(6,63,'Kinder','','kinder','','',1,'events',1562320310,1562320310,3,0,0,0,0,248,0,0,_binary 'a:10:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:10:\"visibility\";N;s:4:\"type\";N;s:13:\"internal_name\";N;s:17:\"box_template_name\";N;s:11:\"description\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL),(7,63,'Vortrag','','vortrag','','',1,'events',1562320321,1562320321,3,0,0,0,0,252,0,0,_binary 'a:10:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:10:\"visibility\";N;s:4:\"type\";N;s:13:\"internal_name\";N;s:17:\"box_template_name\";N;s:11:\"description\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL);
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_documenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwbasics_domain_model_enterprisesize`
--

DROP TABLE IF EXISTS `tx_rkwbasics_domain_model_enterprisesize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwbasics_domain_model_enterprisesize` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visibility` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwbasics_domain_model_enterprisesize`
--

LOCK TABLES `tx_rkwbasics_domain_model_enterprisesize` WRITE;
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_enterprisesize` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_enterprisesize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwbasics_domain_model_mediasources`
--

DROP TABLE IF EXISTS `tx_rkwbasics_domain_model_mediasources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwbasics_domain_model_mediasources` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `internal` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwbasics_domain_model_mediasources`
--

LOCK TABLES `tx_rkwbasics_domain_model_mediasources` WRITE;
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_mediasources` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_mediasources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwbasics_domain_model_sector`
--

DROP TABLE IF EXISTS `tx_rkwbasics_domain_model_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwbasics_domain_model_sector` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visibility` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwbasics_domain_model_sector`
--

LOCK TABLES `tx_rkwbasics_domain_model_sector` WRITE;
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_sector` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwbasics_domain_model_series`
--

DROP TABLE IF EXISTS `tx_rkwbasics_domain_model_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwbasics_domain_model_series` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visibility` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwbasics_domain_model_series`
--

LOCK TABLES `tx_rkwbasics_domain_model_series` WRITE;
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_series` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwbasics_domain_model_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwevents_domain_model_event`
--

DROP TABLE IF EXISTS `tx_rkwevents_domain_model_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwevents_domain_model_event` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start` int(11) unsigned NOT NULL DEFAULT '0',
  `end` int(11) unsigned NOT NULL DEFAULT '0',
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `testimonials` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `target_group` text COLLATE utf8_unicode_ci NOT NULL,
  `schedule` text COLLATE utf8_unicode_ci NOT NULL,
  `partner` text COLLATE utf8_unicode_ci NOT NULL,
  `seats` int(11) NOT NULL DEFAULT '0',
  `costs_reg` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `costs_red` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `costs_red_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `costs_tax` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reg_required` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reg_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ext_reg_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `document_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `project` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `series` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `logos` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` int(11) unsigned DEFAULT '0',
  `place` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `online_event` smallint(5) unsigned NOT NULL DEFAULT '0',
  `online_event_access_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `external_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `internal_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `be_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `organizer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `add_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `presentations` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sheet` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gallery1` int(11) unsigned DEFAULT '0',
  `gallery2` int(11) unsigned DEFAULT '0',
  `reservation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workshop1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workshop2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workshop3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reminder_mail_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `survey_before` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `survey_after` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `survey_after_mail_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  `workgroup` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_hgon_workgroup` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwevents_domain_model_event`
--

LOCK TABLES `tx_rkwevents_domain_model_event` WRITE;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_event` DISABLE KEYS */;
INSERT INTO `tx_rkwevents_domain_model_event` VALUES (1,37,'Veranstaltung 1','Eine schöne Bescherung!',1564327860,1567265460,'','','','<p>dasdasd</p>','','','',33,'333.00','0.00','',0,1,0,'','3','1','','','','',49,'1',0,'','','','5','1','0','0','0',0,0,'0','','','',0,'','',0,1562332373,1554391891,3,0,0,0,0,0,0,0,_binary 'a:37:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:5:\"title\";N;s:8:\"subtitle\";N;s:5:\"start\";N;s:3:\"end\";N;s:7:\"reg_end\";N;s:13:\"document_type\";N;s:6:\"series\";N;s:10:\"department\";N;s:7:\"project\";N;s:9:\"organizer\";N;s:11:\"description\";N;s:12:\"target_group\";N;s:7:\"partner\";N;s:8:\"add_info\";N;s:8:\"schedule\";N;s:12:\"testimonials\";N;s:5:\"seats\";N;s:9:\"costs_reg\";N;s:9:\"costs_red\";N;s:19:\"costs_red_condition\";N;s:8:\"currency\";N;s:9:\"costs_tax\";N;s:12:\"reg_required\";N;s:12:\"online_event\";N;s:12:\"ext_reg_link\";N;s:5:\"place\";N;s:7:\"be_user\";N;s:16:\"internal_contact\";N;s:16:\"external_contact\";N;s:8:\"gallery2\";N;s:13:\"presentations\";N;s:5:\"sheet\";N;s:11:\"reservation\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL,0,0),(2,37,'Veranstaltung 2','',1564327860,1567265460,'','','','<p>dasdasd</p>','','','',33,'333.00','0.00','',0,1,0,'','4','1','0','','','',49,'1',0,'','','','5','1','0','0','0',0,0,'0','','','',0,'','',0,1562573163,1554455753,3,0,0,0,0,0,0,0,_binary 'a:38:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:5:\"title\";N;s:8:\"subtitle\";N;s:5:\"start\";N;s:3:\"end\";N;s:7:\"reg_end\";N;s:13:\"document_type\";N;s:6:\"series\";N;s:10:\"department\";N;s:7:\"project\";N;s:9:\"organizer\";N;s:11:\"description\";N;s:12:\"target_group\";N;s:7:\"partner\";N;s:8:\"add_info\";N;s:8:\"schedule\";N;s:12:\"testimonials\";N;s:5:\"seats\";N;s:9:\"costs_reg\";N;s:9:\"costs_red\";N;s:19:\"costs_red_condition\";N;s:8:\"currency\";N;s:9:\"costs_tax\";N;s:12:\"reg_required\";N;s:12:\"online_event\";N;s:12:\"ext_reg_link\";N;s:5:\"place\";N;s:7:\"be_user\";N;s:16:\"internal_contact\";N;s:16:\"external_contact\";N;s:8:\"gallery2\";N;s:13:\"presentations\";N;s:5:\"sheet\";N;s:11:\"reservation\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:17:\"tx_hgon_workgroup\";N;}',NULL,0,0),(3,37,'Veranstaltung  3','',1566660660,1567265460,'','','','<p>dasdasd</p>','','','',33,'333.00','0.00','',0,1,0,'','6','1','0','','','',49,'1',0,'','','','5','1','0','0','0',0,0,'0','','','',0,'','',0,1562332350,1554455759,3,0,0,0,0,0,0,0,_binary 'a:37:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:5:\"title\";N;s:8:\"subtitle\";N;s:5:\"start\";N;s:3:\"end\";N;s:7:\"reg_end\";N;s:13:\"document_type\";N;s:6:\"series\";N;s:10:\"department\";N;s:7:\"project\";N;s:9:\"organizer\";N;s:11:\"description\";N;s:12:\"target_group\";N;s:7:\"partner\";N;s:8:\"add_info\";N;s:8:\"schedule\";N;s:12:\"testimonials\";N;s:5:\"seats\";N;s:9:\"costs_reg\";N;s:9:\"costs_red\";N;s:19:\"costs_red_condition\";N;s:8:\"currency\";N;s:9:\"costs_tax\";N;s:12:\"reg_required\";N;s:12:\"online_event\";N;s:12:\"ext_reg_link\";N;s:5:\"place\";N;s:7:\"be_user\";N;s:16:\"internal_contact\";N;s:16:\"external_contact\";N;s:8:\"gallery2\";N;s:13:\"presentations\";N;s:5:\"sheet\";N;s:11:\"reservation\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL,0,0),(4,42,'Arbeitskreis-Treffen 1','',1563693720,1563693720,'','','','<p>Die Beschreibung des Treffens</p>','','','',12,'222.00','0.00','',0,1,0,'','1','1','','','','',49,'1',0,'','','','5','1','0','0','0',0,0,'0','','','',0,'','',0,1562333886,1557905002,3,0,0,0,0,0,0,0,_binary 'a:37:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:5:\"title\";N;s:8:\"subtitle\";N;s:5:\"start\";N;s:3:\"end\";N;s:7:\"reg_end\";N;s:13:\"document_type\";N;s:6:\"series\";N;s:10:\"department\";N;s:7:\"project\";N;s:9:\"organizer\";N;s:11:\"description\";N;s:12:\"target_group\";N;s:7:\"partner\";N;s:8:\"add_info\";N;s:8:\"schedule\";N;s:12:\"testimonials\";N;s:5:\"seats\";N;s:9:\"costs_reg\";N;s:9:\"costs_red\";N;s:19:\"costs_red_condition\";N;s:8:\"currency\";N;s:9:\"costs_tax\";N;s:12:\"reg_required\";N;s:12:\"online_event\";N;s:12:\"ext_reg_link\";N;s:5:\"place\";N;s:7:\"be_user\";N;s:16:\"internal_contact\";N;s:16:\"external_contact\";N;s:8:\"gallery2\";N;s:13:\"presentations\";N;s:5:\"sheet\";N;s:11:\"reservation\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL,1,1),(5,42,'Arbeitskreistreffen 2','',1569159420,1575038220,'','','','<p>gdffd</p>','','','',333,'111.00','0.00','',0,1,0,'','2','1','','2','','',49,'1',0,'','','','5','1','','','',0,0,'','','','',0,'','',0,1562333886,1562333886,3,0,0,0,0,0,0,0,_binary 'a:37:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:5:\"title\";N;s:8:\"subtitle\";N;s:5:\"start\";N;s:3:\"end\";N;s:7:\"reg_end\";N;s:13:\"document_type\";N;s:6:\"series\";N;s:10:\"department\";N;s:7:\"project\";N;s:9:\"organizer\";N;s:11:\"description\";N;s:12:\"target_group\";N;s:7:\"partner\";N;s:8:\"add_info\";N;s:8:\"schedule\";N;s:12:\"testimonials\";N;s:5:\"seats\";N;s:9:\"costs_reg\";N;s:9:\"costs_red\";N;s:19:\"costs_red_condition\";N;s:8:\"currency\";N;s:9:\"costs_tax\";N;s:12:\"reg_required\";N;s:12:\"online_event\";N;s:12:\"ext_reg_link\";N;s:5:\"place\";N;s:7:\"be_user\";N;s:16:\"internal_contact\";N;s:16:\"external_contact\";N;s:8:\"gallery2\";N;s:13:\"presentations\";N;s:5:\"sheet\";N;s:11:\"reservation\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',NULL,1,1);
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwevents_domain_model_eventcontact`
--

DROP TABLE IF EXISTS `tx_rkwevents_domain_model_eventcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwevents_domain_model_eventcontact` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `salutation` int(11) NOT NULL DEFAULT '99',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lang` int(11) unsigned DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwevents_domain_model_eventcontact`
--

LOCK TABLES `tx_rkwevents_domain_model_eventcontact` WRITE;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventcontact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwevents_domain_model_eventorganizer`
--

DROP TABLE IF EXISTS `tx_rkwevents_domain_model_eventorganizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwevents_domain_model_eventorganizer` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `salutation` int(11) NOT NULL DEFAULT '99',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwevents_domain_model_eventorganizer`
--

LOCK TABLES `tx_rkwevents_domain_model_eventorganizer` WRITE;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventorganizer` DISABLE KEYS */;
INSERT INTO `tx_rkwevents_domain_model_eventorganizer` VALUES (1,37,99,'','','Hgon Test','','','','','','',1554391203,1554389518,3,0,0,0,0,_binary 'a:3:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:7:\"company\";N;}',NULL);
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventorganizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwevents_domain_model_eventplace`
--

DROP TABLE IF EXISTS `tx_rkwevents_domain_model_eventplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwevents_domain_model_eventplace` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short` text COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` int(11) unsigned DEFAULT '0',
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwevents_domain_model_eventplace`
--

LOCK TABLES `tx_rkwevents_domain_model_eventplace` WRITE;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventplace` DISABLE KEYS */;
INSERT INTO `tx_rkwevents_domain_model_eventplace` VALUES (1,37,'Test Veranstaltungsort','','Adresse','34423','Stadt',54,'','',1554391753,1554391753,3,0,0,0,0,_binary 'a:8:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:7:\"address\";N;s:3:\"zip\";N;s:4:\"city\";N;s:7:\"country\";N;s:5:\"short\";N;}',NULL);
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwevents_domain_model_eventreservation`
--

DROP TABLE IF EXISTS `tx_rkwevents_domain_model_eventreservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwevents_domain_model_eventreservation` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `event` int(11) unsigned NOT NULL DEFAULT '0',
  `remark` text COLLATE utf8_unicode_ci NOT NULL,
  `valid_until` int(11) unsigned NOT NULL DEFAULT '0',
  `add_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fe_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salutation` int(11) NOT NULL DEFAULT '99',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `server_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwevents_domain_model_eventreservation`
--

LOCK TABLES `tx_rkwevents_domain_model_eventreservation` WRITE;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventreservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventreservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwevents_domain_model_eventreservationaddperson`
--

DROP TABLE IF EXISTS `tx_rkwevents_domain_model_eventreservationaddperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwevents_domain_model_eventreservationaddperson` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `event_reservation` int(11) unsigned NOT NULL DEFAULT '0',
  `salutation` int(11) NOT NULL DEFAULT '99',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwevents_domain_model_eventreservationaddperson`
--

LOCK TABLES `tx_rkwevents_domain_model_eventreservationaddperson` WRITE;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventreservationaddperson` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventreservationaddperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwevents_domain_model_eventseries`
--

DROP TABLE IF EXISTS `tx_rkwevents_domain_model_eventseries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwevents_domain_model_eventseries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short` text COLLATE utf8_unicode_ci NOT NULL,
  `rota` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwevents_domain_model_eventseries`
--

LOCK TABLES `tx_rkwevents_domain_model_eventseries` WRITE;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventseries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventseries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwevents_domain_model_eventsheet`
--

DROP TABLE IF EXISTS `tx_rkwevents_domain_model_eventsheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwevents_domain_model_eventsheet` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `event` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `html` text COLLATE utf8_unicode_ci NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwevents_domain_model_eventsheet`
--

LOCK TABLES `tx_rkwevents_domain_model_eventsheet` WRITE;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventsheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventsheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwevents_domain_model_eventworkshop`
--

DROP TABLE IF EXISTS `tx_rkwevents_domain_model_eventworkshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwevents_domain_model_eventworkshop` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start` int(11) unsigned NOT NULL DEFAULT '0',
  `end` int(11) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `previous_experience` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `objective` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `speaker` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `available_seats` int(11) NOT NULL DEFAULT '0',
  `reg_required` smallint(5) unsigned NOT NULL DEFAULT '0',
  `costs` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `registered_frontend_users` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwevents_domain_model_eventworkshop`
--

LOCK TABLES `tx_rkwevents_domain_model_eventworkshop` WRITE;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventworkshop` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwevents_domain_model_eventworkshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwgeolocation_domain_model_geolocation`
--

DROP TABLE IF EXISTS `tx_rkwgeolocation_domain_model_geolocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwgeolocation_domain_model_geolocation` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwgeolocation_domain_model_geolocation`
--

LOCK TABLES `tx_rkwgeolocation_domain_model_geolocation` WRITE;
/*!40000 ALTER TABLE `tx_rkwgeolocation_domain_model_geolocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwgeolocation_domain_model_geolocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwmailer_domain_model_link`
--

DROP TABLE IF EXISTS `tx_rkwmailer_domain_model_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwmailer_domain_model_link` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `queue_mail` int(11) NOT NULL DEFAULT '0',
  `statistic_openings` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `hash` (`hash`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwmailer_domain_model_link`
--

LOCK TABLES `tx_rkwmailer_domain_model_link` WRITE;
/*!40000 ALTER TABLE `tx_rkwmailer_domain_model_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwmailer_domain_model_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwmailer_domain_model_queuemail`
--

DROP TABLE IF EXISTS `tx_rkwmailer_domain_model_queuemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwmailer_domain_model_queuemail` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `status` smallint(5) unsigned DEFAULT '1',
  `type` smallint(5) unsigned DEFAULT '0',
  `pipeline` smallint(5) unsigned DEFAULT '0',
  `queue_recipients` int(11) NOT NULL DEFAULT '0',
  `links` int(11) NOT NULL DEFAULT '0',
  `statistic_mail` int(11) NOT NULL DEFAULT '0',
  `statistic_openings` int(11) NOT NULL DEFAULT '0',
  `from_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reply_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `return_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `body_text` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` blob,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attachment_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plaintext_template` longtext COLLATE utf8_unicode_ci NOT NULL,
  `html_template` longtext COLLATE utf8_unicode_ci NOT NULL,
  `calendar_template` longtext COLLATE utf8_unicode_ci NOT NULL,
  `layout_paths` text COLLATE utf8_unicode_ci NOT NULL,
  `partial_paths` text COLLATE utf8_unicode_ci NOT NULL,
  `template_paths` text COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `campaign_parameter` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `settings_pid` int(11) unsigned DEFAULT '0',
  `tstamp_fav_sending` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp_real_sending` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp_send_finish` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwmailer_domain_model_queuemail`
--

LOCK TABLES `tx_rkwmailer_domain_model_queuemail` WRITE;
/*!40000 ALTER TABLE `tx_rkwmailer_domain_model_queuemail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwmailer_domain_model_queuemail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwmailer_domain_model_queuerecipient`
--

DROP TABLE IF EXISTS `tx_rkwmailer_domain_model_queuerecipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwmailer_domain_model_queuerecipient` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `queue_mail` int(11) unsigned DEFAULT '0',
  `statistic_openings` int(11) NOT NULL DEFAULT '0',
  `frontend_user` int(11) unsigned DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salutation` smallint(5) unsigned DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `marker` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(5) unsigned DEFAULT '1',
  `language_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plaintext_body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `html_body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `calendar_body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `queue_mail_status` (`queue_mail`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwmailer_domain_model_queuerecipient`
--

LOCK TABLES `tx_rkwmailer_domain_model_queuerecipient` WRITE;
/*!40000 ALTER TABLE `tx_rkwmailer_domain_model_queuerecipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwmailer_domain_model_queuerecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwmailer_domain_model_statisticmail`
--

DROP TABLE IF EXISTS `tx_rkwmailer_domain_model_statisticmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwmailer_domain_model_statisticmail` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `queue_mail` int(11) NOT NULL DEFAULT '0',
  `total_count` int(11) NOT NULL DEFAULT '0',
  `contacted_count` int(11) NOT NULL DEFAULT '0',
  `bounces_count` int(11) NOT NULL DEFAULT '0',
  `error_count` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwmailer_domain_model_statisticmail`
--

LOCK TABLES `tx_rkwmailer_domain_model_statisticmail` WRITE;
/*!40000 ALTER TABLE `tx_rkwmailer_domain_model_statisticmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwmailer_domain_model_statisticmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwmailer_domain_model_statisticopening`
--

DROP TABLE IF EXISTS `tx_rkwmailer_domain_model_statisticopening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwmailer_domain_model_statisticopening` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `queue_mail` int(11) NOT NULL DEFAULT '0',
  `queue_recipient` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '0',
  `pixel` int(11) NOT NULL DEFAULT '0',
  `click_count` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwmailer_domain_model_statisticopening`
--

LOCK TABLES `tx_rkwmailer_domain_model_statisticopening` WRITE;
/*!40000 ALTER TABLE `tx_rkwmailer_domain_model_statisticopening` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwmailer_domain_model_statisticopening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwprojects_domain_model_projects`
--

DROP TABLE IF EXISTS `tx_rkwprojects_domain_model_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwprojects_domain_model_projects` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `internal_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0',
  `partner_logos` int(10) unsigned NOT NULL DEFAULT '0',
  `project_pid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `project_staff` int(10) unsigned NOT NULL DEFAULT '0',
  `project_manager` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwprojects_domain_model_projects`
--

LOCK TABLES `tx_rkwprojects_domain_model_projects` WRITE;
/*!40000 ALTER TABLE `tx_rkwprojects_domain_model_projects` DISABLE KEYS */;
INSERT INTO `tx_rkwprojects_domain_model_projects` VALUES (1,45,'Projekt 1 - Vögel','Pr1 - Vögel','projekt1',0,1,'t3://page?uid=25',0,1,'0',1558520139,1557754086,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:13:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:10:\"visibility\";N;s:4:\"name\";N;s:10:\"short_name\";N;s:13:\"internal_name\";N;s:13:\"partner_logos\";N;s:11:\"project_pid\";N;s:15:\"project_manager\";N;s:13:\"project_staff\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:12:\"sys_category\";N;}',NULL),(2,45,'Projekt 2 - Lebensräume','Pr2 - Lebensräume','projekt2',0,1,'t3://page?uid=26',0,0,'0',1558515813,1557754102,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:13:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:10:\"visibility\";N;s:4:\"name\";N;s:10:\"short_name\";N;s:13:\"internal_name\";N;s:13:\"partner_logos\";N;s:11:\"project_pid\";N;s:15:\"project_manager\";N;s:13:\"project_staff\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:12:\"sys_category\";N;}',NULL),(3,45,'Projekt 3 - Artenschutz','Pr3 - Artenschutz','projekt3',0,1,'t3://page?uid=27',0,0,'1',1558515819,1557754114,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:13:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:10:\"visibility\";N;s:4:\"name\";N;s:10:\"short_name\";N;s:13:\"internal_name\";N;s:13:\"partner_logos\";N;s:11:\"project_pid\";N;s:15:\"project_manager\";N;s:13:\"project_staff\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:12:\"sys_category\";N;}',NULL),(4,45,'Projekt 4','Pr4','projekt4',0,1,'',0,0,'0',1558515824,1557759805,3,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,_binary 'a:13:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:10:\"visibility\";N;s:4:\"name\";N;s:10:\"short_name\";N;s:13:\"internal_name\";N;s:13:\"partner_logos\";N;s:11:\"project_pid\";N;s:15:\"project_manager\";N;s:13:\"project_staff\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:12:\"sys_category\";N;}',NULL);
/*!40000 ALTER TABLE `tx_rkwprojects_domain_model_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwprojects_projects_authors_mm`
--

DROP TABLE IF EXISTS `tx_rkwprojects_projects_authors_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwprojects_projects_authors_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwprojects_projects_authors_mm`
--

LOCK TABLES `tx_rkwprojects_projects_authors_mm` WRITE;
/*!40000 ALTER TABLE `tx_rkwprojects_projects_authors_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwprojects_projects_authors_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwregistration_domain_model_privacy`
--

DROP TABLE IF EXISTS `tx_rkwregistration_domain_model_privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwregistration_domain_model_privacy` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `frontend_user` int(11) NOT NULL DEFAULT '0',
  `registration_user_sha1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `foreign_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `foreign_uid` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_agent` longtext COLLATE utf8_unicode_ci NOT NULL,
  `extension_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plugin_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `controller_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `action_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `server_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `server_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `server_referer_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `child` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwregistration_domain_model_privacy`
--

LOCK TABLES `tx_rkwregistration_domain_model_privacy` WRITE;
/*!40000 ALTER TABLE `tx_rkwregistration_domain_model_privacy` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwregistration_domain_model_privacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwregistration_domain_model_registration`
--

DROP TABLE IF EXISTS `tx_rkwregistration_domain_model_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwregistration_domain_model_registration` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user` int(11) NOT NULL DEFAULT '0',
  `user_sha1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token_yes` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `valid_until` int(11) unsigned NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwregistration_domain_model_registration`
--

LOCK TABLES `tx_rkwregistration_domain_model_registration` WRITE;
/*!40000 ALTER TABLE `tx_rkwregistration_domain_model_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwregistration_domain_model_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwregistration_domain_model_service`
--

DROP TABLE IF EXISTS `tx_rkwregistration_domain_model_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwregistration_domain_model_service` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `service_sha1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token_yes` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `valid_until` int(11) unsigned NOT NULL DEFAULT '0',
  `enabled_by_admin` smallint(6) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwregistration_domain_model_service`
--

LOCK TABLES `tx_rkwregistration_domain_model_service` WRITE;
/*!40000 ALTER TABLE `tx_rkwregistration_domain_model_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwregistration_domain_model_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwregistration_domain_model_title`
--

DROP TABLE IF EXISTS `tx_rkwregistration_domain_model_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwregistration_domain_model_title` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `name_long` varchar(255) NOT NULL DEFAULT '',
  `is_title_after` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwregistration_domain_model_title`
--

LOCK TABLES `tx_rkwregistration_domain_model_title` WRITE;
/*!40000 ALTER TABLE `tx_rkwregistration_domain_model_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwregistration_domain_model_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwregistration_fegroups_beusers_mm`
--

DROP TABLE IF EXISTS `tx_rkwregistration_fegroups_beusers_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwregistration_fegroups_beusers_mm` (
  `uid_local` int(11) unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwregistration_fegroups_beusers_mm`
--

LOCK TABLES `tx_rkwregistration_fegroups_beusers_mm` WRITE;
/*!40000 ALTER TABLE `tx_rkwregistration_fegroups_beusers_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwregistration_fegroups_beusers_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwsurvey_domain_model_question`
--

DROP TABLE IF EXISTS `tx_rkwsurvey_domain_model_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwsurvey_domain_model_question` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hint` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `required` int(11) NOT NULL DEFAULT '0',
  `answer_option` text COLLATE utf8_unicode_ci NOT NULL,
  `survey` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `text_consent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `text_rejection` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scale_from_points` int(11) NOT NULL DEFAULT '0',
  `scale_to_points` int(11) NOT NULL DEFAULT '0',
  `do_action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `do_action_if` smallint(5) unsigned NOT NULL DEFAULT '0',
  `do_action_jump` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwsurvey_domain_model_question`
--

LOCK TABLES `tx_rkwsurvey_domain_model_question` WRITE;
/*!40000 ALTER TABLE `tx_rkwsurvey_domain_model_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwsurvey_domain_model_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwsurvey_domain_model_questionresult`
--

DROP TABLE IF EXISTS `tx_rkwsurvey_domain_model_questionresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwsurvey_domain_model_questionresult` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `survey_result` int(10) unsigned DEFAULT '0',
  `question` int(10) unsigned NOT NULL DEFAULT '0',
  `skipped` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwsurvey_domain_model_questionresult`
--

LOCK TABLES `tx_rkwsurvey_domain_model_questionresult` WRITE;
/*!40000 ALTER TABLE `tx_rkwsurvey_domain_model_questionresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwsurvey_domain_model_questionresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwsurvey_domain_model_survey`
--

DROP TABLE IF EXISTS `tx_rkwsurvey_domain_model_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwsurvey_domain_model_survey` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttext` text COLLATE utf8_unicode_ci NOT NULL,
  `endtext` text COLLATE utf8_unicode_ci NOT NULL,
  `question` int(10) unsigned NOT NULL DEFAULT '0',
  `admin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` int(10) unsigned NOT NULL DEFAULT '0',
  `access_restricted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwsurvey_domain_model_survey`
--

LOCK TABLES `tx_rkwsurvey_domain_model_survey` WRITE;
/*!40000 ALTER TABLE `tx_rkwsurvey_domain_model_survey` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwsurvey_domain_model_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwsurvey_domain_model_surveyresult`
--

DROP TABLE IF EXISTS `tx_rkwsurvey_domain_model_surveyresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwsurvey_domain_model_surveyresult` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `finished` int(11) NOT NULL DEFAULT '0',
  `survey` int(10) unsigned DEFAULT '0',
  `question_result` int(10) unsigned NOT NULL DEFAULT '0',
  `token` int(10) unsigned DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwsurvey_domain_model_surveyresult`
--

LOCK TABLES `tx_rkwsurvey_domain_model_surveyresult` WRITE;
/*!40000 ALTER TABLE `tx_rkwsurvey_domain_model_surveyresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwsurvey_domain_model_surveyresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rkwsurvey_domain_model_token`
--

DROP TABLE IF EXISTS `tx_rkwsurvey_domain_model_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rkwsurvey_domain_model_token` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `used` int(10) unsigned DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `survey` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rkwsurvey_domain_model_token`
--

LOCK TABLES `tx_rkwsurvey_domain_model_token` WRITE;
/*!40000 ALTER TABLE `tx_rkwsurvey_domain_model_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rkwsurvey_domain_model_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rtehtmlarea_acronym`
--

DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) NOT NULL DEFAULT '',
  `acronym` varchar(255) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rtehtmlarea_acronym`
--

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `nextexecution` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_time` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_failure` text,
  `lastexecution_context` varchar(3) NOT NULL DEFAULT '',
  `serialized_task_object` mediumblob,
  `serialized_executions` mediumblob,
  `task_group` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupName` varchar(80) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-09 14:24:33
