-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: crmnew
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `account_balances`
--

DROP TABLE IF EXISTS `account_balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_balances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `balance` decimal(16,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_balances`
--

LOCK TABLES `account_balances` WRITE;
/*!40000 ALTER TABLE `account_balances` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_notes`
--

DROP TABLE IF EXISTS `app_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `contents` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_notes`
--

LOCK TABLES `app_notes` WRITE;
/*!40000 ALTER TABLE `app_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_password_manager`
--

DROP TABLE IF EXISTS `app_password_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_password_manager` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_password_manager`
--

LOCK TABLES `app_password_manager` WRITE;
/*!40000 ALTER TABLE `app_password_manager` DISABLE KEYS */;
INSERT INTO `app_password_manager` VALUES (4,294,NULL,'google 2','http://www.google.com','test','test','','2017-12-09 17:28:36','2017-12-09 18:03:02');
/*!40000 ALTER TABLE `app_password_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_sms`
--

DROP TABLE IF EXISTS `app_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `req_time` datetime DEFAULT NULL,
  `sent_time` datetime DEFAULT NULL,
  `sms_from` text,
  `sms_to` text,
  `sms` text,
  `driver` text,
  `resp` text,
  `status` varchar(200) DEFAULT NULL,
  `stype` varchar(200) NOT NULL DEFAULT 'Sent',
  `cid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `trid` int(11) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_sms`
--

LOCK TABLES `app_sms` WRITE;
/*!40000 ALTER TABLE `app_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_sms_drivers`
--

DROP TABLE IF EXISTS `app_sms_drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_sms_drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(200) DEFAULT NULL,
  `handler` varchar(200) DEFAULT NULL,
  `weburl` varchar(200) DEFAULT NULL,
  `description` text,
  `url` varchar(200) DEFAULT NULL,
  `incoming_url` varchar(200) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `api_key` varchar(200) DEFAULT NULL,
  `api_secret` varchar(200) DEFAULT NULL,
  `route` varchar(200) DEFAULT NULL,
  `sender_id` varchar(100) DEFAULT NULL,
  `balance` decimal(14,2) DEFAULT NULL,
  `placeholder` text,
  `status` varchar(100) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_sms_drivers`
--

LOCK TABLES `app_sms_drivers` WRITE;
/*!40000 ALTER TABLE `app_sms_drivers` DISABLE KEYS */;
INSERT INTO `app_sms_drivers` VALUES (135,'custom','custom','http://www.example.com','Your Custom Gateway','http://api.example.com','http://www.example.com/incoming/','GET','your_username','your_password','your_api_key','your_api_secret','1','CloudOnex',1.00,'{{url}}/send.php?username={{username}}&password={{password}}&from={{from}}&to={{to}}&message={{message}}','Sandbox',0,NULL,NULL),(136,'test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(137,'custom','custom','http://www.example.com','Your Custom Gateway','http://api.example.com','http://www.example.com/incoming/','GET','your_username','your_password','your_api_key','your_api_secret','1','CloudOnex',1.00,'{{url}}/send.php?username={{username}}&password={{password}}&from={{from}}&to={{to}}&message={{message}}','Sandbox',0,NULL,NULL),(138,'test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(139,'custom','custom','http://www.example.com','Your Custom Gateway','http://api.example.com','http://www.example.com/incoming/','GET','your_username','your_password','your_api_key','your_api_secret','1','CloudOnex',1.00,'{{url}}/send.php?username={{username}}&password={{password}}&from={{from}}&to={{to}}&message={{message}}','Sandbox',0,NULL,NULL),(140,'test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `app_sms_drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_sms_templates`
--

DROP TABLE IF EXISTS `app_sms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_sms_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tpl` varchar(200) DEFAULT NULL,
  `sms` text,
  `status` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_at_2` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_sms_templates`
--

LOCK TABLES `app_sms_templates` WRITE;
/*!40000 ALTER TABLE `app_sms_templates` DISABLE KEYS */;
INSERT INTO `app_sms_templates` VALUES (1,'Invoice Created','Your Invoice- {{invoice_id}} is created. To view your invoice- {{invoice_url}}',NULL,NULL,'2017-11-23 04:59:37',NULL),(2,'Invoice Payment Reminder','We have not received payment for invoice {{invoice_id}}, dated {{invoice_date}}. To view your invoice- {{invoice_url}}',NULL,NULL,'2017-11-23 05:01:14',NULL),(3,'Invoice Overdue Notice','Your Invoice- {{invoice_id}} is now overdue. To view your invoice- {{invoice_url}}',NULL,NULL,'2017-11-23 04:59:20',NULL),(4,'Invoice Payment Confirmation','We have received your Payment for Invoice ID- {{invoice_id}}',NULL,NULL,'2017-11-23 05:02:15',NULL),(5,'Invoice Refund Confirmation','Your Payment for {{invoice_id}} has been refunded.',NULL,NULL,'2017-11-23 05:03:19',NULL),(6,'Quote Created','A Quote has been created- {{quote_id}}. You can view this Quote- {{quote_url}}',NULL,NULL,'2017-11-23 05:03:19',NULL),(7,'Quote Accepted','Thanks for Accepting Quote - {{quote_id}}. You can view this Quote- {{quote_url}}',NULL,NULL,'2017-11-23 05:03:19',NULL),(8,'Quote Cancelled','Quote has been cancelled - {{quote_id}}. You can view this Quote- {{quote_url}}',NULL,NULL,'2017-11-23 05:03:19',NULL),(9,'Quote Accepted: Admin Notification','Quote - {{quote_id}} has been accepted. You can view this Quote- {{quote_url}}',NULL,NULL,'2017-11-23 05:03:19',NULL),(10,'Quote Cancelled: Admin Notification','Quote - {{quote_id}} has been Cancelled. You can view this Quote- {{quote_url}}',NULL,NULL,NULL,NULL),(12,'Ticket Assigned: Admin Notification','Ticket - {{ticket_id}} has been assigned to you.',NULL,'2018-10-24 17:33:32','2018-10-24 17:33:32',NULL);
/*!40000 ALTER TABLE `app_sms_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_categories`
--

DROP TABLE IF EXISTS `asset_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_categories`
--

LOCK TABLES `asset_categories` WRITE;
/*!40000 ALTER TABLE `asset_categories` DISABLE KEYS */;
INSERT INTO `asset_categories` VALUES (6,0,'Electronics','','','','','',1,0,1,'2018-11-06 05:11:40','2018-11-06 05:11:40'),(7,0,'Softwares','','','','','',1,0,1,'2018-11-06 05:11:46','2018-11-06 05:11:46');
/*!40000 ALTER TABLE `asset_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_purchased` date DEFAULT NULL,
  `supported_until` date DEFAULT NULL,
  `price` decimal(16,4) DEFAULT NULL,
  `depreciation` decimal(16,4) DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) unsigned DEFAULT NULL,
  `employee_id` int(10) unsigned DEFAULT NULL,
  `contact_id` int(10) unsigned DEFAULT NULL,
  `location_id` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (8,'','Macbook Pro','','2018-11-06','2019-11-06',1250.0000,NULL,'SL37289274899',NULL,NULL,'',6,NULL,NULL,NULL,NULL,'2018-11-06 05:12:09','2018-11-06 05:12:23'),(9,'','CloudOnex Business Suite','','2018-11-06','2019-11-06',299.0000,NULL,'ABC-17284-278487-2222',NULL,NULL,'',7,NULL,NULL,NULL,NULL,'2018-11-06 05:13:02','2018-11-06 05:13:02');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `is_present` tinyint(1) NOT NULL DEFAULT '1',
  `total_time` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(10) unsigned DEFAULT NULL,
  `contact_id` int(10) unsigned DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `next_date` date NOT NULL,
  `last_paid_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_amount` decimal(16,8) NOT NULL,
  `recurring_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_days_before` smallint(5) unsigned NOT NULL DEFAULT '0',
  `add_transaction_automatically` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `is_skipped` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clx_integrations`
--

DROP TABLE IF EXISTS `clx_integrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clx_integrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clx_integrations`
--

LOCK TABLES `clx_integrations` WRITE;
/*!40000 ALTER TABLE `clx_integrations` DISABLE KEYS */;
INSERT INTO `clx_integrations` VALUES (4,'woocommerce','woocommerce local','https://wp.test','ck_9b08a41676e8aca0ad7f7df64d74ae18dad64289','cs_d3ce9458a3a5335c03f0bc9d2ef381a1fbaee7e7',1,0,'2018-07-23 05:11:56','2018-10-22 07:30:28'),(5,'woocommerce','eawal','https://awalvape.com','ck_c55f0b944883d2ce258197e1181221fcf51d0aa4','cs_c19393b428f072f63e7dc1d8c234e23fed072a78',1,1,'2018-10-22 07:30:25','2018-10-22 07:30:28');
/*!40000 ALTER TABLE `clx_integrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clx_shared_preferences`
--

DROP TABLE IF EXISTS `clx_shared_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clx_shared_preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation_id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clx_shared_preferences`
--

LOCK TABLES `clx_shared_preferences` WRITE;
/*!40000 ALTER TABLE `clx_shared_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `clx_shared_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_cards`
--

DROP TABLE IF EXISTS `credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(10) unsigned NOT NULL,
  `card_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_month` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_year` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvv` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_cards`
--

LOCK TABLES `credit_cards` WRITE;
/*!40000 ALTER TABLE `credit_cards` DISABLE KEYS */;
INSERT INTO `credit_cards` VALUES (1,294,'','Maria Elizabeth','424242424242424242','07','22','456','2018-04-23 07:17:45','2018-04-23 11:21:36');
/*!40000 ALTER TABLE `credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_accounts`
--

DROP TABLE IF EXISTS `crm_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(200) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `business_number` varchar(200) DEFAULT NULL,
  `jobtitle` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `o` int(11) DEFAULT '0',
  `phone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `balance` decimal(16,2) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `notes` text,
  `options` text,
  `tags` text,
  `password` text,
  `token` text,
  `ts` text,
  `img` varchar(100) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `google` varchar(100) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `tax_number` varchar(100) DEFAULT NULL,
  `entity_number` varchar(100) DEFAULT NULL,
  `currency` int(11) DEFAULT '0',
  `pmethod` varchar(100) DEFAULT NULL,
  `autologin` varchar(100) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `lastloginip` varchar(100) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `isp` varchar(100) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `sid` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `country_idd` varchar(20) DEFAULT NULL,
  `signed_up_by` varchar(100) DEFAULT NULL,
  `signed_up_ip` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ct` varchar(200) DEFAULT NULL,
  `assistant` varchar(200) DEFAULT NULL,
  `asst_phone` varchar(100) DEFAULT NULL,
  `second_email` varchar(100) DEFAULT NULL,
  `second_phone` varchar(100) DEFAULT NULL,
  `taxexempt` varchar(50) DEFAULT NULL,
  `latefeeoveride` varchar(50) DEFAULT NULL,
  `overideduenotices` varchar(50) DEFAULT NULL,
  `separateinvoices` varchar(50) DEFAULT NULL,
  `disableautocc` varchar(50) DEFAULT NULL,
  `billingcid` int(10) NOT NULL DEFAULT '0',
  `securityqid` int(10) NOT NULL DEFAULT '0',
  `securityqans` text,
  `cardtype` varchar(200) DEFAULT NULL,
  `cardlastfour` varchar(20) DEFAULT NULL,
  `cardnum` text,
  `startdate` varchar(50) DEFAULT NULL,
  `expdate` varchar(50) DEFAULT NULL,
  `issuenumber` varchar(200) DEFAULT NULL,
  `bankname` varchar(200) DEFAULT NULL,
  `banktype` varchar(200) DEFAULT NULL,
  `bankcode` varchar(200) DEFAULT NULL,
  `bankacct` varchar(200) DEFAULT NULL,
  `gatewayid` int(10) NOT NULL DEFAULT '0',
  `language` text,
  `pwresetkey` varchar(100) DEFAULT NULL,
  `emailoptout` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pwresetexpiry` datetime DEFAULT NULL,
  `is_email_verified` int(1) NOT NULL DEFAULT '0',
  `is_phone_veirifed` int(1) NOT NULL DEFAULT '0',
  `photo_id_type` varchar(100) DEFAULT NULL,
  `photo_id` varchar(100) DEFAULT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'Customer',
  `drive` varchar(50) DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(100) DEFAULT NULL,
  `display_name` varchar(200) DEFAULT NULL,
  `secondary_email` varchar(200) DEFAULT NULL,
  `secondary_phone` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `crm_customfields`
--

DROP TABLE IF EXISTS `crm_customfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_customfields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ctype` text,
  `relid` int(10) NOT NULL DEFAULT '0',
  `fieldname` text,
  `fieldtype` text,
  `description` text,
  `fieldoptions` text,
  `regexpr` text,
  `adminonly` text,
  `required` text,
  `showorder` text,
  `showinvoice` text,
  `sorder` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_customfields`
--

LOCK TABLES `crm_customfields` WRITE;
/*!40000 ALTER TABLE `crm_customfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_customfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_customfieldsvalues`
--

DROP TABLE IF EXISTS `crm_customfieldsvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_customfieldsvalues` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fieldid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `fvalue` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_customfieldsvalues`
--

LOCK TABLES `crm_customfieldsvalues` WRITE;
/*!40000 ALTER TABLE `crm_customfieldsvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_customfieldsvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_groups`
--

DROP TABLE IF EXISTS `crm_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `parent` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `exempt` text,
  `description` text,
  `separateinvoices` text,
  `sorder` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_groups`
--

LOCK TABLES `crm_groups` WRITE;
/*!40000 ALTER TABLE `crm_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_industries`
--

DROP TABLE IF EXISTS `crm_industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_industries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `industry` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `sorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_industries`
--

LOCK TABLES `crm_industries` WRITE;
/*!40000 ALTER TABLE `crm_industries` DISABLE KEYS */;
INSERT INTO `crm_industries` VALUES (1,'Agriculture',1,0,0),(2,'Apparel',1,0,0),(3,'Banking',1,0,0),(4,'Biotechnology',1,0,0),(5,'Chemicals',1,0,0),(6,'Communications',1,0,0),(7,'Construction',1,0,0),(8,'Consulting',1,0,0),(9,'Education',1,0,0),(10,'Electronics',1,0,0),(11,'Energy',1,0,0),(12,'Engineering',1,0,0),(13,'Entertainment',1,0,0),(14,'Environmental',1,0,0),(15,'Finance',1,0,0),(16,'Food & Beverage',1,0,0),(17,'Government',1,0,0),(18,'Healthcare',1,0,0),(19,'Hospitality',1,0,0),(20,'Insurance',1,0,0),(21,'Machinery',1,0,0),(22,'Manufacturing',1,0,0),(23,'Media',1,0,0),(24,'Not For Profit',1,0,0),(25,'Other',1,0,0),(26,'Recreation',1,0,0),(27,'Retail',1,0,0),(28,'Shipping',1,0,0),(29,'Technology',1,0,0),(30,'Telecommunications',1,0,0),(31,'Transportation',1,0,0),(32,'Utilities',1,0,0);
/*!40000 ALTER TABLE `crm_industries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_lead_sources`
--

DROP TABLE IF EXISTS `crm_lead_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_lead_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '1',
  `sorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_lead_sources`
--

LOCK TABLES `crm_lead_sources` WRITE;
/*!40000 ALTER TABLE `crm_lead_sources` DISABLE KEYS */;
INSERT INTO `crm_lead_sources` VALUES (1,'Advertisement',1,1,0),(2,'Customer Event',1,1,0),(3,'Employee Referral',1,1,0),(4,'Google AdWords',1,1,0),(5,'Other',1,1,0),(6,'Partner',1,1,0),(7,'Purchased List',1,1,0),(8,'Trade Show',1,1,0),(9,'Webinar',1,1,0),(10,'Website',1,1,0),(11,'Facebook',1,1,0);
/*!40000 ALTER TABLE `crm_lead_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_lead_status`
--

DROP TABLE IF EXISTS `crm_lead_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_lead_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `is_converted` int(1) NOT NULL DEFAULT '0',
  `sorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_lead_status`
--

LOCK TABLES `crm_lead_status` WRITE;
/*!40000 ALTER TABLE `crm_lead_status` DISABLE KEYS */;
INSERT INTO `crm_lead_status` VALUES (1,'Unqualified',1,0,0,0),(2,'New',1,1,0,0),(3,'Working',1,0,0,0),(4,'Nurturing',1,0,0,0),(5,'Qualified',1,0,0,0);
/*!40000 ALTER TABLE `crm_lead_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_leads`
--

DROP TABLE IF EXISTS `crm_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secret` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `oid` int(11) NOT NULL DEFAULT '0',
  `salutation` varchar(200) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `middle_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `suffix` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `website` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `employees` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `viewed_at` datetime DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `sorder` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0',
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT '0',
  `ratings` varchar(50) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `lost` int(1) NOT NULL DEFAULT '0',
  `junk` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_leads`
--

LOCK TABLES `crm_leads` WRITE;
/*!40000 ALTER TABLE `crm_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_salutations`
--

DROP TABLE IF EXISTS `crm_salutations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_salutations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `sorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_salutations`
--

LOCK TABLES `crm_salutations` WRITE;
/*!40000 ALTER TABLE `crm_salutations` DISABLE KEYS */;
INSERT INTO `crm_salutations` VALUES (1,'Mr.',1,0,0),(2,'Ms.',1,0,0),(3,'Mrs.',1,0,0),(4,'Dr.',1,0,0),(5,'Prof.',1,0,0);
/*!40000 ALTER TABLE `crm_salutations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `department_id` int(10) unsigned DEFAULT NULL,
  `manager_id` int(10) unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16,8) NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_first` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_mi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name_last` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banking_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birht` date DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_citizen` tinyint(1) NOT NULL DEFAULT '1',
  `ethnicity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_i9_form` tinyint(1) DEFAULT NULL,
  `work_authorization_expires` date DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_phone_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_relation_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_phone_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_relation_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_day_worked` date DEFAULT NULL,
  `last_day_on_benefits` date DEFAULT NULL,
  `last_day_on_payroll` date DEFAULT NULL,
  `termination_type` date DEFAULT NULL,
  `termination_reason` date DEFAULT NULL,
  `is_recommended` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (2,'Jakub Swierczak','Customer Success Manager','2018-11-16',NULL,NULL,NULL,'Monthly','USD',7500.00000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'1101 Marina Villae Parkway, Suite 201',NULL,'Alameda','California','94501','United States','(650) 488-7772','Jakub@cloudonex.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'',NULL,'',NULL,'','His work motto is “If our customers are happy it means I’m doing a good job”. In his free time he’s improving his guitar skills and beginning his running adventure, hoping one day he will cross a marathon finish line.',NULL,'2018-11-16 05:12:15','2018-11-16 05:12:15');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_users`
--

DROP TABLE IF EXISTS `end_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `end_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_users`
--

LOCK TABLES `end_users` WRITE;
/*!40000 ALTER TABLE `end_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `end_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_types`
--

DROP TABLE IF EXISTS `expense_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_types`
--

LOCK TABLES `expense_types` WRITE;
/*!40000 ALTER TABLE `expense_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ib_assets`
--

DROP TABLE IF EXISTS `ib_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ib_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_name` varchar(200) DEFAULT NULL,
  `price` decimal(14,2) NOT NULL DEFAULT '0.00',
  `date_purchased` date DEFAULT NULL,
  `warranty_period` date DEFAULT NULL,
  `image` text,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ib_assets`
--

LOCK TABLES `ib_assets` WRITE;
/*!40000 ALTER TABLE `ib_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ib_doc_rel`
--

DROP TABLE IF EXISTS `ib_doc_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ib_doc_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rtype` varchar(100) NOT NULL DEFAULT 'contact',
  `rid` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `can_download` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ib_doc_rel`
--

LOCK TABLES `ib_doc_rel` WRITE;
/*!40000 ALTER TABLE `ib_doc_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_doc_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ib_invoice_access_log`
--

DROP TABLE IF EXISTS `ib_invoice_access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ib_invoice_access_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `customer` varchar(200) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `referer` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `country_iso` varchar(20) DEFAULT NULL,
  `viewed_at` varchar(200) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ib_invoice_access_log`
--

LOCK TABLES `ib_invoice_access_log` WRITE;
/*!40000 ALTER TABLE `ib_invoice_access_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_invoice_access_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ib_kb`
--

DROP TABLE IF EXISTS `ib_kb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ib_kb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `groups` text,
  `title` text,
  `slug` text,
  `description` text,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `is_public` int(1) NOT NULL DEFAULT '1',
  `sorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ib_kb`
--

LOCK TABLES `ib_kb` WRITE;
/*!40000 ALTER TABLE `ib_kb` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_kb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ib_kb_groups`
--

DROP TABLE IF EXISTS `ib_kb_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ib_kb_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(200) DEFAULT NULL,
  `description` text,
  `status` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ib_kb_groups`
--

LOCK TABLES `ib_kb_groups` WRITE;
/*!40000 ALTER TABLE `ib_kb_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_kb_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ib_kb_rel`
--

DROP TABLE IF EXISTS `ib_kb_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ib_kb_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kbid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ib_kb_rel`
--

LOCK TABLES `ib_kb_rel` WRITE;
/*!40000 ALTER TABLE `ib_kb_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_kb_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ib_kb_replies`
--

DROP TABLE IF EXISTS `ib_kb_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ib_kb_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kbid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `reply` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ib_kb_replies`
--

LOCK TABLES `ib_kb_replies` WRITE;
/*!40000 ALTER TABLE `ib_kb_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ib_kb_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_categories`
--

DROP TABLE IF EXISTS `item_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_categories`
--

LOCK TABLES `item_categories` WRITE;
/*!40000 ALTER TABLE `item_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `currency_symbol` varchar(20) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `unit_price` decimal(16,2) DEFAULT NULL,
  `tax_rate` decimal(16,2) DEFAULT NULL,
  `total` decimal(16,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relations`
--

DROP TABLE IF EXISTS `relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_accounts`
--

DROP TABLE IF EXISTS `sys_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_person` varchar(200) DEFAULT NULL,
  `contact_phone` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ib_url` varchar(200) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `notes` text,
  `sorder` int(11) DEFAULT NULL,
  `e` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `owner_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_accounts`
--

LOCK TABLES `sys_accounts` WRITE;
/*!40000 ALTER TABLE `sys_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_activity`
--

DROP TABLE IF EXISTS `sys_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `msg` text NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT '',
  `stime` varchar(50) NOT NULL,
  `sdate` date NOT NULL,
  `o` int(11) NOT NULL DEFAULT '0',
  `oname` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_activity`
--

LOCK TABLES `sys_activity` WRITE;
/*!40000 ALTER TABLE `sys_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_api`
--

DROP TABLE IF EXISTS `sys_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` text,
  `ip` text,
  `apikey` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_api`
--

LOCK TABLES `sys_api` WRITE;
/*!40000 ALTER TABLE `sys_api` DISABLE KEYS */;
INSERT INTO `sys_api` VALUES (1,'test','','krvgi8i1y5p169zf3yc3tzj0lmjmhm609rgaj14j');
/*!40000 ALTER TABLE `sys_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_appconfig`
--

DROP TABLE IF EXISTS `sys_appconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_appconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting` varchar(200) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_appconfig`
--

LOCK TABLES `sys_appconfig` WRITE;
/*!40000 ALTER TABLE `sys_appconfig` DISABLE KEYS */;
INSERT INTO `sys_appconfig` VALUES (1,'CompanyName','CloudOnex LLC.'),(29,'theme','default'),(37,'currency_code','$'),(56,'language','en'),(57,'show-logo','1'),(58,'nstyle','light_blue'),(63,'dec_point','.'),(64,'thousands_sep',','),(65,'timezone','America/New_York'),(66,'country','United States'),(67,'country_code','US'),(68,'df','Y-m-d'),(69,'caddress','CloudOnex <br>1101 Marina Villae Parkway, Suite 201<br>Alameda, California 94501<br>United State'),(70,'account_search','1'),(71,'redirect_url','dashboard'),(72,'rtl','0'),(73,'ckey','0982995697'),(74,'networth_goal','350000'),(75,'sysEmail','demo@example.com'),(76,'url_rewrite','0'),(77,'build','420'),(78,'animate','0'),(79,'pdf_font','dejavusanscondensed'),(80,'accounting','1'),(81,'invoicing','1'),(82,'quotes','1'),(83,'client_dashboard','1'),(84,'contact_set_view_mode','search'),(85,'invoice_terms',''),(86,'console_notify_invoice_created','0'),(87,'i_driver','v2'),(88,'purchase_key','B5VE-SNP4-KB15-1179-7948'),(89,'c_cache',''),(90,'mininav','0'),(91,'hide_footer','1'),(92,'design','default'),(93,'default_landing_page','login'),(94,'recaptcha','0'),(95,'recaptcha_sitekey',''),(96,'recaptcha_secretkey',''),(97,'home_currency','USD'),(98,'currency_decimal_digits','true'),(99,'currency_symbol_position','p'),(100,'thousand_separator_placement','3'),(101,'dashboard','canvas'),(102,'header_scripts',''),(103,'footer_scripts',''),(104,'ib_key','vLBLfhA6DNi1R2MFHO8IvFWr4Cn9665eHUF+L/sqAKM='),(105,'ib_s','PNhjeZ0sOFF3JNfzT2mLxvNNKPeh6ltqpE+G5LVSDSvgp/z79Sco7W4tJEoXYIl8'),(106,'ib_u_t','1512841700'),(107,'ib_u_a','0'),(108,'momentLocale','en'),(109,'contentAnimation','animated fadeIn'),(110,'calendar','1'),(111,'leads','1'),(112,'tasks','1'),(113,'orders','1'),(114,'show_quantity_as',''),(115,'gmap_api_key',''),(116,'license_key','5FEB-2E39-D4DF-24C0-5DF8-2090-AC98-5962'),(117,'local_key',''),(118,'ib_installed_at','1485170108'),(119,'maxmind_installed','1'),(120,'maxmind_db_version',''),(121,'add_fund','1'),(122,'add_fund_minimum_deposit','100'),(123,'add_fund_maximum_deposit','2500'),(124,'add_fund_maximum_balance','25000'),(125,'add_fund_require_active_order','0'),(126,'industry','default'),(127,'sales_target','10000'),(128,'inventory','1'),(129,'secondary_currency',''),(130,'customer_custom_username','1'),(131,'documents','1'),(132,'projects','0'),(133,'purchase','1'),(134,'suppliers','1'),(135,'support','1'),(136,'hrm','1'),(137,'companies','1'),(138,'plugins','1'),(139,'country_flag_code','us'),(140,'graph_primary_color','002868'),(141,'graph_secondary_color','dc171d'),(142,'expense_type_1','Personal'),(143,'expense_type_2','Business'),(144,'edition','default'),(147,'assets','1'),(148,'kb','1'),(149,'business_id_1',''),(150,'business_id_2',''),(151,'logo_default','logo_2105025689.png'),(152,'logo_inverse','logo_inverse_7627893866.png'),(153,'add_fund_client','1'),(154,'order_method','default'),(155,'purchase_code',''),(156,'invoice_receipt_number','0'),(157,'allow_customer_registration','1'),(158,'fax_field','0'),(159,'show_business_number','1'),(160,'label_business_number','Business Number'),(161,'sms','1'),(162,'sms_request_method','POST'),(163,'sms_auth_header',''),(164,'sms_req_url',''),(165,'sms_notify_admin_new_deposit','0'),(166,'sms_notify_customer_signed_up','0'),(167,'sms_notify_customer_invoice_created','0'),(168,'sms_notify_customer_invoice_paid','0'),(169,'sms_notify_customer_payment_received','0'),(170,'sms_api_handler','Nexmo'),(171,'sms_auth_username',''),(172,'sms_auth_password',''),(173,'sms_sender_name','CLX'),(175,'sms_http_params',''),(176,'purchase_invoice_payment_status','0'),(177,'quote_confirmation_email','1'),(178,'client_drive','1'),(179,'s_version','7'),(180,'latest_file','4618152936941418.zip'),(181,'invoice_show_watermark','1'),(183,'show_country_flag','0'),(184,'drive','0'),(185,'tax_system','default'),(186,'pos','1'),(187,'password_manager','default'),(188,'update_manager','1'),(189,'app_credentials','0'),(190,'business_location',''),(191,'hr','1'),(192,'mailgun_api_key',''),(193,'sparkpost_api_key',''),(194,'mailgun_domain',''),(195,'show_sidebar_header','1'),(196,'top_bar_is_dark','1'),(198,'slack_webhook_url',''),(199,'config_recaptcha_in_client_login','0'),(200,'config_recaptcha_in_admin_login','0'),(201,'contact_list_show_company_column','0'),(202,'config_contact_list_show_group_column','1'),(203,'contact_list_show_group_column','0'),(208,'tickets_assigned_sms_notification','1'),(209,'number_pad','5'),(210,'customer_code_prefix','CUS-'),(211,'customer_code_template',''),(212,'customer_code_current_number','2'),(213,'supplier_code_prefix','SUP-'),(214,'supplier_code_template',''),(215,'supplier_code_current_number','1'),(216,'income_code_prefix','INC-'),(217,'income_code_template',''),(218,'income_code_current_number','1'),(219,'expense_code_prefix','EXP-'),(220,'expense_code_template',''),(221,'expense_code_current_number','1'),(222,'invoice_code_prefix','INV-'),(223,'invoice_code_template',''),(224,'invoice_code_current_number','1'),(225,'quotation_code_prefix','QUOTE-'),(226,'quotation_code_template',''),(227,'quotation_code_current_number','1'),(228,'purchase_code_prefix','PO-'),(229,'purchase_code_template',''),(230,'purchase_code_current_number','1'),(231,'contact_display_name_string','Display Name'),(232,'contact_extra_field','Display Name'),(233,'company_code_prefix','COMP-'),(234,'company_code_template',''),(235,'company_code_current_number','1'),(236,'ticket_code_prefix',''),(237,'ticket_code_template',''),(238,'ticket_code_current_number','');
/*!40000 ALTER TABLE `sys_appconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_canned_responses`
--

DROP TABLE IF EXISTS `sys_canned_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_canned_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `message` text,
  `tags` text,
  `attachments` text,
  `sorder` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_canned_responses`
--

LOCK TABLES `sys_canned_responses` WRITE;
/*!40000 ALTER TABLE `sys_canned_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_canned_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_cart`
--

DROP TABLE IF EXISTS `sys_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secret` varchar(100) DEFAULT NULL,
  `items` text,
  `total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `ip` varchar(100) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `currency` varchar(200) DEFAULT NULL,
  `language` varchar(200) DEFAULT NULL,
  `coupon` varchar(200) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `lid` int(11) NOT NULL DEFAULT '0',
  `currency_id` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_cart`
--

LOCK TABLES `sys_cart` WRITE;
/*!40000 ALTER TABLE `sys_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_cats`
--

DROP TABLE IF EXISTS `sys_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` enum('Income','Expense') NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0',
  `total_amount` decimal(16,4) DEFAULT '0.0000',
  `budget` decimal(16,4) DEFAULT '0.0000',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `total_spend` decimal(16,4) DEFAULT '0.0000',
  `current_month_spend` decimal(16,4) DEFAULT '0.0000',
  `current_year_spend` decimal(16,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_cats`
--

LOCK TABLES `sys_cats` WRITE;
/*!40000 ALTER TABLE `sys_cats` DISABLE KEYS */;
INSERT INTO `sys_cats` VALUES (14,'Advertising','Expense',1,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(15,'Bank and Credit Card Interest','Expense',23,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(16,'Car and Truck','Expense',24,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(17,'Commissions and Fees','Expense',25,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(18,'Contract Labor','Expense',26,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(19,'Contributions','Expense',27,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(20,'Cost of Goods Sold','Expense',28,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(21,'Credit Card Interest','Expense',29,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(22,'Depreciation','Expense',31,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(23,'Dividend Payments','Expense',32,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(24,'Employee Benefit Programs','Expense',33,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(25,'Entertainment','Expense',34,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(26,'Gift','Expense',35,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(27,'Insurance','Expense',36,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(28,'Legal, Accountant &amp; Other Professional Services','Expense',37,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(29,'Meals','Expense',38,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(30,'Mortgage Interest','Expense',39,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(31,'Non-Deductible Expense','Expense',40,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(33,'Other Business Property Leasing','Expense',22,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(34,'Owner Draws','Expense',21,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(35,'Payroll Taxes','Expense',8,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(37,'Phone','Expense',9,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(38,'Postage','Expense',10,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(39,'Rent','Expense',12,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(40,'Repairs &amp; Maintenance','Expense',11,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(41,'Supplies','Expense',13,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(42,'Taxes and Licenses','Expense',14,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(43,'Transfer Funds','Expense',15,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(44,'Travel','Expense',16,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(45,'Utilities','Expense',17,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(46,'Vehicle, Machinery &amp; Equipment Rental or Leasing','Expense',18,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(47,'Wages','Expense',19,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(48,'Regular Income','Income',1,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(49,'Owner Contribution','Income',12,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(50,'Interest Income','Income',11,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(51,'Expense Refund','Income',10,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(52,'Other Income','Income',9,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(53,'Salary','Income',8,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(54,'Equities','Income',7,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(55,'Rent &amp; Royalties','Income',6,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(56,'Home equity','Income',5,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(57,'Part Time Work','Income',3,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(58,'Account Transfer','Income',4,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(60,'Health Care','Expense',20,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(63,'Loans','Expense',30,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(64,'Selling Software','Income',2,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(65,'Software Customization','Income',13,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(67,'Salary','Expense',7,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(68,'Paypal','Expense',6,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(69,'Office Equipment','Expense',5,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(70,'Staff Entertaining','Expense',3,0.0000,0.0000,NULL,'2018-11-20 16:57:47',0.0000,0.0000,0.0000),(71,'Uncategorized','Income',0,0.0000,0.0000,'2018-04-05 04:59:50','2018-11-20 16:57:47',0.0000,0.0000,0.0000);
/*!40000 ALTER TABLE `sys_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_companies`
--

DROP TABLE IF EXISTS `sys_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `business_number` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `logo_url` varchar(200) DEFAULT NULL,
  `logo_path` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `emails` text,
  `phones` text,
  `tags` text,
  `description` text,
  `notes` text,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `ratings` varchar(50) DEFAULT NULL,
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `c1` text,
  `c2` text,
  `c3` text,
  `c4` text,
  `c5` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_companies`
--

LOCK TABLES `sys_companies` WRITE;
/*!40000 ALTER TABLE `sys_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_currencies`
--

DROP TABLE IF EXISTS `sys_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) DEFAULT NULL,
  `iso_code` varchar(10) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `rate` decimal(16,8) NOT NULL DEFAULT '1.00000000',
  `prefix` varchar(20) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `decimal_separator` varchar(10) DEFAULT NULL,
  `thousand_separator` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `available_in` text,
  `isdefault` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_currencies`
--

LOCK TABLES `sys_currencies` WRITE;
/*!40000 ALTER TABLE `sys_currencies` DISABLE KEYS */;
INSERT INTO `sys_currencies` VALUES (1,'USD','USD','$',1.00000000,NULL,NULL,NULL,NULL,NULL,'2018-11-20 16:57:47',NULL,'2018-11-20 16:57:47',NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `sys_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_documents`
--

DROP TABLE IF EXISTS `sys_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `file_o_name` varchar(200) DEFAULT NULL,
  `file_r_name` varchar(200) DEFAULT NULL,
  `file_mime_type` varchar(200) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `file_dl_token` varchar(200) DEFAULT NULL,
  `file_owner` int(11) NOT NULL DEFAULT '0',
  `version` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `sha1` varchar(40) DEFAULT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `contacts` text,
  `deals` text,
  `leads` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `customer_can_download` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `is_global` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_documents`
--

LOCK TABLES `sys_documents` WRITE;
/*!40000 ALTER TABLE `sys_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_email_logs`
--

DROP TABLE IF EXISTS `sys_email_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_email_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `iid` int(11) NOT NULL DEFAULT '0',
  `rel_type` varchar(100) DEFAULT NULL,
  `rel_id` int(11) NOT NULL DEFAULT '0',
  `purchase_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_email_logs`
--

LOCK TABLES `sys_email_logs` WRITE;
/*!40000 ALTER TABLE `sys_email_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_email_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_email_templates`
--

DROP TABLE IF EXISTS `sys_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tplname` varchar(128) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `send` varchar(50) DEFAULT 'Active',
  `core` enum('Yes','No') DEFAULT 'Yes',
  `hidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`,`language_id`),
  KEY `tplname` (`tplname`(32))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_email_templates`
--

LOCK TABLES `sys_email_templates` WRITE;
/*!40000 ALTER TABLE `sys_email_templates` DISABLE KEYS */;
INSERT INTO `sys_email_templates` VALUES (3,'Invoice:Invoice Created',1,'{{business_name}} Invoice','<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This email serves as your official invoice from <strong>{{business_name}}. </strong>	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>','Yes','Yes',0),(7,'Admin:Password Change Request',1,'{{business_name}} password change request','<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Hi {{name}},</div>	<div style=\"padding:5px\">		This is to confirm that we have received a Forgot Password request for your Account Username - {{username}} <br>From the IP Address - {{ip_address}}	</div>	<div style=\"padding:5px\">		Click this linke to reset your password- <br><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{password_reset_link}}\">{{password_reset_link}}</a>	</div><div style=\"padding:5px\">Please note: until your password has been changed, your current password will remain valid. The Forgot Password Link will be available for a limited time only.</div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>','Yes','Yes',0),(10,'Admin:New Password',1,'{{business_name}} New Password for Admin','<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding:5px;font-size:11pt;font-weight:bold\">\n   Hello {{name}}\n</div>\n\n\n	<div style=\"padding:5px\">\n		Here is your new password for <strong>{{business_name}}. </strong>\n	</div>\n\n	\n<div style=\"padding:10px 5px\">\n    Log in URL: <a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{login_url}}\">{{login_url}}</a><br>Username: {{username}}<br>Password: {{password}}</div>\n\n<div style=\"padding:5px\">For security reason, Please change your password after login. </div>\n\n<div style=\"padding:0px 5px\">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n</div>\n\n</div>','Yes','Yes',0),(12,'Invoice:Invoice Payment Reminder',1,'{{business_name}} Invoice Payment Reminder','<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is a billing reminder that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is due on {{invoice_due_date}}. 	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>','Yes','Yes',0),(13,'Invoice:Invoice Overdue Notice',1,'{{business_name}} Invoice Overdue Notice','<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is the notice that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is now overdue.	</div>	<div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>','Yes','Yes',0),(14,'Invoice:Invoice Payment Confirmation',1,'{{business_name}} Invoice Payment Confirmation','<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding:5px;font-size:11pt;font-weight:bold\">\n   Greetings,\n</div>\n\n\n\n	<div style=\"padding:5px\">\n		This is a payment receipt for Invoice {{invoice_id}} sent on {{invoice_date}}.\n	</div>\n\n\n	<div style=\"padding:5px\">\n		Login to your client Portal to view this invoice.\n	</div>\n\n\n<div style=\"padding:10px 5px\">\n    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div>\n\n\n<div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div>\n\n\n<div style=\"padding:0px 5px\">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n\n</div>\n\n\n</div>','Yes','Yes',0),(15,'Invoice:Invoice Refund Confirmation',1,'{{business_name}} Invoice Refund Confirmation','<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is confirmation that a refund has been processed for Invoice {{invoice_id}} sent on {{invoice_date}}.	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>','Yes','Yes',0),(16,'Quote:Quote Created',1,'{{quote_subject}}','<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		Dear {{contact_name}},&nbsp;<br> Here is the quote you requested for.  The quote is valid until {{valid_until}}.	</div><div style=\"padding:10px 5px\">    Quote Unique URL: <a href=\"{{quote_url}}\" target=\"_blank\">{{quote_url}}</a><br></div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>','Yes','Yes',0),(17,'Client:Client Signup Email',1,'Your {{business_name}} Login Info','<p>Dear {{client_name}},</p>\n<p>Welcome to {{business_name}}.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: {{client_login_url}} <br />Email Address: {{client_email}}<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>{{business_name}} Team</p>','Yes','Yes',0),(18,'Tickets:Client Ticket Created',1,'{{subject}}','<p>{{client_name}},</p>\n<p>Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email. Your ticket ID is {{ticket_id}} and a copy of your original message is included below.</p>\n<p>Subject: {{ticket_subject}} <br /> Message: <br /> {{message}} <br /> Priority: {{ticket_priority}} <br /> Status: {{ticket_status}}</p>\n<p>You can view the ticket at any time at {{ticket_link}}</p>','Yes','Yes',0),(19,'Tickets:Admin Ticket Created',1,'{{subject}}','<p>{{admin_view_link}}</p> {{message}}','Yes','Yes',0),(20,'Tickets:Client Response',1,'{{subject}}','<p>{{ticket_message}}</p>\n<p>----------------------------------------------<br /> Ticket ID: #{{ticket_id}}<br /> Subject: {{ticket_subject}}<br /> Status: {{ticket_status}}<br /> Ticket URL: {{ticket_link}}<br /> ----------------------------------------------</p>','Yes','Yes',0),(21,'Tickets:Admin Response',1,'{{subject}}','<p>{{ticket_message}}</p>\n<p>----------------------------------------------<br /> Ticket ID: #{{ticket_id}}<br /> Subject: {{ticket_subject}}<br /> Status: {{ticket_status}}<br /> Ticket URL: {{ticket_link}}<br /> ----------------------------------------------</p>','Yes','Yes',0),(23,'Purchase Invoice:Invoice Created',1,'{{business_name}} Invoice','<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,\'droid sans\',\'lucida sans\',sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">This email serves as your official invoice from <strong>{{business_name}}. </strong></div>\n<div style=\"padding: 10px 5px;\">Invoice URL: {{invoice_url}}<br />Invoice ID: {{invoice_id}}<br />Invoice Amount: {{invoice_amount}}</div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>','Yes','Yes',0),(24,'Quote:Quote Cancelled',1,'{{business_name}} Quote','<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">Dear {{contact_name}},&nbsp;<br />We are sorry to see you go. If you chnage your mind, you can Accept it again from following url. The quote is valid until {{valid_until}}.</div>\n<div style=\"padding: 10px 5px;\">Quote Unique URL: <a href=\"http://stackb.dev/{{quote_url}}\" target=\"_blank\" rel=\"noopener noreferrer\">{{quote_url}}</a></div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>','Yes','Yes',0),(25,'Quote:Quote Accepted',1,'{{business_name}} Quote','<div style=\"line-height: 1.6; color: #222; text-align: left; width: 550px; font-size: 10pt; margin: 0px 10px; font-family: verdana,sans-serif; padding: 14px; border: 3px solid #d8d8d8; border-top: 3px solid #007bc3;\">\n<div style=\"padding: 5px; font-size: 11pt; font-weight: bold;\">Greetings,</div>\n<div style=\"padding: 5px;\">Dear {{contact_name}},&nbsp;<br />Thank you for accepting the Quote.</div>\n<div style=\"padding: 10px 5px;\">Quote: <a href=\"{{quote_url}}\" target=\"_blank\" rel=\"noopener noreferrer\">{{quote_url}}</a></div>\n<div style=\"padding: 5px;\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span></div>\n<div style=\"padding: 0px 5px;\">\n<div>Best Regards,<br />{{business_name}} Team</div>\n</div>\n</div>','Yes','Yes',0);
/*!40000 ALTER TABLE `sys_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_emailconfig`
--

DROP TABLE IF EXISTS `sys_emailconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_emailconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(50) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `apikey` varchar(200) NOT NULL,
  `port` varchar(10) NOT NULL,
  `secure` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_emailconfig`
--

LOCK TABLES `sys_emailconfig` WRITE;
/*!40000 ALTER TABLE `sys_emailconfig` DISABLE KEYS */;
INSERT INTO `sys_emailconfig` VALUES (1,'phpmail','','','','','','');
/*!40000 ALTER TABLE `sys_emailconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_events`
--

DROP TABLE IF EXISTS `sys_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `contacts` text,
  `deals` text,
  `owner` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `etype` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `allday` int(1) NOT NULL DEFAULT '0',
  `notification` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_events`
--

LOCK TABLES `sys_events` WRITE;
/*!40000 ALTER TABLE `sys_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_invoiceitems`
--

DROP TABLE IF EXISTS `sys_invoiceitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_invoiceitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `tax_code` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `taxed` int(1) NOT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `tax_rate` decimal(16,3) DEFAULT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax1` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax2` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax3` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `discount_type` varchar(100) DEFAULT NULL,
  `discount_amount` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(14,2) NOT NULL DEFAULT '0.00',
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_invoiceitems`
--

LOCK TABLES `sys_invoiceitems` WRITE;
/*!40000 ALTER TABLE `sys_invoiceitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_invoiceitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_invoices`
--

DROP TABLE IF EXISTS `sys_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `account` varchar(200) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime DEFAULT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxname` varchar(100) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `tax_total` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(18,2) NOT NULL DEFAULT '0.00',
  `taxrate` decimal(10,2) NOT NULL,
  `taxrate2` decimal(10,2) NOT NULL,
  `status` text NOT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT '0',
  `ename` varchar(200) NOT NULL DEFAULT '',
  `vid` int(11) NOT NULL DEFAULT '0',
  `quote_id` int(11) NOT NULL DEFAULT '0',
  `ticket_id` int(11) DEFAULT '0',
  `currency` int(11) NOT NULL DEFAULT '0',
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT '1.0000',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_ends` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `last_overdue_reminder` date DEFAULT NULL,
  `allowed_payment_methods` text,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(50) DEFAULT NULL,
  `billing_country` varchar(100) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` varchar(100) DEFAULT NULL,
  `q_hide` tinyint(1) NOT NULL DEFAULT '0',
  `show_quantity_as` varchar(100) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `is_credit_invoice` int(1) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `aname` varchar(200) DEFAULT NULL,
  `receipt_number` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `c3` varchar(255) DEFAULT NULL,
  `c4` varchar(255) DEFAULT NULL,
  `c5` text,
  `signature_data_source` text,
  `signature_data_base64` text,
  `signature_data_svg` text,
  `is_same_state` tinyint(1) DEFAULT '1',
  `code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`(3))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_invoices`
--

LOCK TABLES `sys_invoices` WRITE;
/*!40000 ALTER TABLE `sys_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_item_cats`
--

DROP TABLE IF EXISTS `sys_item_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_item_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `description` text,
  `sorder` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_item_cats`
--

LOCK TABLES `sys_item_cats` WRITE;
/*!40000 ALTER TABLE `sys_item_cats` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_item_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_items`
--

DROP TABLE IF EXISTS `sys_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `unit` varchar(100) NOT NULL DEFAULT '',
  `sales_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `inventory` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `weight` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `width` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `length` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `height` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sku` varchar(50) DEFAULT NULL,
  `upc` varchar(50) DEFAULT NULL,
  `ean` varchar(50) DEFAULT NULL,
  `mpn` varchar(50) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `sid` int(11) NOT NULL DEFAULT '0',
  `supplier` varchar(200) DEFAULT NULL,
  `bid` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(200) DEFAULT NULL,
  `sell_account` int(11) NOT NULL DEFAULT '0',
  `purchase_account` int(11) NOT NULL DEFAULT '0',
  `inventory_account` int(11) NOT NULL DEFAULT '0',
  `taxable` int(1) NOT NULL DEFAULT '0',
  `location` varchar(200) DEFAULT NULL,
  `item_number` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` enum('Service','Product') NOT NULL,
  `track_inventroy` enum('Yes','No') NOT NULL DEFAULT 'No',
  `negative_stock` enum('Yes','No') NOT NULL DEFAULT 'No',
  `available` int(11) NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added` date DEFAULT NULL,
  `last_sold` date DEFAULT NULL,
  `e` mediumtext NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `gname` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `expire_days` int(11) NOT NULL DEFAULT '0',
  `image` text,
  `flag` int(1) NOT NULL DEFAULT '0',
  `is_service` int(1) NOT NULL DEFAULT '0',
  `commission_percent` decimal(16,2) NOT NULL DEFAULT '0.00',
  `commission_percent_type` varchar(100) DEFAULT NULL,
  `commission_fixed` decimal(16,2) NOT NULL DEFAULT '0.00',
  `trash` int(1) NOT NULL DEFAULT '0',
  `payterm` varchar(200) DEFAULT NULL,
  `cost_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `promo_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `setup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `onetime` decimal(16,2) NOT NULL DEFAULT '0.00',
  `monthly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `monthlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quarterly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quarterlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `halfyearly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `halfyearlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `annually` decimal(16,2) NOT NULL DEFAULT '0.00',
  `annuallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `biennially` decimal(16,2) NOT NULL DEFAULT '0.00',
  `bienniallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `triennially` decimal(16,2) NOT NULL DEFAULT '0.00',
  `trienniallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `has_domain` varchar(100) DEFAULT NULL,
  `free_domain` varchar(100) DEFAULT NULL,
  `email_rel` int(11) NOT NULL DEFAULT '0',
  `tags` text,
  `sold_count` decimal(16,4) DEFAULT '0.0000',
  `total_amount` decimal(16,4) DEFAULT '0.0000',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tax_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_items`
--

LOCK TABLES `sys_items` WRITE;
/*!40000 ALTER TABLE `sys_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_leads`
--

DROP TABLE IF EXISTS `sys_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `sorder` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT '0',
  `ratings` varchar(50) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `lost` int(1) NOT NULL DEFAULT '0',
  `junk` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_leads`
--

LOCK TABLES `sys_leads` WRITE;
/*!40000 ALTER TABLE `sys_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logs`
--

DROP TABLE IF EXISTS `sys_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ip` text NOT NULL,
  `related_to` varchar(100) DEFAULT NULL,
  `related_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logs`
--

LOCK TABLES `sys_logs` WRITE;
/*!40000 ALTER TABLE `sys_logs` DISABLE KEYS */;
INSERT INTO `sys_logs` VALUES (1,'2019-11-25 09:10:25','Admin','Login Successful admin@admin.com',1,'109.233.19.41',NULL,NULL),(2,'2019-11-25 09:11:03','Admin','New Contact Added anwar sbeit [CID: 1]',1,'109.233.19.41',NULL,NULL),(3,'2019-11-25 09:12:22','Client','Autologin Successful',1,'109.233.19.41',NULL,NULL),(4,'2019-11-26 11:38:14','Admin','Login Successful admin@admin.com',1,'93.126.210.153',NULL,NULL);
/*!40000 ALTER TABLE `sys_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_orders`
--

DROP TABLE IF EXISTS `sys_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordernum` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `sales_person` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_expiry` date DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `stitle` varchar(200) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `recurring` decimal(16,2) NOT NULL DEFAULT '0.00',
  `setup_fee` decimal(16,2) NOT NULL DEFAULT '0.00',
  `billing_cycle` text,
  `addon_ids` text,
  `related_orders` text,
  `description` text,
  `upgrade_ids` text,
  `xdata` text,
  `xsecret` varchar(100) DEFAULT NULL,
  `promo_code` text,
  `promo_type` text,
  `promo_value` text,
  `payment_method` text,
  `ipaddress` text,
  `fraud_module` text,
  `fraud_output` text,
  `activation_subject` text,
  `activation_message` text,
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `c1` text,
  `c2` text,
  `c3` text,
  `c4` text,
  `c5` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_orders`
--

LOCK TABLES `sys_orders` WRITE;
/*!40000 ALTER TABLE `sys_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_permissions`
--

DROP TABLE IF EXISTS `sys_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(200) DEFAULT NULL,
  `shortname` varchar(200) DEFAULT NULL,
  `available` int(1) NOT NULL DEFAULT '0',
  `core` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permissions`
--

LOCK TABLES `sys_permissions` WRITE;
/*!40000 ALTER TABLE `sys_permissions` DISABLE KEYS */;
INSERT INTO `sys_permissions` VALUES (1,'Customers','customers',0,1),(2,'Companies','companies',0,1),(3,'Transactions','transactions',0,1),(4,'Sales','sales',0,1),(5,'Bank & Cash','bank_n_cash',0,1),(6,'Products & Services','products_n_services',0,1),(7,'Reports','reports',0,1),(8,'Utilities','utilities',0,1),(9,'Appearance','appearance',0,1),(10,'Plugins','plugins',0,1),(11,'Calendar','calendar',0,1),(12,'Leads','leads',0,1),(13,'Tasks','tasks',0,1),(14,'Contracts','contracts',0,1),(15,'Orders','orders',0,1),(16,'Settings','settings',0,1),(17,'Documents','documents',0,1),(18,'Purchase','purchase',0,1),(19,'Suppliers','suppliers',0,1),(20,'SMS','sms',0,1),(21,'Support','support',0,1),(22,'Knowledgebase','kb',0,1),(23,'Password Manager','password_manager',0,1),(24,'HRM','hr',0,1);
/*!40000 ALTER TABLE `sys_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_pg`
--

DROP TABLE IF EXISTS `sys_pg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_pg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `settings` text NOT NULL,
  `value` text NOT NULL,
  `processor` text NOT NULL,
  `ins` text NOT NULL,
  `c1` text NOT NULL,
  `c2` text NOT NULL,
  `c3` text NOT NULL,
  `c4` text NOT NULL,
  `c5` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `sorder` int(2) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `mode` varchar(200) DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gateway_setting` (`name`(32),`processor`(32)),
  KEY `setting_value` (`processor`(32),`ins`(32))
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_pg`
--

LOCK TABLES `sys_pg` WRITE;
/*!40000 ALTER TABLE `sys_pg` DISABLE KEYS */;
INSERT INTO `sys_pg` VALUES (1,'Paypal','Paypal Email','demo@example.com','paypal','Invoices','USD','1','','','','Inactive',2,NULL,'',NULL,NULL,NULL),(2,'Stripe','API Key','sk_test_ARblMczqDw61NusMMs7o1RVK','stripe','','USD','','','','','Inactive',3,NULL,'',NULL,NULL,NULL),(3,'Bank / Cash','Instructions','Make a Payment to Our Bank Account <br>Bank Name: City Bank <br>Account Name: Sadia Sharmin <br>Account Number: 1505XXXXXXXX <br>','manualpayment','','','','','','','Inactive',4,NULL,'',NULL,NULL,NULL),(4,'Authorize.net','API_LOGIN_ID','Insert API Login ID here','authorize_net','','Insert Transaction Key Here','','','','','Inactive',5,NULL,'',NULL,NULL,NULL),(5,'Braintree','Merchant ID','your merchant id','braintree','','your public key','your private key','bank account','sandbox','','Inactive',6,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_pg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_pl`
--

DROP TABLE IF EXISTS `sys_pl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_pl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `sorder` int(11) NOT NULL DEFAULT '0',
  `build` int(10) DEFAULT '1',
  `c1` text,
  `c2` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_pl`
--

LOCK TABLES `sys_pl` WRITE;
/*!40000 ALTER TABLE `sys_pl` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_pl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_pmethods`
--

DROP TABLE IF EXISTS `sys_pmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_pmethods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_pmethods`
--

LOCK TABLES `sys_pmethods` WRITE;
/*!40000 ALTER TABLE `sys_pmethods` DISABLE KEYS */;
INSERT INTO `sys_pmethods` VALUES (1,'Cash',1),(2,'Check',4),(3,'Credit Card',5),(4,'Debit',6),(5,'Electronic Transfer',7),(9,'Paypal',2),(10,'ATM Withdrawals',3),(11,'Pagseguro',1);
/*!40000 ALTER TABLE `sys_pmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_purchaseitems`
--

DROP TABLE IF EXISTS `sys_purchaseitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_purchaseitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `tax_code` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `taxed` int(1) NOT NULL,
  `tax_rate` decimal(16,2) DEFAULT NULL,
  `tax_name` varchar(200) DEFAULT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax1` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax2` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax3` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `discount_type` varchar(100) DEFAULT NULL,
  `discount_amount` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(14,2) NOT NULL DEFAULT '0.00',
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_purchaseitems`
--

LOCK TABLES `sys_purchaseitems` WRITE;
/*!40000 ALTER TABLE `sys_purchaseitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_purchaseitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_purchases`
--

DROP TABLE IF EXISTS `sys_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_purchases` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `supplier_id` int(10) DEFAULT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `account` varchar(200) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime DEFAULT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxname` varchar(100) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `tax2` decimal(10,2) DEFAULT NULL,
  `tax1_total` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax2_total` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax3_total` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `tax_total` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(18,2) NOT NULL DEFAULT '0.00',
  `taxrate` decimal(10,2) DEFAULT NULL,
  `taxrate2` decimal(10,2) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT '0',
  `ename` varchar(200) NOT NULL DEFAULT '',
  `vid` int(11) NOT NULL DEFAULT '0',
  `currency` int(11) NOT NULL DEFAULT '0',
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT '1.0000',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_ends` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `last_overdue_reminder` date DEFAULT NULL,
  `allowed_payment_methods` text,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(50) DEFAULT NULL,
  `billing_country` varchar(100) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` varchar(100) DEFAULT NULL,
  `q_hide` tinyint(1) NOT NULL DEFAULT '0',
  `show_quantity_as` varchar(100) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `is_credit_invoice` int(1) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `aname` varchar(200) DEFAULT NULL,
  `receipt_number` varchar(200) DEFAULT NULL,
  `stage` varchar(200) DEFAULT 'Pending',
  `subject` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_purchases`
--

LOCK TABLES `sys_purchases` WRITE;
/*!40000 ALTER TABLE `sys_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_quoteitems`
--

DROP TABLE IF EXISTS `sys_quoteitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_quoteitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `qid` int(10) NOT NULL,
  `itemcode` text NOT NULL,
  `description` text NOT NULL,
  `qty` text NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `taxable` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_quoteitems`
--

LOCK TABLES `sys_quoteitems` WRITE;
/*!40000 ALTER TABLE `sys_quoteitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_quoteitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_quotes`
--

DROP TABLE IF EXISTS `sys_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_quotes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  `stage` enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') NOT NULL,
  `validuntil` date NOT NULL,
  `userid` int(10) NOT NULL,
  `invoicenum` text NOT NULL,
  `cn` text NOT NULL,
  `account` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `companyname` text NOT NULL,
  `email` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `phonenumber` text NOT NULL,
  `currency` int(10) NOT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` text NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `taxname` text NOT NULL,
  `taxrate` decimal(10,2) NOT NULL,
  `tax1` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `proposal` text NOT NULL,
  `customernotes` text NOT NULL,
  `adminnotes` text NOT NULL,
  `datecreated` date NOT NULL,
  `lastmodified` date NOT NULL,
  `datesent` date NOT NULL,
  `dateaccepted` date NOT NULL,
  `vtoken` text NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_quotes`
--

LOCK TABLES `sys_quotes` WRITE;
/*!40000 ALTER TABLE `sys_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles`
--

DROP TABLE IF EXISTS `sys_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles`
--

LOCK TABLES `sys_roles` WRITE;
/*!40000 ALTER TABLE `sys_roles` DISABLE KEYS */;
INSERT INTO `sys_roles` VALUES (3,'Employee'),(4,'Support'),(5,'Reseller');
/*!40000 ALTER TABLE `sys_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_sales`
--

DROP TABLE IF EXISTS `sys_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `oname` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `term` varchar(100) NOT NULL,
  `milestone` varchar(100) NOT NULL,
  `p` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `open` date NOT NULL,
  `close` date NOT NULL,
  `status` enum('New','In Progress','Won','Lost') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_sales`
--

LOCK TABLES `sys_sales` WRITE;
/*!40000 ALTER TABLE `sys_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_schedule`
--

DROP TABLE IF EXISTS `sys_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` mediumtext NOT NULL,
  `val` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_schedule`
--

LOCK TABLES `sys_schedule` WRITE;
/*!40000 ALTER TABLE `sys_schedule` DISABLE KEYS */;
INSERT INTO `sys_schedule` VALUES (1,'accounting_snapshot','Active'),(2,'recurring_invoice','Active'),(3,'notify','Active'),(4,'notifyemail','demo@example.com');
/*!40000 ALTER TABLE `sys_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_schedulelogs`
--

DROP TABLE IF EXISTS `sys_schedulelogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_schedulelogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `logs` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_schedulelogs`
--

LOCK TABLES `sys_schedulelogs` WRITE;
/*!40000 ALTER TABLE `sys_schedulelogs` DISABLE KEYS */;
INSERT INTO `sys_schedulelogs` VALUES (4,'2015-03-14','2015-03-14 20:17:15 : Schedule Jobs Started....... <br>2015-03-14 20:17:15 : Creating Accounting Snapshot <br>2015-03-14 20:17:15 : Accounting Snapshot created! <br>=============== Accounting Snaphsot ==================== <br>Accounting Snaphsot - Date: 2015-03-13<br>Total Income: Tk. 0.00<br>Total Expense: Tk. 0.00<br>================================================== <br>2015-03-14 20:17:15 : Creating Recurring Invoice <br>2015-03-14 20:17:15 : 1 Invoice created! <br>================================================== <br>'),(5,'2018-07-24','================================================== <br>2018-07-24 13:27:38 : Schedule Jobs Started....... <br>2018-07-24 13:27:38 : Creating Accounting Snapshot <br>2018-07-24 13:27:38 : Accounting Snapshot created! <br>=============== Accounting Snaphsot ==================== <br>Accounting Snaphsot - Date: 2018-07-23<br>Total Income: $ 13,800.00<br>Total Expense: $ 0.00<br>================================================== <br>2018-07-24 13:27:38 : Creating Recurring Invoice <br>2018-07-24 13:27:38 : 0 Invoice created! <br>================================================== <br>');
/*!40000 ALTER TABLE `sys_schedulelogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_staffpermissions`
--

DROP TABLE IF EXISTS `sys_staffpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_staffpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `can_view` int(1) NOT NULL DEFAULT '0',
  `can_edit` int(1) NOT NULL DEFAULT '0',
  `can_create` int(1) NOT NULL DEFAULT '0',
  `can_delete` int(1) NOT NULL DEFAULT '0',
  `all_data` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_staffpermissions`
--

LOCK TABLES `sys_staffpermissions` WRITE;
/*!40000 ALTER TABLE `sys_staffpermissions` DISABLE KEYS */;
INSERT INTO `sys_staffpermissions` VALUES (111,3,1,'customers',1,1,1,1,0),(112,3,2,'companies',0,0,0,0,0),(113,3,3,'transactions',0,0,0,0,0),(114,3,4,'sales',0,0,0,0,0),(115,3,5,'bank_n_cash',0,0,0,0,0),(116,3,6,'products_n_services',0,0,0,0,0),(117,3,7,'reports',0,0,0,0,0),(118,3,8,'utilities',0,0,0,0,0),(119,3,9,'appearance',0,0,0,0,0),(120,3,10,'plugins',0,0,0,0,0),(121,3,11,'calendar',0,0,0,0,0),(122,3,12,'leads',0,0,0,0,0),(123,3,13,'tasks',0,0,0,0,0),(124,3,14,'contracts',0,0,0,0,0),(125,3,15,'orders',0,0,0,0,0),(126,3,16,'settings',0,0,0,0,0),(127,3,17,'documents',0,0,0,0,0),(128,3,18,'purchase',0,0,0,0,0),(129,3,19,'suppliers',0,0,0,0,0),(130,3,20,'sms',0,0,0,0,0),(131,3,21,'support',0,0,0,0,0),(132,3,22,'kb',0,0,0,0,0),(133,3,23,'password_manager',0,0,0,0,0),(134,3,24,'hr',0,0,0,0,0),(135,4,1,'customers',1,0,0,0,0),(136,4,2,'companies',0,0,0,0,0),(137,4,3,'transactions',0,0,0,0,0),(138,4,4,'sales',0,0,0,0,0),(139,4,5,'bank_n_cash',0,0,0,0,0),(140,4,6,'products_n_services',0,0,0,0,0),(141,4,7,'reports',0,0,0,0,0),(142,4,8,'utilities',0,0,0,0,0),(143,4,9,'appearance',0,0,0,0,0),(144,4,10,'plugins',0,0,0,0,0),(145,4,11,'calendar',0,0,0,0,0),(146,4,12,'leads',0,0,0,0,0),(147,4,13,'tasks',0,0,0,0,0),(148,4,14,'contracts',0,0,0,0,0),(149,4,15,'orders',0,0,0,0,0),(150,4,16,'settings',0,0,0,0,0),(151,4,17,'documents',0,0,0,0,0),(152,4,18,'purchase',0,0,0,0,0),(153,4,19,'suppliers',0,0,0,0,0),(154,4,20,'sms',0,0,0,0,0),(155,4,21,'support',1,1,1,0,0),(156,4,22,'kb',0,0,0,0,0),(157,4,23,'password_manager',0,0,0,0,0),(158,4,24,'hr',0,0,0,0,0),(159,5,1,'customers',0,0,0,0,1),(160,5,2,'companies',0,0,0,0,1),(161,5,3,'transactions',0,0,0,0,1),(162,5,4,'sales',0,0,0,0,1),(163,5,5,'bank_n_cash',0,0,0,0,0),(164,5,6,'products_n_services',0,0,0,0,0),(165,5,7,'reports',0,0,0,0,0),(166,5,8,'utilities',0,0,0,0,0),(167,5,9,'appearance',0,0,0,0,0),(168,5,10,'plugins',0,0,0,0,0),(169,5,11,'calendar',0,0,0,0,0),(170,5,12,'leads',0,0,0,0,0),(171,5,13,'tasks',0,0,0,0,0),(172,5,14,'contracts',0,0,0,0,0),(173,5,15,'orders',0,0,0,0,0),(174,5,16,'settings',0,0,0,0,0),(175,5,17,'documents',0,0,0,0,0),(176,5,18,'purchase',0,0,0,0,0),(177,5,19,'suppliers',0,0,0,0,0),(178,5,20,'sms',0,0,0,0,0),(179,5,21,'support',0,0,0,0,0),(180,5,22,'kb',0,0,0,0,0),(181,5,23,'password_manager',0,0,0,0,0),(182,5,24,'hr',0,0,0,0,0);
/*!40000 ALTER TABLE `sys_staffpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_status`
--

DROP TABLE IF EXISTS `sys_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_status`
--

LOCK TABLES `sys_status` WRITE;
/*!40000 ALTER TABLE `sys_status` DISABLE KEYS */;
INSERT INTO `sys_status` VALUES (1,'Purchase Invoice','Pending',NULL,NULL,NULL),(2,'Purchase Invoice','Accepted',NULL,NULL,NULL),(3,'Purchase Invoice','Declined',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_tags`
--

DROP TABLE IF EXISTS `sys_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_tags`
--

LOCK TABLES `sys_tags` WRITE;
/*!40000 ALTER TABLE `sys_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_tasks`
--

DROP TABLE IF EXISTS `sys_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `status` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0',
  `eid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `subscribers` text,
  `assigned_to` text,
  `priority` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `vtoken` varchar(50) DEFAULT NULL,
  `ptoken` varchar(50) DEFAULT NULL,
  `started` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `stime` varchar(50) DEFAULT NULL,
  `dtime` varchar(50) DEFAULT NULL,
  `time_spent` varchar(50) DEFAULT NULL,
  `date_finished` date DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `finished` int(1) NOT NULL DEFAULT '0',
  `ratings` varchar(50) DEFAULT NULL,
  `rel_type` varchar(50) DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `is_public` int(1) NOT NULL DEFAULT '0',
  `billable` int(1) NOT NULL DEFAULT '0',
  `billed` int(1) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(14,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT NULL,
  `progress` int(3) DEFAULT NULL,
  `visible_to_client` int(1) NOT NULL DEFAULT '0',
  `notification` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_tasks`
--

LOCK TABLES `sys_tasks` WRITE;
/*!40000 ALTER TABLE `sys_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_tax`
--

DROP TABLE IF EXISTS `sys_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_tax` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text,
  `state` text,
  `country` text,
  `rate` decimal(10,2) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `bal` decimal(10,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `state_country` (`state`(32),`country`(2))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_tax`
--

LOCK TABLES `sys_tax` WRITE;
/*!40000 ALTER TABLE `sys_tax` DISABLE KEYS */;
INSERT INTO `sys_tax` VALUES (1,'None',NULL,NULL,0.00,NULL,0.00,'2018-11-20 16:57:47','2018-11-20 16:57:47',1);
/*!40000 ALTER TABLE `sys_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ticketdepartments`
--

DROP TABLE IF EXISTS `sys_ticketdepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ticketdepartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(200) DEFAULT NULL,
  `description` text,
  `email` varchar(200) DEFAULT NULL,
  `hidden` int(1) NOT NULL DEFAULT '0',
  `delete_after_import` int(1) NOT NULL DEFAULT '0',
  `host` varchar(200) DEFAULT NULL,
  `port` varchar(50) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `encryption` varchar(100) DEFAULT NULL,
  `calendar_id` varchar(200) DEFAULT NULL,
  `sorder` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ticketdepartments`
--

LOCK TABLES `sys_ticketdepartments` WRITE;
/*!40000 ALTER TABLE `sys_ticketdepartments` DISABLE KEYS */;
INSERT INTO `sys_ticketdepartments` VALUES (1,'Sales',NULL,'',0,0,'','','','','no',NULL,1,NULL,NULL),(2,'Support',NULL,'',0,0,'','','','','no',NULL,1,NULL,NULL),(3,'Billing',NULL,'',0,0,'','','','','no',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `sys_ticketdepartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ticketmaillog`
--

DROP TABLE IF EXISTS `sys_ticketmaillog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ticketmaillog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text,
  `status` varchar(100) DEFAULT NULL,
  `attachments` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ticketmaillog`
--

LOCK TABLES `sys_ticketmaillog` WRITE;
/*!40000 ALTER TABLE `sys_ticketmaillog` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ticketmaillog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ticketpredefinedreplies`
--

DROP TABLE IF EXISTS `sys_ticketpredefinedreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ticketpredefinedreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(200) DEFAULT NULL,
  `reply` text,
  `tags` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `attachments` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ticketpredefinedreplies`
--

LOCK TABLES `sys_ticketpredefinedreplies` WRITE;
/*!40000 ALTER TABLE `sys_ticketpredefinedreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ticketpredefinedreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ticketreplies`
--

DROP TABLE IF EXISTS `sys_ticketreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ticketreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `reply_type` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` text,
  `replied_by` varchar(200) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `attachments` text,
  `client_read` varchar(100) DEFAULT NULL,
  `admin_read` varchar(100) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ticketreplies`
--

LOCK TABLES `sys_ticketreplies` WRITE;
/*!40000 ALTER TABLE `sys_ticketreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ticketreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_tickets`
--

DROP TABLE IF EXISTS `sys_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(100) DEFAULT NULL,
  `did` int(10) DEFAULT NULL,
  `aid` int(10) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `sid` int(10) DEFAULT NULL,
  `lid` int(10) DEFAULT NULL,
  `oid` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `dname` varchar(100) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `account` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `cc` varchar(200) DEFAULT NULL,
  `bcc` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject` text,
  `message` text,
  `status` varchar(100) DEFAULT NULL,
  `urgency` varchar(100) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `attachments` text,
  `last_reply` varchar(100) DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  `escalated` int(1) DEFAULT NULL,
  `replying` int(1) DEFAULT NULL,
  `is_spam` int(1) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL,
  `client_read` varchar(100) DEFAULT NULL,
  `admin_read` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `ttype` varchar(100) DEFAULT NULL,
  `tstart` varchar(100) DEFAULT NULL,
  `tend` varchar(100) DEFAULT NULL,
  `ttotal` varchar(100) DEFAULT NULL,
  `todo` text,
  `tags` text,
  `notes` text,
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `c3` varchar(255) DEFAULT NULL,
  `c4` varchar(255) DEFAULT NULL,
  `c5` text,
  `end_user_id` int(10) unsigned DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_tickets`
--

LOCK TABLES `sys_tickets` WRITE;
/*!40000 ALTER TABLE `sys_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_transactions`
--

DROP TABLE IF EXISTS `sys_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(200) NOT NULL,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(200) DEFAULT NULL,
  `sub_type` varchar(200) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `payer` varchar(200) DEFAULT NULL,
  `payee` varchar(200) DEFAULT NULL,
  `payerid` int(11) NOT NULL DEFAULT '0',
  `payeeid` int(11) NOT NULL DEFAULT '0',
  `method` varchar(200) DEFAULT NULL,
  `ref` varchar(200) DEFAULT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Cleared',
  `description` text,
  `tags` text,
  `tax` decimal(18,2) NOT NULL DEFAULT '0.00',
  `date` date DEFAULT NULL,
  `dr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `cr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `bal` decimal(18,2) NOT NULL DEFAULT '0.00',
  `iid` int(11) NOT NULL DEFAULT '0',
  `currency_iso_code` char(3) DEFAULT NULL,
  `currency` int(11) NOT NULL DEFAULT '0',
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT '1.0000',
  `base_amount` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `vid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `attachments` text,
  `source` varchar(200) DEFAULT NULL,
  `rid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `flag` int(1) NOT NULL DEFAULT '0',
  `c1` text,
  `c2` text,
  `c3` text,
  `c4` text,
  `c5` text,
  `purchase_id` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_transactions`
--

LOCK TABLES `sys_transactions` WRITE;
/*!40000 ALTER TABLE `sys_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_units`
--

DROP TABLE IF EXISTS `sys_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `conversion_factor` decimal(16,2) NOT NULL DEFAULT '0.00',
  `sorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_units`
--

LOCK TABLES `sys_units` WRITE;
/*!40000 ALTER TABLE `sys_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `phonenumber` varchar(20) DEFAULT NULL,
  `password` text,
  `user_type` varchar(50) NOT NULL DEFAULT 'Full Access',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  `otp` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin` mediumtext NOT NULL,
  `img` text NOT NULL,
  `api` enum('Yes','No') DEFAULT 'No',
  `pwresetkey` varchar(100) NOT NULL,
  `keyexpire` varchar(100) NOT NULL,
  `roleid` int(11) NOT NULL DEFAULT '0',
  `role` varchar(200) DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `autologin` varchar(200) DEFAULT NULL,
  `at` varchar(200) DEFAULT NULL,
  `landing_page` varchar(200) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `notes` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sms_notify` int(1) DEFAULT NULL,
  `email_notify` int(1) DEFAULT NULL,
  `slack_notify` int(1) DEFAULT NULL,
  `job_title` varchar(150) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `department_id` int(11) DEFAULT '0',
  `manager_id` int(11) DEFAULT '0',
  `pay_frequency` varchar(150) DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `employee_id` varchar(150) DEFAULT NULL,
  `legal_name_title` varchar(150) DEFAULT NULL,
  `legal_name_first` varchar(150) DEFAULT NULL,
  `legal_name_mi` varchar(150) DEFAULT NULL,
  `legal_name_last` varchar(150) DEFAULT NULL,
  `banking_name` varchar(150) DEFAULT NULL,
  `ssn` varchar(150) DEFAULT NULL,
  `gender` varchar(150) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `marital_status` varchar(150) DEFAULT NULL,
  `ethnicity` varchar(150) DEFAULT NULL,
  `is_citizen` tinyint(1) NOT NULL DEFAULT '1',
  `has_i9_form` varchar(150) DEFAULT NULL,
  `work_authorization_expires` date DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `zip` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `work_phone` varchar(150) DEFAULT NULL,
  `work_mobile` varchar(150) DEFAULT NULL,
  `work_fax` varchar(150) DEFAULT NULL,
  `cc_email` varchar(150) DEFAULT NULL,
  `other` varchar(150) DEFAULT NULL,
  `emergency_contact_name_1` varchar(150) DEFAULT NULL,
  `emergency_contact_phone_1` varchar(150) DEFAULT NULL,
  `emergency_contact_relation_1` varchar(150) DEFAULT NULL,
  `emergency_contact_name_2` varchar(150) DEFAULT NULL,
  `emergency_contact_phone_2` varchar(150) DEFAULT NULL,
  `emergency_contact_relation_2` varchar(150) DEFAULT NULL,
  `last_day_worked` date DEFAULT NULL,
  `last_day_on_benefits` date DEFAULT NULL,
  `last_day_on_payroll` date DEFAULT NULL,
  `termination_type` varchar(150) DEFAULT NULL,
  `termination_reason` varchar(150) DEFAULT NULL,
  `is_recommended` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `facebook` varchar(150) DEFAULT NULL,
  `google` varchar(150) DEFAULT NULL,
  `linkedin` varchar(150) DEFAULT NULL,
  `skype` varchar(150) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `summary` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users`
--

LOCK TABLES `sys_users` WRITE;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` VALUES (1,'admin@admin.com','anwar sbeit','738072957','$2y$10$/dzKLy.KfilCmXyWNbNjCOAfSVa1RiJMpA/uKUTC3a0LjtbXuvXYC','Admin','Active','2019-11-26 11:38:14','','2014-10-20 01:43:07','No','No','Y6AOTKNSQ5D7J4FU','','No','','0',0,NULL,NULL,'dt63h4r46x9pe01k4n2p1',NULL,NULL,'en',NULL,NULL,'2018-11-18 16:41:47',1,1,NULL,NULL,NULL,0,0,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-26 17:47:36
