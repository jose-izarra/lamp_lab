DROP DATABASE IF EXISTS `demo`;
CREATE DATABASE `demo`;
USE `demo`;

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `description` text,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `person`
  VALUES
    (1,'Simpson','Homer','Nuclear Operator',36),
    (2,'Simpson','Marge','Lead Web Developer',34),
    (3,'Simpson','Bart','Hooligan',10),
    (4,'Simpson','Lisa','Future POTUS',8),
    (5,'Simpson','Maggie','Full time baby',1),
    (6,'Skinner','Seymour','School Principal',49),
    (7,'Krabappel','Edna','4th grade teacher',41),
    (8,'Burns','Charles','Tycoon',104),
    (9,'Flanders','Ned','Owner of The Leftorium',60),
    (10,'Szyslak','Moe','Bar owner',54)
;
