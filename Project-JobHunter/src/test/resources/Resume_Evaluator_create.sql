DROP DATABASE IF EXISTS `augur`;
CREATE DATABASE IF NOT EXISTS `augur` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `augur`;

DROP TABLE IF EXISTS `personal_info`;

CREATE TABLE `personal_info` (
  `applicant_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `middle_name` varchar(64) NOT NULL,
  `prefix` varchar(3) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `date_of_birth` date NOT NULL,
  PRIMARY KEY (`applicant_id`)
  );

DROP TABLE IF EXISTS `contact_details`;

CREATE TABLE `contact_details` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_id` int(11) NOT NULL ,
  `street_name` varchar(64) NOT NULL,
  `apartment_number` varchar(64) NOT NULL,
  `zip_code` varchar(8) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `phone_number` varchar(20),
  PRIMARY KEY (`contact_id`)
  );

DROP TABLE IF EXISTS `work_experience`;

CREATE TABLE `work_experience` (
  `applicant_id` int(16) NOT NULL ,
  `organization_name` varchar(128) NOT NULL,
  `designation` varchar(128) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date,
  `duration_in_months` int(8),
  `email_address` varchar(64) NOT NULL,
  `description` varchar(1024) 
  );

DROP TABLE IF EXISTS `education`;

CREATE TABLE `education`(
  `edu_id` int(11) AUTO_INCREMENT,
  `applicant_id` int(11) NOT NULL,
  `univ_id` int(11) NOT NULL,
  `major` varchar(50),
  `minor` varchar(50),
  `degree_type` varchar(30),
   Primary Key(`edu_id`)
  );

DROP TABLE IF EXISTS `university`;

CREATE TABLE `university` (
  `univ_id` int(11),
  `univ_name` varchar(50) NOT NULL,
  `ranking`  int(11),
  `univ_score` float,
  PRIMARY KEY(`univ_id`)
  );


DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject`(
  `sub_id` int(11),
  `sub_name` varchar(60) NOT NULL,
  `description` varchar(200),
  PRIMARY KEY(`sub_id`)
  );
DROP TABLE IF EXISTS `subject_mapping`;

CREATE TABLE `subject_mapping`(
  `application_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `edu_id` int(11) NOT NULL
);

DROP TABLE IF EXISTS `project_details`;

CREATE TABLE `project_details` (
`project_id` int(15) NOT NULL AUTO_INCREMENT,
`project_name` varchar(64) NOT NULL,
`project_description` varchar(128) NOT NULL,
`project_domain` varchar(32) NOT NULL,
`project_technologies` varchar(50) NOT NULL,
PRIMARY KEY (`project_id`)
);

DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills` (
`skill_id` int(15) NOT NULL AUTO_INCREMENT ,
`skill_name` varchar(64) NOT NULL,
PRIMARY KEY (`skill_id`)
);
