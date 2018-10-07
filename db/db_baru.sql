-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: db_mssb
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('sl4e4lfbmtl9gso1dtgm9318ucdnorkd','127.0.0.1',1538803448,_binary '__ci_last_regenerate|i:1538803448;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('hl4o59f33k6ldgf37j5c9o41cil9sn83','127.0.0.1',1538803750,_binary '__ci_last_regenerate|i:1538803750;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('e3o27pr3g44c2hmkonb0gfj04pb377ap','127.0.0.1',1538804133,_binary '__ci_last_regenerate|i:1538804133;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('us3bnfoupu1obv2haude5jeg9t5hpcmr','127.0.0.1',1538804130,_binary '__ci_last_regenerate|i:1538804130;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('02nr084ukm6rk9rti421o2v7j17inlkg','127.0.0.1',1538806253,_binary '__ci_last_regenerate|i:1538806253;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('7n395sm98sb4dega96th25hbbi4ubr25','127.0.0.1',1538809015,_binary '__ci_last_regenerate|i:1538809015;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('ieskde93enhknaps58eaiv0dch1a1eqn','127.0.0.1',1538806556,_binary '__ci_last_regenerate|i:1538806556;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('lim3jiinqbo8rrqr6nu3suibbvnq5p95','127.0.0.1',1538807523,_binary '__ci_last_regenerate|i:1538807523;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('kenrev794fqt04amcnp5517oghs84g2m','127.0.0.1',1538807824,_binary '__ci_last_regenerate|i:1538807824;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('q4c3378ub4ju9enbqvf2od0r87hqk2ma','127.0.0.1',1538808145,_binary '__ci_last_regenerate|i:1538808145;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('4m6u0tvqun021022u23tuet3its3u8g5','127.0.0.1',1538808448,_binary '__ci_last_regenerate|i:1538808448;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('r5h5cn88fu5ff5hf98cjf0qqcgel4n1l','127.0.0.1',1538808813,_binary '__ci_last_regenerate|i:1538808813;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('q11vgcrfph15hfkblo571b3luafu3lad','127.0.0.1',1538809133,_binary '__ci_last_regenerate|i:1538809133;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('vfs7gk48hhslbnr3s0anl9ourp6570m3','127.0.0.1',1538813784,_binary '__ci_last_regenerate|i:1538813784;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('9sedqnhn26ad1i6qett5eb0td7ve2mhh','127.0.0.1',1538809442,_binary '__ci_last_regenerate|i:1538809442;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('7ndqf7j8njfm8tl6n9b48ufaqba8vi8m','127.0.0.1',1538809743,_binary '__ci_last_regenerate|i:1538809743;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('fkoscl83bg9kjo67qoaurjnka1emdo6d','127.0.0.1',1538810590,_binary '__ci_last_regenerate|i:1538810590;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('tbf3ngcdk13lgcpl4vkub8lcrujd1kp9','127.0.0.1',1538810953,_binary '__ci_last_regenerate|i:1538810953;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('saaajkufc6s7dcuveq61h94sfr7r55n5','127.0.0.1',1538811255,_binary '__ci_last_regenerate|i:1538811255;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('flb6kstn61vsm2j0skpmc76icrmm953j','127.0.0.1',1538811583,_binary '__ci_last_regenerate|i:1538811583;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('mnvo56jsb4js8pp1e8j0v1muhl41poo3','127.0.0.1',1538811547,_binary '__ci_last_regenerate|i:1538811547;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('q5sgbdike1mjcbivg790n6vd550oe2qf','127.0.0.1',1538811924,_binary '__ci_last_regenerate|i:1538811924;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('hfugqabt56iq8m8q7gku0qdo2bbgr00q','127.0.0.1',1538812518,_binary '__ci_last_regenerate|i:1538812517;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('qbc89u9o5h2a7vef75tjqd68kq1jqce2','127.0.0.1',1538811983,_binary '__ci_last_regenerate|i:1538811978;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('jmmdqsc64578dufh1co0hjtad3t1gr5n','127.0.0.1',1538812844,_binary '__ci_last_regenerate|i:1538812844;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('hi9bm6avvg0mtf423esbrdcupa19o38v','127.0.0.1',1538813222,_binary '__ci_last_regenerate|i:1538813222;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('oi22uvlf6eb0bhvvuo38168afgia6uup','127.0.0.1',1538813604,_binary '__ci_last_regenerate|i:1538813604;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('1paa73l9qu3ldg3ilt2j22cjkkc5gkrf','127.0.0.1',1538813947,_binary '__ci_last_regenerate|i:1538813947;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('r8pnrf2327bjomn1fjm3tdo9eu8af7g3','127.0.0.1',1538814443,_binary '__ci_last_regenerate|i:1538814443;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('umn55s9mg5olbjgecb4ru0e4du9eipo9','127.0.0.1',1538814511,_binary '__ci_last_regenerate|i:1538814511;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('kklfulg72pfh8p0h28vj92eieub6n7g2','127.0.0.1',1538817079,_binary '__ci_last_regenerate|i:1538817079;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('q1dgmvgiiumf4vb6gdmb557ctglkhili','127.0.0.1',1538814853,_binary '__ci_last_regenerate|i:1538814853;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('tesqdp5mpdj7aes4ahct6o257ileielm','127.0.0.1',1538815174,_binary '__ci_last_regenerate|i:1538815173;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('6qkg5h11gtnv0quga7vvkqehejr9er5b','127.0.0.1',1538815580,_binary '__ci_last_regenerate|i:1538815580;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('i6a4tiicumjrpbeelo7heqnchg5cn3db','127.0.0.1',1538815892,_binary '__ci_last_regenerate|i:1538815892;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('blqfme1ik8hm2fiddnhuhilfu2guejej','::1',1538815891,_binary '__ci_last_regenerate|i:1538815891;'),('s4gmbkl8fqf42k00ucdpj86qhl9f0jjv','127.0.0.1',1538816203,_binary '__ci_last_regenerate|i:1538816203;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('uolnee77uth6do5u293n11g9ooc4lihk','127.0.0.1',1538816902,_binary '__ci_last_regenerate|i:1538816902;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('j8erfbdd2srrnr96ootq1t577u9gudpr','127.0.0.1',1538817211,_binary '__ci_last_regenerate|i:1538817211;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('igftshpr6urs047um7fs6bohrul6j8qc','127.0.0.1',1538818752,_binary '__ci_last_regenerate|i:1538818752;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('m651dvms1ttuoj5go7ldq1hhraeb3o1b','127.0.0.1',1538818673,_binary '__ci_last_regenerate|i:1538818672;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('ljethd514ojcagvb11rcjc0cqcc8abhl','127.0.0.1',1538818980,_binary '__ci_last_regenerate|i:1538818980;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('thlr9std56dtt6gn86mt0v5vaca18cbq','127.0.0.1',1538819433,_binary '__ci_last_regenerate|i:1538819433;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('7qfhhsafj6dkg3rb1cripvs8e8tom8kq','127.0.0.1',1538819353,_binary '__ci_last_regenerate|i:1538819353;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('j9vms7tv0ehbi2c9bjvoov5l27b23oc4','127.0.0.1',1538819712,_binary '__ci_last_regenerate|i:1538819712;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('utqdg96njlsk8ofimdsflcubtoktjn2g','127.0.0.1',1538833432,_binary '__ci_last_regenerate|i:1538819433;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('s8864r9ne07vnh2sliq7jvjjcvjkppup','127.0.0.1',1538820374,_binary '__ci_last_regenerate|i:1538820374;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('lkhb58du2m630dpetsc1tol11pv03dgf','127.0.0.1',1538820837,_binary '__ci_last_regenerate|i:1538820837;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('o1epc0tfpiidgc3n24qkhe11g4g4pgkd','127.0.0.1',1538821158,_binary '__ci_last_regenerate|i:1538821158;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('oehd1tc1319plgqfnf7jn6pp9qlfev3t','127.0.0.1',1538829118,_binary '__ci_last_regenerate|i:1538829118;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('ck8h7ui80eg8j3p8roc7dfeb5m1ap4ka','127.0.0.1',1538829500,_binary '__ci_last_regenerate|i:1538829500;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('c42npdo2v6ecc1l54gllm5bgh970ikal','127.0.0.1',1538829803,_binary '__ci_last_regenerate|i:1538829803;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('qs5cucf9158hjg39l6g63hna0ga89jkr','127.0.0.1',1538830240,_binary '__ci_last_regenerate|i:1538830240;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('uo12soil01373uejglvtijcbg5s9mr1v','127.0.0.1',1538830737,_binary '__ci_last_regenerate|i:1538830737;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('q4l04h6ek3p7vtmm5uss12ukdh8d4q46','127.0.0.1',1538831072,_binary '__ci_last_regenerate|i:1538831072;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('chsk831c7kur2v76rti9mg4fmv054h76','127.0.0.1',1538831373,_binary '__ci_last_regenerate|i:1538831373;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('cjb03qfb6u76f5ruh9p5ht8ljotgoot9','127.0.0.1',1538831679,_binary '__ci_last_regenerate|i:1538831679;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('uo28f5qrl6t6lnvn7a9n3817lh3cp8eu','127.0.0.1',1538833226,_binary '__ci_last_regenerate|i:1538833226;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('jmu30dpelmbmbg5au630f98q73k4t3m5','127.0.0.1',1538833759,_binary '__ci_last_regenerate|i:1538833759;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('skfipv66193aj0aco4s7qnolkknoen66','::1',1538833759,_binary '__ci_last_regenerate|i:1538833759;'),('ho0f4lthq32ampttuo7cfupl8la0e7cc','127.0.0.1',1538834078,_binary '__ci_last_regenerate|i:1538834078;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('3tah9rj56jj1tjjrfg1fksbkh5k2farr','127.0.0.1',1538835563,_binary '__ci_last_regenerate|i:1538835562;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('k2slootlh1p4nnn6uun4e2om83rsuu30','127.0.0.1',1538836061,_binary '__ci_last_regenerate|i:1538836061;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('7mpt8oicbq8aj9vicuoejhiqm79b5qjv','127.0.0.1',1538836376,_binary '__ci_last_regenerate|i:1538836376;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('qju5fvkat6fge1p3fg03vmjl1g7q277u','127.0.0.1',1538836712,_binary '__ci_last_regenerate|i:1538836712;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('7mnkv3krviqaj9ki7mumcdh2u6pmro5g','127.0.0.1',1538837044,_binary '__ci_last_regenerate|i:1538837044;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('bt4dvlm6hrml3kc0aknvng71kuh5s9us','127.0.0.1',1538837504,_binary '__ci_last_regenerate|i:1538837504;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('7jbuf1j6ga6qde600pe7fknmdumhd082','127.0.0.1',1538837818,_binary '__ci_last_regenerate|i:1538837818;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('47ieogpc0lijfd22opkrq4vm50ph2htm','127.0.0.1',1538838170,_binary '__ci_last_regenerate|i:1538838170;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('mq85o88u0d7rjpve2tjrpaqhgjsmrcm1','127.0.0.1',1538839543,_binary '__ci_last_regenerate|i:1538839543;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('aniglnnmcafmq593kie6gqbgke7s7l3n','127.0.0.1',1538839880,_binary '__ci_last_regenerate|i:1538839880;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('d77ugj6kjeg3epqmq9jrt57c0d72av94','127.0.0.1',1538840192,_binary '__ci_last_regenerate|i:1538840192;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('7bhgm91868gi4g4pjil51v79g7mlblhf','127.0.0.1',1538840631,_binary '__ci_last_regenerate|i:1538840631;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('k69vb4qfa3fj2jgkaucisop433nfv1fm','127.0.0.1',1538841085,_binary '__ci_last_regenerate|i:1538841085;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('rf0geqqc2leqpefg03bp4beuenl54ei1','127.0.0.1',1538841391,_binary '__ci_last_regenerate|i:1538841391;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('acj5f0f9a10f5lbjasv0mh22olukvlom','127.0.0.1',1538841712,_binary '__ci_last_regenerate|i:1538841712;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('v7fl6q7me0jr7nlkpmnv0hmcrrj5ad4g','127.0.0.1',1538842033,_binary '__ci_last_regenerate|i:1538842033;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('ql8bnsqp5u6rd9oa2n63phssj9bk2uad','127.0.0.1',1538842637,_binary '__ci_last_regenerate|i:1538842637;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('mkgmj1okkthpaj5t8v7e17uraqj28g2t','127.0.0.1',1538843024,_binary '__ci_last_regenerate|i:1538843023;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('52rimqlbvj6bstf8da0qobofnh2rq10a','127.0.0.1',1538844238,_binary '__ci_last_regenerate|i:1538844238;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('s3q6dh7o4oqi2khmeqv57u65760gaj9u','127.0.0.1',1538845335,_binary '__ci_last_regenerate|i:1538845335;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('eedc2mplatpkhkmf0h538b81lqf3lirh','127.0.0.1',1538847457,_binary '__ci_last_regenerate|i:1538847457;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('qfb7a99lln48nqhqof4fm3of78magip3','127.0.0.1',1538845404,_binary '__ci_last_regenerate|i:1538845404;'),('8pgbuhfbfcfced3eqk7mpjnsbs54o2uq','127.0.0.1',1538846512,_binary '__ci_last_regenerate|i:1538846512;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('8gomot1go4so3cnpo8kjcaipkb6f2ajt','127.0.0.1',1538847077,_binary '__ci_last_regenerate|i:1538847077;IS_LOGIN_ADMIN|b:1;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('7iav3kb9fvrnt2at3hq5qpul5bbe20g6','127.0.0.1',1538846758,_binary '__ci_last_regenerate|i:1538846758;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('j7o1mjuifptfj8pgktgi7as56d79lchq','127.0.0.1',1538873077,_binary '__ci_last_regenerate|i:1538873077;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";IS_LOGIN_ADMIN|b:1;'),('dd4pi8efuh62dbft8b825i3ki7t00ivd','127.0.0.1',1538848051,_binary '__ci_last_regenerate|i:1538848051;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('h6upna5r6f1qhnmqpe2nv3k9r6h1o38v','127.0.0.1',1538849031,_binary '__ci_last_regenerate|i:1538849031;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('eob66vqk13e471no3r59532ha53f3fd7','127.0.0.1',1538849387,_binary '__ci_last_regenerate|i:1538849387;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('k7kkvk6uobmf6gi36ail8gta6hathk7j','127.0.0.1',1538849832,_binary '__ci_last_regenerate|i:1538849832;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('pla9q3qkveuad6g2kghcescm0uahn3o2','127.0.0.1',1538850156,_binary '__ci_last_regenerate|i:1538850156;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('nsgoth93b04j889p3or44vjn41mmpg50','127.0.0.1',1538850509,_binary '__ci_last_regenerate|i:1538850509;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('neumqn00oje26vhuo916tb4otvtsa3ql','127.0.0.1',1538850832,_binary '__ci_last_regenerate|i:1538850832;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('26543v6bdrrg8r0vtbs6ce8n4kg5do1i','127.0.0.1',1538851154,_binary '__ci_last_regenerate|i:1538851154;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('tetu1j433helrfgn1onhco7gcsk9mrgm','127.0.0.1',1538851457,_binary '__ci_last_regenerate|i:1538851457;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('8ns3dirlpoo9caq6hrf75g028fcdm3bq','127.0.0.1',1538852816,_binary '__ci_last_regenerate|i:1538851457;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('0aeli4k1c0rtp7qcdelpbn1hi0ch1o2n','127.0.0.1',1538862477,''),('ja6k14d8lr31gaa7ek0jiapjvuufh2h8','127.0.0.1',1538864595,_binary '__ci_last_regenerate|i:1538864594;'),('lf4jtjrtekcg69h1a023jvcgjoi2vh8k','127.0.0.1',1538862432,''),('j9o0308vm7l06lfca5b5l6gub1c09ld5','127.0.0.1',1538862431,''),('i0nj0uteg3591tkucale18q28n62krs3','127.0.0.1',1538862433,''),('nk2stfopapvg7usu3cro8im43s6cefeg','127.0.0.1',1538862434,''),('lac9nookmovd45l0vh1me428u8h6jvln','127.0.0.1',1538862480,''),('pauiipb4umun18j3v12s3nb0tnoo4em0','127.0.0.1',1538862435,''),('p03k0g168n2vltpu4h177gosbhda0al5','127.0.0.1',1538862780,_binary '__ci_last_regenerate|i:1538862780;'),('4pote04j3r5aosoap4hqtjto6490d57n','127.0.0.1',1538863081,_binary '__ci_last_regenerate|i:1538863081;'),('ifqsse8jfoec909kkl4vd4v3ful51opj','127.0.0.1',1538863382,_binary '__ci_last_regenerate|i:1538863382;'),('jhg59a56ddj7ke74do0r6754r6vpd4ta','127.0.0.1',1538863697,_binary '__ci_last_regenerate|i:1538863691;'),('s80fk665ss1kdcsj13tgeooqm56172e9','127.0.0.1',1538863992,_binary '__ci_last_regenerate|i:1538863992;'),('1012doapc3d7nhn7f6j2u48b15864pas','127.0.0.1',1538864293,_binary '__ci_last_regenerate|i:1538864293;'),('dag4ngdqi0aulfu5i8rkutkmmgvnuofq','127.0.0.1',1538866974,_binary '__ci_last_regenerate|i:1538866966;'),('err3fipo476mqnbvo5b51dhia8jd75k7','127.0.0.1',1538867268,_binary '__ci_last_regenerate|i:1538867267;'),('n4je03nr70av3rj9l7hogln9r00ed9ln','127.0.0.1',1538867569,_binary '__ci_last_regenerate|i:1538867568;'),('lqem0jtj8rv90d4ktpad7qhcejacfogf','127.0.0.1',1538868931,_binary '__ci_last_regenerate|i:1538868931;'),('ra3vh15jlolpui6rhngmob50p24i7rue','127.0.0.1',1538867870,_binary '__ci_last_regenerate|i:1538867869;'),('qeigtq6cho6csq6ckjo5fif3unlb0s75','127.0.0.1',1538868177,_binary '__ci_last_regenerate|i:1538868176;'),('ofi1j2lql83h271q9d7m7mb99ileufgo','127.0.0.1',1538868478,_binary '__ci_last_regenerate|i:1538868477;'),('93b6cj8ri1na72ig4mf80p6e62ptdn66','::1',1538868930,_binary '__ci_last_regenerate|i:1538868930;'),('6t74neav6n1cknpo7gbdge6r577tukpf','127.0.0.1',1538869301,_binary '__ci_last_regenerate|i:1538869301;message|s:0:\"\";__ci_vars|a:1:{s:7:\"message\";s:3:\"new\";}'),('obg6fbii24a7g6gbcnhdpughigjk0ejg','127.0.0.1',1538869607,_binary '__ci_last_regenerate|i:1538869607;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('i6q0j13otnphsbvb1cf3hsv37r6gi9o4','127.0.0.1',1538869909,_binary '__ci_last_regenerate|i:1538869909;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('vmuomrbqsp8dv5hbm8pkvq1ngek2kvfl','127.0.0.1',1538870227,_binary '__ci_last_regenerate|i:1538870226;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('98fu5dnci1l84gef3jhajc3rii5p972t','127.0.0.1',1538870645,_binary '__ci_last_regenerate|i:1538870645;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('764ugtvpfrqr0surt121p4m3r3sbp5ca','127.0.0.1',1538870961,_binary '__ci_last_regenerate|i:1538870961;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('7mrhpma2popqa0sq84lgh65to95gals2','127.0.0.1',1538872131,_binary '__ci_last_regenerate|i:1538872131;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('vvgivfi8tlb28e5s216f984do4nrrhpa','127.0.0.1',1538872650,_binary '__ci_last_regenerate|i:1538872650;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('lbjtte1tu9v4tijeusgpkc9i3dlomdnr','127.0.0.1',1538872425,_binary '__ci_last_regenerate|i:1538872425;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";'),('4gkr352j4onprtmukml60hm383oov1j3','127.0.0.1',1538872960,_binary '__ci_last_regenerate|i:1538872960;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('h6uh1p4i27nfrm088jpasd068k70bl02','127.0.0.1',1538873689,_binary '__ci_last_regenerate|i:1538873689;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('fik4jl019887qp0k4t7pc2agp5432c8n','127.0.0.1',1538873684,_binary '__ci_last_regenerate|i:1538873684;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";IS_LOGIN_ADMIN|b:1;'),('fp4b1sgjfpjmuikv3tkcjkfqv0q953r6','127.0.0.1',1538874007,_binary '__ci_last_regenerate|i:1538874007;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";IS_LOGIN_ADMIN|b:1;'),('5gsb1s6i2sgi4u2lcnngucfljkpelinu','127.0.0.1',1538874634,_binary '__ci_last_regenerate|i:1538874634;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('06ho0dkhqo903mg2h6mbenn4q1vughi8','127.0.0.1',1538875309,_binary '__ci_last_regenerate|i:1538875309;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";IS_LOGIN_ADMIN|b:1;'),('njkv75rqajd90naq293781md6qka5pi6','127.0.0.1',1538874511,_binary '__ci_last_regenerate|i:1538874511;name|s:9:\"superuser\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"3\";message|s:0:\"\";__ci_vars|a:1:{s:7:\"message\";s:3:\"new\";}'),('cvvoh97bvnbvlqe3q1v0ptsbtvgljrb8','127.0.0.1',1538874963,_binary '__ci_last_regenerate|i:1538874963;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('4o7a67ofhd9ol3pdg0hir18e6ulu42rl','127.0.0.1',1538875270,_binary '__ci_last_regenerate|i:1538875270;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('k1hacsitlf6qpe0o9q70b1rakgl6mg2g','127.0.0.1',1538876716,_binary '__ci_last_regenerate|i:1538876716;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('vd31oqdd9k96uvqeufahud7lj17ctaia','127.0.0.1',1538876533,_binary '__ci_last_regenerate|i:1538876533;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";IS_LOGIN_ADMIN|b:1;'),('gu8sukitdjvpb7pgha8etcjp8gkgvm56','127.0.0.1',1538876843,_binary '__ci_last_regenerate|i:1538876843;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";IS_LOGIN_ADMIN|b:1;'),('ags8gmb3hkg9vpenp9armgl7jmimrorb','127.0.0.1',1538877330,_binary '__ci_last_regenerate|i:1538877330;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('bn47o6ugab5a9d5367t377mvjvdshum0','127.0.0.1',1538877160,_binary '__ci_last_regenerate|i:1538877160;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";IS_LOGIN_ADMIN|b:1;'),('53g08e4pcqva3se4643l9oegc5jibssu','127.0.0.1',1538878429,_binary '__ci_last_regenerate|i:1538878429;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";IS_LOGIN_ADMIN|b:1;'),('45gc82s54q5iegol2t0h61bcm59mlpcp','127.0.0.1',1538878524,_binary '__ci_last_regenerate|i:1538878524;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('fke115r5a7uuia50tjpvavnjiimj59bk','127.0.0.1',1538879741,_binary '__ci_last_regenerate|i:1538878429;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";IS_LOGIN_ADMIN|b:1;'),('ksa0hnbuparphccpgau3hj88p3462g8n','127.0.0.1',1538878962,_binary '__ci_last_regenerate|i:1538878962;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('m8j52tgibr0369u78e0okpvlq3bq6m1f','127.0.0.1',1538879294,_binary '__ci_last_regenerate|i:1538879294;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('0hc5ad794gplbh483u816uv3cuvlupaq','127.0.0.1',1538879685,_binary '__ci_last_regenerate|i:1538879684;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('5eobbhdeeak8ukd2cua5msnd8vn9hsph','127.0.0.1',1538879736,_binary '__ci_last_regenerate|i:1538879684;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('jfour7dagshf9dodiuicqprpbigunrbq','127.0.0.1',1538889451,_binary '__ci_last_regenerate|i:1538889451;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('dhbul4aghka3fth3a66ds39h75iqgc8h','127.0.0.1',1538889766,_binary '__ci_last_regenerate|i:1538889766;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('1ft7il1i1k72850i7mhujh38ke4j7g9g','127.0.0.1',1538890090,_binary '__ci_last_regenerate|i:1538890090;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('h5s2uvln9i3r5gs4c869u5jhgdsm3cq1','127.0.0.1',1538890433,_binary '__ci_last_regenerate|i:1538890433;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('69bbkm56c71e8kf33kgsdj8njunul5f1','127.0.0.1',1538890752,_binary '__ci_last_regenerate|i:1538890752;'),('44qkjjbaujt7b7grp0ot79124edjtp54','127.0.0.1',1538890752,_binary '__ci_last_regenerate|i:1538890752;IS_LOGIN_ADMIN|b:1;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";'),('m4cc1vtg3mu2o5n4ddtv9q5bl8ri1kv4','127.0.0.1',1538891076,_binary '__ci_last_regenerate|i:1538891076;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('t4f6smg7ek4vfjojdpokpo30edg7077e','127.0.0.1',1538892776,_binary '__ci_last_regenerate|i:1538892776;'),('63ajc5fdugea5amesh2u5lk1752btk26','127.0.0.1',1538891059,_binary '__ci_last_regenerate|i:1538891059;IS_LOGIN_ADMIN|b:1;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";'),('h6ge66gih4cpdjhcqk20ddmhi4v98bc5','127.0.0.1',1538891802,_binary '__ci_last_regenerate|i:1538891802;IS_LOGIN_ADMIN|b:1;name|s:3:\"tes\";email|s:23:\"diditriawan13@gmail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"7\";'),('3spcc0b5h0qkgrco1ghautsmuov6cgve','127.0.0.1',1538892071,_binary '__ci_last_regenerate|i:1538892071;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('u02tk3km2lflcen1gajcr01vfds56l47','127.0.0.1',1538893013,_binary '__ci_last_regenerate|i:1538892777;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";level|s:1:\"1\";level_name|s:18:\"SYSTEM APPLICATION\";IS_LOGIN_ADMIN|b:1;'),('3aem2germjtf9udn2ts86f36rj31glt7','127.0.0.1',1538893966,_binary '__ci_last_regenerate|i:1538893966;name|s:5:\"admin\";email|s:14:\"admin@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:2:\"10\";level|s:1:\"1\";level_name|s:18:\"SYSTEM APPLICATION\";IS_LOGIN_ADMIN|b:1;'),('464fc1699l7gpr629d0j4gpi6drceu9h','127.0.0.1',1538892103,_binary '__ci_last_regenerate|i:1538892103;name|s:5:\"samin\";email|s:37:\"samin.soedharno@sudartaconsulting.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"8\";level|s:1:\"2\";level_name|s:9:\"INSPECTOR\";'),('r8v0pv3ncg0aem6f204a8f4taf9l3dqr','127.0.0.1',1538892398,_binary '__ci_last_regenerate|i:1538892398;name|s:5:\"samin\";email|s:37:\"samin.soedharno@sudartaconsulting.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"8\";level|s:1:\"2\";level_name|s:9:\"INSPECTOR\";'),('re4au2i2sf55g3lbg7tk5s4baedvsedc','127.0.0.1',1538892776,_binary '__ci_last_regenerate|i:1538892776;'),('3b47tnsisvh83067smgr7q7v15dkj7lp','127.0.0.1',1538892777,_binary '__ci_last_regenerate|i:1538892777;name|s:3:\"ira\";email|s:25:\"ira@sudartaconsulting.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"9\";level|s:1:\"3\";level_name|s:8:\"OPERATOR\";IS_LOGIN_ADMIN|b:1;'),('cn2n4lsu71o4q0tqsj9jku9u2u8r3o1u','127.0.0.1',1538892804,_binary '__ci_last_regenerate|i:1538892804;message|s:0:\"\";__ci_vars|a:1:{s:7:\"message\";s:3:\"new\";}'),('l7p50ekr0r6egnf3kd1q5ks3va0ah8gk','::1',1538894162,_binary '__ci_last_regenerate|i:1538893966;'),('vm593vi09jau643trc714tafsubk25dj','127.0.0.1',1538894656,_binary '__ci_last_regenerate|i:1538894656;name|s:3:\"ira\";email|s:25:\"ira@sudartaconsulting.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"9\";level|s:1:\"3\";level_name|s:8:\"OPERATOR\";IS_LOGIN_ADMIN|b:1;'),('drup8t2g0f3kqvtgqlgi4mjbdj5h0ve1','127.0.0.1',1538894335,_binary '__ci_last_regenerate|i:1538894335;name|s:5:\"admin\";email|s:14:\"admin@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:2:\"10\";level|s:1:\"1\";level_name|s:18:\"SYSTEM APPLICATION\";IS_LOGIN_ADMIN|b:1;'),('fqr2s3asfdlb27c8cec53st59clqn033','127.0.0.1',1538895689,_binary '__ci_last_regenerate|i:1538895689;name|s:3:\"ira\";email|s:25:\"ira@sudartaconsulting.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"9\";level|s:1:\"3\";level_name|s:8:\"OPERATOR\";IS_LOGIN_ADMIN|b:1;'),('1ii06gohgsc8t7dbu131pf8c1i57ml2t','127.0.0.1',1538894966,_binary '__ci_last_regenerate|i:1538894966;name|s:3:\"ira\";email|s:25:\"ira@sudartaconsulting.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"9\";level|s:1:\"3\";level_name|s:8:\"OPERATOR\";IS_LOGIN_ADMIN|b:1;'),('38qa3buks7kc2sjmdq0atj24hti8spmh','127.0.0.1',1538896009,_binary '__ci_last_regenerate|i:1538895689;name|s:3:\"ira\";email|s:25:\"ira@sudartaconsulting.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"9\";level|s:1:\"3\";level_name|s:8:\"OPERATOR\";IS_LOGIN_ADMIN|b:1;');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gammu`
--

DROP TABLE IF EXISTS `gammu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gammu` (
  `Version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gammu`
--

LOCK TABLES `gammu` WRITE;
/*!40000 ALTER TABLE `gammu` DISABLE KEYS */;
INSERT INTO `gammu` VALUES (17);
/*!40000 ALTER TABLE `gammu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbox`
--

DROP TABLE IF EXISTS `inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false',
  `Status` int(11) NOT NULL DEFAULT '-1',
  `IsRead` tinyint(4) DEFAULT '0' COMMENT '0;notread;1read',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbox`
--

LOCK TABLES `inbox` WRITE;
/*!40000 ALTER TABLE `inbox` DISABLE KEYS */;
INSERT INTO `inbox` VALUES ('2018-10-07 06:42:41','2018-10-07 06:41:58','004F006B0020007300610079006100200061006D00620069006C','+6281319691964','Default_No_Compression','','+6281107908',-1,'Ok saya ambil',32,'','false',0,1),('2018-10-07 06:44:19','2018-10-07 06:43:04','004F006B0020007300610079006100200061006D00620069006C','+6281319691964','Default_No_Compression','','+6281107908',-1,'Ok saya ambil',33,'','false',0,1);
/*!40000 ALTER TABLE `inbox` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inbox_timestamp` BEFORE INSERT ON `inbox` FOR EACH ROW BEGIN
    IF NEW.ReceivingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.ReceivingDateTime = CURRENT_TIMESTAMP();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mst_data_user`
--

DROP TABLE IF EXISTS `mst_data_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_data_user` (
  `UserDataId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `UserDataName` varchar(50) DEFAULT NULL,
  `UserMobilePhone` varchar(50) DEFAULT NULL,
  `UserRegionId` int(11) DEFAULT NULL,
  `UserGroupId` int(11) DEFAULT NULL,
  `UserExperience` tinyint(4) DEFAULT NULL COMMENT '1=YES; 2NO',
  `UserCertificate` tinyint(4) DEFAULT NULL COMMENT '1=YES; 2NO',
  `UserCreatedDate` datetime DEFAULT '0000-00-00 00:00:00',
  `UserUpdatedDate` datetime DEFAULT '0000-00-00 00:00:00',
  `UserCreatedById` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserDataId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_data_user`
--

LOCK TABLES `mst_data_user` WRITE;
/*!40000 ALTER TABLE `mst_data_user` DISABLE KEYS */;
INSERT INTO `mst_data_user` VALUES (1,'Data Test','08979392113',4,NULL,1,2,'2018-09-23 08:13:16','0000-00-00 00:00:00',2),(2,'DATA TEST ALL','08979392113',NULL,1,1,1,'2018-09-23 08:15:40','0000-00-00 00:00:00',2),(3,'DATA TEST ALL 2','08979392113',NULL,1,1,1,'2018-09-23 08:16:08','0000-00-00 00:00:00',2),(4,'DATA TEST ALL 3','08979392113',NULL,1,1,1,'2018-09-23 08:16:58','0000-00-00 00:00:00',2),(5,'DATA TEST ALL 4','08979392113',NULL,4,1,1,'2018-09-23 08:17:30','0000-00-00 00:00:00',2),(6,'test','081319691964',NULL,6,1,1,'2018-09-23 11:41:19','0000-00-00 00:00:00',2);
/*!40000 ALTER TABLE `mst_data_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_employee`
--

DROP TABLE IF EXISTS `mst_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_employee` (
  `Emp_Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Emp_Name` varchar(50) DEFAULT NULL,
  `Emp_DOB_POB` varchar(100) DEFAULT NULL,
  `Emp_Address` text,
  `Emp_AreaId` int(11) unsigned DEFAULT NULL,
  `Emp_KategoriId` int(11) DEFAULT NULL,
  `Emp_PhoneNumber` varchar(25) DEFAULT NULL,
  `Emp_Email` varchar(80) DEFAULT NULL,
  `Emp_LastEducation` varchar(100) DEFAULT NULL,
  `Emp_EndEducation` varchar(45) DEFAULT NULL,
  `Emp_TotalWorkExp` varchar(45) DEFAULT NULL,
  `Emp_WI_CerfNo` varchar(225) DEFAULT NULL,
  `Emp_WI_Level` varchar(45) DEFAULT NULL,
  `Emp_WI_IssuedBy` varchar(100) DEFAULT NULL,
  `Emp_WI_ValidPeriod` date DEFAULT NULL,
  `Emp_UT_CerfNo` varchar(225) DEFAULT NULL,
  `Emp_UT_Level` varchar(45) DEFAULT NULL,
  `Emp_UT_IssuedBy` varchar(100) DEFAULT NULL,
  `Emp_UT_ValidPeriod` date DEFAULT NULL,
  `Emp_MPI_CerfNo` varchar(225) DEFAULT NULL,
  `Emp_MPI_Level` varchar(45) DEFAULT NULL,
  `Emp_MPI_IssuedBy` varchar(100) DEFAULT NULL,
  `Emp_MPI_ValidPeriod` date DEFAULT NULL,
  `Emp_PT_CerfNo` varchar(225) DEFAULT NULL,
  `Emp_PT_Level` varchar(45) DEFAULT NULL,
  `Emp_PT_IssuedBy` varchar(100) DEFAULT NULL,
  `Emp_PT_ValidPeriod` date DEFAULT NULL,
  `Emp_IR_CerfNo` varchar(225) DEFAULT NULL,
  `Emp_IR_Level` varchar(45) DEFAULT NULL,
  `Emp_IR_IssuedBy` varchar(100) DEFAULT NULL,
  `Emp_IR_ValidPeriod` date DEFAULT NULL,
  `Emp_UploadedDate` datetime DEFAULT NULL,
  `Emp_CreatedDate` datetime DEFAULT NULL,
  `Emp_UpdatedDate` datetime DEFAULT NULL,
  `Emp_Cerf_WI_File` varchar(255) DEFAULT NULL,
  `Emp_Cerf_UT_File` varchar(255) DEFAULT NULL,
  `Emp_Cerf_IR_File` varchar(255) DEFAULT NULL,
  `Emp_Ceff_MPI_File` varchar(255) DEFAULT NULL,
  `Emp_Cerf_PT_File` varchar(255) DEFAULT NULL,
  `Emp_UploadedBy` int(11) NOT NULL,
  `Emp_DeletedDate` datetime DEFAULT NULL,
  `Emp_DeletedBy` int(11) DEFAULT NULL,
  `Emp_Is_Active` tinyint(4) DEFAULT '1',
  `Emp_CreatedById` int(11) DEFAULT NULL,
  `Emp_UpdatedById` int(11) DEFAULT NULL,
  PRIMARY KEY (`Emp_Id`,`Emp_UploadedBy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_employee`
--

LOCK TABLES `mst_employee` WRITE;
/*!40000 ALTER TABLE `mst_employee` DISABLE KEYS */;
INSERT INTO `mst_employee` VALUES (1,'test1','','',1,1,'+6281319691964','','','','','','','','0000-00-00','','','','0000-00-00','','','','0000-00-00','','','','0000-00-00','','','','0000-00-00',NULL,'2018-10-07 13:39:18','2018-10-07 13:49:25','/upload/file/wi/Sertifikat-Welding_Inspector201810071538894965.pdf',NULL,NULL,NULL,NULL,0,'2018-10-07 14:02:03',9,1,10,9);
/*!40000 ALTER TABLE `mst_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbox`
--

DROP TABLE IF EXISTS `outbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendBefore` time NOT NULL DEFAULT '23:59:59',
  `SendAfter` time NOT NULL DEFAULT '00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT '-1',
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL,
  `Retries` int(3) DEFAULT '0',
  `Priority` int(11) DEFAULT '0',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error','Reserved') NOT NULL DEFAULT 'Reserved',
  `StatusCode` int(11) NOT NULL DEFAULT '-1',
  `type_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `OutGroupId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `outbox_date` (`SendingDateTime`,`SendingTimeOut`),
  KEY `outbox_sender` (`SenderID`(250))
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbox`
--

LOCK TABLES `outbox` WRITE;
/*!40000 ALTER TABLE `outbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbox` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `outbox_timestamp` BEFORE INSERT ON `outbox` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingTimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.SendingTimeOut = CURRENT_TIMESTAMP();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `outbox_multipart`
--

DROP TABLE IF EXISTS `outbox_multipart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbox_multipart` (
  `Text` text,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error','Reserved') NOT NULL DEFAULT 'Reserved',
  `StatusCode` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`ID`,`SequencePosition`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbox_multipart`
--

LOCK TABLES `outbox_multipart` WRITE;
/*!40000 ALTER TABLE `outbox_multipart` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbox_multipart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` varchar(35) NOT NULL,
  `IMSI` varchar(35) NOT NULL,
  `NetCode` varchar(10) DEFAULT 'ERROR',
  `NetName` varchar(35) DEFAULT 'ERROR',
  `Client` text NOT NULL,
  `Battery` int(11) NOT NULL DEFAULT '-1',
  `Signal` int(11) NOT NULL DEFAULT '-1',
  `Sent` int(11) NOT NULL DEFAULT '0',
  `Received` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IMEI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES ('','2018-10-07 07:05:19','2018-10-07 06:32:18','2018-10-07 07:05:29','yes','yes','351047888189814','510011947320086','510 01','','Gammu 1.39.0, Linux, kernel 4.15.0-34-generic (#37-Ubuntu SMP Mon Aug 27 15:21:48 UTC 2018), GCC 7.2',0,54,1,2);
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `phones_timestamp` BEFORE INSERT ON `phones` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.TimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.TimeOut = CURRENT_TIMESTAMP();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sentitems`
--

DROP TABLE IF EXISTS `sentitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryDateTime` timestamp NULL DEFAULT NULL,
  `Text` text NOT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SenderID` varchar(255) NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT '-1',
  `TPMR` int(11) NOT NULL DEFAULT '-1',
  `RelativeValidity` int(11) NOT NULL DEFAULT '-1',
  `CreatorID` text NOT NULL,
  `StatusCode` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`ID`,`SequencePosition`),
  KEY `sentitems_date` (`DeliveryDateTime`),
  KEY `sentitems_tpmr` (`TPMR`),
  KEY `sentitems_dest` (`DestinationNumber`),
  KEY `sentitems_sender` (`SenderID`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sentitems`
--

LOCK TABLES `sentitems` WRITE;
/*!40000 ALTER TABLE `sentitems` DISABLE KEYS */;
INSERT INTO `sentitems` VALUES ('2018-10-07 06:41:11','2018-10-07 06:41:04','2018-10-07 06:41:11',NULL,'006B006C0069006B0020006C0069006E006B00200069006E0069002000680074007400700073003A002F002F007700770077002E0067006F006F0067006C0065002E0063006F006D002F00640072006900760065002F','+6281319691964','Default_No_Compression','','+62816124',-1,'klik link ini https://www.google.com/drive/',239,'',1,'SendingOKNoReport',-1,114,255,'admin',-1);
/*!40000 ALTER TABLE `sentitems` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sentitems_timestamp` BEFORE INSERT ON `sentitems` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbl_change_log`
--

DROP TABLE IF EXISTS `tbl_change_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_change_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_curr_version` varchar(255) NOT NULL,
  `log_title` varchar(255) DEFAULT NULL,
  `log_description` text NOT NULL,
  `log_date` date NOT NULL,
  `log_author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_change_log`
--

LOCK TABLES `tbl_change_log` WRITE;
/*!40000 ALTER TABLE `tbl_change_log` DISABLE KEYS */;
INSERT INTO `tbl_change_log` VALUES (1,'1.0.1','Reales System','Menagament system SMS broadcast \r\nadalah system untuk mempermudah kegiatan pengiriman SMS.\r\nSystem ini dibuat menggunakan <br/>\r\n- PHP VERSION 7.0.3 <br/>\r\n- FRAMEWORK CODEIGNITER 3.1.7 <br/>\r\nFitur yang tersedia sementara di sytem ini : <br/>\r\n1. create sms <br/>\r\n2. outbox <br/>\r\n3. sent <br/>\r\n4. inbox <br/>\r\n4. phonebook <br/>','2018-07-01','Didi Triawan'),(2,'1.0.2','Update','#update <br/>\r\n\r\n1.SMS TEMPLATE <br/>\r\n2.SMS BROADCAST <br/>\r\n','2018-08-01','Didi Triawan'),(3,'1.0.3','Update and bug fix','#update <br/>\r\n1. Server sms gammu <br/>\r\n2. Modem wavecome <br/>\r\n3. Send sms > 160 character <br/>\r\n4. Upload file contact/phonebook <br/>\r\n\r\n\r\n#Bug fix <br/>\r\n1.Fixed send broadcast sms <br/>\r\n2.Fixed validate create sms <br/>\r\n','2018-09-05','Didi Triawan'),(4,'1.0.4','Update','#update <br/>1.Upload Data<br/>2.Penambahan Tools Chat','2018-10-03','Didi Triawan');
/*!40000 ALTER TABLE `tbl_change_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_chat`
--

DROP TABLE IF EXISTS `tbl_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_chat` (
  `ChatId` int(11) NOT NULL AUTO_INCREMENT,
  `ChatFromId` int(11) DEFAULT NULL,
  `ChatToId` int(11) DEFAULT NULL,
  `ChatContent` longtext,
  `ChatDate` datetime DEFAULT NULL,
  `ChatFile` varchar(255) DEFAULT NULL,
  `ChatIsRead` tinyint(4) DEFAULT '0',
  `ChatFlagClose` int(11) DEFAULT '0',
  `ChatFromName` varchar(100) DEFAULT NULL,
  `ChatToName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ChatId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_chat`
--

LOCK TABLES `tbl_chat` WRITE;
/*!40000 ALTER TABLE `tbl_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_daily_log`
--

DROP TABLE IF EXISTS `tbl_daily_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_daily_log` (
  `LogId` int(11) NOT NULL AUTO_INCREMENT,
  `LogTitle` varchar(100) DEFAULT NULL,
  `LogUserId` int(11) DEFAULT NULL,
  `LogModule` varchar(100) DEFAULT NULL,
  `LogDescription` text,
  `LogDate` datetime DEFAULT NULL,
  PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_daily_log`
--

LOCK TABLES `tbl_daily_log` WRITE;
/*!40000 ALTER TABLE `tbl_daily_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_daily_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kategori`
--

DROP TABLE IF EXISTS `tbl_kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kategori`
--

LOCK TABLES `tbl_kategori` WRITE;
/*!40000 ALTER TABLE `tbl_kategori` DISABLE KEYS */;
INSERT INTO `tbl_kategori` VALUES (1,'test');
/*!40000 ALTER TABLE `tbl_kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_region`
--

DROP TABLE IF EXISTS `tbl_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_region` (
  `region_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `region_code` varchar(35) DEFAULT NULL,
  `region_name` varchar(50) NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_region`
--

LOCK TABLES `tbl_region` WRITE;
/*!40000 ALTER TABLE `tbl_region` DISABLE KEYS */;
INSERT INTO `tbl_region` VALUES (1,'GROUP01','test are');
/*!40000 ALTER TABLE `tbl_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sms_group`
--

DROP TABLE IF EXISTS `tbl_sms_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sms_group` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_code` varchar(20) DEFAULT NULL,
  `group_name` varchar(45) NOT NULL,
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `group_code` (`group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sms_group`
--

LOCK TABLES `tbl_sms_group` WRITE;
/*!40000 ALTER TABLE `tbl_sms_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sms_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sms_log`
--

DROP TABLE IF EXISTS `tbl_sms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sms_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_user_id` int(11) DEFAULT NULL,
  `log_outbox_id` bigint(20) DEFAULT NULL,
  `log_inbox_id` bigint(20) DEFAULT NULL,
  `log_module` varchar(50) DEFAULT NULL,
  `log_description` varchar(50) DEFAULT NULL,
  `log_sms_create_by` int(11) DEFAULT NULL,
  `log_created_date` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sms_log`
--

LOCK TABLES `tbl_sms_log` WRITE;
/*!40000 ALTER TABLE `tbl_sms_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sms_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sms_template`
--

DROP TABLE IF EXISTS `tbl_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sms_template` (
  `template_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(50) NOT NULL,
  `template_content` text NOT NULL,
  `template_is_active` tinyint(4) NOT NULL DEFAULT '1',
  `template_created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `template_updated_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `template_created_by` int(11) NOT NULL,
  `template_deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sms_template`
--

LOCK TABLES `tbl_sms_template` WRITE;
/*!40000 ALTER TABLE `tbl_sms_template` DISABLE KEYS */;
INSERT INTO `tbl_sms_template` VALUES (1,'CIVIL','silahkan klik link ini https://stackoverflow.com/questions/16776176/sql-left-join-subquery-alias untuk mengetahui job desc pekerjaan',1,'2018-07-19 19:06:38','2018-10-07 00:38:53',2,NULL),(2,'template test','klik link ini https://www.google.com/drive/',1,'2018-10-07 13:40:42','0000-00-00 00:00:00',10,NULL);
/*!40000 ALTER TABLE `tbl_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sms_type`
--

DROP TABLE IF EXISTS `tbl_sms_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sms_type` (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sms_type`
--

LOCK TABLES `tbl_sms_type` WRITE;
/*!40000 ALTER TABLE `tbl_sms_type` DISABLE KEYS */;
INSERT INTO `tbl_sms_type` VALUES (1,'Group'),(2,'Personal'),(3,'Broadcast'),(4,'Input number');
/*!40000 ALTER TABLE `tbl_sms_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_full_name` varchar(55) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(45) NOT NULL,
  `user_login_time` datetime DEFAULT NULL,
  `user_logout_time` datetime DEFAULT NULL,
  `user_is_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=logout;1=login',
  `user_is_active` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=block;1=unblock',
  `user_role_id` int(11) DEFAULT NULL,
  `user_ip_address` varchar(11) DEFAULT NULL,
  `user_photo` varchar(255) DEFAULT NULL,
  `user_created_date` datetime DEFAULT NULL,
  `user_updated_date` datetime DEFAULT NULL,
  `user_created_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (2,'SYSTEM APPLICATION','root','root@mail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','2018-10-07 13:13:23',NULL,1,1,1,NULL,NULL,'2018-07-13 00:00:00',NULL,1),(3,'SUPERUSER','superuser','root@mail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','2018-10-07 08:00:13',NULL,1,1,1,NULL,NULL,'2018-07-13 00:00:00',NULL,1),(8,'SAMIN SOEDHARNO','samin','samin.soedharno@sudartaconsulting.com','7c4a8d09ca3762af61e59520943dc26494f8941b','2018-10-07 13:01:18',NULL,1,1,2,NULL,NULL,'2018-10-07 12:46:55',NULL,NULL),(9,'IRA ','ira','ira@sudartaconsulting.com','7c4a8d09ca3762af61e59520943dc26494f8941b','2018-10-07 13:42:01',NULL,1,1,3,NULL,NULL,'2018-10-07 12:47:42',NULL,NULL),(10,'SYSTEM APPLICATION','admin','admin@mail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','2018-10-07 13:08:28',NULL,1,1,1,NULL,NULL,'2018-07-13 00:00:00',NULL,1);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_role`
--

DROP TABLE IF EXISTS `tbl_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_role` (
  `RoleId` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_role`
--

LOCK TABLES `tbl_user_role` WRITE;
/*!40000 ALTER TABLE `tbl_user_role` DISABLE KEYS */;
INSERT INTO `tbl_user_role` VALUES (1,'SYSTEM APPLICATION'),(2,'INSPECTOR'),(3,'OPERATOR');
/*!40000 ALTER TABLE `tbl_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_mssb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-07 14:06:49
