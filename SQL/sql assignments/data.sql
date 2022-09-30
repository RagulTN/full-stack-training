-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: day3
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `emp_account`
--

DROP TABLE IF EXISTS `emp_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_account` (
  `acc_no` int NOT NULL,
  `acc_type` varchar(45) DEFAULT NULL,
  `acc_opendate` date DEFAULT NULL,
  PRIMARY KEY (`acc_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_account`
--

LOCK TABLES `emp_account` WRITE;
/*!40000 ALTER TABLE `emp_account` DISABLE KEYS */;
INSERT INTO `emp_account` VALUES (100,'regular','2022-04-25'),(101,'joint','2022-04-25'),(102,'regular','2022-04-25'),(103,'joint','2022-04-25'),(104,'regular','2022-04-25');
/*!40000 ALTER TABLE `emp_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_details` (
  `employee_id` int NOT NULL,
  `employee_name` varchar(45) NOT NULL,
  `job_name` varchar(45) NOT NULL,
  `salary` int NOT NULL,
  `department_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `commission` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `department_id_idx` (`department_id`),
  CONSTRAINT `department_id` FOREIGN KEY (`department_id`) REFERENCES `pms_department_details` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details`
--

LOCK TABLES `employee_details` WRITE;
/*!40000 ALTER TABLE `employee_details` DISABLE KEYS */;
INSERT INTO `employee_details` VALUES (7711,'rohit','manager',80000,10,2002,NULL),(7712,'sanjay','manager',25000,20,2001,NULL),(7713,'kumar','manager',28000,10,2001,NULL),(7722,'elon','assistant manager',75000,NULL,2002,NULL),(7733,'john','assistant manager',70000,NULL,2001,NULL);
/*!40000 ALTER TABLE `employee_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lms_book_issue`
--

DROP TABLE IF EXISTS `lms_book_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_book_issue` (
  `book_issue_no` int NOT NULL,
  `book_title` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `member_id` varchar(45) DEFAULT NULL,
  `book_code` int DEFAULT NULL,
  `date_issue` date DEFAULT NULL,
  `date_return` date NOT NULL,
  `date_returned` date DEFAULT NULL,
  `fine_range` int DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`book_issue_no`,`date_return`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_book_issue`
--

LOCK TABLES `lms_book_issue` WRITE;
/*!40000 ALTER TABLE `lms_book_issue` DISABLE KEYS */;
INSERT INTO `lms_book_issue` VALUES (10,'sun is a star','development','LM50',1100,'2022-04-09','2022-04-10','2022-04-11',2,'john',100),(11,'show your work','development','LM51',1101,'2022-04-10','2022-04-12','2022-04-13',3,'austin',200),(12,'harry potter','fantasy','LM52',1102,'2022-04-12','2022-04-14','2022-04-16',4,'jk',300),(13,'ice age','story','LM53',1103,'2022-04-15','2022-04-17','2022-04-20',5,'sanjay',200);
/*!40000 ALTER TABLE `lms_book_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lms_fine_details`
--

DROP TABLE IF EXISTS `lms_fine_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_fine_details` (
  `fine_range` int NOT NULL,
  `fine_amount` int DEFAULT NULL,
  PRIMARY KEY (`fine_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_fine_details`
--

LOCK TABLES `lms_fine_details` WRITE;
/*!40000 ALTER TABLE `lms_fine_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `lms_fine_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lms_members`
--

DROP TABLE IF EXISTS `lms_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_members` (
  `member_id` int NOT NULL,
  `member_name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `date_register` varchar(45) DEFAULT NULL,
  `date_expire` date DEFAULT NULL,
  `membership_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_members`
--

LOCK TABLES `lms_members` WRITE;
/*!40000 ALTER TABLE `lms_members` DISABLE KEYS */;
INSERT INTO `lms_members` VALUES (1,'john','chennai','2022-09-08','2022-12-12','active'),(2,'elon','coimbatore','2022-09-07','2022-12-12','temporary'),(3,'sanjay','madurai','2022-09-08','2022-12-12','active'),(4,'varun','nagercoil','2022-08-08','2022-12-12','temporary');
/*!40000 ALTER TABLE `lms_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lms_supplier_details`
--

DROP TABLE IF EXISTS `lms_supplier_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_supplier_details` (
  `supplier_id` int NOT NULL,
  `supplier_name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_supplier_details`
--

LOCK TABLES `lms_supplier_details` WRITE;
/*!40000 ALTER TABLE `lms_supplier_details` DISABLE KEYS */;
INSERT INTO `lms_supplier_details` VALUES (11,'varun',NULL,'123456789','varun@gmail.com'),(12,'elon',NULL,'NULL','elon@gmail.com'),(13,'pradeep',NULL,'123456798','pradeep@gmail.com'),(14,'sanjay',NULL,'123456798','sanjay@gmail.com'),(15,'nick',NULL,NULL,'nick@gmail.com'),(16,'john',NULL,'123456789',NULL);
/*!40000 ALTER TABLE `lms_supplier_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_book_details`
--

DROP TABLE IF EXISTS `pms_book_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_book_details` (
  `book_code` int NOT NULL,
  `book_title` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `publication` varchar(45) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `book_edition` int DEFAULT NULL,
  `price_num` int DEFAULT NULL,
  `rack_num` int DEFAULT NULL,
  `date_arrival` date DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `supplier_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`book_code`),
  KEY `supplier_id_idx` (`supplier_id`),
  CONSTRAINT `supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `lms_supplier_details` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_book_details`
--

LOCK TABLES `pms_book_details` WRITE;
/*!40000 ALTER TABLE `pms_book_details` DISABLE KEYS */;
INSERT INTO `pms_book_details` VALUES (1001,'sun is a star','development','john','star publications','2020-09-09',2,200,15,'2022-09-08',12,'elon musk'),(1002,'show your work','development','austin','sun publications','2020-06-04',5,150,12,'2022-09-08',13,'pradeep kumar'),(1003,'harry potter','story','rowling','halow sons','2020-09-07',5,800,14,'2022-09-08',11,'varun ABC'),(1004,'ice age','fantasy','pk','prentice hall','1999-08-16',3,120,13,'2022-04-13',14,'sanjay'),(1005,'java','development','raman','prentice hall','1999-08-16',2,120,15,'2022-08-16',15,'john');
/*!40000 ALTER TABLE `pms_book_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_department_details`
--

DROP TABLE IF EXISTS `pms_department_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_department_details` (
  `department_id` int NOT NULL,
  `department_name` varchar(45) DEFAULT NULL,
  `department_location` varchar(45) DEFAULT NULL,
  `department_extension` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_department_details`
--

LOCK TABLES `pms_department_details` WRITE;
/*!40000 ALTER TABLE `pms_department_details` DISABLE KEYS */;
INSERT INTO `pms_department_details` VALUES (10,'dev','chennai','ch'),(20,'design','chennai','ch'),(30,'team leader','nagercoil','ngl'),(40,'backend','USA','us');
/*!40000 ALTER TABLE `pms_department_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_employee_details`
--

DROP TABLE IF EXISTS `pms_employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_employee_details` (
  `emp_id` int NOT NULL,
  `emp_name` varchar(45) DEFAULT NULL,
  `department_id` varchar(45) DEFAULT NULL,
  `manager_code` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `bonus` int DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `commision` int DEFAULT NULL,
  `job_title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_employee_details`
--

LOCK TABLES `pms_employee_details` WRITE;
/*!40000 ALTER TABLE `pms_employee_details` DISABLE KEYS */;
INSERT INTO `pms_employee_details` VALUES (111,'ragul','10',7711,3000,'2022-09-08',1000,'regular','dev',NULL,'dev'),(112,'elon','20',7711,2000,'2022-09-08',2000,'manager','dev',NULL,'designer'),(113,'sanjay','20',7722,1000,'2022-09-08',2000,'regular','dev',NULL,'dev'),(114,'ram','20',7733,3000,'2022-09-08',0,'contract','design',NULL,'manager'),(115,'sita','10',7722,1000,'2022-09-08',2000,'manager','dev',NULL,'designer'),(116,'john','30',7733,5000,'2022-09-08',0,'contract','design',NULL,'dev'),(117,'sid','10',7711,5000,'2022-09-08',3000,'regular','team leader',NULL,NULL),(118,'raja','20',7733,10000,'2022-09-08',3000,'contract','team leader',NULL,NULL),(119,'kanan','10',NULL,1000,'2022-09-08',3000,'regular',NULL,NULL,NULL);
/*!40000 ALTER TABLE `pms_employee_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_managers`
--

DROP TABLE IF EXISTS `pms_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_managers` (
  `manager_id` int NOT NULL,
  `manager_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_managers`
--

LOCK TABLES `pms_managers` WRITE;
/*!40000 ALTER TABLE `pms_managers` DISABLE KEYS */;
INSERT INTO `pms_managers` VALUES (7711,'rohan'),(7722,'ragul'),(7733,'raj');
/*!40000 ALTER TABLE `pms_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_manufacturing`
--

DROP TABLE IF EXISTS `pms_manufacturing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_manufacturing` (
  `manufacture_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `availbility` varchar(45) DEFAULT NULL,
  `prod_manu_date` date DEFAULT NULL,
  `prod_expiry_date` date DEFAULT NULL,
  PRIMARY KEY (`manufacture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_manufacturing`
--

LOCK TABLES `pms_manufacturing` WRITE;
/*!40000 ALTER TABLE `pms_manufacturing` DISABLE KEYS */;
INSERT INTO `pms_manufacturing` VALUES (100,111,1111,10,'yes','2009-09-14','2010-09-14'),(101,111,1112,15,'yes','2022-08-14','2023-10-14'),(102,112,1113,20,'yes','2022-10-14','2023-12-14'),(103,112,1114,23,'yes','2022-09-14','2023-12-14'),(104,113,1115,16,'yes','2022-09-14','2023-12-14');
/*!40000 ALTER TABLE `pms_manufacturing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product`
--

DROP TABLE IF EXISTS `pms_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_product` (
  `product_id` int NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `department_id` int NOT NULL,
  `department_name` varchar(45) DEFAULT NULL,
  `cost_price` int DEFAULT NULL,
  `selling_price` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product`
--

LOCK TABLES `pms_product` WRITE;
/*!40000 ALTER TABLE `pms_product` DISABLE KEYS */;
INSERT INTO `pms_product` VALUES (111,'dairy milk',10,NULL,10,15),(112,'fresh milk',20,NULL,10,15),(113,'cow milk',30,NULL,10,16),(114,'chocolate',40,NULL,10,18),(115,'fruits',50,NULL,10,19);
/*!40000 ALTER TABLE `pms_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_unit`
--

DROP TABLE IF EXISTS `pms_product_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_product_unit` (
  `product_id` int NOT NULL,
  `unit_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_unit`
--

LOCK TABLES `pms_product_unit` WRITE;
/*!40000 ALTER TABLE `pms_product_unit` DISABLE KEYS */;
INSERT INTO `pms_product_unit` VALUES (111,1111),(112,1112),(113,1113),(114,1114);
/*!40000 ALTER TABLE `pms_product_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_sales`
--

DROP TABLE IF EXISTS `pms_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_sales` (
  `sales_id` int NOT NULL,
  `sales_region` varchar(45) DEFAULT NULL,
  `sales_person` varchar(45) DEFAULT NULL,
  `sales_amt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_sales`
--

LOCK TABLES `pms_sales` WRITE;
/*!40000 ALTER TABLE `pms_sales` DISABLE KEYS */;
INSERT INTO `pms_sales` VALUES (1201,'nagercoil','john','10000'),(1202,'chennai','sanjay','20000'),(1203,'nagercoil','john','10000'),(1204,'nagercoil','john','10000');
/*!40000 ALTER TABLE `pms_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_unit_details`
--

DROP TABLE IF EXISTS `pms_unit_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_unit_details` (
  `unit_id` int NOT NULL,
  `unit_name` varchar(45) NOT NULL,
  `piece_weight` int NOT NULL,
  `total_pieces` int NOT NULL,
  `unit_weight` int NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_unit_details`
--

LOCK TABLES `pms_unit_details` WRITE;
/*!40000 ALTER TABLE `pms_unit_details` DISABLE KEYS */;
INSERT INTO `pms_unit_details` VALUES (1111,'Milk',10,12,5),(1112,'chocolates',15,14,5),(1113,'fruits',30,15,4),(1114,'can juices',15,10,5),(1115,'snacks',28,24,9);
/*!40000 ALTER TABLE `pms_unit_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'day3'
--

--
-- Dumping routines for database 'day3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-29 15:17:52
