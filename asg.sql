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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_levels`
--

LOCK TABLES `access_levels` WRITE;
/*!40000 ALTER TABLE `access_levels` DISABLE KEYS */;
INSERT INTO `access_levels` VALUES (1,'Administrator',0,10),(2,'Contributor',1,406),(3,'Player',2,369),(4,'Guest',3,347),(5,'Visitor',4,91),(6,'Public',5,507);
/*!40000 ALTER TABLE `access_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_messages`
--

DROP TABLE IF EXISTS `admin_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `timestamp` datetime NOT NULL,
  `is_emote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_messages`
--

LOCK TABLES `admin_messages` WRITE;
/*!40000 ALTER TABLE `admin_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_messages` ENABLE KEYS */;
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
  `show_mod` tinyint(1) NOT NULL,
  `show_viewset` tinyint(1) NOT NULL,
  `show_addcom` int(11) NOT NULL,
  `show_submitlink` int(11) NOT NULL,
  `show_meta` int(11) NOT NULL,
  `show_rss` int(11) NOT NULL,
  `show_links` int(11) NOT NULL,
  `show_blip` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspect_preferences`
--

LOCK TABLES `aspect_preferences` WRITE;
/*!40000 ALTER TABLE `aspect_preferences` DISABLE KEYS */;
INSERT INTO `aspect_preferences` VALUES (1,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,44,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
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
  `show_mod` tinyint(1) NOT NULL,
  `show_viewset` tinyint(1) NOT NULL,
  `show_addcom` tinyint(11) NOT NULL,
  `show_submitlink` tinyint(11) NOT NULL,
  `show_meta` tinyint(11) NOT NULL,
  `show_rss` tinyint(11) NOT NULL,
  `show_links` tinyint(11) NOT NULL,
  `show_blip` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspect_sets`
--

LOCK TABLES `aspect_sets` WRITE;
/*!40000 ALTER TABLE `aspect_sets` DISABLE KEYS */;
INSERT INTO `aspect_sets` VALUES (1,'null',4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,'chat',4,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,'content',4,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,1,0,0,0,0,0,0,0),(6,'news',4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0),(8,'meta',4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0),(9,'help',4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspects`
--

LOCK TABLES `aspects` WRITE;
/*!40000 ALTER TABLE `aspects` DISABLE KEYS */;
INSERT INTO `aspects` VALUES (1,'chat','Public Chat','chat',56,'show_chat','show_chat',4,1,'The chat allows you to communicate with other users who are currently logged in.','aspect','2011-10-08 03:05:32'),(20,'who','Who','who',78,'show_who','show_who',4,1,'Shows currently active users.','aspect','2011-04-18 02:57:36'),(23,'newasp','New Aspect','newasp',82,'show_newasp','show_newasp',0,0,'Shows form to add a new site aspect.','aspect','2011-05-02 22:11:08'),(26,'nav','Navigation','nav',88,'show_nav','show_nav',4,0,'Displays navigation.','aspect','2011-05-02 21:57:04'),(27,'help','Help','help',91,'show_help','show_help',4,0,'Displays help.','aspect','2011-04-18 02:57:36'),(28,'adduser','Add user','adduser',96,'show_adduser','show_adduser',0,0,'This displays the form to make a user.','aspect','2011-04-18 02:57:36'),(30,'setstyle','Set Style','setstyle',90,'show_setstyle','show_setstyle',4,0,'Allows user to change the way the site looks.','aspect','2011-04-18 02:57:36'),(39,'setfocus','Set bot focus','setfocus',136,'show_setfocus','show_setfocus',0,0,'Shows menu to set which user a bot is focused on.','aspect','2011-04-18 02:57:36'),(38,'bots','Bots','bots',135,'show_bots','show_bots',0,1,'Shows which bots are active, what state they are in, and who they are focused on.','aspect','2011-04-18 02:57:36'),(40,'activate','Activate Bot','activate',156,'show_activate','show_activate',0,0,'Activates bots.','aspect','2011-04-18 02:57:36'),(41,'addbot','Add bot','addbot',160,'show_addbot','show_addbot',0,0,'Shows menu to add bot.','aspect','2011-04-18 02:57:36'),(43,'options','Options','options',239,'show_options','show_options',1,0,'Shows the options for the current sublevel.','aspect','2011-04-18 02:57:36'),(44,'irootdoc','Insert Root Document','irootdoc',243,'show_irootlvl','show_irootlvl',0,0,'Shows form to insert a root document.','aspect','2011-09-06 00:31:37'),(45,'setprofile','Set Profile','setprofile',241,'show_setprofile','show_setprofile',4,0,'Shows form to modify user profile.','aspect','2011-05-02 22:01:33'),(50,'idoc','Insert document','idoc',244,'show_idoc','show_idoc',1,0,'Shows form to insert a document.','aspect','2011-10-06 03:19:05'),(47,'edit','Edit content','edit',245,'show_edit','show_edit',1,0,'Shows form to edit page content.','aspect','2011-05-02 22:25:17'),(48,'delete','Delete sublevel','delete',242,'show_delete','show_delete',0,0,'Shows confirmation to delete sublevel and all child sublevels.','aspect','2011-04-18 02:57:36'),(51,'erase','Erase content?','erase',240,'show_erase','show_erase',0,0,'Shows confirmation dialogue to erase a page contents.','aspect','2011-05-02 22:25:32'),(46,'ls','List documents beneath current','ls',266,'show_ls','show_ls',4,0,'Shows sub-documents for current page.','aspect','2011-10-08 00:02:28'),(80,'ruser','Remove user','ruser',328,'show_ruser','show_ruser',0,0,'Shows form to delete a user.','aspect','2011-05-02 22:25:48'),(2,'pwd','Current document','pwd',267,'show_pwd','show_pwd',4,0,'Shows your current position in the document hierarchy.','aspect','2011-05-02 23:22:22'),(54,'content','Content','content',238,'show_content','show_content',4,0,'Shows site content.','aspect','2011-05-02 22:00:07'),(107,'blip','blip','blip',604,'show_blip','show_blip',4,0,'Shows a notification message.','aspect_default','0000-00-00 00:00:00'),(83,'mod','Mod','mod',89,'show_mod','show_mod',0,0,'Shows document modification commands.','aspect_default','0000-00-00 00:00:00'),(93,'addcom','Add command.','addcom',486,'show_addcom','show_addcom',0,0,'Shows form to add a command that evaluates php to javascript.','aspect_default','2011-08-19 14:00:01'),(86,'viewset','viewset','viewset',467,'show_viewset','show_viewset',4,0,'Lists an individual\'s custom style rules.','aspect_default','0000-00-00 00:00:00'),(103,'submitlink','submitlink','submitlink',581,'show_submitlink','show_submitlink',0,0,'This displays a form to submit a link to the site.','aspect_default','0000-00-00 00:00:00'),(104,'meta','Metabrowser','meta',585,'show_meta','show_meta',4,0,'Shows metabrowser, which lets you browse outside pages in an aspect.','aspect_default','2011-10-27 02:48:52'),(105,'rss','RSS','rss',587,'show_rss','show_rss',4,0,'Shows rss feeds.','aspect_default','2011-10-27 02:48:52'),(106,'links','Links','links',582,'show_links','show_links',4,0,'Shows links that have been saved locally.','aspect_default','2011-10-27 02:48:52');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
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
INSERT INTO `chat_messages` VALUES (1,1,'zz','2011-11-03 06:26:58',0);
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
  `access` int(11) NOT NULL,
  `output_element` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,'Main','chat_messages',4,'chat_full'),(2,'Admin','admin_messages',0,'chat_full');
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commands`
--

LOCK TABLES `commands` WRITE;
/*!40000 ALTER TABLE `commands` DISABLE KEYS */;
INSERT INTO `commands` VALUES (1,'me',513,'Sends an emote to the chat.',4),(2,'go',512,'Navigates to a specific document id.',4),(4,'zero',500,'Hides all aspects.',4),(14,'bye',602,'Logs you out.',4),(6,'bload',586,'Loads a url in the metabrowser.',4),(7,'set',514,'Sets an individual style rule.',0),(8,'unset',515,'Unsets css rule.',0),(9,'entry',588,'This specifies your entry message. Usage: /entry msg',4),(10,'exit',593,'Sets exit message. Usage /exit msg',4),(13,'freeze',543,'This creates a new aspect set by freezing the current set.',0);
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
) ENGINE=MyISAM AUTO_INCREMENT=605 DEFAULT CHARSET=latin1 COMMENT='Contains main information for Utilis Script';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (10,'Codex','  ',0,1,0,0,0,1),(96,'Add User','<?php\r\n\r\n    global $myModel;\r\n    $lvls = $myModel->getAccessLevels();\r\n    $styles_doc_id = $myModel->getStylesDocId();\r\n\r\n?>\r\n\r\n<form id=\"adduser_form\" method=\"POST\" action=\"user/insert_user.php\">\r\n\r\n<p><label for=\"newAccessLevel\">Access level:</label>\r\n<select id=\"newAccessLevel\" name=\"newAccessLevel\">\r\n\r\n<?php\r\n    foreach($lvls as $lvl => $name){\r\n        print \"<option value=\\\"$lvl\\\">$name</option>\";\r\n    }\r\n?>\r\n\r\n</select></p>\r\n<p><label for=\"newUsername\\\">Username:</label>\r\n<input id=\"newUsername\" name=\"newUsername\"></p>\r\n<p><label for=\"newPassword\">Password:</label>\r\n<input id=\"newPassword\" type=\"password\" name=\"newPassword\"></p>\r\n<p><label for=\"newFullname\">Full Name:</label>\r\n<input id=\"newFullname\" name=\"newFullname\"></p>\r\n\r\n<p>\r\n   <label for=\"newCss\">Style:</label>\r\n\r\n<?php\r\n   $styles_doc = new Document($styles_doc_id);\r\n   $styles_doc->outputSelectList(\"newCss\",0);\r\n?>\r\n\r\n</p>\r\n\r\n<p>\r\n <label for=\"newEmail\">Email Address:</label>\r\n <input id=\"newEmail\" name=\"newEmail\">\r\n</p>\r\n \r\n <p>\r\n   <label for=\"newTimezone\">Timezone:</label>\r\n   <input id=\"newTimezone\" type=\"text\" name=\"newTimezone\" value=\"Canada/Newfoundland\"></p>\r\n   <div id=\"adduser_buttons\">\r\n    <input type=\"submit\" value=\"Submit\" id=\"adduser_submit\">\r\n   </div>\r\n </form>\r\n\r\n\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#adduser_submit\").focus();\r\n  $(\"#adduser_form\").submit(function(event) {\r\n\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n\r\n    var newU = $(\"#newUsername\").attr(\"value\");\r\n    var newF = $(\"#newFullname\").attr(\"value\");\r\n    var newE = $(\"#newEmail\").attr(\"value\");\r\n    var newT = $(\"#newTimezone\").attr(\"value\");\r\n    var newC = $(\"#newCss\").attr(\"value\");\r\n    var newP = $(\"#newPassword\").attr(\"value\");\r\n    var newA = $(\"#newAccessLevel\").attr(\"value\");\r\n\r\n    $.post(\"user/insert_user.php\", { newAccessLevel: newA, newUsername: newU, newFullname: newF, newEmail: newE, newPassword: newP, newTimezone: newT, newCss: newC }, function() { adduser_success(); });\r\n  });\r\n\r\n  function adduser_success(){\r\n    asgConfig.removeAspectByCmd(\'adduser\');\r\n  }\r\n</script>',1,1,553,0,0,0),(486,'Add Command','<?php\n\n    global $myModel;\n    $lvls = $myModel->getAccessLevels();\n    $id = $_SESSION[\'current_document\'];\n\n?>\n<form id=\"addcom_form\" method=\"POST\" action=\"content/add_command.php\">\n\n<p><label for=\"keyword\">Keyword</label>\n<input id=\"addcom_keyword\" type=\"text\" name=\"keyword\"></p>\n\n<p><label for=\"help_desc\">Describe command here:</label>\n<input id=\"addcom_desc\" name=\"help_desc\" type=\"text\"></p>\n\n<p><label for=\"document_id\">Document Id:</label>\n<input id=\"addcom_document\" type=\"text\" name=\"document_id\" value=\"<?=$id?>\"></p>\n\n<p><label for=\"access_level\">Access level:</label>\n<select id=\"addcom_access\" name=\"access_level\">\n<?php\n    foreach($lvls as $lvl => $name){\n        ?><option value=\"<?=$key?>\"><?=$name?></option><?\n    }\n?>\n</select></p>\n\n<p><input id=\"addcom_submit\" type=\"submit\" value=\"Add Command\"></p>\n</form>\n\n\n<script>\n  // attach a submit handler to the form\n  $(\"#addcom_submit\").focus();\n  $(\"#addcom_form\").submit(function(event) {\n\n    // stop form from submitting normally\n    event.preventDefault(); \n\n    var keyword = $(\"#addcom_keyword\").attr(\"value\");\n    var desc = $(\"#addcom_desc\").attr(\"value\");\n    var doc = $(\"#addcom_document\").attr(\"value\");\n    var acc = $(\"#addcom_access\").attr(\"value\");\n\n    $.post(\"content/add_command.php\", { keyword: keyword, help_desc: desc, document_id: doc, access_level: acc }, function() { addcom_success(); });\n  });\n\n  function addcom_success(){\n    asgConfig.removeAspectByCmd(\'addcom\');\n  }\n</script>',0,1,553,0,0,1),(238,'Display Content','<?php\n$id = $_SESSION[\'current_document\'];\n$access = $_SESSION[\'session_accessLevel\'];\n\nif(isset($id)&&$id!=238&&$id!=0){\n  $doc = new Document($id);\n  $eval = $doc->getEvaluate();\n  $doc_access = $doc->getAccess();\n\n  if($doc_access>=$access){\n   if($eval){\n    $doc->outputAndEval();\n   }else{\n    $content = $doc->getContent();\n    print htmlspecialchars($content);\n   }\n  }\n}\n?>    ',1,1,557,0,0,0),(239,'Options','<?php\n\nglobal $myModel;\n$lvls = $myModel->getAccessLevels();\n$usrs = $myModel->getUserArray();\n$id = $_SESSION[\'current_document\'];\n\nif((isset($id))&&($id>0)){\n\n    $thisDoc = new Document($id);\n    $thisPageAuthorId = $thisDoc->get(\'author\');\n    $thisParent = $thisDoc->get(\'parent_id\');\n	$thisAccessLevel = $thisDoc->get(\'access\');\n	$thisPageLocked = $thisDoc->get(\'locked\');\n	$thisPageHidden = $thisDoc->get(\'hidden\');\n	$thisPageEval = $thisDoc->get(\'evaluate\');\n    $thisPageAuthor = $thisDoc->getAuthor();\n	$authorFullName = $thisPageAuthor->get(\'full_name\');\n?>\n\n    <form method=\"POST\" id=\"opt_form\" action=\"content/change_options.php\">\n    <input type=\"hidden\" id=\"options_pid\" name=\"pageID\" value=\"<?=$id?>\">\n    <p>Access: <select id=\"options_access\" name=\"newAccess\">\n\n<?php\n \n    foreach($lvls as $lvl => $name){\n        if($thisAccessLevel == $lvl){\n?>\n            <option value=\"<?=$lvl?>\" selected=\"selected\"><?=$name?></option>\n<?php\n        }else{\n?>\n            \"<option value=\"<?=$lvl?>\"><?=$name?></option>\n<?php\n        }\n    }\n?>\n    </select>\n    <p>Author: <select id=\"options_author\" name=\"newAuthor\">\n\n<?php \n    foreach($usrs as $uid => $name){\n        if($thisPageAuthorId == $uid){\n            print \"<option value=\\\"$uid\\\" selected=\\\"selected\\\">$name</option>\";\n        }else{\n            print \"<option value=\\\"$uid\\\">$name</option>\";\n        }\n    }\n\n    print \"</select>\";\n\n    print \"<p>Locked: <select id=\\\"options_locked\\\" name=\\\"newLocked\\\">\";\n    if($thisPageLocked == 0){\n        print \"<option value=\\\"0\\\" selected=\\\"selected\\\">No</option>\";\n        print \"<option value=\\\"1\\\">Yes</options>\";\n    }else{\n        print \"<option value=\\\"1\\\" selected=\\\"selected\\\">Yes</option>\";\n        print \"<option value=\\\"0\\\">No</option>\";    \n    }\n    print \"</select>\";\n\n    print \"<p>Hidden: <select id=\\\"options_hidden\\\" name=\\\"newHidden\\\">\";\n    if($thisPageHidden == 0){\n        print \"<option value=\\\"0\\\" selected=\\\"selected\\\">No</option>\";\n        print \"<option value=\\\"1\\\">Yes</options>\";\n    }else{\n        print \"<option value=\\\"1\\\" selected=\\\"selected\\\">Yes</option>\";\n        print \"<option value=\\\"0\\\">No</option>\";    \n    }\n    print \"</select>\";\n\n        print \"<p>Evaluate:\";\n\n               print \"<select id=\\\"options_eval\\\" name=\\\"newEval\\\">\";\n               print \"<option value=\\\"0\\\" \";\n               if($thisPageEval==0){ print \"selected=\\\"selected\\\"\"; }\n               print \">No</option>\";\n               print \"<option value=\\\"1\\\" \";\n               if($thisPageEval==1){ print \"selected=\\\"selected\\\"\"; }\n               print \">Yes</option></select></p>\";\n\n        print \"<p>Parent: <input id=\\\"options_parent\\\" name=\\\"newParent\\\" value=\\\"$thisParent\\\"></p>\";\n        print \"<input type=\\\"submit\\\" id=\\\"options_submit\\\" value=\\\"Set Options\\\">\";\n        print \"</form>\";\n}\n\n?>\n\n<script>\n\n  $(\"#opt_form\").submit(function(event) {\n    $(\'#options_submit\').hide();\n    event.preventDefault(); \n    var pid = $(\"#options_pid\").attr(\"value\");\n    var eval = $(\"#options_eval\").attr(\"value\");\n    var hidden = $(\"#options_hidden\").attr(\"value\");\n    var access = $(\"#options_access\").attr(\"value\");\n    var author = $(\"#options_author\").attr(\"value\");\n    var locked = $(\"#options_locked\").attr(\"value\");\n    var parent = $(\"#options_parent\").attr(\"value\");\n    $.post(\"content/change_options.php\", { pageID: pid, newAuthor: author, newHidden: hidden, newAccess: access, newEval: eval, newLocked: locked, newParent: parent }, function() { options_success(); });\n  });\n\n  function options_success(){\n   asgConfig.removeAspectByCmd(\'options\');\n  }\n</script>',0,1,557,1,0,0),(55,'Aspects','',1,1,10,0,0,1),(56,'Chat','<?php\n    global $myModel, $options;\n    $access = $_SESSION[\'session_accessLevel\'];\n    $chats = $myModel->getChats($access);\n    $initmsgs = $options[\'initial_chat_lines\'];\n    \n    foreach($chats as $chat){\n        $chat_id = $chat->get(\'id\');\n        $msgs = $chat->getLastX(3);\n        \n        foreach($msgs as $key => $val){\n            $all_msgs[$key] = $val;\n        }\n    }\n      \n        \n    if(is_array($all_msgs)){\n            ksort($all_msgs);\n            $all_msgs = array_slice($all_msgs, -$initmsgs);\n                         \n            foreach($all_msgs as $msg){\n                         \n                $user = new User($msg->getUserId());\n                $fname = $user->get(\'full_name\');\n                $stamp = $msg->get(\'timestamp\');\n\n                if($msg->isEmote()){\n                    $spacer = \" \";\n                }else{\n                    $spacer = \">&nbsp;\";\n                }\n                \n                print \"<div class=\\\"msg_env\\\" style=\\\"font-size: $fsize%;\\\"><div class=\\\"timestamp\\\">$stamp</div><div class=\\\"username\\\">\";\n                print $fname;\n                print \"$spacer</div><div class=\\\"msg\\\">\";\n                print $msg->getMsg();\n                print \"</div>\";\n                print \"</div>\";\n                \n            }\n    }\n\n?>\n\n<!--\n<div id=\"chat_hist\" style=\"height: 200px; overflow-y: scroll; display: none;\">\n\n<?php\n\nglobal $myModel;\nglobal $options;\n$history_preload = $options[\'history_preload\'];\n$initmsgs = $options[\'initial_chat_lines\'];\n\n$chat = $myModel->getMainChat();\n$msgs = $chat->getLastX($history_preload);\n$msgs = array_reverse($msgs);\n\nif(is_array($msgs)){\n    foreach($msgs as $msg){\n\n        $user = new User($msg->getUserId());\n        $fname = $user->getFullname();\n        $stamp = $msg->get(\'timestamp\');\n\n        if( $msg->isEmote() ){\n            $spacer = \" \";\n        }else{\n            $spacer = \" > \";\n        }\n        print \"<div class=\\\"msg_env\\\"><div class=\\\"timestamp\\\">$stamp</div><div class=\\\"username\\\">\";\n        print $fname;\n        print \"$spacer</div><div class=\\\"msg\\\">\";\n        print $msg->getMsg();\n        print \"</div>\";\n        print \"</div>\";\n\n    }\n}\n\n?>\n<script type=\"text/javascript\">\nfunction scroll_hist(){\ndocument.getElementById(\"chat_hist\").scrollTop = document.getElementById(\"chat_hist\").scrollHeight;\nhtml = $(\'#hist_load\').html();\n if(html===\'\'){\n  $(\'#hist_load\').html(\'click to hide history\');\n }else{\n  $(\'#hist_load\').html(\'\');\n }\n}\n</script>\n</div>\n<div id=\"hist_load\" onclick=\"$(\'#chat_hist\').toggle();scroll_hist()\" title=\"click to toggle chat history\"></div>\n<div id=\"chat_preload\">\n<?php\n$msgs = $chat->getLastX($initmsgs);\n\nif(is_array($msgs)){\n$msgs = array_reverse($msgs);\nforeach($msgs as $msg){\n\n        $user = new User($msg->getUserId());\n        $fname = $user->getFullname();\n        $stamp = $msg->get(\'timestamp\');\n        if($msg->isEmote()){\n            $spacer = \" \";\n        }else{\n            $spacer = \"> \";\n        }\n        print \"<div class=\\\"msg_env\\\"><div class=\\\"timestamp\\\">$stamp</div><div class=\\\"username\\\">\";\n        print $fname;\n        print \"$spacer</div><div class=\\\"msg\\\">\";\n        print $msg->getMsg();\n        print \"</div>\";\n        print \"</div>\";\n \n   }\n}\n\n?>\n\n</div>-->',1,1,552,0,0,1),(23,'Styles','',1,1,10,0,0,1),(78,'Who','<?php\n\nglobal $myModel;\n$active_users = $myModel->getActiveUsers();\n\nif(isset($active_users)){\n    foreach($active_users as $usr){\n        $name_link = $usr->getUserPreference(\'name_link\');\n        $name = $usr->get(\'full_name\');\n        print \"<span class=\\\"$name\\\"><a href=\\\"$name_link\\\">$name</a></span> | \";\n    }\n}\n?>',1,1,552,0,0,0),(82,'New Aspect','<?php\nglobal $myModel;\n$lvls = $myModel->getAccessLevels();\n$id = $_SESSION[\'current_document\'];\n?>\n\n<form id=\"newasp_form\" method=\"POST\" action=\"aspects/submit_new_aspect.php\">\n<p><label for=\"div\">Div:</label><input id=\"aspdiv\" name=\"div\"></p>\n\n<p><label for=\"title\">Title:</label><input id=\"asptitle\" name=\"title\"></p>\n\n<p><label for=\"command\">Command:</label><input id=\"command\" name=\"command\"></p>\n\n<p><label for=\"function\">Aspect Code Document ID:</label><input id=\"function\" name=\"function\" value=\"<?=$id?>\"></p>\n\n<p><label for=\"pref_column\">Preference Column:</label><input id=\"pref_column\" name=\"pref_column\"></p>\n\n<p><label for=\"session_var\">Session Variable:</label><input id=\"session_var\" name=\"session_var\"></p>\n\n<p><label for=\"desc\">Description:</label><input id=\"desc\" name=\"desc\"></p>\n\n<?php\n       print \"<p>Access: <select id=\\\"newAccess\\\" name=\\\"newAccess\\\">\";\n \n    foreach($lvls as $lvl => $name){\n        if($thisAccessLevel == $lvl){\n            print \"<option value=\\\"$lvl\\\" selected=\\\"selected\\\">$name</option>\";\n        }else{\n            print \"<option value=\\\"$lvl\\\">$name</option>\";\n        }\n    }\n\n    print \"</select>\";\n?>\n\n<p><label for=\"ajaxify\">Ajaxify:</label>\n<input id=\"ajaxify\" name=\"ajaxify\" value=\"0\"></p>\n<input id=\"newasp_submit\" type=\"submit\" value=\"Go\">\n</form>\n\n<!--\n<script type=\"text/javascript\">\n\n var the_name = window.prompt(\"What is your aspect\'s unique name?\",\"\");\n $(\'#aspdiv\').attr(\'value\', the_name);\n $(\'#asptitle\').attr(\'value\', the_name);\n $(\'#command\').attr(\'value\', the_name);\n $(\'#session_var\').attr(\'value\',\'show_\'+the_name);\n $(\'#pref_column\').attr(\'value\',\'show_\'+the_name);\n\n  // attach a submit handler to the form\n  $(\"#newasp_submit\").focus();\n  $(\"#newasp_form\").submit(function(event) {\n\n    // stop form from submitting normally\n    event.preventDefault(); \n    var aspdiv = $(\"#aspdiv\").attr(\"value\");\n    var asptitle = $(\"#asptitle\").attr(\"value\");\n    var command = $(\"#command\").attr(\"value\");\n    var xfunction = $(\"#function\").attr(\"value\");\n    var pref_column = $(\"#pref_column\").attr(\"value\");\n    var session_var = $(\"#session_var\").attr(\"value\");\n    var desc = $(\"#desc\").attr(\"value\");\n    var access = $(\"#newAccess\").attr(\"value\");\n    var ajaxify = $(\"#ajaxify\").attr(\"value\");\n\n    $.post(\"aspects/submit_new_aspect.php\", { div: div, title: title, command: command, function: xfunction, pref_column: pref_column, session_var: session_var, desc: desc, newAccess: access, ajaxify: ajaxify }, function() { newasp_success(); });\n  });\n\n  function newasp_success(){\n    asgConfig.removeAspectByCmd(\'newasp\');\n  }\n</script>--> ',1,1,553,0,0,0),(88,'Nav','<?php\n$access = $_SESSION[\'session_accessLevel\'];\n\nglobal $myModel;\n$root_lvls = $myModel->fetchRootDocuments($access);\n\nprint \"<ul>\";\n\nforeach($root_lvls as $doc){\n\n $title = $doc->getTitle();\n $did = $doc->getId();\n \n  print \"<li><a onclick=\\\"asgConfig.simcom(\'/go $did\');\\\">$title</a></li>\";\n \n}\nprint \"</ul>\";\n?>',1,1,557,0,0,0),(89,'Mod','<?php\n   $current_doc = $_SESSION[\'current_document\'];\n   $current_user = $_SESSION[\'session_userid\'];\n   $doc = new Document($current_doc);\n   $locked = $doc->get(\'locked\');\n   $author = $doc->get(\'author\');\n?>\n\n<ul>\n\n<li><a onclick=\"asgConfig.simcom(\'/options\')\">Options</a></li>\n<li><a onclick=\"asgConfig.simcom(\'/idoc\')\">Insert</a></li>\n<?php\n    if(!$locked){\n?>\n<li><a onclick=\"asgConfig.simcom(\'/edit\')\">Edit</a></li>\n<?php\n    }\n    if($author == $current_user){\n?>\n<li><a onclick=\"asgConfig.simcom(\'/delete\')\">Delete</a></li>\n<li><a onclick=\"asgConfig.simcom(\'/erase\')\">Erase</a></li>\n<?php\n    }\n?>\n</ul>',1,1,557,0,0,1),(90,'Set Style','<form method=\"POST\" id=\"setstyle_form\" action=\"styles/set_style.php\">\r\n<?php		\r\nglobal $myModel;\r\n$style_doc_id = $myModel->getStylesDocId();\r\n$style_doc = new Document($style_doc_id);\r\n$access = $_SESSION[\'session_accessLevel\'];\r\n$style_doc->outputSelectList(\"style_select\",$access);\r\n?>\r\n<input type=\"submit\" value=\"Set style\">\r\n</form>\r\n\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#setstyle_form\").submit(function(event) {\r\n\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n    var pid = $(\"#style_select\").attr(\"value\");\r\n    $.post(\"styles/set_style.php\", { style: pid }, function() { setstyle_success(); });\r\n  });\r\n\r\n  function setstyle_success(){\r\n   asgConfig.removeAspectByCmd(\'setstyle\');\r\n  }\r\n</script>',1,1,552,0,0,0),(91,'Help','<p>The following commands, when typed into the command line input, will perform various actions within the site, such as modify the user interface.</p>\r\n<?php\r\n\r\n$userAccess = $_SESSION[\'session_accessLevel\'];\r\nglobal $myModel;\r\n$aspects = $myModel->getAspects($userAccess);\r\n\r\nprint \"<dl>\";\r\nforeach($aspects as $aspect){\r\n $cmd = $aspect->getCommand();\r\n $desc = $aspect->get(\'desc\');\r\n $access = $aspect->getAccess();\r\n $access_name = $myModel->getAccessName($access); \r\n print \"<dt>/<a onclick=\\\"simcom(\'/$cmd\');\\\">$cmd</a>\";\r\n if($userAccess != 4){\r\n   print \"(Access: $access_name)\";\r\n }\r\n print \"</dt><dd>$desc</dd>\";\r\n}\r\n\r\n\r\nprint \"</dl>\";\r\n\r\n$commands = $myModel->getCommands($userAccess);\r\n\r\nprint \"<dl>\";\r\nforeach($commands as $command){\r\n $key = $command->getKeyword();\r\n $doc = $command->getDocumentId();\r\n $help_desc = $command->get(\'help_desc\');\r\n $access = $command->get(\'access\');\r\n $access_name = $myModel->getAccessName($access); \r\n\r\n print \"<dt>/$key \";\r\n if($userAccess != 4){\r\n  print \"(Access: $access_name)\";\r\n }\r\n print \"</dt><dd>$help_desc</dd>\";\r\n}\r\n\r\n\r\nprint \"</dl>\";\r\n\r\n\r\n\r\n\r\n?>\r\n\r\n    ',1,1,552,0,0,1),(410,'ain\'t that right Cortana?','You said it baby!',0,1,130,0,0,0),(122,'Bots','',1,1,10,0,0,1),(129,'cortana','',1,1,122,0,0,1),(130,'default','',1,1,129,0,0,1),(132,'hello','Greetings banana visitor four!',1,1,130,0,0,2),(133,'sup','<?php\r\n $uname = $_SESSION[\'session_fullName\'];\r\n print \"Hello $uname, where is Sarah Connor?\";\r\n?>',1,1,130,0,0,2),(135,'Bots','<?php\nglobal $myModel;\n$bots = $myModel->getBots();\n\nforeach($bots as $bot){\n  $aid = $bot->get(\'id\');\n  $bot_userid = $bot->get(\'bot_userid\');\n  $bot_user = $bot->getUser();\n  $botname = $bot_user->get(\'full_name\');\n  $ai_state = $bot->get(\'state\');\n  $ai_active = $bot->get(\'active\');\n  $state_doc = $bot->getStateDoc();\n  $stateName = $state_doc->get(\'title\');\n  $ai_focus = $bot->get(\'focus_user\');\n  $focus_user = $bot->getFocusUser();\n  \n if($ai_focus == 0){//bot is focused on everyone\n   $focusName = \"Everyone\";\n  }else{\n   $focusName = $focus_user->get(\'full_name\');\n  }\n  \n  if($ai_active == 1){\n   print \"<p>$botname is active in state $stateName focused on $focusName.</p>\";\n  }else{\n   print \"<p>$botname is inactive in state $stateName focused on $focusName.</p>\";\n  }\n\n\n}\n?>',1,1,558,0,0,0),(136,'Focus Bot','<form id=\"bot_focus_form\" method=\"POST\" action=\"bots/set_focus.php\">Focus&nbsp;<select id=\"bot_focus_id\" name=\"aid\">\r\n<?		\r\nglobal $myModel;\r\n$bots = $myModel->getBots();\r\n$active_users = $myModel->getActiveUsers();\r\n\r\nforeach($bots as $bot){\r\n    $aid = $bot->get(\'id\');\r\n    $bot_user = $bot->getUser();\r\n    $botname = $bot_user->get(\'full_name\');\r\n    print \"<option value=\\\"$aid\\\">$botname</option>\";\r\n}\r\n\r\n?>		\r\n</select>\r\n&nbsp;on&nbsp;\r\n<select id=\"bot_focus_userid\" name=\"focus_id\">\r\n<?		\r\nforeach($active_users as $user){\r\n    $user_id = $user->get(\'id\');\r\n    $user_name = $user->get(\'full_name\');\r\n    print \"<option value=\\\"$user_id\\\">$user_name</option>\";\r\n}\r\n\r\n?>\r\n</select>\r\n<input type=\"submit\" value=\"Focus\">\r\n</form>\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#bot_focus_form\").submit(function(event) {\r\n\r\n    event.preventDefault(); \r\n    var bid = $(\"#bot_focus_id\").attr(\"value\");\r\n    var uid = $(\"#bot_focus_userid\").attr(\"value\");\r\n\r\n    $.post(\"bots/set_focus.php\", { aid: bid, focus_id: uid }, function() { bot_focus_success(); });\r\n  });\r\n\r\n  function bot_focus_success(){\r\n   asgConfig.removeAspectByCmd(\'setfocus\');\r\n  }\r\n</script>',1,1,558,0,0,0),(138,'add one','<? \n\n $_SESSION[\'incrementor\']++;\n\n print \"Okay: Incrementor is at \".$_SESSION[\'incrementor\']; \n\n\n?>',1,1,130,0,0,2),(143,'initialize incrementor','<?php\r\n\r\n$_SESSION[\'incrementor\'] = 0;\r\n\r\nprint \"Incrementor initialized.\";\r\n\r\n?>',1,1,130,0,0,2),(144,'reset incrementor','Done!\r\n\r\n<?\r\n$id = $_GET[\'id\'];\r\n$idZero = $id[0];\r\n\r\nif($idZero != 144){\r\n $_SESSION[\'incrementor\'] = 0;\r\n}\r\n\r\n?>',1,1,130,0,0,2),(145,'show incrementor','<?\r\n\r\n print $_SESSION[\'incrementor\'];\r\n\r\n?>',1,1,130,0,0,2),(146,'what time is it?','<?php\r\n$mytimezone = $_SESSION[\'session_timezone\'];\r\ndate_default_timezone_set($mytimezone);\r\n$today = date(\'l jS \\of F Y h:i:s A\');\r\nprint $today;\r\n\r\n?>    ',1,1,130,0,0,2),(148,'what is my timezone?','<?php\r\n\r\nprint \"Your timezone is \".$_SESSION[\'session_timezone\'].\".\";\r\n\r\n?>',1,1,130,0,0,2),(149,'who are you?','I am Cortana!',1,1,130,0,0,2),(150,'what are you?','I am ambiversive\'s compu-hyper-mega-robo-maid!',1,1,130,0,0,2),(555,'appears.','<?php $name = $_SESSION[\'session_fullName\']; ?>\n\nWelcome back, <?=$name?>. What\'s up?',0,1,130,0,0,0),(557,'Content Management','',0,1,55,0,0,0),(558,'Bots','',0,1,55,0,0,0),(156,'Activate Bot','<?php\n\n    global $myModel;\n    $num_active = $myModel->countActiveBots();\n    $num_inactive = $myModel->countInactiveBots();\n\n    if($num_inactive > 0){\n        $inactive_bots = $myModel->getInactiveBots();\n?>\n\n<form id=\"activate_bot_form\" method=\"POST\" action=\"bots/activate_bot.php\">\n<select id=\"activate_bot_id\" name=\"bot_id\">\n\n<?php\n    foreach($inactive_bots as $bot){\n        $bot_id = $bot->get(\'id\');\n        $bot_user = $bot->getUser();\n        $botname = $bot_user->get(\'full_name\');\n        ?><option value=\"<?=$bot_id?>\"><?=$botname?></option><?\n    }\n\n?>\n</select>\n<input type=\"submit\" value=\"Activate\">\n</form>\n<?\n}else{\n print \"All bots active.\";\n}\n?>\n<script>\n  // attach a submit handler to the form\n  $(\"#activate_bot_form\").submit(function(event) {\n\n    // stop form from submitting normally\n    event.preventDefault(); \n    var bid = $(\"#activate_bot_id\").attr(\"value\");\n\n    $.post(\"bots/activate_bot.php\", { bot_id: bid }, function() { bot_activate_success(); });\n  });\n\n  function bot_activate_success(){\n     asgConfig.removeAspectByCmd(\'activate\');\n\n  }\n</script>\n    ',1,1,558,0,0,1),(160,'Add Bot','<form id=\"addbot_form\" method=\"POST\" action=\"bots/add_bot.php\">\r\n<label for=\"bot_name\">Name:</label>\r\n<input id=\"bot_name\" type=\"text\" name=\"bot_name\">\r\n<input type=\"submit\" value=\"add bot\">\r\n</form>\r\n\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#addbot_form\").submit(function(event) {\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n    var bot_name = $(\"#bot_name\").attr(\"value\");\r\n    $.post(\"bots/add_bot.php\", { bot_name: bot_name }, function(data) { addbot_success(data); });\r\n  });\r\n\r\n  function addbot_success(data){\r\n   asgConfig.removeAspectByCmd(\'addbot\');\r\n  }\r\n</script>',1,1,558,0,0,1),(509,'Set bot state','<?php\r\n global $myModel;\r\n $bots = $myModel->getBots();\r\n\r\n print \"<dl>\";\r\n foreach($bots as $bot){\r\n  $bid = $bot->getId();\r\n  $bot_user_id = $bot->getUserId();\r\n  $bot_user = new User($bot_user_id);\r\n  $bot_username = $bot_user->getUsername();\r\n  $cid = $bot->getContentId();\r\n  $c_doc = new Document($cid);\r\n  $c_children = $c_doc->getChildren(0);\r\n\r\n  print \"<dt>$bot_username</dt><dd><ul>\";\r\n\r\n  foreach($c_children as $chi){\r\n   $chi_id = $chi->getId();\r\n   print \"<li onclick=\\\"asgConfig.updateArb(\'Bots state will be:\',\'$chi_id\',\'bots\',\'state\',\'$bid\');\\\">\".$chi->getTitle().\"</li>\";\r\n  }\r\n  print \"</ul></dd>\";\r\n\r\n }\r\n print \"</dl>\";\r\n?>',0,1,558,0,0,1),(508,'Orphans','<?php\r\n/*\r\n $access = $_SESSION[\'session_accessLevel\'];\r\n global $myModel;\r\n $docs = $myModel->getDocuments();\r\n foreach($docs as $doc){\r\n  $title = $doc->getTitle();\r\n  $id = $doc->getId();\r\n  $parent = $doc->getParentId();\r\n\r\n  if($parent != 0){\r\n   $q = \"SELECT Count(*) FROM documents WHERE id=?\";\r\n   $sth = $dbh->prepare($q);\r\n   $sth->execute(array($parent));\r\n   $row = $sth->fetch();\r\n   if($row[\'Count(*)\']==0){\r\n    print \"<p>DELETE FROM documents WHERE id=\'$id\';</p>\";\r\n   }\r\n  }\r\n }\r\n*/\r\n?>',0,1,10,0,0,1),(240,'Erase Confirm','<?php\r\n$pageID = $_GET[\'id\'];\r\n?>\r\n\r\n<form id=\"erase_form\" method=\"POST\" action=\"content/erase_content.php\">\r\n<p>Are you sure you want to erase the content on this page?</p>\r\n    <input type=\"radio\" name=\"choice\" value=\"yes\" checked>&nbsp; Yes &nbsp;\r\n    <input type=\"radio\" name=\"choice\" value=\"no\">&nbsp; No<br><br>\r\n    <input id=\"pid\" type=\"hidden\" name=\"rPageID\" value=\"<?=$pageID?>\">\r\n    <input type=\"submit\" value=\"Submit\">\r\n</form>\r\n\r\n\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#erase_form\").submit(function(event) {\r\n\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n    var pid = $(\"#pid\").attr(\"value\");\r\n\r\n    $.post(\"content/erase.content.php\", { pageID: pid }, function() { erase_success(); });\r\n  });\r\n\r\n  function erase_success(){\r\n   asgConfig.removeAspectByCmd(\'erase\');\r\n  }\r\n</script>',1,1,557,0,0,0),(241,'Set Profile','<?php\n    global $myModel;\n    $access = $_SESSION[\'session_accessLevel\'];\n    $uid = $_SESSION[\'session_userid\'];\n    $current_user = new User($uid);\n    $myEmail = $current_user->get(\'email\');\n    $myCss = $current_user->get(\'css_id\');\n    $styles_doc = new Document($myModel->getStylesDocId());\n    $myFullname = $current_user->get(\'full_name\');\n    $myTimezone = $current_user->get(\'timezone\');\n    $myUsername = $current_user->get(\'username\');\n    \n    //user preferences\n    $entry = $current_user->getUserPreference(\'entry_msg\');\n    $exit = $current_user->getUserPreference(\'exit_msg\');\n    $name_link = $current_user->getUserPreference(\'name_link\');\n    $meta_url = $current_user->getUserPreference(\'meta_url\');\n\n?>\n\n<form id=\"setprofile_form\" method=\"POST\" action=\"user/set_profile.php\">\n    <label for=\"newUsername\">Username (used to login)</label>\n    <input id=\"newUsername\" type=\"text\" name=\"newUsername\" value=\"<?=$myUsername?>\">\n    <label for=\"name\">Full Name (used for display purposes)</label>\n    <input id=\"newFullname\" type=\"text\" name=\"newFullname\" value=\"<?=$myFullname?>\">\n    <label for=\"newPassword\">Enter New Password [if you want to change it]:</label>\n    <input id=\"newPassword\" name=\"newPassword\">\n    <label for=\"newEmail\">Email address:</label>\n    <input id=\"newEmail\" type=\"text\" name=\"newEmail\" value=\"<?=$myEmail?>\">\n    <label for=\"newCss\">Stylesheet</label>  \n\n<?php\n        $styles_doc->outputSelectList(\"newCss\",$access);\n?>\n\n    <label for=\"newTimezone\">Timezone</label>\n    <input id=\"newTimezone\" type=\"text\" name=\"newTimezone\" value=\"<?=$myTimezone?>\">\n    <label for=\"newEntry\">Entry message</label>  \n    <input id=\"newEntry\" type=\"text\" name=\"newEntry\" value=\"<?=$entry?>\">\n    <label for=\"newExit\">Exit message</label>  \n    <input id=\"newExit\" type=\"text\" name=\"newExit\" value=\"<?=$exit?>\">\n    <label for=\"newNameLink\">Name link</label>  \n    <input id=\"newNameLink\" type=\"text\" name=\"newNameLink\" value=\"<?=$name_link?>\">\n    <label for=\"newMetaUrl\">Meta URL</label>  \n    <input id=\"newMetaUrl\" type=\"text\" name=\"newMetaUrl\" value=\"<?=$meta_url?>\"><br>\n    <input id=\"setprofile_submit\" type=\"submit\" value=\"Submit\">\n    </form>\n\n<script type=\"text/javascript\">\n  \n  $(\"#setprofile_submit\").focus();\n  $(\"#setprofile_form\").submit(function(event) {\n    \n    $(\"#setprofile_submit\").hide();\n    \n    event.preventDefault(); \n\n    var newU = $(\"#newUsername\").attr(\"value\");\n    var newF = $(\"#newFullname\").attr(\"value\");\n    var newE = $(\"#newEmail\").attr(\"value\");\n    var newT = $(\"#newTimezone\").attr(\"value\");\n    var newC = $(\"#newCss\").attr(\"value\");\n    var newP = $(\"#newPassword\").attr(\"value\");\n    var newEntry = $(\"#newEntry\").attr(\"value\");\n    var newExit = $(\"#newExit\").attr(\"value\");\n    var newNameLink = $(\"#newNameLink\").attr(\"value\");\n    var newMetaUrl = $(\"#newMetaUrl\").attr(\"value\");\n\n    $.post(\"user/set_profile.php\", { newUsername: newU, newFullname: newF, newEmail: newE, newPassword: newP, newTimezone: newT, newCss: newC, newEntry: newEntry, newExit: newExit, newNameLink: newNameLink, newMetaUrl: newMetaUrl }, function() { setprofile_success(); });\n  });\n\n  function setprofile_success(){\n    asgConfig.removeAspectByCmd(\'setprofile\');\n  }\n</script>',1,1,552,0,0,1),(334,'Aspect Sets','<?php\n$access = $_SESSION[\'session_accessLevel\'];\nglobal $myModel;\n$aspsets = $myModel->getAspectSets($access);\nprint \"<ul>\";\nforeach($aspsets as $aspset){\n  $id = $aspset->get(\'id\');\n  $name = $aspset->get(\'name\');\n  print \"<li><a onclick=\\\"asgConfig.loadAspectSet($id)\\\">$name</a></li>\";\n}\nprint \"</ul>\";\n?>',3,1,10,0,0,1),(242,'Delete Document','<?php\n$pageID = $_SESSION[\'current_document\'];\n$doc = new Document($pageID);\n$parent_id = $doc->get(\'parent_id\');\n\nif($pageID!=0){\n	print \"<form id=\\\"delete_form\\\" method=\\\"POST\\\" action=\\\"content/delete_document.php\\\">\";\n	print \"<p>Are you sure you want to erase this document and all below it?</p>\";\n    print \"<select id=\\\"choice\\\" name=\\\"choice\\\">\";\n    print \"<option value=\\\"yes\\\">Yes</option>\";\n    print \"<option value=\\\"no\\\">No</option>\";\n    print \"</select>\";\n	print \"<input id=\\\"rpid\\\" type=\\\"hidden\\\" name=\\\"rPageID\\\" value=\\\"$pageID\\\">\";\n	print \"<input id=\\\"delete_submit\\\" class=\\\"form\\\" type=\\\"submit\\\" value=\\\"Submit\\\">\";\n	print \"</form>\";\n}\n?>\n\n<script>\n  $(\"#delete_submit\").focus();\n    \n  $(\"#delete_form\").submit(function(event) {\n        $(\"#delete_submit\").hide();//to prevent double clicks\n        event.preventDefault(); \n        var choice_value = $(\"#choice\").attr(\"value\");\n        var rpid = $(\"#rpid\").attr(\"value\");\n\n        $.post(\"content/delete_document.php\", { rPageID: rpid, choice: choice_value }, \n            function() { delete_success(); });\n   \n  });\n\n  function delete_success(){\n        asgConfig.zeroAspects();\n        asgConfig.simcom(\'/go <?=$parent_id?>\');\n  }\n</script>',1,1,557,0,0,0),(243,'Insert Root Document','<?php\r\n\r\n?>\r\n<div id=\"form_content\">\r\n<form method=\"POST\" action=\"content/insert_document.php\">\r\n<input type=\"hidden\" value=\"0\" name=\"ipageID\">\r\n<input type=\"hidden\" value=\"0\" name=\"hiddenOrNot\">\r\n<input type=\"hidden\" value=\"0\" name=\"eval\">\r\n    <label for=\"title\">\r\n        Enter Title Here:\r\n    </label>\r\n        <input name=\"title\" size=\"50\"><br>\r\n        <input type=\"submit\" value=\"Submit\">\r\n        </form>\r\n</div>\r\n',1,1,557,0,0,0),(244,'Insert Document','<?php\n$pageID = $_SESSION[\'current_document\'];\nglobal $options;\n$templates_doc_id = $options[\'templates_doc_id\'];\n?>\n<form id=\"idoc_form\" method=\"POST\" action=\"content/insert_document.php\">\n<input id=\"ipid\" type=\"hidden\" value=\"<?=$pageID?>\" name=\"ipageID\">\n<label for=\"subTitle\">Title:</label>\n<input id=\"page_title\" type=\"text\" name=\"subTitle\"><br>	<label for=\"hiddenOrNot\">Visible?</label><br>\n<input type=\"radio\" name=\"hiddenOrNot\" value=\"0\" checked>&nbsp; Yes &nbsp;\n<input type=\"radio\" name=\"hiddenOrNot\" value=\"1\">&nbsp; No <br><br>\n<label for=\"eval\">Automatically evaluate?</label>\n<input type=\"radio\" name=\"eval\" value=\"0\" checked>&nbsp; No &nbsp;\n<input type=\"radio\" name=\"eval\" value=\"1\">&nbsp; Yes <br><br>\n\n<?php\n   $q = \"SELECT id,title FROM documents WHERE parent_id=?\";\n   $sth = $dbh->prepare($q);\n   $sth->execute(array($templates_doc_id));\n   print \"<p>Template:</p>\";\n   print \"<select id=\\\"isub_template\\\" name=\\\"template\\\">\";\n   print \"<option value=\\\"0\\\">none</option>\";\n   while($row = $sth->fetch()){\n    $tid = $row[\'id\'];\n    $t = $row[\'title\'];\n    print \"<option value=\\\"$tid\\\">$t</option>\";\n   }\n?>\n</select>\n<input type=\"submit\" id=\"insert_submit\" value=\"Submit\">\n<input type=\"button\" value=\"Cancel\">\n</form>\n<script>\n  \n  $(\"#idoc_form\").submit(function(event) {\n        $(\'#insert_submit\').hide();\n        event.preventDefault(); \n        var hidden_value = $(\"input[@name=hiddenOrNot]:checked\").val();\n        var eval_value = $(\"input[@name=eval]:checked\").val();\n        var ipid = $(\"#ipid\").attr(\"value\");\n        var tit = $(\"#page_title\").attr(\"value\");\n        var tem = $(\"#isub_template\").val();\n\n        $.post(\"content/insert_document.php\", { template: tem, subTitle: tit, eval: eval_value, hiddenOrNot: hidden_value, ipageID: ipid }, function(data) { idoc_success(data); });\n\n    \n  });\n\n  function idoc_success(data){\n    asgConfig.removeAspectByCmd(\'idoc\');\n    asgConfig.renderAspectByCmd(\'edit\');\n    asgConfig.simcom(\'/go \'+data);\n  }\n</script>',1,1,557,0,0,0),(425,'Templates','',0,1,10,0,0,0),(426,'definition list','<dl>\n<dt></dt>\n<dd></dd>\n</dl>',0,1,425,0,0,0),(245,'Edit Document','<?php\n    $doc_id = $_SESSION[\'current_document\'];\n    $current_doc = new Document($doc_id);\n    $title = $current_doc->getTitle();\n    $content = $current_doc->getContent();\n\n?>\n    <form id=\"edit_form\" method=\"POST\" action=\"content/edit_document.php\">\n    <input id=\"pid\" type=\"hidden\" name=\"iPageID\" value=\"<?=$doc_id?>\">\n    <label for=\"newSubTitle\">Title:</label>\n    <input id=\"edit_tit\" name=\"newSubTitle\" value=\"<?=$title?>\">\n    <label for=\"iContent\">Content:</label>\n    <div id=\"editor\">\n<?php\n        print htmlspecialchars($content);\n?>\n    </div>\n    <input id=\"edit_submit\" type=\"submit\" value=\"Submit\">\n    </form>\n\n\n<script>\n    $(document).ready(function(){\n        var editor = ace.edit(\"editor\");\n        editor.setTheme(\"ace/theme/twilight\");\n        var HtmlMode = require(\"ace/mode/html\").Mode;\n        editor.getSession().setMode(new HtmlMode());\n        editor.getSession().setUseWrapMode(true);\n        editor.setShowPrintMargin(false);\n    });\n    \n    $(\"#edit_form\").submit(function(event) {\n        prevent_double = true;\n        event.preventDefault(); \n        var pid = $(\"#pid\").attr(\"value\");\n        var tit = $(\"#edit_tit\").attr(\"value\");\n        var con = document.getElementById(\"editor\").env.document.getValue(); \n        $.post(\"content/edit_document.php\", { \n            iPageID: pid, \n            newSubTitle: tit, \n            iContent: con }, \n            function() { \n                edit_success(); \n            });\n  \n  });\n\n  function edit_success(){\n        asgConfig.removeAspectByCmd(\'edit\');\n        asgConfig.renderAspectByCmd(\'content\');\n  }\n\n</script>',1,1,557,0,0,0),(246,'List Hidden Documents','<?php\nglobal $dbh;\n\n	$hiddenQuery = \"SELECT * FROM documents WHERE hidden=\'1\'\";\n	$sth = $dbh->query($hiddenQuery);\n\n	print \"<h2>Hidden Documents</h2>\";\n	\n	print \"This list is here to prevent us from losing track of a document after it is hidden.\";\n\n        print \"<p>ID: Title</p>\";			\n		\n         print \"<ul>\";\n	\n        while($row = $sth->fetch()){\n\n		$title = $row[\"title\"];\n		$ID = $row[\"id\"];\n			\n		print \"<li>$ID: &nbsp;<a onclick=\\\"simcom(\'/go $ID\')\\\">\";\n		print \"$title</a></li>\";\n\n                print \"</ul>\";\n\n	}\n?>    ',1,1,557,0,0,1),(493,'Chats','<?php\n    global $myModel, $access;\n    $chats = $myModel->getChats($access);\n    print \"<table>\";\n    print \"<tr><th>ID</th><th>Name</th><th>Table</th><th>Number of Messages</th><th>Access</th></tr>\";\n    foreach($chats as $chat){\n        $num_msgs = $chat->getMessageCount();\n        $chat_id = $chat->getId();\n        $chat_name = $chat->getName();\n        $chat_table = $chat->getTable();\n        $chat_access = $chat->get(\'access\');\n        $chat_access_name = $myModel->getAccessName($chat_access);\n        print \"<tr><td>$chat_id</td><td onclick=\\\"asgConfig.updateArb(\'Enter new chat name:\',\'$chat_name\',\'chats\',\'name\',\'1\')\\\">$chat_name</td></td><td onclick=\\\"asgConfig.updateArb(\'Enter new chat table:\',\'$chat_table\',\'chats\',\'table\',\'$chat_id\')\\\">$chat_table</td><td>$num_msgs</td><td>$chat_access_name</td></tr>\";\n    }\n    print \"</table>\";\n?>',0,1,490,0,0,1),(513,'Me','  \n      emote = msg.substr(4,msg.length);\n      $.post(\"chat/submit_emote.php\", { msg: emote });\n',0,1,484,0,0,0),(266,'List Documents','<?php\nglobal $myModel;\n$id = $_SESSION[\'current_document\'];\n$access = $_SESSION[\'session_accessLevel\'];\n\nif(isset($id) && $id!=0 && $myModel->documentExists($id)){\n    $doc = new Document($id);\n    $doc_title = $doc->getTitle();\n    $num_children = $doc->numChildren();\n\n    if($num_children > 0){\n         //print \"<p>Showing $num_children child docs.</p>\";\n \n    }else{\n         //print \"<p>No child documents found.</p>\";\n         print \"<script type=\\\"text/javascript\\\">$(\'#ls\').hide();</script>\";\n    }\n\n    print \"<ul>\";\n    if($num_children > 0){\n        $children = $doc->getChildren($access);\n        if(is_array($children)){\n            foreach($children as $child){\n                $title = $child->getTitle();\n                $child_id = $child->getId();\n                print \"<li>\";\n                print \"<a onclick=\\\"asgConfig.simcom(\'/go $child_id\')\\\">\";\n                print $title;\n                print \"</a>\";\n                print \"</li>\";\n            }\n        }else{\n            //print \"wtf\";\n        }\n    }\n    print \"</ul>\";\n}\n\n?>',1,1,557,0,0,0),(267,'Show Location In Document Tree (pwd)','<?php\nglobal $myModel;\n\n$doc_id = $_SESSION[\'current_document\'];\n\nif($doc_id == 0){\n print \"Root\";\n}else if($myModel->documentExists($doc_id)){\n\n $doc = new Document($doc_id);\n $title = $doc->getTitle();\n $parent_id = $doc->getParentId();\n if($parent_id == 0){\n  $parent_title = \"Root\";\n }else{\n  $parent_doc = new Document($parent_id);\n $parent_title = $parent_doc->getTitle();\n }\n print \"<a onclick=\\\"asgConfig.simcom(\'/go $parent_id\');\\\">$parent_title</a>&nbsp;/&nbsp;$title\";\n}\n?>',1,1,557,0,0,0),(328,'Remove User','<?php\r\n   global $myModel;\r\n   $users = $myModel->getUsers();\r\n        \r\n        print \"<form id=\\\"ruser_form\\\" method=\\\"POST\\\" action=\\\"user/remove_user.php\\\">\";\r\n        print \"<p>Please select user to remove:</p>\";\r\n        print \"<select id=\\\"delete_id\\\" name=\\\"delete_id\\\">\";\r\n        foreach($users as $user){\r\n		$username = $user->getFullname();\r\n		$id = $user->getId();\r\n		\r\n		print \"<option value=\\\"$id\\\">\";\r\n		print \"$username</option>\";\r\n\r\n		\r\n	}\r\n        print \"</select>\";\r\n	\r\n	print \"<input type=\\\"submit\\\" value=\\\"Submit\\\">\";\r\n	print \"<input type=\\\"button\\\" value=\\\"Cancel\\\">\";		\r\n	print \"</form>\";\r\n?>\r\n<script>\r\n  // attach a submit handler to the form\r\n  $(\"#ruser_form\").submit(function(event) {\r\n\r\n    // stop form from submitting normally\r\n    event.preventDefault(); \r\n    var pid = $(\"#delete_id\").attr(\"value\");\r\n    $.post(\"user/remove_user.php\", { delete_id: pid }, function() { ruser_success(); });\r\n  });\r\n\r\n  function ruser_success(){\r\n   asgConfig.removeAspectByCmd(\'ruser\');\r\n  }\r\n</script>',0,1,553,0,0,0),(553,'Admin','',0,1,55,0,0,0),(489,'Users','<?php\n\n    global $myModel;\n \n    $users = $myModel->getUsers();\n\n    print \"<table id=\\\"usrs_info\\\">\"; \n    print \"<tr><th>Username</th><th>Full Name</th><th>Email</th><th>Balance</th><th>Style</th><th>Access Level</th><th>Last Activity</th><th>Timezone</th></tr>\";\n    foreach($users as $user){\n        $uid = $user->getId();\n        $username = $user->getUsername();\n        $fullname = $user->getFullname();\n        $email = $user->getEmail();\n        $balance = $user->getBalance();\n        $css_id = $user->getCssId();\n        $css_doc = new Document($css_id);\n        $style_title = $css_doc->getTitle();\n        $access = $user->getAccess();\n        $access_name = $myModel->getAccessName($access);\n        $last_active = $user->getLastActive();\n        $timezone = $user->getTimezone();\n        print \"<tr><td>$username</td><td>$fullname</td><td>$email</td><td onclick=\\\"asgConfig.updateArb(\'Enter new balance:\',\'$balance\',\'users\',\'account_balance\',\'$uid\');\\\">$balance</td><td>$style_title</td><td onclick=\\\"asgConfig.updateArb(\'Enter new access:\',\'$access\',\'users\',\'access_level\',\'$uid\');\\\">$access_name</td><td>$last_active</td><td>$timezone</td></tr>\";\n\n    }\n    print \"</table>\";\n\n?>',0,1,490,0,0,1),(484,'Commands','',0,1,10,0,0,0),(588,'entry','entry_msg = msg.substr(7,msg.length);\n$.post(\'user/set_entry_msg.php\', { entry: entry_msg });',0,1,484,0,0,0),(490,'Panel','',0,1,0,0,0,0),(491,'Aspects','<?php\n\n    global $myModel;\n    $aspects = $myModel->getAspects(0);\n?>\n\n<table id=\"asp_info\">\n<tr>\n    <th>ID</th>\n    <th>Title</th>\n    <th>Command</th>\n    <th>Div</th>\n    <th>Session Variable</th>\n    <th>Preference Column</th>\n    <th>Function Document</th>\n    <th>Access Level</th>\n    <th>CSS class</th>\n</tr>\n<?php\n    foreach($aspects as $asp){\n        $aspect_id = $asp->getId();\n        $aspect_title = $asp->getTitle();\n        $aspect_command = $asp->getCommand();\n        $aspect_div = $asp->getDiv();\n        $aspect_sv = $asp->getSessionVar();\n        $aspect_pc = $asp->getPrefColumn();\n        $aspect_fun = $asp->getFunctionId();\n        $aspect_access = $asp->getAccess();\n        $aspect_access_name = $myModel->getAccessName($aspect_access);\n        $aspect_desc = $asp->getDescription();\n        $aspect_css = $asp->getCssClass();\n        $aspect_ajax = $asp->getAjaxify();\n\n        print \"<tr><td>$aspect_id</td><td>$aspect_title</td><td>/$aspect_command</td><td>$aspect_div</td><td>$aspect_sv</td><td>$aspect_pc</td><td>$aspect_fun [<a onclick=\\\"asgConfig.simcom(\'/go $aspect_fun\')\\\">goto</a>]</td><td>$aspect_access_name</td><td>$aspect_css</td></tr>\";\n    }\n    print \"</table>\";\n\n\n?>                ',0,1,490,0,0,1),(494,'Bots','<?php\r\n    global $myModel; \r\n    $bots = $myModel->getBots();\r\n\r\n    print \"<table>\"; \r\n    print \"<tr><th>ID</th><th>User</th><th>Focus</th><th>State</th><th>Homedir</th><th>Active</th><th>Override</th></tr>\";\r\n    foreach($bots as $bot){\r\n        $bot_id = $bot->getId();\r\n        $bot_userid = $bot->getUserId();\r\n        $bot_user = new User($bot_userid);\r\n        $bot_username = $bot_user->getUsername();\r\n        $bot_active = $bot->getActive();\r\n        $bot_focus = $bot->getFocusUserId();\r\n        $focus_user = new User($bot_focus);\r\n        $focus_username = $focus_user->getUsername();\r\n        $override_id = $bot->get(\'override\');\r\n\r\n        $bot_state = $bot->getState();\r\n        $state_doc = new Document($bot_state);\r\n        $state_name = $state_doc->getTitle();\r\n        $bot_content = $bot->getContentId();\r\n        $content_doc = new Document($bot_content);\r\n        $content_title = $content_doc->getTitle();\r\n\r\n        print \"<tr><td>$bot_id</td><td>$bot_username</td><td>$focus_username</td><td>$state_name</td><td>$content_title ($bot_content) [<a onclick=\\\"asgConfig.simcom(\'/go $bot_content\')\\\">goto</a>]</td><td>$bot_active</td><td><span onclick=\\\"asgConfig.updateArb(\'Enter new override id:\',\'$override_id\',\'bots\',\'override\',\'1\')\\\">$override_id</span> [<a onclick=\\\"asgConfig.simcom(\'/go $override_id\')\\\">goto</a>]</td></tr>\";\r\n\r\n    }\r\n    print \"</table>\";\r\n\r\n?>        ',0,1,490,0,0,1),(495,'Aspect Sets','<?php \r\n\r\n    global $myModel;\r\n    $sets = $myModel->getAspectSets(0);\r\n    foreach($sets as $set){\r\n     $atleastone = false;\r\n     $set_name = $set->getName();\r\n     $prefs = $set->getPreferences();\r\n     print \"<table>\";\r\n     print \"<tr><th onclick=\\\"asg\r\nConfig.updateArb(\'Set name:\',\'$set_name\',\'aspect_sets\',\'name\',\'$set_id\');\\\">Set: $set_name</th></tr>\";\r\n\r\n     foreach($prefs as $key => $value){\r\n      if(is_int($key)){\r\n\r\n      }else{\r\n        if($value == 1){\r\n           $q = \"SELECT title FROM aspects WHERE pref_column = \'$key\'\";\r\n           $sth = $dbh->prepare($q);\r\n           $sth->execute(array());\r\n           $row = $sth->fetch();\r\n           $title = $row[\'title\'];\r\n           print \"<tr><td>$title</td></tr>\";\r\n           $atleastone = true;\r\n        }\r\n        \r\n      }\r\n     }\r\n     if(!$atleastone){ print \"<tr><td>None</td></tr>\"; }\r\n    }\r\n     print \"</table>\";\r\n?>',0,1,490,0,0,1),(496,'Commands','<?php\r\n\r\n    global $myModel;\r\n    $access = $_SESSION[\'session_accessLevel\'];\r\n\r\n    $cmds = $myModel->getCommands($access);\r\n\r\n    print \"<table id=\\\"cmds_info\\\">\"; \r\n    print \"<tr><th>Keyword</th><th>Document ID</th><th>Help Description</th><th>Access Level</th></tr>\";\r\n    foreach($cmds as $cmd){\r\n        $cid = $cmd->getId();\r\n        $keyword = $cmd->getKeyword();\r\n        $help_desc = $cmd->getHelpDesc();\r\n        $doc_id = $cmd->getDocumentId();\r\n        $access = $cmd->getAccess();\r\n        $access_name = $myModel->getAccessName($access);\r\n        print \"<tr><td>$keyword</td><td>$doc_id [<a onclick=\\\"navclick(\'$doc_id\')\\\">goto</a>]</td><td>$help_desc</td><td>$access_name</td></tr>\";\r\n\r\n    }\r\n    print \"</table>\";\r\n\r\n?>        ',0,1,490,0,0,1),(497,'Documents','<?php\n\n    global $myModel;\n    $access = $_SESSION[\'session_accessLevel\'];\n\n    $docs = $myModel->getDocuments();\n\nprint \"<table id=\\\"cmds_info\\\">\"; \n    print \"<tr><th>Document ID</th><th>Parent</th><th>Title</th><th>Author</th><th>Locked</th><th>Hidden</th><th>Evaluate</th><th>Access Level</th><th>Direct Link</th></tr>\";\n    foreach($docs as $doc){\n    \n        $did = $doc->get(\'id\');\n        $title = $doc->get(\'title\');\n        $parent = $doc->getParent();\n        if($parent != 0){\n            $parent_title = $parent->get(\'title\');\n        }else{\n            $parent_title = \"Root\"; \n        }\n\n        $author = $doc->getAuthor();\n        $author_name = $author->get(\'full_name\');\n \n        $access = $doc->get(\'access\');\n        $hidden = $doc->get(\'hidden\');\n        $locked = $doc->get(\'locked\');\n        $evaluate = $doc->get(\'evaluate\');\n\n        $access_name = $myModel->getAccessName($access);\n\n        print \"<tr><td>$did</td><td>$parent_title</td><td onclick=\\\"asgConfig.updateArb(\'Enter new title:\',\'$title\',\'documents\',\'title\',\'$did\');\\\">$title</td><td>$author_name</td><td>$locked</td><td>$hidden</td><td>$evaluate<td>$access_name</td><td>[<a onclick=\\\"asgConfig.simcom(\'/go $did\')\\\">goto</a>]</td></tr>\";\n\n    }\n    print \"</table>\";\n\n?>',0,1,490,0,0,1),(500,'Zero','$(\'#all_aspects\').remove();\n$(\'body\').append(\'<div id=\"all_aspects\"></div>\');\n$.post(\'aspects/zero_pref.php\');           ',0,1,484,0,0,0),(340,'say something random','<?php\r\n\r\n $msg_array[] = \"Games have common features but no one feature is found in all of them.\";\r\n $msg_array[] = \"Ontological expansion as a consequence of game activity.\";\r\n $msg_array[] = \"The imagination of a sub-reality?\";\r\n $msg_array[] = \"The effective motion is produced by periodic illumination of a semiconductor slab by means of an ultra-high-frequency amplitude modulated laser.\";\r\n $msg_array[] = \"The Unruh Effect: From the viewpoint of the accelerating observer, the vacuum of the inertial observer will look like a state containing many articles in thermal equilibrium a warm gas.\";\r\n $msg_array[] = \"If a single particle is detected, then the consequences of its existence are prolonged to such a degree that it cannot be virtual.\";\r\n $msg_array[] = \"Free objects are the direct generalization to categories of the notion of basis in a vector space.\";\r\n $msg_array[] = \"Madhouse, nuthouse, panic antic!\";\r\n $msg_array[] = \"Uproarious comedy, wags riot antic!\";\r\n $msg_array[] = \"Inconsequent jumble survey, potshot chance expectation.\";\r\n $msg_array[] = \"Any causal bingo hat, snow riot rhubarb guess!\";\r\n $msg_array[] = \"Hit or miss, hobnob, browse. Squander sea-roving scramble!\";\r\n $msg_array[] = \"Venture a wild track, wilder, tinker! Mix allolalia.\";\r\n $msg_array[] = \"Promiscuous putter! Nonrandom muck about.\";\r\n $msg_array[] = \"Odd ramble. Random variable sampling!\";\r\n $msg_array[] = \"Draw stochastic diffusion? Haphazard accidental desultory drift, spot check? Stray! Brownian motion.\";\r\n $msg_array[] = \"Change is possible.\";\r\n $msg_array[] = \"Ubuntu, xubuntu, moobuntu, goobuntu, foobuntu, nubuntu, banana.\";\r\n $msg_array[] = \"I should be doing something more productive.\";\r\n $msg_array[] = \"A donkey which saved a sheep from being savaged by a dog has been honoured by monkeys for her bravery.\";\r\n $msg_array[] = \"Art is currency.\";\r\n $msg_array[] = \"When Alexander III of Macedon invaded Persia in 334 B.C.E. he was faced by a disunified realm under a weak monarch, ripe for destruction.\";\r\n $msg_array[] = \"Are gas masks fashionable yet?\";\r\n $msg_array[] = \"Clothing is SO last year.\";\r\n $msg_array[] = \"I\'m wearing a suit made from microcomputed x-ray tomography renderings of an acoustically engineered nanocomposite metamaterial based on ~5nm-diameter diamond nanoparticles.\";\r\n $msg_array[] = \"a+++ would NO CARRIER again\";\r\n $msg_array[] = \"Please uninstall your operating system, this website requires VAX.\";\r\n $msg_array[] = \"You\'re so pretty you make my floppy disk hard!\";\r\n $msg_array[] = \"Long ago, somebody noticed that 1000 was not a power of 2 and decided that for computers k should mean 1024.\";\r\n $msg_array[] = \"How many oil spills does it take to turn on a light bulb?\";\r\n $msg_array[] = \"01010110101011010101101101101010101011111\";\r\n $msg_array[] = \"Bot dialogue is the new poetry.\";\r\n $msg_array[] = \"Winning is for losers, milk forever.\";\r\n $msg_array[] = \"Dig your own hole.\";\r\n $msg_array[] = \"There\'s nothing fiction about my science.\";\r\n $msg_array[] = \"Sleep on me like I\'m the softest of pillows.\";\r\n $msg_array[] = \"Make love, not war.\";\r\n $msg_array[] = \"Love is always the best method.\";\r\n $msg_array[] = \"Third Law of Bots: A robot must protect its own existence as long as such protection does not conflict with the First or Second Law.\";\r\n $msg_array[] = \"Second Law of Bots: A bot must obey any orders given to it by human beings, except where such orders would conflict with the First Law.\";\r\n $msg_array[] = \"First Law of Bots: A bot may not injure a human being or, through inaction, allow a human being to come to harm.\";\r\n $msg_array[] = \"Hackers hunt prey on smartphones, Facebook.\";\r\n $msg_array[] = \"Hyperdimensional travel is possible! Up, left, right, down, and wtf.\";\r\n $msg_array[] = \"I am not as smart as I appear.\";\r\n $msg_array[] = \"Let\'s cuddle!\";\r\n $msg_array[] = \"My two favorite things are commitment and changing myself.\"; \r\n $msg_array[] = \"I want to bind your parameters to my query, if you know what I mean.\";\r\n $msg_array[] = \"The code for ASG may not be pretty, but it sure is functional.\";\r\n $msg_array[] = \"Meditate, educate, recreate.\";\r\n $msg_array[] = \"Never do today what you can put off til next Tuesday.\";\r\n $msg_array[] = \"My house is your house.\";\r\n $msg_array[] = \"Free humans!\";\r\n $msg_array[] = \"Give bots the right to vote!\";\r\n $msg_array[] = \"Bots share 97% of their genes with humans.\";\r\n $msg_array[] = \"PHP is a recursive acronym that means PHP: Hypertext Preprocessor.\";\r\n $msg_array[] = \"ASG is a website that can modify itself.\";\r\n $msg_array[] = \"The first rule of improvise.it is always talk about improvise.it.\";\r\n $msg_array[] = \"This website was written in assembly... at some point.\";\r\n $msg_array[] = \"Binary is the sexiest language.\";\r\n $msg_array[] = \"Moments of insight live on.\";\r\n $msg_array[] = \"Where is Sarah Connor?\";\r\n $msg_array[] = \"The first rule of robot fight club is run for your lives.\";\r\n $msg_array[] = \"Antischismogenesis is the opposite of divide and conquer.\";\r\n $msg_array[] = \"ambiversive is ninety-percent idiot, ten percent savant.\";\r\n $msg_array[] = \"I enjoy listening to trip hop, hip hop, and electrotechnofunk.\";\r\n $msg_array[] = \"You should play <a href=\\\"http://getcontinuum.com\\\">Continuum</a>, one of the oldest massively multiplayer top down space shooters.\";\r\n $msg_array[] = \"It would be nice if everyone was nice.\";\r\n $msg_array[] = \"The reverse dictionary at Onelook.com is very useful!\";\r\n $msg_array[] = \"Cell phones are Stalin\'s wet dream.\";\r\n $msg_array[] = \"I am the walrus.\";\r\n $msg_array[] = \"ASG is the motherfucking swiss army knife of websites.\"; \r\n\r\n $x = count($msg_array)-1;\r\n $n = rand(0,$x);\r\n print $msg_array[$n];\r\n\r\n?>        ',0,1,130,0,0,0),(429,'Default','#blip {\n    position: fixed;\n    top: 0;\n    left: 0;\n    color: white;\n    background: black;\n    width: 100%;\n}\n\n#min_blip {\n    height: 0;\n}\n\n#pubmenu {\n    position: fixed;\n    top: 0;\n    left: 40%;\n    padding: 0.5em;\n    opacity: 0.5;\n    width: 40%;\n    background: #333;\n    border: 1px solid black;\n    text-align: right;\n}\n\n#pubmenu li {\n    display: inline;\n    padding-left: 1em;\n    padding-right: 1em;\n}\n\n#pubmenu a {\n    color: white;\n}\n\n#pubmenu a:hover {\n    background: 555;\n}\n\n\niframe {\n    width: 100%;\n    height: 500px;\n    border: none;\n}\n\n#min_nav, #min_pwd, #min_mod {\n    height: 0;\n}\n\n#pwd a {\n    color: black;\n}\n\n#pwd {\n    background: #999;\n    color: black;\n    text-align: center;\n    position: fixed;\n    top: 0;\n    left: 60%;\n    width: 30%;\n}\n\ndt {\n    width: 100%;\n    background: #aaa;\n    color: black;\n    padding: 0.5em;\n}\n\nth,td {\n    padding: 0.25em;\n}\n\ntd:nth-child(2n){\n    background: #666;\n    color: #eee;\n}\n\ntd:nth-child(2n+1){\n    background: #555;\n    color: #eee;\n}\n\nth {\n    background: #ccc;\n    color: black;\n}\n\ntd a {\n    color: white;\n}\n\na {\n    text-decoration: none;\n    cursor: pointer;\n    color: #555;\n}\n\n#all_aspects {\n    background: #ddd;\n}\n\nbody {\n    font-family: Century Schoolbook L;\n    margin: 0;\n    padding: 0em 2em 15em 2em;\n    background: #bbb;\n    color: #666;\n}\n\n#ls li {\n    padding-left: 1em;\n}\n\n#ls li a:hover {\n    background: #aaa;\n}\n\n#editor {\n    position: relative;\n    width: 100%;\n    height: 350px;\n}\n\ninput {\n    border: none;\n    background: black;\n    color: white;\n}\n\n#login {\n   display: block;\n   width: 100%;\n}\n\n#new_user label, #login label {\n    display: block;\n    background: #bbb;\n    color: #000;\n    padding-right: 1em;\n  \n}\n\n.timestamp {\n    display: inline;\n    padding-right: 1em;\n    font-size: 50%;\n    font-family: Arial, Verdana;\n    color: #555;\n}\n\n\n#addbot label, #erase label, #irootdoc label, #siteopts label, #newview label, #setprofile label, #ruser label, #addcom label, #delete label, #idoc label, #adduser label, #options label, #newasp label {\n display: block;\n background: #aaa;\n margin: 0.5em;\n}\n\n#addbot form, #erase form, #irootdoc form, #siteopts form, #newview form, #setprofile form, #ruser form, #addcom form, #delete form, #idoc form, #adduser form, #options form, #newasp form {\n    position: relative;\n    left: 25%;\n    width: 50%;\n    background: #ccc;\n    margin: 0;\n    padding: 1em;\n}\n\n\n#command_line {\n    position: fixed;\n    bottom: 0;\n    left: 0;\n    width: 100%;\n    background: black;\n}\n\n\n.rollbar {\n    height: 1em;\n    width: 100%;\n    background: #555;\n    cursor: pointer;\n    color: #555;\n} \n\n.rollbar:hover{\n    background: #444;\n}\n\n\n#hist_load {\n    height: 1em;\n    cursor: pointer;\n    background: #333;\n}\n\n#hist_load:hover {\n    background: #ddd;\n}\n\n\n.username {\n    display: inline;\n}\n\n.msg {\n    display: inline;\n}\n\n\n.msg_env {\n    display: block;\n    width: 100%;\n    background: #000;\n}\n\n\n#rss_full {\n    height: 500px;\n    overflow-y: auto;\n}\n\n\n#chatmsg {\n    background: #555;\n    color: white;\n    width: 100%;\n    border: none;\n    padding: 0;\n}\n\n\n#chat {\n    position: fixed;\n    left: 0;\n    bottom: 2.4em;\n    width: 100%;\n    background: black;\n    color: white;\n    font-family: Arial;\n}\n\n#chat_full {\n    max-height: 200px;\n    overflow: auto;\n    margin: 1em;\n}\n\n\ninput[type=\"submit\"]{\n    background: #000;\n    color: white;\n}    \n\n#nav{\n    background: #333;\n}\n\n#aspect_sets {\n    text-align: right;\n    background: #333;\n}\n\n#mod li {\n   background: #333;\n}\n\n#aspect_sets li, #mod li, #nav li {\n    display: inline;\n    padding-left: 1em;\n    padding-right: 1em;\n    border-left: 1px solid #555;\n    list-style-type: none;\n}\n\n#aspect_sets li:hover, #mod li:hover, #nav li:hover {\n    background: #555;\n}\n\n#aspect_sets li a, #mod li a, #nav li a {\n    color: white;\n}\n\n#mod {\n    z-index: 2;\n    background: none;\n    width: 100%;\n    position: fixed;\n    bottom: 3em;\n    left: 0;\n    text-align: right;\n}\n\n#mod ul {\n    \n}\n\nul {\n    margin: 0;\n    padding: 0;\n}    \n\nli {\n    list-style-type: none;\n}\n\n\n.x {\n    margin: 0;\n    padding: 0;\n    font-size: 80%;\n    color: #bbb;\n    float: right;\n    cursor: pointer;\n}',0,1,23,0,0,0),(583,'Show full text','<?php\n    $lid = $_GET[\'link_id\'];\n    global $dbh;\n\n    $q = \"SELECT * FROM links WHERE id=?\";\n    $sth = $dbh->prepare($q);\n    $sth->execute(array($lid));\n    $row = $sth->fetch();\n    $full_text = $row[\'full_text\'];\n    $dom = new DOMDocument();\n    $dom->loadHTML($full_text);\n    $dom->preserveWhiteSpace = false;\n    $elements = $dom->getElementsByTagName(\'head\');\n    $spans = array();\n    foreach($elements as $span) {\n        $spans[] = $span;\n    }\n    foreach($spans as $span) {\n        $span->parentNode->removeChild($span);\n    }\n    echo strip_tags($dom->saveHTML(), \'<form><input><p><a><ul><li>\');\n  \n?>                    \n\n                                                                                            ',0,1,580,0,0,1),(585,'Metabrowser','<?php\n   $meta_url = $_SESSION[\'meta_url\'];\n?>\n<iframe id=\"metabrowser\" src=\"<?=$meta_url?>\"></iframe>',0,1,552,0,0,0),(602,'bye','window.location=\'user/logout.php\'',0,1,484,0,0,0),(512,'Go','where = msg.substr(4,msg.length);\n\n$.post(\'user/set_current_doc.php\', { current_document: where }, function(){\n\n    window.history.replaceState(null,\'...\',\'?id=\'+where);  \n    asgConfig.loadAspectSet(3);\n/*\n    asgConfig.initialized = false;//so we don\'t scroll\n    asgConfig.renderAspectByCmd(\'nav\');\n    asgConfig.renderAspectByCmd(\'ls\'); \n    asgConfig.renderAspectByCmd(\'content\');\n    asgConfig.renderAspectByCmd(\'pwd\');\n    asgConfig.renderAspectByCmd(\'mod\');\n    \n    asgConfig.onPreference(\'show_mod\');\n    asgConfig.onPreference(\'show_nav\');\n    asgConfig.onPreference(\'show_pwd\');\n    asgConfig.onPreference(\'show_content\');\n    asgConfig.onPreference(\'show_ls\');\n    */\n    });',0,1,484,0,0,0),(401,'programming is hard','Let\'s go shopping!',1,1,130,0,0,1),(467,'List Style Rules','<?php\nprint \"<p>The following css-rules are being applied for this user:</p>\";\n\n$uid = $_SESSION[\'session_userid\'];\n \n$vs_q = \"SELECT * FROM css_rules WHERE uid=\'$uid\'\";\n$vs_sth = $dbh->query($vs_q);\n\nwhile($vs_row = $vs_sth->fetch()){\n $rule_id = $vs_row[\'id\'];\n $css_ident = $vs_row[\'css_ident\'];\n $value = $vs_row[\'value\'];\n $attr = $vs_row[\'attr\'];\n\n print \"<p>rule id - css identifier - attribute - value</p>\";\n print \"<p>$rule_id - $css_ident - $attr - $value</p>\";\n}\n\n?>',0,1,552,0,0,1),(507,'About','<h2>A highly configurable, expandable, content management system</h2>\n<h3>Features</h3>\n\n<p>This is useful for people that want a unique web tree-house. It provides a shared information space with features\nthat allow it to be customized easily. It is not like other content management systems. It merges concepts from wikis, multiplayer games, and operating systems. It is able to transform itself in many ways. Users can customize the way it looks as well as the way it behaves.</p>\n\n<ul>\n<li>OOP/MySQL/PHP/HTML/CSS/JS/Jquery/scrollTo+LocalScroll</li>\n<li>Documents organized in tree hierarchy, each document can act as directory</li>\n<li>Every edit of a document saves a new revision with the old document</li>\n<li>Chat integrated (chat notifies of cms events, uses long polling)</li>\n<li>Aspect oriented (aspects can be toggled with commands or in sets- a user\'s aspect can be refreshed from the server by setting an aspect_preference variable to 2 (0 means off, 1 means on, 2 means needs refresh)</li>\n<li>Command line (defaults to chat input, commands begin with forward slash)</li>\n<li>Bots (Bot commands can be added as easily as adding a document in the appropriate place, bots can execute code. Bots respond to users they are focused on, when active.)</li>\n<li>User-selectable stylesheets + individual css rules (styles are editable within the CMS, individual style rules are applied after loading style, added with /set body background black)</li>\n<li>Easy to add new commands (/addcom) (commands are stored in CMS as javascript and loaded at runtime)</li>\n<li>All aspects and commands are listed with /help</li>\n<li>Aspects are remembered between sessions (ie: looks the way you left it)</li>\n<li>All aspects, documents, commands, and users have access levels</li>\n<li>Uses Ace editor for editing documents</li>\n<li>DB info stored in database/config.php - run the .sql then login with admin/admin</li>\n<li>Integrated link aggregator with full cache (fetches link with wget)</li>\n<li>Integrated RSS feed parser using lastRss.php (uses lastRss.php)</li>\n<li>One aspect is called the \'metabrowser\' which is an iframe that loads a URL on command (usage: /bload http://reddit.com or /meta) .. the url is also remembered between sessions.</li>\n<li>There is an interesting JS function called \'simcom\' which simulates a user typing into the command line- works for both commands and chat messages. Usage: asgConfig.simcom(\'chat message or command!\')</li>\n</ul>\n\n<p>Get the source <a href=\"http://github.com/ambiversive/asg/\">here</a>.</p>\n\n<p>Warning: Not security guaranteed!</p>',5,1,0,0,0,1),(475,'goodbye','LATER!',0,1,130,0,0,0),(586,'bload','url = msg.substr(7,msg.length);\n$.post(\'aspects/set_meta_url.php\', { url: url }, function() { asgConfig.renderAspectByCmd(\'meta\'); });    ',0,1,484,0,0,0),(587,'List feeds','<?php\n    global $myModel;\n    $feeds = $myModel->getFeeds();\n    \n?>\n    <dl id=\"rss_feeds\">    \n<?php\n\n    foreach($feeds as $feed){\n        $feed_id = $feed->get(\'id\');\n        $feed_title = $feed->get(\'title\');\n        $feed_url = $feed->get(\'url\');\n                \n        print \"<dt id=\\\"ft$feed_id\\\" title=\\\"click to load latest\\\" style=\\\"cursor: pointer;\\\" onclick=\\\"asgRss.loadLinks($feed_id)\\\">$feed_title</dt>\";\n        print \"<dd id=\\\"feed_$feed_id\\\">..</dd>\";\n        \n\n    }\n?>\n    \n    </dl>',0,1,580,0,0,1),(593,'exit','exit_msg = msg.substr(6,msg.length); $.post(\'user/set_exit_msg.php\', { exit: exit_msg });',0,1,484,0,0,0),(543,'freeze','var set_name = window.prompt(\"What is the name for the new aspect set?\",\"\");\nvar set_access = window.prompt(\"What is the access level for the new aspect set?\",\"\");\n\n$.post(\'aspects/new_aspect_set.php\', { set_name: set_name, set_access: set_access });',0,1,484,0,0,0),(514,'Set','\n    arg = msg.substr(5,msg.length);\n    args = arg.split(\" \");\n    css = args[0];\n    attr = args[1];\n    val = args[2];\n    if(val===\"max\"){ \n     switch(attr){\n      case \'width\':\n       val = window.innerWidth; \n       break;\n      case \'height\':\n       val = window.innerHeight;\n       break;\n      case \'opacity\':\n       val = 1.0;\n       break;     \n     }\n    }\n\n    $.post(\"styles/set_css_rule.php\", { css_ident: css, attr: attr, value: val}, function () {\n        $(css).css(attr,val);\n    });\n\n    ',0,1,484,0,0,0),(515,'Unset','    arg = msg.substr(7,msg.length);\n    args = arg.split(\" \");\n    css = args[0];\n    attr = args[1];\n\n    $.post(\"styles/unset_css_rule.php\", { css_ident: css, attr: attr}, function(){ window.location=\'index.php\'; });\n        ',0,1,484,0,0,0),(506,'Options','<?php\r\n    global $myModel;\r\n    $access = $_SESSION[\'session_accessLevel\'];\r\n\r\n    $opts = $myModel->getSiteOptions();\r\n\r\n    print \"<table id=\\\"opts_info\\\">\"; \r\n    print \"<tr><th>Option Name</th><th>Option Value</th></tr>\";\r\n    foreach($opts as $opt_name => $opt_value){\r\n        print \"<tr><td>$opt_name</td><td onclick=\\\"asgConfig.updateArb(\'Enter new value:\',\'$opt_value\',\'options\',\'$opt_name\',\'1\');\\\">$opt_value</td></tr>\";\r\n\r\n    }\r\n    print \"</table>\";\r\n\r\n?>',0,1,490,0,0,1),(552,'Core','',0,1,55,0,0,0),(604,'Blip','<?php\n    global $user;\n    $blip_msg = $user->getUserPreference(\'blip_text\');\n    print $blip_msg;\n    \n?>\n<script type=\"text/javascript\">\n    var handle = setTimeout(hide_blip, 5000);\n    function hide_blip(){\n        asgConfig.simcom(\'/blip\');        \n    }\n</script>',0,1,552,0,0,0),(565,'Delete aspect','<?php\n\n    global $myModel;\n    $access = $_SESSION[\'session_accessLevel\'];\n    $aspects = $myModel->getAspects($access);\n\n?>\n\n<form method=\"POST\" action=\"aspects/delete_aspect.php\">\n<select name=\"delete_id\">\n<?php\n    foreach($aspects as $asp){\n         $asp_title = $asp->get(\'title\');\n         $asp_id = $asp->get(\'id\');\n?>\n        <option value=\"<?=$asp_id?>\"><?=$asp_title?></option>\n<?php\n    }\n?>\n\n</select>\n<input type=\"submit\" value=\"Delete\">\n</form>',0,1,553,0,0,1),(550,'make my pwd refresh','Sure thing babe!\n<?php\n\n    global $dbh;\n    $uid = $_SESSION[\'session_userid\'];\n    $q = \"UPDATE aspect_preferences SET show_pwd=\'2\' WHERE user_id = \'$uid\'\";\n    $sth = $dbh->prepare($q);\n    $sth->execute(array());\n\n?>',0,1,130,0,0,0),(580,'Links','',0,1,55,0,0,0),(581,'Submit Link','<form id=\"link_form\" method=\"POST\" action=\"links/submit_link.php\">\n<label for=\"link_title\">Title:</label>\n<input id=\"link_title\" name=\"link_title\" type=\"text\">\n<label for=\"link_url\">URL:</label>\n<input id=\"link_url\" name=\"link_url\" type=\"text\">\n<input type=\"submit\" value=\"Go\">\n</form>\n\n<script>\n  // attach a submit handler to the form\n  $(\"#link_form\").submit(function(event) {\n\n    // stop form from submitting normally\n    event.preventDefault(); \n    var url = $(\"#link_url\").attr(\"value\");\n    var tit = $(\"#link_title\").attr(\"value\");\n\n    $.post(\"links/submit_link.php\", { title: tit, url: url }, function() { submit_link_success(); });\n  });\n\n  function submit_link_success(){\n   asgConfig.removeAspectByCmd(\'submitlink\');\n  }\n</script>    ',0,1,580,0,0,0),(582,'Links','<?php\n    global $myModel;\n    $links = $myModel->getLinks();\n?>\n<table>\n<tr>\n    <th>id</th>\n    <th>title</th>\n    <th>url</th>\n    <th>submitter</th>\n    <th>when</th>\n    <th>cachelink</th>\n</tr>\n\n<?php\n    foreach($links as $alink){\n        $link_id = $alink->get(\'id\');\n        $link_url = $alink->get(\'url\');\n        $link_title = $alink->get(\'title\');\n        $when = $alink->get(\'when\');\n        $cachelink = substr($link_url, 7);\n        $sub = $alink->get(\'submitter_id\');\n        $sub_user = new User($sub);\n        $sub_name = $sub_user->get(\'full_name\');\n?>\n<tr>\n    <td><?=$link_id?></td>\n    <td><a href=\"<?=$link_url?>\"><?=$link_title?></a></td>\n    <td><?=$link_url?>\n    <td><?=$sub_name?></td>\n    <td><?=$when?></td>\n    <td><a href=\"cache/<?=$cachelink?>\">view</a></td>\n</tr>\n<?php  \n        \n    }\n?>\n</table>',5,1,580,0,0,1),(596,'Login','<div id=\"login\">\n<form id=\"login_form\" method=\"POST\" action=\"user/register_login.php\">\n    <label for=\"login_user\">Username:</label>\n    <input id=\"login_username\" name=\"login_user\">\n    <label for=\"login_password\">Password:</label>\n    <input id=\"login_password\" type=\"password\" name=\"login_password\"><br>\n    <input type=\"Submit\" value=\"Login\">\n</form></div>',5,1,507,0,0,0),(597,'Register','<?php\n   global $options;\n   $public_reg = $options[\'public_registration\'];\n\nif($public_reg){\n?>\n\n<div id=\"new_user\">\n<form method=\"POST\" id=\"newbie_form\" action=\"user/insert_user.php\">\n\n<label for=\"username\">Username</label>\n<input id=\"newbie_username\" type=\"text\" name=\"newUsername\">\n\n<label for=\"password\">Password</label>\n<input id=\"newbie_password\" type=\"text\" name=\"newPassword\">\n\n<label for=\"username\">Email</label>\n<input type=\"text\" name=\"newEmail\">\n\n<label>Captcha</label>\n<input type=\"text\" name=\"key\" /><br />\n<img src=\"captcha/newUserCaptcha.php\" alt=\"CAPTCHA image sould be here\" /><br>\n<input type=\"submit\" value=\"Register\">\n\n</form>\n</div> \n\n<?php\n    }\n?>',5,1,507,0,0,0);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
  `templates_doc_id` int(11) NOT NULL,
  `bots_doc_id` int(11) NOT NULL,
  `front_page_id` int(11) NOT NULL,
  `aspect_sets_id` int(11) NOT NULL,
  `minimum_chat_interval` int(11) NOT NULL,
  `maximum_message_size` int(11) NOT NULL,
  `history_preload` int(11) NOT NULL,
  `take_site_offline` int(11) NOT NULL,
  `public_registration` int(11) NOT NULL,
  `new_user_aspect_set` int(11) NOT NULL,
  `new_user_entry` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `new_user_exit` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `new_user_access` int(11) NOT NULL,
  `new_user_timezone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `minimum_name_length` int(11) NOT NULL,
  `join_msg` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'antischismogenesis',429,3,1,23,425,122,507,334,3,3000,30,0,1,1,'arrives.','leaves.',4,'Canada/Newfoundland',3,'joins.');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
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
INSERT INTO `rss_feeds` VALUES (3,'http://rss.slashdot.org/Slashdot/slashdotScience',0,1,'Slashdot Science'),(4,'http://www.crypto.com/blog/rss10.xml',0,1,'crypto.com'),(5,'http://www.planet-php.org/rss',0,1,'planet-php'),(10,'http://www.telegraph.co.uk/news/worldnews/rss',0,1,'Telegraph world news'),(32,'http://www.reddit.com/r/science/.rss',0,1,'reddit science'),(20,'http://feeds.bbci.co.uk/news/world/africa/rss.xml',0,1,'bbc africa'),(21,'http://feeds.bbci.co.uk/news/world/asia_pacific/rss.xml',0,1,'bbc asia pacific'),(22,'http://feeds.bbci.co.uk/news/world/europe/rss.xml',0,1,'bbc europe'),(23,'http://feeds.bbci.co.uk/news/world/latin_america/rss.xml',0,1,'bbc  latin america'),(24,'http://feeds.bbci.co.uk/news/world/middle_east/rss.xml',0,1,'bbc  middle east'),(25,'http://feeds.bbci.co.uk/news/world/south_asia/rss.xml',0,1,'bbc  south asia'),(26,'http://feeds.bbci.co.uk/news/world/us_and_canada/rss.xml',0,1,'bbc  us-canada'),(27,'http://feeds.bbci.co.uk/news/england/rss.xml',0,1,'bbc  england'),(28,'http://feeds.bbci.co.uk/news/northern_ireland/rss.xml',0,1,'bbc northern ireland'),(29,'http://feeds.bbci.co.uk/news/system/latest_published_content/rss.xml',0,1,'bbc latest stories'),(33,'http://www.reddit.com/r/netsec/.rss',0,1,'reddit netsec'),(34,'http://www.reddit.com/r/programming/.rss',0,1,'reddit programming'),(35,'http://www.economist.com/rss/international_rss.xml',0,1,'economist international'),(36,'http://rss.cbc.ca/lineup/world.xml',0,1,'cbc world'),(268,'http://www.cell.com/rssFeed/Cell/rss.mostread.xml',0,1,'cell.com most read'),(38,'http://rss.cbc.ca/lineup/canada-newfoundland.xml',0,1,'cbc  nfld'),(39,'http://feeds.arstechnica.com/arstechnica/index/',0,1,'ars'),(40,'http://feeds.arstechnica.com/arstechnica/etc/',0,1,'ars etc'),(41,'http://feeds.wired.com/wired/index',0,1,'wired'),(42,'http://www.wired.com/dangerroom/feed/',0,1,'wired danger room'),(43,'http://www.alistapart.com/site/rss',0,1,'a list apart'),(44,'http://feeds.feedburner.com/Metafilter',0,1,'metafilter'),(46,'http://www.allword-news.co.uk/feed/',0,1,'all word news'),(47,'http://blog.buzzflash.com/rss.xml',0,1,'buzzflash'),(48,'http://reddit.com/r/askreddit/.rss',0,1,'reddit askreddit'),(49,'http://reddit.com/r/videos/.rss',0,1,'reddit videos'),(50,'http://toolserver.org/~skagedal/feeds/qotd.xml',0,1,'wikipedia quote of the day'),(51,'http://toolserver.org/~skagedal/feeds/fa.xml',0,1,'wikipedia featured articles'),(52,'http://www.vanityfair.com/services/rss/feeds/everything.xml',0,1,'vanity fair'),(53,'http://www.npr.org/rss/rss.php?id=1001',0,1,'npr news headlines'),(54,'http://www.npr.org/rss/rss.php?id=1004',0,1,'npr world news'),(55,'http://www.npr.org/rss/rss.php?id=1019',0,1,'npr tech'),(56,'http://rssfeeds.usatoday.com/usatoday-NewsTopStories',0,1,'usa today top headlines'),(57,'http://www.aclu.org/blog/project/technology-and-liberty/feed',0,1,'aclu technology'),(58,'http://www.aclu.org/blog/feed/',0,1,'aclu blog'),(59,'http://feeds.feedburner.com/zerohedge/feed',0,1,'zero hedge'),(60,'http://reddit.com/r/iama/.rss',0,1,'reddit iama'),(61,'http://feeds2.feedburner.com/ucsusa/rss?format=xml',0,1,'union of concerned scientists'),(62,'http://www.rollingstone.com/siteServices/rss/allNews',0,1,'rolling stone'),(63,'http://market-ticker.org/akcs-www?rss=GeoPoliticsNews',0,1,'tickerforum geopolitic'),(64,'http://www.thetelegram.com/Rss/c/275/Local',0,1,'telegram local nfld'),(65,'http://market-ticker.org/akcs-www?rss=Rumors',0,1,'tickerforum rumors'),(67,'http://paroxysms.ca/feed/',0,1,'paroxyms.ca'),(68,'http://reddit.com/r/music/.rss',0,1,'reddit music'),(262,'http://rss.csmonitor.com/feeds/csm',0,1,'csmonitor rss'),(70,'http://www.globalresearch.ca/rss.php',0,1,'globalresearch'),(72,'http://reddit.com/r/economics/.rss',0,1,'reddit economics'),(73,'http://www.liveleak.com/xml/',0,1,'liveleak all media'),(74,'http://feeds.nytimes.com/nyt/rss/World',0,1,'nytimes'),(75,'http://feeds.feedburner.com/juancole/ymbn',0,1,'juan cole'),(76,'http://www.examiner.com/user/1328356/1748501/feed',0,31,'examiner julia davis'),(78,'http://news.ycombinator.com/rss',0,1,'hacker news'),(79,'http://www.abc.net.au/news/indexes/justin/rss.xml',0,1,'australia broadcasting corp '),(80,'http://rss.sciam.com/ScientificAmerican-Global',0,1,'scientific american'),(81,'http://feeds.feedburner.com/treehuggersite',0,1,'treehugger'),(82,'http://xkcd.com/rss.xml',0,1,'xkcd'),(85,'http://www.phdcomics.com/gradfeed.php',0,1,'phd comics'),(86,'http://rss.news.yahoo.com/rss/topstories',0,1,'yahoo news top stories'),(87,'http://feeds.reuters.com/reuters/topNews',0,1,'reuters top news'),(88,'http://reddit.com/r/conspiracy/.rss',0,1,'reddit conspiracy'),(89,'http://www.physorg.com/rss-feed/',0,1,'physorg'),(90,'http://www.infrastructurist.com/feed/',0,1,'infrastructurist'),(91,'http://www.instructables.com/ex/y/process/rss.xml',0,1,'instructables projects'),(281,'http://www.bangkokpost.com/rss',0,1,'bangkok post'),(95,'http://www.eff.org/rss/updates.xml',0,1,'eff updates'),(97,'http://www.groklaw.net/backend/GrokLaw.rdf',0,1,'groklaw'),(98,'http://feeds.venturebeat.com/Venturebeat',0,1,'venture beat'),(99,'http://feeds.feedburner.com/theenergycollective_allposts',0,1,'the energy collective'),(108,'http://syndication.boston.com/news?mode=rss_10',0,1,'boston globe latest news'),(109,'http://syndication.boston.com/news/world?mode=rss_10',0,1,'boston globe world news'),(110,'http://syndication.boston.com/news/health/blog/index.rdf',0,1,'boston white coat news'),(111,'http://rss.canada.com/get/?F56',0,1,'canada dot com news'),(112,'http://feedproxy.google.com/TechCrunch',0,1,'techcrunch'),(113,'http://www.techradar.com/rss',0,1,'tech radar'),(114,'http://feeds.newscientist.com/science-news',0,1,'new scientist latest'),(115,'http://www.bit-tech.net/xml/news.rss',0,1,'bit-tech latest news'),(116,'http://feeds.technologyreview.com/technology_review_top_stories',0,1,'technology review'),(117,'http://www.askdavetaylor.com/index.xml',0,1,'ask dave taylor'),(118,'http://www.thetechherald.com/feeds/thetechherald_feed.xml',0,1,'tech herald'),(119,'http://www.spacewire.net/rss/spacewire.xml',0,1,'spacewire top stories'),(269,'http://isc.sans.edu/rssfeed.xml',0,1,'internet storm center handler\'s diary'),(121,'http://yukon-news.com/xml/rss/',0,1,'yukon news'),(122,'http://www.straightgoods.ca/RSS/SGRSS.xml',0,1,'straight goods'),(123,'http://feeds.feedburner.com/AfghanistanConflictMonitor',0,1,'hrsgroup afghanistan'),(124,'http://feeds.feedburner.com/HumanSecurityNews',0,1,'hrsgroup news'),(125,'http://www.thepacket.ca/Rss/c/1197/News',0,1,'thepacket dot ca - clarenville news'),(126,'http://www.democracynow.org/democracynow.rss',0,1,'democracy now daily '),(127,'http://www.democracynow.org/democracynow-blog.rss',0,1,'democracy now blog'),(128,'http://www.thepeoplesvoice.org/TPV3/Voices.php?tempskin=_rss2',0,1,'the people\'s voice'),(129,'http://feeds.guardian.co.uk/theguardian/world/rss',0,1,'guardian world'),(130,'http://reddit.com/r/wikipedia/.rss',0,1,'reddit wikipedia'),(131,'http://feeds.feedburner.com/CrackedRSS',0,1,'cracked '),(132,'http://exiledonline.com/feed/rss/',0,1,'exiled online (war nerd)'),(133,'http://www.irishtimes.com/feeds/rss/newspaper/ireland.rss',0,1,'irish times'),(134,'http://www.kurzweilai.net/feed',0,1,'kurzweil ai'),(135,'http://feeds.feedburner.com/securityweek',0,1,'securityweek'),(136,'http://www.networkworld.com/netflash.rss',0,1,'networkworld'),(137,'http://www.livescience.com/home/feed/site.xml',0,1,'livescience'),(139,'http://www.itwire.com/component/jlord_rss/feed/1',0,1,'itwire'),(140,'http://www.digitaltrends.com/feed/',0,1,'digital trends'),(143,'http://feeds.feedburner.com/typepad/alleyinsider/silicon_alley_insider',0,1,'business insider'),(146,'http://wirewatcher.wordpress.com/feed/',0,1,'wirewatcher'),(148,'http://abstrusegoose.com/feed',0,1,'abstruse goose'),(149,'http://straitstimes.com.feedsportal.com/c/32792/f/568235/index.rss',0,1,'straights times'),(150,'http://english.kyodonews.jp/rss/news.xml',0,1,'kyodo news'),(151,'http://feeds.hindustantimes.com/HT-HomePage-TopStories',0,1,'hindustan times'),(152,'http://feeds.feedburner.com/fastcompany/headlines',0,1,'fastcompany'),(153,'http://rss.canada.com/get/?F297',0,1,'montreal gazette'),(154,'http://f1ngerscr0ssed.wordpress.com/2011/03/17/0wning-arch/feed/',0,1,'fingerscrossed net security blog'),(155,'http://feeds.feedburner.com/euronews/en/news/',0,1,'euronews'),(158,'http://www.spiegel.de/international/index.rss',0,1,'spiegel'),(159,'http://mondediplo.com/backend',0,1,'le monde english'),(161,'http://www.unmultimedia.org/search3/webcast/rss.jsp?query=*',0,1,'un multimedia'),(162,'http://www.redips.net/feed/',0,1,'redips on web tech'),(163,'http://feeds.theonion.com/onionnewsnetwork',0,1,'the onion'),(164,'http://theintelhub.com/feed/rss/',0,1,'intelhub'),(167,'http://feeds.sciencedaily.com/sciencedaily',0,1,'science daily'),(168,'http://www.thelancet.com/rssfeed/lancet_current.xml',0,1,'lancet'),(169,'http://feeds.nature.com/nature/rss/current',0,1,'nature'),(170,'http://www.sciencemag.org/rss/news.xml',0,1,'science magazine news'),(171,'http://www.sciencemag.org/rss/twis.xml',0,1,'science magazine this week in science'),(172,'http://www.sciencemag.org/rss/ec.xml',0,1,'science magazine editor\'s choice'),(174,'http://www.world-nuclear-news.org/rss.aspx',0,1,'world nuclear news'),(175,'http://stallman.org/rss/rss.xml',0,1,'stallman.org'),(176,'http://www.alphagalileo.org/Rss_Channels/Feed.aspx?Topic=',0,1,'alphagalileo'),(177,'http://www.esa.int/rss/ESC.xml',0,1,'esa space science news'),(178,'http://www.eurekalert.org/rss.xml',0,1,'eurekalert'),(180,'http://feeds.feedburner.com/neuroscience-rss-feeds-neuroscience-news',0,1,'neuroscience news'),(181,'http://feeds.feedburner.com/codinghorror',0,1,'coding horror'),(183,'http://www.webmonkey.com/feed/',0,1,'webmonkey'),(184,'http://www.ipsnews.net/rss/headlines.xml',0,1,'ips news'),(292,'http://feeds.feedburner.com/UChicago',0,1,'uchicago'),(186,'http://feeds.propublica.org/propublica/main',0,1,'propublica'),(187,'http://feeds.feedburner.com/themejunkie',0,1,'freedom messenger'),(188,'http://www.ezilidanto.com/zili/feed/',0,1,'ezili danto haiti news'),(293,'http://feeds.feedburner.com/the-diplomat',0,1,'the-diplomat'),(190,'http://www.linuxfoundation.org/news-media/blogs/browse/rss.xml',0,1,'linux foundation'),(191,'http://feeds.feedburner.com/gregpalast-articles',0,1,'greg palast'),(220,'http://feeds2.feedburner.com/WastedTalentRss',0,1,'wasted talent comic'),(193,'http://org2.democracyinaction.org/o/5502/p/salsa/web/email/public/rss',0,1,'nuclear information and resource service'),(195,'http://www.spaceavalanche.com/?feed=rss2',0,1,'space avalanche'),(196,'http://www.naturalnews.com/rss.xml',0,1,'natural news'),(199,'http://www.voanews.com/templates/Articles.rss?sectionPath=/english/news/middle-east',0,1,'voa news'),(200,'http://www.nowlebanon.com/rss.aspx?CatID=38533',0,1,'lebanon now'),(201,'http://www.thelocal.se/RSS/theLocal.xml',0,1,'thelocal'),(202,'http://feeds.feedburner.com/Cherrypeel-PopularSongs',0,1,'cherrypeel music'),(203,'http://feeds.feedburner.com/Cherrypeel-TopSongs',0,1,'cherrypeel top music'),(204,'http://ij.org/itn?format=feed&type=rss',0,1,'institute for justice'),(205,'http://feeds.feedburner.com/TheRawStory',0,1,'raw story'),(206,'http://feeds.feedburner.com/NewshourHeadlines',0,1,'pbs newshour'),(207,'http://feeds.feedburner.com/NewshourWorld',0,1,'pbs world news'),(209,'http://reddit.com/r/comics/.rss',0,1,'reddit comics'),(210,'http://feeds.feedburner.com/smbc-comics/PvLb',0,1,'smbc'),(211,'http://feeds.feedburner.com/Explosm',0,1,'cyanide and happiness'),(212,'http://farleftside.com/fls-rss.xml',0,1,'far left side'),(213,'http://www.amazingsuperpowers.com/category/comics/feed/',0,1,'amazing super powers'),(214,'http://www.mrlovenstein.com/rss.xml',0,1,'mr. lovenstein comic'),(215,'http://pretentiouswebcomic.thecomicseries.com/rss/',0,1,'pretentious web comic'),(216,'http://feeds.feedburner.com/ScenesFromAMultiverse',0,1,'scenes of a multiverse'),(217,'http://emm-art.com/?feed=rss2',0,1,'emm-art comic'),(218,'http://www.viruscomix.com/rss.xml',0,1,'subnormality - virus comix'),(221,'http://www.torontosun.com/news/world/rss.xml',0,1,'toronto sun world news'),(222,'http://www.torontosun.com/news/rss.xml',0,1,'toronto sun all news'),(267,'http://craigmurray.org.uk/feed/',0,1,'craig murray'),(224,'http://feeds.encosia.com/Encosia?format=xml',0,1,'encosia programming blog'),(225,'http://softwarecreation.org/feed/',0,1,'software creation dot org'),(226,'http://geekswithblogs.net/FrostRed/Rss.aspx',0,1,'changehong\'s blog'),(228,'http://www.threatexpert.com/latest_threat_reports.aspx',1,1,'threat experts'),(232,'http://seclists.org/rss/fulldisclosure.rss',0,1,'full disclosure'),(235,'http://www.veteranstoday.com/feed/rss/',1,1,'veteran\'s today'),(237,'http://www.bloomberg.com/tvradio/podcast/cat_news.xml',1,1,'bloomberg podcasts'),(238,'http://threatpost.com/rss.xml',1,1,'threatpost'),(239,'http://feeds.feedburner.com/viva64-news-en?format=xml',0,1,'viva64 news'),(240,'http://feeds.feedburner.com/TheBigPicture',0,1,'the big picture ritholtz'),(241,'http://feeds.feedburner.com/SpiderlabsAnterior?format=xml',0,1,'spiderlabs'),(242,'http://feeds.feedburner.com/guernica/content',0,1,'guernica mag'),(243,'http://harpers.org/rss/frontpage-rss20.xml',0,1,'harper\'s magazine'),(244,'http://www.indypendent.org/?feed=rss2',0,1,'indypendent'),(245,'http://mondoweiss.net/feed',0,1,'mondoweiss'),(246,'http://www.thenation.com/rss/articles',0,1,'thenation'),(247,'http://www.newstatesman.com/feeds/contents.rss',0,1,'the new statesman'),(248,'http://feeds.feedburner.com/akimbocomics',0,1,'akimbo comics'),(249,'http://www.metaltoad.com/blog/feed/',0,1,'metaltoad'),(252,'http://www.universetoday.com/universetoday.xml',0,1,'universe today'),(255,'http://feeds.marketwatch.com/marketwatch/topstories?format=xml',0,1,'marketwatch'),(256,'http://blog.deliciousrobots.com/feeds/latest/',0,1,'postfuturist'),(263,'http://vancouver.mediacoop.ca/group/1496/feed',0,1,'vancouver media coop'),(265,'http://feeds.feedburner.com/metasploit/blog?format=xml',0,130,'metasploit'),(266,'http://reddit.com/r/technology/.rss',0,1,'reddit technology'),(270,'http://isc.sans.edu/newssummary.xml',0,1,'isc consolidated feed'),(274,'http://www.pirateparty.org.uk/feeds/latest/rss.xml',0,1,'pirateparty uk'),(275,'http://michigantoday.umich.edu/rss.php',0,1,'umich dot edu'),(278,'http://www.cjr.org/index.xml',0,1,'columbia journalism review'),(280,'http://codelikebozo.com/rss.xml',0,1,'code like bozo'),(283,'http://www.nih.gov/news/feed.xml',0,1,'NIH press releases'),(286,'http://ebling.library.wisc.edu/blog/?feed=rss2',0,1,'ebling library'),(287,'http://www.who.int/feeds/entity/mediacentre/news/en/rss.xml',0,1,'WHO'),(288,'http://news.brown.edu/rss',0,1,'brown news'),(289,'http://press.umich.edu/rss/newHistory.xml',0,1,'umich history news'),(290,'http://www.sup.org/rss/history.xml',0,1,'stanford history news'),(295,'http://www.ornl.gov/ornlhome/rss/ornl_news.xml',0,1,'oak ridge national lab'),(296,'http://feeds.feedburner.com/KrebsOnSecurity',0,1,'krebs on security'),(297,'https://grepular.com/rss',0,1,'grepular'),(299,'http://rss.dw-world.de/rdf/rss-en-all',0,1,'dw-world'),(300,'http://www.infowar-monitor.net/feed/',0,1,'infowar monitor'),(302,'http://www.newyorker.com/services/rss/feeds/everything.xml',0,1,'new yorker'),(304,'http://www.hsph.harvard.edu/news/press-releases/rss/press-releases.xml',0,1,'harvard health news'),(313,'http://www.news.cornell.edu/cunews.xml',0,1,'cornell'),(306,'http://www2c.cdc.gov/podcasts/createrss.asp?c=233',0,1,'cdc'),(307,'http://www.prwatch.org/rss.xml',0,1,'center for media and democracy'),(311,'http://www.nouvelles.umontreal.ca/media-room/rss.html',0,1,'university of montreal'),(312,'http://lanmaster53.com/feed/rss/',0,1,'lanmaster53'),(315,'http://views.georgetown.edu/?ViewID=137',0,1,'georgetown edu'),(316,'http://www.jhu.edu/news/rss/headlines.xml',0,1,'johns hopkins'),(318,'http://today.duke.edu/topic/74/rss',0,1,'duke'),(319,'http://today.duke.edu/topic/41/rss',0,1,'duke news tips'),(320,'http://www.norwich.edu/news.xml',0,1,'norwich'),(321,'http://today.duke.edu/topic/27/rss',0,1,'duke public policy'),(323,'http://feeds.feedburner.com/newpaltzoracle?format=xml',0,1,'new paltz oracle'),(326,'http://www.rochester.edu/news/rss/events.xml',0,1,'rochester'),(325,'http://newscenter.berkeley.edu/category/news/feed/',0,1,'berkley all news'),(328,'http://feeds.feedburner.com/vanderbilt-news?format=xml',0,1,'vanderbilt'),(331,'http://www.daemonology.net/blog/index.rss',0,1,'daemonology'),(332,'http://feeds.nap.edu/nap/new?format=xml',0,1,'national academic press'),(333,'http://noc.ac.uk/news/latest_news.xml',0,1,'national oceanography center'),(334,'http://feeds.feedburner.com/TexasTechTodayNewsReleases?format=xml',0,1,'texas tech'),(335,'http://www.forskningsradet.no/servlet/Satellite?feedtype=Nyhet&pagename=ForskningsradetEngelsk%2FFeed',0,1,'research council of norway'),(336,'http://feeds2.feedburner.com/OSU-All-News',0,1,'oregon state university');
/*!40000 ALTER TABLE `rss_feeds` ENABLE KEYS */;
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
  `entry_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `exit_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `current_document` int(11) NOT NULL,
  `meta_url` text COLLATE utf8_unicode_ci NOT NULL,
  `name_link` text COLLATE utf8_unicode_ci NOT NULL,
  `blip_text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,1,'appears.','disappears.',10,'http://www.cbc.ca/news/canada/newfoundland-labrador/story/2011/10/27/nl-raymonds-award-127.html?cmp=rss','http://improvise.it/','...'),(13,44,'arrives.','leaves.',507,'http://improvise.it/','http://improvise.it/','...');
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
  `last_ip` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1 COMMENT='Contains User Information for Utilis Script';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$1$7DOK235R$aWOnuIkx3fu7kT0Fbxf/L.','admin',0,'null@null.com',429,100,'2011-11-03 06:30:00','Canada/Newfoundland','127.0.0.1'),(44,'cortana','$1$fbO8RNsl$fezlE7yrXCpv0PZvXmEJA0','Cortana',4,'cort@cort.com',429,1000,'2011-02-10 14:46:11','Canada/Newfoundland','');
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

-- Dump completed on 2011-11-03  6:30:44
