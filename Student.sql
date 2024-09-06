/*
SQLyog - Free MySQL GUI v5.17
Host - 5.5.1-m2-community : Database - technosoft
*********************************************************************
Server version : 5.5.1-m2-community
*/

SET NAMES utf8;
SET SQL_MODE='';

-- Create the database 'technosoft' if it does not already exist
create database if not exists `technosoft`;

-- Select the 'technosoft' database for use
USE `technosoft`;

-- Temporarily disable foreign key checks and set SQL mode
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

-- Drop the 'attend1' table if it exists, then create it
DROP TABLE IF EXISTS `attend1`;

CREATE TABLE `attend1` (
  `date` varchar(30) DEFAULT NULL,
  `faculty_id` varchar(30) DEFAULT NULL,
  `batch_id` varchar(30) DEFAULT NULL,
  `student_id` varchar(30) DEFAULT NULL,
  `student_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Drop the 'batch' table if it exists, then create it with primary key on 'batch_id'
DROP TABLE IF EXISTS `batch`;

CREATE TABLE `batch` (
  `batch_id` varchar(30) NOT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `days` varchar(30) DEFAULT NULL,
  `faculty_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert initial data into the 'batch' table
insert into `batch` (`batch_id`,`subject`,`days`,`faculty_id`) values ('101','Core java','25','001');
insert into `batch` (`batch_id`,`subject`,`days`,`faculty_id`) values ('102','Advance Java','35','002');
insert into `batch` (`batch_id`,`subject`,`days`,`faculty_id`) values ('103','PHP','40','003');

-- Drop the 'faculty' table if it exists, then create it with primary key on 'faculty_id'
DROP TABLE IF EXISTS `faculty`;

CREATE TABLE `faculty` (
  `faculty_id` varchar(30) NOT NULL,
  `ffname` varchar(30) DEFAULT NULL,
  `flname` varchar(30) DEFAULT NULL,
  `userid` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `salary` varchar(30) DEFAULT NULL,
  `opened` varchar(30) DEFAULT 'not_opened',
  PRIMARY KEY (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert initial data into the 'faculty' table
insert into `faculty` (`faculty_id`,`ffname`,`flname`,`userid`,`password`,`contact`,`salary`,`opened`) values ('001','Ankit','Mehra','ankit001','ankit','9900998729','25000','not_opened');
insert into `faculty` (`faculty_id`,`ffname`,`flname`,`userid`,`password`,`contact`,`salary`,`opened`) values ('002','Sonu','Nigam','sonu002','sonu','9900878987','30000','not_opened');
insert into `faculty` (`faculty_id`,`ffname`,`flname`,`userid`,`password`,`contact`,`salary`,`opened`) values ('003','Katrina','Kaif','katrina003','katrina','9425022909','25000','not_opened');

-- Drop the 'student' table if it exists, then create it with primary key on 'student_id'
DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` varchar(30) NOT NULL,
  `sfname` varchar(30) DEFAULT NULL,
  `slname` varchar(30) DEFAULT NULL,
  `userid` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `batchid` varchar(30) DEFAULT NULL,
  `opened` varchar(30) DEFAULT 'not_opened',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert initial data into the 'student' table
insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('001','Amit','Sharma','amit001','amitpass','male','9988776611','101','not_opened');
insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('002','Riya','Patel','riya002','riyapass','female','9876543210','101','not_opened');
insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('003','Vikas','Singh','vikas003','vikas123','male','9123456789','101','not_opened');
insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('004','Sneha','Reddy','sneha004','snehapass','female','9567890123','102','not_opened');
insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('005','Arjun','Verma','arjun005','arjunpass','male','9876512345','101','not_opened');
insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('006','Priya','Chauhan','priya006','priyapass','female','9638527410','103','not_opened');


-- Drop the 'subject' table if it exists, then create it with primary key on 'subject_id'
DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subject_id` varchar(30) NOT NULL,
  `subject_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert initial data into the 'subject' table
insert into `subject` (`subject_id`,`subject_name`) values ('201','Core java');
insert into `subject` (`subject_id`,`subject_name`) values ('202','Advance Java');
insert into `subject` (`subject_id`,`subject_name`) values ('203','PHP');

-- Restore previous SQL mode and foreign key checks
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
