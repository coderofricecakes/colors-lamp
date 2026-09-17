
CREATE DATABASE IF NOT EXISTS COP4331;
USE COP4331;

CREATE TABLE IF NOT EXISTS `Users` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(50) NOT NULL DEFAULT '',
  `LastName` VARCHAR(50) NOT NULL DEFAULT '',
  `Login` VARCHAR(50) NOT NULL DEFAULT '',
  `Password` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Colors` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL DEFAULT '',
  `UserID` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE = InnoDB;


INSERT INTO Users (FirstName, LastName, Login, Password)
VALUES ('Test', 'User', 'testuser', 'test123');

-- Starter colors to search in beginning
INSERT INTO Colors (Name, UserID) VALUES ('Blue', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Red', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Green', 1);

-- Sanity checks
SELECT * FROM Users;
SELECT * FROM Colors;

-- Create the app-facing DB user
CREATE USER IF NOT EXISTS 'TheBeast'@'%' IDENTIFIED BY 'AaZz9876543210a';
GRANT ALL PRIVILEGES ON COP4331.* TO 'TheBeast'@'%';
FLUSH PRIVILEGES;
