-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dormnbu
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amenitie`
--

DROP TABLE IF EXISTS `amenitie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `amenitie` (
  `amenitie_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสิ่งอำนวนความสะดวก',
  `air` char(1) NOT NULL DEFAULT 'N' COMMENT 'เครื่องปรับอากาศ',
  `fan` char(1) NOT NULL DEFAULT 'N' COMMENT 'พัดลม',
  `water_heater` char(1) NOT NULL DEFAULT 'N' COMMENT 'เครื่องทำน้ำอุ่น',
  `furniture` char(1) NOT NULL DEFAULT 'N' COMMENT 'เฟอร์นิเจอร์ - ตู้, เตียง',
  `cable` char(1) NOT NULL DEFAULT 'N' COMMENT 'เคเบิลทีวี / ดาวเทียม',
  `wifi` char(1) NOT NULL DEFAULT 'N' COMMENT 'อินเตอร์เน็ตไร้สาย',
  `lift` char(1) NOT NULL DEFAULT 'N' COMMENT 'ลิฟท์',
  `keycard` char(1) NOT NULL DEFAULT 'N' COMMENT 'คีย์การ์ด',
  `cctv` char(1) NOT NULL DEFAULT 'N' COMMENT 'กล้องวงจรปิด',
  `gymnasium` char(1) NOT NULL DEFAULT 'N' COMMENT 'โรงยิม / ฟิตเนส',
  `washing` char(1) NOT NULL DEFAULT 'N' COMMENT 'เครื่องซักผ้า',
  `hair_salon` char(1) NOT NULL DEFAULT 'N' COMMENT 'ร้านทำผม-เสริมสวย',
  PRIMARY KEY (`amenitie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenitie`
--

LOCK TABLES `amenitie` WRITE;
/*!40000 ALTER TABLE `amenitie` DISABLE KEYS */;
INSERT INTO `amenitie` VALUES (7,'Y','Y','N','Y','Y','Y','Y','N','Y','N','Y','Y'),(8,'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),(9,'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),(10,'Y','Y','N','Y','Y','Y','N','Y','Y','N','N','N'),(11,'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),(12,'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),(13,'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),(14,'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),(15,'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),(16,'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),(17,'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),(18,'Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y');
/*!40000 ALTER TABLE `amenitie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `area` (
  `area_id` int(10) NOT NULL AUTO_INCREMENT,
  `no` varchar(50) DEFAULT NULL COMMENT 'หมายเลขที่อยู่หอพัก',
  `road` varchar(50) DEFAULT NULL COMMENT 'ถนน',
  `soi` varchar(50) DEFAULT NULL COMMENT 'ซอย',
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (7,'6/636','พหลโยธิน','52'),(8,'49/3','เพิ่มสิน','3'),(9,'49/3','เพิ่มสิน','3'),(10,'49/3','เพิ่มสิน','3'),(11,'49/3','เพิ่มสิน','3'),(12,'49/3','เพิ่มสิน','3'),(13,'49/3','เพิ่มสิน','3'),(14,'49/3','เพิ่มสิน','3'),(15,'49/3','เพิ่มสิน','3'),(16,'49/3','เพิ่มสิน','3'),(17,'49/3','เพิ่มสิน','3'),(18,'49/3','เพิ่มสิน','3');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment` (
  `comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `dorm_id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,10,3,'ยังมีห้องว่างมั้ยค่ะ','2018-12-12 12:00:00','2018-12-12 13:15:56'),(3,12,1,'มีห้องว่างมั้ยค่ะ','2018-12-12 13:16:18',NULL),(4,12,2,'มีห้องว่างมั้ยค่ะ','2018-12-12 13:35:15',NULL),(5,12,3,'มีห้องว่างมั้ยค่ะ','2018-12-12 13:35:38',NULL),(6,12,3,'หนูไปมาห้องเต็มหมดแล้วค่ะ','2018-12-12 13:38:03',NULL),(7,12,1,'ตอนนี้มีห้องว่างแล้วนะครับ','2018-12-12 13:38:21',NULL);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorm`
--

DROP TABLE IF EXISTS `dorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dorm` (
  `dorm_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสหอพัก',
  `dorm_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'เลขที่ประกาศ',
  `member_id` int(10) NOT NULL COMMENT 'รหัสผู้ใช้',
  `amenitie_id` int(10) NOT NULL COMMENT 'รหัสสิ่งอำนวนความสะดวก',
  `area_id` int(10) NOT NULL COMMENT 'รหัสที่อยู่',
  `promotion_id` int(10) DEFAULT NULL COMMENT 'รหัสโปรโมชั่น',
  `picture_id` int(10) DEFAULT NULL COMMENT 'รหัสรูปภาพ',
  `name_th` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'ชื่อหอพัก',
  `name_en` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ชื่อหอพัก',
  `phone1` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'เบอร์โทรศัพท์หลัก',
  `phone2` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'เบอร์โทรศัพท์สำรอง',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'อีเมล',
  `line` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ไลน์',
  `detail` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'รายละเอียด',
  `water_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ประเภทค่าน้ำ',
  `water_price` int(10) DEFAULT NULL COMMENT 'ราคาค่าน้ำ',
  `water_min` int(5) DEFAULT NULL COMMENT 'ขั้นต่ำค่าน้ำ',
  `water_max` int(5) DEFAULT NULL COMMENT 'มากสุดค่าน้ำ',
  `electricity_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ประเภทค่าไฟ',
  `electricity_price` int(10) DEFAULT NULL COMMENT 'ราคาค่าไฟ',
  `electricity_min` int(5) DEFAULT NULL COMMENT 'ขั้นต่ำค่าไฟ',
  `electricity_max` int(5) DEFAULT NULL COMMENT 'มากสุดค่าไฟ',
  `other_service_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ประเภทค่าบริการอื่นๆ',
  `other_service_desc` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'รายละเอียดค่าบริการอื่้นๆ',
  `other_service_price` int(10) DEFAULT NULL COMMENT 'ราคาค่าบริการอื่้นๆ',
  `payadvance_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ประเภทการจ่ายล่วงหน้า',
  `payadvance_price` int(10) DEFAULT NULL COMMENT 'ราคาการจ่ายล่วงหน้า',
  `deposit_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ประเภทเงินมัดจำ',
  `deposit_price` int(10) DEFAULT NULL COMMENT 'ราคาเงินมัดจำ',
  `internet_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ประเภทค่าอินเทอร์เน็ต',
  `internet_price` int(10) DEFAULT NULL COMMENT 'ราคาค่าอินเทอร์เน็ต',
  `create_date` datetime DEFAULT NULL,
  `modify` datetime DEFAULT NULL,
  PRIMARY KEY (`dorm_id`),
  KEY `dorm_amenitie` (`amenitie_id`),
  KEY `dorm_area` (`area_id`),
  KEY `dorm_picture_idx` (`picture_id`),
  KEY `dorm_promotion_idx` (`promotion_id`),
  CONSTRAINT `dorm_amenitie` FOREIGN KEY (`amenitie_id`) REFERENCES `amenitie` (`amenitie_id`),
  CONSTRAINT `dorm_area` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`),
  CONSTRAINT `dorm_picture` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`picture_id`),
  CONSTRAINT `dorm_promotion` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorm`
--

LOCK TABLES `dorm` WRITE;
/*!40000 ALTER TABLE `dorm` DISABLE KEYS */;
INSERT INTO `dorm` VALUES (7,'D6387',5,7,7,7,7,'ดวงจุลชาติอพาร์ทเม้นท์','DJC APARTMENT','097-072-2766','','','','เดินทางสะดวก ใกล้ มหาวิทยาลัยนอร์ท ,ใกล้ตลาดยิ่งเจริญ ,ใกล้บิ๊กซีสะพานใหม่,มหาวิทยาลัยศรีปทุม บรรยากาศเงียบสบายเป็นส่วนตัว,อาคารร่มรื่น, สะอาด, ปลอดภัย เรามีสาธารณูปโภคให้บริการมากมาย ฟรที่จอด','P',200,0,10,'U',7,0,0,'N','',0,'N',0,'D',5000,'H',300,'2018-11-04 15:02:39','2018-12-04 15:02:39'),(8,'D6756',2,8,8,8,8,'เอส ที อพาร์ทเม้นท์','ST Apartment','061-424-2987','02-150-9765','st_house@hotmail.com','st_house2','เอส ที เฮ้าส์ อพาร์ทเมนต์ (เพิ่มสิน) ที่อยุ่: 49/3 ซอย 3 ถนนเพิ่มสิน แขวงคลองถนน เขตสายไหม กรุงเทพ 10200 ให้บริการห้องพักให้เช่า ห้องขนาด 25 ตรม มีห้องแอร์อย่างเดียว (ในห้องแอร์มีพัดลมทุกห้อง) เฟอร์นิเจอร์มีครบ','A',20,0,0,'A',6,0,0,'N','',0,'Y',0,'D',3000,'F',0,'2018-11-04 15:22:52','2018-12-04 15:22:52'),(9,'D5424',2,9,9,9,9,'เอส ที อพาร์ทเม้นท์','ST Apartment','061-424-2987','02-150-9765','st_house@hotmail.com','st_house3','เอส ที เฮ้าส์ อพาร์ทเมนต์ (เพิ่มสิน) ที่อยุ่: 49/3 ซอย 3 ถนนเพิ่มสิน แขวงคลองถนน เขตสายไหม กรุงเทพ 10200 ให้บริการห้องพักให้เช่า ห้องขนาด 25 ตรม มีห้องแอร์อย่างเดียว (ในห้องแอร์มีพัดลมทุกห้อง) เฟอร์นิเจอร์มีครบ','A',18,0,0,'A',7,0,0,'N','',0,'Y',0,'D',6000,'H',350,'2018-10-04 15:35:02','2018-12-04 15:35:02'),(10,'D1454',2,10,10,10,10,'เอส ที อพาร์ทเม้นท์','ST Apartment','061-424-2987','02-150-9765','st_house@hotmail.com','st_house4','เอส ที เฮ้าส์ อพาร์ทเมนต์ (เพิ่มสิน) ที่อยุ่: 49/3 ซอย 3 ถนนเพิ่มสิน แขวงคลองถนน เขตสายไหม กรุงเทพ 10200 ให้บริการห้องพักให้เช่า ห้องขนาด 25 ตรม มีห้องแอร์อย่างเดียว (ในห้องแอร์มีพัดลมทุกห้อง) เฟอร์นิเจอร์มีครบ','P',300,0,20,'U',7,0,0,'Y','ค่าคีย์การ์ด',100,'Y',0,'D',4000,'H',350,'2018-12-04 15:35:06','2018-12-04 15:35:06'),(11,'D2578',2,11,11,11,11,'เอส ที อพาร์ทเม้นท์','ST Apartment','061-424-2987','02-150-9765','st_house@hotmail.com','st_house5','เอส ที เฮ้าส์ อพาร์ทเมนต์ (เพิ่มสิน) ที่อยุ่: 49/3 ซอย 3 ถนนเพิ่มสิน แขวงคลองถนน เขตสายไหม กรุงเทพ 10200 ให้บริการห้องพักให้เช่า ห้องขนาด 25 ตรม มีห้องแอร์อย่างเดียว (ในห้องแอร์มีพัดลมทุกห้อง) เฟอร์นิเจอร์มีครบ','A',19,0,0,'A',3,0,0,'N','',0,'Y',0,'H',0,'H',350,'2018-12-04 15:35:10','2018-12-04 15:35:10'),(12,'D8071',2,12,12,12,12,'เอส ที อพาร์ทเม้นท์','ST Apartment','061-424-2987','02-150-9765','st_house@hotmail.com','st_house6','เอส ที เฮ้าส์ อพาร์ทเมนต์ (เพิ่มสิน) ที่อยุ่: 49/3 ซอย 3 ถนนเพิ่มสิน แขวงคลองถนน เขตสายไหม กรุงเทพ 10200 ให้บริการห้องพักให้เช่า ห้องขนาด 25 ตรม มีห้องแอร์อย่างเดียว (ในห้องแอร์มีพัดลมทุกห้อง) เฟอร์นิเจอร์มีครบ','A',16,0,0,'A',5,0,0,'N','',0,'Y',0,'H',0,'H',350,'2018-09-04 15:35:14','2018-12-04 15:35:14'),(13,'D3028',2,13,13,13,13,'เอส ที อพาร์ทเม้นท์','ST Apartment','061-424-2987','02-150-9765','st_house@hotmail.com','st_house7','เอส ที เฮ้าส์ อพาร์ทเมนต์ (เพิ่มสิน) ที่อยุ่: 49/3 ซอย 3 ถนนเพิ่มสิน แขวงคลองถนน เขตสายไหม กรุงเทพ 10200 ให้บริการห้องพักให้เช่า ห้องขนาด 25 ตรม มีห้องแอร์อย่างเดียว (ในห้องแอร์มีพัดลมทุกห้อง) เฟอร์นิเจอร์มีครบ','A',14,0,0,'A',5,0,0,'N','',0,'Y',0,'H',0,'H',350,'2018-10-04 15:35:18','2018-12-04 15:35:18'),(14,'D4337',2,14,14,14,14,'เอส ที อพาร์ทเม้นท์','ST Apartment','061-424-2987','02-150-9765','st_house@hotmail.com','st_house8','เอส ที เฮ้าส์ อพาร์ทเมนต์ (เพิ่มสิน) ที่อยุ่: 49/3 ซอย 3 ถนนเพิ่มสิน แขวงคลองถนน เขตสายไหม กรุงเทพ 10200 ให้บริการห้องพักให้เช่า ห้องขนาด 25 ตรม มีห้องแอร์อย่างเดียว (ในห้องแอร์มีพัดลมทุกห้อง) เฟอร์นิเจอร์มีครบ','A',14,0,0,'A',5,0,0,'N','',0,'Y',0,'H',0,'C',0,'2018-05-04 15:35:21','2018-12-04 15:35:21'),(15,'D3765',2,15,15,15,15,'เอส ที อพาร์ทเม้นท์','ST Apartment','061-424-2987','02-150-9765','st_house@hotmail.com','st_house9','เอส ที เฮ้าส์ อพาร์ทเมนต์ (เพิ่มสิน) ที่อยุ่: 49/3 ซอย 3 ถนนเพิ่มสิน แขวงคลองถนน เขตสายไหม กรุงเทพ 10200 ให้บริการห้องพักให้เช่า ห้องขนาด 25 ตรม มีห้องแอร์อย่างเดียว (ในห้องแอร์มีพัดลมทุกห้อง) เฟอร์นิเจอร์มีครบ','A',14,0,0,'A',5,0,0,'N','',0,'Y',0,'H',0,'H',350,'2018-12-04 15:35:26','2018-12-04 15:35:26'),(16,'D2357',2,16,16,16,16,'เอส ที อพาร์ทเม้นท์','ST Apartment','061-424-2987','02-150-9765','st_house@hotmail.com','st_house10','เอส ที เฮ้าส์ อพาร์ทเมนต์ (เพิ่มสิน) ที่อยุ่: 49/3 ซอย 3 ถนนเพิ่มสิน แขวงคลองถนน เขตสายไหม กรุงเทพ 10200 ให้บริการห้องพักให้เช่า ห้องขนาด 25 ตรม มีห้องแอร์อย่างเดียว (ในห้องแอร์มีพัดลมทุกห้อง) เฟอร์นิเจอร์มีครบ','A',14,0,0,'A',5,0,0,'N','',0,'Y',0,'H',0,'N',0,'2018-10-04 15:35:31','2018-12-04 15:35:31'),(17,'D7794',2,17,17,17,17,'เอส ที อพาร์ทเม้นท์','ST Apartment','061-424-2987','02-150-9765','st_house@hotmail.com','st_house11','เอส ที เฮ้าส์ อพาร์ทเมนต์ (เพิ่มสิน) ที่อยุ่: 49/3 ซอย 3 ถนนเพิ่มสิน แขวงคลองถนน เขตสายไหม กรุงเทพ 10200 ให้บริการห้องพักให้เช่า ห้องขนาด 25 ตรม มีห้องแอร์อย่างเดียว (ในห้องแอร์มีพัดลมทุกห้อง) เฟอร์นิเจอร์มีครบ','A',14,0,0,'A',5,0,0,'N','',0,'Y',0,'H',0,'H',350,'2019-01-08 16:15:02','2018-12-10 16:15:02'),(18,'D8889',2,18,18,18,18,'เอส ที อพาร์ทเม้นท์','ST Apartment','061-424-2987','02-150-9765','st_house@hotmail.com','st_house12','เอส ที เฮ้าส์ อพาร์ทเมนต์ (เพิ่มสิน) ที่อยุ่: 49/3 ซอย 3 ถนนเพิ่มสิน แขวงคลองถนน เขตสายไหม กรุงเทพ 10200 ให้บริการห้องพักให้เช่า ห้องขนาด 25 ตรม มีห้องแอร์อย่างเดียว (ในห้องแอร์มีพัดลมทุกห้อง) เฟอร์นิเจอร์มีครบ','A',14,0,0,'A',5,0,0,'N','',0,'Y',0,'H',0,'N',0,'2019-01-10 16:50:09','2018-12-10 16:50:09');
/*!40000 ALTER TABLE `dorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `favorite` (
  `favorite_id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` int(10) NOT NULL,
  `dorm_id` int(10) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`favorite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES (1,6,2,'2018-11-29 17:23:09');
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_electricity`
--

DROP TABLE IF EXISTS `global_electricity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `global_electricity` (
  `electricity_id` int(10) NOT NULL,
  `electricity_type` char(1) NOT NULL,
  `electricity_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`electricity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_electricity`
--

LOCK TABLES `global_electricity` WRITE;
/*!40000 ALTER TABLE `global_electricity` DISABLE KEYS */;
INSERT INTO `global_electricity` VALUES (1,'A','ตามยูนิตที่ใช้'),(2,'B','เหมาจ่าย'),(3,'C','โทรสอบถาม');
/*!40000 ALTER TABLE `global_electricity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_water`
--

DROP TABLE IF EXISTS `global_water`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `global_water` (
  `water_id` int(10) NOT NULL,
  `water_type` char(1) NOT NULL,
  `water_desc` varchar(100) NOT NULL,
  PRIMARY KEY (`water_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_water`
--

LOCK TABLES `global_water` WRITE;
/*!40000 ALTER TABLE `global_water` DISABLE KEYS */;
INSERT INTO `global_water` VALUES (1,'A','ตามยูนิตที่ใช้'),(2,'B','เหมาจ่าย'),(3,'C','โทรสอบถาม');
/*!40000 ALTER TABLE `global_water` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสผู้ใช้',
  `first_name` varchar(45) NOT NULL COMMENT 'ชื่อจริง',
  `last_name` varchar(45) NOT NULL COMMENT 'นามสกุล',
  `email` varchar(100) NOT NULL COMMENT 'อีเมล',
  `password` varchar(30) NOT NULL COMMENT 'รหัสผ่าน',
  `phone` varchar(15) DEFAULT NULL COMMENT 'เบอรืโทรศัพท์',
  `member_type` char(1) NOT NULL DEFAULT 'M' COMMENT 'ประเภทผู้ใช้\nA,D,M',
  `status` char(1) NOT NULL DEFAULT 'Y' COMMENT 'สถานะ',
  `picture` varchar(150) DEFAULT NULL COMMENT 'รูปโปรไฟล์',
  `certficate` varchar(150) DEFAULT NULL COMMENT 'ใบรับรอง',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'วันที่เป็นสมาชิก',
  `modify` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'วันที่แก้ไขข้อมูล',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (2,'รุ่งอรุณ','ทัญญานันท์','rungarun_por@hotmail.com','291240','0926609557','M','Y',NULL,NULL,'2018-11-27 16:43:56','2018-11-29 17:06:22'),(4,'จีรวุฒิ','บัวย้อย','571100129_@hotmail.com','571100129','912312344','M','Y',NULL,NULL,'2562-01-03 08:01:10',NULL),(5,'ดวงจุลชาติ','พหลโยธิน','djt_@hotmail.com','djt','0970722766','D','Y',NULL,NULL,'2562-01-04 02:02:05',NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `picture` (
  `picture_id` int(10) NOT NULL AUTO_INCREMENT,
  `picture_1` varchar(350) DEFAULT NULL,
  `picture_2` varchar(350) DEFAULT NULL,
  `picture_3` varchar(350) DEFAULT NULL,
  `picture_4` varchar(350) DEFAULT NULL,
  `picture_5` varchar(350) DEFAULT NULL,
  `picture_6` varchar(350) DEFAULT NULL,
  `picture_7` varchar(350) DEFAULT NULL,
  `picture_8` varchar(350) DEFAULT NULL,
  `picture_9` varchar(350) DEFAULT NULL,
  `picture_10` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES (7,'https://static.wixstatic.com/media/0f6f94_6f56f6245de74c23bb8d79dcc34c754e.jpg/v1/fill/w_940,h_345,al_c,q_80,usm_0.66_1.00_0.01/0f6f94_6f56f6245de74c23bb8d79dcc34c754e.webp','https://static.wixstatic.com/media/0f6f94_3edd03575393407484f5ad15a18667f4.jpg/v1/fill/w_940,h_345,al_c,q_80,usm_0.66_1.00_0.01/0f6f94_3edd03575393407484f5ad15a18667f4.webp','https://static.wixstatic.com/media/0f6f94_6f56f6245de74c23bb8d79dcc34c754e.jpg/v1/fill/w_940,h_345,al_c,q_80,usm_0.66_1.00_0.01/0f6f94_6f56f6245de74c23bb8d79dcc34c754e.webp',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `promotion` (
  `promotion_id` int(10) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `detail` varchar(500) NOT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (7,'2018-11-22','2018-12-12','ชวนเพื่อนมาอยู่ลดค่าให้ค่าห้อง 500 บาท 1 เดือน'),(8,'2018-11-22','2018-12-12','Y'),(9,'2018-11-22','2018-12-12','Y'),(10,'2018-11-22','2018-12-12','Y'),(11,'2018-11-22','2018-12-12','Y'),(12,'2018-11-22','2018-12-12','Y'),(13,'2018-11-22','2018-12-12','Y'),(14,'2018-11-22','2018-12-12','Y'),(15,'2018-11-22','2018-12-12','Y'),(16,'2018-11-22','2018-12-12','Y'),(17,'2018-11-22','2018-12-12','Y'),(18,'2018-11-22','2018-12-12','Y');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `review` (
  `review_id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` int(10) DEFAULT NULL,
  `dorm_id` int(10) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify` datetime DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,7,5,'2018-11-04 15:02:39','2018-11-04 15:02:39'),(2,2,7,4,'2018-11-04 15:02:39','2018-11-04 15:02:39'),(3,1,8,5,'2018-11-04 15:02:39','2018-12-11 15:53:24'),(4,1,9,4,'2018-11-04 15:02:39','2018-11-04 15:02:39'),(7,3,10,5,'2018-12-11 16:19:55',NULL),(8,3,11,5,'2018-12-11 16:20:04',NULL),(9,3,12,5,'2018-12-11 16:20:13',NULL),(10,3,13,5,'2018-12-11 16:20:20',NULL),(11,3,14,5,'2018-12-11 16:20:27',NULL),(12,1,14,5,'2018-12-11 16:21:03',NULL),(13,2,14,5,'2018-12-11 16:21:07',NULL);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtype`
--

DROP TABLE IF EXISTS `roomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roomtype` (
  `roomtype_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสห้องพัก',
  `dorm_id` int(10) NOT NULL COMMENT 'รหัสหอพัก',
  `type` varchar(45) NOT NULL COMMENT 'ประเภท',
  `format` varchar(45) DEFAULT NULL COMMENT 'รูปแบบห้อง',
  `size` varchar(45) DEFAULT NULL COMMENT 'ขนาดห้อง',
  `unit` varchar(45) DEFAULT NULL COMMENT 'หน่วยขนาดห้อง',
  `monthly_rent` char(1) NOT NULL COMMENT 'เช่ารายเดือน',
  `monthly_min` int(11) DEFAULT NULL COMMENT 'ราคาเริ่มต้น',
  `monthly_max` int(11) DEFAULT NULL COMMENT 'ราคาสูงสุด',
  `daily_rent` char(1) NOT NULL COMMENT 'เช่ารายวัน',
  `daily_min` int(11) DEFAULT NULL COMMENT 'ราคาเริ่มต้น',
  `daily_max` int(11) DEFAULT NULL COMMENT 'ราคาสูงสุด',
  `status` char(1) NOT NULL COMMENT 'สถานะห้อง',
  PRIMARY KEY (`roomtype_id`),
  KEY `roomtype_dorm_idx` (`dorm_id`),
  CONSTRAINT `roomtype_dorm` FOREIGN KEY (`dorm_id`) REFERENCES `dorm` (`dorm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
INSERT INTO `roomtype` VALUES (17,7,'ห้องธรรมดา','สตูดิโอ','30.0','ตารางเมตร','Y',2800,2800,'N',0,0,'Y'),(18,7,'ห้องแอร์','สตูดิโอ','30.0','ตารางเมตร','Y',3500,3500,'N',0,0,'Y'),(19,7,'ห้องมุม','สตูดิโอ','33.0','ตารางเมตร','Y',3800,3800,'N',0,0,'Y'),(20,8,'ห้องแอร์ (ห้องมุม)','สตูดิโอ','26','ตารางเมตร','Y',3500,3500,'N',0,0,'Y'),(21,9,'ห้องแอร์ (ธรรมดา)','สตูดิโอ','25.0','ตารางเมตร','Y',3200,3600,'Y',250,450,'Y'),(22,9,'ห้องแอร์ (ห้องมุม)','สตูดิโอ','26','ตารางเมตร','Y',4200,4200,'N',0,0,'Y'),(23,10,'ห้องแอร์ (ธรรมดา)','สตูดิโอ','25.0','ตารางเมตร','Y',3800,3800,'N',0,0,'Y'),(24,10,'ห้องแอร์ (ห้องมุม)','สตูดิโอ','26','ตารางเมตร','Y',4200,4200,'Y',350,500,'Y'),(25,11,'ห้องแอร์ (ธรรมดา)','สตูดิโอ','25.0','ตารางเมตร','Y',3800,3800,'N',0,0,'Y'),(26,11,'ห้องแอร์ (ห้องมุม)','สตูดิโอ','26','ตารางเมตร','Y',4200,4200,'N',0,0,'Y'),(27,12,'ห้องแอร์ (ธรรมดา)','สตูดิโอ','25.0','ตารางเมตร','Y',3800,3800,'N',0,0,'Y'),(28,12,'ห้องแอร์ (ห้องมุม)','สตูดิโอ','26','ตารางเมตร','Y',4200,4200,'N',0,0,'Y'),(29,13,'ห้องแอร์ (ธรรมดา)','สตูดิโอ','25.0','ตารางเมตร','Y',3800,3800,'N',0,0,'Y'),(30,13,'ห้องแอร์ (ห้องมุม)','สตูดิโอ','26','ตารางเมตร','Y',4200,4200,'N',0,0,'Y'),(31,14,'ห้องแอร์ (ธรรมดา)','สตูดิโอ','25.0','ตารางเมตร','Y',3800,3800,'N',0,0,'Y'),(32,14,'ห้องแอร์ (ห้องมุม)','สตูดิโอ','26','ตารางเมตร','Y',4200,4200,'N',0,0,'Y'),(33,15,'ห้องแอร์ (ธรรมดา)','สตูดิโอ','25.0','ตารางเมตร','Y',3800,3800,'N',0,0,'Y'),(34,15,'ห้องแอร์ (ห้องมุม)','สตูดิโอ','26','ตารางเมตร','Y',4200,4200,'N',0,0,'Y'),(35,16,'ห้องแอร์ (ธรรมดา)','สตูดิโอ','25.0','ตารางเมตร','Y',3800,3800,'N',0,0,'Y'),(36,16,'ห้องแอร์ (ห้องมุม)','สตูดิโอ','26','ตารางเมตร','Y',4200,4200,'N',0,0,'Y'),(37,17,'ห้องแอร์ (ธรรมดา)','สตูดิโอ','25.0','ตารางเมตร','Y',3800,3800,'N',0,0,'Y'),(38,17,'ห้องแอร์ (ห้องมุม)','สตูดิโอ','26','ตารางเมตร','Y',4200,4200,'N',0,0,'Y'),(39,18,'ห้องแอร์ (ธรรมดา)','สตูดิโอ','25.0','ตารางเมตร','Y',3800,3800,'Y',350,450,'Y'),(40,18,'ห้องแอร์ (ห้องมุม)','สตูดิโอ','26','ตารางเมตร','Y',4200,4200,'Y',300,500,'Y');
/*!40000 ALTER TABLE `roomtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-19  0:02:49
