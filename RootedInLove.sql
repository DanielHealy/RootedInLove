-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: beta.rootedinlove.org    Database: Rooted_In_Love
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `Authors`
--

DROP TABLE IF EXISTS `Authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Authors` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `FormalName` varchar(45) DEFAULT NULL,
  `Biography` varchar(3000) DEFAULT NULL,
  `ImageFile` varchar(25) DEFAULT NULL,
  `GooglePlayLink` varchar(255) DEFAULT NULL,
  `URLReference` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Authors`
--

LOCK TABLES `Authors` WRITE;
/*!40000 ALTER TABLE `Authors` DISABLE KEYS */;
INSERT INTO `Authors` VALUES (1,'Dr. James Healy','Dr. Healy has been the director of the Center for Family Ministry of the Catholic Diocese of Joliet, Illinois since 1989. He has spoken on marriage in over 85 dioceses across the country and beyond. His marriage preparation and enrichment materials, most notably his CD, When the Cake is Gone: How to Be Married and Stay Engaged, and his Living Together and Christian Commitment materials, have been used in every diocese in the United States. Dr. Healy has contributed chapters to a number of books, and has written for such magazines as Family Perspectives, Catholic World, Liguorian, Marriage, and Deacon Digest. Dr. Healy was the founding president of Illinois Catholic Family Ministries, and has served as an adviser to the National Council of Catholic Bishops\' Committee on Marriage and the Family. He was honored with the 2000 Family Ministry Award by the National Association of Catholic Family Life Ministers. He and his wife Madonna have four children. ','JamesHealy.jpg','https://play.google.com/store/music/artist/Dr_James_Healy?id=Abzt6zixwuwg5rz4yxgs7fpzgc4','JamesHealy'),(2,'Dr. Maddonna Wojtaszek-Healy','Madonna Wojtaszek-Healy is the Consultant for Special Needs for the Office of Religious Education of the Diocese of Joliet. She is also the Vice President of Rooted in Love, Inc. She holds a Ph.D. in Educational Psychology from the University of Illinois. Madonna has taught at both Catholic and public universities and elementary schools. She is also an experienced catechist, a role she continues to enjoy. Her mission is to include all children, whether their needs are “special” or not, in the educational and spiritual life of the Church. A popular speaker at both the national and diocesan level, Madonna served on the Autism Task Force of the National Catholic Partnership on Disability from 2012 through its completion in 2014. She co-designed and teaches the course on ADHD for the University of Dayton’s online learning program for catechists. She also teaches the University’s online course on Autism. Madonna herself has children with special needs. She is the author of The ABC’s of A.D.H.D. for Catechists, Creating Best Outcomes for Students with ADHD, and The Day That Matthew Changed. Madonna lives in Joliet with her husband Jim. They have four adult children. ','MadonnaHealy.jpg',NULL,'MadonnaHealy');
/*!40000 ALTER TABLE `Authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categories` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `SingularName` varchar(15) DEFAULT NULL,
  `PluralName` varchar(18) DEFAULT NULL,
  `Quantity1` smallint(6) DEFAULT NULL,
  `Price1` float DEFAULT NULL,
  `Quantity2` smallint(6) DEFAULT NULL,
  `Price2` float DEFAULT NULL,
  `Quantity3` smallint(6) DEFAULT NULL,
  `Price3` float DEFAULT NULL,
  `Quantity4` smallint(6) DEFAULT NULL,
  `Price4` float DEFAULT NULL,
  `Quantity5` smallint(6) DEFAULT NULL,
  `Price5` float DEFAULT NULL,
  `Quantity6` smallint(6) DEFAULT NULL,
  `Price6` float DEFAULT NULL,
  `Ejunkie_Code` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'CD','CDs',1,15.95,2,14,10,12,25,10,50,8,500,4,1468808),(2,'Booklet','Booklets',1,2.5,50,2,500,1.5,NULL,NULL,NULL,NULL,NULL,NULL,1468880),(3,'Book','Books',1,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1532071);
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Materials`
--

DROP TABLE IF EXISTS `Materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Materials` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) DEFAULT NULL,
  `Description` varchar(2000) DEFAULT NULL,
  `ImageFile` varchar(25) DEFAULT NULL,
  `GooglePlayLink` varchar(300) DEFAULT NULL,
  `URLReference` varchar(25) DEFAULT NULL,
  `Author_ID` smallint(6) DEFAULT NULL,
  `Category_ID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_Author_ID` (`Author_ID`) USING HASH,
  KEY `IX_Category_ID` (`Category_ID`) USING HASH,
  CONSTRAINT `FK_Materials_Authors_Author_ID` FOREIGN KEY (`Author_ID`) REFERENCES `Authors` (`ID`),
  CONSTRAINT `FK_Materials_Categories_Category_ID` FOREIGN KEY (`Category_ID`) REFERENCES `Categories` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Materials`
--

LOCK TABLES `Materials` WRITE;
/*!40000 ALTER TABLE `Materials` DISABLE KEYS */;
INSERT INTO `Materials` VALUES (1,'When the Cake is Gone: How to Be Married and Stay Engaged','When the Cake is Gone is based on the \"Back to Back, Face to Face and Shoulder to Shoulder\" (corresponding to the three vows of Christian marriages) model of marriage enrichment created by Dr. Healy. Over 100,000 copies have been purchased. Dioceses and parishes frequently give the CD to all the engaged couples who go through their programs.','Cake.jpg','https://play.google.com/store/music/album/Dr_James_Healy_When_the_Cake_is_Gone_How_to_Be_Mar?id=Bxkcjpnq65a27t23r5jx72q7kpq','Cake',1,1),(2,'Cuando El Pastel se Acaba: Cómo casarse y Mantenerse Casado','When the Cake is Gone is based on the \"Back to Back, Face to Face and Shoulder to Shoulder\" (corresponding to the three vows of Christian marriages) model of marriage enrichment created by Dr. Healy. Over 100,000 copies have bee purchased. Dioceses and parishes frequently give the CD to all the engaged couples who go through their programs.','Pastel.jpg','https://play.google.com/store/music/album/Dr_James_Healy_Cuando_El_Pastel_se_Acaba_C%C3%B3mo_casa?id=B2mztvvsrmshe7v3teep6tpjqfy','Pastel',1,1),(3,'Making Happiness a Habit: 4 Steps to a More Joyful Marriage','Happiness in marriage comes not so much from the \"once ina a lifetime\" events, wonderful as they are, but but by the things we do over and over again. Listen to Jim Healy talk about these four \"habits of the heart\" that lead to joy and fullfillment. They are firmly grounded in our faith, but social science research has also suggested their importance for human happiness.','Happiness.jpg','https://play.google.com/store/music/album/Dr_James_Healy_Making_Happiness_a_Habit_Four_Steps?id=Bixa4oyzzdt3lqxqhn3pvtvkyx4','Happiness',1,1),(4,'Living Together and Christian Commitment: A Reflection for Engaged Couples Who are Living Together','Couples who are living together and who approach the Church for marriage can present a prudent pastoral minister with some challenging issues. Reflecting on the social sciences, Church teaching and pastoral experience, Dr. Healy presents a way of working with these couples that is both welcoming and honest.','Together.jpg',NULL,'Together',1,2),(5,'Vivir Juntos y el Comprimiso Cristiano: Una Reflexion Para Prometidoes Que Viven Juntos','Couples who are living together and who approach the Church for marriage can present a prudent pastoral minister with some challenging issues. Reflecting on the social sciences, Church teaching and pastoral experience, Dr. Healy presents a way of working with these couples that is both welcoming and honest.','Juntos.jpg',NULL,'Juntos',1,2),(6,'Spirituality and Religion in Your Marriage: A Reflective Process for Engaged Couples','This booklet contains a short 20 item inventory that places the individual in one of four categories: 1) high in both Spirituality and Religion, 2) high in Spirituality and low in Religion, 3) low in both Religion and Spirituality, and 4) high in Religion and low in Spirituality. It affirms strengths and then encourages growth in both the individual and the couple towards category number 1','Spirituality.jpg',NULL,'Spirituality',1,2),(7,'Espiritualidad y Religión en el Matrimonio: Un Proceso De Reflexion Para Parejas Comprometidas','This booklet contains a short 20 item inventory that places the individual in one of four categories: 1) high in both Spirituality and Religion, 2) high in Spirituality and low in Religion, 3) low in both Religion and Spirituality, and 4) high in Religion and low in Spirituality. It affirms strengths and then encourages growth in both the individual and the couple towards category number 1','Espiritualidad.jpg',NULL,'Espiritualidad',1,2),(8,'The ABC\'s of A.D.D. for Catechists','This booklet contains helpful insights and ideas to assist catechists in understanding Attention Deficit Disorder, so that they may be better able to nurture the faith and spiritual development of children afflicted with the condition','ABCs.jpg',NULL,'ABCs',2,2),(9,'The Day that Matthew Changed','Everything goes wrong for Matthew, but one day he discovers a way to change his world.','Matthew.jpg',NULL,'Matthew',2,3);
/*!40000 ALTER TABLE `Materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Presentations`
--

DROP TABLE IF EXISTS `Presentations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Presentations` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) DEFAULT NULL,
  `Description` varchar(3000) DEFAULT NULL,
  `PDF` varchar(25) DEFAULT NULL,
  `URLReference` varchar(25) DEFAULT NULL,
  `Author_ID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_Author_ID` (`Author_ID`) USING HASH,
  CONSTRAINT `FK_Presentations_Authors_Author_ID` FOREIGN KEY (`Author_ID`) REFERENCES `Authors` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Presentations`
--

LOCK TABLES `Presentations` WRITE;
/*!40000 ALTER TABLE `Presentations` DISABLE KEYS */;
INSERT INTO `Presentations` VALUES (1,'Making Happiness a Habit','Happiness in marriage comes, not so much from the “once in a lifetime” events, wonderful as they are, but by the things we do over and over again. What are these “habits of the heart” that lead to joy and fulfillment? They are firmly grounded in our Catholic faith, but social science research has also suggested their importance for human happiness','HappinessAHabit.pdf','Happiness',1),(2,'To Welcome and to Witness','In this daylong workshop, Dr. Healy responds to foundational issues regarding marriage preparation. What can we accomplish at the time of marriage preparation? What do we know about marriage preparation? What should our attitude be towards the engaged couple? In addition to the foundational issues, Dr. Healy will thoroughly address the two topics which most trouble many of those involved in marriage preparation ministry: working with couples who are living together, and working with couples who are “spiritual but not religious.”','ToWelcomeAndToWitness.pdf','Witness',1),(3,'How to Be Married and Stay Engaged','It takes three types of intimacy for a marriage to thrive. Happily, these are also the basis for our three Christian marriage vows. In down to earth and sometimes humorous ways, Dr. Healy will help couples discover again what it takes to live out these vows fully and joyfully. Designed for all ages and stages of marriage! ','HowToStayEngaged.pdf','Married',1),(4,'God Called Me to Dance, Even if I\'m Out of Step','Full inclusion of people with disabilities in the life of the Church benefits us all. Children with autism spectrum disorders can pose behavioral problems in classroom and catechetical settings. Dr. Wojtaszek-Healy will share insights and strategies for evangelizing these children and their families.',NULL,'Dance',2),(5,'Everyone’s Called to God’s Table, Even the Ones Who Can’t Sit Still in Their Seats','An understanding of Attention Deficit Disorder (ADD) and the children diagnosed with this condition will help teachers and catechists evangelize them and their families more effectively. Dr. Wojtaszek-Healy will share insights to manage behaviors and enjoy the gifts these children have.',NULL,'Table',2);
/*!40000 ALTER TABLE `Presentations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-21 18:48:55
