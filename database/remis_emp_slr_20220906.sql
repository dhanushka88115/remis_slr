/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.7.31 : Database - remis_emp_slr2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`remis_emp_slr2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `remis_emp_slr2`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

LOCK TABLES `admin` WRITE;

insert  into `admin`(`id`,`username`,`email`,`password`,`reg_date`,`updation_date`) values (1,'admin','admin2@gmail.com','1234','2016-04-05 02:01:45','2022-09-04');

UNLOCK TABLES;

/*Table structure for table `adminlog` */

DROP TABLE IF EXISTS `adminlog`;

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlog` */

LOCK TABLES `adminlog` WRITE;

UNLOCK TABLES;

/*Table structure for table `cabinetoffice` */

DROP TABLE IF EXISTS `cabinetoffice`;

CREATE TABLE `cabinetoffice` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CabinetOfficeName` varchar(2000) NOT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `cabinetoffice` */

LOCK TABLES `cabinetoffice` WRITE;

insert  into `cabinetoffice`(`Id`,`CabinetOfficeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (11,'General Manager\'s Office','','0000-00-00 00:00:00','System','2021-03-20 10:55:36');
insert  into `cabinetoffice`(`Id`,`CabinetOfficeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (12,'Chief Mechanical Engineer Sub Department Office','','0000-00-00 00:00:00','System','2021-03-20 10:55:36');

UNLOCK TABLES;

/*Table structure for table `classgrade` */

DROP TABLE IF EXISTS `classgrade`;

CREATE TABLE `classgrade` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassGradeName` varchar(2000) NOT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `classgrade` */

LOCK TABLES `classgrade` WRITE;

insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (1,'1-I','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (2,'1-II','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (3,'1-III','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (4,'2-I','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (5,'2-II','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (6,'3-I','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (7,'3-II','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (8,'3-III','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (9,'Special','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (10,'Supra','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (11,'Supernumarary','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (12,'I','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (13,'II','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `classgrade`(`Id`,`ClassGradeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (14,'III','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');

UNLOCK TABLES;

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `courses` */

LOCK TABLES `courses` WRITE;

insert  into `courses`(`id`,`course_code`,`course_sn`,`course_fn`,`posting_date`) values (1,'BCOM1453','B.Com','Bachelor Of commerce ','2020-07-05 01:01:42');
insert  into `courses`(`id`,`course_code`,`course_sn`,`course_fn`,`posting_date`) values (3,'BSC12','BSC','Bachelor  of Science','2020-07-05 01:01:42');
insert  into `courses`(`id`,`course_code`,`course_sn`,`course_fn`,`posting_date`) values (4,'BC36356','BCA','Bachelor Of Computer Application','2020-07-05 01:01:42');
insert  into `courses`(`id`,`course_code`,`course_sn`,`course_fn`,`posting_date`) values (5,'MCA565','MCA','Master of Computer Application','2020-07-05 01:01:42');
insert  into `courses`(`id`,`course_code`,`course_sn`,`course_fn`,`posting_date`) values (6,'MBA75','MBA','Master of Business Administration','2020-07-05 01:01:42');
insert  into `courses`(`id`,`course_code`,`course_sn`,`course_fn`,`posting_date`) values (7,'BE765','BE','Bachelor of Engineering','2020-07-05 01:01:42');

UNLOCK TABLES;

/*Table structure for table `designation` */

DROP TABLE IF EXISTS `designation`;

CREATE TABLE `designation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DesignationName` varchar(2000) NOT NULL,
  `ApprovedCadre` int(11) NOT NULL DEFAULT '0',
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=latin1;

/*Data for the table `designation` */

LOCK TABLES `designation` WRITE;

insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (1,'General Manager',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (2,'Chief Finance Officer',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (3,'Addl. General Manager (Operation)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (4,'Addl. General Manager(Mechanical)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (5,'Addl. General Manager(Admin.)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (6,'Addl. General Manager(Infrastructure)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (7,'Chief Accountant',4,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (8,'Chief Engineer(Motive Power)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (9,'Chief Engineer(Mechanical)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (10,'Chief Engineer(Way & Works)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (11,'Chief Engineer(Road & Bridge)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (12,'Chief Engineer(Assets Devp. & Building)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (13,'Chief Engineer(Signal & Telecommunication)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (14,'Chief Internal Auditor',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (15,'Director(Planning)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (16,'Director(Admin.)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (17,'Dy.Chief Engineer(Training & Human Resource Development)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (18,'Dy.Chief Engineer(Motive Power)',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (19,'Dy.Chief Engineer(Mechanical)',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (20,'Dy.Chief Engineer(Way & Works)',4,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (21,'Dy.Chief Engineer(Signal & Telecommunication)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (22,'Dy.Chief Engineer(Planning & Project)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (23,'Dy.Chief Engineer(Electrical)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (24,'Dy. Director(Information Technology)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (25,'Dy. Superintendent(RPF)',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (26,'Dy. Superintendent(Sales & Marketing)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (27,'Asst. Director(Planning)',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (28,'Asst. Director(Admin.)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (29,'Asst. Director(Cost)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (30,'Dy. Director(Planning)',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (31,'Dy. Director(Admin.)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (32,'Dy. Director(Cost)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (33,'Accountant',11,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (34,'Engineer(Training & Human Resource Development)',3,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (35,'Engineer(Motive Power)',14,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (36,'Engineer(Mechanical)',16,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (37,'Engineer(Electrical)',10,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (38,'Engineer(Way & Works)',20,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (39,'Engineer(Signal & Telecommunication)',5,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (40,'Engineer(Planning & Project)',3,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (41,'Legal Officer',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (42,'Superintendent(RPF)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (43,'Superintendent(Procurement)',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (44,'Superintendent(Commerce)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (45,'Superintendent(Transport)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (46,'Superintendent of Engineer(Motive Power)',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (47,'Superintendent of Engineer(Mechanical)',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (48,'Superintendent of Engineer(Way & Works)',7,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (49,'Superintendent of Engineer(Signal & Telecommunication)',4,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (50,'Superintendent of Engineer(Planning & Project)',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (51,'Survey Superintendent',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (52,'Surveyor',16,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (53,'Asst. Superintendent(RPF)',6,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (54,'Asst. Superintendent(Procument)',4,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (55,'Asst. Director(Information Technology)',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (56,'Chemist & Methodologist',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (57,'Dy. General Manager(Transport)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (58,'Dy. General Manager(Admin.)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (59,'Dy. General Manager(Training & Human Resource Development)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (60,'Dy. General Manager(Procument)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (61,'Dy. General Manager(Commerce)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (62,'Asst. Transportation Superintendent(Energy Conservation)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (63,'Asst. Transportation Superintendent(Mechanical)',4,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (64,'Asst.  Superintendent(Commerce/Transport)',20,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (65,'Dy. Superintendent(Commerce/Transport)',6,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (66,'Registrar',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (67,'Administrative Officer',30,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (68,'Trainning Officer',5,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (69,'Engine Driver',58,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (70,'Research Asst.',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (71,'Station Superintendent',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (72,'Guards Inspector',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (73,'Chief Train Controller',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (74,'Snr. Station Master(Incharge of Railway Station)',50,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (75,'Inspector',15,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (76,'Guard',65,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (77,'Draftsman(Civil)',3,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (78,'Snr. Station Master(Incharge of Controll Room)',10,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (79,'Draftsman(Signal)',1,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (80,'Draftsman(Mechanical)',2,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (81,'District Inspector(Mechanical)',22,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (82,'Chief Supervisory Manager(Yard)',8,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (83,'Supervisory  Manager(Yard)',8,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (84,'Chief Supervisory  Manager(Work Shop)',5,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (85,'Supervisory  Manager(Work Shop)',11,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (86,'Chief Supervisory  Manager(Permanent Ways)',8,'System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (87,'Chief Supervisory  Manager(Buildings)',1,'System',NULL,'System','2022-03-25 17:49:18');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (88,'Chief Supervisory  Manager(Bridges)',1,'System',NULL,'System','2022-03-27 13:47:16');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (89,'Supervisory  Manager(Permanent Ways)',47,'System',NULL,'System','2022-03-27 13:48:08');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (90,'Supervisory  Manager(Bridges)',7,'System',NULL,'System','2022-03-27 13:48:38');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (91,'Supervisory  Manager(Buildings)',14,'System',NULL,'System','2022-03-27 13:49:02');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (92,'Chief Supervisory  Manager(Signal & Telecommunication)',7,'System',NULL,'System','2022-03-27 13:49:30');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (93,'Supervisory  Manager(Signal & Telecommunication)',13,'System',NULL,'System','2022-03-27 13:50:06');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (94,'Stores Controller',1,'System',NULL,'System','2022-03-27 13:50:30');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (95,'District Inspector(Transport & Commercial)',26,'System',NULL,'System','2022-03-27 13:51:07');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (96,'Dipot Master',2,'System',NULL,'System','2022-03-27 13:51:27');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (97,'Driver Inspector Booking',9,'System',NULL,'System','2022-03-27 13:51:52');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (98,'Guard Inspector Booking',9,'System',NULL,'System','2022-03-27 13:52:15');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (99,'Translator(English/Tamil)',4,'System',NULL,'System','2022-03-27 13:53:27');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (100,'ICT Officer',1,'System',NULL,'System','2022-03-27 13:54:16');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (101,'Station Master',1050,'System',NULL,'System','2022-03-27 13:58:32');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (102,'Procurement Officer',10,'System',NULL,'System','2022-03-27 13:59:16');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (103,'Traffic Costing Officer',3,'System',NULL,'System','2022-03-27 13:59:38');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (104,'Devp. Officer',250,'System',NULL,'System','2022-03-27 13:59:57');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (105,'Instructor',17,'System',NULL,'System','2022-03-27 14:49:13');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (106,'Railway Technological Management Asst.(Inspection)',38,'System',NULL,'System','2022-03-27 15:21:30');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (107,'Railway Technological Management Asst.(Inspection)(Wagan & Cochese)',76,'System',NULL,'System','2022-03-27 15:21:51');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (108,'Railway Technological Management Asst.(Admin.)',285,'System',NULL,'System','2022-03-27 15:22:19');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (109,'Railway Technological Management Asst.(Administration)(Progrece)',25,'System',NULL,'System','2022-03-27 15:22:43');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (110,'Railway Technological Management Asst.(Electrical)',305,'System',NULL,'System','2022-03-27 15:23:24');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (111,'Railway Technological Management Asst.(Electrical)(Coil Wrapper)',1,'System',NULL,'System','2022-03-27 15:23:49');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (112,'Railway Technological Management Asst.(Mechanical)',1072,'System',NULL,'System','2022-03-27 15:24:10');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (113,'Railway Technological Management Asst.(Mechanical)(Machinist)',185,'System',NULL,'System','2022-03-27 15:24:30');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (114,'Railway Technological Management Asst.(Mechanical)(Welder)',81,'System',NULL,'System','2022-03-27 15:24:49');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (115,'Railway Technological Management Asst.(Mechanical)(Gas Cutter)',36,'System',NULL,'System','2022-03-27 15:25:16');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (116,'Railway Technological Management Asst.(Mechanical)(Plateman)',31,'System',NULL,'System','2022-03-27 15:25:38');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (117,'Railway Technological Management Asst.(Mechanical)(Boiler Fitter)',17,'System',NULL,'System','2022-03-27 15:26:09');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (118,'Railway Technological Management Asst.(Mechanical)(Moter Machanic)',20,'System',NULL,'System','2022-03-27 15:26:29');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (119,'Railway Technological Management Asst.(Instructor)',13,'System',NULL,'System','2022-03-27 15:39:46');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (120,'Engine Driver(Shunting)',147,'System',NULL,'System','2022-03-27 15:40:27');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (121,'Yard Foreman',17,'System',NULL,'System','2022-03-27 15:41:26');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (122,'Yard Master',9,'System',NULL,'System','2022-03-27 15:41:54');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (123,'Plan Keeper',1,'System',NULL,'System','2022-03-27 15:42:15');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (124,'Travelling Ticket Inspector',10,'System',NULL,'System','2022-03-27 15:42:43');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (125,'Management Service Officer',1562,'System',NULL,'System','2022-03-27 15:43:17');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (126,'Railway Clerk',1562,'System',NULL,'System','2022-03-27 15:43:17');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (127,'Time Keeping Clerk',1562,'System',NULL,'System','2022-03-27 15:43:17');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (128,'Progress Control Officer',2,'System',NULL,'System','2022-03-27 15:43:37');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (129,'Welfare Officer',2,'System',NULL,'System','2022-03-27 15:43:58');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (130,'Maintenance Supervisor',2,'System',NULL,'System','2022-03-27 15:44:20');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (131,'Wharf Clerk',15,'System',NULL,'System','2022-03-27 15:44:38');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (132,'Sub Inspector',65,'System',NULL,'System','2022-03-27 15:45:58');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (133,'Wharf Administrator',2,'System',NULL,'System','2022-03-27 15:46:38');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (134,'Sergeant',125,'System',NULL,'System','2022-03-27 15:47:58');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (135,'Security(Male)',405,'System',NULL,'System','2022-03-27 15:48:49');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (136,'Security(Female)',100,'System',NULL,'System','2022-03-27 15:49:19');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (137,'Butler',5,'System',NULL,'System','2022-03-27 15:49:39');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (138,'Shunter',128,'System',NULL,'System','2022-03-27 15:50:04');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (139,'Signalman',123,'System',NULL,'System','2022-03-27 15:50:27');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (140,'Travelling Ticket Examiner',110,'System',NULL,'System','2022-03-27 15:58:31');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (141,'Checker (Goods)',122,'System',NULL,'System','2022-03-27 15:59:38');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (142,'Ticket Collector',62,'System',NULL,'System','2022-03-27 16:01:22');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (143,'Sleeping Car Attendant',21,'System',NULL,'System','2022-03-27 16:04:02');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (144,'ICT Asst.',18,'System',NULL,'System','2022-03-27 16:06:27');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (145,'Engine Driver Aide',540,'System',NULL,'System','2022-03-27 16:07:30');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (146,'Basic Technician(Radio)',1,'System',NULL,'System','2022-03-27 16:12:28');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (147,'Basic Technician(Line)',65,'System',NULL,'System','2022-03-27 16:13:05');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (148,'Basic Technician(Design)',5,'System',NULL,'System','2022-03-27 16:15:30');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (149,'Basic Technician(Handiman)',7,'System',NULL,'System','2022-03-27 16:17:22');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (150,'Basic Technician(Marker)',6,'System',NULL,'System','2022-03-27 16:18:10');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (151,'Basic Technician(Locks)',1,'System',NULL,'System','2022-03-27 16:19:44');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (152,'Basic Technician(Plumbing)',14,'System',NULL,'System','2022-03-27 16:20:54');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (153,'Basic Technician(Tools-Heat)',1,'System',NULL,'System','2022-03-27 16:21:14');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (154,'Basic Technician(Type Writer Repair)',3,'System',NULL,'System','2022-03-27 16:21:38');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (155,'Basic Technician(Smithy)',105,'System',NULL,'System','2022-03-27 16:22:15');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (156,'Basic Technician(Mould)',35,'System',NULL,'System','2022-03-27 16:22:53');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (157,'Basic Technician(Furnace)',15,'System',NULL,'System','2022-03-27 16:23:33');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (158,'Basic Technician(Sand Machine)',3,'System',NULL,'System','2022-03-27 16:24:21');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (159,'Basic Technician(Metal Plate)',1,'System',NULL,'System','2022-03-27 16:25:50');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (160,'Basic Technician(White Metal)',6,'System',NULL,'System','2022-03-27 16:26:15');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (161,'Basic Technician(Tinker)',16,'System',NULL,'System','2022-03-27 16:26:37');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (162,'Basic Technician(Phreatic - Block)',3,'System',NULL,'System','2022-03-27 16:28:01');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (163,'Basic Technician(Copper)',2,'System',NULL,'System','2022-03-27 16:28:29');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (164,'Basic Technician(Electroplate)',2,'System',NULL,'System','2022-03-27 16:29:10');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (165,'Basic Technician(Engraving)',3,'System',NULL,'System','2022-03-27 16:29:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (166,'Basic Technician(Drill Machine)',5,'System',NULL,'System','2022-03-27 16:31:13');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (167,'Basic Technician(Process Machine)',2,'System',NULL,'System','2022-03-28 10:33:34');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (168,'Basic Technician(Carpentry)',367,'System',NULL,'System','2022-03-28 10:35:35');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (169,'Basic Technician(Rattan)',4,'System',NULL,'System','2022-03-28 10:36:11');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (170,'Basic Technician(Glass)',1,'System',NULL,'System','2022-03-28 10:36:40');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (171,'Basic Technician(Sawing)',8,'System',NULL,'System','2022-03-28 10:37:13');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (172,'Basic Technician(Plant)',2,'System',NULL,'System','2022-03-28 10:37:34');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (173,'Basic Technician(Saw Dress)',10,'System',NULL,'System','2022-03-28 10:37:58');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (174,'Basic Technician(Crane)',28,'System',NULL,'System','2022-03-28 10:38:22');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (175,'Basic Technician(Buldozer)',1,'System',NULL,'System','2022-03-28 10:38:48');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (176,'Basic Technician(Tractor Showel)',3,'System',NULL,'System','2022-03-28 10:39:10');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (177,'Basic Technician(Road Roller)',1,'System',NULL,'System','2022-03-28 10:39:32');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (178,'Basic Technician(Pump)',19,'System',NULL,'System','2022-03-28 10:39:51');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (179,'Basic Technician(Sign Writer)',7,'System',NULL,'System','2022-03-28 10:40:10');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (180,'Basic Technician (Paint)',159,'System',NULL,'System','2022-03-28 10:41:24');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (181,'Basic Technician(Polish)',10,'System',NULL,'System','2022-03-28 10:42:40');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (182,'Basic Technician(Upholstery)',10,'System',NULL,'System','2022-03-28 10:43:45');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (183,'Basic Technician(Progress)',50,'System',NULL,'System','2022-03-28 10:44:07');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (184,'Basic Technician(Auto Truck)',15,'System',NULL,'System','2022-03-28 10:44:40');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (185,'Basic Technician(Watch Repair)',8,'System',NULL,'System','2022-03-28 10:44:59');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (186,'Basic Technician(Dive)',1,'System',NULL,'System','2022-03-28 10:45:20');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (187,'Basic Technician(Mason)',312,'System',NULL,'System','2022-03-28 10:45:50');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (188,'Basic Technician(Gang)',236,'System',NULL,'System','2022-03-28 10:46:14');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (189,'Basic Technician(Chain)',26,'System',NULL,'System','2022-03-28 10:46:40');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (190,'Basic Technician(Spanner)',180,'System',NULL,'System','2022-03-28 10:47:41');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (191,'Basic Technician(Store)',120,'System',NULL,'System','2022-03-28 10:48:07');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (192,'Basic Technician(Blasting Machine)',4,'System',NULL,'System','2022-03-28 10:48:30');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (193,'Basic Technician(Tool Repair)',4,'System',NULL,'System','2022-03-28 10:48:48');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (194,'Basic Technician(Firstaid)',3,'System',NULL,'System','2022-03-28 10:49:18');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (195,'Basic Technician(Electric Hammer)',1,'System',NULL,'System','2022-03-28 10:49:34');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (196,'Basic Technician(Motor Trolley)',7,'System',NULL,'System','2022-03-28 10:49:54');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (197,'Basic Technician(Traverser)',1,'System',NULL,'System','2022-03-28 10:50:11');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (198,'Basic Technician(Machine Minder)',19,'System',NULL,'System','2022-03-28 10:50:29');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (199,'Basic Technician(Trolly)',114,'System',NULL,'System','2022-03-28 10:51:29');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (200,'Basic Technician(Nobbing)',87,'System',NULL,'System','2022-03-28 10:51:52');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (201,'Basic Technician(Laboratory)',6,'System',NULL,'System','2022-03-28 10:52:15');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (202,'Basic Technician(Cangany)',39,'System',NULL,'System','2022-03-28 10:55:02');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (203,'Basic Technician(Lathe)',198,'System',NULL,'System','2022-03-28 10:55:26');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (204,'Basic Technician(Stationary Plan Operetor)',16,'System',NULL,'System','2022-03-28 10:55:55');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (205,'Basic Technician(Core-Maker)',2,'System',NULL,'System','2022-03-28 10:56:14');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (206,'Basic Technician(Crane Fire Extinguisher)',2,'System',NULL,'System','2022-03-28 10:56:34');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (207,'Railway Technician Aide',2978,'System',NULL,'System','2022-03-28 10:56:57');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (208,'Railway Operation Aide (Policmen)',471,'System',NULL,'System','2022-03-28 10:57:39');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (209,'Railway Operation Aide (Pointsmen)',477,'System',NULL,'System','2022-03-28 10:57:59');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (210,'Fork Lift Driver',1,'System',NULL,'System','2022-03-28 11:01:13');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (211,'Driver(Motor Vehicle)',112,'System',NULL,'System','2022-03-28 11:03:23');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (212,'Survey Aide',38,'System',NULL,'System','2022-03-28 11:03:46');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (213,'Bungalow Keeper',23,'System',NULL,'System','2022-03-28 11:04:10');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (214,'Office Employee Service',419,'System',NULL,'System','2022-03-28 11:06:01');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (215,'Running Bungalow Asst.',23,'System',NULL,'System','2022-03-28 11:06:36');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (216,'Railway  Work Aide',4043,'System',NULL,'System','2022-03-28 11:07:12');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (217,'Work Yard Shunter',2,'System',NULL,'System','2022-03-28 11:07:28');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (218,'Document Aide',9,'System',NULL,'System','2022-03-28 11:07:40');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (219,'Woman Rest House Servant',5,'System',NULL,'System','2022-03-28 11:08:00');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (220,'Multipurpose Development Task Assistant',5,'System',NULL,'System','2022-03-28 11:08:00');
insert  into `designation`(`Id`,`DesignationName`,`ApprovedCadre`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (221,'Graduate Trainee',5,'System',NULL,'System','2022-03-28 11:08:00');

UNLOCK TABLES;

/*Table structure for table `designationtype` */

DROP TABLE IF EXISTS `designationtype`;

CREATE TABLE `designationtype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DesignationTypeName` varchar(2000) NOT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `designationtype` */

LOCK TABLES `designationtype` WRITE;

insert  into `designationtype`(`Id`,`DesignationTypeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (1,'Permanent','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designationtype`(`Id`,`DesignationTypeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (2,'Casual','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designationtype`(`Id`,`DesignationTypeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (3,'Contract Basis','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `designationtype`(`Id`,`DesignationTypeName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (4,'Other','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');

UNLOCK TABLES;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NICNumber` varchar(100) NOT NULL DEFAULT '0',
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `DateOfBirth` date NOT NULL,
  `GenderId` int(11) NOT NULL,
  `SubDepartmentId` int(11) NOT NULL,
  `SectionId` int(11) NOT NULL,
  `DesignationId` int(11) NOT NULL,
  `CabinetOfficeId` int(11) NOT NULL,
  `DesignationTypeId` int(11) NOT NULL,
  `ServiceLevelId` int(11) NOT NULL,
  `ServiceCategoryId` int(11) NOT NULL,
  `ClassGradeId` int(11) NOT NULL,
  `AppointmentDate` date NOT NULL,
  `AppointmentDateToSLR` date NOT NULL,
  `RetirementDate` date NOT NULL,
  `SalaryStructureId` int(11) NOT NULL,
  `EmployeeStatusId` int(11) NOT NULL,
  `ComputerNo` varchar(100) DEFAULT '0',
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `DeletedBy` varchar(100) DEFAULT NULL,
  `DeletedTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `SubDepartmentId` (`SubDepartmentId`),
  KEY `DesignationId` (`DesignationId`),
  KEY `CabinetOfficeId` (`CabinetOfficeId`),
  KEY `ServiceCategoryId` (`ServiceCategoryId`),
  KEY `ServiceLevelId` (`ServiceLevelId`),
  KEY `ClassGradeId` (`ClassGradeId`),
  KEY `SalaryStructureId` (`SalaryStructureId`),
  KEY `EmployeeStatusId` (`EmployeeStatusId`),
  KEY `DesignationTypeId` (`DesignationTypeId`),
  KEY `GenderId` (`GenderId`),
  KEY `SectionId` (`SectionId`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`SubDepartmentId`) REFERENCES `subdepartment` (`Id`),
  CONSTRAINT `employee_ibfk_10` FOREIGN KEY (`GenderId`) REFERENCES `gender` (`Id`),
  CONSTRAINT `employee_ibfk_11` FOREIGN KEY (`SectionId`) REFERENCES `section` (`Id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`DesignationId`) REFERENCES `designation` (`Id`),
  CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`CabinetOfficeId`) REFERENCES `cabinetoffice` (`Id`),
  CONSTRAINT `employee_ibfk_4` FOREIGN KEY (`ServiceCategoryId`) REFERENCES `servicecategory` (`Id`),
  CONSTRAINT `employee_ibfk_5` FOREIGN KEY (`ServiceLevelId`) REFERENCES `servicelevel` (`Id`),
  CONSTRAINT `employee_ibfk_6` FOREIGN KEY (`ClassGradeId`) REFERENCES `classgrade` (`Id`),
  CONSTRAINT `employee_ibfk_7` FOREIGN KEY (`SalaryStructureId`) REFERENCES `salarystructure` (`Id`),
  CONSTRAINT `employee_ibfk_8` FOREIGN KEY (`EmployeeStatusId`) REFERENCES `employeestatus` (`Id`),
  CONSTRAINT `employee_ibfk_9` FOREIGN KEY (`DesignationTypeId`) REFERENCES `designationtype` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1100035 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

LOCK TABLES `employee` WRITE;

insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100000,'-','superadmin','superadmin',NULL,'1972-10-18',1,1,2,57,11,1,1,5,3,'2017-01-23','2022-09-06','2029-10-18',1,1,'1234',1,'system','2022-02-16 00:00:00','admin','2022-02-16 20:54:13',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100001,'-','T.W.P.M. ','Perera',NULL,'1950-01-01',1,1,2,163,11,1,3,5,3,'2022-01-13','2022-09-06','2022-01-20',1,1,'1234',0,'admin1','2021-03-20 00:00:00','admin','2022-05-09 09:50:12',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100002,'-','T.L','Renuka',NULL,'1966-07-13',2,1,2,163,12,1,3,5,7,'2001-11-15','2022-09-06','2023-07-13',9,1,'1430',0,'admin1','2022-01-28 00:00:00','admin','2022-02-14 18:01:22',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100003,'-','G.C.M.','De Silva',NULL,'1984-12-31',2,1,2,163,11,1,3,5,7,'2010-02-01','2022-09-06','2041-12-31',9,1,'2453',0,'admin1','2022-01-28 00:00:00','admin','2022-02-15 01:37:04',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100004,'','B.D.D','Thilakarathna',NULL,'1975-07-03',2,1,2,163,11,1,3,5,8,'2000-05-22','2022-09-06','2032-07-03',9,1,'2468',0,'admin1','2022-01-28 00:00:00','admin','2022-01-28 15:27:04',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100005,'-','R.R.H','Gunarathna',NULL,'1988-12-21',1,1,2,163,11,1,3,5,8,'2019-07-01','2022-09-06','2045-12-21',9,1,' ',0,'admin1','2022-01-28 00:00:00','admin','2022-02-11 12:45:24',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100006,'','K.L.J','Samanmali',NULL,'1992-06-18',2,1,2,163,11,1,3,5,8,'2019-07-01','2022-09-06','2049-06-18',9,1,'2457',0,'superuser1','2022-01-28 00:00:00','admin','2022-01-28 15:19:30',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100007,'','J.A.D.G.P','Jayakodi',NULL,'1975-02-02',2,1,2,116,11,1,3,13,5,'2005-09-02','2022-09-06','2035-09-02',9,1,'1203',0,'superuser1','2022-01-28 00:00:00','admin','2022-01-28 15:23:53',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100008,'','L.D.W','Perera',NULL,'1988-11-05',1,1,2,163,11,1,3,5,8,'2020-02-07','2022-09-06','2045-11-05',9,1,'2459',0,'superuser1','2022-01-31 00:00:00','admin','2022-01-31 09:31:48',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100009,'','G.M.A','Thilakarathne',NULL,'1989-01-01',2,1,2,163,11,1,3,5,8,'2020-02-11','2022-09-06','2046-01-01',9,1,'1449',0,'superuser1','2022-01-31 00:00:00','admin','2022-01-31 09:34:32',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100010,'','U.H.A','Kularathne',NULL,'1985-02-16',2,1,2,163,11,1,3,5,8,'2020-03-17','2022-09-06','2042-02-16',9,1,'1431',0,'superuser1','2022-01-31 00:00:00','admin','2022-01-31 09:36:43',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100011,'','D.W.A.P','Kumara',NULL,'1980-08-10',1,1,2,163,11,1,3,5,7,'2001-11-15','2022-09-06','2037-08-10',9,1,'1429',0,'user1','2022-01-31 00:00:00','admin','2022-01-31 12:00:06',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100012,'','R','Rathnaweera',NULL,'1977-08-26',1,1,2,163,11,1,3,5,7,'2001-11-15','2022-09-06','2034-08-26',9,1,'2466',0,'user1','2022-01-31 00:00:00','admin','2022-01-31 12:03:19',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100013,'722921518V','K.J.A.G.P','Jayawardhana',NULL,'1972-10-18',1,1,2,57,11,1,1,5,3,'2017-01-24','2022-09-06','2029-10-18',1,1,'2450',0,'user1','2022-01-31 00:00:00','admin','2022-05-09 09:49:30',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100014,'','T','Kishanthan',NULL,'1981-01-18',1,1,2,57,11,1,1,5,3,'2019-04-08','2022-09-06','2038-01-18',1,1,'2451',0,'user1','2022-01-31 00:00:00','admin','2022-01-31 12:09:53',NULL,NULL);
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100029,'13232','PRASAD','VBNVB','vcvbcvccvb','2022-09-05',1,1,2,1,11,1,1,1,1,'2022-09-06','2022-09-06','2022-09-06',1,1,'3434',1,'user1','2022-09-05 21:24:50',NULL,NULL,'user1','2022-09-06 17:25:20');
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100030,'132322','PRASAD','VBNVB','vcvbcvccvb','2022-09-05',1,1,2,1,11,1,1,1,1,'2022-09-06','2022-09-06','2022-09-06',1,1,'3434',1,'user1','2022-09-05 21:27:23',NULL,NULL,'user1','2022-09-06 17:30:09');
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100031,'13232143','Compaq','510','vcvbcvccvb','2022-09-05',1,1,2,1,11,1,1,1,1,'2022-09-08','2022-09-06','2022-09-07',1,1,'3434',1,'user1','2022-09-05 21:32:18',NULL,NULL,'user1','2022-09-06 17:28:18');
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100032,'132320','Compaq','510','vcvbcvccvb','2022-09-05',1,1,2,1,11,1,1,1,1,'2022-09-08','2022-09-06','2022-09-07',1,1,'3434',1,'user1','2022-09-05 21:42:04',NULL,NULL,'user1','2022-09-06 18:41:41');
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100033,'1323200','Compaq','510','vcvbcvccvb','2022-09-05',1,1,2,1,11,1,1,1,1,'2022-09-08','2022-09-06','2022-09-07',1,1,'3434',1,'user1','2022-09-05 21:43:12',NULL,NULL,'user1','2022-09-06 18:36:43');
insert  into `employee`(`Id`,`NICNumber`,`FirstName`,`LastName`,`address`,`DateOfBirth`,`GenderId`,`SubDepartmentId`,`SectionId`,`DesignationId`,`CabinetOfficeId`,`DesignationTypeId`,`ServiceLevelId`,`ServiceCategoryId`,`ClassGradeId`,`AppointmentDate`,`AppointmentDateToSLR`,`RetirementDate`,`SalaryStructureId`,`EmployeeStatusId`,`ComputerNo`,`IsDeleted`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`,`DeletedBy`,`DeletedTime`) values (1100034,'13232211','PRASAD','VBNVB','vcvbcvccvb','2022-09-07',1,1,2,1,11,1,1,1,1,'2022-09-08','2022-09-09','2022-09-08',1,1,'3434',1,'user1','2022-09-06 10:58:19',NULL,NULL,'user1','2022-09-06 18:42:00');

UNLOCK TABLES;

/*Table structure for table `employeestatus` */

DROP TABLE IF EXISTS `employeestatus`;

CREATE TABLE `employeestatus` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeStatusName` varchar(2000) NOT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `employeestatus` */

LOCK TABLES `employeestatus` WRITE;

insert  into `employeestatus`(`Id`,`EmployeeStatusName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (1,'Active','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `employeestatus`(`Id`,`EmployeeStatusName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (2,'Inactive','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `employeestatus`(`Id`,`EmployeeStatusName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (3,'Inactive-Resigned','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `employeestatus`(`Id`,`EmployeeStatusName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (4,'Inactive-Retired','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `employeestatus`(`Id`,`EmployeeStatusName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (5,'Inactive-Vacation of Post','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `employeestatus`(`Id`,`EmployeeStatusName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (6,'Inactive-Dead','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `employeestatus`(`Id`,`EmployeeStatusName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (7,'Inactive-Dismissal','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');

UNLOCK TABLES;

/*Table structure for table `gender` */

DROP TABLE IF EXISTS `gender`;

CREATE TABLE `gender` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `GenderName` varchar(2000) NOT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `gender` */

LOCK TABLES `gender` WRITE;

insert  into `gender`(`Id`,`GenderName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (1,'Male','System','2021-03-20 10:55:35','System','2021-03-20 10:55:35');
insert  into `gender`(`Id`,`GenderName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (2,'Female','System','2021-03-20 10:55:35','System','2021-03-20 10:55:35');

UNLOCK TABLES;

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

LOCK TABLES `registration` WRITE;

insert  into `registration`(`id`,`roomno`,`seater`,`feespm`,`foodstatus`,`stayfrom`,`duration`,`course`,`regno`,`firstName`,`middleName`,`lastName`,`gender`,`contactno`,`emailid`,`egycontactno`,`guardianName`,`guardianRelation`,`guardianContactno`,`corresAddress`,`corresCIty`,`corresState`,`corresPincode`,`pmntAddress`,`pmntCity`,`pmnatetState`,`pmntPincode`,`postingDate`,`updationDate`) values (1,100,5,8000,1,'2020-08-01',6,'Bachelor  of Technology',10806121,'Anuj','','kumar','male',1234567890,'ak@gmail.com',1236547890,'ABC','XYZ',98756320000,'ABC 12345 XYZ Street','New Delhi','Delhi (NCT)',110001,'ABC 12345 XYZ Street','New Delhi','Delhi (NCT)',110001,'2020-07-20 20:28:26',NULL);

UNLOCK TABLES;

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(100) NOT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

LOCK TABLES `role` WRITE;

insert  into `role`(`Id`,`RoleName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (1,'SYSTEMADMIN','System','2021-03-20 10:55:35','System','2021-03-20 10:55:35');
insert  into `role`(`Id`,`RoleName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (2,'ADMIN','System','2021-03-20 10:55:35','System','2021-03-20 10:55:35');
insert  into `role`(`Id`,`RoleName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (3,'SUPERUSER','System','2022-02-15 13:14:02','System','2022-02-15 13:14:02');
insert  into `role`(`Id`,`RoleName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (4,'USER','System','2022-02-15 13:14:02','System','2022-02-15 13:14:02');

UNLOCK TABLES;

/*Table structure for table `rooms` */

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `room_no` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `rooms` */

LOCK TABLES `rooms` WRITE;

insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (3,2,200,6000,'2020-04-12 07:00:58');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (4,3,112,4000,'2020-04-12 07:01:07');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (5,5,132,2000,'2020-04-12 07:01:15');

UNLOCK TABLES;

/*Table structure for table `salarystructure` */

DROP TABLE IF EXISTS `salarystructure`;

CREATE TABLE `salarystructure` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SalaryCode` varchar(2000) NOT NULL,
  `ServiceCategory` varchar(2000) NOT NULL,
  `BaseSalary` decimal(10,2) NOT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `salarystructure` */

LOCK TABLES `salarystructure` WRITE;

insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (1,'SL 1-2016','Executive','47615.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (2,'SL 3-2016','Senior executive/MO Specialists','88000.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (3,'MN 1-2016','Management Assistants Seg 2','27140.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (4,'MN 2-2016','Management Assistants Seg 1','28940.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (5,'MN 3-2016','MA Supervisory Non-Tech/Tech','31040.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (6,'MN 4-2016','Associate Officer','31490.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (7,'MN 6-2016','Field/Office based Officer Seg 1','36585.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (8,'MN 7-2016','Management Assistants Supra','41580.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (9,'MT 1-2016','MA Technical Seg 3','29840.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (10,'MT 2-2016','MA Technical Seg 2','30140.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (11,'RS 1-2016','Police/Regulatory Services','29540.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (12,'RS 2-2016','Police/Regulatory Services','32010.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (13,'RS 3-2016','Police/Regulatory Services','32790.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (14,'RS 4-2016','Police/Regulatory Services','37030.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (15,'PL 1-2016','Primary Level Unskilled','24250.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (16,'PL 2-2016','Primary Level Semi-Skilled','25250.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (17,'PL 3-2016','Primary Level Skilled','25790.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `salarystructure`(`Id`,`SalaryCode`,`ServiceCategory`,`BaseSalary`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (18,'No_Salary_Code_16500','16500','16500.00','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');

UNLOCK TABLES;

/*Table structure for table `section` */

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SectionCode` varchar(5) DEFAULT NULL,
  `SectionName` varchar(2000) NOT NULL,
  `Address` varchar(2000) DEFAULT NULL,
  `HeadofSectionId` int(20) DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT '0',
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `HeadofSectionId` (`HeadofSectionId`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`HeadofSectionId`) REFERENCES `employee` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `section` */

LOCK TABLES `section` WRITE;

insert  into `section`(`Id`,`SectionCode`,`SectionName`,`Address`,`HeadofSectionId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (1,'N/A','','',1100001,0,'admin','0000-00-00 00:00:00','System','2022-01-04 00:00:00');
insert  into `section`(`Id`,`SectionCode`,`SectionName`,`Address`,`HeadofSectionId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (2,'DPU','Data Processing Unit','',1100001,0,'admin','0000-00-00 00:00:00','System','2022-02-11 11:51:04');

UNLOCK TABLES;

/*Table structure for table `servicecategory` */

DROP TABLE IF EXISTS `servicecategory`;

CREATE TABLE `servicecategory` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ServiceCode` varchar(2000) NOT NULL,
  `ServiceName` varchar(2000) NOT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `servicecategory` */

LOCK TABLES `servicecategory` WRITE;

insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (1,'DEPT','Departmental','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (2,'SLAcS','Sri Lanka Accountants\' Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (3,'SLEgS','Sri Lanka Engineering Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (4,'SLAS','Sri Lanka Administrative Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (5,'SLICTS','Sri Lanka Information and Communication Technology Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (6,'SLPS','Sri Lanka Planning Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (7,'SLSuS','Sri Lanka Survey Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (8,'SLSS','Sri Lanka Scientific Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (9,'MSOS','Management Service Officer Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (10,'SLTS','Sri Lanka Technological Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (11,'TS','Government Translators\' Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (12,'DOS','Development Officer Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (13,'OES','Office Employees\' Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (14,'DS','Driver Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (15,'SLMass','Sri Lanka Manum Sahayaka Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicecategory`(`Id`,`ServiceCode`,`ServiceName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (16,'RCS','Railway Clerk Service','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');

UNLOCK TABLES;

/*Table structure for table `servicelevel` */

DROP TABLE IF EXISTS `servicelevel`;

CREATE TABLE `servicelevel` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ServiceLevelName` varchar(2000) NOT NULL,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `servicelevel` */

LOCK TABLES `servicelevel` WRITE;

insert  into `servicelevel`(`Id`,`ServiceLevelName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (1,'Senior','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicelevel`(`Id`,`ServiceLevelName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (2,'Tertiary','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicelevel`(`Id`,`ServiceLevelName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (3,'Secondary','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');
insert  into `servicelevel`(`Id`,`ServiceLevelName`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (4,'Primary','System','2021-03-20 10:55:36','System','2021-03-20 10:55:36');

UNLOCK TABLES;

/*Table structure for table `states` */

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `State` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `states` */

LOCK TABLES `states` WRITE;

insert  into `states`(`id`,`State`) values (1,'Andaman and Nicobar Island (UT)');
insert  into `states`(`id`,`State`) values (2,'Andhra Pradesh');
insert  into `states`(`id`,`State`) values (3,'Arunachal Pradesh');
insert  into `states`(`id`,`State`) values (4,'Assam');
insert  into `states`(`id`,`State`) values (5,'Bihar');
insert  into `states`(`id`,`State`) values (6,'Chandigarh (UT)');
insert  into `states`(`id`,`State`) values (7,'Chhattisgarh');
insert  into `states`(`id`,`State`) values (8,'Dadra and Nagar Haveli (UT)');
insert  into `states`(`id`,`State`) values (9,'Daman and Diu (UT)');
insert  into `states`(`id`,`State`) values (10,'Delhi (NCT)');
insert  into `states`(`id`,`State`) values (11,'Goa');
insert  into `states`(`id`,`State`) values (12,'Gujarat');
insert  into `states`(`id`,`State`) values (13,'Haryana');
insert  into `states`(`id`,`State`) values (14,'Himachal Pradesh');
insert  into `states`(`id`,`State`) values (15,'Jammu and Kashmir');
insert  into `states`(`id`,`State`) values (16,'Jharkhand');
insert  into `states`(`id`,`State`) values (17,'Karnataka');
insert  into `states`(`id`,`State`) values (18,'Kerala');
insert  into `states`(`id`,`State`) values (19,'Lakshadweep (UT)');
insert  into `states`(`id`,`State`) values (20,'Madhya Pradesh');
insert  into `states`(`id`,`State`) values (21,'Maharashtra');
insert  into `states`(`id`,`State`) values (22,'Manipur');
insert  into `states`(`id`,`State`) values (23,'Meghalaya');
insert  into `states`(`id`,`State`) values (24,'Mizoram');
insert  into `states`(`id`,`State`) values (25,'Nagaland');
insert  into `states`(`id`,`State`) values (26,'Odisha');
insert  into `states`(`id`,`State`) values (27,'Puducherry (UT)');
insert  into `states`(`id`,`State`) values (28,'Punjab');
insert  into `states`(`id`,`State`) values (29,'Rajastha');
insert  into `states`(`id`,`State`) values (30,'Sikkim');
insert  into `states`(`id`,`State`) values (31,'Tamil Nadu');
insert  into `states`(`id`,`State`) values (32,'Telangana');
insert  into `states`(`id`,`State`) values (33,'Tripura');
insert  into `states`(`id`,`State`) values (34,'Uttarakhand');
insert  into `states`(`id`,`State`) values (35,'Uttar Pradesh');
insert  into `states`(`id`,`State`) values (36,'West Bengal');

UNLOCK TABLES;

/*Table structure for table `subdepartment` */

DROP TABLE IF EXISTS `subdepartment`;

CREATE TABLE `subdepartment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SubDepartmentCode` varchar(5) NOT NULL,
  `SubDepartmentName` varchar(2000) NOT NULL,
  `Address` varchar(2000) DEFAULT NULL,
  `HeadofDepartmentId` int(11) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `HeadofDepartmentId` (`HeadofDepartmentId`),
  CONSTRAINT `subdepartment_ibfk_1` FOREIGN KEY (`HeadofDepartmentId`) REFERENCES `employee` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `subdepartment` */

LOCK TABLES `subdepartment` WRITE;

insert  into `subdepartment`(`Id`,`SubDepartmentCode`,`SubDepartmentName`,`Address`,`HeadofDepartmentId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (1,'GMR','General Manager Office','Maradana-HQ',1100000,0,'System','2021-03-20 10:55:35','System','2021-03-20 10:55:35');
insert  into `subdepartment`(`Id`,`SubDepartmentCode`,`SubDepartmentName`,`Address`,`HeadofDepartmentId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (2,'CAR','Chief Accountant of Railways Sub Department','Maradana-HQ',1100000,0,'admin','2021-12-18 00:24:54','System','2021-03-20 10:55:35');
insert  into `subdepartment`(`Id`,`SubDepartmentCode`,`SubDepartmentName`,`Address`,`HeadofDepartmentId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (3,'COM','Deputy General Manager(Commerce) Sub Department','Maradana-HQ',1100000,0,'System','2021-03-20 10:55:35','System','2021-03-20 10:55:35');
insert  into `subdepartment`(`Id`,`SubDepartmentCode`,`SubDepartmentName`,`Address`,`HeadofDepartmentId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (4,'SRS','Dy. General Manager(Procument) Sub Department','Maradana-HQ',1100000,0,'System','2021-03-20 10:55:35','System','2021-03-20 10:55:35');
insert  into `subdepartment`(`Id`,`SubDepartmentCode`,`SubDepartmentName`,`Address`,`HeadofDepartmentId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (5,'OPS','Dy. General Manager(Transport) Sub Department','Maradana-HQ',1100000,0,'System','2021-09-02 17:47:27','System','2021-03-20 10:55:35');
insert  into `subdepartment`(`Id`,`SubDepartmentCode`,`SubDepartmentName`,`Address`,`HeadofDepartmentId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (6,'CME','Chief Mechanical Engineer Sub Department','Ratmalana',1100000,0,'System','2021-03-20 10:55:35','System','2021-03-20 10:55:35');
insert  into `subdepartment`(`Id`,`SubDepartmentCode`,`SubDepartmentName`,`Address`,`HeadofDepartmentId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (7,'CEM','Chief Engineer Motive Power Sub Department','Dematagoda',1100000,0,'System','2021-03-20 10:55:35','System','2021-03-20 10:55:35');
insert  into `subdepartment`(`Id`,`SubDepartmentCode`,`SubDepartmentName`,`Address`,`HeadofDepartmentId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (8,'CEW','Chief Engineer Way and Works Sub Department','Maradana',1100000,0,'System','2021-09-20 19:25:52','System','2021-03-20 10:55:35');
insert  into `subdepartment`(`Id`,`SubDepartmentCode`,`SubDepartmentName`,`Address`,`HeadofDepartmentId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (9,'CST','Chief Engineer Signal and Telecommunication Sub Department','Dematagoda',1100000,0,'System','2021-12-07 02:11:18','System','2021-03-20 10:55:35');
insert  into `subdepartment`(`Id`,`SubDepartmentCode`,`SubDepartmentName`,`Address`,`HeadofDepartmentId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (10,'GTR','German Technical Training Center','Ratmalana',1100000,0,'System','2021-08-24 13:50:05','System','2021-03-20 10:55:35');
insert  into `subdepartment`(`Id`,`SubDepartmentCode`,`SubDepartmentName`,`Address`,`HeadofDepartmentId`,`IsDeleted`,`UpdatedBy`,`UpdatedTime`,`CreatedBy`,`CreatedTime`) values (11,'RPF','Superintendent of Railway Security Office','Colombo Fort',1100000,0,'System','2021-09-02 15:52:13','System','2021-03-20 10:55:35');

UNLOCK TABLES;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `EmployeeId` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(100) DEFAULT NULL,
  `UpdatedTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`,`Username`),
  KEY `RoleId` (`RoleId`),
  KEY `EmployeeId` (`EmployeeId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`RoleId`) REFERENCES `role` (`Id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

LOCK TABLES `user` WRITE;

insert  into `user`(`EmployeeId`,`Username`,`Password`,`RoleId`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`) values (1100000,'superadmin1','superadmin1',1,'superadmin1','2022-02-16 10:49:40','superadmin1','2022-09-05 06:09:42');
insert  into `user`(`EmployeeId`,`Username`,`Password`,`RoleId`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`) values (1100001,'admin1','admin1',2,'superadmin1','2021-03-20 10:55:36','superadmin1','2022-09-05 10:09:38');
insert  into `user`(`EmployeeId`,`Username`,`Password`,`RoleId`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`) values (1100002,'superuser1','superuser1',3,'superadmin1','2022-02-16 10:49:18','superadmin1','2022-02-16 10:49:18');
insert  into `user`(`EmployeeId`,`Username`,`Password`,`RoleId`,`CreatedBy`,`CreatedTime`,`UpdatedBy`,`UpdatedTime`) values (1100003,'user1','user1',4,'superadmin1','2022-02-16 10:49:40','superadmin1','2022-09-05 06:09:42');

UNLOCK TABLES;

/*Table structure for table `userlog` */

DROP TABLE IF EXISTS `userlog`;

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

LOCK TABLES `userlog` WRITE;

insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (6,3,'10806121','::1','','','2020-07-20 20:26:45');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (7,3,'test@gmail.com','::1','','','2022-08-21 17:34:04');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (8,3,'test@gmail.com','::1','','','2022-08-21 17:42:29');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (9,3,'test@gmail.com','::1','','','2022-08-21 17:54:46');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (10,3,'test@gmail.com','::1','','','2022-08-21 17:55:03');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (11,3,'test@gmail.com','::1','','','2022-08-21 17:59:46');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (12,3,'test@gmail.com','::1','','','2022-08-21 19:04:51');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (13,3,'test@gmail.com','::1','','','2022-08-21 19:05:04');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (14,3,'test@gmail.com','::1','','','2022-08-21 19:18:24');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (15,3,'test@gmail.com','::1','','','2022-08-21 19:24:46');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (16,3,'test@gmail.com','::1','','','2022-08-22 17:28:01');

UNLOCK TABLES;

/*Table structure for table `userregistration` */

DROP TABLE IF EXISTS `userregistration`;

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `userregistration` */

LOCK TABLES `userregistration` WRITE;

insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (3,'10806121','Anuj','','kumar','male',1234567890,'test@gmail.com','Test@123','2020-07-20 20:26:18',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (4,'12112','GFHGFH','CVVBNBV','VBNVB','male',2323232,'admin@gmail.com','1234','2022-08-22 17:46:15',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (5,'1212','fgfd','dfgfd','dfgf','male',34332,'dfjjhf@gmail.com','1234','2022-08-28 10:00:51',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (6,'1212j','AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA','dfgfd','BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB','male',34332,'admin55@gmail.com','1234','2022-08-28 10:11:07',NULL,NULL);

UNLOCK TABLES;

/* Procedure structure for procedure `searchEmp` */

/*!50003 DROP PROCEDURE IF EXISTS  `searchEmp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `searchEmp`(IN _Keyword VARCHAR(2000), IN _GenderId INT(11), IN _DesignationId INT(11), IN _ServiceLevelId INT(11), IN _SubDepartmentId INT(11), IN _SalaryStructureId INT(11))
BEGIN
DECLARE l_where_clause VARCHAR(1000) DEFAULT '';
	
IF _Keyword IS NOT NULL OR _GenderId<>0 OR _DesignationId<>0 OR _ServiceLevelId<>0 OR _SubDepartmentId<>0 OR _SalaryStructureId<>0 THEN
	SET l_where_clause='WHERE';
END IF;
IF _Keyword IS NOT NULL THEN
	SET l_where_clause=CONCAT(l_where_clause,' SearchText LIKE "%',_Keyword,'%"');
END IF;
IF _GenderId<>0 THEN
   IF l_where_clause<>'WHERE' THEN
	SET l_where_clause=CONCAT(l_where_clause,' AND');
   END IF;
	SET l_where_clause=CONCAT(l_where_clause, ' GenderId="',_GenderId,'"');
END IF;
IF _DesignationId<>0 THEN
   IF l_where_clause<>'WHERE' THEN
	SET l_where_clause=CONCAT(l_where_clause,' AND');
   END IF;
	SET l_where_clause=CONCAT(l_where_clause, ' DesignationId="',_DesignationId,'"');
END IF;
IF _ServiceLevelId<>0 THEN
   IF l_where_clause<>'WHERE' THEN
	SET l_where_clause=CONCAT(l_where_clause,' AND');
   END IF;
	SET l_where_clause=CONCAT(l_where_clause, ' ServiceLevelId="',_ServiceLevelId,'"');
END IF;
IF _SubDepartmentId<>0 THEN
   IF l_where_clause<>'WHERE' THEN
	SET l_where_clause=CONCAT(l_where_clause,' AND');
   END IF;
	SET l_where_clause=CONCAT(l_where_clause, ' SubDepartmentId="',_SubDepartmentId,'"');
END IF;
IF _SalaryStructureId<>0 THEN
   IF l_where_clause<>'WHERE' THEN
	SET l_where_clause=CONCAT(l_where_clause,' AND');
   END IF;
	SET l_where_clause=CONCAT(l_where_clause, ' SalaryStructureId="',_SalaryStructureId,'"');
END IF;
SET @SQL=CONCAT('SELECT Id, FirstName, LastName, SubDepartmentName, DesignationName, CabinetOfficeName, ServiceCategory, ServiceCode, ServiceName, ServiceLevelName, ClassGradeName,
	SalaryCode, ComputerNo, GenderName, DateOfBirth, AppointmentDate, RetirementDate, CreatedBy, CabinetOfficeId, RoleId, SearchText FROM employeesearchview ',l_where_clause,' ORDER BY LastName');
PREPARE s1 FROM @SQL;
EXECUTE s1;
DEALLOCATE PREPARE s1;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `searchSec` */

/*!50003 DROP PROCEDURE IF EXISTS  `searchSec` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `searchSec`(IN _Keyword VARCHAR(2000))
BEGIN
DECLARE l_where_clause VARCHAR(1000) DEFAULT '';
IF _Keyword IS NOT NULL THEN
	SET l_where_clause='WHERE';
END IF;
IF _Keyword IS NOT NULL THEN
	SET l_where_clause=CONCAT(l_where_clause,' SearchText LIKE "%',_Keyword,'%"');
END IF;
SET @SQL=CONCAT('SELECT Id, SectionCode, SectionName, HeadofSectiontId, Address, HeadFirstName, HeadLastName FROM sectionsearchview ',l_where_clause,' ORDER BY SectionCode');
PREPARE s1 FROM @SQL;
EXECUTE s1;
DEALLOCATE PREPARE s1;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `searchSub` */

/*!50003 DROP PROCEDURE IF EXISTS  `searchSub` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `searchSub`(IN _Keyword VARCHAR(2000))
BEGIN
DECLARE l_where_clause VARCHAR(1000) DEFAULT '';
IF _Keyword IS NOT NULL THEN
	SET l_where_clause='WHERE';
END IF;
IF _Keyword IS NOT NULL THEN
	SET l_where_clause=CONCAT(l_where_clause,' SearchText LIKE "%',_Keyword,'%"');
END IF;
SET @SQL=CONCAT('SELECT Id, SubDepartmentCode, SubDepartmentName, HeadofDepartmentId, Address, HeadFirstName, HeadLastName FROM subdepartmentsearchview ',l_where_clause,' ORDER BY SubDepartmentCode');
PREPARE s1 FROM @SQL;
EXECUTE s1;
DEALLOCATE PREPARE s1;
	
END */$$
DELIMITER ;

/*Table structure for table `employeesearchview` */

DROP TABLE IF EXISTS `employeesearchview`;

/*!50001 DROP VIEW IF EXISTS `employeesearchview` */;
/*!50001 DROP TABLE IF EXISTS `employeesearchview` */;

/*!50001 CREATE TABLE  `employeesearchview`(
 `Id` int(11) ,
 `FirstName` varchar(100) ,
 `LastName` varchar(100) ,
 `Address` varchar(100) ,
 `GenderId` int(11) ,
 `GenderName` varchar(2000) ,
 `SubDepartmentId` int(11) ,
 `SubDepartmentName` varchar(2000) ,
 `SectionId` int(11) ,
 `SectionName` varchar(2000) ,
 `EmployeeStatusId` int(11) ,
 `EmployeeStatusName` varchar(2000) ,
 `DesignationId` int(11) ,
 `DesignationName` varchar(2000) ,
 `DesignationTypeId` int(11) ,
 `DesignationTypeName` varchar(2000) ,
 `CabinetOfficeId` int(11) ,
 `CabinetOfficeName` varchar(2000) ,
 `ServiceCategoryId` int(11) ,
 `ServiceCode` varchar(2000) ,
 `ServiceName` varchar(2000) ,
 `ServiceLevelId` int(11) ,
 `ServiceLevelName` varchar(2000) ,
 `ClassGradeId` int(11) ,
 `ClassGradeName` varchar(2000) ,
 `DateOfBirth` date ,
 `AppointmentDate` date ,
 `RetirementDate` date ,
 `AppointmentDateToSLR` date ,
 `SalaryStructureId` int(11) ,
 `SalaryCode` varchar(2000) ,
 `ServiceCategory` varchar(2000) ,
 `ComputerNo` varchar(100) ,
 `NICNumber` varchar(100) ,
 `CreatedBy` varchar(100) ,
 `RoleId` int(11) ,
 `SearchText` text 
)*/;

/*Table structure for table `employeewithoutuserview` */

DROP TABLE IF EXISTS `employeewithoutuserview`;

/*!50001 DROP VIEW IF EXISTS `employeewithoutuserview` */;
/*!50001 DROP TABLE IF EXISTS `employeewithoutuserview` */;

/*!50001 CREATE TABLE  `employeewithoutuserview`(
 `Id` int(11) ,
 `EmployeeFullName` varchar(201) 
)*/;

/*Table structure for table `employeewithuserview` */

DROP TABLE IF EXISTS `employeewithuserview`;

/*!50001 DROP VIEW IF EXISTS `employeewithuserview` */;
/*!50001 DROP TABLE IF EXISTS `employeewithuserview` */;

/*!50001 CREATE TABLE  `employeewithuserview`(
 `EmployeeId` int(11) ,
 `FirstName` varchar(100) ,
 `LastName` varchar(100) ,
 `CabinetOfficeId` int(11) ,
 `Username` varchar(100) ,
 `Password` varchar(100) ,
 `RoleId` int(11) 
)*/;

/*Table structure for table `sectionsearchview` */

DROP TABLE IF EXISTS `sectionsearchview`;

/*!50001 DROP VIEW IF EXISTS `sectionsearchview` */;
/*!50001 DROP TABLE IF EXISTS `sectionsearchview` */;

/*!50001 CREATE TABLE  `sectionsearchview`(
 `Id` int(11) ,
 `SectionCode` varchar(5) ,
 `SectionName` varchar(2000) ,
 `HeadofSectionId` int(11) ,
 `HeadFirstName` varchar(100) ,
 `HeadLastName` varchar(100) ,
 `Address` varchar(2000) ,
 `SearchText` text 
)*/;

/*Table structure for table `subdepartmentsearchview` */

DROP TABLE IF EXISTS `subdepartmentsearchview`;

/*!50001 DROP VIEW IF EXISTS `subdepartmentsearchview` */;
/*!50001 DROP TABLE IF EXISTS `subdepartmentsearchview` */;

/*!50001 CREATE TABLE  `subdepartmentsearchview`(
 `Id` int(11) ,
 `SubDepartmentCode` varchar(5) ,
 `SubDepartmentName` varchar(2000) ,
 `HeadofDepartmentId` int(11) ,
 `HeadFirstName` varchar(100) ,
 `HeadLastName` varchar(100) ,
 `Address` varchar(2000) ,
 `SearchText` text 
)*/;

/*View structure for view employeesearchview */

/*!50001 DROP TABLE IF EXISTS `employeesearchview` */;
/*!50001 DROP VIEW IF EXISTS `employeesearchview` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employeesearchview` AS (select `e`.`Id` AS `Id`,`e`.`FirstName` AS `FirstName`,`e`.`LastName` AS `LastName`,`e`.`address` AS `Address`,`ge`.`Id` AS `GenderId`,`ge`.`GenderName` AS `GenderName`,`sd`.`Id` AS `SubDepartmentId`,`sd`.`SubDepartmentName` AS `SubDepartmentName`,`sn`.`Id` AS `SectionId`,`sn`.`SectionName` AS `SectionName`,`st`.`Id` AS `EmployeeStatusId`,`st`.`EmployeeStatusName` AS `EmployeeStatusName`,`ds`.`Id` AS `DesignationId`,`ds`.`DesignationName` AS `DesignationName`,`dt`.`Id` AS `DesignationTypeId`,`dt`.`DesignationTypeName` AS `DesignationTypeName`,`js`.`Id` AS `CabinetOfficeId`,`js`.`CabinetOfficeName` AS `CabinetOfficeName`,`sc`.`Id` AS `ServiceCategoryId`,`sc`.`ServiceCode` AS `ServiceCode`,`sc`.`ServiceName` AS `ServiceName`,`sl`.`Id` AS `ServiceLevelId`,`sl`.`ServiceLevelName` AS `ServiceLevelName`,`cg`.`Id` AS `ClassGradeId`,`cg`.`ClassGradeName` AS `ClassGradeName`,`e`.`DateOfBirth` AS `DateOfBirth`,`e`.`AppointmentDate` AS `AppointmentDate`,`e`.`RetirementDate` AS `RetirementDate`,`e`.`AppointmentDateToSLR` AS `AppointmentDateToSLR`,`ss`.`Id` AS `SalaryStructureId`,`ss`.`SalaryCode` AS `SalaryCode`,`ss`.`ServiceCategory` AS `ServiceCategory`,`e`.`ComputerNo` AS `ComputerNo`,`e`.`NICNumber` AS `NICNumber`,`e`.`CreatedBy` AS `CreatedBy`,`us`.`RoleId` AS `RoleId`,concat(`e`.`Id`,`e`.`FirstName`,`e`.`LastName`,`e`.`DateOfBirth`,`e`.`AppointmentDate`,`e`.`AppointmentDateToSLR`,`e`.`RetirementDate`,`cg`.`ClassGradeName`,`ds`.`DesignationName`,`es`.`EmployeeStatusName`,`dt`.`DesignationTypeName`,`js`.`CabinetOfficeName`,`ss`.`SalaryCode`,`ss`.`ServiceCategory`,`sc`.`ServiceCode`,`sc`.`ServiceName`,`sl`.`ServiceLevelName`,`sd`.`SubDepartmentCode`,`sd`.`SubDepartmentName`,`sn`.`SectionName`,`ge`.`GenderName`,`e`.`ComputerNo`,`e`.`NICNumber`) AS `SearchText` from (((((((((((((`employee` `e` join `classgrade` `cg` on((`cg`.`Id` = `e`.`ClassGradeId`))) join `designation` `ds` on((`ds`.`Id` = `e`.`DesignationId`))) join `employeestatus` `es` on((`es`.`Id` = `e`.`EmployeeStatusId`))) join `designationtype` `dt` on((`dt`.`Id` = `e`.`DesignationTypeId`))) join `cabinetoffice` `js` on((`js`.`Id` = `e`.`CabinetOfficeId`))) join `salarystructure` `ss` on((`ss`.`Id` = `e`.`SalaryStructureId`))) join `servicecategory` `sc` on((`sc`.`Id` = `e`.`ServiceCategoryId`))) join `servicelevel` `sl` on((`sl`.`Id` = `e`.`ServiceLevelId`))) join `subdepartment` `sd` on((`sd`.`Id` = `e`.`SubDepartmentId`))) join `section` `sn` on((`sn`.`Id` = `e`.`SectionId`))) join `gender` `ge` on((`ge`.`Id` = `e`.`GenderId`))) join `employeestatus` `st` on((`st`.`Id` = `e`.`GenderId`))) join `user` `us` on((`us`.`Username` = `e`.`CreatedBy`))) where (`e`.`IsDeleted` = 0) order by `e`.`Id` desc) */;

/*View structure for view employeewithoutuserview */

/*!50001 DROP TABLE IF EXISTS `employeewithoutuserview` */;
/*!50001 DROP VIEW IF EXISTS `employeewithoutuserview` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employeewithoutuserview` AS (select `e`.`Id` AS `Id`,concat(`e`.`FirstName`,' ',`e`.`LastName`) AS `EmployeeFullName` from (`employee` `e` left join `user` `u` on((`u`.`EmployeeId` = `e`.`Id`))) where ((`e`.`IsDeleted` = 0) and isnull(`u`.`Username`))) */;

/*View structure for view employeewithuserview */

/*!50001 DROP TABLE IF EXISTS `employeewithuserview` */;
/*!50001 DROP VIEW IF EXISTS `employeewithuserview` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employeewithuserview` AS (select `u`.`EmployeeId` AS `EmployeeId`,`e`.`FirstName` AS `FirstName`,`e`.`LastName` AS `LastName`,`e`.`CabinetOfficeId` AS `CabinetOfficeId`,`u`.`Username` AS `Username`,`u`.`Password` AS `Password`,`u`.`RoleId` AS `RoleId` from (`user` `u` left join `employee` `e` on((`u`.`EmployeeId` = `e`.`Id`))) where (`e`.`IsDeleted` = 0)) */;

/*View structure for view sectionsearchview */

/*!50001 DROP TABLE IF EXISTS `sectionsearchview` */;
/*!50001 DROP VIEW IF EXISTS `sectionsearchview` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sectionsearchview` AS (select `sc`.`Id` AS `Id`,`sc`.`SectionCode` AS `SectionCode`,`sc`.`SectionName` AS `SectionName`,`e`.`Id` AS `HeadofSectionId`,`e`.`FirstName` AS `HeadFirstName`,`e`.`LastName` AS `HeadLastName`,`sc`.`Address` AS `Address`,concat(`sc`.`Id`,`sc`.`SectionCode`,`sc`.`SectionName`,`e`.`FirstName`,`e`.`LastName`,`sc`.`Address`) AS `SearchText` from (`section` `sc` join `employee` `e` on((`e`.`Id` = `sc`.`HeadofSectionId`))) where (`sc`.`IsDeleted` = 0) order by `sc`.`Id` desc) */;

/*View structure for view subdepartmentsearchview */

/*!50001 DROP TABLE IF EXISTS `subdepartmentsearchview` */;
/*!50001 DROP VIEW IF EXISTS `subdepartmentsearchview` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `subdepartmentsearchview` AS (select `sd`.`Id` AS `Id`,`sd`.`SubDepartmentCode` AS `SubDepartmentCode`,`sd`.`SubDepartmentName` AS `SubDepartmentName`,`e`.`Id` AS `HeadofDepartmentId`,`e`.`FirstName` AS `HeadFirstName`,`e`.`LastName` AS `HeadLastName`,`sd`.`Address` AS `Address`,concat(`sd`.`Id`,`sd`.`SubDepartmentCode`,`sd`.`SubDepartmentName`,`e`.`FirstName`,`e`.`LastName`,`sd`.`Address`) AS `SearchText` from (`subdepartment` `sd` join `employee` `e` on((`e`.`Id` = `sd`.`HeadofDepartmentId`))) where (`sd`.`IsDeleted` = 0) order by `sd`.`Id` desc) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
