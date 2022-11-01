-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: app3_database
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product_specifications`
--

DROP TABLE IF EXISTS `product_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_specifications` (
  `specification_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `descrption` longtext,
  `specifications` json DEFAULT NULL,
  `highlights` json DEFAULT NULL,
  `ram` varchar(64) DEFAULT NULL,
  `storage` varchar(500) DEFAULT NULL,
  `colors` json DEFAULT NULL,
  PRIMARY KEY (`specification_id`,`product_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`),
  UNIQUE KEY `specification_id_UNIQUE` (`specification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_specifications`
--

LOCK TABLES `product_specifications` WRITE;
/*!40000 ALTER TABLE `product_specifications` DISABLE KEYS */;
INSERT INTO `product_specifications` VALUES (1,1,'Redmi Note 11 4G is configured with a 6nm Qualcomm Snapdragon 680 chipset and 4GB LPDDR4X RAM. The brand has installed an Adreno 610 GPU in the device that offers a great visual experience. Its internal operations are managed by an Octa-core processor, composed of a Kryo 265 setup. Moreover, the processor can perform at the highest speed of 2.4GHz. A 5000mAh Li-Polymer battery is loaded within the device. The non-removable cell supports a 33W Pro Fast Charging system. Redmi Note 11 4G features an FHD+ 6.43-inches AMOLED display that features a best-in-a-class pixel density of 409ppi and a resolution of 1080 x 2400 pixels. The smartphone comes with a bezel-less display also comes with a refresh rate of 90Hz and includes a punch-hole where the front camera is located.','[{\"label\": \"Network\", \"props\": {\"Speed\": \"HSPA 42.2/5.76 Mbps, LTE \", \"2G bands\": \"GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\", \"3G bands\": \"HSDPA 850 / 900 / 2100\", \"4G bands\": \"LTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 11(1500), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 21(1500), 25(1900), 26(850), 28(700), 29(700), 30(2300), 32(1500), 34(2000), 38(2600), 39(1900), 40(2300), 41(2500), 42(3500), 46, 48, 66(1700/2100) - A2215 LTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 14(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 29(700), 30(2300), 34(2000), 38(2600), 39(1900), 40(2300), 41(2500), 42(3500), 46, 48, 66(1700/2100), 71(600) - A2160 LTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 14(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 29(700), 30(2300), 34(2000), 38(2600), 39(1900), 40(2300), 41(2500), 42(3500), 46, 48, 66(1700/2100), 71(600) - A2217\", \"5G bands\": \"5, 8, 38, 40, 41\", \"Technology\": \"GSM / HSPA / LTE\"}}, {\"label\": \"LAUNCH\", \"props\": {\"Status\": \"Available. Released 2021\", \"Announced\": \"2021, August 20\"}}, {\"label\": \"DISPLAY\", \"props\": {\"Size\": \"6.51 inches, 102.3 cm2 (~81.8% screen-to-body ratio)\", \"Type\": \"Super Retina XDR OLED capacitive touchscreen\", \"Features\": \"800 nits\\nDolby Vision\\nHDR10\\nWide color gamut\\nTrue-tone\\n120 Hz touch-sensing\", \"Resolution\": \"720 x 1600 pixels, 20:9 ratio\", \"Touch Screen\": \"Yes\", \"Pixel Density\": \"458 ppi (pixels per inch)\", \"Display Colors\": \"16M Colors\", \"Display Protection\": \"Scratch-resistant glass, oleophobic coatin\"}}, {\"label\": \"Hardware\", \"props\": {\"CPU\": \"Apple A13 Bionic\", \"Sensors\": \"Face ID, accelerometer, gyro, proximity, compass, barometer\\nSiri natural language commands and dictation\", \"RAM (Memory)\": \"6 GB\", \"Internal Storage\": \"64 GB, 256 GB, 512 GB\", \"Memory Card Slot\": \"Yes\"}}, {\"label\": \"Software\", \"props\": {\"User Interface\": \"Yes\", \"Operating System\": \"iOS 13\"}}, {\"label\": \"Camera\", \"props\": {\"Flash\": \"Quad-LED dual-tone flash, HDR (photo/panorama)\", \"Image\": \"4k\", \"Video\": \"2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.\", \"Rear Camera\": \"108 MP (wide) + 12 MP (telephoto) + 12 MP (ultrawide)\", \"Front Camera\": \"12 MP + TOF 3D camera\"}}, {\"label\": \"Connectivity\", \"props\": {\"GPS\": \"Yes, with A-GPS, GLONASS, GALILEO, QZSS\", \"NFC\": \"Depends on Country\", \"SIM\": \"Nano SIM\", \"USB\": \"2.0, proprietary reversible connector Type C\", \"Wi-fi\": \"Wi-Fi 802.11 a/b/g/n/ac/ax, dual-band, hotspot\", \"Dual SIM\": \"Single SIM (Nano-SIM and/or Electronic SIM card) or Dual SIM (Nano-SIM, dual stand-by) - for China\", \"Headphone Jack\": \"Yes\", \"Wireless Charging\": \"Yes\"}}, {\"label\": \"Battery\", \"props\": {\"Capacity\": \"Li-Ion 5190 mAh battery + Fast battery charging 18W: 50% in 30 min + USB Power Delivery 2.0 + Qi wireless charging\", \"Placement\": \"Non-removable\"}}]','[\"4 GB RAM | 64 GB ROM | Expandable Upto 1 TB\", \"16.33 cm (6.43 inch) Full HD+ Display\", \"50MP + 8MP + 2MP + 2MP | 13MP Front Camera\", \"5000 mAh Battery\", \"Qualcomm SM6225 Snapdragon 680 Processor\"]','[{\"v\":\"4GB\",\"url\":\"\"},{\"v\":\"6GB\",\"url\":\"\"},{\"v\":\"8GB\",\"url\":\"\"}]','[{\"v\":\"64GB\",\"url\":\"\"},{\"v\":\"128GB\",\"url\":\"\"}]','[{\"url\": \"https://res.cloudinary.com/rasel/image/upload/v1649322054/phone_mela/products/xiaomi-redmi-note-9-pro-global-.jpg\", \"color\": \"red\"}, {\"url\": \"https://res.cloudinary.com/rasel/image/upload/v1649322054/phone_mela/products/xiaomi-redmi-note-9-pro-global-.jpg\", \"color\": \"Dimond\"}]'),(2,2,'Redmi Note 11 4G is configured with a 6nm Qualcomm Snapdragon 680 chipset and 4GB LPDDR4X RAM. The brand has installed an Adreno 610 GPU in the device that offers a great visual experience. Its internal operations are managed by an Octa-core processor, composed of a Kryo 265 setup. Moreover, the processor can perform at the highest speed of 2.4GHz. A 5000mAh Li-Polymer battery is loaded within the device. The non-removable cell supports a 33W Pro Fast Charging system. Redmi Note 11 4G features an FHD+ 6.43-inches AMOLED display that features a best-in-a-class pixel density of 409ppi and a resolution of 1080 x 2400 pixels. The smartphone comes with a bezel-less display also comes with a refresh rate of 90Hz and includes a punch-hole where the front camera is located.','[{\"label\": \"Network\", \"props\": {\"Speed\": \"HSPA 42.2/5.76 Mbps, LTE \", \"2G bands\": \"GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\", \"3G bands\": \"HSDPA 850 / 900 / 2100\", \"4G bands\": \"LTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 11(1500), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 21(1500), 25(1900), 26(850), 28(700), 29(700), 30(2300), 32(1500), 34(2000), 38(2600), 39(1900), 40(2300), 41(2500), 42(3500), 46, 48, 66(1700/2100) - A2215 LTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 14(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 29(700), 30(2300), 34(2000), 38(2600), 39(1900), 40(2300), 41(2500), 42(3500), 46, 48, 66(1700/2100), 71(600) - A2160 LTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 14(700), 17(700), 18(800), 19(800), 20(800), 25(1900), 26(850), 29(700), 30(2300), 34(2000), 38(2600), 39(1900), 40(2300), 41(2500), 42(3500), 46, 48, 66(1700/2100), 71(600) - A2217\", \"5G bands\": \"5, 8, 38, 40, 41\", \"Technology\": \"GSM / HSPA / LTE\"}}, {\"label\": \"LAUNCH\", \"props\": {\"Status\": \"Available. Released 2021\", \"Announced\": \"2021, August 20\"}}, {\"label\": \"DISPLAY\", \"props\": {\"Size\": \"6.51 inches, 102.3 cm2 (~81.8% screen-to-body ratio)\", \"Type\": \"Super Retina XDR OLED capacitive touchscreen\", \"Features\": \"800 nits\\nDolby Vision\\nHDR10\\nWide color gamut\\nTrue-tone\\n120 Hz touch-sensing\", \"Resolution\": \"720 x 1600 pixels, 20:9 ratio\", \"Touch Screen\": \"Yes\", \"Pixel Density\": \"458 ppi (pixels per inch)\", \"Display Colors\": \"16M Colors\", \"Display Protection\": \"Scratch-resistant glass, oleophobic coatin\"}}, {\"label\": \"Hardware\", \"props\": {\"CPU\": \"Apple A13 Bionic\", \"Sensors\": \"Face ID, accelerometer, gyro, proximity, compass, barometer\\nSiri natural language commands and dictation\", \"RAM (Memory)\": \"6 GB\", \"Internal Storage\": \"64 GB, 256 GB, 512 GB\", \"Memory Card Slot\": \"Yes\"}}, {\"label\": \"Software\", \"props\": {\"User Interface\": \"Yes\", \"Operating System\": \"iOS 13\"}}, {\"label\": \"Camera\", \"props\": {\"Flash\": \"Quad-LED dual-tone flash, HDR (photo/panorama)\", \"Image\": \"4k\", \"Video\": \"2160p@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.\", \"Rear Camera\": \"108 MP (wide) + 12 MP (telephoto) + 12 MP (ultrawide)\", \"Front Camera\": \"12 MP + TOF 3D camera\"}}, {\"label\": \"Connectivity\", \"props\": {\"GPS\": \"Yes, with A-GPS, GLONASS, GALILEO, QZSS\", \"NFC\": \"Depends on Country\", \"SIM\": \"Nano SIM\", \"USB\": \"2.0, proprietary reversible connector Type C\", \"Wi-fi\": \"Wi-Fi 802.11 a/b/g/n/ac/ax, dual-band, hotspot\", \"Dual SIM\": \"Single SIM (Nano-SIM and/or Electronic SIM card) or Dual SIM (Nano-SIM, dual stand-by) - for China\", \"Headphone Jack\": \"Yes\", \"Wireless Charging\": \"Yes\"}}, {\"label\": \"Battery\", \"props\": {\"Capacity\": \"Li-Ion 5190 mAh battery + Fast battery charging 18W: 50% in 30 min + USB Power Delivery 2.0 + Qi wireless charging\", \"Placement\": \"Non-removable\"}}]','[\"4 GB RAM | 64 GB ROM | Expandable Upto 1 TB\", \"16.33 cm (6.43 inch) Full HD+ Display\", \"50MP + 8MP + 2MP + 2MP | 13MP Front Camera\", \"5000 mAh Battery\", \"Qualcomm SM6225 Snapdragon 680 Processor\"]','[{\"v\":\"4GB\",\"url\":\"\"},{\"v\":\"6GB\",\"url\":\"\"},{\"v\":\"8GB\",\"url\":\"\"}]','[{\"v\":\"64GB\",\"url\":\"\"},{\"v\":\"128GB\",\"url\":\"\"}]','[{\"url\": \"https://res.cloudinary.com/rasel/image/upload/v1649322054/phone_mela/products/xiaomi-redmi-note-9-pro-global-.jpg\", \"color\": \"red\"}, {\"url\": \"https://res.cloudinary.com/rasel/image/upload/v1649322054/phone_mela/products/xiaomi-redmi-note-9-pro-global-.jpg\", \"color\": \"Dimond\"}]');
/*!40000 ALTER TABLE `product_specifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06 20:39:30
