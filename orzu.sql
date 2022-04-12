/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 8.0.24 : Database - orzu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`orzu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `orzu`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_u` int NOT NULL AUTO_INCREMENT,
  `login` varchar(100) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `stat` enum('a','u') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fio` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_u`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*Data for the table `user` */

insert  into `user`(`id_u`,`login`,`pass`,`stat`,`fio`,`email`) values 
(1,'admin','21232f297a57a5a743894a0e4a801fc3','a','Safarov Qodirjon H.','qodirjonsafaroff@gmail.com'),
(3,'user','ee11cbb19052e40b07aac0ca060c23ee','u','Safarov Qodirjon H2.','qodirjonsafaroff@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
