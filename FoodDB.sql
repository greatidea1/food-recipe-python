/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.18-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: 130.211.120.166    Database: FoodDB
-- ------------------------------------------------------
-- Server version	8.0.31-google

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Recipes`
--

DROP TABLE IF EXISTS `Recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recipes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `food_item` varchar(100) NOT NULL,
  `recipe` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipes`
--

LOCK TABLES `Recipes` WRITE;
/*!40000 ALTER TABLE `Recipes` DISABLE KEYS */;
INSERT INTO `Recipes` VALUES (1,'Biryani','A fragrant rice dish made with basmati rice, meat (chicken, mutton), yogurt, onions, and a variety of spices such as cumin, coriander, and saffron.'),(2,'Paneer Butter Masala','A rich curry made with paneer cubes, butter, tomatoes, cream, and a blend of garam masala, fenugreek, and kasuri methi.'),(3,'Aloo Gobi','A vegetarian dish made with potatoes, cauliflower, turmeric, cumin seeds, and various spices like coriander and garam masala.'),(4,'Chole Bhature','A combination of spicy chickpea curry (chole) and fried bread (bhature), usually served with onions, cucumber, and lemon.'),(5,'Masoor Dal','A simple red lentil soup cooked with onions, tomatoes, garlic, and cumin. Often served with rice or roti.'),(6,'Dosa','A thin, crispy crepe made from fermented rice and urad dal batter, usually served with chutneys and sambar (lentil soup).'),(7,'Samosa','Deep-fried pastry pockets filled with spiced mashed potatoes, peas, and sometimes meat, served with mint chutney or tamarind sauce.'),(8,'Pav Bhaji','A spicy vegetable mash (bhaji) served with buttered bread rolls (pav), often topped with onions, lemon, and coriander.'),(9,'Tandoori Chicken','Chicken marinated in yogurt and spices like garam masala, ginger, garlic, and turmeric, then cooked in a tandoor (clay oven).'),(10,'Butter Chicken','Tender chicken pieces cooked in a creamy tomato-based curry sauce, flavored with butter, garlic, and garam masala.'),(11,'Palak Paneer','A spinach curry with cubes of paneer cheese, cooked with spices such as cumin, coriander, and garam masala.'),(12,'Vada Pav','A Mumbai street food consisting of a spicy mashed potato fritter (vada) placed inside a pav (bread roll) and served with chutney.'),(13,'Pani Puri','Crispy puris filled with spicy tamarind water, chickpeas, potatoes, and served as a crunchy snack in a bowl of flavored water.'),(14,'Kebabs','Marinated minced meat (typically chicken or mutton) mixed with spices, skewered, and grilled until crispy and juicy.'),(15,'Rogan Josh','A traditional Kashmiri lamb curry made with a blend of aromatic spices such as cinnamon, cloves, and cardamom, cooked in yogurt and browned onions.');
/*!40000 ALTER TABLE `Recipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-12 11:52:21
