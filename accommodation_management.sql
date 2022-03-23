CREATE DATABASE accommodation_management;
-- drop database management
use accommodation_management;

CREATE TABLE `manager` (
  `staffid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `clients` (
	`id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `rentdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `trailerpark` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `trailer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `trailernumber` int DEFAULT NULL,
  `trailerpark` int DEFAULT NULL,
  `manager` int DEFAULT NULL,
  `client` int DEFAULT NULL,
  `rentcharge` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `trailerpark` (`trailerpark`),
  KEY `manager` (`manager`),
  KEY `client` (`client`),
  CONSTRAINT `trailer_ibfk_1` FOREIGN KEY (`trailerpark`) REFERENCES `trailerpark` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `trailer_ibfk_2` FOREIGN KEY (`manager`) REFERENCES `manager` (`staffid`) ON DELETE CASCADE,
  CONSTRAINT `trailer_ibfk_3` FOREIGN KEY (`client`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `flats` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `address` varchar(20) DEFAULT NULL,
  `manager` int DEFAULT NULL,
  `client` int DEFAULT NULL,
  `rentcharge` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `manager` (`manager`),
  KEY `client` (`client`),
  CONSTRAINT `flats_ibfk_1` FOREIGN KEY (`manager`) REFERENCES `manager` (`staffid`) ON DELETE CASCADE,
  CONSTRAINT `flats_ibfk_2` FOREIGN KEY (`client`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert into manager( 
name) values ( 'toby');

insert into clients(name, rentdate)
values
('liffit', '2022-03-20'),
('tobbit','2022-01-12'),
('ben','2022-02-20'),
('johnte','2022-01-23'),
('simon','2022-04-20');

insert into trailerpark(Address) values ('avenue 12'),
('ronga'),('umoja');

insert into trailer(trailernumber, trailerpark, manager,client, rentcharge) values
(17, 5,2,13,1000),
(17, 6,2,14,1000),
(17, 7,2,15,1000),
(17, 5,2,16,1000),
(17, 6,2,17,1000);

insert into flats(address,manager,client, rentcharge)
values
('mlolongo', 2, 13, 2020),
('cabanas', 2, 14, 2020),
('dandora', 2, 15, 2020),
('huruma', 2, 16, 2020),
('mathare', 2, 17, 2020);

select * from clients;
select * from flats;
select * from trailer;
select * from trailerpark;
select * from manager;