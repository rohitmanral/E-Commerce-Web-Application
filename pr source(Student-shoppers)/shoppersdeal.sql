/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.88-community-nt : Database - shoppersdeal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`shoppersdeal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `shoppersdeal`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `adid` int(11) NOT NULL auto_increment,
  `emailid` varchar(30) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `landmark` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  PRIMARY KEY  (`adid`),
  KEY `userid` (`emailid`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

/*Data for the table `address` */

insert  into `address`(`adid`,`emailid`,`address1`,`address2`,`landmark`,`city`,`state`,`pincode`,`userid`,`orderid`) values (1,'shashiranjan0001@gmail.com','Kiratpur','rz=536','near shiv temple','New Delhi','Delhi','110019',0,''),(2,'dev@gmail.com','D-20','D-20','Chauki','Noida','Uttar Pradesh','11000',0,''),(3,'','','','','','selected','',0,''),(4,'shashiranjan0001@gmail.com','sds','sdfsfsd','dfdssdf`','sdfsdfsd','Bihar','211212121',0,''),(5,'','','','','','selected','',0,''),(6,'shashiranjan0001@gmail.com','Rz-324','E-20','Police Chowki','Noida','Uttar Pradesh','99101',0,''),(7,'shashiranjan0001@gmail.com','Rz-324','E-20','Police Chowki','Noida','Uttar Pradesh','99101',0,''),(8,'ravi@gmail.com','A-2','A-2','gandhi chowk','patna','Uttar Pradesh','844114',0,''),(9,'','','','','','selected','',0,''),(10,'sumeetgupta001@gmail.com','Bha-23','Bha-23','Shiv Mandir','Hajipur','Bihar','844114',0,''),(11,'palwishagupta92@gmail.com','A-2','A-2','Police Chowki','Noida','Uttar Pradesh','99101',0,''),(12,'','','','','','selected','',0,''),(13,'','','','','','selected','',0,''),(14,'palwishagupta92@gmail.com','asd','asd','asd','asd','Andaman and Nicobar Islands','212321',0,''),(15,'','','','','','selected','',0,''),(16,'','','','','','selected','',0,''),(17,'shashiranjan0001@gmail.com','A-9','A-90','A','Patna','Andhra Pradesh','122221',0,''),(18,'vishalmca.net@gmail.com','india','india','Near Meewar College','Ghaziabad','Uttar Pradesh','201012',0,''),(19,'','','','','','selected','',0,''),(20,'sptripathi11@rediffmail.com','b-47 grnoida','e-20 noida','fortis','noida','up','10001',0,''),(21,'gg@aa.vom','sss','www','22','22','333','333',0,''),(22,'gg@aa.vom','sss','www','22','22','333','333',0,''),(23,'sptripathi11@rediffmail.com','b-47 grnoida','e-20 noida','fortis','noida','Delhi','10001',0,''),(24,'dhanik_manish@rediffmail.com','aaa','a','a','a','a','a',5,'SHOPEROORD0027'),(25,'baba@gmail.com','aaaa','aa','a','a','a','a',5,'SHOPEROORD0028'),(26,'b@gmail.com','sss','s','s','s','s','s',5,'SHOPEROORD0029'),(27,'gg@aa.vom1','dff','dsf','dsfds','sdfds','sdfd','dsfds',5,'SHOPEROORD0030'),(28,'null','null','null','null','null','null','null',5,'SHOPEROORD0031'),(29,'null','null','null','null','null','null','null',2,'SHOPEROORD0032'),(30,'null','null','null','null','null','null','null',2,'SHOPEROORD0033'),(31,'gg1@aa.com','dasd','asdas','qd','dqdq','qd','qds',5,'SHOPEROORD0034'),(32,'gg1@aa.com','dasd','asdas','qd','dqdq','qd','qds',5,'SHOPEROORD0035'),(33,'sptripathi11@rediffmail.com','AA','aaa','ss','sss','s','s',5,'SHOPEROORD0036'),(34,'sptripathi11@rediffmail.com','AA','aaa','ss','sss','s','s',5,'SHOPEROORD0037'),(35,'sptripathi11@rediffmail.com','sdd','dsd','ds','dss','sdsd','sd',5,'SHOPEROORD0038'),(36,'sptripathi11@rediffmail.com','sdd','dsd','ds','dss','sdsd','sd',5,'SHOPEROORD0039'),(37,'sptripathi11@rediffmail.com','sdd','dsd','ds','dss','sdsd','sd',5,'SHOPEROORD0040'),(38,'sptripathi11@rediffmail.com','sdd','dsd','ds','dss','sdsd','sd',5,'SHOPEROORD0041'),(39,'sptripathi11@rediffmail.com','ff','dd','d','d','d','d',5,'SHOPEROORD0042'),(40,'null','null','null','null','null','null','null',5,'SHOPEROORD0043'),(41,'null','null','null','null','null','null','null',5,'SHOPEROORD0044'),(42,'null','null','null','null','null','null','null',5,'SHOPEROORD0045'),(43,'null','null','null','null','null','null','null',5,'SHOPEROORD0046'),(44,'sptripathi11@rediffmail.com','aaa','aaaa','aaa','aaa','aa','aaaa',5,'SHOPEROORD0047'),(45,'sptripathi11@rediffmail.com','aaa','aaaa','aaa','aaa','aa','aaaa',5,'SHOPEROORD0048'),(46,'sptripathi11@rediffmail.com','aaa','aaaa','aaa','aaa','aa','aaaa',5,'SHOPEROORD0049'),(47,'sptripathi11@rediffmail.com','aaa','aaaa','aaa','aaa','aa','aaaa',5,'SHOPEROORD0050'),(48,'dhanik_manish@rediffmail.com','a','a','a','a','a','a',5,'SHOPEROORD0051'),(49,'dhanik_manish@rediffmail.com','ss','ss','s','s','s','s',5,'SHOPEROORD0052'),(50,'dhanik_manish@rediffmail.com','ss','ss','s','ss','sdfd','s',5,'SHOPEROORD0053'),(51,'dhanik_manish@rediffmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0054'),(52,'sptripathi11@rediffmail.coms','s','s','s','s','sdsd','s',5,'SHOPEROORD0055'),(53,'sptripathi11@rediffmail.coma','a','a','a','a','a','a',5,'SHOPEROORD0056'),(54,'sptripathi11@rediffmail.com','aaa','a','a','a','a','a',5,'SHOPEROORD0057'),(55,'sptripathi11@rediffmail.com','aaa','a','a','a','a','a',5,'SHOPEROORD0058'),(56,'surya@apextgi.com','a','a','a','a','a','a',5,'SHOPEROORD0059'),(57,'surya@apextgi.com','a','a','a','a','a','a',5,'SHOPEROORD0060'),(58,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0061'),(59,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0062'),(60,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0063'),(61,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0064'),(62,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0065'),(63,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0066'),(64,'suryaassigen@gmail.com','s','s','s','s','s','s',5,'SHOPEROORD0067'),(65,'suryaassigen@gmail.com','s','s','s','s','s','s',5,'SHOPEROORD0068');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_name` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`admin_name`,`admin_password`) values ('admin','surya');

/*Table structure for table `contactus` */

DROP TABLE IF EXISTS `contactus`;

CREATE TABLE `contactus` (
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `company` varchar(30) NOT NULL,
  `message` varchar(100) NOT NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contactus` */

insert  into `contactus`(`name`,`email`,`phone`,`company`,`message`) values ('','','','',''),('a','a','a','a','a'),('Kumar','kumar@bhuvi@apex.com','990909090','SDAS','ASDSA\r\n'),('muzz','muzz@hts','98721','HTS','assa'),('shashi','shashiranjan0001','9582672461','Apex','Hello'),('shashi','shashiranjan0001@gmail.com','9990892461','Apex','sdsad');

/*Table structure for table `payment_detail` */

DROP TABLE IF EXISTS `payment_detail`;

CREATE TABLE `payment_detail` (
  `pay_id` int(11) NOT NULL auto_increment,
  `card_holder_name` varchar(30) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `cvv_code` varchar(6) NOT NULL,
  `month_start` varchar(10) NOT NULL,
  `year_start` varchar(10) NOT NULL,
  PRIMARY KEY  (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `payment_detail` */

insert  into `payment_detail`(`pay_id`,`card_holder_name`,`card_number`,`cvv_code`,`month_start`,`year_start`) values (1,'Shashi','1234890723147865','234567','DEC','2017'),(2,'Sumeet Gupta','1234098700772109','123456','January','2024'),(3,'Pinki Gupta','8907112346789090','098908','February','2016'),(4,'Shashi','1234890723147865','234567','DEC','2017'),(5,'aaa','1233222211119089','1212','February','2009'),(6,'Palwisha','123212343212341','122','February','2009'),(7,'Shashi','1234890723147865','234567','DEC','2017'),(8,'Shashi','1234890723147865','234567','DEC','2017'),(9,'Shashi','1234890723147865','234567','DEC','2017'),(10,'','','','January','2009'),(11,'Shashi','3233212123456578','098','February','2009'),(12,'6767676767','kkkk','777','January','2016'),(13,'ffff444','44444','333333','January','2017'),(14,'gg','dfdsf','sss','November','2025');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pcompid` int(11) NOT NULL,
  `pcid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `pimageurl` varchar(100) NOT NULL,
  `pdescription` varchar(40000) NOT NULL,
  `price` varchar(20) NOT NULL,
  `pquantity` int(11) NOT NULL,
  `pmodel` varchar(20) NOT NULL,
  `sid` int(11) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`pid`,`pcompid`,`pcid`,`pname`,`pimageurl`,`pdescription`,`price`,`pquantity`,`pmodel`,`sid`) values (1,1,1,'Samsung Galaxy Tab','images/samsungmobiles/samsung1.gif','Samsung Galaxy Tab 2 P3100-Titanium Silver, Wi-Fi, 3G, 16 GB','19000',3,'p3100',1),(2,1,1,'Samsung Galaxy Grand Duos','images/samsungmobiles/samsung2.gif','Samsung Galaxy Grand Duos I9082 Camera 5px, wifi,GPrs,FrontVGA Camera,16 GB','22000',5,'I9082',1),(3,1,1,'Samsung Galaxy S3','images/samsungmobiles/samsung3.gif','Samsung Galaxy S3-32GB Camera 5px, wifi,GPrs,FrontVGA Camera, 36 GB','32000',5,'S5700',1),(4,1,1,'Samsung EF-FI950','images/samsungmobiles/samsung4.gif','Samsung EF-FI950 BBEGIN Flip Case,8GB, Camera 5px, wifi,GPrs,FrontVGA Camera','22000',5,'EF-FI950',1),(5,1,1,'Samsung Guru','images/samsungmobiles/samsung5.gif','Samsung Guro Double Sim,Radio,Gprs','1700',5,'S1200',1),(6,1,1,'Samsung Guru','images/samsungmobiles/samsung6.gif','Samsung Guru ,GPRS,RADIO,MP3','2200',5,'S2200',1),(7,1,1,'Samsung Galaxy S Duos','images/samsungmobiles/samsung7.gif','Samsung Galaxy S Duos-32GB Camera 5px, wifi,GPrs,FrontVGA Camera, 36 GB','30000',5,'S5780',1),(8,1,1,'Samsung Galaxy C Duos','images/samsungmobiles/samsung8.gif','Samsung Galaxy C Duos  Camera 5px, wifi,GPrs,FrontVGA Camera,16 GB','22900',5,'I9082',1),(9,1,1,'Samsung Galaxy Tab2','images/samsungmobiles/samsung9.gif','Samsung Galaxy TAb-32GB+128 GB extendable Camera 5px, wifi,GPrs,FrontVGA Camera, 36 GB','32000',5,'S0700',1),(10,1,1,'Samsung Galaxy S-2 Duos','images/samsungmobiles/samsung10.gif','Samsung Galaxy S-2, 32GB Camera 5px, wifi,GPrs,FrontVGA Camera, 36 GB','21000',5,'S570',1),(11,1,1,'Samsung Galaxy X Duos','images/samsungmobiles/samsung11.gif','Samsung Galaxy X Duos  Camera 5px,3px front camera,3G, wifi,GPrs,16 GB','28800',5,'I908',1),(12,1,1,'Samsung Galaxy Duos Grand 2','images/samsungmobiles/samsung12.gif','Samsung Galaxy Grand 2,latest android-32GB+128 GB extendable, Camera 5px, wifi,GPrs,FrontVGA Camera','42000',5,'S1867',1),(13,2,1,'Nokia Lumia 521','images/nokiamobiles/n1.jpg',' Nokia - Lumia - Smartphone - Windows Phone - Unlocked - GSM - WCDMA - 3.7 inch screen - Quad-band - 8 megapixel camera - 13 hour talk time ','21000',5,'521',2),(14,2,1,'Nokia Lumia 920','images/nokiamobiles/n2.jpg',' Nokia Lumia 920 Windows Phone -4.5 inch screen - Quad-band - 8.7 megapixel camera - With Front-facing Camera - 17 hour talk time ','28800',5,'920',2),(15,2,1,'Nokia  Duos Grand 2','images/nokiamobiles/n3.jpg','Nokia  1200,GPRS,Radio,MP3, ','2000',5,'1200',2),(16,2,1,'Nokia X2','images/nokiamobiles/n4.jpg','Nokia X2,8GB memory, Camera 5px, wifi,GPrs,Multimedia','22000',5,'X2',2),(17,2,1,'Nokia Slide','images/nokiamobiles/n5.jpg','Nokia Slide , Double Sim,Radio,Gprs','3700',5,'7600',2),(18,2,1,'Nokia Lumia 710','images/nokiamobiles/n6.jpg','Nokia Lumia 710 5 mpx Camera,GPRS,RADIO,MP3,WIFI,32 Gb memory','17000',5,'710',2),(19,2,1,'Nokia Tab ','images/nokiamobiles/n7.jpg','Nokia  Tab -64GB memory, Camera 5px, wifi,GPrs,FrontVGA Camera, ','30000',5,'T1209',2),(20,2,1,'Nokia  C-5','images/nokiamobiles/n8.jpg','Nokia  C -5  Camera 5px, wifi,GPrs,FrontVGA Camera,16 GB','12900',5,'C-5',2),(21,2,1,'Nokia  Classic Asha','images/nokiamobiles/n9.jpg','Nokia  Classic Asha Camera 3 mpx,GPRS,WIFI,RADIO,Mp3,','32000',5,'S0700',2),(22,2,1,' Nokia E71 Smartphone ','images/nokiamobiles/n10.jpg',' Nokia - Smartphone - Symbian - Unlocked - With QWERTY Keyboard - GSM - WCDMA - 2.4 inch screen - Quad-band - 3.2 megapixel camera - With Front-facing Camera - 4.5 hour talk time ','21000',5,'S570',2),(23,2,1,' Nokia Lumia 800','images/nokiamobiles/n11.jpg',' Nokia - Lumia - Smartphone - Windows Phone - Unlocked - GSM - WCDMA - 3.7 inch screen - Quad-band - 8 megapixel camera - 13 hour talk time ','28800',5,'I908',2),(24,2,1,' Nokia Lumia','images/nokiamobiles/n11.jpg',' Nokia - Lumia  - Smartphone - Windows Phone - Unlocked - GSM - WCDMA - 3.7 inch screen - Quad-band - 8 megapixel camera - 13 hour talk time ','28800',5,'I908',2),(25,3,1,'BlackBerry  521','images/blackberrymobiles/bb1.jpeg',' BlackBerry -  - Smartphone - Windows Phone - Unlocked - GSM - WCDMA - 3.7 inch screen - Quad-band - 8 megapixel camera - 13 hour talk time ','21000',5,'521',3),(26,3,1,'BlackBerry  920','images/blackberrymobiles/bb2.jpeg',' BlackBerry  920 Windows Phone -4.5 inch screen - Quad-band - 8.7 megapixel camera - With Front-facing Camera - 17 hour talk time ','28800',5,'920',3),(27,3,1,'BlackBerry   2','images/blackberrymobiles/bb3.jpeg','BlackBerry  1200,GPRS,Radio,MP3, ','20000',5,'1200',3),(28,3,1,'BlackBerry X2','images/blackberrymobiles/bb4.jpeg','BlackBerry X2,8GB memory, Camera 5px, wifi,GPrs,Multimedia','22000',5,'X2',3),(29,3,1,'BlackBerry Slide','images/blackberrymobiles/bb5.jpeg','BlackBerry Slide , Double Sim,Radio,Gprs','37500',5,'7600',3),(30,3,1,'BlackBerry  710','images/blackberrymobiles/bb6.jpeg','BlackBerry  710 5 mpx Camera,GPRS,RADIO,MP3,WIFI,32 Gb memory','17000',5,'710',3),(31,3,1,'BlackBerry   ','images/blackberrymobiles/bb7.jpeg','BlackBerry  64GB memory, Camera 5px, wifi,GPrs,FrontVGA Camera, ','30000',5,'T1209',3),(32,3,1,'BlackBerry  C-5','images/blackberrymobiles/bb8.jpeg','BlackBerry  C -5  Camera 5px, wifi,GPrs,FrontVGA Camera,16 GB','12900',5,'C-5',3),(33,3,1,'BlackBerry  Classic','images/blackberrymobiles/bb9.jpeg','BlackBerry  Classic Asha Camera 3 mpx,GPRS,WIFI,RADIO,Mp3,','32000',5,'S0700',3),(34,3,1,'BlackBerry E71 Smartphone ','images/blackberrymobiles/bb10.jpeg',' BlackBerry - Smartphone - Symbian - Unlocked - With QWERTY Keyboard - GSM - WCDMA - 2.4 inch screen - Quad-band - 3.2 megapixel camera - With Front-facing Camera - 4.5 hour talk time ','21000',5,'S570',3),(35,3,1,'BlackBerry  800','images/blackberrymobiles/bb11.jpeg',' BlackBerry -  - Smartphone - Windows Phone - Unlocked - GSM - WCDMA - 3.7 inch screen - Quad-band - 8 megapixel camera - 13 hour talk time ','28800',5,'I908',3),(36,4,1,'Apple IPhone 521','images/applemobiles/apple1.jpg',' Apple - IPhone - Smartphone - Windows Phone - Unlocked - GSM - WCDMA - 3.7 inch screen - Quad-band - 8 megapixel camera - 13 hour talk time ','21000',5,'521',4),(37,4,1,'Apple IPhone 920','images/applemobiles/apple2.jpg',' Apple IPhone 920 Windows Phone -4.5 inch screen - Quad-band - 8.7 megapixel camera - With Front-facing Camera - 17 hour talk time ','28800',5,'920',4),(38,4,1,'Apple iPhone','images/applemobiles/apple3.jpg','Apple X1,8GB memory, Camera 5px, wifi,GPrs,Multimedia','2000',5,'1200',4),(39,4,1,'Apple X2','images/applemobiles/apple4.jpg','Apple X2,8GB memory, Camera 5px, wifi,GPrs,Multimedia','22000',5,'X2',4),(40,4,1,'Apple Slide','images/applemobiles/apple5.jpg','Apple Slide , Double Sim,Radio,Gprs','31600',5,'7600',4),(41,4,1,'Apple IPhone 710','images/applemobiles/apple6.jpg','Apple IPhone 710 5 mpx Camera,GPRS,RADIO,MP3,WIFI,32 Gb memory','17000',5,'710',4),(42,4,1,'Apple  Tab ','images/applemobiles/apple7.jpg','Apple  Tab -64GB memory, Camera 5px, wifi,GPrs,FrontVGA Camera, ','30000',5,'T1209',4),(43,4,1,'Apple  C-5','images/applemobiles/apple8.jpg','Apple  C -5  Camera 5px, wifi,GPrs,FrontVGA Camera,16 GB','12900',5,'C-5',4),(44,4,1,'Apple  Classic ','images/applemobiles/apple9.jpg','Apple  Classic  Camera 3 mpx,GPRS,WIFI,RADIO,Mp3,','32000',5,'S0700',4),(45,4,1,'Apple E71 Smartphone ','images/applemobiles/apple10.jpg',' Apple - Smartphone - Symbian - Unlocked - With QWERTY Keyboard - GSM - WCDMA - 2.4 inch screen - Quad-band - 3.2 megapixel camera - With Front-facing Camera - 4.5 hour talk time ','21000',5,'S570',4),(46,4,1,'Apple IPhone 800','images/applemobiles/apple11.jpg',' Apple - IPhone - Unlocked - GSM - WCDMA - 3.7 inch screen - Quad-band - 8 megapixel camera - 13 hour talk time ','28800',5,'I908',4),(47,4,1,'Apple   Grand 2','images/applemobiles/apple12.jpg','Apple  Grand 2,latest android-32GB+128 GB extendable, Camera 5px, wifi,GPrs,FrontVGA Camera','42000',5,'S1867',4),(48,5,2,'Dell Inspiron N3521 Laptop ','images/delllaptops/dell1.jpg',' Pentium Dual Core 2117- 2GB RAM- 500GB HDD- 15.6-inch- Win8- Intel HD Graphics,Color:Red)\n','30000',5,'N351',5),(49,5,2,'Dell Inspiron N5423 Laptop','images/delllaptops/dell2.jpg',' Dell Inspiron N5423 Laptop Intel Core i3 3217U- 4GB RAM- 500GB HDD + 32 GB SSD- 14-inch- Win8- 1GB AMD Radeon HD 7570M) (Silver) ','39800',5,'N5423',5),(50,5,2,'Dell Vostro 2520 Laptop','images/delllaptops/dell3.jpg',' Dell Vostro 2520 Laptop 3rd Gen Ci3/ 4GB/ 500GB/ Win8 ','29900',5,'2520',5),(51,5,2,' Dell Vostro 2521 Laptop','images/delllaptops/dell4.jpg',' Dell Vostro 252 Laptop(3rd Gen Ci7/ 8GB/ 1TB/ Win8/ 2GB Graph','42000',5,'2521',5),(52,5,2,' Dell Inspiron N01 DOS  Laptop)','images/delllaptops/dell5.jpg',' Dell Inspiron N01 Laptop (APU Dual Core/ 2GB/ 500GB/ DOS)','37000',5,'N01',5),(53,5,2,' Dell Inspiron Laptop D1019 ','images/delllaptops/dell6.jpg',' Dell Inspiron Laptop D1019(3rd Gen Ci5/ 4GB/ 1 TB/ Win8/ 2GB Graph) ','50000',5,'D1019',5),(54,5,2,' Dell P9012 Laptop ','images/delllaptops/dell7.jpg',' Dell P9012 Laptop (3rd Gen Ci7/ 8GB/ 1 TB/ Win8/ 3GB Graph) ','39000',5,'P9012',5),(55,5,2,' Dell  P9023 Inspiron  Laptop (2nd Gen Ci3/ 2GB/ 5','images/delllaptops/dell8.jpg','Dell  C -5  Camera 5px, wifi,GPrs,FrontVGA Camera,16 GB','29900',5,'C-5',5),(56,5,2,' Dell S1023 Laptop ','images/delllaptops/dell9.jpg',' Dell S1023 Laptop (APU Dual Core A4/ 4GB/ 500GB/ DOS/ 1GB Graph) ','32000',5,'S0700',5),(57,5,2,' Dell Touch Screen laptop(Latest product)','images/delllaptops/dell10.jpg',' Dell inspiron ,Intel i7,1 Tb/8gb memory,Hd Camera,Window 8 professional with 4 yr extended onsight warranty  ','61000',5,'S570',5),(58,5,2,' Dell Inspiron I908 laptops ','images/delllaptops/dell11.jpg',' Dell Inspiron 290G laptop ,500 GB,4GB,Intel-I3,with 3 yr extended warranty ','28800',5,'I908',5),(59,5,2,'Dell Inspiron S2345 ','images/delllaptops/dell12.jpg','Dell Inspiron Laptop ,500 GB,4GB,Intel-I-5,with 3 yr extended warranty   ','42000',5,'S1867',5),(60,6,2,' Hp NP300E4V-A01IN Laptop ','images/hplaptops/hp1.jpg',' Hp NP300E4V-A01IN Laptop (3rd Gen PDC/ 2GB/ 320GB/ DOS) ','30000',5,' NP300E4V-A01IN ',6),(61,6,2,'  Hp NP300 Laptop ','images/hplaptops/hp2.jpg','  Hp  NP300 Laptop (3rd Gen Ci5/ 4GB/ 750GB/ DOS/ 1GB Graph) ','39800',5,'NP300',6),(62,6,2,'  Hp NP301E4V-A01IN Laptop','images/hplaptops/hp3.jpg','  Hp NP301E4V-A01IN Laptop (2nd Gen PDC/ 2GB/ 320GB/ DOS) ','29900',5,'NP301E4V-A01IN',6),(63,6,2,'  Hp  NP550P5C-S05IN Laptop','images/hplaptops/hp4.jpg',' Hp NP550P5C-S05IN Laptop (3rd Gen Ci7/ 8GB/ 1TB/ Win8/ 2GB Graph) ','42000',5,'NP550P5C-S05IN',6),(64,6,2,'  Hp  NP355E5X-A01IN DOS  Laptop)','images/hplaptops/hp5.jpg',' Hp NP355E5X-A01IN Laptop (APU Dual Core/ 2GB/ 500GB/ DOS) ','37000',5,' NP355E5X-A01IN ',6),(65,6,2,'  Hp  NP350V5C-S07IN Laptop ','images/hplaptops/hp6.jpg',' Hp NP350V5C-S07IN Laptop (3rd Gen Ci5/ 4GB/ 1 TB/ Win8/ 2GB Graph) ','50000',5,'NP350V5C-S07IN ',6),(66,6,2,'  Hp NP350V5C Laptop ','images/hplaptops/hp7.jpg','  Hp NP350V5C Laptop (3rd Gen Ci7/ 8GB/ 1 TB/ Win8/ 3GB Graph) ','39000',5,' NP350V5C ',6),(67,6,2,'  Hp  NP300E5C-A0CIN   Laptop ','images/hplaptops/hp8.jpg','Hp  NP300E5C-A0CIN   Laptop (2nd Gen Ci3/ 2GB/ 500GB/ Win8)','29900',5,'NP300E5C-A0CIN',6),(68,6,2,'  Hp S1023 Laptop ','images/hplaptops/hp9.jpg','  Hp S1023 Laptop (APU Dual Core A4/ 4GB/ 500GB/ DOS/ 1GB Graph) ','32000',5,'S1023',6),(69,6,2,'  Hp Touch Screen laptop(Latest product)','images/hplaptops/hp10.jpg','  Hp  ,Intel i7,1 Tb/8gb memory,Hd Camera,Window 8 professional with 4 yr extended onsight warranty  ','61000',5,'S570',6),(70,6,2,'  Hp  I908 laptops ','images/hplaptops/hp11.jpg','  Hp  290G laptop ,500 GB,4GB,Intel-I3,with 3 yr extended warranty ','28800',5,'I908',6),(71,6,2,' Hp  S2345 ','images/hplaptops/hp12.jpg',' Hp  Laptop ,500 GB,4GB,Intel-I-5,with 3 yr extended warranty   ','42000',5,'S2345',6),(72,7,2,' Sony NP300E4V-A01IN Laptop ','images/sonylaptops/sony1.jpg',' Sony NP300E4V-A01IN Laptop (3rd Gen PDC/ 2GB/ 320GB/ DOS) ','30000',5,' NP300E4V-A01IN ',7),(73,7,2,'  Sony NP300 Laptop ','images/sonylaptops/sony2.jpg','  Sony  NP300 Laptop (3rd Gen Ci5/ 4GB/ 750GB/ DOS/ 1GB Graph) ','39800',5,'NP300',7),(74,7,2,'  Sony NP301E4V-A01IN Laptop','images/sonylaptops/sony3.jpg','  Sony NP301E4V-A01IN Laptop (2nd Gen PDC/ 2GB/ 320GB/ DOS) ','29900',5,'NP301E4V-A01IN',7),(75,7,2,'  Sony  NP550P5C-S05IN Laptop','images/sonylaptops/sony4.jpg',' Sony NP550P5C-S05IN Laptop (3rd Gen Ci7/ 8GB/ 1TB/ Win8/ 2GB Graph) ','42000',5,'NP550P5C-S05IN',7),(76,7,2,'  Sony  NP355E5X-A01IN DOS  Laptop)','images/sonylaptops/sony5.jpg',' Sony NP355E5X-A01IN Laptop (APU Dual Core/ 2GB/ 500GB/ DOS) ','37000',5,' NP355E5X-A01IN ',7),(77,7,2,'  Sony  NP350V5C-S07IN Laptop ','images/sonylaptops/sony6.jpg',' Sony NP350V5C-S07IN Laptop (3rd Gen Ci5/ 4GB/ 1 TB/ Win8/ 2GB Graph) ','50000',5,'NP350V5C-S07IN ',7),(78,7,2,'  Sony NP350V5C Laptop ','images/sonylaptops/sony7.jpg','  Sony NP350V5C Laptop (3rd Gen Ci7/ 8GB/ 1 TB/ Win8/ 3GB Graph) ','39000',5,' NP350V5C ',7),(79,7,2,'  Sony  NP300E5C-A0CIN   Laptop ','images/sonylaptops/sony8.jpg','Sony  NP300E5C-A0CIN   Laptop (2nd Gen Ci3/ 2GB/ 500GB/ Win8)','29900',5,'NP300E5C-A0CIN',7),(80,7,2,'  Sony S01 Laptop ','images/sonylaptops/sony9.jpg','  Sony S01 Laptop (APU Dual Core A4/ 4GB/ 500GB/ DOS/ 1GB Graph) ','32000',5,'S01',7),(81,7,2,'  Sony Touch Screen laptop(Latest product)','images/sonylaptops/sony10.jpg','  Sony  ,Intel i7,1 Tb/8gb memory,Hd Camera,Window 8 professional with 4 yr extended onsight warranty  ','61000',5,'S570',7),(82,7,2,'  Sony  I908 laptops ','images/sonylaptops/sony11.jpg','  Sony  290G laptop ,500 GB,4GB,Intel-I3,with 3 yr extended warranty ','28800',5,'I908',7),(83,7,2,' Sony  S2345 ','images/sonylaptops/sony12.jpg',' Sony  Laptop ,500 GB,4GB,Intel-I-5,with 3 yr extended warranty   ','42000',5,'S2345',7),(84,8,2,' Samsung NP300E4V-A01IN Laptop ','images/samsunglaptops/samsung1.gif',' Samsung NP300E4V-A01IN Laptop (3rd Gen PDC/ 2GB/ 320GB/ DOS) ','30000',5,' NP300E4V-A01IN ',8),(85,8,2,'  Samsung NP300 Laptop ','images/samsunglaptops/samsung2.gif','  Samsung  NP300 Laptop (3rd Gen Ci5/ 4GB/ 750GB/ DOS/ 1GB Graph) ','39800',5,'NP300',8),(86,8,2,'  Samsung NP301E4V-A01IN Laptop','images/samsunglaptops/samsung3.gif','  Samsung NP301E4V-A01IN Laptop (2nd Gen PDC/ 2GB/ 320GB/ DOS) ','29900',5,'NP301E4V-A01IN',8),(87,8,2,'  Samsung  NP550P5C-S05IN Laptop','images/samsunglaptops/samsung4.gif',' Samsung NP550P5C-S05IN Laptop (3rd Gen Ci7/ 8GB/ 1TB/ Win8/ 2GB Graph) ','42000',5,'NP550P5C-S05IN',8),(88,8,2,'  Samsung  NP355E5X-A01IN DOS  Laptop)','images/samsunglaptops/samsung5.gif',' Samsung NP355E5X-A01IN Laptop (APU Dual Core/ 2GB/ 500GB/ DOS) ','37000',5,' NP355E5X-A01IN ',8),(89,8,2,'  Samsung  NP350V5C-S07IN Laptop ','images/samsunglaptops/samsung6.gif',' Samsung NP350V5C-S07IN Laptop (3rd Gen Ci5/ 4GB/ 1 TB/ Win8/ 2GB Graph) ','50000',5,'NP350V5C-S07IN ',8),(90,8,2,'  Samsung NP350V5C Laptop ','images/samsunglaptops/samsung7.gif','  Samsung NP350V5C Laptop (3rd Gen Ci7/ 8GB/ 1 TB/ Win8/ 3GB Graph) ','39000',5,' NP350V5C ',8),(91,8,2,'  Samsung  NP300E5C-A0CIN   Laptop ','images/samsunglaptops/samsung8.gif','Samsung  NP300E5C-A0CIN   Laptop (2nd Gen Ci3/ 2GB/ 500GB/ Win8)','29900',5,'NP300E5C-A0CIN',8),(92,8,2,'  Samsung S01 Laptop ','images/samsunglaptops/samsung9.gif','  Samsung S01 Laptop (APU Dual Core A4/ 4GB/ 500GB/ DOS/ 1GB Graph) ','32000',5,'S01',8),(93,8,2,'  Samsung Touch Screen laptop(Latest product)','images/samsunglaptops/samsung10.gif','  Samsung  ,Intel i7,1 Tb/8gb memory,Hd Camera,Window 8 professional with 4 yr extended onsight warranty  ','61000',5,'S570',8),(94,8,2,'  Samsung  I908 laptops ','images/samsunglaptops/samsung11.gif','  Samsung  290G laptop ,500 GB,4GB,Intel-I3,with 3 yr extended warranty ','28800',5,'I908',8),(95,8,2,' Accer  S2345 ','images/samsunglaptops/samsung12.gif','Accer  Laptop ,500 GB,4GB,Intel-I-5,with 3 yr extended warranty   ','42000',5,'S2345',9),(96,9,3,' Sony NP300E4V-A01IN Camera ','images/sonycameras/sonycamera1.jpg',' Sony NP300E4V-A01IN Camera ','8900',6,' NP300E4V-A01IN',10),(97,9,3,' Sony NP300E5X-S01IN Camera ','images/sonycameras/sonycamera2.jpg','  Sony NP300E5X-S01IN Camera ','9800',5,'NP',10),(98,9,3,'Sony CyberShot 23SS Camera','images/sonycameras/sonycamera3.jpg','  Sony NP301E4V-A01IN Camera  ','18900',5,'23SS',10),(99,9,3,'Sony CyberShot 230S Camera ','images/sonycameras/sonycamera4.jpg',' Sony CyberShot 230S Camera ','20000',5,'230S',10),(100,9,3,'Sony NP355E5X-A01IN Camera ','images/sonycameras/sonycamera5.jpg',' Sony NP355E5X-A01IN Camera ','9000',5,' NP355E5X-A01IN ',10),(101,9,3,'Sony NP350V5C-S07IN Camera ','images/sonycameras/sonycamera6.jpg',' Sony NP350V5C-S07IN Camera  ','10000',5,' NP350V5C-S07IN ',10),(102,9,3,'Sony NP350V5C Camera ','images/sonycameras/sonycamera7.jpg','  Sony NP350V5C Camera (3rd Gen Ci9/ 8GB/ 1 TB/ Win8/ 3GB Graph) ','9000',5,' NP350V5C ',10),(103,9,3,'Sony  NP300E5C-A0CIN   Camera ','images/sonycameras/sonycamera8.jpg','Sony  NP300E5C-A0CIN   Camera','11000',5,'NP300E5C-A0CIN',10),(104,9,3,'Sony NP305E5Z-S01IN Camera ','images/sonycameras/sonycamera9.jpg','Sony NP305E5Z-S01IN Camera  ','12000',5,' NP305E5Z-S01IN ',10),(105,9,3,'Sony Touch Screen Camera S590','images/sonycameras/sonycamera10.jpg','Sony Touch Screen Camera(Latest product) 8gb +80 Gb memory,Hd Camera,l with 4 yr extended onsight warranty  ','21000',5,'S590',10),(106,9,3,'Sony CyberShot Camera S01','images/sonycameras/sonycamera11.jpg','Sony CyberShot Camera S01 with 3 yr extended warranty','10800',5,'S01',10),(107,9,3,' Sony  S2345 ','images/sonycameras/sonycamera12.jpg',' Sony  Camera','2000',5,'S2345',10),(108,10,3,'Canon NP300E4V-A01IN Camera ','images/canoncameras/canon1.jpg',' Canon NP300E4V-A01IN Camera ','8900',6,' NP300E4V-A01IN',11),(109,10,3,'Canon NP300E5X-S01IN Camera ','images/canoncameras/canon2.jpg','  Canon NP300E5X-S01IN Camera ','9800',5,'NP',11),(110,10,3,'Canon CyberShot 23SS Camera','images/canoncameras/canon3.jpg','  Canon NP301E4V-A01IN Camera  ','18900',5,'23SS',11),(111,10,3,'Canon CyberShot 230S Camera ','images/canoncameras/canon4.jpg',' Canon CyberShot 230S Camera ','20000',5,'230S',11),(112,10,3,'Canon NP355E5X-A01IN Camera ','images/canoncameras/canon5.jpg',' Canon NP355E5X-A01IN Camera ','9000',5,' NP355E5X-A01IN ',11),(113,10,3,'Canon NP350V5C-S07IN Camera ','images/canoncameras/canon6.jpg',' Canon NP350V5C-S07IN Camera  ','10000',5,' NP350V5C-S07IN ',11),(114,10,3,'Canon NP350V5C Camera ','images/canoncameras/canon7.jpg','  Canon NP350V5C Camera (3rd Gen Ci9/ 8GB/ 1 TB/ Win8/ 3GB Graph) ','9000',5,' NP350V5C ',11),(115,10,3,'Canon  NP300E5C-A0CIN   Camera ','images/canoncameras/canon8.jpg','Canon  NP300E5C-A0CIN   Camera','11000',5,'NP300E5C-A0CIN',11),(116,10,3,'Canon NP305E5Z-S01IN Camera ','images/canoncameras/canon9.jpg','Canon NP305E5Z-S01IN Camera  ','120000',5,' NP305E5Z-S01IN ',11),(117,10,3,'Nikon Touch Screen Camera S590','images/canoncameras/nikon1.jpg','Nikon Touch Screen Camera(Latest product) 8gb +80 Gb memory,Hd Camera,l with 4 yr extended onsight warranty  ','21000',5,'S590',12),(118,10,3,'Niokn Camera S01','images/canoncameras/nikon2.jpg','Nikon CyberShot Camera S01 with 3 yr extended warranty','108000',5,'S01',12),(119,10,3,'Nikon  S2345 ','images/canoncameras/nikon3.jpg','Nikon  Camera','2000',5,'S2345',12),(120,11,3,'Philips NP300E4V-A01IN Camera ','images/philipscameras/philips1.jpg',' Philips NP300E4V-A01IN Camera ','8900',6,' NP300E4V-A01IN',13),(121,11,3,'Philips NP300E5X-S01IN Camera ','images/philipscameras/philips2.jpg','  Philips NP300E5X-S01IN Camera ','9800',5,'NP',13),(122,11,3,'Philips CyberShot 230S Camera ','images/philipscameras/philips3.jpg',' Philips CyberShot 230S Camera ','20000',5,'230S',13),(123,11,3,'Philips NP355E5X-A01IN Camera ','images/philipscameras/philips4.jpg',' Philips NP355E5X-A01IN Camera ','9000',5,' NP355E5X-A01IN ',13),(124,11,3,'Philips NP350V5C-S07IN Camera ','images/philipscameras/philips5.jpg',' Philips NP350V5C-S07IN Camera  ','10000',5,' NP350V5C-S07IN ',13),(125,11,3,'Philips NP350V5C Camera ','images/philipscameras/philips6.jpg','  Philips NP350V5C Camera (3rd Gen Ci9/ 8GB/ 1 TB/ Win8/ 3GB Graph) ','9000',5,' NP350V5C ',13),(126,11,3,'Philips  NP300E5C-A0CIN   Camera ','images/philipscameras/philips7.jpg','Philips  NP300E5C-A0CIN   Camera','11000',5,'NP300E5C-A0CIN',13),(127,11,3,'Philips NP305E5Z-S01IN Camera ','images/philipscameras/philips8.jpg','Philips NP305E5Z-S01IN Camera  ','12000',5,' NP305E5Z-S01IN ',13),(128,11,3,'Philips Touch Screen Camera S590','images/philipscameras/philips9.jpg','Philips Touch Screen Camera(Latest product) 8gb +80 Gb memory,Hd Camera,l with 4 yr extended onsight warranty  ','21000',5,'S590',13),(129,11,3,'Philips Camera S01','images/philipscameras/philips10.jpg','Philips CyberShot Camera S01 with 3 yr extended warranty','10800',5,'S01',13),(130,11,3,' Philips  S2345 ','images/philipscameras/philips11.jpg',' Philips  Camera','2000',5,'S2345',13),(132,12,4,' Hp-H0485','images/desktops/desktop1.jpg',' Hp-H04 (3rd Gen PDC/ 2GB/ 320GB/ DOS)','28900',6,'HP0485',13),(133,12,4,' Lenovo-D09A ','images/desktops/desktop2.jpg',' Lenovo-D09-(3rd Gen Ci5/ 4GB/ 750GB/ DOS/ 1GB Graph) ','28000',5,'D09A',14),(134,12,4,'Lenovo D9034 Desktop ','images/desktops/desktop3.jpg',' Lenovo Desktop (2nd Gen PDC/ 2GB/ 320GB/ DOS) ','18900',5,'D9034',14),(135,12,4,' Samsung-S01Desktop  ','images/desktops/desktop4.jpg',' Samsung-S01Desktop (3rd Gen Ci7/ 8GB/ 1TB/ Win8/ 2GB Graph) ','60000',5,'S01',NULL),(136,12,4,'Hp-Compaq-A01 Desktop ','images/desktops/desktop5.jpg',' Hp-Compaq-A01-Desktop (APU Dual Core/ 2GB/ 500GB/ DOS) ','19000',5,'A01',NULL),(137,12,4,' Hp-H01Desktop ','images/desktops/desktop6.jpg','Hp-H01Desktop (3rd Gen Ci5/ 4GB/ 1 TB/ Win8/ 2GB Graph) ','50000',5,'H01',NULL),(138,12,4,'Hp-H02 (3rd Gen Ci7/ 8GB/ 1 TB/ Win8/ 3GB Graph) ','images/desktops/desktop7.jpg',' Hp-H02 (3rd Gen Ci7/ 8GB/ 1 TB/ Win8/ 3GB Graph)','90000',5,' NP350V5C ',NULL),(139,12,4,' Dell-D01','images/desktops/desktop8.jpg',' Dell-D01- (2nd Gen Ci3/ 2GB/ 500GB/ Win8)','41000',5,'D01',NULL),(140,12,4,' Samsung S02-Dual ','images/desktops/desktop9.jpg',' Samsung S02-Dual Core A4/ 4GB/ 500GB/ DOS/ 1GB Graph)','22900',5,'S02',NULL),(141,12,4,'Hcl Desktop S590 ','images/desktops/desktop10.jpg',' HCL Desktop,160-GBHD,2GBRam,Core2Dual','31000',5,'S590',NULL),(142,12,4,'HP-D03  ','images/desktops/desktop11.jpg',' Hp-D03 500Gb,4Gb,Intel i3,1Gb internal Graphiscs with 2yr warranty','40800',5,'D03',NULL),(143,12,4,'Dell S032 Desktop ','images/desktops/desktop12.jpg',' Dell-D03 160Gb,2Gb,Core 2 Duel,1Gb internal Graphiscs with 2yr warranty','27000',5,'S032',NULL);

/*Table structure for table `productcategory` */

DROP TABLE IF EXISTS `productcategory`;

CREATE TABLE `productcategory` (
  `pcid` int(11) NOT NULL,
  `pcname` varchar(30) NOT NULL,
  PRIMARY KEY  (`pcid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `productcategory` */

insert  into `productcategory`(`pcid`,`pcname`) values (1,'mobile'),(2,'laptop'),(3,'camera'),(4,'desktop');

/*Table structure for table `productcompany` */

DROP TABLE IF EXISTS `productcompany`;

CREATE TABLE `productcompany` (
  `pcomid` int(11) NOT NULL,
  `pcid` int(11) NOT NULL,
  `pcomname` varchar(100) NOT NULL,
  PRIMARY KEY  (`pcomid`),
  KEY `pcid` (`pcid`),
  CONSTRAINT `pcid` FOREIGN KEY (`pcid`) REFERENCES `productcategory` (`pcid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `productcompany` */

insert  into `productcompany`(`pcomid`,`pcid`,`pcomname`) values (1,1,'samsung'),(2,1,'nokia'),(3,1,'blackberry'),(4,1,'apple'),(5,2,'dell'),(6,2,'hp'),(7,2,'sony'),(8,2,'samsung'),(9,3,'sony'),(10,3,'canon & nikon'),(11,3,'philips'),(12,4,'desktop');

/*Table structure for table `purchasehistory` */

DROP TABLE IF EXISTS `purchasehistory`;

CREATE TABLE `purchasehistory` (
  `phid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY  (`phid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchasehistory` */

/*Table structure for table `shipingadd` */

DROP TABLE IF EXISTS `shipingadd`;

CREATE TABLE `shipingadd` (
  `shipid` int(11) NOT NULL auto_increment,
  `emailid` varchar(30) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `landmark` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  PRIMARY KEY  (`shipid`),
  KEY `userid` (`emailid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

/*Data for the table `shipingadd` */

insert  into `shipingadd`(`shipid`,`emailid`,`address1`,`address2`,`landmark`,`city`,`state`,`pincode`,`userid`,`orderid`) values (1,'shashiranjan0001@gmail.com','Kiratpur','rz=536','near shiv temple','New Delhi','Delhi','110019',0,''),(2,'dev@gmail.com','D-20','D-20','Chauki','Noida','Uttar Pradesh','11000',0,''),(3,'','','','','','selected','',0,''),(4,'shashiranjan0001@gmail.com','sds','sdfsfsd','dfdssdf`','sdfsdfsd','Bihar','211212121',0,''),(5,'','','','','','selected','',0,''),(6,'','','','','','selected','',0,''),(7,'','','','','','selected','',0,''),(8,'','','','','','selected','',0,''),(9,'shashiranjan0001@gmail.com','Rz-324','E-20','Police Chowki','Noida','Uttar Pradesh','99101',0,''),(10,'shashiranjan0001@gmail.com','Rz-324','E-20','Police Chowki','Noida','Uttar Pradesh','99101',0,''),(11,'ravi@gmail.com','A-2','A-2','gandhi chowk','patna','Uttar Pradesh','844114',0,''),(12,'','','','','','selected','',0,''),(13,'sumeetgupta001@gmail.com','Bha-23','Bha-23','Shiv Mandir','Hajipur','Bihar','844114',0,''),(14,'palwishagupta92@gmail.com','A-2','A-2','Police Chowki','Noida','Uttar Pradesh','99101',0,''),(15,'','','','','','selected','',0,''),(16,'','','','','','selected','',0,''),(17,'palwishagupta92@gmail.com','asd','asd','asd','asd','Andaman and Nicobar Islands','212321',0,''),(18,'','','','','','selected','',0,''),(19,'','','','','','selected','',0,''),(20,'shashiranjan0001@gmail.com','A-9','A-90','A','Patna','Andhra Pradesh','122221',0,''),(21,'vishalmca.net@gmail.com','india','india','Near Meewar College','Ghaziabad','Uttar Pradesh','201012',0,''),(22,'','','','','','selected','',0,''),(23,'sptripathi11@rediffmail.com','b-47 grnoida','e-20 noida','fortis','noida','up','10001',0,''),(24,'gg@aa.vom','sss','www','22','22','333','333',0,''),(25,'gg@aa.vom','sss','www','22','22','333','333',0,''),(26,'sptripathi11@rediffmail.com','b-47 grnoida','e-20 noida','fortis','noida','Delhi','10001',0,''),(27,'dhanik_manish@rediffmail.com','aaa','a','a','a','a','a',5,'SHOPEROORD0027'),(28,'baba@gmail.com','aaaa','aa','a','a','a','a',5,'SHOPEROORD0028'),(29,'b@gmail.com','sss','s','s','s','s','s',5,'SHOPEROORD0029'),(30,'gg@aa.vom1','dff','dsf','dsfds','sdfds','sdfd','dsfds',5,'SHOPEROORD0030'),(31,'null','null','null','null','null','null','null',5,'SHOPEROORD0031'),(32,'null','null','null','null','null','null','null',2,'SHOPEROORD0032'),(33,'null','null','null','null','null','null','null',2,'SHOPEROORD0033'),(34,'gg1@aa.com','dasd','asdas','qd','dqdq','qd','qds',5,'SHOPEROORD0034'),(35,'gg1@aa.com','dasd','asdas','qd','dqdq','qd','qds',5,'SHOPEROORD0035'),(36,'sptripathi11@rediffmail.com','AA','aaa','ss','sss','s','s',5,'SHOPEROORD0036'),(37,'sptripathi11@rediffmail.com','AA','aaa','ss','sss','s','s',5,'SHOPEROORD0037'),(38,'sptripathi11@rediffmail.com','sdd','dsd','ds','dss','sdsd','sd',5,'SHOPEROORD0038'),(39,'sptripathi11@rediffmail.com','sdd','dsd','ds','dss','sdsd','sd',5,'SHOPEROORD0039'),(40,'sptripathi11@rediffmail.com','sdd','dsd','ds','dss','sdsd','sd',5,'SHOPEROORD0040'),(41,'sptripathi11@rediffmail.com','sdd','dsd','ds','dss','sdsd','sd',5,'SHOPEROORD0041'),(42,'sptripathi11@rediffmail.com','ff','dd','d','d','d','d',5,'SHOPEROORD0042'),(43,'null','null','null','null','null','null','null',5,'SHOPEROORD0043'),(44,'null','null','null','null','null','null','null',5,'SHOPEROORD0044'),(45,'null','null','null','null','null','null','null',5,'SHOPEROORD0045'),(46,'null','null','null','null','null','null','null',5,'SHOPEROORD0046'),(47,'sptripathi11@rediffmail.com','aaa','aaaa','aaa','aaa','aa','aaaa',5,'SHOPEROORD0047'),(48,'sptripathi11@rediffmail.com','aaa','aaaa','aaa','aaa','aa','aaaa',5,'SHOPEROORD0048'),(49,'sptripathi11@rediffmail.com','aaa','aaaa','aaa','aaa','aa','aaaa',5,'SHOPEROORD0049'),(50,'sptripathi11@rediffmail.com','aaa','aaaa','aaa','aaa','aa','aaaa',5,'SHOPEROORD0050'),(51,'dhanik_manish@rediffmail.com','a','a','a','a','a','a',5,'SHOPEROORD0051'),(52,'dhanik_manish@rediffmail.com','ss','ss','s','s','s','s',5,'SHOPEROORD0052'),(53,'dhanik_manish@rediffmail.com','ss','ss','s','ss','sdfd','s',5,'SHOPEROORD0053'),(54,'dhanik_manish@rediffmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0054'),(55,'sptripathi11@rediffmail.coms','s','s','s','s','sdsd','s',5,'SHOPEROORD0055'),(56,'sptripathi11@rediffmail.coma','a','a','a','a','a','a',5,'SHOPEROORD0056'),(57,'sptripathi11@rediffmail.com','aaa','a','a','a','a','a',5,'SHOPEROORD0057'),(58,'sptripathi11@rediffmail.com','aaa','a','a','a','a','a',5,'SHOPEROORD0058'),(59,'surya@apextgi.com','a','a','a','a','a','a',5,'SHOPEROORD0059'),(60,'surya@apextgi.com','a','a','a','a','a','a',5,'SHOPEROORD0060'),(61,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0061'),(62,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0062'),(63,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0063'),(64,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0064'),(65,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0065'),(66,'suryaassigen@gmail.com','ss','s','s','s','s','s',5,'SHOPEROORD0066'),(67,'suryaassigen@gmail.com','s','s','s','s','s','s',5,'SHOPEROORD0067'),(68,'suryaassigen@gmail.com','s','s','s','s','s','s',5,'SHOPEROORD0068');

/*Table structure for table `shipingproduct` */

DROP TABLE IF EXISTS `shipingproduct`;

CREATE TABLE `shipingproduct` (
  `spid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `shipid` int(11) NOT NULL,
  PRIMARY KEY  (`spid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shipingproduct` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userid` int(11) NOT NULL auto_increment,
  `username` varchar(20) default NULL,
  `password` varchar(20) default NULL,
  `cpass` varchar(20) default NULL,
  `emailaddress` varchar(100) default NULL,
  `phonenumber` varchar(20) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`userid`,`username`,`password`,`cpass`,`emailaddress`,`phonenumber`) values (1,'shashi','shashi','shashi','shashi@apex.com',''),(2,'pinki','pinki','pinki','pinki@apex',''),(3,'shashi','shashi','shashi','shashi@apex.com',''),(4,'Dev','Dangerous','Dangerous','dev@apex.com',''),(5,'surya','surya','surya','surya@apextgi.com',''),(6,'mm','mmm','mm','mm@gmail.com',''),(7,'fsdf','fdsfsd','dsfd','surya@apextgi.com',''),(8,'manishdhanik','manish','manish','manish@gmail.com',''),(9,'manishdhanik@r.com','s','s','s@gmail.com',''),(10,'ram','fsdf','fdsf','ram@gmail.com','9999999999'),(11,'abhi','abhi','abhi','abhi@gmail.com','9999999999'),(12,'abhi','abhi','abhi','abhi@gmail.com','9999999999');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
