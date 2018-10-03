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
INSERT INTO `ci_sessions` VALUES ('8cl8od7rm31c54cih3ri4nl6ghcn4563','127.0.0.1',1536114623,_binary '__ci_last_regenerate|i:1536114623;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";IS_LOGIN_ADMIN|b:1;'),('49eil2t81tfbhq4q1q55cmv6kh2fakbo','127.0.0.1',1536117336,_binary '__ci_last_regenerate|i:1536117336;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";IS_LOGIN_ADMIN|b:1;'),('iuc4tr0pl8kpiq9brjsd3ioqe1p9j289','127.0.0.1',1536117641,_binary '__ci_last_regenerate|i:1536117641;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";IS_LOGIN_ADMIN|b:1;'),('qp26q536eng8kn0dsgk7o8lrbq90br4o','127.0.0.1',1536118007,_binary '__ci_last_regenerate|i:1536118007;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";IS_LOGIN_ADMIN|b:1;'),('j3dphvdh31tgvedbed6j9glh9tdtkrg4','127.0.0.1',1536118322,_binary '__ci_last_regenerate|i:1536118322;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";IS_LOGIN_ADMIN|b:1;'),('a94eghb5koemnmj3bgnm99kuis3mog97','127.0.0.1',1536118650,_binary '__ci_last_regenerate|i:1536118650;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";IS_LOGIN_ADMIN|b:1;'),('mojm2550qreb0mcq7ucai4ciumq7bj7n','127.0.0.1',1536118959,_binary '__ci_last_regenerate|i:1536118959;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";IS_LOGIN_ADMIN|b:1;'),('s7u2iq6h5tn1id6v2k7cemqlaom8m5e0','127.0.0.1',1536122370,_binary '__ci_last_regenerate|i:1536122370;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";IS_LOGIN_ADMIN|b:1;'),('pbk7ll8sg8q0qc2ouutv2kcnl7tfdp9e','127.0.0.1',1536122401,_binary '__ci_last_regenerate|i:1536122370;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";IS_LOGIN_ADMIN|b:1;'),('0dfji9ilb1g7mr73nu1nove02njito4m','127.0.0.1',1536143812,_binary '__ci_last_regenerate|i:1536143811;'),('j2p0im40cp4t57lvtvn4sbu1s36pp76m','127.0.0.1',1536143813,''),('gfkf91auclbmpracohfjpcsdel9rv2j0','127.0.0.1',1536143813,_binary '__ci_last_regenerate|i:1536143813;'),('rq0v50qjh35bt73f7tnut3jb39u9k4vr','127.0.0.1',1536143814,_binary '__ci_last_regenerate|i:1536143813;'),('v42rqdujihn90h5a0o461hr7b6gus6mf','127.0.0.1',1537176214,_binary '__ci_last_regenerate|i:1537176214;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('jimn0f49oq7j20369b78duobpauae1uj','::1',1537176581,_binary '__ci_last_regenerate|i:1537176581;'),('gkjtnju3579dr5ossreaeelhdb8vmljd','127.0.0.1',1537177049,_binary '__ci_last_regenerate|i:1537177049;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('magg9boclvdb6ufmhc1vpko0k33brs74','::1',1537176581,_binary '__ci_last_regenerate|i:1537176581;'),('n24s2eh9id3gpnlj5th3csbaron38290','127.0.0.1',1537176582,_binary '__ci_last_regenerate|i:1537176582;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('j9se888raigm7g6ulmbgd5sriu2hu8gk','127.0.0.1',1537177058,_binary '__ci_last_regenerate|i:1537177049;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('kq9pbvekmcn83krfdm8kv86d468gsr9q','::1',1537194266,_binary '__ci_last_regenerate|i:1537194265;'),('ivues13nphaejjodhoqllg7tg1h477m9','127.0.0.1',1537194593,_binary '__ci_last_regenerate|i:1537194593;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('3gcdfo4n7fkj8c5qt4bkq4dje7inscqn','127.0.0.1',1537194900,_binary '__ci_last_regenerate|i:1537194900;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('poivropbmdgkbc51ge57t7rt418s841f','127.0.0.1',1537194967,_binary '__ci_last_regenerate|i:1537194900;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('dhf90dfca32ach7eurvftlf82te2ug6a','::1',1537279013,_binary '__ci_last_regenerate|i:1537279013;'),('7or93ala86135l46hqdevuj24p8l9th2','127.0.0.1',1537279437,_binary '__ci_last_regenerate|i:1537279437;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('cchuuthmjudjl0opj4bffjmqrqdvq4lf','127.0.0.1',1537280032,_binary '__ci_last_regenerate|i:1537280032;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('6nktpt5ng6mgi15g3df3dbsj1nflmnfs','127.0.0.1',1537281094,_binary '__ci_last_regenerate|i:1537281094;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('6btq00evkgk12kjgfdmv74bo7r5c2qot','127.0.0.1',1537281407,_binary '__ci_last_regenerate|i:1537281407;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('c3a1i9d6cpk4eehha75cmev9cu5l1e09','127.0.0.1',1537281780,_binary '__ci_last_regenerate|i:1537281780;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('6d3a1d3gfct7hscs39vg03l2b5itadep','127.0.0.1',1537282045,_binary '__ci_last_regenerate|i:1537281780;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('qrcsrclek434juk9vajftgmaju58mv1j','127.0.0.1',1537283678,_binary '__ci_last_regenerate|i:1537283675;message|s:0:\"\";__ci_vars|a:1:{s:7:\"message\";s:3:\"new\";}'),('jb5ubospdrgpdu3ggbenj4680hfdo1rm','::1',1537457681,_binary '__ci_last_regenerate|i:1537457681;'),('97rvbjjufit7qhljm01uh1vlsl7t3v8k','127.0.0.1',1537457882,_binary '__ci_last_regenerate|i:1537457681;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('4mdqj8rf6ak149tsdvq5h70bvseta7p3','::1',1537609774,_binary '__ci_last_regenerate|i:1537609774;'),('9u6shldkqnkn5smfml9e0vh2il09rg9u','127.0.0.1',1537610104,_binary '__ci_last_regenerate|i:1537610104;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('0u37vi6gdilpmo5qg2r0ls9o6mtsp9jp','127.0.0.1',1537610143,_binary '__ci_last_regenerate|i:1537610104;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('g4vqm1g5k56hpe7kdvar9k88q438vn8q','::1',1537628394,_binary '__ci_last_regenerate|i:1537628394;'),('8jbkec2rqne4qfvb3fo4bvafvcgn5qfr','127.0.0.1',1537628736,_binary '__ci_last_regenerate|i:1537628736;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('hmjs9lkcehjvgigprur1ujkanlo0a5cb','127.0.0.1',1537629163,_binary '__ci_last_regenerate|i:1537629163;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('qjee2leeb6jh2hrrror52irigi7chgt4','127.0.0.1',1537629466,_binary '__ci_last_regenerate|i:1537629466;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('7is7v51mqvrc6nm1psmr0er8nece6qva','127.0.0.1',1537629877,_binary '__ci_last_regenerate|i:1537629877;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('diovnfq3m5943ss9f0uaug3tmr0hncjt','127.0.0.1',1537630210,_binary '__ci_last_regenerate|i:1537630210;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('3tfam7uaacc3sghrrr5rhjdv5cfuo2rs','127.0.0.1',1537630599,_binary '__ci_last_regenerate|i:1537630599;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('cs62seh5a8p4h8jmrrr1s8o1eggbrv83','127.0.0.1',1537632529,_binary '__ci_last_regenerate|i:1537632529;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('tro14t54hc6mrclq8l6m65d74vorhm4t','127.0.0.1',1537632925,_binary '__ci_last_regenerate|i:1537632925;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('i24ucc5iidf8re685n7231sslqf9hijc','127.0.0.1',1537633662,_binary '__ci_last_regenerate|i:1537633662;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('0b6n7m8q8mv74hfntrla50qpcamjuk9n','127.0.0.1',1537633971,_binary '__ci_last_regenerate|i:1537633971;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('uf2s02adj0ejh3e0h1ainj2ipdbralo9','127.0.0.1',1537634975,_binary '__ci_last_regenerate|i:1537634975;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('0jn0fjdms9bdfb0i1pf6ttr75ev90o7j','127.0.0.1',1537635250,_binary '__ci_last_regenerate|i:1537634975;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('vk374ar37g4644n0ck81p0q68smd8er9','127.0.0.1',1537665154,_binary '__ci_last_regenerate|i:1537665154;message|s:0:\"\";__ci_vars|a:1:{s:7:\"message\";s:3:\"new\";}'),('m4bo0kpa4di5gmvfqckaudutrqrujit4','127.0.0.1',1537665457,_binary '__ci_last_regenerate|i:1537665457;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('p1eqp3hgoiqqv6e649q3g3qdoejchjsl','127.0.0.1',1537665880,_binary '__ci_last_regenerate|i:1537665880;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('ivah3v3m9sn3g8q922uf04f9db2r7edp','127.0.0.1',1537666205,_binary '__ci_last_regenerate|i:1537666205;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('rd1rrfo95khttrsjstln26ajfm0g8ped','127.0.0.1',1537666276,_binary '__ci_last_regenerate|i:1537666205;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('eo9aepmbtupgb09o7acd4avbgpd6vuco','::1',1537677427,_binary '__ci_last_regenerate|i:1537677427;'),('dlegt483df8i6is97ibrt6j09iq78jvf','127.0.0.1',1537677739,_binary '__ci_last_regenerate|i:1537677739;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('4jvr4e8pfjl5gnlpqj2jerqt33alv964','127.0.0.1',1537678088,_binary '__ci_last_regenerate|i:1537678088;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('3kont48ogb1tr90c8c3obnae62edib9h','127.0.0.1',1537678412,_binary '__ci_last_regenerate|i:1537678412;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('j92b0rur6cqdhltlj03n0pnqgngdvbjm','127.0.0.1',1537678958,_binary '__ci_last_regenerate|i:1537678958;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('5i87u1tki9nbbmuj7pfe8p0v62tmsbkg','127.0.0.1',1537679954,_binary '__ci_last_regenerate|i:1537679954;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('vj1bplglots4tf9da8at28oc8g95gen3','127.0.0.1',1537680419,_binary '__ci_last_regenerate|i:1537680419;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('eoq2hn3rjofv62bp7h43ma994mobldml','127.0.0.1',1537680836,_binary '__ci_last_regenerate|i:1537680836;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('lu92s1citmg0fpgd8gr3rkcjt6sc259c','127.0.0.1',1537681157,_binary '__ci_last_regenerate|i:1537681157;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('muv2070vcgrso8toenshqh062jie0ph5','127.0.0.1',1537681646,_binary '__ci_last_regenerate|i:1537681646;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('2966etqsl2c6dujr82sd0fs0t9np1kmq','127.0.0.1',1537682274,_binary '__ci_last_regenerate|i:1537682274;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('8hdnssjqq6c1dif7iv53109apkifu1fe','127.0.0.1',1537682583,_binary '__ci_last_regenerate|i:1537682583;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('cbp6fiq7t7rvcrscj1r15m1u4f1nvqgv','127.0.0.1',1537683378,_binary '__ci_last_regenerate|i:1537683378;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('vuigmo3plejtnos5tlghu4ogt1cb8eps','127.0.0.1',1537683725,_binary '__ci_last_regenerate|i:1537683725;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('2etthc9ad5n0l2mot2ocfui34neop5pk','127.0.0.1',1537683940,_binary '__ci_last_regenerate|i:1537683725;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('b9fii4pglfrklqieo3ovcm4mebqvdl46','127.0.0.1',1537696895,_binary '__ci_last_regenerate|i:1537696855;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('9v01aaalvbbtu8mjcvip383mign3tdul','::1',1537717240,_binary '__ci_last_regenerate|i:1537717239;'),('kfm6mps59ecdel1tfr7969un49n04jib','127.0.0.1',1537718317,_binary '__ci_last_regenerate|i:1537718317;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('fuavnj3ojvuicjjdoet4i31lokmusso2','127.0.0.1',1537718513,_binary '__ci_last_regenerate|i:1537718317;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('he2j5novcmoii8akklrsd1ttuffugn6a','::1',1537783036,_binary '__ci_last_regenerate|i:1537783036;'),('6uefh1m7f6tpeu7osmbm7luj7t5pcf5v','127.0.0.1',1537783037,_binary '__ci_last_regenerate|i:1537783037;message|s:0:\"\";__ci_vars|a:1:{s:7:\"message\";s:3:\"new\";}'),('u4bft4cmntdj23tl1ptpdufc93qddco0','::1',1537783278,_binary '__ci_last_regenerate|i:1537783036;'),('i4ph5pmrlhtbi3te43copc1le95968bj','127.0.0.1',1537783290,_binary '__ci_last_regenerate|i:1537783037;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('eio4v6ehhlr3vjkq2oah7u0gr8onahhq','::1',1537797176,_binary '__ci_last_regenerate|i:1537797176;'),('02o52g7oeuu6qakhjua4bm27qckm0mn1','127.0.0.1',1537797715,_binary '__ci_last_regenerate|i:1537797715;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('24su8m3vbduquqbeumrvl4e4jgc1ff7q','127.0.0.1',1537798136,_binary '__ci_last_regenerate|i:1537798136;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('ar9alhrsu09la8o4ki1ulueb581mkub9','127.0.0.1',1537798693,_binary '__ci_last_regenerate|i:1537798693;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('13lotqorjjr0gf4jqmfpfj5p66m1u18v','127.0.0.1',1537798995,_binary '__ci_last_regenerate|i:1537798995;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('a2srar7n9jr8umdl9b30gtf3du27ksvb','127.0.0.1',1537799425,_binary '__ci_last_regenerate|i:1537799425;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('8u1iil1iatvdfkcvjgtf7u9aa7ht8l15','127.0.0.1',1537800363,_binary '__ci_last_regenerate|i:1537800363;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('utotds8d7plgr74qm490psh34u797g1c','127.0.0.1',1537800746,_binary '__ci_last_regenerate|i:1537800746;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('3o7cad484v6634p1quv14ikc9erkutcq','127.0.0.1',1537801250,_binary '__ci_last_regenerate|i:1537801250;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('lqoj17ahtq5jrl0uh1vpefepkhggiaoa','127.0.0.1',1537801624,_binary '__ci_last_regenerate|i:1537801624;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('ggd5ff7fnaflsoeabvmrjq612a34fcn8','127.0.0.1',1537801935,_binary '__ci_last_regenerate|i:1537801935;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('ddooieb6agskb6rl797cq22rrm97t0ou','127.0.0.1',1537802072,_binary '__ci_last_regenerate|i:1537801935;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('il7gojv6of2vvmobo0d8f4v9eedevhfv','::1',1537843611,_binary '__ci_last_regenerate|i:1537843611;'),('muu73akk5fpj1jouf5c4m3aht86nf2di','127.0.0.1',1537845399,_binary '__ci_last_regenerate|i:1537845399;message|s:0:\"\";__ci_vars|a:1:{s:7:\"message\";s:3:\"new\";}'),('o67k0dfqq5phosa7bi3aaddpro1pnm6u','192.168.25.133',1537845399,_binary '__ci_last_regenerate|i:1537845399;'),('ehu0sge0kjp95eh0ohcfvmsrdquvmmri','127.0.0.1',1537845407,_binary '__ci_last_regenerate|i:1537845399;message|s:0:\"\";__ci_vars|a:1:{s:7:\"message\";s:3:\"new\";}'),('d23d30qjj3qebvnigc8iij9nmfbl55nk','127.0.0.1',1537886438,_binary '__ci_last_regenerate|i:1537886223;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('72kigpruhsiqg83mk692g4856n9q8ipj','::1',1538149763,_binary '__ci_last_regenerate|i:1538149763;'),('drss1ge41mrs65vjdj26ti9atnjd2u7d','127.0.0.1',1538149832,_binary '__ci_last_regenerate|i:1538149763;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('fne55k9meqno20o6fj4f9nnl7qe2t627','::1',1538291731,_binary '__ci_last_regenerate|i:1538291731;'),('9tamoprkmc5o3463r4rf4jl859dhldjh','127.0.0.1',1538292042,_binary '__ci_last_regenerate|i:1538292042;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('dggmajvldretdk1adjt4t4fikoh21m5i','127.0.0.1',1538292745,_binary '__ci_last_regenerate|i:1538292745;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('pbma1ncmn0ovpbsuqp8acld0jmhd2jtp','127.0.0.1',1538292980,_binary '__ci_last_regenerate|i:1538292745;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('78edknff0o9b9hphpu54fstkl9dle40c','::1',1538374301,_binary '__ci_last_regenerate|i:1538374301;'),('oqochddmpeb8epu129g42dmt04pfu589','127.0.0.1',1538374649,_binary '__ci_last_regenerate|i:1538374649;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('aqvbaa42elp1vakqvn5s7sudlk2tslnk','127.0.0.1',1538377004,_binary '__ci_last_regenerate|i:1538377004;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('86chri2ku42fekkeb3rgt4rk6qdf35pp','127.0.0.1',1538377223,_binary '__ci_last_regenerate|i:1538377004;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('kgg268395uq7vopts6l5nrh3ossducte','::1',1538457848,_binary '__ci_last_regenerate|i:1538457848;'),('cmi151g0n6fgtr2dm9l1bmat3l9lmpkt','127.0.0.1',1538458119,_binary '__ci_last_regenerate|i:1538457849;message|s:30:\"Username or Password is wrong.\";__ci_vars|a:1:{s:7:\"message\";s:3:\"new\";}'),('1g9nenbs2qc68svdnkrp0voc25i3eppq','::1',1538492198,_binary '__ci_last_regenerate|i:1538492198;'),('ge833icov3stm3nrc88i3169saqvs0if','127.0.0.1',1538497273,_binary '__ci_last_regenerate|i:1538497273;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('n0b8nlm3c0ai9kv5e7locsmn7g0mu29v','127.0.0.1',1538497603,_binary '__ci_last_regenerate|i:1538497603;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('btsnd2t0ifk9hltg17pos15ljvcjplhl','127.0.0.1',1538498732,_binary '__ci_last_regenerate|i:1538498732;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('tvvnmrg7k4ct77ihgvvaebr104cg59se','127.0.0.1',1538499570,_binary '__ci_last_regenerate|i:1538498732;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";'),('mmbli1chpgo9khceoerlmc3djqjo3vfp','::1',1538540524,_binary '__ci_last_regenerate|i:1538540524;'),('i4t013qcv4eb008ka1ad6mnpsr63qq6n','127.0.0.1',1538540934,_binary '__ci_last_regenerate|i:1538540524;IS_LOGIN_ADMIN|b:1;name|s:4:\"root\";email|s:13:\"root@mail.com\";password|s:40:\"7c4a8d09ca3762af61e59520943dc26494f8941b\";user_id|s:1:\"2\";');
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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbox`
--

LOCK TABLES `inbox` WRITE;
/*!40000 ALTER TABLE `inbox` DISABLE KEYS */;
INSERT INTO `inbox` VALUES ('2018-09-01 16:48:02','2018-08-19 12:15:57','004F006B006500200074006500730074002000620061006C00650073','+628979392113','Default_No_Compression','','+628964011098',-1,'Oke test bales',1,'','false',0,1),('2018-08-19 17:49:38','2018-08-19 12:24:26','0059006F007700650073002000620065006E','+628979392113','Default_No_Compression','','+628964011098',-1,'Yowes ben',2,'','false',0,1),('2018-08-19 16:43:49','2018-08-19 15:47:08','004F006B0065002000750064006100680020006D006100730075006B','+628979392113','Default_No_Compression','','+628964011098',-1,'Oke udah masuk',3,'','false',0,1),('2018-09-02 01:24:18','2018-09-02 01:16:20','00420061006C00650073','+628979392113','Default_No_Compression','','+628964011098',-1,'Bales',8,'','false',0,1),('2018-09-05 03:42:39','2018-09-02 02:11:00','00590061','+628979392113','Default_No_Compression','','+628964011098',-1,'Ya',9,'','false',0,1),('2018-09-04 17:12:08','2018-09-02 04:12:35','0054006500730074','+628979392113','Default_No_Compression','','+628964011098',-1,'Test',10,'','false',0,1),('2018-09-05 04:39:44','2018-09-02 05:33:59','002A0048006F007200650065002A002000200047005200410054004900530020004E0065006C0070006F006E0020006B006500200073006500730061006D006100200058004C00200041006E006400610020006D006100730069006800200041004B005400490046002E00200041006B007400690066006B0061006E0020007400650072007500730020006B0061007200740075006E0079006100200075006E00740075006B0020006E0069006B006D00610074006900200042004F004E005500530020006E00790061002E002000430065006B002000500052004F004D004F002000500061006B00650074006E007900610020006400690020002A0031003200330023002E00200049006E0066006F002000380031003700200058004E005A003100390041','XL-Axiata','Default_No_Compression','','+62818445009',0,'*Horee*  GRATIS Nelpon ke sesama XL Anda masih AKTIF. Aktifkan terus kartunya untuk nikmati BONUS nya. Cek PROMO Paketnya di *123#. Info 817 XNZ19A',11,'','false',0,1),('2018-09-02 15:48:35','2018-09-02 15:25:44','0054006500730074','+628979392113','Default_No_Compression','','+628964011098',-1,'Test',12,'','false',0,1),('2018-09-04 22:47:26','2018-09-02 15:48:55','0045006E006700670061','+628979392113','Default_No_Compression','','+628964011098',-1,'Engga',13,'','false',0,1),('2018-09-18 14:03:57','2018-09-02 16:04:42','004C0075002000620061006E0067','+628979392113','Default_No_Compression','','+628964011098',-1,'Lu bang',14,'','false',0,1),('2018-09-22 16:34:13','2018-09-04 15:52:21','004F006B0065002000700061006B00200073006900610070','+628979392113','Default_No_Compression','','+628964011098',-1,'Oke pak siap',15,'','false',0,1),('2018-09-23 04:46:29','2018-09-23 01:31:55','0047005200410054004900530020004E0065006C0070006F006E0020006B0065002000730065006D007500610020004F00700065007200610074006F0072002000730065006C0061006D0061002000320020006800610072006900200073006500740069006100700020006900730069002000700075006C007300610020006D0069006E0069006D0061006C00200031003000720062002E0020004900730069002000700075006C00730061006D007500200073006B007200670020006A007500670061002100200049006E0066006F0020006C0065006E0067006B0061007000200064006900200068007400740070003A002F002F0069006D0033002E0064006F002F00530070','INDOSAT','Default_No_Compression','','+62816124',-1,'GRATIS Nelpon ke semua Operator selama 2 hari setiap isi pulsa minimal 10rb. Isi pulsamu skrg juga! Info lengkap di http://im3.do/Sp',18,'','false',0,1),('2018-09-23 05:22:42','2018-09-23 04:45:19','0054004F005000550050002000700075006C0073006100200052007000200032003500300030003000200062006500720068006100730069006C002000760069006100200053004D005300420041004E004B0049004E004700200042004300410020006B006F00640065002000740072007800200030003900320033003100310034003500300039003000370031003100300030002E002000500075006C0073006100200061006E006400610020007300610061007400200069006E0069002000520070002000320035003000300030002E00200054006500720069006D00610020006B0061007300690068002000740065006C006100680020006D0065006E006700670075006E0061006B0061006E00200049004E0044004F0053004100540020004F004F005200450044004F004F','INDOSAT','Default_No_Compression','','+62816124',-1,'TOPUP pulsa Rp 25000 berhasil via SMSBANKING BCA kode trx 0923114509071100. Pulsa anda saat ini Rp 25000. Terima kasih telah menggunakan INDOSAT OOREDOO',19,'','false',0,1),('2018-09-23 04:46:50','2018-09-23 04:45:19','0054004F005000550050002000700075006C0073006100200052007000200032003500300030003000200062006500720068006100730069006C002000760069006100200053004D005300420041004E004B0049004E004700200042004300410020006B006F00640065002000740072007800200030003900320033003100310034003500300039003000370031003100300030002E002000500075006C0073006100200061006E006400610020007300610061007400200069006E0069002000520070002000320035003000300030002E00200054006500720069006D00610020006B0061007300690068002000740065006C006100680020006D0065006E006700670075006E0061006B0061006E00200049004E0044004F0053004100540020004F004F005200450044004F004F','INDOSAT','Default_No_Compression','','+62816124',-1,'TOPUP pulsa Rp 25000 berhasil via SMSBANKING BCA kode trx 0923114509071100. Pulsa anda saat ini Rp 25000. Terima kasih telah menggunakan INDOSAT OOREDOO',20,'','false',0,1),('2018-09-23 06:00:51','2018-09-23 04:45:30','00530065006C0061006D00610074002C002000700061006B006500740020004E0065006C0070006F006E00200032002000480061007200690020006B0065002000530065006D007500610020004F00700065007200610074006F007200200073007500640061006800200061006B007400690066002000730064002000320035002F00300039002F0032003000310038002000310031003A00340035002E0020004E0069006B006D006100740069002000500065006E00610077006100720061006E002000700061006B006500740020005400450052004200410049004B002000680061006E007900610020006400690020002A00310032003300230020006100740061007500200068007400740070003A002F002F0069006D0033002E0064006F002F006D0033','123','Default_No_Compression','','+62816124',-1,'Selamat, paket Nelpon 2 Hari ke Semua Operator sudah aktif sd 25/09/2018 11:45. Nikmati Penawaran paket TERBAIK hanya di *123# atau http://im3.do/m3',21,'','false',0,1),('2018-09-23 04:55:04','2018-09-23 04:46:31','005900650073','+6281319691964','Default_No_Compression','','+6281107908',-1,'Yes',22,'','false',0,1),('2018-09-23 15:59:15','2018-09-23 06:00:00','004E0065006C0070006F006E002000470041004B002000500041004B00450020004200410059004100520020006B0065002000730065006D007500610020004F00700065007200610074006F0072002000730065006C0061006D006100200032002000680061007200690021002000430075006B00750070002000640067006E002000690073006900200075006C0061006E0067002000700075006C007300610020006D0069006E0069006D0061006C00200031003000720062002E0020004900730069002000700075006C00730061006D007500200073006B00720067002100200049006E0066006F0020006C0065006E0067006B0061007000200064006900200068007400740070003A002F002F0069006D0033002E0064006F002F0053007000200043005000300031','INDOSAT ','Default_No_Compression','','+628161285803',-1,'Nelpon GAK PAKE BAYAR ke semua Operator selama 2 hari! Cukup dgn isi ulang pulsa minimal 10rb. Isi pulsamu skrg! Info lengkap di http://im3.do/Sp CP01',23,'','false',0,1);
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
  `Emp_Dob` date DEFAULT NULL,
  `Emp_Pob` varchar(255) DEFAULT NULL,
  `Emp_Address` text,
  `Emp_AreaId` int(11) unsigned DEFAULT NULL,
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
  `Emp_CreatedDate` datetime DEFAULT NULL,
  `Emp_UpdatedDate` datetime DEFAULT NULL,
  `Emp_UploadedDate` datetime DEFAULT NULL,
  `Emp_UploadedBy` int(11) NOT NULL,
  `Emp_Is_Active` tinyint(4) DEFAULT '1',
  `Emp_DeletedDate` datetime DEFAULT NULL,
  `Emp_DeletedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`Emp_Id`,`Emp_UploadedBy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_employee`
--

LOCK TABLES `mst_employee` WRITE;
/*!40000 ALTER TABLE `mst_employee` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4;
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
INSERT INTO `outbox_multipart` VALUES (NULL,'Default_No_Compression','050003A70403',-1,'rbentuk dengan menggunakan fungsi substr($kata, 0, 1); yang berarti kita mengambil satu karakter dari awal (0), dan diambil satu karakter (1), maka terce',0,3,'Reserved',-1),(NULL,'Default_No_Compression','050003A70404',-1,'tak MES.',0,4,'Reserved',-1),(NULL,'Default_No_Compression','050003A70402',-1,'g variabel nama menjadi Array, maka akan terbentuk tiga nama yaitu : Muhamad,Erros,Sublianto.\n\nKemudian kita ambil satu karakter dari setiap kata yang te',0,2,'Reserved',-1);
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
INSERT INTO `phones` VALUES ('','2018-09-23 06:52:05','2018-09-23 04:36:11','2018-09-23 06:52:15','yes','yes','351047888189814','510011947320086','510 01','','Gammu 1.39.0, Linux, kernel 4.15.0-34-generic (#37-Ubuntu SMP Mon Aug 27 15:21:48 UTC 2018), GCC 7.2',0,57,14,5);
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
INSERT INTO `sentitems` VALUES ('2018-09-04 15:52:40','2018-09-04 15:51:36','2018-09-04 15:52:40',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','8979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',124,'',1,'SendingOKNoReport',-1,138,255,'root',-1),('2018-09-04 15:52:17','2018-09-04 15:51:36','2018-09-04 15:52:17',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',116,'',1,'SendingOKNoReport',-1,130,255,'root',-1),('2018-09-04 15:52:20','2018-09-04 15:51:36','2018-09-04 15:52:20',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',117,'',1,'SendingOKNoReport',-1,131,255,'root',-1),('2018-09-04 15:52:22','2018-09-04 15:51:36','2018-09-04 15:52:22',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',118,'',1,'SendingOKNoReport',-1,132,255,'root',-1),('2018-09-04 15:52:26','2018-09-04 15:51:36','2018-09-04 15:52:26',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',119,'',1,'SendingOKNoReport',-1,133,255,'root',-1),('2018-09-04 15:51:59','2018-09-04 15:51:36','2018-09-04 15:51:59',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',111,'',1,'SendingOKNoReport',-1,124,255,'root',-1),('2018-09-04 15:52:02','2018-09-04 15:51:36','2018-09-04 15:52:02',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',110,'',1,'SendingOKNoReport',-1,125,255,'root',-1),('2018-09-04 15:52:05','2018-09-04 15:51:36','2018-09-04 15:52:05',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',109,'',1,'SendingOKNoReport',-1,126,255,'root',-1),('2018-09-04 15:52:08','2018-09-04 15:51:36','2018-09-04 15:52:08',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',106,'',1,'SendingOKNoReport',-1,127,255,'root',-1),('2018-09-04 15:52:11','2018-09-04 15:51:36','2018-09-04 15:52:11',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',107,'',1,'SendingOKNoReport',-1,128,255,'root',-1),('2018-09-04 15:52:14','2018-09-04 15:51:36','2018-09-04 15:52:14',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',108,'',1,'SendingOKNoReport',-1,129,255,'root',-1),('2018-09-02 15:48:33','2018-09-02 15:48:26','2018-09-02 15:48:33',NULL,'006900790020004B0045004E004100500041','+628979392113','Default_No_Compression','','+62818445009',-1,'iy KENAPA',104,'',1,'SendingOKNoReport',-1,118,255,'root',-1),('2018-09-04 15:42:03','2018-09-04 15:41:58','2018-09-04 15:42:03',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62818445009',-1,'Contoh sms broadcast',105,'',1,'SendingOKNoReport',-1,119,255,'root',-1),('2018-09-04 15:51:47','2018-09-04 15:51:36','2018-09-04 15:51:47',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',115,'',1,'SendingOKNoReport',-1,120,255,'root',-1),('2018-09-04 15:51:50','2018-09-04 15:51:36','2018-09-04 15:51:50',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',114,'',1,'SendingOKNoReport',-1,121,255,'root',-1),('2018-09-04 15:51:53','2018-09-04 15:51:36','2018-09-04 15:51:53',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',113,'',1,'SendingOKNoReport',-1,122,255,'root',-1),('2018-09-04 15:51:56','2018-09-04 15:51:36','2018-09-04 15:51:56',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',112,'',1,'SendingOKNoReport',-1,123,255,'root',-1),('2018-09-02 01:23:01','2018-09-02 01:17:33','2018-09-02 01:23:01',NULL,'0062006C00650073','+628979392113','Default_No_Compression','','+62818445009',-1,'bles',98,'',1,'SendingOKNoReport',-1,112,255,'root',-1),('2018-09-01 18:10:27','2018-09-01 18:10:20','2018-09-01 18:10:27',NULL,'0074006500730074','08979392113','Default_No_Compression','','+62818445009',-1,'test',96,'',1,'SendingOKNoReport',-1,110,255,'root',-1),('2018-09-01 18:16:10','2018-02-08 18:17:03','2018-09-01 18:16:10',NULL,'00640073','08979392113','Default_No_Compression','','+62818445009',-1,'ds',97,'',1,'SendingOKNoReport',-1,111,255,'root',-1),('2018-09-01 17:46:54','2018-09-01 17:46:41','2018-09-01 17:46:54',NULL,'0063006800650063006B0062006F0078','08979392113','Default_No_Compression','','+62818445009',-1,'checkbox',94,'',1,'SendingOKNoReport',-1,109,255,'root',-1),('2018-09-01 17:46:52','2018-09-01 17:46:41','2018-09-01 17:46:52',NULL,'0063006800650063006B0062006F0078','08979392113','Default_No_Compression','','+62818445009',-1,'checkbox',95,'',1,'SendingOKNoReport',-1,108,255,'root',-1),('2018-09-01 17:45:39','2018-09-01 17:45:34','2018-09-01 17:45:39',NULL,'0070006500720073006F006E0061006C002000660072006F006D002000640061007400610062006100730065','08979392113','Default_No_Compression','','+62818445009',-1,'personal from database',93,'',1,'SendingOKNoReport',-1,107,255,'root',-1),('2018-09-04 15:52:30','2018-09-04 15:51:36','2018-09-04 15:52:30',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',120,'',1,'SendingOKNoReport',-1,134,255,'root',-1),('2018-09-04 15:52:33','2018-09-04 15:51:36','2018-09-04 15:52:33',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',121,'',1,'SendingOKNoReport',-1,135,255,'root',-1),('2018-09-04 15:52:36','2018-09-04 15:51:36','2018-09-04 15:52:36',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','08979392113','Default_No_Compression','','+62818445009',-1,'test kirim banyak',122,'',1,'SendingOKNoReport',-1,136,255,'root',-1),('2018-09-04 15:52:38','2018-09-04 15:51:36','2018-09-04 15:52:38',NULL,'00740065007300740020006B006900720069006D002000620061006E00790061006B','8979392129','Default_No_Compression','','+62818445009',-1,'test kirim banyak',123,'',1,'SendingOKNoReport',-1,137,255,'root',-1),('2018-09-02 02:00:08','2018-09-02 01:59:57','2018-09-02 02:00:08',NULL,'006600690078','08979392113','Default_No_Compression','','+62818445009',-1,'fix',103,'',1,'SendingOKNoReport',-1,117,255,'root',-1),('2018-09-04 16:11:05','2018-09-04 16:10:51','2018-09-04 16:11:05',NULL,'00700065007200740061006D00610020006B0069007400610020006D0065006E0061006D00700075006E006700200073006500620075006100680020006E0061006D0061002000790061006E00670020006400690069006E007000750074002000640061006C0061006D00200076006100720069006100620065006C002C002000640061006C0061006D002000680061006C00200069006E00690020006100640061006C0061006800200024006E0061006D0061002C0020006B0065006D0075006400690061006E002000640065006E00670061006E0020006D0065006E006700670075006E006B0061006E00200070006500720069006E0074006100680020006500780070006C006F00640065002C0020006B00690074006100200070006500630061006800200073007400720069006E','08979392113','Default_No_Compression','050003A70401','+62818445009',-1,'pertama kita menampung sebuah nama yang diinput dalam variabel, dalam hal ini adalah $nama, kemudian dengan menggunkan perintah explode, kita pecah strin',125,'',1,'SendingOKNoReport',-1,139,255,'',-1),('2018-09-04 16:11:08','2018-09-04 16:11:01','2018-09-04 16:11:08',NULL,'00700065007200740061006D00610020006B0069007400610020006D0065006E0061006D00700075006E006700200073006500620075006100680020006E0061006D0061002000790061006E00670020006400690069006E007000750074002000640061006C0061006D00200076006100720069006100620065006C002C002000640061006C0061006D002000680061006C00200069006E00690020006100640061006C0061006800200024006E0061006D0061002C0020006B0065006D0075006400690061006E002000640065006E00670061006E0020006D0065006E006700670075006E006B0061006E00200070006500720069006E0074006100680020006500780070006C006F00640065002C0020006B00690074006100200070006500630061006800200073007400720069006E','08979392113','Default_No_Compression','050003A70401','+62818445009',-1,'pertama kita menampung sebuah nama yang diinput dalam variabel, dalam hal ini adalah $nama, kemudian dengan menggunkan perintah explode, kita pecah strin',126,'',1,'SendingOKNoReport',-1,140,255,'',-1),('2018-09-04 16:11:32','2018-09-04 16:11:19','2018-09-04 16:11:32',NULL,'00700065007200740061006D00610020006B0069007400610020006D0065006E0061006D00700075006E006700200073006500620075006100680020006E0061006D0061002000790061006E00670020006400690069006E007000750074002000640061006C0061006D00200076006100720069006100620065006C002C002000640061006C0061006D002000680061006C00200069006E00690020006100640061006C0061006800200024006E0061006D0061002C0020006B0065006D0075006400690061006E002000640065006E00670061006E0020006D0065006E006700670075006E006B0061006E00200070006500720069006E0074006100680020006500780070006C006F00640065002C0020006B00690074006100200070006500630061006800200073007400720069006E','08979392113','Default_No_Compression','050003A70401','+62818445009',-1,'pertama kita menampung sebuah nama yang diinput dalam variabel, dalam hal ini adalah $nama, kemudian dengan menggunkan perintah explode, kita pecah strin',127,'',1,'SendingOKNoReport',-1,141,255,'',-1),('2018-09-04 16:11:36','2018-09-04 16:11:19','2018-09-04 16:11:36',NULL,'006700200076006100720069006100620065006C0020006E0061006D00610020006D0065006E006A006100640069002000410072007200610079002C0020006D0061006B006100200061006B0061006E002000740065007200620065006E00740075006B002000740069006700610020006E0061006D00610020007900610069007400750020003A0020004D007500680061006D00610064002C004500720072006F0073002C005300750062006C00690061006E0074006F002E000A000A004B0065006D0075006400690061006E0020006B00690074006100200061006D00620069006C002000730061007400750020006B006100720061006B0074006500720020006400610072006900200073006500740069006100700020006B006100740061002000790061006E0067002000740065','08979392113','Default_No_Compression','050003A70402','+62818445009',-1,'g variabel nama menjadi Array, maka akan terbentuk tiga nama yaitu : Muhamad,Erros,Sublianto.\n\nKemudian kita ambil satu karakter dari setiap kata yang te',127,'',2,'SendingOKNoReport',-1,142,255,'',-1),('2018-09-04 16:11:39','2018-09-04 16:11:19','2018-09-04 16:11:39',NULL,'007200620065006E00740075006B002000640065006E00670061006E0020006D0065006E006700670075006E0061006B0061006E002000660075006E006700730069002000730075006200730074007200280024006B006100740061002C00200030002C002000310029003B002000790061006E0067002000620065007200610072007400690020006B0069007400610020006D0065006E00670061006D00620069006C002000730061007400750020006B006100720061006B007400650072002000640061007200690020006100770061006C0020002800300029002C002000640061006E0020006400690061006D00620069006C002000730061007400750020006B006100720061006B0074006500720020002800310029002C0020006D0061006B0061002000740065007200630065','08979392113','Default_No_Compression','050003A70403','+62818445009',-1,'rbentuk dengan menggunakan fungsi substr($kata, 0, 1); yang berarti kita mengambil satu karakter dari awal (0), dan diambil satu karakter (1), maka terce',127,'',3,'SendingOKNoReport',-1,143,255,'',-1),('2018-09-04 16:11:42','2018-09-04 16:11:19','2018-09-04 16:11:42',NULL,'00740061006B0020004D00450053002E','08979392113','Default_No_Compression','050003A70404','+62818445009',-1,'tak MES.',127,'',4,'SendingOKNoReport',-1,144,255,'',-1),('2018-09-05 03:43:18','2018-09-05 03:43:08','2018-09-05 03:43:18',NULL,'006900790061002000620061006E0067','+628979392113','Default_No_Compression','','+62818445009',-1,'iya bang',137,'',1,'SendingOKNoReport',-1,154,255,'root',-1),('2018-09-05 03:43:02','2018-09-05 03:42:55','2018-09-05 03:43:02',NULL,'006900790061002000620061006E0067','+628979392113','Default_No_Compression','','+62818445009',-1,'iya bang',136,'',1,'SendingOKNoReport',-1,153,255,'root',-1),('2018-09-04 17:26:42','2018-09-04 17:26:27','2018-09-04 17:26:42',NULL,'0064','08979392113','Default_No_Compression','','+62818445009',-1,'d',132,'',1,'SendingOKNoReport',-1,147,255,'root',-1),('2018-09-04 23:43:53','2018-09-04 23:43:42','2018-09-04 23:43:53',NULL,'007400650073','08979392113','Default_No_Compression','','+62818445009',-1,'tes',133,'',1,'SendingOKNoReport',-1,148,255,'root',-1),('2018-09-05 01:19:05','2018-09-05 01:18:27','2018-09-05 01:19:05',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62818445009',-1,'Contoh sms broadcast',134,'',1,'SendingOKNoReport',-1,149,255,'root',-1),('2018-09-05 03:24:58','2018-09-05 03:22:19','2018-09-05 03:24:58',NULL,'201C004A0061006E00670061006E006C006100680020007000650072006E006100680020006D0065006D006200750061007400200073006500730065006F00720061006E00670020006D0065006E006A0061006400690020006A0061007400750068002000630069006E0074006100200070006100640061006D0075002C0020006E0061006D0075006E00200064006900720069006D0075002000730065006E00640069007200690020006D0061007300690068002000620065006C0075006D002000620069007300610020006D0065006D0062006500720069006B0061006E00200068006100740069006D007500200070006100640061006E007900610020007300650075007400750068006E00790061002E0020004B006100720065006E0061002000630069006E00740061','085718843609','Default_No_Compression','050003A70301','+62818445009',-1,'“Janganlah pernah membuat seseorang menjadi jatuh cinta padamu, namun dirimu sendiri masih belum bisa memberikan hatimu padanya seutuhnya. Karena cinta',135,'',1,'SendingOKNoReport',-1,150,255,'root',-1),('2018-09-05 03:25:02','2018-09-05 03:22:19','2018-09-05 03:25:02',NULL,'0020007300650070006900680061006B0020006900740075002000730061006E006700610074002000700065006400690068002E201D000A000A201C00530075006100740075002000680061006C002000790061006E006700200073006900610020201300200073006900610020006A0069006B00610020006D0065006E0079006500730061006C00690020006D0061007300610020006C0061006C0075002C002000730065006200610069006B006E0079006100200073006500730061006C0069006C006100680020006100700061002000790061006E0067002000740061006B00200061006B00610020006D0061006D007000750020006B0061006D00750020006C0061006B0075006B0061006E0020006400690020006D006100730061002000640065','085718843609','Default_No_Compression','050003A70302','+62818445009',-1,' sepihak itu sangat pedih.”\n\n“Suatu hal yang sia – sia jika menyesali masa lalu, sebaiknya sesalilah apa yang tak aka mampu kamu lakukan di masa de',135,'',2,'SendingOKNoReport',-1,151,255,'root',-1),('2018-09-05 03:25:08','2018-09-05 03:22:19','2018-09-05 03:25:08',NULL,'00700061006E002E201D000A000A','085718843609','Default_No_Compression','050003A70303','+62818445009',-1,'pan.”\n\n',135,'',3,'SendingOKNoReport',-1,152,255,'root',-1),('2018-09-18 14:04:18','2018-09-18 14:04:08','2018-09-18 14:04:18',NULL,'0062006F0063006100680020006E0067006100700061002000790061','+628979392113','Default_No_Compression','','+62816124',-1,'bocah ngapa ya',138,'',1,'SendingOKNoReport',-1,9,255,'root',-1),('2018-09-18 14:04:36','2018-09-18 14:04:18','2018-09-18 14:04:36',NULL,'0062006F0063006100680020006E0067006100700061002000790061','+628979392113','Default_No_Compression','','+62816124',-1,'bocah ngapa ya',139,'',1,'SendingOKNoReport',-1,10,255,'root',-1),('2018-09-18 14:05:59','2018-09-18 14:05:50','2018-09-18 14:05:59',NULL,'0062006F0063006100680020006E0067006100700061002000790061','+628979392113','Default_No_Compression','','+62816124',-1,'bocah ngapa ya',140,'',1,'SendingOKNoReport',-1,11,255,'root',-1),('2018-09-18 14:15:22','2018-09-18 14:15:12','2018-09-18 14:15:22',NULL,'0074006500730074002000670072006F00750070','08979392113','Default_No_Compression','','+62816124',-1,'test group',141,'',1,'SendingOKNoReport',-1,12,255,'2',-1),('2018-09-18 14:15:24','2018-09-18 14:15:12','2018-09-18 14:15:24',NULL,'0074006500730074002000670072006F00750070','08979392113','Default_No_Compression','','+62816124',-1,'test group',142,'',1,'SendingOKNoReport',-1,13,255,'2',-1),('2018-09-18 14:15:26','2018-09-18 14:15:12','2018-09-18 14:15:26',NULL,'0074006500730074002000670072006F00750070','08979392113','Default_No_Compression','','+62816124',-1,'test group',143,'',1,'SendingOKNoReport',-1,14,255,'2',-1),('2018-09-18 14:15:28','2018-09-18 14:15:12','2018-09-18 14:15:28',NULL,'0074006500730074002000670072006F00750070','08979392113','Default_No_Compression','','+62816124',-1,'test group',144,'',1,'SendingOKNoReport',-1,15,255,'2',-1),('2018-09-18 14:15:30','2018-09-18 14:15:12','2018-09-18 14:15:30',NULL,'0074006500730074002000670072006F00750070','08979392113','Default_No_Compression','','+62816124',-1,'test group',145,'',1,'SendingOKNoReport',-1,16,255,'2',-1),('2018-09-18 14:15:32','2018-09-18 14:15:12','2018-09-18 14:15:32',NULL,'0074006500730074002000670072006F00750070','08979392113','Default_No_Compression','','+62816124',-1,'test group',146,'',1,'SendingOKNoReport',-1,17,255,'2',-1),('2018-09-18 14:17:57','2018-09-18 14:17:49','2018-09-18 14:17:57',NULL,'0054006F0020006F0072006400650072002000740068006500200072006500730075006C0074002C0020006400750070006C0069006300610074006500730020006D00750073007400200062006500200065006C0069006D0069006E0061007400650064002000660069007200730074002E002000420075007400200074006F00200064006F00200073006F002C002000730068006F0075006C00640020007700650020006B006500650070002000740068006500200066006900720073007400200072006F00770020006F00720020007400680065002000740068006900720064003F002000540068006900730020006100720062006900740072006100720079002000630068006F00690063006500200069006E0066006C00750065006E006300650073002000740068006500200072','08979392113','Default_No_Compression','050003A70601','+62816124',-1,'To order the result, duplicates must be eliminated first. But to do so, should we keep the first row or the third? This arbitrary choice influences the r',147,'',1,'SendingOKNoReport',-1,18,255,'root',-1),('2018-09-18 14:18:00','2018-09-18 14:17:49','2018-09-18 14:18:00',NULL,'0065007400610069006E00650064002000760061006C007500650020006F0066002000630033002C00200077006800690063006800200069006E0020007400750072006E00200069006E0066006C00750065006E0063006500730020006F00720064006500720069006E006700200061006E00640020006D0061006B006500730020006900740020006100720062006900740072006100720079002000610073002000770065006C006C002E00200054006F002000700072006500760065006E007400200074006800690073002000700072006F0062006C0065006D002C00200061002000710075006500720079002000740068006100740020006800610073002000440049005300540049004E0043005400200061006E00640020004F0052004400450052002000420059002000690073','08979392113','Default_No_Compression','050003A70602','+62816124',-1,'etained value of c3, which in turn influences ordering and makes it arbitrary as well. To prevent this problem, a query that has DISTINCT and ORDER BY is',147,'',2,'SendingOKNoReport',-1,19,255,'root',-1),('2018-09-18 14:18:05','2018-09-18 14:17:49','2018-09-18 14:18:05',NULL,'002000720065006A0065006300740065006400200061007300200069006E00760061006C0069006400200069006600200061006E00790020004F0052004400450052002000420059002000650078007000720065007300730069006F006E00200064006F006500730020006E006F0074002000730061007400690073006600790020006100740020006C00650061007300740020006F006E00650020006F006600200074006800650073006500200063006F006E0064006900740069006F006E0073003A000A000A005400680065002000650078007000720065007300730069006F006E00200069007300200065007100750061006C00200074006F0020006F006E006500200069006E0020007400680065002000730065006C0065006300740020006C006900730074000A000A0041006C','08979392113','Default_No_Compression','050003A70603','+62816124',-1,' rejected as invalid if any ORDER BY expression does not satisfy at least one of these conditions:\n\nThe expression is equal to one in the select list\n\nAl',147,'',3,'SendingOKNoReport',-1,20,255,'root',-1),('2018-09-18 14:20:10','2018-09-18 14:20:01','2018-09-18 14:20:10',NULL,'0054006F0020006F0072006400650072002000740068006500200072006500730075006C0074002C0020006400750070006C0069006300610074006500730020006D00750073007400200062006500200065006C0069006D0069006E0061007400650064002000660069007200730074002E002000420075007400200074006F00200064006F00200073006F002C002000730068006F0075006C00640020007700650020006B006500650070002000740068006500200066006900720073007400200072006F00770020006F00720020007400680065002000740068006900720064003F002000540068006900730020006100720062006900740072006100720079002000630068006F00690063006500200069006E0066006C00750065006E006300650073002000740068006500200072','08979392113','Default_No_Compression','050003A70601','+62816124',-1,'To order the result, duplicates must be eliminated first. But to do so, should we keep the first row or the third? This arbitrary choice influences the r',148,'',1,'SendingOKNoReport',-1,21,255,'root',-1),('2018-09-18 14:20:13','2018-09-18 14:20:01','2018-09-18 14:20:13',NULL,'0065007400610069006E00650064002000760061006C007500650020006F0066002000630033002C00200077006800690063006800200069006E0020007400750072006E00200069006E0066006C00750065006E0063006500730020006F00720064006500720069006E006700200061006E00640020006D0061006B006500730020006900740020006100720062006900740072006100720079002000610073002000770065006C006C002E00200054006F002000700072006500760065006E007400200074006800690073002000700072006F0062006C0065006D002C00200061002000710075006500720079002000740068006100740020006800610073002000440049005300540049004E0043005400200061006E00640020004F0052004400450052002000420059002000690073','08979392113','Default_No_Compression','050003A70602','+62816124',-1,'etained value of c3, which in turn influences ordering and makes it arbitrary as well. To prevent this problem, a query that has DISTINCT and ORDER BY is',148,'',2,'SendingOKNoReport',-1,22,255,'root',-1),('2018-09-18 14:20:17','2018-09-18 14:20:01','2018-09-18 14:20:17',NULL,'002000720065006A0065006300740065006400200061007300200069006E00760061006C0069006400200069006600200061006E00790020004F0052004400450052002000420059002000650078007000720065007300730069006F006E00200064006F006500730020006E006F0074002000730061007400690073006600790020006100740020006C00650061007300740020006F006E00650020006F006600200074006800650073006500200063006F006E0064006900740069006F006E0073003A000A000A005400680065002000650078007000720065007300730069006F006E00200069007300200065007100750061006C00200074006F0020006F006E006500200069006E0020007400680065002000730065006C0065006300740020006C006900730074000A000A0041006C','08979392113','Default_No_Compression','050003A70603','+62816124',-1,' rejected as invalid if any ORDER BY expression does not satisfy at least one of these conditions:\n\nThe expression is equal to one in the select list\n\nAl',148,'',3,'SendingOKNoReport',-1,23,255,'root',-1),('2018-09-18 14:20:55','2018-09-18 14:20:44','2018-09-18 14:20:55',NULL,'0048006F006D0065000A005700690065002000770061007400200065006E00200077006100610072002C000A004700720061006E006400E900200053006F0075006E0064002000260020004C0069006700680074002000450071007500690070006D0065006E0074002C0020006D006500740020006F006E007A00650020007200750069006D00650020003300350020006A0061006100720020006500720076006100720069006E006700200065006E002000760061006B006D0061006E007300630068006100700020007A0069006A006E002000770069006A002000650065006E00200062006500740072006F00750077006200610072006500200070006100720074006E0065007200200076006F006F0072002000760065006C0065006E00200069006E00200076006500720068','08979392113','Default_No_Compression','050003A71001','+62816124',-1,'Home\nWie wat en waar,\nGrandé Sound & Light Equipment, met onze ruime 35 jaar ervaring en vakmanschap zijn wij een betrouwbare partner voor velen in verh',149,'',1,'SendingOKNoReport',-1,24,255,'root',-1),('2018-09-18 14:20:58','2018-09-18 14:20:44','2018-09-18 14:20:58',NULL,'007500750072002000760061006E0020006C0069006300680074002C002000670065006C00750069006400200065006E00200061006E0064006500720020006D0061007400650072006900610061006C002C0020006400610074002000750077002000730068006F00770020006F00660020006500760065006E0065006D0065006E007400200074006F0074002000650065006E002000620065007400650072002000670065006800650065006C0020006B0061006E0020006200720065006E00670065006E002E000A000A004700720061006E006400E90020006F00660020005400650073007400310032002000690073002000650065006E0020007600650072006800750075007200620065006400720069006A006600200076006F006F0072002000670065006C007500690064','08979392113','Default_No_Compression','050003A71002','+62816124',-1,'uur van licht, geluid en ander materiaal, dat uw show of evenement tot een beter geheel kan brengen.\n\nGrandé of Test12 is een verhuurbedrijf voor geluid',149,'',2,'SendingOKNoReport',-1,25,255,'root',-1),('2018-09-18 14:22:42','2018-09-18 14:22:29','2018-09-18 14:22:42',NULL,'0048006F006D0065000A005700690065002000770061007400200065006E00200077006100610072002C000A004700720061006E006400E900200053006F0075006E0064002000260020004C0069006700680074002000450071007500690070006D0065006E0074002C0020006D006500740020006F006E007A00650020007200750069006D00650020003300350020006A0061006100720020006500720076006100720069006E006700200065006E002000760061006B006D0061006E007300630068006100700020007A0069006A006E002000770069006A002000650065006E00200062006500740072006F00750077006200610072006500200070006100720074006E0065007200200076006F006F0072002000760065006C0065006E00200069006E00200076006500720068','08979392113','Default_No_Compression','050003A71001','+62816124',-1,'Home\nWie wat en waar,\nGrandé Sound & Light Equipment, met onze ruime 35 jaar ervaring en vakmanschap zijn wij een betrouwbare partner voor velen in verh',150,'',1,'SendingOKNoReport',-1,26,255,'root',-1),('2018-09-18 14:22:46','2018-09-18 14:22:29','2018-09-18 14:22:46',NULL,'007500750072002000760061006E0020006C0069006300680074002C002000670065006C00750069006400200065006E00200061006E0064006500720020006D0061007400650072006900610061006C002C0020006400610074002000750077002000730068006F00770020006F00660020006500760065006E0065006D0065006E007400200074006F0074002000650065006E002000620065007400650072002000670065006800650065006C0020006B0061006E0020006200720065006E00670065006E002E000A000A004700720061006E006400E90020006F00660020005400650073007400310032002000690073002000650065006E0020007600650072006800750075007200620065006400720069006A006600200076006F006F0072002000670065006C007500690064','08979392113','Default_No_Compression','050003A71002','+62816124',-1,'uur van licht, geluid en ander materiaal, dat uw show of evenement tot een beter geheel kan brengen.\n\nGrandé of Test12 is een verhuurbedrijf voor geluid',150,'',2,'SendingOKNoReport',-1,27,255,'root',-1),('2018-09-18 14:23:12','2018-09-18 14:22:50','2018-09-18 14:23:12',NULL,'0048006F006D0065000A005700690065002000770061007400200065006E00200077006100610072002C000A004700720061006E006400E900200053006F0075006E0064002000260020004C0069006700680074002000450071007500690070006D0065006E0074002C0020006D006500740020006F006E007A00650020007200750069006D00650020003300350020006A0061006100720020006500720076006100720069006E006700200065006E002000760061006B006D0061006E007300630068006100700020007A0069006A006E002000770069006A002000650065006E00200062006500740072006F00750077006200610072006500200070006100720074006E0065007200200076006F006F0072002000760065006C0065006E00200069006E00200076006500720068','08979392113','Default_No_Compression','050003A71001','+62816124',-1,'Home\nWie wat en waar,\nGrandé Sound & Light Equipment, met onze ruime 35 jaar ervaring en vakmanschap zijn wij een betrouwbare partner voor velen in verh',151,'',1,'SendingOKNoReport',-1,28,255,'root',-1),('2018-09-18 14:23:15','2018-09-18 14:22:50','2018-09-18 14:23:15',NULL,'007500750072002000760061006E0020006C0069006300680074002C002000670065006C00750069006400200065006E00200061006E0064006500720020006D0061007400650072006900610061006C002C0020006400610074002000750077002000730068006F00770020006F00660020006500760065006E0065006D0065006E007400200074006F0074002000650065006E002000620065007400650072002000670065006800650065006C0020006B0061006E0020006200720065006E00670065006E002E000A000A004700720061006E006400E90020006F00660020005400650073007400310032002000690073002000650065006E0020007600650072006800750075007200620065006400720069006A006600200076006F006F0072002000670065006C007500690064','08979392113','Default_No_Compression','050003A71002','+62816124',-1,'uur van licht, geluid en ander materiaal, dat uw show of evenement tot een beter geheel kan brengen.\n\nGrandé of Test12 is een verhuurbedrijf voor geluid',151,'',2,'SendingOKNoReport',-1,29,255,'root',-1),('2018-09-18 14:23:19','2018-09-18 14:22:50','2018-09-18 14:23:19',NULL,'002C0020007600650072006C00690063006800740069006E006700200065006E002000730068006F00770020006D0061007400650072006900610061006C002C002000670065007600650073007400690067006400200069006E0020004E00650065006400650020002800670065006D00650065006E007400650020004200650072006B0065006C006C0061006E00640029002E002E000A000A0049006E0020006F006E0073002000700072006F00640075006300740065006E002000700061006B006B00650074002000760069006E00640074002000750020006F002E0061002E0020006D0061007400650072006900610061006C0020006700650073006300680069006B007400200076006F006F0072002000620061006E00640073002C00200064006900730063006F0073002C0020','08979392113','Default_No_Compression','050003A71003','+62816124',-1,', verlichting en show materiaal, gevestigd in Neede (gemeente Berkelland)..\n\nIn ons producten pakket vindt u o.a. materiaal geschikt voor bands, discos, ',151,'',3,'SendingOKNoReport',-1,30,255,'root',-1),('2018-09-18 14:23:22','2018-09-18 14:22:50','2018-09-18 14:23:22',NULL,'0074006800650061007400650072002C0020007600650072006700610064006500720069006E00670065006E00200065006E0020006D006500650072002E002E002E002E002C00200076006F006F007200200076006500720073006300680069006C006C0065006E00640065002000610063007400690076006900740065006900740065006E002C0020006600650065007300740065006E00200065006E002000700061007200740069006A0065006E002000760061006E0020006B006C00650069006E00200074006F0074002000670072006F006F0074002E0020004D0061007400650072006900610061006C00200077006F007200640074002000760065007200680075007500720064002C002000620065006D0061006E00640020006F00660020006F006E00620065006D0061006E','08979392113','Default_No_Compression','050003A71004','+62816124',-1,'theater, vergaderingen en meer...., voor verschillende activiteiten, feesten en partijen van klein tot groot. Materiaal wordt verhuurd, bemand of onbeman',151,'',4,'SendingOKNoReport',-1,31,255,'root',-1),('2018-09-18 14:23:26','2018-09-18 14:22:50','2018-09-18 14:23:26',NULL,'0064002C00200076006F006F0072006E0061006D0065006C0069006A006B00200072006500670069006F006E00610061006C002E000A000A0049006E006400690065006E00200075002000760072006100670065006E0020006F00700020006F0066002000610061006E006D00650072006B0069006E00670065006E00200068006500650066007400200068006F00720065006E002000770069006A002000640065007A0065002000670072006100610067002000280063006F006E00740061006300740029002E000A000A0044006F006D00650069006E0020006E00610061006D002C000A0054006F00740020003200300030003000200077006100730020006400650020006E00610061006D002000760061006E0020006F006E00730020006B006C00650069006E0065002000620065','08979392113','Default_No_Compression','050003A71005','+62816124',-1,'d, voornamelijk regionaal.\n\nIndien u vragen op of aanmerkingen heeft horen wij deze graag (contact).\n\nDomein naam,\nTot 2000 was de naam van ons kleine be',151,'',5,'SendingOKNoReport',-1,32,255,'root',-1),('2018-09-18 14:23:30','2018-09-18 14:22:50','2018-09-18 14:23:30',NULL,'006400720069006A006600200022004700720061006E006400E900200053006F0075006E006400200061006E00640020004C0069006700680074002000450071007500690070006D0065006E00740022002E002000480065006C00610061007300200077006100720065006E00200074006F0065006E00200064006500200064006F006D00650069006E006E0061006D0065006E0020007A006F0061006C00730020006700720061006E00640065002E006E006C0020006D0061006100720020006F006F006B0020006700720061006E00640065002E0063006F006D002C00200061006C00200076006500720067006500760065006E00200065006E002000620069006A0076006F006F0072006200650065006C00640020006700720061006E00640065002D0073006E006C0020007A','08979392113','Default_No_Compression','050003A71006','+62816124',-1,'drijf \"Grandé Sound and Light Equipment\". Helaas waren toen de domeinnamen zoals grande.nl maar ook grande.com, al vergeven en bijvoorbeeld grande-snl z',151,'',6,'SendingOKNoReport',-1,33,255,'root',-1),('2018-09-18 14:23:33','2018-09-18 14:22:50','2018-09-18 14:23:33',NULL,'0065006700740020006F006F006B0020007700650069006E00690067002E002000450065006E00200064006F006D00650069006E0020006E00610061006D0020006D006F006500740020006E0069006500740020006C0061006E00670020007A0069006A006E00200065006E00200061006C007300200068006500740020006600660020006B0061006E0020006D006F00650074002000640069006500200076006F006F0072002000640065002000680061006E00640020006C0069006700670065006E002E00200048006500740020006800650065006600740020006E006900650074002000670065006B0020006C0061006E0067002000670065006400750075007200640020006F006D002000650065006E002000700061007300730065006E006400650020006E00610061006D0020','08979392113','Default_No_Compression','050003A71007','+62816124',-1,'egt ook weinig. Een domein naam moet niet lang zijn en als het ff kan moet die voor de hand liggen. Het heeft niet gek lang geduurd om een passende naam ',151,'',7,'SendingOKNoReport',-1,34,255,'root',-1),('2018-09-18 14:23:37','2018-09-18 14:23:28','2018-09-18 14:23:37',NULL,'0048006F006D0065000A005700690065002000770061007400200065006E00200077006100610072002C000A004700720061006E006400E900200053006F0075006E0064002000260020004C0069006700680074002000450071007500690070006D0065006E0074002C0020006D006500740020006F006E007A00650020007200750069006D00650020003300350020006A0061006100720020006500720076006100720069006E006700200065006E002000760061006B006D0061006E007300630068006100700020007A0069006A006E002000770069006A002000650065006E00200062006500740072006F00750077006200610072006500200070006100720074006E0065007200200076006F006F0072002000760065006C0065006E00200069006E00200076006500720068','08979392113','Default_No_Compression','050003A71001','+62816124',-1,'Home\nWie wat en waar,\nGrandé Sound & Light Equipment, met onze ruime 35 jaar ervaring en vakmanschap zijn wij een betrouwbare partner voor velen in verh',152,'',1,'SendingOKNoReport',-1,35,255,'root',-1),('2018-09-18 14:25:31','2018-09-18 14:25:21','2018-09-18 14:25:31',NULL,'0048006F006D0065000A005700690065002000770061007400200065006E00200077006100610072002C000A004700720061006E006400E900200053006F0075006E0064002000260020004C0069006700680074002000450071007500690070006D0065006E0074002C0020006D006500740020006F006E007A00650020007200750069006D00650020003300350020006A0061006100720020006500720076006100720069006E006700200065006E002000760061006B006D0061006E007300630068006100700020007A0069006A006E002000770069006A002000650065006E00200062006500740072006F00750077006200610072006500200070006100720074006E0065007200200076006F006F0072002000760065006C0065006E00200069006E00200076006500720068','08979392113','Default_No_Compression','050003A71001','+62816124',-1,'Home\nWie wat en waar,\nGrandé Sound & Light Equipment, met onze ruime 35 jaar ervaring en vakmanschap zijn wij een betrouwbare partner voor velen in verh',153,'',1,'SendingOKNoReport',-1,36,255,'root',-1),('2018-09-18 14:31:46','2018-09-18 14:31:33','2018-09-18 14:31:46',NULL,'005700680065006E00200079006F0075002000750073006500200074006800650020007100750065007200790020006200750069006C00640065007200200063006C00610073007300200074006F00200063006F006E00730074007200750063007400200079006F00750072002000710075006500720069006500730020007400680065002000760061006C0075006500730020006100720065002000650073006300610070006500640020006100750074006F006D00610074006900630061006C006C00790020006200790020007400680065002000730079007300740065006D00200073006F00200079006F007500200064006F006E002700740020006800610076006500200074006F00200075007300650020007400680065002000660075006E006300740069006F006E0020','08979392113','Default_No_Compression','050003A70201','+62816124',-1,'When you use the query builder class to construct your queries the values are escaped automatically by the system so you don\'t have to use the function ',154,'',1,'SendingOKNoReport',-1,37,255,'root',-1),('2018-09-18 14:31:49','2018-09-18 14:31:33','2018-09-18 14:31:49',NULL,'0049006E00200079006F0075007200200063006100730065002C00200065006100630068002000760061006C0075006500200077006100730020006500730063006100700065006400200062007900200074006800650020006500730063006100700065002000660075006E006300740069006F006E00200061006E00640020007400680065002000730079007300740065006D002000640069006400200069007400200061006700610069006E00200066006F007200200065006100630068002000760061006C007500650020007700680065006E00200065007800650063007500740069006E0067002000740068006500200069006E0073006500720074','08979392113','Default_No_Compression','050003A70202','+62816124',-1,'In your case, each value was escaped by the escape function and the system did it again for each value when executing the insert',154,'',2,'SendingOKNoReport',-1,38,255,'root',-1),('2018-09-18 14:37:02','2018-09-18 14:36:55','2018-09-18 14:37:02',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',160,'',1,'SendingOKNoReport',-1,39,255,'root',-1),('2018-09-18 14:37:04','2018-09-18 14:36:55','2018-09-18 14:37:04',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',159,'',1,'SendingOKNoReport',-1,40,255,'root',-1),('2018-09-18 14:37:06','2018-09-18 14:36:55','2018-09-18 14:37:06',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',155,'',1,'SendingOKNoReport',-1,41,255,'root',-1),('2018-09-18 14:37:09','2018-09-18 14:36:55','2018-09-18 14:37:09',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',156,'',1,'SendingOKNoReport',-1,42,255,'root',-1),('2018-09-18 14:37:11','2018-09-18 14:36:55','2018-09-18 14:37:11',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',157,'',1,'SendingOKNoReport',-1,43,255,'root',-1),('2018-09-18 14:37:13','2018-09-18 14:36:55','2018-09-18 14:37:13',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',158,'',1,'SendingOKNoReport',-1,44,255,'root',-1),('2018-09-18 14:37:15','2018-09-18 14:36:55','2018-09-18 14:37:15',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',161,'',1,'SendingOKNoReport',-1,45,255,'root',-1),('2018-09-18 14:37:19','2018-09-18 14:36:55','2018-09-18 14:37:19',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',162,'',1,'SendingOKNoReport',-1,46,255,'root',-1),('2018-09-18 14:37:21','2018-09-18 14:36:55','2018-09-18 14:37:21',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',163,'',1,'SendingOKNoReport',-1,47,255,'root',-1),('2018-09-18 14:37:23','2018-09-18 14:36:55','2018-09-18 14:37:23',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',164,'',1,'SendingOKNoReport',-1,48,255,'root',-1),('2018-09-18 14:37:25','2018-09-18 14:36:55','2018-09-18 14:37:25',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',165,'',1,'SendingOKNoReport',-1,49,255,'root',-1),('2018-09-18 14:37:28','2018-09-18 14:36:55','2018-09-18 14:37:28',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',166,'',1,'SendingOKNoReport',-1,50,255,'root',-1),('2018-09-18 14:37:30','2018-09-18 14:36:55','2018-09-18 14:37:30',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',167,'',1,'SendingOKNoReport',-1,51,255,'root',-1),('2018-09-18 14:37:32','2018-09-18 14:36:55','2018-09-18 14:37:32',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',168,'',1,'SendingOKNoReport',-1,52,255,'root',-1),('2018-09-18 14:37:34','2018-09-18 14:36:55','2018-09-18 14:37:34',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',169,'',1,'SendingOKNoReport',-1,53,255,'root',-1),('2018-09-18 14:37:36','2018-09-18 14:36:55','2018-09-18 14:37:36',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',170,'',1,'SendingOKNoReport',-1,54,255,'root',-1),('2018-09-18 14:37:38','2018-09-18 14:36:55','2018-09-18 14:37:38',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',171,'',1,'SendingOKNoReport',-1,55,255,'root',-1),('2018-09-18 14:37:40','2018-09-18 14:36:55','2018-09-18 14:37:40',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','8979392129','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',172,'',1,'SendingOKNoReport',-1,56,255,'root',-1),('2018-09-18 14:37:42','2018-09-18 14:36:55','2018-09-18 14:37:42',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','8979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',173,'',1,'SendingOKNoReport',-1,57,255,'root',-1),('2018-09-18 14:38:36','2018-09-18 14:38:22','2018-09-18 14:38:36',NULL,'00680020007300630072006900700074002000790061006E00670020006200650072006D006100730061006C006100680020003A','8979392113','Default_No_Compression','','+62816124',-1,'h script yang bermasalah :',180,'',1,'SendingOKNoReport',-1,58,255,'root',-1),('2018-09-18 14:38:38','2018-09-18 14:38:22','2018-09-18 14:38:38',NULL,'00680020007300630072006900700074002000790061006E00670020006200650072006D006100730061006C006100680020003A','8979392129','Default_No_Compression','','+62816124',-1,'h script yang bermasalah :',179,'',1,'SendingOKNoReport',-1,59,255,'root',-1),('2018-09-18 14:38:40','2018-09-18 14:38:22','2018-09-18 14:38:40',NULL,'00680020007300630072006900700074002000790061006E00670020006200650072006D006100730061006C006100680020003A','08979392113','Default_No_Compression','','+62816124',-1,'h script yang bermasalah :',178,'',1,'SendingOKNoReport',-1,60,255,'root',-1),('2018-09-18 14:38:42','2018-09-18 14:38:22','2018-09-18 14:38:42',NULL,'00680020007300630072006900700074002000790061006E00670020006200650072006D006100730061006C006100680020003A','08979392113','Default_No_Compression','','+62816124',-1,'h script yang bermasalah :',177,'',1,'SendingOKNoReport',-1,61,255,'root',-1),('2018-09-18 14:38:44','2018-09-18 14:38:22','2018-09-18 14:38:44',NULL,'00680020007300630072006900700074002000790061006E00670020006200650072006D006100730061006C006100680020003A','08979392113','Default_No_Compression','','+62816124',-1,'h script yang bermasalah :',176,'',1,'SendingOKNoReport',-1,62,255,'root',-1),('2018-09-23 01:18:07','2018-09-23 01:17:56','2018-09-23 01:18:07',NULL,'00540045005300540020004B004900520049004D0020004B0045002000420041004E00590041004B0020004E004F004D00450052','08979392113','Default_No_Compression','','+62816124',-1,'TEST KIRIM KE BANYAK NOMER',191,'',1,'SendingOKNoReport',-1,78,255,'root',-1),('2018-09-18 14:38:50','2018-09-18 14:38:22','2018-09-18 14:38:50',NULL,'00480061006C006F002C002000700061006400610020007300750061007400750020006B006500740069006B006100200028006300650069006C006100610068002E002E00290020007300610079006100200073006500640061006E00670020006100640061002000700072006F006A0065006300740020006D0065006D0062007500610074002000700072006F006700720061006D00200069006E00700075007400200064006100740061002000700065006E0064007500640075006B002C002000790061006E00670020006D0061006E006100200070006100640061002000730061006C006100680020007300610074007500200069007300690061006E00200066006F0072006D006E007900610020006100640061006C006100680020006E0061006D0061002000700065006E0064','08979392113','Default_No_Compression','050003A70601','+62816124',-1,'Halo, pada suatu ketika (ceilaah..) saya sedang ada project membuat program input data penduduk, yang mana pada salah satu isian formnya adalah nama pend',174,'',1,'SendingOKNoReport',-1,64,255,'root',-1),('2018-09-18 14:38:53','2018-09-18 14:38:22','2018-09-18 14:38:53',NULL,'007500640075006B002E0020004B00610073007500730020007400650072006A0061006400690020006B006500740069006B00610020006100640061002000790061006E006700200073006500640061006E006700200065006E007400720079002000620069006F0064006100740061002000700065006E0064007500640075006B00200074006500720073006500620075007400200074006500740061007000690020007400650072006A0061006400690020006500720072006F007200200061006C0069006100730020006400610074006100200074006900640061006B0020006200690073006100200064006900730069006D00700061006E002C002000640061006E00200070006100640061002000730061007400750020006B0061007300750073002000610064006100200079','08979392113','Default_No_Compression','050003A70602','+62816124',-1,'uduk. Kasus terjadi ketika ada yang sedang entry biodata penduduk tersebut tetapi terjadi error alias data tidak bisa disimpan, dan pada satu kasus ada y',174,'',2,'SendingOKNoReport',-1,65,255,'root',-1),('2018-09-18 14:38:57','2018-09-18 14:38:22','2018-09-18 14:38:57',NULL,'0061006E006700200062006900730061002C00200073006100790061002000700075006E00200070007500730069006E00670020006A006100640069006E007900610020006B0065006E0061007000610020006100640061002000790061006E0067002000620069007300610020006D0065006E00790069006D00700061006E002000640061007400610020006B0065006E0061007000610020006100640061002000790061006E006700200074006900640061006B002E0020004E0061006D0075006E00200073006500740065006C0061006800200064006900740065006C006100610068002000640061006E0020006400690061006D00610074006900200070006F006C0061002000790061006E00670020006500720072006F00720020006E007900610020007400650072006E0079','08979392113','Default_No_Compression','050003A70603','+62816124',-1,'ang bisa, saya pun pusing jadinya kenapa ada yang bisa menyimpan data kenapa ada yang tidak. Namun setelah ditelaah dan diamati pola yang error nya terny',174,'',3,'SendingOKNoReport',-1,66,255,'root',-1),('2018-09-18 14:39:01','2018-09-18 14:38:22','2018-09-18 14:39:01',NULL,'006100740061002000700065006E007900650062006100620020006500720072006F00720020007400650072007300650062007500740020006100640061006C00610068002000740061006E006400610020006B007500740069007000200073006100740075002000280020201800200029002C00200063006F006E0074006F0068006E007900610020006100640061002000790061006E0067002000700075006E007900610020006E0061006D006100200052006F0066006920190075006E002C0020006D0061006B00610020006E0061006D006100200074006500720073006500620075007400200074006900640061006B0020006200690073006100200064006900730069006D00700061006E0020006B0065002000640061007400610062006100730065002C','08979392113','Default_No_Compression','050003A70604','+62816124',-1,'ata penyebab error tersebut adalah tanda kutip satu ( ‘ ), contohnya ada yang punya nama Rofi’un, maka nama tersebut tidak bisa disimpan ke database,',174,'',4,'SendingOKNoReport',-1,67,255,'root',-1),('2018-09-18 14:39:05','2018-09-18 14:38:22','2018-09-18 14:39:05',NULL,'0020006B006100720065006E00610020006D007900530051004C00200074006900640061006B002000620069007300610020006D0065006E006500720069006D0061002000740061006E006400610020006B0075007400690070002000730061007400750020007400650072007300650062007500740020007300650063006100720061002000640065006600610075006C0074002E00200055006E00740075006B0020007000650072006D006100730061006C006100680061006E0020007400650072007300650062007500740020006B006900740061002000620075007400750068002000740061006D0062006100680061006E002000730063007200690070007400200061006400640073006C00610073006800650073002820260029000A000A0043006F006E0074006F','08979392113','Default_No_Compression','050003A70605','+62816124',-1,' karena mySQL tidak bisa menerima tanda kutip satu tersebut secara default. Untuk permasalahan tersebut kita butuh tambahan script addslashes(…)\n\nConto',174,'',5,'SendingOKNoReport',-1,68,255,'root',-1),('2018-09-18 14:39:07','2018-09-18 14:38:22','2018-09-18 14:39:07',NULL,'00680020007300630072006900700074002000790061006E00670020006200650072006D006100730061006C006100680020003A','08979392113','Default_No_Compression','050003A70606','+62816124',-1,'h script yang bermasalah :',174,'',6,'SendingOKNoReport',-1,69,255,'root',-1),('2018-09-18 14:44:50','2018-09-18 14:44:44','2018-09-18 14:44:50',NULL,'0061006E00670020006100640061002000740061006E006400610020006B007500740069007000200073006100740075002C','08979392113','Default_No_Compression','','+62816124',-1,'ang ada tanda kutip satu,',182,'',1,'SendingOKNoReport',-1,70,255,'root',-1),('2018-09-18 14:44:53','2018-09-18 14:44:44','2018-09-18 14:44:53',NULL,'0061006E00670020006100640061002000740061006E006400610020006B007500740069007000200073006100740075002C','08979392113','Default_No_Compression','','+62816124',-1,'ang ada tanda kutip satu,',183,'',1,'SendingOKNoReport',-1,71,255,'root',-1),('2018-09-18 14:44:56','2018-09-18 14:44:44','2018-09-18 14:44:56',NULL,'00530069006E0067006C0065002000710075006F00740065002000700072006F0062006C0065006D0073002C00200048006F007700200074006F00200069006E00730065007200740020007400650078007400200077006900740068002000730069006E0067006C0065002000710075006F0074006100740069006F006E002000730071006C002C002000530051004C002000530074006100740065006D0065006E007400200074006F00200069006E007300650072007400200061002000730069006E0067006C0065002000710075006F00740065002C00200048006F007700200074006F00200069006E007300650072007400200073007400720069006E0067007300200063006F006E007400610069006E0069006E0067002000710075006F00740065007300200069006E0074006F','08979392113','Default_No_Compression','050003A70401','+62816124',-1,'Single quote problems, How to insert text with single quotation sql, SQL Statement to insert a single quote, How to insert strings containing quotes into',181,'',1,'SendingOKNoReport',-1,72,255,'root',-1),('2018-09-18 14:47:20','2018-09-18 14:47:06','2018-09-18 14:47:20',NULL,'0063006F00720064002000790061006E00670020006100640061002000740061006E006400610020006B007500740069007000200073006100740075002C','08979392113','Default_No_Compression','','+62816124',-1,'cord yang ada tanda kutip satu,',185,'',1,'SendingOKNoReport',-1,73,255,'root',-1),('2018-09-18 14:47:22','2018-09-18 14:47:06','2018-09-18 14:47:22',NULL,'0063006F00720064002000790061006E00670020006100640061002000740061006E006400610020006B007500740069007000200073006100740075002C','08979392113','Default_No_Compression','','+62816124',-1,'cord yang ada tanda kutip satu,',186,'',1,'SendingOKNoReport',-1,74,255,'root',-1),('2018-09-23 01:18:09','2018-09-23 01:17:56','2018-09-23 01:18:09',NULL,'00540045005300540020004B004900520049004D0020004B0045002000420041004E00590041004B0020004E004F004D00450052','08979392113','Default_No_Compression','','+62816124',-1,'TEST KIRIM KE BANYAK NOMER',192,'',1,'SendingOKNoReport',-1,79,255,'root',-1),('2018-09-23 01:18:11','2018-09-23 01:17:56','2018-09-23 01:18:11',NULL,'00540045005300540020004B004900520049004D0020004B0045002000420041004E00590041004B0020004E004F004D00450052','08979392113','Default_No_Compression','','+62816124',-1,'TEST KIRIM KE BANYAK NOMER',189,'',1,'SendingOKNoReport',-1,80,255,'root',-1),('2018-09-23 01:18:14','2018-09-23 01:17:56','2018-09-23 01:18:14',NULL,'00540045005300540020004B004900520049004D0020004B0045002000420041004E00590041004B0020004E004F004D00450052','08979392113','Default_No_Compression','','+62816124',-1,'TEST KIRIM KE BANYAK NOMER',190,'',1,'SendingOKNoReport',-1,81,255,'root',-1),('2018-09-23 01:20:27','2018-09-23 01:20:19','2018-09-23 01:20:27',NULL,'006E002000700065006E0067007500730061006800610020006500630063006F006D006D00650072006300650020006F006B0065006C006100680020006B0061006C006F0020006200650067006900740075','08979392113','Default_No_Compression','','+62816124',-1,'n pengusaha eccommerce okelah kalo begitu',194,'',1,'SendingOKNoReport',-1,82,255,'root',-1),('2018-09-22 16:10:28','2018-09-22 16:10:13','2018-09-22 16:10:28',NULL,'00740065007300740069006E0067','081818928963','Default_No_Compression','','+62816124',-1,'testing',187,'',1,'SendingOKNoReport',-1,76,255,'root',-1),('2018-09-22 16:32:49','2018-09-22 16:32:40','2018-09-22 16:32:49',NULL,'007400650073','08979392113','Default_No_Compression','','+62816124',-1,'tes',188,'',1,'SendingOKNoReport',-1,77,255,'root',-1),('2018-09-23 01:20:31','2018-09-23 01:20:19','2018-09-23 01:20:31',NULL,'006D0073007300620020006100640061006C00610068002000730069007300740065006D002000790061006E00670020006D0065006D007000650072006D007500640061006800200073006500730065006F00720061006E006700200075006E00740075006B0020006D0065006E0067006900720069006D00200070006500730061006E00200073006D00730020007300650063006100720061002000620072006F006100640063006100730074002F006D006100730061006C0020002C002000730069007300740065006D00200069006E0069002000730061006E00670061007400200063006F0063006F006B002000640069002000670075006E0061006B0061006E00200075006E00740075006B002000700065007200750073006100680061006E0020006100740061007500700075','08979392113','Default_No_Compression','050003A70201','+62816124',-1,'mssb adalah sistem yang mempermudah seseorang untuk mengirim pesan sms secara broadcast/masal , sistem ini sangat cocok di gunakan untuk perusahan ataupu',193,'',1,'SendingOKNoReport',-1,83,255,'root',-1),('2018-09-23 01:20:33','2018-09-23 01:20:19','2018-09-23 01:20:33',NULL,'006E002000700065006E0067007500730061006800610020006500630063006F006D006D00650072006300650020006F006B0065006C006100680020006B0061006C006F0020006200650067006900740075','08979392113','Default_No_Compression','050003A70202','+62816124',-1,'n pengusaha eccommerce okelah kalo begitu',193,'',2,'SendingOKNoReport',-1,84,255,'root',-1),('2018-09-23 01:21:49','2018-09-23 01:21:38','2018-09-23 01:21:49',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F0061006400630061007300740020006D0073007300620020006100640061006C00610068002000730069007300740065006D002000790061006E00670020006D0065006D007000650072006D007500640061006800200073006500730065006F00720061006E006700200075006E00740075006B0020006D0065006E0067006900720069006D00200070006500730061006E00200073006D00730020007300650063006100720061002000620072006F006100640063006100730074002F006D006100730061006C0020002C002000730069007300740065006D00200069006E0069002000730061006E00670061007400200063006F0063006F006B002000640069002000670075006E0061006B0061006E00200075','08979392113','Default_No_Compression','050003A70201','+62816124',-1,'Contoh sms broadcast mssb adalah sistem yang mempermudah seseorang untuk mengirim pesan sms secara broadcast/masal , sistem ini sangat cocok di gunakan u',195,'',1,'SendingOKNoReport',-1,85,255,'root',-1),('2018-09-23 01:21:51','2018-09-23 01:21:38','2018-09-23 01:21:51',NULL,'006E00740075006B002000700065007200750073006100680061006E0020006100740061007500700075','08979392113','Default_No_Compression','050003A70202','+62816124',-1,'ntuk perusahan ataupu',195,'',2,'SendingOKNoReport',-1,86,255,'root',-1),('2018-09-23 01:26:27','2018-09-23 01:26:13','2018-09-23 01:26:27',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','08979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',197,'',1,'SendingOKNoReport',-1,87,255,'root',-1),('2018-09-23 01:31:14','2018-09-23 01:30:56','2018-09-23 01:31:14',NULL,'007400650073006A0061006B00730064006A00610073006B006E0064006B0061006C006E0073006A0020006E00610073006A006B0020006A006400730061006E006A00200064006B0061006E006D00730020006E0064006A006B00610073006E0064006A006B00200061006E00730064006A006B006E0061006A00200073006B0064006E006A006B00610073006E0064006A0020006E0061006A006B00640073006E006A006B00200061006E0073006A0064006B006E006600610020006B006E006400610073006A006E0064006A006100730064006A0061006200640073006A0061006E006B006A0020007300620064006A006B007300610020006B0064006200730061006A006B00640062006A0020006100620064006B0062006100730064006200200061007300680062006400680020','08979392113','Default_No_Compression','050003A70201','+62816124',-1,'tesjaksdjaskndkalnsj nasjk jdsanj dkanms ndjkasndjk ansdjknaj skdnjkasndj najkdsnjk ansjdknfa kndasjndjasdjabdsjankj sbdjksa kdbsajkdbj abdkbasdb ashbdh ',199,'',1,'SendingOKNoReport',-1,88,255,'root',-1),('2018-09-23 01:31:16','2018-09-23 01:30:56','2018-09-23 01:31:16',NULL,'007300640073006400730064007300640073','08979392113','Default_No_Compression','050003A70202','+62816124',-1,'sdsdsdsds',199,'',2,'SendingOKNoReport',-1,89,255,'root',-1),('2018-09-23 04:45:08','2018-09-23 04:42:58','2018-09-23 04:45:08',NULL,'00740065007300740069006E0067','081319691964','Default_No_Compression','','+62816124',-1,'testing',200,'',1,'SendingOKNoReport',-1,90,255,'root',-1),('2018-09-23 04:46:19','2018-09-23 01:24:54','2018-09-23 04:46:19',NULL,'004D004900540020004C006900630065006E00730065000A000A0043006F0070007900720069006700680074002000280063002900200032003000310038002000440069006400690020007400720069006100770061006E000A000A005000650072006D0069007300730069006F006E00200069007300200068006500720065006200790020006700720061006E007400650064002C002000660072006500650020006F00660020006300680061007200670065002C00200074006F00200061006E007900200070006500720073006F006E0020006F0062007400610069006E0069006E00670020006100200063006F00700079000A006F00660020007400680069007300200073006F00660074007700610072006500200061006E00640020006100730073006F00630069006100740065','08979392113','Default_No_Compression','050003A70801','',-1,'MIT License\n\nCopyright (c) 2018 Didi triawan\n\nPermission is hereby granted, free of charge, to any person obtaining a copy\nof this software and associate',196,'',1,'SendingError',-1,90,255,'root',512),('2018-09-23 04:46:19','2018-09-23 01:24:54','2018-09-23 04:46:19',NULL,'006400200064006F00630075006D0065006E0074006100740069006F006E002000660069006C0065007300200028007400680065002000220053006F00660074007700610072006500220029002C00200074006F0020006400650061006C000A0069006E002000740068006500200053006F00660074007700610072006500200077006900740068006F007500740020007200650073007400720069006300740069006F006E002C00200069006E0063006C007500640069006E006700200077006900740068006F007500740020006C0069006D00690074006100740069006F006E00200074006800650020007200690067006800740073000A0074006F0020007500730065002C00200063006F00700079002C0020006D006F0064006900660079002C0020006D006500720067','08979392113','Default_No_Compression','050003A70802','',-1,'d documentation files (the \"Software\"), to deal\nin the Software without restriction, including without limitation the rights\nto use, copy, modify, merg',196,'',2,'SendingError',-1,90,255,'root',-1),('2018-09-23 04:46:19','2018-09-23 01:24:54','2018-09-23 04:46:19',NULL,'0065002C0020007000750062006C006900730068002C00200064006900730074007200690062007500740065002C0020007300750062006C006900630065006E00730065002C00200061006E0064002F006F0072002000730065006C006C000A0063006F00700069006500730020006F0066002000740068006500200053006F006600740077006100720065002C00200061006E006400200074006F0020007000650072006D0069007400200070006500720073006F006E007300200074006F002000770068006F006D002000740068006500200053006F006600740077006100720065002000690073000A006600750072006E0069007300680065006400200074006F00200064006F00200073006F002C0020007300750062006A00650063007400200074006F00200074006800650020','08979392113','Default_No_Compression','050003A70803','',-1,'e, publish, distribute, sublicense, and/or sell\ncopies of the Software, and to permit persons to whom the Software is\nfurnished to do so, subject to the ',196,'',3,'SendingError',-1,90,255,'root',-1),('2018-09-23 04:46:19','2018-09-23 01:24:54','2018-09-23 04:46:19',NULL,'0066006F006C006C006F00770069006E006700200063006F006E0064006900740069006F006E0073003A000A000A005400680065002000610062006F0076006500200063006F00700079007200690067006800740020006E006F007400690063006500200061006E0064002000740068006900730020007000650072006D0069007300730069006F006E0020006E006F00740069006300650020007300680061006C006C00200062006500200069006E0063006C007500640065006400200069006E00200061006C006C000A0063006F00700069006500730020006F00720020007300750062007300740061006E007400690061006C00200070006F007200740069006F006E00730020006F0066002000740068006500200053006F006600740077006100720065002E000A000A00540048','08979392113','Default_No_Compression','050003A70804','',-1,'following conditions:\n\nThe above copyright notice and this permission notice shall be included in all\ncopies or substantial portions of the Software.\n\nTH',196,'',4,'SendingError',-1,90,255,'root',-1),('2018-09-23 04:46:19','2018-09-23 01:24:54','2018-09-23 04:46:19',NULL,'004500200053004F004600540057004100520045002000490053002000500052004F0056004900440045004400200022004100530020004900530022002C00200057004900540048004F00550054002000570041005200520041004E005400590020004F004600200041004E00590020004B0049004E0044002C002000450058005000520045005300530020004F0052000A0049004D0050004C004900450044002C00200049004E0043004C005500440049004E004700200042005500540020004E004F00540020004C0049004D004900540045004400200054004F0020005400480045002000570041005200520041004E00540049004500530020004F00460020004D00450052004300480041004E0054004100420049004C004900540059002C000A004600490054004E0045','08979392113','Default_No_Compression','050003A70805','',-1,'E SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\nFITNE',196,'',5,'SendingError',-1,90,255,'root',-1),('2018-09-23 04:46:19','2018-09-23 01:24:54','2018-09-23 04:46:19',NULL,'0053005300200046004F00520020004100200050004100520054004900430055004C0041005200200050005500520050004F0053004500200041004E00440020004E004F004E0049004E004600520049004E00470045004D0045004E0054002E00200049004E0020004E004F0020004500560045004E00540020005300480041004C004C0020005400480045000A0041005500540048004F005200530020004F005200200043004F005000590052004900470048005400200048004F004C00440045005200530020004200450020004C004900410042004C004500200046004F005200200041004E005900200043004C00410049004D002C002000440041004D00410047004500530020004F00520020004F0054004800450052000A004C0049004100420049004C004900540059002C0020','08979392113','Default_No_Compression','050003A70806','',-1,'SS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\nAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\nLIABILITY, ',196,'',6,'SendingError',-1,90,255,'root',-1),('2018-09-23 04:46:19','2018-09-23 01:24:54','2018-09-23 04:46:19',NULL,'005700480045005400480045005200200049004E00200041004E00200041004300540049004F004E0020004F004600200043004F004E00540052004100430054002C00200054004F005200540020004F00520020004F00540048004500520057004900530045002C002000410052004900530049004E0047002000460052004F004D002C000A004F005500540020004F00460020004F005200200049004E00200043004F004E004E0045004300540049004F004E00200057004900540048002000540048004500200053004F0046005400570041005200450020004F0052002000540048004500200055005300450020004F00520020004F00540048004500520020004400450041004C0049004E0047005300200049004E0020005400480045000A0053004F004600540057004100520045','08979392113','Default_No_Compression','050003A70807','',-1,'WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\nOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\nSOFTWARE',196,'',7,'SendingError',-1,90,255,'root',-1),('2018-09-23 04:46:19','2018-09-23 01:24:54','2018-09-23 04:46:19',NULL,'002E000A','08979392113','Default_No_Compression','050003A70808','',-1,'.\n',196,'',8,'SendingError',-1,90,255,'root',-1),('2018-09-23 04:54:10','2018-09-23 01:30:03','2018-09-23 04:54:10',NULL,'007400650073006A0061006B00730064006A00610073006B006E0064006B0061006C006E0073006A0020006E00610073006A006B0020006A006400730061006E006A00200064006B0061006E006D00730020006E0064006A006B00610073006E0064006A006B00200061006E00730064006A006B006E0061006A00200073006B0064006E006A006B00610073006E0064006A0020006E0061006A006B00640073006E006A006B00200061006E0073006A0064006B006E006600610020006B006E006400610073006A006E0064006A006100730064006A0061006200640073006A0061006E006B006A0020007300620064006A006B007300610020006B0064006200730061006A006B00640062006A0020006100620064006B0062006100730064006200200061007300680062006400680020','08979392113','Default_No_Compression','050003A70201','',-1,'tesjaksdjaskndkalnsj nasjk jdsanj dkanms ndjkasndjk ansdjknaj skdnjkasndj najkdsnjk ansjdknfa kndasjndjasdjabdsjankj sbdjksa kdbsajkdbj abdkbasdb ashbdh ',198,'',1,'SendingError',-1,90,255,'root',512),('2018-09-23 04:54:10','2018-09-23 01:30:03','2018-09-23 04:54:10',NULL,'00620073006800610064006200610068007300620064006800200062006100730068006400620068006100730062006400680062006100730068006400200062006B006100730064006E006A0061006200640073006A006100730064006A00610073006200640020006A0061006200730064006B006A0061006A0064006200610073006A006B','08979392113','Default_No_Compression','050003A70202','',-1,'bshadbahsbdh bashdbhasbdhbashd bkasdnjabdsjasdjasbd jabsdkjajdbasjk',198,'',2,'SendingError',-1,90,255,'root',-1),('2018-09-23 04:56:04','2018-09-23 04:55:59','2018-09-23 04:56:04',NULL,'006F006B0065','+6281319691964','Default_No_Compression','','+62816124',-1,'oke',201,'',1,'SendingOKNoReport',-1,91,255,'root',-1),('2018-09-23 05:03:26','2018-09-23 05:03:21','2018-09-23 05:03:26',NULL,'0074006500730074','081319691964','Default_No_Compression','','+62816124',-1,'test',202,'',1,'SendingOKNoReport',-1,92,255,'2',-1),('2018-09-23 06:39:18','2018-09-23 06:19:16','2018-09-23 06:39:18',NULL,'0043006F006E0074006F006800200073006D0073002000620072006F006100640063006100730074','+628979392113','Default_No_Compression','','+62816124',-1,'Contoh sms broadcast',203,'',1,'SendingOKNoReport',-1,93,255,'root',-1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_change_log`
--

LOCK TABLES `tbl_change_log` WRITE;
/*!40000 ALTER TABLE `tbl_change_log` DISABLE KEYS */;
INSERT INTO `tbl_change_log` VALUES (1,'1.0.1','Reales System','Menagament system SMS broadcast \r\nadalah system untuk mempermudah kegiatan pengiriman SMS.\r\nSystem ini dibuat menggunakan <br/>\r\n- PHP VERSION 7.0.3 <br/>\r\n- FRAMEWORK CODEIGNITER 3.1.7 <br/>\r\nFitur yang tersedia sementara di sytem ini : <br/>\r\n1. create sms <br/>\r\n2. outbox <br/>\r\n3. sent <br/>\r\n4. inbox <br/>\r\n4. phonebook <br/>','2018-07-01','Didi Triawan'),(2,'1.0.2','Update','#update <br/>\r\n\r\n1.SMS TEMPLATE <br/>\r\n2.SMS BROADCAST <br/>\r\n','2018-08-01','Didi Triawan'),(3,'1.0.3','Update and bug fix','#update <br/>\r\n1. Server sms gammu <br/>\r\n2. Modem wavecome <br/>\r\n3. Send sms > 160 character <br/>\r\n4. Upload file contact/phonebook <br/>\r\n\r\n\r\n#Bug fix <br/>\r\n1.Fixed send broadcast sms <br/>\r\n2.Fixed validate create sms <br/>\r\n','2018-09-05','Didi Triawan');
/*!40000 ALTER TABLE `tbl_change_log` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kategori`
--

LOCK TABLES `tbl_kategori` WRITE;
/*!40000 ALTER TABLE `tbl_kategori` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_region`
--

LOCK TABLES `tbl_region` WRITE;
/*!40000 ALTER TABLE `tbl_region` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sms_template`
--

LOCK TABLES `tbl_sms_template` WRITE;
/*!40000 ALTER TABLE `tbl_sms_template` DISABLE KEYS */;
INSERT INTO `tbl_sms_template` VALUES (1,'SMS BROADCAST','Contoh sms broadcast',1,'2018-07-19 19:06:38','2018-09-01 18:08:42',2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'admins','SUPERADMINs','admin@admin.com','$2y$08$PfdZ5PiM1vJb5.ELV/rcGOplRmyKPDGCHB6oYA','2018-07-04 17:46:40','2018-07-01 16:39:55',1,0,NULL,NULL,NULL,'2018-06-02 05:13:15','2018-09-22 22:32:44',1),(2,'SYSTEM APPLICATION','root','root@mail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','2018-10-03 11:22:19',NULL,1,1,1,NULL,NULL,'2018-07-13 00:00:00',NULL,1);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
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

-- Dump completed on 2018-10-03 13:24:45
