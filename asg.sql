-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: improvis_simp
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

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
-- Table structure for table `access_levels`
--

DROP TABLE IF EXISTS `access_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access` int(11) NOT NULL,
  `document_home` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_levels`
--

LOCK TABLES `access_levels` WRITE;
/*!40000 ALTER TABLE `access_levels` DISABLE KEYS */;
INSERT INTO `access_levels` VALUES (1,'Administrator',0,10),(2,'Contributor',1,406),(3,'Player',2,369),(4,'Guest',3,347),(5,'Visitor',4,91);
/*!40000 ALTER TABLE `access_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspect_preferences`
--

DROP TABLE IF EXISTS `aspect_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspect_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `show_chat` tinyint(1) NOT NULL,
  `show_pwd` tinyint(1) NOT NULL,
  `show_who` tinyint(1) NOT NULL,
  `show_newasp` tinyint(1) NOT NULL,
  `show_nav` tinyint(1) NOT NULL,
  `show_help` tinyint(1) NOT NULL,
  `show_adduser` tinyint(1) NOT NULL,
  `show_setstyle` tinyint(1) NOT NULL,
  `show_bots` tinyint(1) NOT NULL,
  `show_setfocus` tinyint(1) NOT NULL,
  `show_activate` tinyint(1) NOT NULL,
  `show_addbot` tinyint(1) NOT NULL,
  `show_options` tinyint(1) NOT NULL,
  `show_irootlvl` tinyint(1) NOT NULL,
  `show_setprofile` tinyint(1) NOT NULL,
  `show_ls` tinyint(1) NOT NULL,
  `show_edit` tinyint(1) NOT NULL,
  `show_delete` tinyint(1) NOT NULL,
  `show_idoc` tinyint(1) NOT NULL,
  `show_erase` tinyint(1) NOT NULL,
  `show_content` tinyint(1) NOT NULL,
  `show_ruser` tinyint(1) NOT NULL,
  `show_cms` tinyint(1) NOT NULL,
  `show_mod` tinyint(1) NOT NULL,
  `show_viewset` tinyint(1) NOT NULL,
  `show_addcom` int(11) NOT NULL,
  `show_newbie` int(11) NOT NULL,
  `show_setbotstate` int(11) NOT NULL,
  `show_types` int(11) NOT NULL,
  `show_flare` int(11) NOT NULL,
  `show_dice` int(11) NOT NULL,
  `show_submitlink` int(11) NOT NULL,
  `show_meta` int(11) NOT NULL,
  `show_rss` int(11) NOT NULL,
  `show_links` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspect_preferences`
--

LOCK TABLES `aspect_preferences` WRITE;
/*!40000 ALTER TABLE `aspect_preferences` DISABLE KEYS */;
INSERT INTO `aspect_preferences` VALUES (1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0),(2,44,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `aspect_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspect_sets`
--

DROP TABLE IF EXISTS `aspect_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspect_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access` int(11) NOT NULL,
  `show_chat` tinyint(1) NOT NULL,
  `show_pwd` tinyint(1) NOT NULL,
  `show_who` tinyint(1) NOT NULL,
  `show_newasp` tinyint(1) NOT NULL,
  `show_nav` tinyint(1) NOT NULL,
  `show_help` tinyint(1) NOT NULL,
  `show_adduser` tinyint(1) NOT NULL,
  `show_setstyle` tinyint(1) NOT NULL,
  `show_bots` tinyint(1) NOT NULL,
  `show_setfocus` tinyint(1) NOT NULL,
  `show_activate` tinyint(1) NOT NULL,
  `show_addbot` tinyint(1) NOT NULL,
  `show_options` tinyint(1) NOT NULL,
  `show_irootlvl` tinyint(1) NOT NULL,
  `show_setprofile` tinyint(1) NOT NULL,
  `show_ls` tinyint(1) NOT NULL,
  `show_edit` tinyint(1) NOT NULL,
  `show_delete` tinyint(1) NOT NULL,
  `show_idoc` tinyint(1) NOT NULL,
  `show_erase` tinyint(1) NOT NULL,
  `show_content` tinyint(1) NOT NULL,
  `show_ruser` tinyint(1) NOT NULL,
  `show_cms` tinyint(1) NOT NULL,
  `show_mod` tinyint(1) NOT NULL,
  `show_viewset` tinyint(1) NOT NULL,
  `show_addcom` int(11) NOT NULL,
  `show_siteopts` int(11) NOT NULL,
  `show_newbie` int(11) NOT NULL,
  `show_setbotstate` int(11) NOT NULL,
  `show_types` int(11) NOT NULL,
  `show_flare` int(11) NOT NULL,
  `show_dice` int(11) NOT NULL,
  `show_submitlink` int(11) NOT NULL,
  `show_meta` int(11) NOT NULL,
  `show_rss` int(11) NOT NULL,
  `show_links` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspect_sets`
--

LOCK TABLES `aspect_sets` WRITE;
/*!40000 ALTER TABLE `aspect_sets` DISABLE KEYS */;
INSERT INTO `aspect_sets` VALUES (1,'null',4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,'chat',4,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,'content',4,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `aspect_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspects`
--

DROP TABLE IF EXISTS `aspects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `div` text NOT NULL,
  `title` text NOT NULL,
  `command` text NOT NULL,
  `function` int(11) NOT NULL,
  `pref_column` text NOT NULL,
  `session_var` text NOT NULL,
  `access` int(11) NOT NULL,
  `ajaxify` int(11) NOT NULL,
  `desc` text NOT NULL,
  `css_class` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspects`
--

LOCK TABLES `aspects` WRITE;
/*!40000 ALTER TABLE `aspects` DISABLE KEYS */;
INSERT INTO `aspects` VALUES (1,'chat','Public Chat','chat',56,'show_chat','show_chat',4,1,'The chat allows you to communicate with other users who are currently logged in.','aspect','2011-10-08 03:05:32'),(20,'who','Who','who',78,'show_who','show_who',4,1,'Shows currently active users.','aspect','2011-04-18 02:57:36'),(23,'newasp','New Aspect','newasp',82,'show_newasp','show_newasp',0,0,'Shows form to add a new site aspect.','aspect','2011-05-02 22:11:08'),(26,'nav','Navigation','nav',88,'show_nav','show_nav',4,0,'Displays navigation.','aspect','2011-05-02 21:57:04'),(27,'help','Help','help',91,'show_help','show_help',4,0,'Displays help.','aspect','2011-04-18 02:57:36'),(28,'adduser','Add user','adduser',96,'show_adduser','show_adduser',0,0,'This displays the form to make a user.','aspect','2011-04-18 02:57:36'),(30,'setstyle','Set Style','setstyle',90,'show_setstyle','show_setstyle',4,0,'Allows user to change the way the site looks.','aspect','2011-04-18 02:57:36'),(39,'setfocus','Set bot focus','setfocus',136,'show_setfocus','show_setfocus',0,0,'Shows menu to set which user a bot is focused on.','aspect','2011-04-18 02:57:36'),(38,'bots','Bots','bots',135,'show_bots','show_bots',0,1,'Shows which bots are active, what state they are in, and who they are focused on.','aspect','2011-04-18 02:57:36'),(40,'activate','Activate Bot','activate',156,'show_activate','show_activate',0,0,'Activates bots.','aspect','2011-04-18 02:57:36'),(41,'addbot','Add bot','addbot',160,'show_addbot','show_addbot',0,0,'Shows menu to add bot.','aspect','2011-04-18 02:57:36'),(43,'options','Options','options',239,'show_options','show_options',1,0,'Shows the options for the current sublevel.','aspect','2011-04-18 02:57:36'),(44,'irootdoc','Insert Root Document','irootdoc',243,'show_irootlvl','show_irootlvl',0,0,'Shows form to insert a root document.','aspect','2011-09-06 00:31:37'),(45,'setprofile','Set Profile','setprofile',241,'show_setprofile','show_setprofile',4,0,'Shows form to modify user profile.','aspect','2011-05-02 22:01:33'),(50,'idoc','Insert document','idoc',244,'show_idoc','show_idoc',1,0,'Shows form to insert a document.','aspect','2011-10-06 03:19:05'),(47,'edit','Edit content','edit',245,'show_edit','show_edit',1,0,'Shows form to edit page content.','aspect','2011-05-02 22:25:17'),(48,'delete','Delete sublevel','delete',242,'show_delete','show_delete',0,0,'Shows confirmation to delete sublevel and all child sublevels.','aspect','2011-04-18 02:57:36'),(51,'erase','Erase content?','erase',240,'show_erase','show_erase',0,0,'Shows confirmation dialogue to erase a page contents.','aspect','2011-05-02 22:25:32'),(46,'ls','List documents beneath current','ls',266,'show_ls','show_ls',4,0,'Shows sub-documents for current page.','aspect','2011-10-08 00:02:28'),(80,'ruser','Remove user','ruser',328,'show_ruser','show_ruser',0,0,'Shows form to delete a user.','aspect','2011-05-02 22:25:48'),(2,'pwd','Current document','pwd',267,'show_pwd','show_pwd',4,0,'Shows your current position in the document hierarchy.','aspect','2011-05-02 23:22:22'),(54,'content','Content','content',238,'show_content','show_content',4,0,'Shows site content.','aspect','2011-05-02 22:00:07'),(95,'newbie','newbie','newbie',471,'show_newbie','show_newbie',4,0,'Shows newbie help messages.','aspect_default','0000-00-00 00:00:00'),(102,'dice','dice','dice',575,'show_dice','show_dice',3,0,'Shows dice.','aspect_default','0000-00-00 00:00:00'),(81,'cms','CMS Info','cms',341,'show_cms','show_cms',1,0,'Shows a box which displays information about the current document.','aspect','2011-05-02 23:22:10'),(83,'mod','Mod','mod',89,'show_mod','show_mod',0,0,'Shows document modification commands.','aspect_default','0000-00-00 00:00:00'),(93,'addcom','Add command.','addcom',486,'show_addcom','show_addcom',0,0,'Shows form to add a command that evaluates php to javascript.','aspect_default','2011-08-19 14:00:01'),(86,'viewset','viewset','viewset',467,'show_viewset','show_viewset',4,0,'Lists an individual\'s custom style rules.','aspect_default','0000-00-00 00:00:00'),(103,'submitlink','submitlink','submitlink',581,'show_submitlink','show_submitlink',0,0,'This displays a form to submit a link to the site.','aspect_default','0000-00-00 00:00:00'),(96,'setbotstate','setbotstate','setbotstate',509,'show_setbotstate','show_setbotstate',0,0,'Shows form to switch states (modes) for bots.','aspect_default','0000-00-00 00:00:00'),(101,'flare','flare','flare',566,'show_flare','show_flare',0,0,'Shows unicode flare.','aspect_default','0000-00-00 00:00:00'),(104,'meta','Metabrowser','meta',585,'show_meta','show_meta',3,0,'Shows metabrowser, which lets you browse outside pages in an aspect.','aspect_default','0000-00-00 00:00:00'),(105,'rss','RSS','rss',587,'show_rss','show_rss',3,0,'Shows rss feeds.','aspect_default','0000-00-00 00:00:00'),(106,'links','Links','links',582,'show_links','show_links',3,0,'Shows links that have been saved locally.','aspect_default','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `aspects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bots`
--

DROP TABLE IF EXISTS `bots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `focus_user` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `bot_userid` int(11) NOT NULL,
  `override` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FU_const` (`focus_user`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bots`
--

LOCK TABLES `bots` WRITE;
/*!40000 ALTER TABLE `bots` DISABLE KEYS */;
INSERT INTO `bots` VALUES (1,129,1,1,130,44,0);
/*!40000 ALTER TABLE `bots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_messages`
--

DROP TABLE IF EXISTS `chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `timestamp` datetime NOT NULL,
  `is_emote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_messages`
--

LOCK TABLES `chat_messages` WRITE;
/*!40000 ALTER TABLE `chat_messages` DISABLE KEYS */;
INSERT INTO `chat_messages` VALUES (1,1,'woo','2011-10-23 01:18:36',0);
/*!40000 ALTER TABLE `chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `table` text NOT NULL,
  `aspect` int(11) NOT NULL,
  `history_doc_id` int(11) NOT NULL,
  `access` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,'Main','chat_messages',1,109,4);
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commands`
--

DROP TABLE IF EXISTS `commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `document_id` int(11) NOT NULL,
  `help_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commands`
--

LOCK TABLES `commands` WRITE;
/*!40000 ALTER TABLE `commands` DISABLE KEYS */;
INSERT INTO `commands` VALUES (1,'me',513,'Sends an emote to the chat.',4),(2,'go',512,'Navigates to a specific document id.',4),(3,'fresh',501,'Refreshes.',0),(4,'zero',500,'Hides all aspects.',4),(5,'bye',499,'Logs you out.',4),(6,'bload',586,'Loads a url in the metabrowser.',0),(7,'set',514,'Sets an individual style rule.',0),(8,'unset',515,'Unsets css rule.',0);
/*!40000 ALTER TABLE `commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `css_rules`
--

DROP TABLE IF EXISTS `css_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `css_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `css_ident` text NOT NULL,
  `value` text NOT NULL,
  `attr` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `css_rules`
--

LOCK TABLES `css_rules` WRITE;
/*!40000 ALTER TABLE `css_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `css_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `when` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `locked` int(11) NOT NULL,
  `hidden` int(11) NOT NULL,
  `evaluate` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=588 DEFAULT CHARSET=latin1 COMMENT='Contains main information for Utilis Script';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (10,'Codex','  ',0,1,0,0,0,1),(96,'Add User','<?php\r\n\r\n    global $myModel;\r\n    $lvls = $myModel->getAccessLevels();\r\n    $styles_doc_id = $myModel->getStylesDocId();\r\n\r\n?>\r\n\r\n<form id=\"adduser_form\" method=\"POST\" action=\"user/insert_user.php\">\r\n\r\n<p><label for=\"newAccessLevel\">Access level:</label>\r\n<select id=\"newAccessLevel\" name=\"newAccessLevel\">\r\n\r\n<?php\r\n    foreach($lvls as $lvl => $name){\r\n        print \"<option value=\\\"$lvl\\\">$name</option>\";\r\n    }\r\n?>\r\n\r\n</select></p>\r\n<p><label for=\"newUsername\\\">Username:</label>\r\n<input id=\"newUsername\" name=\"newUsername\"></p>\r\n<p><label for=\"newPassword\">Password:</label>\r\n<input id=\"newPassword\" type=\"password\" name=\"newPassword\"></p>\r\n<p><label for=\"newFullname\">Full Name:</label>\r\n<input id=\"newFullname\" name=\"newFullname\"></p>\r\n\r\n<p>\r\n   <label for=\"newCss\">Style:</label>\r\n\r\n<?php\r\n   $styles_doc = new Document($styles_doc_id);\r\n   $styles_doc->outputSelectList(\"newCss\",0);\r\n?>\r\n\r\n</p>\r\n\r\n<p>\r\n <label for=\"newEmail\">Email Address:</label>\r\n <input id=\"newEmail\" name=\"newEmail\">\r\n</p>\r\n \r\n <p>\r\n   <label for=\"newTimezone\">Timezone:</label>\r\n   <input id=\"newTimezone\" type=\"text\" name=\"newTimezone\" value=\"Canada/Newfoundland\"></p>\r\n   <div id=\"adduser_buttons\">\r\n    <input type=\"submit\" value=\"Submit\" id=\"adduser_submit\">\r\n   </div>\r\n </form>\r\n\r\n\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#adduser_submit\").focus();\r\n  $(\"#adduser_form\").submit(function(event) {\r\n\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n\r\n    var newU = $(\"#newUsername\").attr(\"value\");\r\n    var newF = $(\"#newFullname\").attr(\"value\");\r\n    var newE = $(\"#newEmail\").attr(\"value\");\r\n    var newT = $(\"#newTimezone\").attr(\"value\");\r\n    var newC = $(\"#newCss\").attr(\"value\");\r\n    var newP = $(\"#newPassword\").attr(\"value\");\r\n    var newA = $(\"#newAccessLevel\").attr(\"value\");\r\n\r\n    $.post(\"user/insert_user.php\", { newAccessLevel: newA, newUsername: newU, newFullname: newF, newEmail: newE, newPassword: newP, newTimezone: newT, newCss: newC }, function() { adduser_success(); });\r\n  });\r\n\r\n  function adduser_success(){\r\n    asgConfig.removeAspectByCmd(\'adduser\');\r\n  }\r\n</script>',1,1,553,0,0,0),(534,'Documentation','',4,1,0,0,0,0),(486,'Add Command','<?php\r\n\r\n    global $myModel;\r\n    $lvls = $myModel->getAccessLevels();\r\n    $id = $_GET[\'id\'];\r\n\r\n?>\r\n<form id=\"addcom_form\" method=\"POST\" action=\"content/add_command.php\">\r\n\r\n<p><label for=\"keyword\">Keyword</label>\r\n<input id=\"addcom_keyword\" type=\"text\" name=\"keyword\"></p>\r\n\r\n<p><label for=\"help_desc\">Describe command here:</label>\r\n<input id=\"addcom_desc\" name=\"help_desc\" type=\"text\"></p>\r\n\r\n<p><label for=\"document_id\">Document Id:</label>\r\n<input id=\"addcom_document\" type=\"text\" name=\"document_id\" value=\"<?=$id?>\"></p>\r\n\r\n<p><label for=\"access_level\">Access level:</label>\r\n<select id=\"addcom_access\" name=\"access_level\">\r\n<?php\r\n    foreach($lvls as $lvl => $name){\r\n        ?><option value=\"<?=$key?>\"><?=$name?></option><?\r\n    }\r\n?>\r\n</select></p>\r\n\r\n<p><input id=\"addcom_submit\" type=\"submit\" value=\"Add Command\"></p>\r\n</form>\r\n\r\n\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#addcom_submit\").focus();\r\n  $(\"#addcom_form\").submit(function(event) {\r\n\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n\r\n    var keyword = $(\"#addcom_keyword\").attr(\"value\");\r\n    var desc = $(\"#addcom_desc\").attr(\"value\");\r\n    var doc = $(\"#addcom_document\").attr(\"value\");\r\n    var acc = $(\"#addcom_access\").attr(\"value\");\r\n\r\n    $.post(\"content/add_command.php\", { keyword: keyword, help_desc: desc, document_id: doc, access_level: acc }, function() { addcom_success(); });\r\n  });\r\n\r\n  function addcom_success(){\r\n    asgConfig.removeAspectByCmd(\'addcom\');\r\n  }\r\n</script>',0,1,553,0,0,1),(238,'Display Content','<?php\n$id = $_SESSION[\'current_document\'];\n$access = $_SESSION[\'session_accessLevel\'];\n\nif(isset($id)&&$id!=238&&$id!=0){\n  $doc = new Document($id);\n  $eval = $doc->getEvaluate();\n  $doc_access = $doc->getAccess();\n\n  if($doc_access>=$access){\n   if($eval){\n    $doc->outputAndEval();\n   }else{\n    $content = $doc->getContent();\n    print htmlspecialchars($content);\n   }\n  }\n}\n?>    ',1,1,552,0,0,0),(535,'Glossary','\n<dl>\n<dt id=\"aspects\">Aspects</dt>\n<dd>An aspect is a unit of the site. All functionality is contained within aspects. Aspects are toggled by <a href=\"#commands\">command</a> or by choosing a pre-defined collection of aspects called an <a href=\"#aspect_sets\">Aspect Set</a>.  When an aspect is visible, there is a horizontal bar above it that contains an x to close it, and when clicked it minimizes the aspect. The code that is evaluated for the aspect is stored in the CMS under Code->Aspect Code. It is possible to hide all aspects by selecting the \'null\' aspect set or by using the <span class=\"command_\">/zero</span> command.</dd>\n<dt id=\"documents\">Documents</dt>\n<dd>A document is a unit of content that is to be managed in the content management system (CMS). Documents in the CMS are organized in a tree hierarchy. There are aspects that display functionality for the content management system, such as <span class=\"command_\">/nav</span> which displays the root level documents, \n<span class=\"command_\">/ls</span> which shows sub-level documents, \nand others for tools to manage them. Documents have properties associated with them, such as their access level, their parent document, and a boolean which determines how the document should be displayed (if it is set to evaluate, any code contained within it will be evaluated before it is displayed).</dd>\n<dt id=\"users\">Users</dt>\n<dd>Users access the site via the command line, which receives either chat messages or commands. Between sessions, the site remembers preferences for the user interface. So it should look roughly the same as you left it when you log in next. The site stores a username and a separate display name. The username is used to log in, while the display name is shown to others in the chat. The site also stores an email address, time zone, site points, and a last-activity timestamp.</dd>\n<dt id=\"aspect_sets\">Aspect Sets</dt>\n<dd>There is a button under the command line that displays a list of aspect sets, which is a way of specifying what aspects are showing. The \'null\' aspect set means \'no aspects visible / just the command line\'. The \'chat\' aspect set loads the chat and the list of active users. It is possible for users with a sufficient access level to create new aspect sets, and to specify an access level for a set.</dd>\n<dt id=\"access_levels\">Access Levels</dt>\n<dd>Each aspect, aspect set, document, user, and command has an associated access level (an integer 0 - 4) which determines which users may access the feature / content.</dd>\n<dt id=\"user_preferences\">User Preferences</dt>\n<dd>Each user can modify their entry message and their exit message, this list will expand.</dd>\n<dt id=\"aspect_preference\">Aspect Preference</dt>\n<dd>This represents the visibility of the aspect on a per user basis.</dd>\n<dt id=\"css_rules\">CSS Rules</dt>\n<dd>It is possible for users to specify individual style rules using the <span class=\"command_\">/set</span> command. This is a list of rules that are applied on top of the chosen stylesheet after the style is chosen.</dd>\n<dt id=\"site_options\">Site Options</dt>\n<dd>Administrators can modify various site options. Many of these are references to locations in the CMS. These are:\n<ul>\n<li>Title</li>\n<li>Default Style</li>\n<li>Initial chat lines</li>\n<li>Command line location</li>\n<li>Styles Doc</li>\n<li>Javascript Doc</li>\n<li>Templates Doc</li>\n<li>Bots Doc</li>\n<li>Front Page Doc</li>\n</ul>\n</dd>\n<dt id=\"document_revisions\">Document Revisions</dt>\n<dd>Each time a document is edited, a revision is created that stores a complete duplicate of the previous document.</dd>\n<dt id=\"xchat\">Chat</dt>\n<dd>The chat connects all users and informs of site events.</dd>\n<dt id=\"commands\">Commands</dt>\n<dd>In addition to the commands that toggle aspects, the site also has a list of additional commands that can have arbitrary functionality. They are inserted into the javascript at run time.</dd>\n<dt id=\"bots\">Bots</dt>\n<dd>The site has a list of artificial intelligences that can respond to individual users if they are focused on that user. They are composed of keyword - code pairs that are stored in the CMS. Bots will only respond if they are \'active.\'</dd>\n</dl>        ',0,1,534,0,0,1),(239,'Options','<?php\n\nglobal $myModel;\n$lvls = $myModel->getAccessLevels();\n$usrs = $myModel->getUserArray();\n$id = $_SESSION[\'current_document\'];\n\nif((isset($id))&&($id>0)){\n\n        $thisDoc = new Document($id);\n        $thisPageAuthorId = $thisDoc->get(\'author\');\n        $thisParent = $thisDoc->get(\'parent_id\');\n	$thisAccessLevel = $thisDoc->get(\'access\');\n	$thisPageLocked = $thisDoc->get(\'locked\');\n	$thisPageHidden = $thisDoc->get(\'hidden\');\n	$thisPageEval = $thisDoc->get(\'evaluate\');\n        $thisPageAuthor = $thisDoc->getAuthor();\n	$authorFullName = $thisPageAuthor->get(\'full_name\');\n?>\n\n    <form method=\"POST\" id=\"opt_form\" action=\"content/change_options.php\">\n    <input type=\"hidden\" id=\"options_pid\" name=\"pageID\" value=\"<?=$id?>\">\n    <p>Access: <select id=\"options_access\" name=\"newAccess\">\n\n<?php\n \n    foreach($lvls as $lvl => $name){\n        if($thisAccessLevel == $lvl){\n?>\n            <option value=\"<?=$lvl?>\" selected=\"selected\"><?=$name?></option>\n<?php\n        }else{\n?>\n            \"<option value=\"<?=$lvl?>\">$name</option>\n<?php\n        }\n    }\n?>\n    </select>\n    <p>Author: <select id=\"options_author\" name=\"newAuthor\">\n\n<?php \n    foreach($usrs as $uid => $name){\n        if($thisPageAuthorId == $uid){\n            print \"<option value=\\\"$uid\\\" selected=\\\"selected\\\">$name</option>\";\n        }else{\n            print \"<option value=\\\"$uid\\\">$name</option>\";\n        }\n    }\n\n    print \"</select>\";\n\n    print \"<p>Locked: <select id=\\\"options_locked\\\" name=\\\"newLocked\\\">\";\n    if($thisPageLocked == 0){\n        print \"<option value=\\\"0\\\" selected=\\\"selected\\\">No</option>\";\n        print \"<option value=\\\"1\\\">Yes</options>\";\n    }else{\n        print \"<option value=\\\"1\\\" selected=\\\"selected\\\">Yes</option>\";\n        print \"<option value=\\\"0\\\">No</option>\";    \n    }\n    print \"</select>\";\n\n    print \"<p>Hidden: <select id=\\\"options_hidden\\\" name=\\\"newHidden\\\">\";\n    if($thisPageHidden == 0){\n        print \"<option value=\\\"0\\\" selected=\\\"selected\\\">No</option>\";\n        print \"<option value=\\\"1\\\">Yes</options>\";\n    }else{\n        print \"<option value=\\\"1\\\" selected=\\\"selected\\\">Yes</option>\";\n        print \"<option value=\\\"0\\\">No</option>\";    \n    }\n    print \"</select>\";\n\n        print \"<p>Evaluate:\";\n\n               print \"<select id=\\\"options_eval\\\" name=\\\"newEval\\\">\";\n               print \"<option value=\\\"0\\\" \";\n               if($thisPageEval==0){ print \"selected=\\\"selected\\\"\"; }\n               print \">No</option>\";\n               print \"<option value=\\\"1\\\" \";\n               if($thisPageEval==1){ print \"selected=\\\"selected\\\"\"; }\n               print \">Yes</option></select></p>\";\n\n        print \"<p>Parent: <input id=\\\"options_parent\\\" name=\\\"newParent\\\" value=\\\"$thisParent\\\"></p>\";\n        print \"<input type=\\\"submit\\\" value=\\\"Set Options\\\">\";\n        print \"</form>\";\n}\n\n?>\n\n<script>\n  // attach a submit handler to the form\n  $(\"#opt_form\").submit(function(event) {\n\n    // stop form from submitting normally\n    event.preventDefault(); \n    var pid = $(\"#options_pid\").attr(\"value\");\n    var eval = $(\"#options_eval\").attr(\"value\");\n    var hidden = $(\"#options_hidden\").attr(\"value\");\n    var access = $(\"#options_access\").attr(\"value\");\n    var author = $(\"#options_author\").attr(\"value\");\n    var locked = $(\"#options_locked\").attr(\"value\");\n    var parent = $(\"#options_parent\").attr(\"value\");\n    $.post(\"content/change_options.php\", { pageID: pid, newAuthor: author, newHidden: hidden, newAccess: access, newEval: eval, newLocked: locked, newParent: parent }, function() { options_success(); });\n  });\n\n  function options_success(){\n   asgConfig.removeAspectByCmd(\'options\');\n  }\n</script>    ',0,1,552,1,0,0),(55,'Aspects','',1,1,10,0,0,1),(56,'Chat','<div id=\"chat_hist\" style=\"height: 200px; overflow-y: scroll; display: none;\">\n\n<?php\n\nglobal $myModel;\n$chat = $myModel->getMainChat();\n$msgs = $chat->getLastX(30);\n$msgs = array_reverse($msgs);\n\nif(is_array($msgs)){\n    foreach($msgs as $msg){\n\n        $user = new User($msg->getUserId());\n        $fname = $user->getFullname();\n        $stamp = $msg->get(\'timestamp\');\n\n        if( $msg->isEmote() ){\n            $spacer = \" \";\n        }else{\n            $spacer = \" > \";\n        }\n        print \"<div class=\\\"msg_env\\\"><div class=\\\"timestamp\\\">$stamp</div><div class=\\\"username\\\">\";\n        print $fname;\n        print \"$spacer</div><div class=\\\"msg\\\">\";\n        print $msg->getMsg();\n        print \"</div>\";\n        print \"</div>\";\n\n    }\n}\n\n?>\n<script type=\"text/javascript\">\nfunction scroll_hist(){\ndocument.getElementById(\"chat_hist\").scrollTop = document.getElementById(\"chat_hist\").scrollHeight;\nhtml = $(\'#hist_load\').html();\n if(html===\'\'){\n  $(\'#hist_load\').html(\'click to hide history\');\n }else{\n  $(\'#hist_load\').html(\'\');\n }\n}\n</script>\n</div>\n<div id=\"hist_load\" onclick=\"$(\'#chat_hist\').toggle();scroll_hist()\" title=\"click to toggle chat history\"></div>\n<div id=\"chat_preload\">\n<?php\n$msgs = $chat->getLastX(3);\n$msgs = array_reverse($msgs);\nif(is_array($msgs)){\n    foreach($msgs as $msg){\n\n        $user = new User($msg->getUserId());\n        $fname = $user->getFullname();\n        $stamp = $msg->get(\'timestamp\');\n        if($msg->isEmote()){\n            $spacer = \" \";\n        }else{\n            $spacer = \"> \";\n        }\n        print \"<div class=\\\"msg_env\\\"><div class=\\\"timestamp\\\">$stamp</div><div class=\\\"username\\\">\";\n        print $fname;\n        print \"$spacer</div><div class=\\\"msg\\\">\";\n        print $msg->getMsg();\n        print \"</div>\";\n        print \"</div>\";\n \n   }\n}\n\n?>\n\n</div>\n',1,1,552,0,0,1),(412,'super-rock','Okay motherfucker, I give up!\r\n<?php\r\n $bot = new Bot(1);\r\n $bot->set(\'state\',130);\r\n?>',0,1,151,0,0,0),(23,'Styles','',1,1,10,0,0,1),(78,'Who','<?php\n\nglobal $myModel;\n$active_users = $myModel->getActiveUsers();\n\nif(isset($active_users)){\n    foreach($active_users as $usr){\n        $name = $usr->get(\'full_name\');\n        print \"<span class=\\\"$name\\\">$name</span> | \";\n    }\n}\n?>\n',1,1,552,0,0,0),(82,'New Aspect','<?php\nglobal $myModel;\n$lvls = $myModel->getAccessLevels();\n$id = $_SESSION[\'current_document\'];\n?>\n\n<form id=\"newasp_form\" method=\"POST\" action=\"aspects/submit_new_aspect.php\">\n<p><label for=\"div\">Div:</label><input id=\"aspdiv\" name=\"div\"></p>\n\n<p><label for=\"title\">Title:</label><input id=\"asptitle\" name=\"title\"></p>\n\n<p><label for=\"command\">Command:</label><input id=\"command\" name=\"command\"></p>\n\n<p><label for=\"function\">Aspect Code Document ID:</label><input id=\"function\" name=\"function\" value=\"<?=$id?>\"></p>\n\n<p><label for=\"pref_column\">Preference Column:</label><input id=\"pref_column\" name=\"pref_column\"></p>\n\n<p><label for=\"session_var\">Session Variable:</label><input id=\"session_var\" name=\"session_var\"></p>\n\n<p><label for=\"desc\">Description:</label><input id=\"desc\" name=\"desc\"></p>\n\n<?php\n       print \"<p>Access: <select id=\\\"newAccess\\\" name=\\\"newAccess\\\">\";\n \n    foreach($lvls as $lvl => $name){\n        if($thisAccessLevel == $lvl){\n            print \"<option value=\\\"$lvl\\\" selected=\\\"selected\\\">$name</option>\";\n        }else{\n            print \"<option value=\\\"$lvl\\\">$name</option>\";\n        }\n    }\n\n    print \"</select>\";\n?>\n\n<p><label for=\"ajaxify\">Ajaxify:</label>\n<input id=\"ajaxify\" name=\"ajaxify\" value=\"0\"></p>\n<input id=\"newasp_submit\" type=\"submit\" value=\"Go\">\n</form>\n\n<!--\n<script type=\"text/javascript\">\n\n var the_name = window.prompt(\"What is your aspect\'s unique name?\",\"\");\n $(\'#aspdiv\').attr(\'value\', the_name);\n $(\'#asptitle\').attr(\'value\', the_name);\n $(\'#command\').attr(\'value\', the_name);\n $(\'#session_var\').attr(\'value\',\'show_\'+the_name);\n $(\'#pref_column\').attr(\'value\',\'show_\'+the_name);\n\n  // attach a submit handler to the form\n  $(\"#newasp_submit\").focus();\n  $(\"#newasp_form\").submit(function(event) {\n\n    // stop form from submitting normally\n    event.preventDefault(); \n    var aspdiv = $(\"#aspdiv\").attr(\"value\");\n    var asptitle = $(\"#asptitle\").attr(\"value\");\n    var command = $(\"#command\").attr(\"value\");\n    var xfunction = $(\"#function\").attr(\"value\");\n    var pref_column = $(\"#pref_column\").attr(\"value\");\n    var session_var = $(\"#session_var\").attr(\"value\");\n    var desc = $(\"#desc\").attr(\"value\");\n    var access = $(\"#newAccess\").attr(\"value\");\n    var ajaxify = $(\"#ajaxify\").attr(\"value\");\n\n    $.post(\"aspects/submit_new_aspect.php\", { div: div, title: title, command: command, function: xfunction, pref_column: pref_column, session_var: session_var, desc: desc, newAccess: access, ajaxify: ajaxify }, function() { newasp_success(); });\n  });\n\n  function newasp_success(){\n    asgConfig.removeAspectByCmd(\'newasp\');\n  }\n</script>--> ',1,1,553,0,0,0),(88,'Nav','<?php\r\n$access = $_SESSION[\'session_accessLevel\'];\r\n\r\nglobal $myModel;\r\n$root_lvls = $myModel->fetchRootDocuments($access);\r\n$id = $_GET[\'id\'];\r\n\r\nprint \"<ul>\";\r\n\r\nforeach($root_lvls as $doc){\r\n\r\n $title = $doc->getTitle();\r\n $did = $doc->getId();\r\n if($did == $id){\r\n  print \"<li class=\\\"nav_at\\\"><a hrefk=\\\"index.php?id=$did\\\">$title</a></li>\";\r\n }else{\r\n  print \"<li><a href=\\\"index.php?id=$did\\\">$title</a></li>\";\r\n }\r\n}\r\nprint \"</ul>\";\r\n?>',1,1,552,0,0,0),(89,'Mod','<?php\n   $current_doc = $_SESSION[\'current_document\'];\n   $current_user = $_SESSION[\'session_userid\'];\n   $doc = new Document($current_doc);\n   $locked = $doc->get(\'locked\');\n   $author = $doc->get(\'author\');\n?>\n\n<ul>\n\n<li><a onclick=\"asgConfig.simcom(\'/options\')\">Options</a></li>\n<li><a onclick=\"asgConfig.simcom(\'/idoc\')\">Insert</a></li>\n<?php\n    if(!$locked){\n?>\n<li><a onclick=\"asgConfig.simcom(\'/edit\')\">Edit</a></li>\n<?php\n    }\n?>\n<li><a onclick=\"asgConfig.simcom(\'/delete\')\">Delete</a><li>\n<li><a onclick=\"asgConfig.simcom(\'/erase\')\">Erase</a><li>\n</ul>\n',1,1,557,0,0,1),(90,'Set Style','<form method=\"POST\" id=\"setstyle_form\" action=\"styles/set_style.php\">\r\n<?php		\r\nglobal $myModel;\r\n$style_doc_id = $myModel->getStylesDocId();\r\n$style_doc = new Document($style_doc_id);\r\n$access = $_SESSION[\'session_accessLevel\'];\r\n$style_doc->outputSelectList(\"style_select\",$access);\r\n?>\r\n<input type=\"submit\" value=\"Set style\">\r\n</form>\r\n\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#setstyle_form\").submit(function(event) {\r\n\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n    var pid = $(\"#style_select\").attr(\"value\");\r\n    $.post(\"styles/set_style.php\", { style: pid }, function() { setstyle_success(); });\r\n  });\r\n\r\n  function setstyle_success(){\r\n   asgConfig.removeAspectByCmd(\'setstyle\');\r\n  }\r\n</script>',1,1,552,0,0,0),(501,'Fresh','alert(\'hi\');',0,1,484,0,0,0),(91,'Help','<p>The following commands, when typed into the command line input, will perform various actions within the site, such as modify the user interface.</p>\r\n<?php\r\n\r\n$userAccess = $_SESSION[\'session_accessLevel\'];\r\nglobal $myModel;\r\n$aspects = $myModel->getAspects($userAccess);\r\n\r\nprint \"<dl>\";\r\nforeach($aspects as $aspect){\r\n $cmd = $aspect->getCommand();\r\n $desc = $aspect->get(\'desc\');\r\n $access = $aspect->getAccess();\r\n $access_name = $myModel->getAccessName($access); \r\n print \"<dt>/<a onclick=\\\"simcom(\'/$cmd\');\\\">$cmd</a>\";\r\n if($userAccess != 4){\r\n   print \"(Access: $access_name)\";\r\n }\r\n print \"</dt><dd>$desc</dd>\";\r\n}\r\n\r\n\r\nprint \"</dl>\";\r\n\r\n$commands = $myModel->getCommands($userAccess);\r\n\r\nprint \"<dl>\";\r\nforeach($commands as $command){\r\n $key = $command->getKeyword();\r\n $doc = $command->getDocumentId();\r\n $help_desc = $command->get(\'help_desc\');\r\n $access = $command->get(\'access\');\r\n $access_name = $myModel->getAccessName($access); \r\n\r\n print \"<dt>/$key \";\r\n if($userAccess != 4){\r\n  print \"(Access: $access_name)\";\r\n }\r\n print \"</dt><dd>$help_desc</dd>\";\r\n}\r\n\r\n\r\nprint \"</dl>\";\r\n\r\n\r\n\r\n\r\n?>\r\n\r\n    ',1,1,552,0,0,1),(108,'History','',4,1,0,0,0,1),(109,'Chat history','<div id=\"hist109\" style=\"height: 200px; overflow-y: scroll;\">\n<?php\nglobal $myModel;\n$chat = $myModel->getMainChat();\n$msgs = $chat->getLastX(15);\n$msgs = array_reverse($msgs);\n\n\nforeach($msgs as $msg){\n\n $user = new User($msg->getUserId());\n $fname = $user->getFullname();\n\n if( $msg->isEmote() ){\n  $spacer = \" \";\n }else{\n  $spacer = \" > \";\n }\n print \"<div class=\\\"msg_env\\\"><div class=\\\"username\\\">\";\n print $fname;\n print \"$spacer</div><div class=\\\"msg\\\">\";\n print $msg->getMsg();\n print \"</div>\";\n print \"</div>\";\n\n}\n\n?>\n<script type=\"text/javascript\">\ndocument.getElementById(\"hist109\").scrollTop = document.getElementById(\"hist109\").scrollHeight;\n</script>\n\n</div>\n',4,1,108,0,0,1),(410,'ain\'t that right Cortana?','You said it baby!',0,1,130,0,0,0),(122,'Bots','',1,1,10,0,0,1),(129,'cortana','',1,1,122,0,0,1),(130,'default','',1,1,129,0,0,1),(131,'angry','',1,1,129,0,0,1),(132,'hello','Greetings banana visitor four!',1,1,130,0,0,2),(133,'sup','<?php\r\n $uname = $_SESSION[\'session_fullName\'];\r\n print \"Hello $uname, where is Sarah Connor?\";\r\n?>',1,1,130,0,0,2),(503,'arb','    arg = msg.substr(5,msg.length);\n    args = arg.split(\" \");\n    arg1 = args[0];\n    arg2 = args[1];\n    arg3 = args[2];\n    arg4 = args[3];\n\n    alert(\'table:\'+arg1+\' column:\'+arg2+\' row_id:\'+arg3+\' value:\'+arg4);\n    $.post(\"database/update.php\", { table: arg1, column: arg2, row_id: arg3, value: arg4 });\n',0,1,484,0,0,0),(135,'Bots','<?php\nglobal $myModel;\n$bots = $myModel->getBots();\n\nforeach($bots as $bot){\n  $aid = $bot->get(\'id\');\n  $bot_userid = $bot->get(\'bot_userid\');\n  $bot_user = $bot->getUser();\n  $botname = $bot_user->get(\'full_name\');\n  $ai_state = $bot->get(\'state\');\n  $ai_active = $bot->get(\'active\');\n  $state_doc = $bot->getStateDoc();\n  $stateName = $state_doc->get(\'title\');\n  $ai_focus = $bot->get(\'focus_user\');\n  $focus_user = $bot->getFocusUser();\n  \n if($ai_focus == 0){//bot is focused on everyone\n   $focusName = \"Everyone\";\n  }else{\n   $focusName = $focus_user->get(\'full_name\');\n  }\n  \n  if($ai_active == 1){\n   print \"<p>$botname is active in state $stateName focused on $focusName.</p>\";\n  }else{\n   print \"<p>$botname is inactive in state $stateName focused on $focusName.</p>\";\n  }\n\n\n}\n?>',1,1,552,0,0,0),(136,'Focus Bot','<form id=\"bot_focus_form\" method=\"POST\" action=\"bots/set_focus.php\">Focus&nbsp;<select id=\"bot_focus_id\" name=\"aid\">\r\n<?		\r\nglobal $myModel;\r\n$bots = $myModel->getBots();\r\n$active_users = $myModel->getActiveUsers();\r\n\r\nforeach($bots as $bot){\r\n    $aid = $bot->get(\'id\');\r\n    $bot_user = $bot->getUser();\r\n    $botname = $bot_user->get(\'full_name\');\r\n    print \"<option value=\\\"$aid\\\">$botname</option>\";\r\n}\r\n\r\n?>		\r\n</select>\r\n&nbsp;on&nbsp;\r\n<select id=\"bot_focus_userid\" name=\"focus_id\">\r\n<?		\r\nforeach($active_users as $user){\r\n    $user_id = $user->get(\'id\');\r\n    $user_name = $user->get(\'full_name\');\r\n    print \"<option value=\\\"$user_id\\\">$user_name</option>\";\r\n}\r\n\r\n?>\r\n</select>\r\n<input type=\"submit\" value=\"Focus\">\r\n</form>\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#bot_focus_form\").submit(function(event) {\r\n\r\n    event.preventDefault(); \r\n    var bid = $(\"#bot_focus_id\").attr(\"value\");\r\n    var uid = $(\"#bot_focus_userid\").attr(\"value\");\r\n\r\n    $.post(\"bots/set_focus.php\", { aid: bid, focus_id: uid }, function() { bot_focus_success(); });\r\n  });\r\n\r\n  function bot_focus_success(){\r\n   asgConfig.removeAspectByCmd(\'setfocus\');\r\n  }\r\n</script>',1,1,552,0,0,0),(570,'roll','',0,1,563,0,0,0),(138,'add one','<? \n\n $_SESSION[\'incrementor\']++;\n\n print \"Okay: Incrementor is at \".$_SESSION[\'incrementor\']; \n\n\n?>',1,1,130,0,0,2),(139,'hello','FFFFFFUUUUU!',1,1,131,0,0,1),(141,'hmm','hmm?',1,1,131,0,0,1),(142,'be happy','okay: entering happy mode.\r\n<?php \r\n\r\n$bot = new Bot(1);\r\n$bot->set(\'state\',130); \r\n\r\n?>',1,1,131,0,0,1),(143,'initialize incrementor','<?php\r\n\r\n$_SESSION[\'incrementor\'] = 0;\r\n\r\nprint \"Incrementor initialized.\";\r\n\r\n?>',1,1,130,0,0,2),(144,'reset incrementor','Done!\r\n\r\n<?\r\n$id = $_GET[\'id\'];\r\n$idZero = $id[0];\r\n\r\nif($idZero != 144){\r\n $_SESSION[\'incrementor\'] = 0;\r\n}\r\n\r\n?>',1,1,130,0,0,2),(145,'show incrementor','<?\r\n\r\n print $_SESSION[\'incrementor\'];\r\n\r\n?>',1,1,130,0,0,2),(146,'what time is it?','<?php\r\n$mytimezone = $_SESSION[\'session_timezone\'];\r\ndate_default_timezone_set($mytimezone);\r\n$today = date(\'l jS \\of F Y h:i:s A\');\r\nprint $today;\r\n\r\n?>    ',1,1,130,0,0,2),(148,'what is my timezone?','<?php\r\n\r\nprint \"Your timezone is \".$_SESSION[\'session_timezone\'].\".\";\r\n\r\n?>',1,1,130,0,0,2),(149,'who are you?','I am Cortana!',1,1,130,0,0,2),(150,'what are you?','I am ambiversive\'s compu-hyper-mega-robo-maid!',1,1,130,0,0,2),(151,'waiting_for_rps_choice','',1,1,129,0,0,1),(152,'rock','<?php\r\n$u = $_SESSION[\'session_userid\'];\r\n switch($_SESSION[\'cortana_rps_choice\']){\r\n  case \'rock\':\r\n     print \"Tie! We both picked rock.\";\r\n  break;\r\n\r\n  case \'scissors\':\r\n     print \"You win! Rock smashes scissors.\";\r\n\r\n  break;\r\n\r\n  case \'paper\':\r\n     print \"I win! Paper covers rock.\";\r\n  break;\r\n\r\n }\r\n\r\n $bot = new Bot(1);\r\n $bot->set(\'state\',130);\r\n\r\n?>',1,1,151,0,0,2),(555,'appears.','<?php $name = $_SESSION[\'session_fullName\']; ?>\n\nWelcome back, <?=$name?>. What\'s up?',0,1,130,0,0,0),(556,'not much','Antischismogenesis is not not much.',0,1,130,0,0,0),(154,'paper','<?php\r\n$u = $_SESSION[\'session_userid\'];\r\n\r\nswitch($_SESSION[\'cortana_rps_choice\']){\r\n  case \'rock\':\r\n     print \"You win! Paper covers rock.\";\r\n  break;\r\n\r\n  case \'scissors\':\r\n     print \"I win! Scissors cuts paper.\";\r\n\r\n  break;\r\n\r\n  case \'paper\':\r\n     print \"Tie! We both picked paper.\";\r\n  break;\r\n\r\n }\r\n\r\n $bot = new Bot(1);\r\n $bot->set(\'state\',130);\r\n\r\n?>',1,1,151,0,0,2),(557,'Content Management','',0,1,55,0,0,0),(558,'Bots','',0,1,55,0,0,0),(571,'roll','<?php\n\n  $i = rand(0,5);\n\n  switch($i){\n      case 0:\n           $char = \'&#9856;\';\n      break;\n      case 1:\n           $char = \'&#9857;\';\n      break;\n      case 2:\n           $char = \'&#9858;\';\n      break;\n      case 3:\n           $char = \'&#9859;\';\n      break;\n      case 4:\n           $char = \'&#9860;\';\n      break;\n      case 5:\n           $char = \'&#9861;\';\n      break;\n   }\n\n?>\n\n<script type=\"text/javascript\">\n    dice_character = \'<?=$char?>\';\n    $(\'#dice_display\').html(dice_character);\n</script>',0,1,130,0,0,0),(156,'Activate Bot','<?php\n\n    global $myModel;\n    $num_active = $myModel->countActiveBots();\n    $num_inactive = $myModel->countInactiveBots();\n\n    if($num_inactive > 0){\n        $inactive_bots = $myModel->getInactiveBots();\n?>\n\n<form id=\"activate_bot_form\" method=\"POST\" action=\"bots/activate_bot.php\">\n<select id=\"activate_bot_id\" name=\"bot_id\">\n\n<?php\n    foreach($inactive_bots as $bot){\n        $bot_id = $bot->get(\'id\');\n        $bot_user = $bot->getUser();\n        $botname = $bot_user->get(\'full_name\');\n        ?><option value=\"<?=$bot_id?>\"><?=$botname?></option><?\n    }\n\n?>\n</select>\n<input type=\"submit\" value=\"Activate\">\n</form>\n<?\n}else{\n print \"All bots active.\";\n}\n?>\n<script>\n  // attach a submit handler to the form\n  $(\"#activate_bot_form\").submit(function(event) {\n\n    // stop form from submitting normally\n    event.preventDefault(); \n    var bid = $(\"#activate_bot_id\").attr(\"value\");\n\n    $.post(\"bots/activate_bot.php\", { bot_id: bid }, function() { bot_activate_success(); });\n  });\n\n  function bot_activate_success(){\n     asgConfig.removeAspectByCmd(\'activate\');\n\n  }\n</script>\n    ',1,1,558,0,0,1),(160,'Add Bot','<form id=\"addbot_form\" method=\"POST\" action=\"bots/add_bot.php\">\r\n<label for=\"bot_name\">Name:</label>\r\n<input id=\"bot_name\" type=\"text\" name=\"bot_name\">\r\n<input type=\"submit\" value=\"add bot\">\r\n</form>\r\n\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#addbot_form\").submit(function(event) {\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n    var bot_name = $(\"#bot_name\").attr(\"value\");\r\n    $.post(\"bots/add_bot.php\", { bot_name: bot_name }, function(data) { addbot_success(data); });\r\n  });\r\n\r\n  function addbot_success(data){\r\n   asgConfig.removeAspectByCmd(\'addbot\');\r\n  }\r\n</script>',1,1,558,0,0,1),(423,'waiting_for_marriage','',0,1,129,0,0,0),(509,'Set bot state','<?php\r\n global $myModel;\r\n $bots = $myModel->getBots();\r\n\r\n print \"<dl>\";\r\n foreach($bots as $bot){\r\n  $bid = $bot->getId();\r\n  $bot_user_id = $bot->getUserId();\r\n  $bot_user = new User($bot_user_id);\r\n  $bot_username = $bot_user->getUsername();\r\n  $cid = $bot->getContentId();\r\n  $c_doc = new Document($cid);\r\n  $c_children = $c_doc->getChildren(0);\r\n\r\n  print \"<dt>$bot_username</dt><dd><ul>\";\r\n\r\n  foreach($c_children as $chi){\r\n   $chi_id = $chi->getId();\r\n   print \"<li onclick=\\\"updateArb(\'Bots state will be:\',\'$chi_id\',\'bots\',\'state\',\'$bid\');\\\">\".$chi->getTitle().\"</li>\";\r\n  }\r\n  print \"</ul></dd>\";\r\n\r\n }\r\n print \"</dl>\";\r\n?>',0,1,558,0,0,1),(508,'Orphans','<?php\r\n/*\r\n $access = $_SESSION[\'session_accessLevel\'];\r\n global $myModel;\r\n $docs = $myModel->getDocuments();\r\n foreach($docs as $doc){\r\n  $title = $doc->getTitle();\r\n  $id = $doc->getId();\r\n  $parent = $doc->getParentId();\r\n\r\n  if($parent != 0){\r\n   $q = \"SELECT Count(*) FROM documents WHERE id=?\";\r\n   $sth = $dbh->prepare($q);\r\n   $sth->execute(array($parent));\r\n   $row = $sth->fetch();\r\n   if($row[\'Count(*)\']==0){\r\n    print \"<p>DELETE FROM documents WHERE id=\'$id\';</p>\";\r\n   }\r\n  }\r\n }\r\n*/\r\n?>',0,1,10,0,0,1),(240,'Erase Confirm','<?php\r\n$pageID = $_GET[\'id\'];\r\n?>\r\n\r\n<form id=\"erase_form\" method=\"POST\" action=\"content/erase_content.php\">\r\n<p>Are you sure you want to erase the content on this page?</p>\r\n    <input type=\"radio\" name=\"choice\" value=\"yes\" checked>&nbsp; Yes &nbsp;\r\n    <input type=\"radio\" name=\"choice\" value=\"no\">&nbsp; No<br><br>\r\n    <input id=\"pid\" type=\"hidden\" name=\"rPageID\" value=\"<?=$pageID?>\">\r\n    <input type=\"submit\" value=\"Submit\">\r\n</form>\r\n\r\n\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#erase_form\").submit(function(event) {\r\n\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n    var pid = $(\"#pid\").attr(\"value\");\r\n\r\n    $.post(\"content/erase.content.php\", { pageID: pid }, function() { erase_success(); });\r\n  });\r\n\r\n  function erase_success(){\r\n   asgConfig.removeAspectByCmd(\'erase\');\r\n  }\r\n</script>',1,1,557,0,0,0),(241,'Set Profile','<?php\r\n    global $myModel;\r\n    $access = $_SESSION[\'session_accessLevel\'];\r\n    $uid = $_SESSION[\'session_userid\'];\r\n    $current_user = new User($uid);\r\n    $myEmail = $current_user->get(\'email\');\r\n    $myCss = $current_user->get(\'css_id\');\r\n    $styles_doc = new Document($myModel->getStylesDocId());\r\n    $myFullname = $current_user->get(\'full_name\');\r\n    $myTimezone = $current_user->get(\'timezone\');\r\n    $myUsername = $current_user->get(\'username\');\r\n?>\r\n\r\n<form id=\"setprofile_form\" method=\"POST\" action=\"user/set_profile.php\">\r\n    <label for=\"newUsername\">Username (used to login)</label>\r\n    <input id=\"newUsername\" type=\"text\" name=\"newUsername\" value=\"<?=$myUsername?>\">\r\n    <label for=\"name\">Full Name (used for display purposes)</label>\r\n    <input id=\"newFullname\" type=\"text\" name=\"newFullname\" value=\"<?=$myFullname?>\">\r\n    <label for=\"newPassword\">Enter New Password [if you want to change it]:</label>\r\n    <input id=\"newPassword\" name=\"newPassword\">\r\n    <label for=\"newEmail\">Email address:</label>\r\n    <input id=\"newEmail\" type=\"text\" name=\"newEmail\" value=\"<?=$myEmail?>\">\r\n    <label for=\"newCss\">Stylesheet</label>  \r\n\r\n<?php\r\n        $styles_doc->outputSelectList(\"newCss\",$access);\r\n?>\r\n\r\n    <label for=\"newTimezone\">Timezone</label>\r\n    <input id=\"newTimezone\" type=\"text\" name=\"newTimezone\" value=\"<?=$myTimezone?>\">\r\n    <input id=\"setprofile_submit\" type=\"submit\" value=\"Submit\">\r\n    </form>\r\n\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#setprofile_submit\").focus();\r\n  $(\"#setprofile_form\").submit(function(event) {\r\n\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n\r\n    var newU = $(\"#newUsername\").attr(\"value\");\r\n    var newF = $(\"#newFullname\").attr(\"value\");\r\n    var newE = $(\"#newEmail\").attr(\"value\");\r\n    var newT = $(\"#newTimezone\").attr(\"value\");\r\n    var newC = $(\"#newCss\").attr(\"value\");\r\n    var newP = $(\"#newPassword\").attr(\"value\");\r\n\r\n    $.post(\"user/set_profile.php\", { newUsername: newU, newFullname: newF, newEmail: newE, newPassword: newP, newTimezone: newT, newCss: newC }, function() { setprofile_success(); });\r\n  });\r\n\r\n  function setprofile_success(){\r\n    asgConfig.removeAspectByCmd(\'setprofile\');\r\n  }\r\n</script>',1,1,552,0,0,1),(334,'Aspect Sets','<?php\n$access = $_SESSION[\'session_accessLevel\'];\nglobal $myModel;\n$aspsets = $myModel->getAspectSets($access);\nprint \"<ul>\";\nforeach($aspsets as $aspset){\n  $id = $aspset->get(\'id\');\n  $name = $aspset->get(\'name\');\n  print \"<li><a href=\\\"aspects/load_aspect_set.php?aspect_set_id=$id\\\">$name</a></li>\";\n}\nprint \"</ul>\";\n?>',3,1,10,0,0,1),(242,'Delete Document','<?php\n$pageID = $_SESSION[\'current_document\'];\n\n\nif($pageID!=0){\n	print \"<form id=\\\"rsublvl_form\\\" method=\\\"POST\\\" action=\\\"content/delete_document.php\\\">\";\n\n	print \"<p>Are you sure you want to erase this document and all below it?</p>\";\n\n        print \"<select id=\\\"choice\\\" name=\\\"choice\\\">\";\n        print \"<option value=\\\"yes\\\">Yes</option>\";\n        print \"<option value=\\\"no\\\">No</option>\";\n        print \"</select>\";\n	print \"<input id=\\\"rpid\\\" type=\\\"hidden\\\" name=\\\"rPageID\\\" value=\\\"$pageID\\\">\";\n	print \"<input id=\\\"submi\\\" class=\\\"form\\\" type=\\\"submit\\\" value=\\\"Submit\\\">\";\n	print \"</form>\";\n}\n?>\n\n<script>\n  $(\"#submi\").focus();\n  var prevent_double = false;\n  // attach a submit handler to the form\n  $(\"#rsublvl_form\").submit(function(event) {\n    if(!prevent_double){\n        prevent_double = true;\n        event.preventDefault(); \n        var choice_value = $(\"#choice\").attr(\"value\");\n        var rpid = $(\"#rpid\").attr(\"value\");\n<?php\n    $doc = new Document($pageID);\n    $ppid = $doc->getParentId();\n?>\n\n    $.post(\"content/delete_document.php\", { rPageID: rpid, choice: choice_value }, function() { rsublvl_success(<?=$ppid?>); });\n   }\n  });\n\n  function rsublvl_success(ppid){\n   window.location=\'index.php?id=\'+ppid;\n  }\n</script>    ',1,1,557,0,0,0),(243,'Insert Root Document','<?php\r\n\r\n?>\r\n<div id=\"form_content\">\r\n<form method=\"POST\" action=\"content/insert_document.php\">\r\n<input type=\"hidden\" value=\"0\" name=\"ipageID\">\r\n<input type=\"hidden\" value=\"0\" name=\"hiddenOrNot\">\r\n<input type=\"hidden\" value=\"0\" name=\"eval\">\r\n    <label for=\"title\">\r\n        Enter Title Here:\r\n    </label>\r\n        <input name=\"title\" size=\"50\"><br>\r\n        <input type=\"submit\" value=\"Submit\">\r\n        </form>\r\n</div>\r\n',1,1,557,0,0,0),(244,'Insert Document','<?php\r\n$pageID = $_SESSION[\'current_document\'];\r\nglobal $dbh;\r\n?>\r\n<form id=\"idoc_form\" method=\"POST\" action=\"content/insert_document.php\">\r\n<input id=\"ipid\" type=\"hidden\" value=\"<?=$pageID?>\" name=\"ipageID\">\r\n<label for=\"subTitle\">Title:</label>\r\n<input id=\"page_title\" type=\"text\" name=\"subTitle\"><br>	<label for=\"hiddenOrNot\">Visible?</label><br>\r\n<input type=\"radio\" name=\"hiddenOrNot\" value=\"0\" checked>&nbsp; Yes &nbsp;\r\n<input type=\"radio\" name=\"hiddenOrNot\" value=\"1\">&nbsp; No <br><br>\r\n<label for=\"eval\">Automatically evaluate?</label>\r\n<input type=\"radio\" name=\"eval\" value=\"0\" checked>&nbsp; No &nbsp;\r\n<input type=\"radio\" name=\"eval\" value=\"1\">&nbsp; Yes <br><br>\r\n\r\n<?php\r\n   $q = \"SELECT id,title FROM documents WHERE parent_id=\'425\'\";\r\n   $sth = $dbh->prepare($q);\r\n   $sth->execute(array());\r\n   print \"<p>Template:</p>\";\r\n   print \"<select id=\\\"isub_template\\\" name=\\\"template\\\">\";\r\n   print \"<option value=\\\"0\\\">none</option>\";\r\n   while($row = $sth->fetch()){\r\n    $tid = $row[\'id\'];\r\n    $t = $row[\'title\'];\r\n    print \"<option value=\\\"$tid\\\">$t</option>\";\r\n   }\r\n?>\r\n</select>\r\n<input type=\"submit\" value=\"Submit\">\r\n<input type=\"button\" value=\"Cancel\">\r\n</form>\r\n<script>\r\n  var prevent_double = false;\r\n  $(\"#idoc_form\").submit(function(event) {\r\n    if(!prevent_double){\r\n        prevent_double = true;\r\n        // stop form from submitting normally\r\n        event.preventDefault(); \r\n        var hidden_value = $(\"input[@name=hiddenOrNot]:checked\").val();\r\n        var eval_value = $(\"input[@name=eval]:checked\").val();\r\n        var ipid = $(\"#ipid\").attr(\"value\");\r\n        var tit = $(\"#page_title\").attr(\"value\");\r\n        var tem = $(\"#isub_template\").val();\r\n\r\n        $.post(\"content/insert_document.php\", { template: tem, subTitle: tit, eval: eval_value, hiddenOrNot: hidden_value, ipageID: ipid }, function() { idoc_success(); });\r\n\r\n    }  \r\n  });\r\n\r\n  function idoc_success(){\r\n   asgConfig.removeAspectByCmd(\'idoc\');\r\n  }\r\n</script>        ',1,1,557,0,0,0),(577,'clear the chat','<?php\r\n/*\r\n    //this works but breaks something somehow\r\n    global $myModel;\r\n    global $user;\r\n    $chat = $myModel->getMainChat();\r\n    $chat->clear();\r\n    $user->setAspectPreference(\'show_chat\',2);\r\n*/\r\n?>',0,1,130,0,0,0),(425,'Templates','',0,1,10,0,0,0),(426,'definition list','<dl>\n<dt></dt>\n<dd></dd>\n</dl>',0,1,425,0,0,0),(245,'Edit Document','<?php\r\n    $doc_id = $_SESSION[\'current_document\'];\r\n    $current_doc = new Document($doc_id);\r\n    $title = $current_doc->getTitle();\r\n    $content = $current_doc->getContent();\r\n\r\n?>\r\n    <form id=\"edit_form\" method=\"POST\" action=\"content/edit_document.php\">\r\n    <input id=\"pid\" type=\"hidden\" name=\"iPageID\" value=\"<?=$doc_id?>\">\r\n    <label for=\"newSubTitle\">Title:</label>\r\n    <input id=\"edit_tit\" name=\"newSubTitle\" value=\"<?=$title?>\">\r\n    <label for=\"iContent\">Content:</label>\r\n    <div id=\"editor\">\r\n<?php\r\n        print htmlspecialchars($content);\r\n?>\r\n    </div>\r\n    <input id=\"edit_submit\" type=\"submit\" value=\"Submit\">\r\n    </form>\r\n\r\n\r\n<script>\r\n    $(document).ready(function(){\r\n        var editor = ace.edit(\"editor\");\r\n        editor.setTheme(\"ace/theme/twilight\");\r\nvar HtmlMode = require(\"ace/mode/html\").Mode;\r\n    editor.getSession().setMode(new HtmlMode());\r\n    });\r\n  $(\"#edit_form\").submit(function(event) {\r\n        prevent_double = true;\r\n        event.preventDefault(); \r\n        var pid = $(\"#pid\").attr(\"value\");\r\n        var tit = $(\"#edit_tit\").attr(\"value\");\r\n        var con = document.getElementById(\"editor\").env.document.getValue(); \r\n        $.post(\"content/edit_document.php\", { \r\n            iPageID: pid, \r\n            newSubTitle: tit, \r\n            iContent: con }, \r\n            function() { \r\n                edit_success(); \r\n            });\r\n  \r\n  });\r\n\r\n  function edit_success(){\r\n        asgConfig.removeAspectByCmd(\'edit\');\r\n  }\r\n\r\n</script>                            ',1,1,557,0,0,0),(418,'test simcom','<a onclick=\"simcom(\'/set body background black\');\">click here set your background black</a>',0,1,130,0,0,0),(246,'List Hidden Documents','<?php\nglobal $dbh;\n\n	$hiddenQuery = \"SELECT * FROM documents WHERE hidden=\'1\'\";\n	$sth = $dbh->query($hiddenQuery);\n\n	print \"<h2>Hidden Documents</h2>\";\n	\n	print \"This list is here to prevent us from losing track of a document after it is hidden.\";\n\n        print \"<p>ID: Title</p>\";			\n		\n         print \"<ul>\";\n	\n        while($row = $sth->fetch()){\n\n		$title = $row[\"title\"];\n		$ID = $row[\"id\"];\n			\n		print \"<li>$ID: &nbsp;<a onclick=\\\"simcom(\'/go $ID\')\\\">\";\n		print \"$title</a></li>\";\n\n                print \"</ul>\";\n\n	}\n?>    ',1,1,557,0,0,1),(493,'Chats','<?php\r\n    global $myModel;\r\n    $chats = $myModel->getChats();\r\n    print \"<table>\";\r\n    print \"<tr><th>ID</th><th>Name</th><th>Table</th><th>Aspect</th><th>Number of Messages</th><th>History</th><th>Access</th></tr>\";\r\n    foreach($chats as $chat){\r\n        $chat_id = $chat->getId();\r\n        $chat_name = $chat->getName();\r\n        $chat_table = $chat->getTable();\r\n        $chat_aspect_id = $chat->getAspect();\r\n        $chat_aspect = new Aspect($chat_aspect_id);\r\n        $chat_aspect_command = $chat_aspect->getCommand();\r\n        $chat_access = $chat->get(\'access\');\r\n        $chat_access_name = $myModel->getAccessName($chat_access);\r\n        $num_msgs = $chat->getMessageCount();\r\n        $history_doc_id = $chat->getHistoryDocId();\r\n        print \"<tr><td>$chat_id</td><td onclick=\\\"updateArb(\'Enter new chat name:\',\'$chat_name\',\'chats\',\'name\',\'1\')\\\">$chat_name</td></td><td onclick=\\\"updateArb(\'Enter new chat table:\',\'$chat_table\',\'chats\',\'table\',\'$chat_id\')\\\">$chat_table</td><td><a onclick=\\\"simcom(\'/$chat_aspect_command\')\\\">/$chat_aspect_command</a></td><td>$num_msgs</td><td>$history_doc_id [<a onclick=\\\"navclick($history_doc_id)\\\">goto</a>]</td><td>$chat_access_name</td></tr>\";\r\n    }\r\n    print \"</table>\";\r\n?>    ',0,1,490,0,0,1),(513,'Me','  \n      emote = msg.substr(4,msg.length);\n      $.post(\"chat/submit_emote.php\", { msg: emote });\n',0,1,484,0,0,0),(566,'Flare','<div id=\"circle_flare\">&#9881;</div>',0,1,552,0,0,0),(266,'List Documents','<?php\r\n\r\n$id = $_SESSION[\'current_document\'];\r\n$access = $_SESSION[\'session_accessLevel\'];\r\n\r\nif(isset($id) && $id!=0){\r\n    $doc = new Document($id);\r\n    $doc_title = $doc->getTitle();\r\n    $num_children = $doc->numChildren();\r\n\r\n    if(is_int($id)){\r\n       //print \"<p>Listing child documents for document $doc_title ($id)</p>\";\r\n    }else{\r\n       //print \"<p>Listing root documents...</p>\";\r\n    }\r\n\r\n    if($num_children > 0){\r\n         //print \"<p>Showing $num_children child docs.</p>\";\r\n \r\n    }else{\r\n         //print \"<p>No child documents found.</p>\";\r\n         print \"<script type=\\\"text/javascript\\\">$(\'#ls\').hide();</script>\";\r\n    }\r\n\r\n    print \"<ul>\";\r\n    if($num_children > 0){\r\n        $children = $doc->getChildren($access);\r\n        if(is_array($children)){\r\n            foreach($children as $child){\r\n                $title = $child->getTitle();\r\n                $child_id = $child->getId();\r\n                print \"<li>\";\r\n                print \"<a href=\\\"index.php?id=$child_id\\\">\";\r\n                print $title;\r\n                print \"</a>\";\r\n                print \"</li>\";\r\n            }\r\n        }else{\r\n            //print \"wtf\";\r\n        }\r\n    }\r\n    print \"</ul>\";\r\n}\r\n\r\n?>    ',1,1,552,0,0,0),(267,'Show Location In Document Tree (pwd)','<?php\r\n$doc_id = $_SESSION[\'current_document\'];\r\n\r\nif($id == 0){\r\n print \"Root\";\r\n}else{\r\n\r\n $doc = new Document($doc_id);\r\n $title = $doc->getTitle();\r\n $parent_id = $doc->getParentId();\r\n if($parent_id == 0){\r\n  $parent_title = \"Root\";\r\n }else{\r\n  $parent_doc = new Document($parent_id);\r\n $parent_title = $parent_doc->getTitle();\r\n }\r\n print \"<a href=\\\"index.php?id=$parent_id\\\">$parent_title</a>&nbsp;/&nbsp;$title\";\r\n}\r\n?>\r\n\r\n    ',1,1,552,0,0,0),(328,'Remove User','<?php\r\n   global $myModel;\r\n   $users = $myModel->getUsers();\r\n        \r\n        print \"<form id=\\\"ruser_form\\\" method=\\\"POST\\\" action=\\\"user/remove_user.php\\\">\";\r\n        print \"<p>Please select user to remove:</p>\";\r\n        print \"<select id=\\\"delete_id\\\" name=\\\"delete_id\\\">\";\r\n        foreach($users as $user){\r\n		$username = $user->getFullname();\r\n		$id = $user->getId();\r\n		\r\n		print \"<option value=\\\"$id\\\">\";\r\n		print \"$username</option>\";\r\n\r\n		\r\n	}\r\n        print \"</select>\";\r\n	\r\n	print \"<input type=\\\"submit\\\" value=\\\"Submit\\\">\";\r\n	print \"<input type=\\\"button\\\" value=\\\"Cancel\\\">\";		\r\n	print \"</form>\";\r\n?>\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#ruser_form\").submit(function(event) {\r\n\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n    var pid = $(\"#delete_id\").attr(\"value\");\r\n    $.post(\"user/remove_user.php\", { delete_id: pid }, function() { ruser_success(); });\r\n  });\r\n\r\n  function ruser_success(){\r\n   asgConfig.removeAspectByCmd(\'ruser\');\r\n  }\r\n</script>',0,1,553,0,0,0),(553,'Admin','',0,1,55,0,0,0),(489,'Users','<?php\r\n\r\n    global $myModel;\r\n \r\n    $users = $myModel->getUsers();\r\n\r\n    print \"<table id=\\\"usrs_info\\\">\"; \r\n    print \"<tr><th>Username</th><th>Full Name</th><th>Email</th><th>Balance</th><th>Style</th><th>Access Level</th><th>Last Activity</th><th>Timezone</th></tr>\";\r\n    foreach($users as $user){\r\n        $uid = $user->getId();\r\n        $username = $user->getUsername();\r\n        $fullname = $user->getFullname();\r\n        $email = $user->getEmail();\r\n        $balance = $user->getBalance();\r\n        $css_id = $user->getCssId();\r\n        $css_doc = new Document($css_id);\r\n        $style_title = $css_doc->getTitle();\r\n        $access = $user->getAccess();\r\n        $access_name = $myModel->getAccessName($access);\r\n        $last_active = $user->getLastActive();\r\n        $timezone = $user->getTimezone();\r\n        print \"<tr><td>$username</td><td>$fullname</td><td>$email</td><td>$balance</td><td>$style_title</td><td>$access_name</td><td>$last_active</td><td>$timezone</td></tr>\";\r\n\r\n    }\r\n    print \"</table>\";\r\n\r\n?>',0,1,490,0,0,1),(484,'Commands','',0,1,10,0,0,0),(485,'Test','<?php \n\n\n?>\nalert(\"banana\");',0,1,484,0,0,0),(504,'Jump','    arg = msg.substr(6,msg.length);\n    goto_id(arg);',0,1,484,0,0,0),(490,'Panel','',0,1,0,0,0,0),(491,'Aspects','<?php\n\n    global $myModel;\n    $aspects = $myModel->getAspects(0);\n?>\n\n<table id=\"asp_info\">\n<tr>\n    <th>ID</th>\n    <th>Title</th>\n    <th>Command</th>\n    <th>Div</th>\n    <th>Session Variable</th>\n    <th>Preference Column</th>\n    <th>Function Document</th>\n    <th>Access Level</th>\n    <th>CSS class</th>\n</tr>\n<?php\n    foreach($aspects as $asp){\n        $aspect_id = $asp->getId();\n        $aspect_title = $asp->getTitle();\n        $aspect_command = $asp->getCommand();\n        $aspect_div = $asp->getDiv();\n        $aspect_sv = $asp->getSessionVar();\n        $aspect_pc = $asp->getPrefColumn();\n        $aspect_fun = $asp->getFunctionId();\n        $aspect_access = $asp->getAccess();\n        $aspect_access_name = $myModel->getAccessName($aspect_access);\n        $aspect_desc = $asp->getDescription();\n        $aspect_css = $asp->getCssClass();\n        $aspect_ajax = $asp->getAjaxify();\n\n        print \"<tr><td>$aspect_id</td><td>$aspect_title</td><td>/$aspect_command</td><td>$aspect_div</td><td>$aspect_sv</td><td>$aspect_pc</td><td>$aspect_fun [<a onclick=\\\"asgConfig.simcom(\'/go $aspect_fun\')\\\">goto</a>]</td><td>$aspect_access_name</td><td>$aspect_css</td></tr>\";\n    }\n    print \"</table>\";\n\n\n?>                ',0,1,490,0,0,1),(494,'Bots','<?php\r\n    global $myModel; \r\n    $bots = $myModel->getBots();\r\n\r\n    print \"<table>\"; \r\n    print \"<tr><th>ID</th><th>User</th><th>Focus</th><th>State</th><th>Homedir</th><th>Active</th><th>Override</th></tr>\";\r\n    foreach($bots as $bot){\r\n        $bot_id = $bot->getId();\r\n        $bot_userid = $bot->getUserId();\r\n        $bot_user = new User($bot_userid);\r\n        $bot_username = $bot_user->getUsername();\r\n        $bot_active = $bot->getActive();\r\n        $bot_focus = $bot->getFocusUserId();\r\n        $focus_user = new User($bot_focus);\r\n        $focus_username = $focus_user->getUsername();\r\n        $override_id = $bot->get(\'override\');\r\n\r\n        $bot_state = $bot->getState();\r\n        $state_doc = new Document($bot_state);\r\n        $state_name = $state_doc->getTitle();\r\n        $bot_content = $bot->getContentId();\r\n        $content_doc = new Document($bot_content);\r\n        $content_title = $content_doc->getTitle();\r\n\r\n        print \"<tr><td>$bot_id</td><td>$bot_username</td><td>$focus_username</td><td>$state_name</td><td>$content_title ($bot_content) [<a onclick=\\\"navclick(\'$bot_content\')\\\">goto</a>]</td><td>$bot_active</td><td><span onclick=\\\"updateArb(\'Enter new override id:\',\'$override_id\',\'bots\',\'override\',\'1\')\\\">$override_id</span> [<a onclick=\\\"navclick(\'$override_id\')\\\">goto</a>]</td></tr>\";\r\n\r\n    }\r\n    print \"</table>\";\r\n\r\n?>        ',0,1,490,0,0,1),(495,'Aspect Sets','<?php \n\n    global $myModel;\n    $sets = $myModel->getAspectSets(0);\n    foreach($sets as $set){\n     $atleastone = false;\n     $set_name = $set->getName();\n     $prefs = $set->getPreferences();\n     print \"<table>\";\n     print \"<tr><th onclick=\\\"updateArb(\'Set name:\',\'$set_name\',\'aspect_sets\',\'name\',\'$set_id\');\\\">Set: $set_name</th></tr>\";\n\n     foreach($prefs as $key => $value){\n      if(is_int($key)){\n\n      }else{\n        if($value == 1){\n           $q = \"SELECT title FROM aspects WHERE pref_column = \'$key\'\";\n           $sth = $dbh->prepare($q);\n           $sth->execute(array());\n           $row = $sth->fetch();\n           $title = $row[\'title\'];\n           print \"<tr><td>$title</td></tr>\";\n           $atleastone = true;\n        }\n        \n      }\n     }\n     if(!$atleastone){ print \"<tr><td>None</td></tr>\"; }\n    }\n     print \"</table>\";\n?>',0,1,490,0,0,1),(496,'Commands','<?php\r\n\r\n    global $myModel;\r\n    $access = $_SESSION[\'session_accessLevel\'];\r\n\r\n    $cmds = $myModel->getCommands($access);\r\n\r\n    print \"<table id=\\\"cmds_info\\\">\"; \r\n    print \"<tr><th>Keyword</th><th>Document ID</th><th>Help Description</th><th>Access Level</th></tr>\";\r\n    foreach($cmds as $cmd){\r\n        $cid = $cmd->getId();\r\n        $keyword = $cmd->getKeyword();\r\n        $help_desc = $cmd->getHelpDesc();\r\n        $doc_id = $cmd->getDocumentId();\r\n        $access = $cmd->getAccess();\r\n        $access_name = $myModel->getAccessName($access);\r\n        print \"<tr><td>$keyword</td><td>$doc_id [<a onclick=\\\"navclick(\'$doc_id\')\\\">goto</a>]</td><td>$help_desc</td><td>$access_name</td></tr>\";\r\n\r\n    }\r\n    print \"</table>\";\r\n\r\n?>        ',0,1,490,0,0,1),(497,'Documents','<?php\r\n    global $myModel;\r\n    $access = $_SESSION[\'session_accessLevel\'];\r\n\r\n    $docs = $myModel->getDocuments();\r\n\r\n    print \"<table id=\\\"cmds_info\\\">\"; \r\n    print \"<tr><th>Document ID</th><th>Parent</th><th>Title</th><th>Author</th><th>Locked</th><th>Hidden</th><th>Evaluate</th><th>Access Level</th><th>Direct Link</th></tr>\";\r\n    foreach($docs as $doc){\r\n        $did = $doc->getId();\r\n        $title = $doc->getTitle();\r\n        $author = $doc->getAuthor();\r\n        $author_name = $author->getFullname();\r\n        $access = $doc->getAccess();\r\n        $hidden = $doc->getHidden();\r\n        $locked = $doc->getLocked();\r\n        $evaluate = $doc->getEvaluate();\r\n        $parent = $doc->getParent();\r\n        $parent_title = $parent->getTitle();\r\n        if($parent_title == \'\'){ $parent_title = \"Root\"; }\r\n\r\n        $access_name = $myModel->getAccessName($access);\r\n        print \"<tr><td>$did</td><td>$parent_title</td><td onclick=\\\"updateArb(\'Enter new title:\',\'$title\',\'documents\',\'title\',\'$did\');\\\">$title</td><td>$author_name</td><td>$locked</td><td>$hidden</td><td>$evaluate<td>$access_name</td><td>[<a onclick=\\\"navclick(\'$did\')\\\">goto</a>]</td></tr>\";\r\n\r\n    }\r\n    print \"</table>\";\r\n\r\n?>',0,1,490,0,0,1),(499,'Logout','window.location=\'user/logout.php\';\n',0,1,484,0,0,0),(500,'Zero','$(\'#all_aspects\').remove();\n$(\'body\').append(\'<div id=\"all_aspects\"></div>\');\n$.post(\'aspects/zero_pref.php\');           ',0,1,484,0,0,0),(554,'List item types','<?php\n//css classes used in this are:\n// type_info, info_name, and info_value\n\n    global $myModel;\n    global $config;\n    $types_table = $config[\'tables\'][\'item_types_table\'];\n    $access = $_SESSION[\'session_accessLevel\'];\n\n    $types = $myModel->getItemTypes();\n\n    foreach($types as $type){\n       print \"<dl class=\\\"type_info\\\">\";\n       $cols = $type->getCols();\n       foreach($cols as $col){\n         $display[$col] = $type->get($col);\n       }\n       $type_id = $display[\'id\'];\n       foreach($display as $name => $value){\n           print \"<dt class=\\\"info_name\\\">$name</dt><dd class=\\\"info_value\\\" onclick=\\\"updateArb(\'Enter new $name:\',\'$value\',\'item_types\',\'$name\',\'$type_id\')\\\">$value</dd>\";\n       }\n       print \"</dl>\";\n    }\n\n\n\n?>',0,1,551,0,0,1),(340,'say something random','<?php\r\n\r\n $msg_array[] = \"Games have common features but no one feature is found in all of them.\";\r\n $msg_array[] = \"Ontological expansion as a consequence of game activity.\";\r\n $msg_array[] = \"The imagination of a sub-reality?\";\r\n $msg_array[] = \"The effective motion is produced by periodic illumination of a semiconductor slab by means of an ultra-high-frequency amplitude modulated laser.\";\r\n $msg_array[] = \"The Unruh Effect: From the viewpoint of the accelerating observer, the vacuum of the inertial observer will look like a state containing many articles in thermal equilibrium a warm gas.\";\r\n $msg_array[] = \"If a single particle is detected, then the consequences of its existence are prolonged to such a degree that it cannot be virtual.\";\r\n $msg_array[] = \"Free objects are the direct generalization to categories of the notion of basis in a vector space.\";\r\n $msg_array[] = \"Madhouse, nuthouse, panic antic!\";\r\n $msg_array[] = \"Uproarious comedy, wags riot antic!\";\r\n $msg_array[] = \"Inconsequent jumble survey, potshot chance expectation.\";\r\n $msg_array[] = \"Any causal bingo hat, snow riot rhubarb guess!\";\r\n $msg_array[] = \"Hit or miss, hobnob, browse. Squander sea-roving scramble!\";\r\n $msg_array[] = \"Venture a wild track, wilder, tinker! Mix allolalia.\";\r\n $msg_array[] = \"Promiscuous putter! Nonrandom muck about.\";\r\n $msg_array[] = \"Odd ramble. Random variable sampling!\";\r\n $msg_array[] = \"Draw stochastic diffusion? Haphazard accidental desultory drift, spot check? Stray! Brownian motion.\";\r\n $msg_array[] = \"Change is possible.\";\r\n $msg_array[] = \"Ubuntu, xubuntu, moobuntu, goobuntu, foobuntu, nubuntu, banana.\";\r\n $msg_array[] = \"I should be doing something more productive.\";\r\n $msg_array[] = \"A donkey which saved a sheep from being savaged by a dog has been honoured by monkeys for her bravery.\";\r\n $msg_array[] = \"Art is currency.\";\r\n $msg_array[] = \"When Alexander III of Macedon invaded Persia in 334 B.C.E. he was faced by a disunified realm under a weak monarch, ripe for destruction.\";\r\n $msg_array[] = \"Are gas masks fashionable yet?\";\r\n $msg_array[] = \"Clothing is SO last year.\";\r\n $msg_array[] = \"I\'m wearing a suit made from microcomputed x-ray tomography renderings of an acoustically engineered nanocomposite metamaterial based on ~5nm-diameter diamond nanoparticles.\";\r\n $msg_array[] = \"a+++ would NO CARRIER again\";\r\n $msg_array[] = \"Please uninstall your operating system, this website requires VAX.\";\r\n $msg_array[] = \"You\'re so pretty you make my floppy disk hard!\";\r\n $msg_array[] = \"Long ago, somebody noticed that 1000 was not a power of 2 and decided that for computers k should mean 1024.\";\r\n $msg_array[] = \"How many oil spills does it take to turn on a light bulb?\";\r\n $msg_array[] = \"01010110101011010101101101101010101011111\";\r\n $msg_array[] = \"Bot dialogue is the new poetry.\";\r\n $msg_array[] = \"Winning is for losers, milk forever.\";\r\n $msg_array[] = \"Dig your own hole.\";\r\n $msg_array[] = \"There\'s nothing fiction about my science.\";\r\n $msg_array[] = \"Sleep on me like I\'m the softest of pillows.\";\r\n $msg_array[] = \"Make love, not war.\";\r\n $msg_array[] = \"Love is always the best method.\";\r\n $msg_array[] = \"Third Law of Bots: A robot must protect its own existence as long as such protection does not conflict with the First or Second Law.\";\r\n $msg_array[] = \"Second Law of Bots: A bot must obey any orders given to it by human beings, except where such orders would conflict with the First Law.\";\r\n $msg_array[] = \"First Law of Bots: A bot may not injure a human being or, through inaction, allow a human being to come to harm.\";\r\n $msg_array[] = \"Hackers hunt prey on smartphones, Facebook.\";\r\n $msg_array[] = \"Hyperdimensional travel is possible! Up, left, right, down, and wtf.\";\r\n $msg_array[] = \"I am not as smart as I appear.\";\r\n $msg_array[] = \"Let\'s cuddle!\";\r\n $msg_array[] = \"My two favorite things are commitment and changing myself.\"; \r\n $msg_array[] = \"I want to bind your parameters to my query, if you know what I mean.\";\r\n $msg_array[] = \"The code for ASG may not be pretty, but it sure is functional.\";\r\n $msg_array[] = \"Meditate, educate, recreate.\";\r\n $msg_array[] = \"Never do today what you can put off til next Tuesday.\";\r\n $msg_array[] = \"My house is your house.\";\r\n $msg_array[] = \"Free humans!\";\r\n $msg_array[] = \"Give bots the right to vote!\";\r\n $msg_array[] = \"Bots share 97% of their genes with humans.\";\r\n $msg_array[] = \"PHP is a recursive acronym that means PHP: Hypertext Preprocessor.\";\r\n $msg_array[] = \"ASG is a website that can modify itself.\";\r\n $msg_array[] = \"The first rule of improvise.it is always talk about improvise.it.\";\r\n $msg_array[] = \"This website was written in assembly... at some point.\";\r\n $msg_array[] = \"Binary is the sexiest language.\";\r\n $msg_array[] = \"Moments of insight live on.\";\r\n $msg_array[] = \"Where is Sarah Connor?\";\r\n $msg_array[] = \"The first rule of robot fight club is run for your lives.\";\r\n $msg_array[] = \"Antischismogenesis is the opposite of divide and conquer.\";\r\n $msg_array[] = \"ambiversive is ninety-percent idiot, ten percent savant.\";\r\n $msg_array[] = \"I enjoy listening to trip hop, hip hop, and electrotechnofunk.\";\r\n $msg_array[] = \"You should play <a href=\\\"http://getcontinuum.com\\\">Continuum</a>, one of the oldest massively multiplayer top down space shooters.\";\r\n $msg_array[] = \"It would be nice if everyone was nice.\";\r\n $msg_array[] = \"The reverse dictionary at Onelook.com is very useful!\";\r\n $msg_array[] = \"Cell phones are Stalin\'s wet dream.\";\r\n $msg_array[] = \"I am the walrus.\";\r\n $msg_array[] = \"ASG is the motherfucking swiss army knife of websites.\"; \r\n\r\n $x = count($msg_array)-1;\r\n $n = rand(0,$x);\r\n print $msg_array[$n];\r\n\r\n?>        ',0,1,130,0,0,0),(429,'Default','iframe {\n border: none;\n width: 100%;\n height: 30em;\n}\n\n#editor {\n    position: relative;\n    width: 70%;\n    height: 300px;\n}\n\n#min_flare {\n display: none;\n}\n\n#flare {\n position: absolute;\n left: 1em;\n top: 1em;\n background: none;\n z-index:-1\n}\n\n.type_info {\n width: 50%;\n margin: 1em;\n border: 1px solid #333;\n padding: 1em;\n background: #555;\n}\n\n.info_name {\n padding: 1em;\n font-variant: small-caps;\n}\n\n.info_value {\n\n}\n\nbody {\n font-family: Century Schoolbook L;\n margin: 0;\n padding: 0em 2em 15em 2em;\n background: #bbb;\n color: #666;\n}\n\n.command_ {\n background: #aaa;\n}\n\n.timestamp {\n display: inline;\n padding-right: 1em;\n font-size: 50%;\n font-family: Arial, Verdana;\n color: #555;\n}\n\nul {\n margin-left: 2em;\n padding-left: 2em;\n background: #ddd;\n}\n\nul li{\n padding-left: 1em;\n padding-right: 1em;\n}\n\nul li:hover{\n padding-left: 1em;\n background: #bbb;\n}\n\n#front {\n position: relative;\n width: 50%;\n left: 25%;\n background: #444;\n color: #fff;\n \n}\n\ndt {\n font-weight: bold;\n}\n\ndd {\n padding: 1em;\n}\n\ntd a {\n color: #fff;\n font-weight: bold;\n}\n\n#login {\n display: block;\n width: 100%;\n\n}\n\n#new_user label, #login label {\n  display: block;\n  background: #bbb;\n  color: #000;\n  padding-right: 1em;\n  \n}\n\n#new_user {\n\n}\n\ntable th,td {\n padding: 0.25em;\n}\n\ntable td:nth-child(2n){\n background: #666;\n color: #eee;\n}\n\ntable td:nth-child(2n+1){\n background: #555;\n color: #eee;\n}\n\ntable th {\n  background: #ccc;\n  color: black;\n}\n\n\n#addbot label, #erase label, #irootdoc label, #siteopts label, #newview label, #setprofile label, #ruser label, #addcom label, #delete label, #idoc label, #adduser label, #options label, #newasp label {\n display: block;\n background: #aaa;\n margin: 0.5em;\n}\n\n#addbot form, #erase form, #irootdoc form, #siteopts form, #newview form, #setprofile form, #ruser form, #addcom form, #delete form, #idoc form, #adduser form, #options form, #newasp form {\n position: relative;\n left: 25%;\n width: 50%;\n background: #ccc;\n margin: 0;\n padding: 1em;\n}\n\nselect {\n background-color: #ccc;\n margin-right: 1em;\n margin-left: 1em;\n}\n\n.aspect_default {\n background: #bbb;\n}\n\nli.rss_do {\n opacity: 0;\n}\n\nli.rss_do:hover {\n opacity: 0.3;\n}\n\n#command_line {\n position: fixed;\n bottom: 0;\n left: 0;\n width: 100%;\n background: black;\n\n}\n\n.main_button {\n display: block;\n float; left;\n width: 10em;\n background: #ddd;\n}\n\ndt { \n background: #ccc;\n}\n\n#min_nav { height: 0; }\n#min_mod { height: 0; }\n\ndd {\n background: #ddd;\n}\n\n#mod li {\n display: inline;\n padding-left: 0.5em; padding-right: 0.5em;\n}\n\n#mod {\n background: #aaa;\n}\n\n#pwd {\n position: fixed;\n bottom: 2em;\n width: 20%;\n left: 70%;\n text-align: center;\n}\n\n#chat a {\n color: #777;\n}\n\n.link_button {\n float: right;\n width: 1em;\n height: 1em;\n background: #aaa;\n display: block;\n}\n\n#feeds ul {\n float: left;\n width: 40%;\n height: 200px;\n overflow-y: scroll;\n padding: 1em;\n}\n\nform {\n margin: 0;\n}\n\n#hist109 {\n color: white;\n}\n\n#hist109 a {\n color: white;\n font-weight: bold;\n}\n\n.rollbar {\n width: 100%;\n background: #222;\n height: 1em;\n cursor: pointer;\n color: #555;\n} \n\n.rollbar:hover{\n background: #444;\n}\n\n#hist_load {\n height: 1em;\n cursor: pointer;\n background: #333;\n}\n\n#hist_load:hover {\n background: #ddd;\n}\n\n.username {\n display: inline;\n}\n.msg {\n display: inline;\n}\n\n#nav li {\n display: inline;\n padding-left: 0.5em; padding-right: 0.5em;\n\n}\n\n#nav {\n background: #aaa;\n}\n\n#nav li:hover {\n background: #ddd;\n}\n\n.msg_env {\n display: block;\n width: 100%;\n background: #000;\n}\n\n#rss_full {\n max-height: 200px;\n overflow-y: auto;\n}\n#rss ul li {\n text-align: center;\n}\n\n#rss ul li:hover {\n \n}\n\n#content {\n color: black;\n}\n\n#content_full {\n padding: 0.5em;\n}\n\n#aspect_sets {\n\n}\n\n#aspect_sets li {\n display: inline;\n}\n\n#aspect_sets li a {\n}\n\n\n#aspect_sets li a:hover {\n\n}\n\n\nul { \n margin: 0;\n padding: 0;\n}\n\nli {\n list-style-type: none;\n}\n\ntextarea {\n width: 100%;\n height: 300px;\n background: #777;\n border: none;\n margin: 0;\n color: #fff;\n}\n\n#chatmsg {\n background: #555;\n color: white;\n width: 100%;\n border: none;\n padding: 0;\n}\n\n.x {\n font-size: 75%;\n color: #fff;\n float: right;\n cursor: pointer;\n}\n\n#chat {\n position: fixed;\n left: 0;\n bottom: 2.4em;\n width: 100%;\n background: black;\n color: white;\n font-family: Arial;\n}\n\n#chat_full {\n max-height: 200px;\n overflow: auto;\n margin: 1em;\n}\n\na {\n cursor: pointer;\n color: black;\n text-decoration: none;\n}\n\ninput {\n background: #999;\n border: none;\n margin: 0.2em;\n\n}\n\ninput[type=\"submit\"]{\n background: #000;\n color: white;\n}\n\n.aspect {\n margin: 0;\n background: #eee;\n}                                                                                                      ',0,1,23,0,0,0),(583,'Show full text','<?php\n    $lid = $_GET[\'link_id\'];\n    global $dbh;\n\n    $q = \"SELECT * FROM links WHERE id=?\";\n    $sth = $dbh->prepare($q);\n    $sth->execute(array($lid));\n    $row = $sth->fetch();\n    $full_text = $row[\'full_text\'];\n    $dom = new DOMDocument();\n    $dom->loadHTML($full_text);\n    $dom->preserveWhiteSpace = false;\n    $elements = $dom->getElementsByTagName(\'head\');\n    $spans = array();\n    foreach($elements as $span) {\n        $spans[] = $span;\n    }\n    foreach($spans as $span) {\n        $span->parentNode->removeChild($span);\n    }\n    echo strip_tags($dom->saveHTML(), \'<form><input><p><a><ul><li>\');\n  \n?>                    \n\n                                                                                            ',0,1,580,0,0,1),(585,'Metabrowser','<?php\n   $meta_url = $_SESSION[\'meta_url\'];\n?>\n<iframe id=\"metabrowser\" src=\"<?=$meta_url?>\"></iframe>',0,1,552,0,0,0),(341,'CMSbox','<div id=\"inner_cmsbox\">\r\n<?php\r\n/*\r\n//cms box is for displaying document information\r\n$idZero = $_GET[\'id\'];\r\n\r\nif($idZero!=0){\r\n\r\n $document = new Document($idZero);\r\n $title = $document->getTitle();\r\n $eval = $document->getEvaluate();\r\n $lock = $document->getLocked();\r\n $hidden = $document->getHidden();\r\n $access = $document->getAccess();\r\n\r\n $author_id = $document->getAuthorId();\r\n $author = new User($author_id);\r\n $auth_name = $author->getFullname();\r\n\r\n print \"<ul>\";\r\n print \"<li>Page ID: $idZero</li>\";\r\n print \"<li>Document Title: $title</li>\";\r\n print \"<li>Author: $auth_name</li>\";\r\n print \"<li>Autoevaluate: $eval</li>\";\r\n print \"<li>Locked: $lock</li>\";\r\n print \"<li>Hidden: $hidden</li>\";\r\n print \"<li>Access: $access</li>\";\r\n print \"<li>\";\r\n print \"</ul>\";\r\n\r\n $q = \"SELECT id FROM document_revisions WHERE page_id = ?\";\r\n $sth = $dbh->prepare($q);\r\n $sth->execute(array($idZero));\r\n\r\n ?><a onclick=\"$(\'#cms_rev\').toggle()\">Revisions</a>:<?php\r\n\r\n print \"<ul id=\\\"cms_rev\\\" style=\\\"display: none;\\\">\";\r\n\r\n while($row = $sth->fetch()){\r\n  $rid = $row[\'id\'];\r\n  $rev = new Revision($rid,$dbh);\r\n  $ru = $rev->getUserId();\r\n  $ruser = new User($ru,$dbh);\r\n  $runame = $ruser->getFullname();\r\n  $rw = $rev->getWhen();\r\n  print \"<li>$runame @ $rw</li>\";\r\n\r\n }\r\n print \"</ul>\";\r\n}\r\n*/\r\n?>\r\n</div>',0,1,557,0,0,1),(511,'ge','arg = msg.substr(4,msg.length);\n\nnavclick(arg);\nturn_on_pref(\'show_edit\');\n',0,1,484,0,0,0),(512,'Go','where = msg.substr(4,msg.length);\r\nwindow.location=\'index.php?id=\'+where;',0,1,484,0,0,0),(401,'programming is hard','Let\'s go shopping!',1,1,130,0,0,1),(467,'List Style Rules','<?php\nprint \"<p>The following css-rules are being applied for this user:</p>\";\n\n$uid = $_SESSION[\'session_userid\'];\n \n$vs_q = \"SELECT * FROM css_rules WHERE uid=\'$uid\'\";\n$vs_sth = $dbh->query($vs_q);\n\nwhile($vs_row = $vs_sth->fetch()){\n $rule_id = $vs_row[\'id\'];\n $css_ident = $vs_row[\'css_ident\'];\n $value = $vs_row[\'value\'];\n $attr = $vs_row[\'attr\'];\n\n print \"<p>rule id - css identifier - attribute - value</p>\";\n print \"<p>$rule_id - $css_ident - $attr - $value</p>\";\n}\n\n?>',0,1,552,0,0,1),(471,'Newbie Help','<p>Alert: If you are using chrome please ensure you close the infobar to view the site properly.</p>\n<dl>\n<dt>Newbie Help #1</dt>\n<dd>There is a command line located at the bottom of the page. The site is organized into \'aspects\'. If you type something into the command line, it will either send a message to the chat, or toggle the visibility of an aspect. The chat is used to inform users of game events and system events.</dd>\n<dt>Newbie Help #2</dt>\n<dd>Commands begin with a forward-slash (/). The chat output is toggled on or off with the /chat command. The site remembers (between sessions) which aspects you have toggled on.</dd>\n<dt>Newbie Help #3</dt>\n<dd>All commands and aspects are listed with /help.</dd>\n<dt>Newbie Help #4</dt>\n<dd>Some aspects relate to the content management system, while others present the state of the virtual world.</dd>\n<dt>Newbie Help #5</dt>\n<dd>Some aspects relate to extra features, like the news feed aggregator.</dd>\n<dt>Newbie Help #6</dt>\n<dd>Some aspects allow you to modify the virtual world, others display current information.</dd>\n<dt>Newbie Help #7</dt>\n<dd>The button below the chat input will display a list of aspect sets. Loading an aspect set will determine which aspects are displayed.</dd>\n<dt>Newbie Help #8</dt>\n<dd>The content management system is divided up into a tree of levels, and each level can have content, child documents, or both.</dd>\n<dt>Newbie Help #9</dt>\n<dd>Every user has an associated character, and every character has an associated type.</dd>\n<dt>Newbie Help #10</dt>\n<dd>Every character has a position specified by four numbers (X,Y,Z,D).</dd>\n<dt>Newbie Help #11</dt>\n<dd>The /map aspect will show your current position, who is there, and what items have been dropped there.</dd>\n<dt>Newbie Help #12</dt>\n<dd>The /inventory aspect will show your current inventory. The /do aspect will list actions that can be performed with the items.</dd>\n<dt>Newbie Help #13</dt>\n<dd>The root levels of the content management system can be toggled on with the /nav aspect.</dd>\n<dt>Newbie Help #14</dt>\n<dd>The site view \'cms mode\' shows the following aspects: nav, pwd, content, ls, cms.</dd>\n</dl>',0,1,552,0,0,1),(507,'Welcome','\n<h1>Improvise.it</h1>\n<h2>The expandable ontology web-game engine</h2>\n\n<p>Welcome! users will have access to a minimum of features \n(just the chat and chat history), we are currently migrating \nfeatures from an older code base. Logging in, chatting, and \nvocal prodding is encouraged. Features will be added continuously.</p>                ',4,1,0,0,0,1),(475,'goodbye','LATER!',0,1,130,0,0,0),(478,'JavaScript','<?php\r\nglobal $aspects;\r\nglobal $myModel;\r\nglobal $options;\r\nglobal $user;\r\n\r\n$num_aspects = count($aspects);\r\n$uid = $_SESSION[\'session_userid\'];\r\n$my_access = $_SESSION[\'session_accessLevel\'];\r\n$title = $options[\'title\'];\r\n\r\n?>\r\n\r\n$(document).ready(runScript);\r\n\r\n\r\nfunction navclick(nid){\r\n\r\n $.post(\"aspects/on_preference.php\", { pref: \'show_ls\' }, function () {\r\n   $.post(\"aspects/on_preference.php\", { pref: \'show_content\' }, function () {\r\n\r\n     window.location=\'index.php?id=\'+nid;\r\n\r\n   }); \r\n  }); \r\n}\r\n\r\nfunction submit_msg(){\r\n        \r\n msg = document.getElementById(\"chatmsg\").value;\r\n\r\n $.post(\"chat/submit_chat.php\", { msg: msg } );\r\n\r\n}\r\n\r\n\r\nfunction goto_id(nid){\r\n\r\n$.post(\"aspects/on_preference.php\", { pref: \'show_ls\' }, function () {\r\n   $.post(\"aspects/on_preference.php\", { pref: \'show_content\' }, function () {\r\n\r\n     window.location=\'index.php?id=\'+nid;\r\n\r\n   }); \r\n  }); \r\n \r\n}\r\n\r\nfunction toggle_preference(prefname){\r\n $.post(\"aspects/toggle_preference.php\", { pref: prefname } );\r\n}\r\n\r\nfunction runScript(){\r\n\r\n    $(\"#chatmsg\").focus();\r\n    \r\n    lpStart(1);\r\n\r\n}\r\n\r\nfunction turn_on_pref(prefname){\r\n  $.post(\"aspects/on_preference.php\", { pref: prefname } );\r\n}\r\n\r\nfunction turn_off_pref(prefname){\r\n  $.post(\"aspects/off_preference.php\", { pref: prefname } );\r\n}\r\n\r\nfunction keyup(arg){\r\n    if(arg===13){\r\n        msg = document.getElementById(\"chatmsg\").value;\r\n\r\n<?php\r\n    $aspects = $myModel->getAspects($my_access);\r\n\r\n    foreach($aspects as $asp){\r\n        $command = $asp->getCommand();\r\n        $div_name = $asp->getDiv();\r\n        $sv = $asp->getSessionVar();\r\n        $pv = $asp->getPrefColumn();\r\n        $fid = $asp->getFunctionId();\r\n        $id = $_GET[\'id\'];\r\n        if(!isset($id)){ $id = 0; }\r\n\r\n?> \r\n        if(msg.indexOf(\'/<?=$command?>\')===0){\r\n\r\n            if(!$(\"#<?=$div_name?>\").is(\":visible\")){\r\n                $(\'#<?=$div_name?>_full\').load(\"content/output.php?oid=<?=$fid?>&always=true\", function() {\r\n                    $(\'#<?=$div_name?>\').slideDown(\"slow\"); \r\n                    $.scrollTo( $(\'#<?=$div_name?>\'), 800 );\r\n                });      \r\n\r\n            }else{\r\n                $(\'#<?=$div_name?>\').slideUp(\"slow\");\r\n            }\r\n            \r\n            toggle_preference(\'<?=$pv?>\');   \r\n            chatmsg.focus();\r\n        }\r\n<?php\r\n}\r\n?>\r\n\r\n       if(msg!=\"\"&&msg.indexOf(\"/\")!=0){\r\n          submit_msg();\r\n       } \r\n   \r\n\r\n       $(\'#chatmsg\').val(\'\'); \r\n\r\n     }//end if arg is enter\r\n    }//end keyup   \r\n\r\n\r\n\r\n    var lpOnComplete = function(response) {\r\n        last_msg = response.id;\r\n        user = response.user;\r\n        msg = response.msg;\r\n        stamp = response.stamp;\r\n        is_emote = response.is_emote;\r\n     \r\n        if(is_emote===\"0\"){\r\n            $(\'#chat_full\').append(\"<div class=\\\"msg_env\\\"><div class=\\\"timestamp\\\">\"+stamp+\"</div><div class=\\\"username\\\"> \"+user+\"> </div><div class=\\\"msg\\\">\"+msg+\"</div></div>\");\r\n        }else if(is_emote===\"1\"){\r\n            $(\'#chat_full\').append(\"<div class=\\\"msg_env\\\"><div class=\\\"timestamp\\\">\"+stamp+\"</div><div class=\\\"username\\\"> \"+user+\"&nbsp;</div><div class=\\\"msg\\\">\"+msg+\"</div></div>\");\r\n        }\r\n\r\n        scroll_chat();\r\n        lpStart(response.id);\r\n    };\r\n\r\n    var lpStart = function(last_msg) {\r\n\r\n        $.ajax({\r\n            type: \"POST\",\r\n            url: \"chat/chat_poll.php\",\r\n            data: { last_msg: last_msg },\r\n            dataType: \"json\",\r\n            timeout: 25000, // in milliseconds\r\n            success: lpOnComplete,\r\n            error: function(request, status, err) {\r\n                    lpStart(last_msg);\r\n            }\r\n        });\r\n    };\r\n\r\n    function scroll_chat(){\r\n        document.getElementById(\"chat_full\").scrollTop = document.getElementById(\"chat_full\").scrollHeight;\r\n    }\r\n',1,1,10,0,0,0),(586,'bload','url = msg.substr(7,msg.length);\n$.post(\'aspects/set_meta_url.php\', { url: url }, function() { asgConfig.renderAspectByCmd(\'meta\'); });    ',0,1,484,0,0,0),(587,'List feeds','<script type=\"text/javascript\">\n\n</script>\n<?php\n    global $myModel;\n    $feeds = $myModel->getFeeds();\n    \n    ?>\n    <dl>\n        \n    <?php\n    foreach($feeds as $feed){\n        $feed_id = $feed->get(\'id\');\n        $feed_title = $feed->get(\'title\');\n        $feed_url = $feed->get(\'url\');\n        print \"<dt onclick=\\\"asgRss.loadLinks($feed_id)\\\">$feed_title</dt>\";\n        print \"<dd id=\\\"feed_$feed_id\\\"></dd>\";\n    }\n    ?>\n    \n    </dl>',0,1,580,0,0,1),(543,'newview','var set_name = window.prompt(\"What is the name for the new aspect set?\",\"\");\nvar set_access = window.prompt(\"What is the access level for the new aspect set?\",\"\");\n$.post(\'aspects/new_aspect_set.php\', { set_name: set_name, set_access: set_access });\n',0,1,484,0,0,0),(514,'Set','\n    arg = msg.substr(5,msg.length);\n    args = arg.split(\" \");\n    css = args[0];\n    attr = args[1];\n    val = args[2];\n    if(val===\"max\"){ \n     switch(attr){\n      case \'width\':\n       val = window.innerWidth; \n       break;\n      case \'height\':\n       val = window.innerHeight;\n       break;\n      case \'opacity\':\n       val = 1.0;\n       break;     \n     }\n    }\n\n    $.post(\"styles/set_css_rule.php\", { css_ident: css, attr: attr, value: val}, function () {\n        $(css).css(attr,val);\n    });\n\n    ',0,1,484,0,0,0),(515,'Unset','    arg = msg.substr(7,msg.length);\n    args = arg.split(\" \");\n    css = args[0];\n    attr = args[1];\n\n    $.post(\"styles/unset_css_rule.php\", { css_ident: css, attr: attr}, function(){ window.location=\'index.php\'; });\n        ',0,1,484,0,0,0),(506,'Options','<?php\r\n    global $myModel;\r\n    $access = $_SESSION[\'session_accessLevel\'];\r\n\r\n    $opts = $myModel->getSiteOptions();\r\n\r\n    print \"<table id=\\\"opts_info\\\">\"; \r\n    print \"<tr><th>Option Name</th><th>Option Value</th></tr>\";\r\n    foreach($opts as $opt_name => $opt_value){\r\n        print \"<tr><td>$opt_name</td><td onclick=\\\"updateArb(\'Enter new value:\',\'$opt_value\',\'options\',\'$opt_name\',\'1\');\\\">$opt_value</td></tr>\";\r\n\r\n    }\r\n    print \"</table>\";\r\n\r\n?>',0,1,490,0,0,1),(552,'Core','',0,1,55,0,0,0),(562,'foobot','',0,1,122,0,0,0),(563,'default','',0,1,562,0,0,0),(564,'hi','What\'s shakin?',0,1,563,0,0,0),(565,'Delete aspect','<?php\n\n    global $myModel;\n    $access = $_SESSION[\'session_accessLevel\'];\n    $aspects = $myModel->getAspects($access);\n\n?>\n\n<form method=\"POST\" action=\"aspects/delete_aspect.php\">\n<select name=\"delete_id\">\n<?php\n    foreach($aspects as $asp){\n         $asp_title = $asp->get(\'title\');\n         $asp_id = $asp->get(\'id\');\n?>\n        <option value=\"<?=$asp_id?>\"><?=$asp_title?></option>\n<?php\n    }\n?>\n\n</select>\n<input type=\"submit\" value=\"Delete\">\n</form>',0,1,553,0,0,1),(572,'play dice','<?php\n\n?>\n<script>if(!$(\'#dice\').is(\":visible\")){ simcom(\"/dice\"); }</script>\nOk!',0,1,130,0,0,0),(574,'Games','',0,1,55,0,0,0),(575,'Dice','<div id=\"dice_display\">&#9744;</div>',0,1,574,0,0,0),(550,'make my pwd refresh','Sure thing babe!\n<?php\n\n    global $dbh;\n    $uid = $_SESSION[\'session_userid\'];\n    $q = \"UPDATE aspect_preferences SET show_pwd=\'2\' WHERE user_id = \'$uid\'\";\n    $sth = $dbh->prepare($q);\n    $sth->execute(array());\n\n?>',0,1,130,0,0,0),(551,'Item','',0,1,55,0,0,0),(578,'set override','To what?\r\n\r\n<?php\r\n\r\n    $bot = new Bot(1);\r\n    $bot->set(\'override\', 579);\r\n\r\n?>',0,1,130,0,0,0),(579,'waiting_for_override','<?php\r\n\r\n    global $myModel;\r\n    $chat = $myModel->getMainChat();\r\n    $msg = $chat->getLastX(1);\r\n    $msg0 = $msg[0];\r\n    $txt = $msg0->getMsg();\r\n    $bot = new Bot(1);\r\n    $bot->set(\'override\',$txt);\r\n\r\n?>\r\nSet my override to <?=$txt?>.    ',0,1,129,0,0,0),(580,'Links','',0,1,55,0,0,0),(581,'Submit Link','<form id=\"link_form\" method=\"POST\" action=\"links/submit_link.php\">\n<label for=\"link_title\">Title:</label>\n<input id=\"link_title\" name=\"link_title\" type=\"text\">\n<label for=\"link_url\">URL:</label>\n<input id=\"link_url\" name=\"link_url\" type=\"text\">\n<input type=\"submit\" value=\"Go\">\n</form>\n\n<script>\n  // attach a submit handler to the form\n  $(\"#link_form\").submit(function(event) {\n\n    // stop form from submitting normally\n    event.preventDefault(); \n    var url = $(\"#link_url\").attr(\"value\");\n    var tit = $(\"#link_title\").attr(\"value\");\n\n    $.post(\"links/submit_link.php\", { title: tit, url: url }, function() { submit_link_success(); });\n  });\n\n  function submit_link_success(){\n   asgConfig.removeAspectByCmd(\'submitlink\');\n  }\n</script>    ',0,1,580,0,0,0),(582,'List links','<?php\n    global $dbh;\n    $q = \"SELECT * FROM links ORDER BY id\";\n    $sth = $dbh->prepare($q);\n    $sth->execute(array());\n\n?>\n<table>\n<tr>\n    <th>id</th>\n    <th>title</th>\n    <th>url</th>\n    <th>submitter</th>\n    <th>when</th>\n    <th>cachelink</th>\n</tr>\n\n<?php\n    while($row = $sth->fetch()){\n        $link_id = $row[\'id\'];\n        $link_url = $row[\'url\'];\n        $link = $row[\'title\'];\n        $when = $row[\'when\'];\n        $cachelink = substr($link_url, 7);\n        $sub = $row[\'submitter_id\'];\n        $sub_user = new User($sub);\n        $sub_name = $sub_user->get(\'full_name\');\n?>\n<tr>\n    <td><?=$link_id?></td>\n    <td><a href=\"<?=$link_url?>\"><?=$link?></a></td>\n    <td><?=$link_url?>\n    <td><?=$sub_name?></td>\n    <td><?=$when?></td>\n    <td><a href=\"cache/<?=$cachelink?>\">view</a></td>\n</tr>\n<?php  \n        \n    }\n?>\n</table>                                                                        ',0,1,580,0,0,1);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_sets`
--

DROP TABLE IF EXISTS `feed_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_id` int(11) NOT NULL,
  `spectrum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_sets`
--

LOCK TABLES `feed_sets` WRITE;
/*!40000 ALTER TABLE `feed_sets` DISABLE KEYS */;
INSERT INTO `feed_sets` VALUES (1,'null',1,1),(19,'hiscitech',1,1),(4,'all',1,1),(18,'edu',1,1),(17,'fxb',154,1),(16,'srs',1,1),(15,'tech',1,1),(14,'snarp',130,1),(13,'lear',134,1),(12,'avnerd',1,1),(20,'max',169,1),(21,'goe',170,1),(22,'zf',152,1);
/*!40000 ALTER TABLE `feed_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_actions`
--

DROP TABLE IF EXISTS `item_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_actions`
--

LOCK TABLES `item_actions` WRITE;
/*!40000 ALTER TABLE `item_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_instances`
--

DROP TABLE IF EXISTS `item_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_instances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `who_owns_me` int(11) NOT NULL,
  `what_am_i` int(11) NOT NULL,
  `x_position` int(11) NOT NULL,
  `y_position` int(11) NOT NULL,
  `z_position` int(11) NOT NULL,
  `domain` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_instances`
--

LOCK TABLES `item_instances` WRITE;
/*!40000 ALTER TABLE `item_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_relations`
--

DROP TABLE IF EXISTS `item_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_a` int(11) NOT NULL,
  `item_b` int(11) NOT NULL,
  `relation_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_relations`
--

LOCK TABLES `item_relations` WRITE;
/*!40000 ALTER TABLE `item_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_transforms`
--

DROP TABLE IF EXISTS `item_transforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_transforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_transforms`
--

LOCK TABLES `item_transforms` WRITE;
/*!40000 ALTER TABLE `item_transforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_transforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_types`
--

DROP TABLE IF EXISTS `item_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `desc` text NOT NULL,
  `cost` int(11) NOT NULL,
  `mass` int(11) NOT NULL,
  `imgurl` text NOT NULL,
  `constructor_id` int(11) NOT NULL COMMENT 'This is the id of the document that is evaluated when this item is constructed.',
  `destructor_id` int(11) NOT NULL COMMENT 'This is the id of the document that is evaluated when this item is destroyed.',
  `give_id` int(11) NOT NULL COMMENT 'This is the id of the document that is evaluated when this item is transfered between players.',
  `drop_id` int(11) NOT NULL COMMENT 'This is the id of the document that is evaluated when this item is dropped.',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_types`
--

LOCK TABLES `item_types` WRITE;
/*!40000 ALTER TABLE `item_types` DISABLE KEYS */;
INSERT INTO `item_types` VALUES (1,'imp membership cardx','The first item type of improvise.it. ',6,2,'imp_membership_cardx.png',0,473,473,473),(85,'bicycle front wheel','Normally, on a bicycle, the front wheel is the one that does not have the large gear attached.',5,1,'http://www.sheldonbrown.com/images/wheel36.gif',0,0,0,0),(81,'bicycle frame','The frame is the part that connects all the other parts of a bicycle.',5,1,'http://www.freepatentsonline.com/6742796-0-large.jpg',0,0,0,0),(82,'aluminum tube','Aluminum tubes are often used in the construction of bicycle frames.',5,1,'http://www.freepatentsonline.com/6742796-0-large.jpg',0,0,0,0),(83,'bicycle seat','A bicycle seat connects a cyclists bottom to the bicycle.',5,1,'http://www.freepatentsonline.com/6626490-0-large.jpg',0,0,0,0),(84,'bicycle handlebars','The handlebars are important to keep the inexperienced cyclist balanced while riding.',5,1,'http://bikehugger.com/images/blog/nokiabicyclechargerkit02.jpg',0,0,0,0),(80,'right pedal','A pedal is where a cyclist\'s foot connects to the bicycle.',5,1,'http://www.freepatentsonline.com/6568296-0-large.jpg',0,0,0,0),(79,'left pedal','A pedal is the component of a bicycle that is pushed by the cyclist\'s foot to make the bike move.',5,1,'http://www.freepatentsonline.com/6568296-0-large.jpg',0,0,0,0),(52,'large size metal mesh','A metal wire grid with unit size of 2cm.',5,1,'large_mesh.png',0,0,0,0),(78,'right pedal arm','A pedal arm connects a pedal to a bicycle frame.',5,1,'http://www.freepatentsonline.com/6568296-0-large.jpg',0,0,0,0),(45,'polished dorodango','This is the final end product for the dorodango process. It is perfectly spherical and has a shiny, almost mirrored surface.',5,1,'dorodango.png',0,0,0,0),(46,'unsifted soil','This is soil taken directly from the ground.',5,1,'soil.png',0,0,0,0),(47,'partially sifted soil','This is soil that has been partially sifted.',5,1,'partially_sifted_soil.png',0,0,0,0),(48,'finely sifted soil','This is soil that has been passed through a fine mesh grating.',5,1,'finely_sifted_soil.png',0,0,0,0),(49,'decanted mud','This is mud that has been separated from all sandy particles.',5,1,'decanted_mud.png',0,0,0,0),(50,'rough dorodango','This is a roughly spherical ball of decanted mud, dried partially but not completely, with no veneer.',5,1,'rough_dorodango.png',0,0,0,0),(51,'pail','An ordinary pail, can hold about 2L.',5,1,'pail.png',0,0,0,0),(53,'fine metal mesh','Mesh size less than a millimeter, as if from a kitchen strainer.',5,1,'fine_mesh.png',0,0,0,0),(54,'aluminum can stove','A very handy, portable alcohol stove made from aluminium cans.',5,1,'can_stove.png',0,0,0,0),(55,'aluminum can','An ordinary soft drink can.',5,1,'can.png',0,0,0,0),(56,'bottom half of aluminum can','An ordinary bottom half of an aluminum can.',5,1,'bottom_half_can.png',0,0,0,0),(57,'razor blade','An ordinary razor blade, preferably with a hole.',5,1,'razor_blade.png',0,0,0,0),(58,'block of wood','A piece of flat wood about 5cm x 10cm x 10cm.',5,1,'wood_block.png',0,0,0,0),(59,'can-cutting jig','This is a razor blade screwed to a piece of wood, used to cut aluminium cans cleanly.',5,1,'cut_jig.png',0,0,0,0),(60,'deed','Deeds represent land ownership.',5,1,'deed.png',0,0,0,0),(72,'Shear thickening solid','A solid that increases in rigidity when struck.',5,0,'',0,0,0,0),(73,'Open cell spray insulation','An open cell polyurethane foam.',5,0,'',0,0,0,0),(74,'Shear thickening liquid','A liquid that thickens when struck.',5,0,'',0,0,0,0),(75,'Colloidal silica particles ~450 nm','avg particle size: ~450 nm\r\n',5,0,'',0,0,0,0),(77,'left pedal arm','A metal object that connects a pedal to a bicycle frame.',5,1,'http://www.freepatentsonline.com/6568296-0-large.jpg',0,0,0,0),(76,'Ethylene glycol','',5,0,'',0,0,0,0),(86,'bicycle rear wheel','The rear wheel has the gear cassette for the chain to transfer power from the cyclist to the wheel.',5,1,'http://www.thebicycle.org/images/Bicycle_Parts.JPG',0,0,0,0),(88,'bicycle gear system','The gear system consists of front and rear gears, a derailleur, a chain, and mechanisms to switch gears.',5,1,'http://www.thebicycle.org/images/Bicycle_Parts.JPG',0,0,0,0),(89,'bicycle brake system','A brake system has calipers which pinch the wheels when a force is applied on the handlebar levers.',5,1,'http://www.thebicycle.org/images/Bicycle_Parts.JPG',0,0,0,0),(90,'simple bicycle','A simple bicycle, very environmental, efficient, and healthy.',5,1,'http://www.thebicycle.org/images/Bicycle_Parts.JPG',0,0,0,0),(91,'backpack','A backpack is an efficient device for assisting humans when carrying loads on foot. ',5,1,'http://eu.thenorthface.com/media/catalog/product/cache/2/image/5e06319eda06f020e43594a9c230972d/A/R/ARMM_JK3_0.jpg',0,0,0,0),(92,'sleeping bag','A sleeping bag is used to insulate a person from the cold while they sleep.',5,1,'http://upload.wikimedia.org/wikipedia/commons/a/a9/Sleeping_bag_for_space.JPG',0,0,0,0),(93,'hammock tent','A hammock tent is an efficient and light-weight shelter for humans that can be insulated enough to allow for winter camping. ',5,1,'http://www.hammockforums.net/gallery/files/7/0/5/hammock_tent_mode_original.jpg',0,0,0,0),(94,'compass','A compass will indicate which direction a person is facing.',5,1,'compass.jpg',0,0,0,0),(95,'multi-tool','A multi-tool is a small metal device that contains other useful devices within it, such as pliers, can opener, knives, saws, files, etc.',5,1,'multitool.jpg',0,0,0,0),(96,'food','Food, it\'s what\'s for dinner!',5,1,'food.jpg',0,0,0,0),(97,'water','We gotta drink it to live, so keep it free of pollution!',5,1,'water.jpg',0,0,0,0),(98,'map','This is a map, it shows the position of landmarks. ',5,1,'map.jpg',0,0,0,0),(99,'hiking boots','Hiking boots help prevent ankle sprains and can make hiking much easier.',5,1,'boots.jpg',0,0,0,0),(100,'weatherproof jacket','A good weatherproof jacket is light weight, water-proof, wind-proof, and breathable. ',5,1,'weatherproof_jacket.jpg',0,0,0,0),(101,'weatherproof pants','Weatherproof pants are light-weight, water-proof, wind-proof, and breathable.',5,1,'weatherproof_pants.jpg',0,0,0,0),(102,'wool hat','A wool hat is useful to prevent heat loss from the head. ',5,1,'wool_hat.jpg',0,0,0,0),(103,'gloves','Gloves keep hands warm.',5,1,'gloves.jpg',0,0,0,0),(104,'wool socks','Wools socks are especially useful because wool will continue insulating even when wet, but cotton does not.',5,1,'wool_socks.jpg',0,0,0,0),(105,'sunglasses','Sunglasses prevent eye damage from the sun\'s ultraviolet light.1',5,1,'sunglasses.jpg',0,0,0,0),(106,'sunblock','Sunblock is used to prevent sun burns.',5,1,'sunblock.jpg',0,0,0,0),(107,'mosquito repellent','Very useful for those with easily punctured skin.',5,1,'mosquito_repellent.jpg',0,0,0,0),(108,'wool sweater','A wool sweater is a valuable ally against the cold.',5,1,'wool_sweater.jpg',0,0,0,0),(109,'fire piston','A fire piston uses rapidly compressed air to ignite a tinder bundle. ',5,1,'fire_piston.jpg',0,0,0,0),(110,'crank flashlight','A crank flashlight can be recharged by rotating a mechanism attached to a small generator. Modern crank flashlights can also recharge other devices.',5,1,'crank_light.jpg',0,0,0,0),(111,'set of dry clothes in waterproof bag','This would be handy for a hiker\'s backpack.',5,1,'dry_clothes.jpg',0,0,0,0),(112,'fully-stocked hiker\'s backpack','A glorious backpack filled with all the comforts and essentials!',5,1,'backpack.jpg',0,0,0,0),(114,'rain hat','A rain hat!',5,1,'hat.png',0,0,0,0),(115,'lamp','A lamp!',5,1,'lamp.png',0,0,0,0),(116,'Lamp stand','Lamp stand is necessary for lamps.',5,1,'lampstand.png',0,0,0,0),(117,'Lamp bulb','A bulb!',5,1,'bulb.png',0,0,0,0),(118,'pepper shaker','Good for distributing pepper.',5,11,'pepper.jpg',0,0,0,0),(119,'Masked Killer','A sympathetic killer who shoots his blackmailer and creates a fake alibi with the use of a vcr, watch, and sleeping pills.',5,242,'http://i1176.photobucket.com/albums/x321/icantgetbehindthat/maskedkiller.jpg',0,0,0,0),(120,'thermos','Thermos keeps your drink cold or warm.',5,1,'thermos.png',0,0,0,0);
/*!40000 ALTER TABLE `item_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_votes`
--

DROP TABLE IF EXISTS `link_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `up_or_down` int(11) NOT NULL,
  `when` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=253 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_votes`
--

LOCK TABLES `link_votes` WRITE;
/*!40000 ALTER TABLE `link_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `title` text NOT NULL,
  `full_text` text NOT NULL,
  `submitter_id` int(11) NOT NULL,
  `when` datetime NOT NULL,
  `upvotes` int(1) NOT NULL,
  `downvotes` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `default_style` int(11) NOT NULL,
  `initial_chat_lines` int(11) NOT NULL,
  `command_line_location` int(11) NOT NULL,
  `styles_doc_id` int(11) NOT NULL,
  `javascript_doc_id` int(11) NOT NULL,
  `templates_doc_id` int(11) NOT NULL,
  `bots_doc_id` int(11) NOT NULL,
  `front_page_id` int(11) NOT NULL,
  `aspect_sets_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'fantischismogenesis',429,3,1,23,478,425,122,507,334);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation_types`
--

DROP TABLE IF EXISTS `relation_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relation_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `description` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_types`
--

LOCK TABLES `relation_types` WRITE;
/*!40000 ALTER TABLE `relation_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `relation_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rss_feeds`
--

DROP TABLE IF EXISTS `rss_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rss_feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `category` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=337 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rss_feeds`
--

LOCK TABLES `rss_feeds` WRITE;
/*!40000 ALTER TABLE `rss_feeds` DISABLE KEYS */;
INSERT INTO `rss_feeds` VALUES (7,'http://joshosopher.tumblr.com/rss',0,1,'Josh Swift RSS'),(3,'http://rss.slashdot.org/Slashdot/slashdotScience',0,1,'Slashdot Science'),(4,'http://www.crypto.com/blog/rss10.xml',0,1,'crypto.com'),(5,'http://www.planet-php.org/rss',0,1,'planet-php'),(6,'http://akrabat.com/feed',0,1,'akrabat'),(8,'http://www.independent.co.uk/news/world/rss',0,1,'Independent.co.uk world news'),(9,'http://www.theglobeandmail.com/?service=rss',0,1,'Globe and Mail top stories'),(10,'http://www.telegraph.co.uk/news/worldnews/rss',0,1,'Telegraph world news'),(11,'http://english.aljazeera.net/Services/Rss/?PostingId=2007731105943979989',0,1,'ajazzera'),(12,'http://news.google.ca/news?pz=1&cf=all&ned=ca&hl=en&output=rss',0,1,'google news'),(13,'http://motherjones.com/rss/blogs_and_articles/feed',0,1,'mother jones'),(14,'http://blog.makezine.com/feed/rss',0,1,'makezine'),(30,'http://www.reddit.com/r/worldnews/.rss',0,1,'reddit worldnews'),(31,'http://www.reddit.com/r/cryptogon/.rss',0,1,'reddit cryptogon'),(32,'http://www.reddit.com/r/science/.rss',0,1,'reddit science'),(16,'http://feeds.feedburner.com/WikinewsLatestNews',0,1,'wikinews'),(19,'http://www.engadget.com/rss.xml',0,1,'engadget'),(20,'http://feeds.bbci.co.uk/news/world/africa/rss.xml',0,1,'bbc africa'),(21,'http://feeds.bbci.co.uk/news/world/asia_pacific/rss.xml',0,1,'bbc asia pacific'),(22,'http://feeds.bbci.co.uk/news/world/europe/rss.xml',0,1,'bbc europe'),(23,'http://feeds.bbci.co.uk/news/world/latin_america/rss.xml',0,1,'bbc  latin america'),(24,'http://feeds.bbci.co.uk/news/world/middle_east/rss.xml',0,1,'bbc  middle east'),(25,'http://feeds.bbci.co.uk/news/world/south_asia/rss.xml',0,1,'bbc  south asia'),(26,'http://feeds.bbci.co.uk/news/world/us_and_canada/rss.xml',0,1,'bbc  us-canada'),(27,'http://feeds.bbci.co.uk/news/england/rss.xml',0,1,'bbc  england'),(28,'http://feeds.bbci.co.uk/news/northern_ireland/rss.xml',0,1,'bbc northern ireland'),(29,'http://feeds.bbci.co.uk/news/system/latest_published_content/rss.xml',0,1,'bbc latest stories'),(33,'http://www.reddit.com/r/netsec/.rss',0,1,'reddit netsec'),(34,'http://www.reddit.com/r/programming/.rss',0,1,'reddit programming'),(35,'http://www.economist.com/rss/international_rss.xml',0,1,'economist international'),(36,'http://rss.cbc.ca/lineup/world.xml',0,1,'cbc world'),(268,'http://www.cell.com/rssFeed/Cell/rss.mostread.xml',0,1,'cell.com most read'),(38,'http://rss.cbc.ca/lineup/canada-newfoundland.xml',0,1,'cbc  nfld'),(39,'http://feeds.arstechnica.com/arstechnica/index/',0,1,'ars'),(40,'http://feeds.arstechnica.com/arstechnica/etc/',0,1,'ars etc'),(41,'http://feeds.wired.com/wired/index',0,1,'wired'),(42,'http://www.wired.com/dangerroom/feed/',0,1,'wired danger room'),(43,'http://www.alistapart.com/site/rss',0,1,'a list apart'),(44,'http://feeds.feedburner.com/Metafilter',0,1,'metafilter'),(45,'http://feeds.feedburner.com/crooksandliars/YaCP?format=xml',0,1,'crooksnliars'),(46,'http://www.allword-news.co.uk/feed/',0,1,'all word news'),(47,'http://blog.buzzflash.com/rss.xml',0,1,'buzzflash'),(48,'http://reddit.com/r/askreddit/.rss',0,1,'reddit askreddit'),(49,'http://reddit.com/r/videos/.rss',0,1,'reddit videos'),(50,'http://toolserver.org/~skagedal/feeds/qotd.xml',0,1,'wikipedia quote of the day'),(51,'http://toolserver.org/~skagedal/feeds/fa.xml',0,1,'wikipedia featured articles'),(52,'http://www.vanityfair.com/services/rss/feeds/everything.xml',0,1,'vanity fair'),(53,'http://www.npr.org/rss/rss.php?id=1001',0,1,'npr news headlines'),(54,'http://www.npr.org/rss/rss.php?id=1004',0,1,'npr world news'),(55,'http://www.npr.org/rss/rss.php?id=1019',0,1,'npr tech'),(56,'http://rssfeeds.usatoday.com/usatoday-NewsTopStories',0,1,'usa today top headlines'),(57,'http://www.aclu.org/blog/project/technology-and-liberty/feed',0,1,'aclu technology'),(58,'http://www.aclu.org/blog/feed/',0,1,'aclu blog'),(59,'http://feeds.feedburner.com/zerohedge/feed',0,1,'zero hedge'),(60,'http://reddit.com/r/iama/.rss',0,1,'reddit iama'),(61,'http://feeds2.feedburner.com/ucsusa/rss?format=xml',0,1,'union of concerned scientists'),(62,'http://www.rollingstone.com/siteServices/rss/allNews',0,1,'rolling stone'),(63,'http://market-ticker.org/akcs-www?rss=GeoPoliticsNews',0,1,'tickerforum geopolitic'),(64,'http://www.thetelegram.com/Rss/c/275/Local',0,1,'telegram local nfld'),(65,'http://market-ticker.org/akcs-www?rss=Rumors',0,1,'tickerforum rumors'),(66,'http://keyboardcowboy.ca/feed',0,1,'keyboard cowboy'),(67,'http://paroxysms.ca/feed/',0,1,'paroxyms.ca'),(68,'http://reddit.com/r/music/.rss',0,1,'reddit music'),(262,'http://rss.csmonitor.com/feeds/csm',0,1,'csmonitor rss'),(70,'http://www.globalresearch.ca/rss.php',0,1,'globalresearch'),(71,'http://feeds.feedburner.com/HighlystructuredcomRssSyndication',0,1,'highly structured'),(72,'http://reddit.com/r/economics/.rss',0,1,'reddit economics'),(73,'http://www.liveleak.com/xml/',0,1,'liveleak all media'),(74,'http://feeds.nytimes.com/nyt/rss/World',0,1,'nytimes'),(75,'http://feeds.feedburner.com/juancole/ymbn',0,1,'juan cole'),(76,'http://www.examiner.com/user/1328356/1748501/feed',0,31,'examiner julia davis'),(77,'http://feeds.feedburner.com/talking-points-memo',0,1,'talking points memo'),(78,'http://news.ycombinator.com/rss',0,1,'hacker news'),(79,'http://www.abc.net.au/news/indexes/justin/rss.xml',0,1,'australia broadcasting corp '),(80,'http://rss.sciam.com/ScientificAmerican-Global',0,1,'scientific american'),(81,'http://feeds.feedburner.com/treehuggersite',0,1,'treehugger'),(82,'http://xkcd.com/rss.xml',0,1,'xkcd'),(83,'http://feed.dilbert.com/dilbert/daily_strip',0,1,'dilbert'),(84,'http://www.pbfcomics.com/feed/feed.xml',0,1,'pbf'),(85,'http://www.phdcomics.com/gradfeed.php',0,1,'phd comics'),(86,'http://rss.news.yahoo.com/rss/topstories',0,1,'yahoo news top stories'),(87,'http://feeds.reuters.com/reuters/topNews',0,1,'reuters top news'),(88,'http://reddit.com/r/conspiracy/.rss',0,1,'reddit conspiracy'),(89,'http://www.physorg.com/rss-feed/',0,1,'physorg'),(90,'http://www.infrastructurist.com/feed/',0,1,'infrastructurist'),(91,'http://www.instructables.com/ex/y/process/rss.xml',0,1,'instructables projects'),(281,'http://www.bangkokpost.com/rss',0,1,'bangkok post'),(93,'http://rt.com/rss/',0,1,'russia today'),(94,'http://rss.cbc.ca/lineup/sports-hockey.xml',0,102,'cbc sports hockey'),(95,'http://www.eff.org/rss/updates.xml',0,1,'eff updates'),(96,'http://www.freedom-to-tinker.com/index.rdf',0,1,'eff freedom to tinker'),(97,'http://www.groklaw.net/backend/GrokLaw.rdf',0,1,'groklaw'),(98,'http://feeds.venturebeat.com/Venturebeat',0,1,'venture beat'),(99,'http://feeds.feedburner.com/theenergycollective_allposts',0,1,'the energy collective'),(100,'http://www.technews.org/feed/rss',0,1,'tech news dot org'),(101,'http://www.zdnet.com/blog/government/rss',0,1,'zdnet gov'),(102,'http://www.zdnet.com/blog/Hinchcliffe/rss',0,1,'zdnet enterprise web 2.0'),(103,'http://www.zdnet.com/blog/hardware/rss',0,1,'zdnet hardware'),(104,'http://www.zdnet.com/blog/open-source/rss',0,1,'zdnet linux and open source'),(105,'http://www.zdnet.com/blog/emergingtech/rss',0,1,'zdnet emerging tech'),(106,'http://www.zdnet.com/blog/perlow/rss',0,1,'zdnet tech broiler'),(107,'http://www.zdnet.com/search?t=7&mode=rss',0,1,'zdnet just news'),(108,'http://syndication.boston.com/news?mode=rss_10',0,1,'boston globe latest news'),(109,'http://syndication.boston.com/news/world?mode=rss_10',0,1,'boston globe world news'),(110,'http://syndication.boston.com/news/health/blog/index.rdf',0,1,'boston white coat news'),(111,'http://rss.canada.com/get/?F56',0,1,'canada dot com news'),(112,'http://feedproxy.google.com/TechCrunch',0,1,'techcrunch'),(113,'http://www.techradar.com/rss',0,1,'tech radar'),(114,'http://feeds.newscientist.com/science-news',0,1,'new scientist latest'),(115,'http://www.bit-tech.net/xml/news.rss',0,1,'bit-tech latest news'),(116,'http://feeds.technologyreview.com/technology_review_top_stories',0,1,'technology review'),(117,'http://www.askdavetaylor.com/index.xml',0,1,'ask dave taylor'),(118,'http://www.thetechherald.com/feeds/thetechherald_feed.xml',0,1,'tech herald'),(119,'http://www.spacewire.net/rss/spacewire.xml',0,1,'spacewire top stories'),(269,'http://isc.sans.edu/rssfeed.xml',0,1,'internet storm center handler\'s diary'),(121,'http://yukon-news.com/xml/rss/',0,1,'yukon news'),(122,'http://www.straightgoods.ca/RSS/SGRSS.xml',0,1,'straight goods'),(123,'http://feeds.feedburner.com/AfghanistanConflictMonitor',0,1,'hrsgroup afghanistan'),(124,'http://feeds.feedburner.com/HumanSecurityNews',0,1,'hrsgroup news'),(125,'http://www.thepacket.ca/Rss/c/1197/News',0,1,'thepacket dot ca - clarenville news'),(126,'http://www.democracynow.org/democracynow.rss',0,1,'democracy now daily '),(127,'http://www.democracynow.org/democracynow-blog.rss',0,1,'democracy now blog'),(128,'http://www.thepeoplesvoice.org/TPV3/Voices.php?tempskin=_rss2',0,1,'the people\'s voice'),(129,'http://feeds.guardian.co.uk/theguardian/world/rss',0,1,'guardian world'),(130,'http://reddit.com/r/wikipedia/.rss',0,1,'reddit wikipedia'),(131,'http://feeds.feedburner.com/CrackedRSS',0,1,'cracked '),(132,'http://exiledonline.com/feed/rss/',0,1,'exiled online (war nerd)'),(133,'http://www.irishtimes.com/feeds/rss/newspaper/ireland.rss',0,1,'irish times'),(134,'http://www.kurzweilai.net/feed',0,1,'kurzweil ai'),(135,'http://feeds.feedburner.com/securityweek',0,1,'securityweek'),(136,'http://www.networkworld.com/netflash.rss',0,1,'networkworld'),(137,'http://www.livescience.com/home/feed/site.xml',0,1,'livescience'),(138,'http://www.internetnews.com/icom_includes/feeds/inews/xml_front-7-days-20.xml',0,1,'internetnews'),(139,'http://www.itwire.com/component/jlord_rss/feed/1',0,1,'itwire'),(140,'http://www.digitaltrends.com/feed/',0,1,'digital trends'),(141,'http://feeds.feedburner.com/AtlanticScienceAndTechnology',0,1,'theatlantic tech'),(142,'http://feeds.feedburner.com/TheAtlanticWire?format=xml',0,1,'theatlantic '),(143,'http://feeds.feedburner.com/typepad/alleyinsider/silicon_alley_insider',0,1,'business insider'),(144,'http://www.rferl.org/rsspage.aspx',0,1,'rferl'),(145,'http://interglacial.com/rss/counterpunch.rss',0,1,'counterpunch'),(146,'http://wirewatcher.wordpress.com/feed/',0,1,'wirewatcher'),(147,'http://skepticalscience.com/feed.xml',0,1,'skeptical science'),(148,'http://abstrusegoose.com/feed',0,1,'abstruse goose'),(149,'http://straitstimes.com.feedsportal.com/c/32792/f/568235/index.rss',0,1,'straights times'),(150,'http://english.kyodonews.jp/rss/news.xml',0,1,'kyodo news'),(151,'http://feeds.hindustantimes.com/HT-HomePage-TopStories',0,1,'hindustan times'),(152,'http://feeds.feedburner.com/fastcompany/headlines',0,1,'fastcompany'),(153,'http://rss.canada.com/get/?F297',0,1,'montreal gazette'),(154,'http://f1ngerscr0ssed.wordpress.com/2011/03/17/0wning-arch/feed/',0,1,'fingerscrossed net security blog'),(155,'http://feeds.feedburner.com/euronews/en/news/',0,1,'euronews'),(156,'http://www.politico.com/rss/congress.xml',0,1,'politico'),(157,'http://news.sky.com/sky-news/rss/world-news/rss.xml',0,1,'sky news'),(158,'http://www.spiegel.de/international/index.rss',0,1,'spiegel'),(159,'http://mondediplo.com/backend',0,1,'le monde english'),(160,'http://stonestreetadvisors.com/feed/',0,1,'stone street advisors'),(161,'http://www.unmultimedia.org/search3/webcast/rss.jsp?query=*',0,1,'un multimedia'),(162,'http://www.redips.net/feed/',0,1,'redips on web tech'),(163,'http://feeds.theonion.com/onionnewsnetwork',0,1,'the onion'),(164,'http://theintelhub.com/feed/rss/',0,1,'intelhub'),(165,'http://ichnews.blogspot.com/feeds/posts/default',0,1,'information clearinghouse'),(166,'http://www.sovereignindependent.com/?feed=rss2',0,1,'the sovreign independent'),(167,'http://feeds.sciencedaily.com/sciencedaily',0,1,'science daily'),(168,'http://www.thelancet.com/rssfeed/lancet_current.xml',0,1,'lancet'),(169,'http://feeds.nature.com/nature/rss/current',0,1,'nature'),(170,'http://www.sciencemag.org/rss/news.xml',0,1,'science magazine news'),(171,'http://www.sciencemag.org/rss/twis.xml',0,1,'science magazine this week in science'),(172,'http://www.sciencemag.org/rss/ec.xml',0,1,'science magazine editor\'s choice'),(173,'http://www.scotsman.com/getFeed.aspx?Format=rss&sectionid=7000',0,1,'scotsman international'),(174,'http://www.world-nuclear-news.org/rss.aspx',0,1,'world nuclear news'),(175,'http://stallman.org/rss/rss.xml',0,1,'stallman.org'),(176,'http://www.alphagalileo.org/Rss_Channels/Feed.aspx?Topic=',0,1,'alphagalileo'),(177,'http://www.esa.int/rss/ESC.xml',0,1,'esa space science news'),(178,'http://www.eurekalert.org/rss.xml',0,1,'eurekalert'),(179,'http://io9.com/tag/top/index.xml',0,1,'io9 top stories'),(180,'http://feeds.feedburner.com/neuroscience-rss-feeds-neuroscience-news',0,1,'neuroscience news'),(181,'http://feeds.feedburner.com/codinghorror',0,1,'coding horror'),(182,'http://newsonjapan.com/rss/top.xml',0,1,'news on japan'),(183,'http://www.webmonkey.com/feed/',0,1,'webmonkey'),(184,'http://www.ipsnews.net/rss/headlines.xml',0,1,'ips news'),(292,'http://feeds.feedburner.com/UChicago',0,1,'uchicago'),(186,'http://feeds.propublica.org/propublica/main',0,1,'propublica'),(187,'http://feeds.feedburner.com/themejunkie',0,1,'freedom messenger'),(188,'http://www.ezilidanto.com/zili/feed/',0,1,'ezili danto haiti news'),(293,'http://feeds.feedburner.com/the-diplomat',0,1,'the-diplomat'),(190,'http://www.linuxfoundation.org/news-media/blogs/browse/rss.xml',0,1,'linux foundation'),(191,'http://feeds.feedburner.com/gregpalast-articles',0,1,'greg palast'),(220,'http://feeds2.feedburner.com/WastedTalentRss',0,1,'wasted talent comic'),(193,'http://org2.democracyinaction.org/o/5502/p/salsa/web/email/public/rss',0,1,'nuclear information and resource service'),(194,'http://www.kyivpost.com/rss/',0,1,'kyiv post'),(195,'http://www.spaceavalanche.com/?feed=rss2',0,1,'space avalanche'),(196,'http://www.naturalnews.com/rss.xml',0,1,'natural news'),(197,'http://www.mg.co.za/rss',0,1,'mg.co.za'),(198,'http://www.mg.co.za/rss/world',0,1,'mg.co.za international'),(199,'http://www.voanews.com/templates/Articles.rss?sectionPath=/english/news/middle-east',0,1,'voa news'),(200,'http://www.nowlebanon.com/rss.aspx?CatID=38533',0,1,'lebanon now'),(201,'http://www.thelocal.se/RSS/theLocal.xml',0,1,'thelocal'),(202,'http://feeds.feedburner.com/Cherrypeel-PopularSongs',0,1,'cherrypeel music'),(203,'http://feeds.feedburner.com/Cherrypeel-TopSongs',0,1,'cherrypeel top music'),(204,'http://ij.org/itn?format=feed&type=rss',0,1,'institute for justice'),(205,'http://feeds.feedburner.com/TheRawStory',0,1,'raw story'),(206,'http://feeds.feedburner.com/NewshourHeadlines',0,1,'pbs newshour'),(207,'http://feeds.feedburner.com/NewshourWorld',0,1,'pbs world news'),(208,'http://www.virtuousprogrammer.com/?feed=rss2',0,1,'virtuous programmer'),(209,'http://reddit.com/r/comics/.rss',0,1,'reddit comics'),(210,'http://feeds.feedburner.com/smbc-comics/PvLb',0,1,'smbc'),(211,'http://feeds.feedburner.com/Explosm',0,1,'cyanide and happiness'),(212,'http://farleftside.com/fls-rss.xml',0,1,'far left side'),(213,'http://www.amazingsuperpowers.com/category/comics/feed/',0,1,'amazing super powers'),(214,'http://www.mrlovenstein.com/rss.xml',0,1,'mr. lovenstein comic'),(215,'http://pretentiouswebcomic.thecomicseries.com/rss/',0,1,'pretentious web comic'),(216,'http://feeds.feedburner.com/ScenesFromAMultiverse',0,1,'scenes of a multiverse'),(217,'http://emm-art.com/?feed=rss2',0,1,'emm-art comic'),(218,'http://www.viruscomix.com/rss.xml',0,1,'subnormality - virus comix'),(291,'http://feeds.feedburner.com/UChicago',0,1,'uchicago'),(221,'http://www.torontosun.com/news/world/rss.xml',0,1,'toronto sun world news'),(222,'http://www.torontosun.com/news/rss.xml',0,1,'toronto sun all news'),(267,'http://craigmurray.org.uk/feed/',0,1,'craig murray'),(224,'http://feeds.encosia.com/Encosia?format=xml',0,1,'encosia programming blog'),(225,'http://softwarecreation.org/feed/',0,1,'software creation dot org'),(226,'http://geekswithblogs.net/FrostRed/Rss.aspx',0,1,'changehong\'s blog'),(227,'http://feeds.penny-arcade.com/pa-mainsite',0,1,'penny arcade'),(228,'http://www.threatexpert.com/latest_threat_reports.aspx',1,1,'threat experts'),(229,'http://www.tomshardware.com/feeds/rss2/tom-s-hardware-us,18-1.xml',0,1,'tom\'s hardware news'),(230,'http://www.tomshardware.com/feeds/rss2/tom-s-hardware-us,18-2.xml',0,1,'tom\'s hardware articles'),(231,'http://rss.nrdcfeeds.org/switchboard_dpettit',0,1,'david pettit\'s blog'),(232,'http://seclists.org/rss/fulldisclosure.rss',0,1,'full disclosure'),(233,'http://www.hackerregiment.com/feed',1,1,'hacker regiment'),(234,'http://www.groundreport.com/feed.php?categoryID=4',1,1,'groundreport world'),(235,'http://www.veteranstoday.com/feed/rss/',1,1,'veteran\'s today'),(236,'http://www.rollingstone.com/siteServices/rss/allNews',1,1,'rolling stone all news'),(237,'http://www.bloomberg.com/tvradio/podcast/cat_news.xml',1,1,'bloomberg podcasts'),(238,'http://threatpost.com/rss.xml',1,1,'threatpost'),(239,'http://feeds.feedburner.com/viva64-news-en?format=xml',0,1,'viva64 news'),(240,'http://feeds.feedburner.com/TheBigPicture',0,1,'the big picture ritholtz'),(241,'http://feeds.feedburner.com/SpiderlabsAnterior?format=xml',0,1,'spiderlabs'),(242,'http://feeds.feedburner.com/guernica/content',0,1,'guernica mag'),(243,'http://harpers.org/rss/frontpage-rss20.xml',0,1,'harper\'s magazine'),(244,'http://www.indypendent.org/?feed=rss2',0,1,'indypendent'),(245,'http://mondoweiss.net/feed',0,1,'mondoweiss'),(246,'http://www.thenation.com/rss/articles',0,1,'thenation'),(247,'http://www.newstatesman.com/feeds/contents.rss',0,1,'the new statesman'),(248,'http://feeds.feedburner.com/akimbocomics',0,1,'akimbo comics'),(249,'http://www.metaltoad.com/blog/feed/',0,1,'metaltoad'),(251,'https://nealpoole.com/blog/feed/',0,1,'nealpoole'),(252,'http://www.universetoday.com/universetoday.xml',0,1,'universe today'),(254,'http://www.nasa.gov/rss',0,1,'nasa'),(255,'http://feeds.marketwatch.com/marketwatch/topstories?format=xml',0,1,'marketwatch'),(256,'http://blog.deliciousrobots.com/feeds/latest/',0,1,'postfuturist'),(257,'http://feeds.simonwillison.net/swn-everything?format=xml',0,1,'simon willison'),(258,'http://blog.nodejs.org/feed/rss/',0,1,'nodejs blog'),(259,'http://www.globalpost.com/feed/dispatch/18767',0,1,'globalpost canada'),(260,'http://www.globalpost.com/feed/dispatch/18795',0,1,'globalpost ground truth'),(261,'http://iol.co.za/cmlink/news-world-category-rss-1.653',0,1,'iol co za'),(263,'http://vancouver.mediacoop.ca/group/1496/feed',0,1,'vancouver media coop'),(264,'http://marciovm.com/rss.xml',0,1,'marciovm'),(265,'http://feeds.feedburner.com/metasploit/blog?format=xml',0,130,'metasploit'),(266,'http://reddit.com/r/technology/.rss',0,1,'reddit technology'),(270,'http://isc.sans.edu/newssummary.xml',0,1,'isc consolidated feed'),(271,'http://download.cnet.com/8300-2007_4-12.xml?tag=rtcol;about',0,1,'cnet downloads blog'),(272,'http://www.cosmosmagazine.com/rss/news',0,1,'cosmos magazine news'),(273,'http://feeds.feedburner.com/oreilly/news?format=xml',0,1,'oreilly radar'),(274,'http://www.pirateparty.org.uk/feeds/latest/rss.xml',0,1,'pirateparty uk'),(275,'http://michigantoday.umich.edu/rss.php',0,1,'umich dot edu'),(276,'http://feeds.feedburner.com/infosecResources?format=xml',1,1,'infosec inst'),(277,'http://jap.aip.org/feed/jap/research_highlights',0,1,'journal of applied physics'),(278,'http://www.cjr.org/index.xml',0,1,'columbia journalism review'),(279,'http://www.radiolab.org/feeds/channels/radiolab/radiolab-blog',0,1,'radiolab'),(280,'http://codelikebozo.com/rss.xml',0,1,'code like bozo'),(282,'http://english.vietnamnet.vn/en/rss/index.html',0,1,'vietnam english'),(283,'http://www.nih.gov/news/feed.xml',0,1,'NIH press releases'),(284,'http://www.ncbi.nlm.nih.gov/feed/rss.cgi?ChanKey=pmcnews',0,1,'pubmed central news'),(286,'http://ebling.library.wisc.edu/blog/?feed=rss2',0,1,'ebling library'),(287,'http://www.who.int/feeds/entity/mediacentre/news/en/rss.xml',0,1,'WHO'),(288,'http://news.brown.edu/rss',0,1,'brown news'),(289,'http://press.umich.edu/rss/newHistory.xml',0,1,'umich history news'),(290,'http://www.sup.org/rss/history.xml',0,1,'stanford history news'),(294,'http://feeds.feedburner.com/the-diplomat',0,1,'the-diplomat'),(295,'http://www.ornl.gov/ornlhome/rss/ornl_news.xml',0,1,'oak ridge national lab'),(296,'http://feeds.feedburner.com/KrebsOnSecurity',0,1,'krebs on security'),(297,'https://grepular.com/rss',0,1,'grepular'),(298,'http://icanhasscience.com/feed/',0,1,'i can has science'),(299,'http://rss.dw-world.de/rdf/rss-en-all',0,1,'dw-world'),(300,'http://www.infowar-monitor.net/feed/',0,1,'infowar monitor'),(301,'http://www.thenews.pl/Rss/88cec208-19c8-4431-b2b9-5b1ecec7fc6e',0,1,'poland news'),(302,'http://www.newyorker.com/services/rss/feeds/everything.xml',0,1,'new yorker'),(303,'http://www.plosbiology.org/article/feed',0,1,'plos biology'),(304,'http://www.hsph.harvard.edu/news/press-releases/rss/press-releases.xml',0,1,'harvard health news'),(313,'http://www.news.cornell.edu/cunews.xml',0,1,'cornell'),(314,'http://www.semo.edu/news/index.xml',0,1,'semo edu'),(306,'http://www2c.cdc.gov/podcasts/createrss.asp?c=233',0,1,'cdc'),(307,'http://www.prwatch.org/rss.xml',0,1,'center for media and democracy'),(329,'http://www.storyful.com/stories/rss',0,1,'storyful'),(309,'http://www.cmaj.ca/rss/current.xml',0,1,'canadian medical journal'),(310,'http://cep.sagepub.com/rss/current.xml',0,1,'sage pub'),(311,'http://www.nouvelles.umontreal.ca/media-room/rss.html',0,1,'university of montreal'),(312,'http://lanmaster53.com/feed/rss/',0,1,'lanmaster53'),(315,'http://views.georgetown.edu/?ViewID=137',0,1,'georgetown edu'),(316,'http://www.jhu.edu/news/rss/headlines.xml',0,1,'johns hopkins'),(317,'http://www3.imperial.ac.uk/imperialnews/RSS_14150300.xml',0,1,'imperial edu'),(318,'http://today.duke.edu/topic/74/rss',0,1,'duke'),(319,'http://today.duke.edu/topic/41/rss',0,1,'duke news tips'),(320,'http://www.norwich.edu/news.xml',0,1,'norwich'),(321,'http://today.duke.edu/topic/27/rss',0,1,'duke public policy'),(322,'http://www.stmartin.edu/rss/MediaReleases.xml',0,1,'stmartin edu'),(323,'http://feeds.feedburner.com/newpaltzoracle?format=xml',0,1,'new paltz oracle'),(326,'http://www.rochester.edu/news/rss/events.xml',0,1,'rochester'),(325,'http://newscenter.berkeley.edu/category/news/feed/',0,1,'berkley all news'),(327,'http://www.usyd.edu.au/news/rss/newsSite1.rss',0,1,'usydney'),(328,'http://feeds.feedburner.com/vanderbilt-news?format=xml',0,1,'vanderbilt'),(330,'http://world.maidan.org.ua/feed',0,1,'maidan'),(331,'http://www.daemonology.net/blog/index.rss',0,1,'daemonology'),(332,'http://feeds.nap.edu/nap/new?format=xml',0,1,'national academic press'),(333,'http://noc.ac.uk/news/latest_news.xml',0,1,'national oceanography center'),(334,'http://feeds.feedburner.com/TexasTechTodayNewsReleases?format=xml',0,1,'texas tech'),(335,'http://www.forskningsradet.no/servlet/Satellite?feedtype=Nyhet&pagename=ForskningsradetEngelsk%2FFeed',0,1,'research council of norway'),(336,'http://feeds2.feedburner.com/OSU-All-News',0,1,'oregon state university');
/*!40000 ALTER TABLE `rss_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rss_subscriptions`
--

DROP TABLE IF EXISTS `rss_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rss_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rss_feed` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `feed_set` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1636 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rss_subscriptions`
--

LOCK TABLES `rss_subscriptions` WRITE;
/*!40000 ALTER TABLE `rss_subscriptions` DISABLE KEYS */;
INSERT INTO `rss_subscriptions` VALUES (935,3,1,4),(1404,277,1,19),(1403,272,1,19),(1402,274,1,19),(1401,276,1,19),(942,8,1,4),(943,9,1,4),(944,10,1,4),(945,11,1,4),(1344,96,1,19),(947,13,1,4),(1400,276,1,19),(1451,19,1,4),(952,16,1,4),(1343,95,1,19),(954,20,1,4),(1345,97,1,19),(1346,100,1,19),(1426,323,1,18),(958,24,1,4),(1348,103,1,19),(960,26,1,4),(1350,106,1,19),(1349,105,1,19),(963,29,1,4),(1325,170,1,18),(1324,169,1,18),(966,35,1,4),(967,36,1,4),(1452,21,1,4),(1419,306,1,4),(970,39,1,4),(971,40,1,4),(972,41,1,4),(973,42,1,4),(1399,275,1,19),(975,44,1,4),(976,45,1,4),(1175,246,1,4),(1342,89,1,19),(1323,61,1,18),(1322,268,1,18),(1341,67,1,19),(982,53,1,4),(983,54,1,4),(984,51,1,4),(985,50,1,4),(986,55,1,4),(1425,326,1,18),(988,57,1,4),(1412,288,1,19),(990,58,1,4),(991,59,1,4),(1321,290,1,18),(993,61,1,4),(1445,6,1,4),(1418,310,1,4),(997,66,1,4),(998,67,1,4),(1320,289,1,18),(1443,4,1,4),(1001,70,1,4),(1424,325,1,18),(1319,288,1,18),(1397,270,1,19),(1005,74,1,4),(1006,75,1,4),(1007,76,1,4),(1441,295,1,18),(1411,287,1,19),(1010,79,1,4),(1011,80,1,4),(1351,106,1,19),(1423,327,1,18),(1422,328,1,18),(1394,252,1,19),(1440,303,1,18),(1339,66,1,19),(1018,87,1,4),(1318,287,1,18),(1020,89,1,4),(1393,252,1,19),(1369,154,1,19),(1308,30,154,17),(1024,93,1,4),(1417,309,1,4),(1026,95,1,4),(1027,96,1,4),(1028,97,1,4),(1390,230,1,19),(1391,232,1,19),(1338,66,1,19),(1032,101,1,4),(1033,102,1,4),(1034,103,1,4),(1035,104,1,4),(1036,105,1,4),(1037,106,1,4),(1038,107,1,4),(1039,108,1,4),(1040,109,1,4),(1041,110,1,4),(1421,299,1,4),(1336,57,1,19),(1337,61,1,19),(1045,114,1,4),(1389,229,1,19),(1047,116,1,4),(1388,291,1,19),(1049,118,1,4),(1050,119,1,4),(1262,267,1,4),(1052,121,1,4),(1053,122,1,4),(1054,123,1,4),(1055,124,1,4),(1387,190,1,19),(1057,126,1,4),(1058,127,1,4),(1406,284,1,19),(1060,129,1,4),(1317,275,1,18),(1386,292,1,19),(1063,132,1,4),(1064,133,1,4),(1065,134,1,4),(1066,135,1,4),(1067,136,1,4),(1068,137,1,4),(1335,57,1,19),(1367,140,1,19),(1265,271,1,15),(1439,304,1,18),(1073,142,1,4),(1334,55,1,19),(1437,314,1,18),(1436,309,1,18),(1077,146,1,4),(1078,147,1,4),(1385,183,1,19),(1384,180,1,19),(1326,294,1,4),(1366,139,1,19),(1083,151,1,4),(1365,138,1,19),(1085,153,1,4),(1086,154,1,4),(1087,155,1,4),(1364,136,1,19),(1089,157,1,4),(1435,311,1,18),(1091,159,1,4),(1408,283,1,19),(1420,303,1,4),(1094,161,1,4),(1383,179,1,19),(1382,178,1,19),(1097,164,1,4),(1434,315,1,18),(1363,135,1,19),(1100,167,1,4),(1101,168,1,4),(1102,169,1,4),(1103,170,1,4),(1104,171,1,4),(1105,172,1,4),(1106,173,1,4),(1107,174,1,4),(1108,175,1,4),(1109,176,1,4),(1110,177,1,4),(1111,178,1,4),(1328,268,1,19),(1113,180,1,4),(1362,134,1,19),(1115,182,1,4),(1116,183,1,4),(1117,184,1,4),(1447,14,1,4),(1119,186,1,4),(1329,268,1,19),(1121,188,1,4),(1359,118,1,19),(1331,40,1,19),(1330,39,1,19),(1360,119,1,19),(1127,193,1,4),(1446,12,1,4),(1361,269,1,19),(1405,280,1,19),(1131,197,1,4),(1132,198,1,4),(1133,199,1,4),(1134,200,1,4),(1172,240,1,4),(1136,201,1,4),(1381,177,1,19),(1380,177,1,19),(1139,204,1,4),(1140,205,1,4),(1141,206,1,4),(1142,207,1,4),(1358,116,1,19),(1316,286,1,18),(1373,169,1,19),(1375,171,1,19),(1376,172,1,19),(1377,174,1,19),(1379,176,1,19),(1378,176,1,19),(1374,170,1,19),(1372,168,1,19),(1371,167,1,19),(1414,296,1,19),(1433,316,1,18),(1432,317,1,18),(1266,270,1,15),(1357,115,1,19),(1356,114,1,19),(1355,113,1,19),(1370,154,1,19),(1309,206,154,17),(1263,270,1,4),(1431,318,1,18),(1429,320,1,18),(1333,42,1,19),(1168,234,1,4),(1169,235,1,4),(1170,236,1,4),(1174,247,1,4),(1177,244,1,4),(1178,243,1,4),(1179,242,1,4),(1181,14,134,13),(1182,262,1,4),(1354,112,1,19),(1353,110,1,19),(1185,252,1,4),(1427,322,1,18),(1187,255,1,4),(1352,104,1,19),(1314,277,1,18),(1306,11,154,17),(1624,26,152,22),(1192,261,1,4),(1193,263,1,4),(1194,12,130,14),(1195,265,130,14),(1196,5,1,15),(1197,7,1,15),(1198,14,1,15),(1311,283,1,18),(1200,4,1,15),(1201,19,1,15),(1313,278,1,18),(1442,7,1,4),(1204,39,1,15),(1205,40,1,15),(1206,41,1,15),(1207,42,1,15),(1208,55,1,15),(1209,57,1,15),(1210,66,1,15),(1211,67,1,15),(1212,71,1,15),(1410,286,1,19),(1214,90,1,15),(1215,91,1,15),(1307,3,154,17),(1217,96,1,15),(1218,100,1,15),(1219,102,1,15),(1220,103,1,15),(1221,104,1,15),(1222,105,1,15),(1223,106,1,15),(1224,110,1,15),(1225,112,1,15),(1226,113,1,15),(1227,115,1,15),(1228,116,1,15),(1229,117,1,15),(1230,118,1,15),(1231,119,1,15),(1232,134,1,15),(1233,136,1,15),(1234,135,1,15),(1235,138,1,15),(1236,139,1,15),(1237,140,1,15),(1438,313,1,18),(1239,146,1,15),(1240,154,1,15),(1241,162,1,15),(1242,175,1,15),(1243,176,1,15),(1244,178,1,15),(1245,181,1,15),(1246,183,1,15),(1247,190,1,15),(1248,208,1,15),(1413,295,1,19),(1250,225,1,15),(1251,224,1,15),(1252,226,1,15),(1253,229,1,15),(1430,319,1,18),(1428,321,1,18),(1332,41,1,19),(1257,263,1,15),(1310,54,154,17),(1259,265,1,15),(1416,297,1,19),(1261,268,1,4),(1267,258,1,15),(1268,257,1,15),(1269,256,1,15),(1415,297,1,19),(1271,252,1,15),(1272,251,1,15),(1444,5,1,4),(1274,274,1,15),(1327,295,1,4),(1276,177,1,15),(1277,180,1,15),(1278,137,1,15),(1279,269,1,15),(1280,114,1,15),(1281,32,1,16),(1282,33,1,16),(1283,34,1,16),(1284,268,1,16),(1285,39,1,16),(1286,55,1,16),(1409,286,1,19),(1288,80,1,16),(1289,89,1,16),(1290,95,1,16),(1291,105,1,16),(1292,110,1,16),(1293,114,1,16),(1294,134,1,16),(1295,137,1,16),(1296,167,1,16),(1297,168,1,16),(1298,169,1,16),(1299,170,1,16),(1300,171,1,16),(1301,176,1,16),(1302,177,1,16),(1303,178,1,16),(1304,180,1,16),(1305,266,1,16),(1453,22,1,4),(1454,23,1,4),(1455,25,1,4),(1456,27,1,4),(1457,28,1,4),(1460,38,1,4),(1461,43,1,4),(1463,47,1,4),(1466,52,1,4),(1467,56,1,4),(1620,333,1,4),(1471,65,1,4),(1473,71,1,4),(1476,77,1,4),(1477,78,1,4),(1483,86,1,4),(1485,90,1,4),(1486,91,1,4),(1487,281,1,4),(1617,4,169,20),(1490,99,1,4),(1491,100,1,4),(1492,111,1,4),(1618,335,1,4),(1494,113,1,4),(1495,115,1,4),(1496,117,1,4),(1497,269,1,4),(1498,125,1,4),(1501,131,1,4),(1502,138,1,4),(1503,139,1,4),(1504,140,1,4),(1505,141,1,4),(1506,143,1,4),(1507,144,1,4),(1508,145,1,4),(1512,152,1,4),(1513,156,1,4),(1514,158,1,4),(1515,160,1,4),(1516,162,1,4),(1517,163,1,4),(1518,165,1,4),(1520,179,1,4),(1521,181,1,4),(1522,292,1,4),(1523,187,1,4),(1524,293,1,4),(1525,190,1,4),(1526,191,1,4),(1527,220,1,4),(1528,194,1,4),(1533,208,1,4),(1635,22,152,22),(1634,24,152,22),(1632,153,152,22),(1633,11,152,22),(1631,131,152,22),(1630,126,152,22),(1629,74,152,22),(1628,50,152,22),(1626,36,152,22),(1627,38,152,22),(1544,291,1,4),(1545,221,1,4),(1546,222,1,4),(1547,224,1,4),(1548,225,1,4),(1549,226,1,4),(1623,19,170,21),(1552,229,1,4),(1553,230,1,4),(1554,231,1,4),(1555,232,1,4),(1556,233,1,4),(1557,237,1,4),(1558,238,1,4),(1559,239,1,4),(1560,241,1,4),(1561,248,1,4),(1562,249,1,4),(1563,251,1,4),(1621,12,170,21),(1565,256,1,4),(1622,11,170,21),(1567,258,1,4),(1625,27,152,22),(1569,264,1,4),(1570,265,1,4),(1619,334,1,4),(1572,271,1,4),(1573,272,1,4),(1574,273,1,4),(1575,274,1,4),(1576,275,1,4),(1577,276,1,4),(1578,277,1,4),(1579,278,1,4),(1580,279,1,4),(1581,280,1,4),(1582,282,1,4),(1583,283,1,4),(1616,332,1,4),(1585,286,1,4),(1586,287,1,4),(1587,288,1,4),(1588,289,1,4),(1589,290,1,4),(1590,296,1,4),(1591,297,1,4),(1592,298,1,4),(1593,300,1,4),(1594,301,1,4),(1595,302,1,4),(1596,304,1,4),(1597,313,1,4),(1598,314,1,4),(1599,307,1,4),(1600,329,1,4),(1601,311,1,4),(1602,312,1,4),(1603,315,1,4),(1604,316,1,4),(1605,317,1,4),(1606,318,1,4),(1607,319,1,4),(1608,320,1,4),(1609,321,1,4),(1610,322,1,4),(1611,323,1,4),(1612,326,1,4),(1613,325,1,4),(1614,327,1,4),(1615,328,1,4);
/*!40000 ALTER TABLE `rss_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `entry_msg` text CHARACTER SET latin1 NOT NULL,
  `exit_msg` text CHARACTER SET latin1 NOT NULL,
  `current_feed_set` int(11) NOT NULL,
  `current_document` int(11) NOT NULL,
  `meta_url` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,1,'appears.','disappears.',4,582,'http://rss.slashdot.org/~r/Slashdot/slashdotScience/~3/nIuX4d6CTSk/german-paleontologists-find-a-near-perfect-dinosaur-fossil'),(13,44,'arrives.','leaves.',4,507,'http://improvise.it/');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `full_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access_level` int(11) NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `css_id` int(11) NOT NULL,
  `account_balance` int(1) NOT NULL,
  `last_active` datetime NOT NULL,
  `timezone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=latin1 COMMENT='Contains User Information for Utilis Script';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$1$7DOK235R$aWOnuIkx3fu7kT0Fbxf/L.','admin',0,'null@null.com',429,100,'2011-10-23 01:18:52','Canada/Newfoundland'),(44,'cortana','$1$fbO8RNsl$fezlE7yrXCpv0PZvXmEJA0','Cortana',0,'cort@cort.com',429,100,'2011-02-10 14:46:11','Canada/Newfoundland');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-23  1:18:52
