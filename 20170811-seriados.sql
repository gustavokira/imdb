CREATE DATABASE  IF NOT EXISTS `seriados` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `seriados`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: localhost    Database: seriados
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `atores`
--

DROP TABLE IF EXISTS `atores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atores` (
  `id` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `nascimento` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atores`
--

LOCK TABLES `atores` WRITE;
/*!40000 ALTER TABLE `atores` DISABLE KEYS */;
INSERT INTO `atores` VALUES ('',NULL,NULL),('nm0000550','Kate Mulgrew',1955),('nm0001131','Patrick Dempsey',1966),('nm0001337','Katherine Heigl',1978),('nm0001667','Jonathan Rhys Meyers',1977),('nm0003728','Owen Roe',1959),('nm0004800','Jessica Capshaw ',1976),('nm0005393','Kelly Rutherford',1968),('nm0006610','Donal Logue',1966),('nm0007893','Amanda Abbington',1974),('nm0013749','Rubén Aguirre ',1934),('nm0048379','David Aaron Baker',1963),('nm0089937','Lothaire Bluteau',1957),('nm0146915','Tom Cavanagh',1927),('nm0150362','Justin Chambers',1970),('nm0186505','Bryan Cranston',1956),('nm0199312','Eric Dane  ',1972),('nm0206257','Rosario Dawson',1979),('nm0209553','María Antonieta de las Nieves',1950),('nm0216466','Lea DeLaria',1958),('nm0237711','Sarah Drew  ',1980),('nm0273390','Angelines Fernández',1922),('nm0291918','Peter Franzén',1971),('nm0293509','Martin Freeman',1971),('nm0309693','Mark Gatiss',1966),('nm0319698','Jessalyn Gilsig',1971),('nm0334159','Kat Grahan',1989),('nm0348152','Anna Gunn',1968),('nm0350866','Horacio Gómez Bolaños',1930),('nm0350867','Roberto Gómez Bolaños',1929),('nm0363669','Michael Harney',1956),('nm0387395','Wai Ching Ho',1943),('nm0442559','John Kavanagh',1970),('nm0508139','Selenis Leyva',1972),('nm0515116','Blake Lively',1987),('nm0543383','Taryn Manning',1978),('nm0552509','Jesse L. Martin',1950),('nm0571727','Kevin McKidd',1973),('nm0583746','Florinda Meza',1949),('nm0597410','Taylor Momsen',1993),('nm0606487','Dean Norris',1963),('nm0644897','Sandra Oh',1971),('nm0666739','Aaron Paul',1979),('nm0681782','James Pickens Jr.',1954),('nm0690186','Ellen Pompeo',1969),('nm0701747','Jasper Pääkkönen',1980),('nm0708381','Sara Ramirez',1975),('nm0730070','Linus Roache',1964),('nm0750658','Deborah Rush',1954),('nm0762191','	Nick Sandow',1966),('nm0778831','Andrew Scott',1976),('nm0786136','Matthew Settle',1969),('nm0803890','Gustaf Skarsgård',1980),('nm0813812','Ian Somerhalder',1978),('nm0832227','Yael Stone',1985),('nm0835939','Una Stubbs',1937),('nm0883850','Ramón Valdés',1923),('nm0897727','Carlos Villagrán',1944),('nm0900232','Edgar Vivar',1944),('nm0913587','Paul Wesley',1982),('nm0920992','David Wenham',1965),('nm0930898','Jesse Williams ',1981),('nm0933156','Chandra Wilson',1969),('nm0935395','Katheryn Winnick',1977),('nm1015262','Leighton Meester',1986),('nm1130496','Alysia Reiner',1970),('nm1209545','Laverne Cox',1972),('nm1212722','Benedict Cumberbatch',1976),('nm1221906','Jessica Szohr',1985),('nm1263939','Danielle Panabaker',1959),('nm1269733','Connor Paolo',1990),('nm1292880','Seong Ji',1977),('nm1336827','Betsy Brandt',1973),('nm1364281','Morgane Polanski',1993),('nm1379938','Travis Fimmel',1979),('nm1451415','Alyssa Sutherland',1982),('nm1573253','Alexander Ludwig',1992),('nm1641140','Clive Standen',1981),('nm1670601','Tom Pelphrey',1982),('nm1813534','Zach Roering',1985),('nm1888211','Jessica Stroup',1986),('nm1985974','Michael Chernus',1977),('nm2003700','Chace Crawford',1985),('nm20046112','Penn Begley',1986),('nm2067953','Ed Westwick',1987),('nm2127038','Candice King',1987),('nm2279940','Taylor Shilling',1984),('nm2351500','Zuzanna Szadkowski',1978),('nm2356851','Jordan Patrick Smith',1989),('nm2400045','Nina Dobrev',1989),('nm2499064','Uzo Aduba',1981),('nm2542123','Maude Hirst',1993),('nm2652716','Grant Gustin',1975),('nm2666409','RJ Mitte',1992),('nm2765384','Candice Patton',1958),('nm3223453','Marco Ilsø',1994),('nm3262524','Jennie Jacques',1989),('nm3338776','Amy Bailey',1975),('nm3343883','Hee-jung Kim',1992),('nm3585662','Il-Woo Kim',1963),('nm3645691','Finn Jones',1988),('nm3674429','Jeong-eum Hwang',1985),('nm3725055','Jessica Henwick',1992),('nm3754140','Won-young Choi',1976),('nm3904633','	Tracee Chimo',0000),('nm3974805','Moe Dunford',1987),('nm4148126','Samira Wiley',0000),('nm4165762','Elinor Crawley',1991),('nm4466085','Ben Robson',1984),('nm4491241','George Blagden',1989),('nm4583876','Carlos Valdes',1965),('nm4739140','Josefin Asplund',1991),('nm4745601','Dascha Polanco',1982),('nm5050979','Nathan O\'Toole',1998),('nm5335029','Danielle Brooks',1989),('nm5405979','Alex Høgh Andersen',1994),('nm5481344','Edvin Endre',1994),('nm5495383','Barrett Doss',0000),('nm5516142','Yoo-Ri Kim',1984),('nm6124994','Seo-Joon Park',1988),('nm6354997','Georgia Hirst',1994);
/*!40000 ALTER TABLE `atores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diretores`
--

DROP TABLE IF EXISTS `diretores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diretores` (
  `id` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `nascimento` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diretores`
--

LOCK TABLES `diretores` WRITE;
/*!40000 ALTER TABLE `diretores` DISABLE KEYS */;
INSERT INTO `diretores` VALUES ('nm0000149','Jodie Foster',1962),('nm0000530','Andrew McCarthy ',1962),('nm0003802','Uta Briesewitz',0000),('nm0008971','Phil Abraham',0000),('nm0075528','Greg Berlanti',1943),('nm0118420','Scott Buck',NULL),('nm0236173','Dermott Downs',1932),('nm0317328','Coky Giedroyc',1962),('nm0319213','Vince Gilligan',NULL),('nm0386694','Michael Hirst',NULL),('nm0424315','Geoff Johns',1947),('nm0538744','Constantine Makris',0000),('nm0638354','David Nutter',1960),('nm0671992','	Matthew Penn',0000),('nm0686184','Mark Piznarski',0000),('nm0687096','Julie Plec',NULL),('nm0722274','Shonda Rhimes',1970),('nm0872841','Michael Trim ',0000),('nm0935732','Glen Winter',0000),('nm1132610','Andrew Kreisberg',1944),('nm2032586','Kim Jin-man',NULL);
/*!40000 ALTER TABLE `diretores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodios`
--

DROP TABLE IF EXISTS `episodios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `episodios` (
  `id` varchar(20) NOT NULL,
  `titulo` varchar(500) DEFAULT NULL,
  `estreia` date DEFAULT NULL,
  `temporada` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  `seriados_id` varchar(20) NOT NULL,
  `diretores_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`seriados_id`,`diretores_id`),
  KEY `fk_episodios_seriados1_idx` (`seriados_id`),
  KEY `fk_episodios_diretores1_idx` (`diretores_id`),
  CONSTRAINT `fk_episodios_diretores1` FOREIGN KEY (`diretores_id`) REFERENCES `diretores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_episodios_seriados1` FOREIGN KEY (`seriados_id`) REFERENCES `seriados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodios`
--

LOCK TABLES `episodios` WRITE;
/*!40000 ALTER TABLE `episodios` DISABLE KEYS */;
INSERT INTO `episodios` VALUES ('1058814v','Episódio 1','2015-07-01',1,2015,'22811c','nm2032586'),('1058815v','Episódio 2','2015-08-01',1,2015,'22811c','nm2032586'),('1058816v','Episódio 3','2015-01-14',1,2015,'22811c','nm2032586'),('1058817v','Episódio 4','2015-01-15',1,2015,'22811c','nm2032586'),('1058818v','Episódio 5','2015-01-21',1,2015,'22811c','nm2032586'),('tt0592902','A Hard Day\'s Night','2005-07-07',1,2005,'tt0413573','nm0722274'),('tt0592909','If Tomorrow Never Comes ','2005-07-07',1,2005,'tt0413573','nm0722274'),('tt0592915','No Man\'s Land ','2005-07-07',1,2005,'tt0413573','nm0722274'),('tt0592918','Save Me ','2005-07-07',1,2005,'tt0413573','nm0722274'),('tt0592919','Shake Your Groove Thing','2005-07-07',1,2005,'tt0413573','nm0722274'),('tt0592923','The First Cut Is the Deepest   ','2005-07-07',1,2005,'tt0413573','nm0722274'),('tt0592924','The Self-Destruct Button','2005-07-07',1,2005,'tt0413573','nm0722274'),('tt0592925','Who\'s Zoomin\' Who? ','2005-07-07',1,2005,'tt0413573','nm0722274'),('tt0592926','Winning a Battle, Losing the War ','2005-07-07',1,2005,'tt0413573','nm0722274'),('tt0959621','Pilot','2008-01-30',1,2008,'tt0903747','nm0319213'),('tt1036062','Pilot ','2007-09-19',1,2007,'tt0397442','nm0686184'),('tt1036067','The Wild Brunch','2007-09-26',1,2007,'tt0397442','nm0686184'),('tt1036068','Poison Ivy','2007-10-03',1,2007,'tt0397442','nm0686184'),('tt1036069','Bad News Blair ','2007-10-10',1,2007,'tt0397442','nm0686184'),('tt1036070','Dare Devil','2007-10-17',1,2007,'tt0397442','nm0686184'),('tt1664529','The Blind Banker','2010-08-01',1,2010,'tt1475582','nm0317328'),('tt1664530','The Great Game','2010-08-08',1,2010,'tt1475582','nm0317328'),('tt1665071','A Study in Pink ','2010-07-25',1,2010,'tt1475582','nm0317328'),('tt1815240','Unaired Pilot','2011-06-05',1,2011,'tt1475582','nm0317328'),('tt1942612','A Scandal in Belgravia','2012-01-01',2,2012,'tt1475582','nm0317328'),('tt1942613','The Hounds of Baskerville','2012-01-08',2,2012,'tt1475582','nm0317328'),('tt1942614','The Reichenbach Fall','2012-01-15',2,2012,'tt1475582','nm0317328'),('tt3187092','Pilot','2014-10-07',1,2014,'tt3107288','nm0638354'),('tt3819518','Fatest Man Alive','2014-10-14',1,2014,'tt3107288','nm0638354'),('tt3826166','Things You Can\'t Outrun','2014-10-21',1,2014,'tt3107288','nm0638354'),('tt3881958','Going Rogue','2014-10-28',1,2014,'tt3107288','nm0935732'),('tt3887830','Plastique','2014-11-11',1,2014,'tt3107288','nm0236173'),('tt4174026','A neve abre caminho','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174028','Das Sombras, Falcão Alça Voo','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174030','Soco do Trovão, Estrondo de Canhão','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174066','Palma dos Oito Trigramas','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174070','Sob as Folhas, Colher Lótus','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174072','Imortal Emerge da Caverna','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174074','Derrubar Árvore e Suas Raízes','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174078','A Bênção de Muitas Fraturas','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174080','A Senhora de Todas as Agonias','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174082','Tigre Negro Rouba Coração','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174084','Devolver o Cavalo ao Estábulo','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174090','A Cabeça da Serpente','2017-03-17',1,2017,'tt3322310','nm0118420'),('tt4174096','Dragão Brinca Com Fogo','2017-03-17',1,2017,'tt3322310','nm0118420');
/*!40000 ALTER TABLE `episodios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodios_tem_personagens`
--

DROP TABLE IF EXISTS `episodios_tem_personagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `episodios_tem_personagens` (
  `episodios_id` varchar(20) NOT NULL,
  `personagens_id` varchar(20) NOT NULL,
  PRIMARY KEY (`episodios_id`,`personagens_id`),
  KEY `fk_episodios_has_personagens_personagens1_idx` (`personagens_id`),
  KEY `fk_episodios_has_personagens_episodios1_idx` (`episodios_id`),
  CONSTRAINT `fk_episodios_has_personagens_episodios1` FOREIGN KEY (`episodios_id`) REFERENCES `episodios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_episodios_has_personagens_personagens1` FOREIGN KEY (`personagens_id`) REFERENCES `personagens` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodios_tem_personagens`
--

LOCK TABLES `episodios_tem_personagens` WRITE;
/*!40000 ALTER TABLE `episodios_tem_personagens` DISABLE KEYS */;
INSERT INTO `episodios_tem_personagens` VALUES ('1058814v','155912pr'),('1058815v','155912pr'),('1058816v','155912pr'),('1058817v','155912pr'),('1058818v','155912pr'),('tt0592902','ch0021665'),('tt0592915','ch0021665'),('tt0592923','ch0021665'),('tt0592926','ch0021665'),('tt0592902','ch0021666'),('tt0592915','ch0021666'),('tt0592923','ch0021666'),('tt0592926','ch0021666'),('tt0592902','ch0021668'),('tt0592915','ch0021668'),('tt0592923','ch0021668'),('tt0592926','ch0021668'),('tt0592902','ch0021671'),('tt0592915','ch0021671'),('tt0592923','ch0021671'),('tt0592926','ch0021671'),('tt0592902','ch0021673'),('tt0592915','ch0021673'),('tt0592923','ch0021673'),('tt0592926','ch0021673'),('tt0592902','ch0021676'),('tt0592915','ch0021676'),('tt0592923','ch0021676'),('tt0592926','ch0021676'),('tt0592902','ch0021685'),('tt0592915','ch0021685'),('tt0592923','ch0021685'),('tt0592926','ch0021685'),('tt1036062','ch0026619'),('tt1036067','ch0026619'),('tt1036068','ch0026619'),('tt1036062','ch0026620'),('tt1036067','ch0026620'),('tt1036068','ch0026620'),('tt1036069','ch0026620'),('tt1036062','ch0026622'),('tt1036067','ch0026622'),('tt1036068','ch0026622'),('tt1036068','ch0026623'),('tt1036062','ch0026624'),('tt1036067','ch0026624'),('tt1036068','ch0026624'),('tt1036069','ch0026624'),('tt1036062','ch0026625'),('tt1036067','ch0026625'),('tt1036068','ch0026625'),('tt1036069','ch0026625'),('tt1664529','ch0026631'),('tt1664530','ch0026631'),('tt1665071','ch0026631'),('tt1815240','ch0026631'),('tt1942612','ch0026631'),('tt1942613','ch0026631'),('tt1942614','ch0026631'),('tt1664529','ch0026702'),('tt1664530','ch0026702'),('tt1665071','ch0026702'),('tt1815240','ch0026702'),('tt1942612','ch0026702'),('tt1942613','ch0026702'),('tt1942614','ch0026702'),('tt1664530','ch0027269'),('tt1942612','ch0027269'),('tt1942613','ch0027269'),('tt1942614','ch0027269'),('tt3187092','ch0028488'),('tt3819518','ch0028488'),('tt3826166','ch0028488'),('tt3881958','ch0028488'),('tt3887830','ch0028488'),('tt1664529','ch0033649'),('tt1664530','ch0033649'),('tt1665071','ch0033649'),('tt1815240','ch0033649'),('tt1942612','ch0033649'),('tt1942613','ch0033649'),('tt1942614','ch0033649'),('tt1942612','ch0036861'),('tt1942613','ch0036861'),('tt1942614','ch0036861'),('tt3187092','ch0057789'),('tt3819518','ch0057789'),('tt3826166','ch0057789'),('tt3881958','ch0057789'),('tt3887830','ch0057789'),('tt0959621','ch0074133'),('tt0959621','ch0074134'),('tt0959621','ch0096616'),('tt0959621','ch0096617'),('tt0959621','ch0119943'),('tt0959621','ch0129937'),('tt3819518','ch0412589'),('tt3826166','ch0412589'),('tt3881958','ch0412589'),('tt3887830','ch0412589'),('tt3187092','ch0419633'),('tt3819518','ch0419633'),('tt3826166','ch0419633'),('tt3881958','ch0419633'),('tt3887830','ch0419633'),('tt3187092','ch0477443'),('tt3819518','ch0477443'),('tt3826166','ch0477443'),('tt3881958','ch0477443'),('tt3887830','ch0477443'),('tt3187092','ch0477674'),('tt3819518','ch0477674'),('tt3826166','ch0477674'),('tt3881958','ch0477674'),('tt3887830','ch0477674');
/*!40000 ALTER TABLE `episodios_tem_personagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personagens`
--

DROP TABLE IF EXISTS `personagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personagens` (
  `id` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `atores_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`atores_id`),
  KEY `fk_personagens_atores1_idx` (`atores_id`),
  CONSTRAINT `fk_personagens_atores1` FOREIGN KEY (`atores_id`) REFERENCES `atores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personagens`
--

LOCK TABLES `personagens` WRITE;
/*!40000 ALTER TABLE `personagens` DISABLE KEYS */;
INSERT INTO `personagens` VALUES ('14390pr','Oh Ri-Jin','nm3674429'),('15074pr','Oh Ri-On','nm6124994'),('155911pr','Cha Do-hyun','nm1292880'),('155912pr','Shin Se Gi','nm1292880'),('155913pr','Ferry Park','nm1292880'),('155914pr','Nana','nm1292880'),('155915pr','Ahn Yo Sub','nm1292880'),('155916pr','Ahn Yo Na','nm1292880'),('155917pr','Mr. X','nm1292880'),('ch0021665','Dr. Izzie Stevens','nm0001337'),('ch0021666','Dr. Meredith Grey','nm0690186'),('ch0021668','Dr. Derek Shepherd','nm0001131'),('ch0021670','Dr. Mark Sloan','nm0199312'),('ch0021671','Dr. Cristina Yang','nm0644897'),('ch0021673','Dr. Alex Karev','nm0150362'),('ch0021676','Dr. Miranda Bailey','nm0933156'),('ch0021678','Dr. Callie Torres','nm0708381'),('ch0021685','Dr. Richard Webber','nm0681782'),('ch0026619','Serena van der Woodsen','nm0515116'),('ch0026620','Blair Waldorf','nm1015262'),('ch0026622','Dan Humphrey','nm2003700'),('ch0026623','Jenny Humphrey','nm0597410'),('ch0026624','Nate Archibald','nm20046112'),('ch0026625','Chuck Bass','nm2067953'),('ch0026631','Sherlock Holmes','nm1212722'),('ch0026702','Martin Freeman','nm0293509'),('ch0027269','James Moriarty','nm0778831'),('ch0028488','Barry Allen','nm2652716'),('ch0033649','Mrs. Hudson','nm0835939'),('ch0036861','Mycroft Holmes','nm0309693'),('ch0052366','Mary Morstan','nm0007893'),('ch0057789','Iris West','nm2765384'),('ch0074133','Walter White','nm0186505'),('ch0074134','Walter White, Jr.','nm1336827'),('ch0074134','Walter White, Jr.','nm2666409'),('ch0096616','Skyler White','nm0348152'),('ch0096617','Jesse Pinkman','nm0666739'),('ch0112566','Dr. Owen Hunt','nm0571727'),('ch0119943','Hank Schrader','nm0606487'),('ch0129937','Marie Schrader','nm1336827'),('ch0140842','Dr. Arizona Robbins','nm0004800'),('ch0155817','Stefan Salvatore','nm0913587'),('ch0160630','Elena Gilbert','nm2400045'),('ch0160631','Damon Salvatore','nm0813812'),('ch0160634','Matt Donovan','nm1813534'),('ch0160636','Bonnie Bennett','nm0334159'),('ch0162930','Caroline Forbes','nm2127038'),('ch0169549','Dr.Jackson Avery','nm0930898'),('ch0183088','Dr. April Kepner','nm0237711'),('ch0309794','Danny Rand','nm3645691'),('ch0337671','Floki ','nm0803890'),('ch0337673','Rollo ','nm1641140'),('ch0337675','Ragnar Lothbrok','nm1379938'),('ch0386081','Lagertha ','nm0935395'),('ch0386990','Bjorn ','nm1573253'),('ch0399054','Helga','nm2542123'),('ch0412589','Caitlin Snow','nm1263939'),('ch0419633','Cisco Ramon','nm4583876'),('ch0477443','Dr. Harry Wells','nm0146915'),('ch0477674','Joe West','nm0552509'),('ch0482038','Claire Temple','nm0206257'),('ch0506562','Torvi','nm6354997'),('ch0507242','Madame Gao','nm0387395'),('ch0540819','Colleen Wing','nm3725055'),('ch0540823','Ward Meachum','nm1670601'),('ch0540825','Harold Meachum','nm0920992'),('ch0540826','Joy Meachum','nm1888211'),('ch0565094','Megan','nm5495383');
/*!40000 ALTER TABLE `personagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seriados`
--

DROP TABLE IF EXISTS `seriados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seriados` (
  `id` varchar(20) NOT NULL,
  `titulo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seriados`
--

LOCK TABLES `seriados` WRITE;
/*!40000 ALTER TABLE `seriados` DISABLE KEYS */;
INSERT INTO `seriados` VALUES ('22811c','Kill Me, Heal Me'),('tt0229889','Chaves'),('tt0397442','Gossip Girl'),('tt0413573','Grey\'s Anatomy'),('tt0903747','Breaking Bad'),('tt1475582','Sherlock'),('tt2306299','Viking'),('tt2372162','Orange is the new black'),('tt3107288','The Flash'),('tt3322310','Punho de Ferro');
/*!40000 ALTER TABLE `seriados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-10 21:57:58
