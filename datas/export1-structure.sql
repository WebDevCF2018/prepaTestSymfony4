-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema prepatestsymfony4
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `prepatestsymfony4` ;

-- -----------------------------------------------------
-- Schema prepatestsymfony4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prepatestsymfony4` DEFAULT CHARACTER SET utf8 ;
USE `prepatestsymfony4` ;

-- -----------------------------------------------------
-- Table `prepatestsymfony4`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prepatestsymfony4`.`users` ;

CREATE TABLE IF NOT EXISTS `prepatestsymfony4`.`users` (
  `idusers` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `thelogin` VARCHAR(80) NOT NULL,
  `thepwd` CHAR(60) NOT NULL COMMENT 'bcrypt',
  `therealname` VARCHAR(160) NOT NULL,
  PRIMARY KEY (`idusers`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `thelogin_UNIQUE` ON `prepatestsymfony4`.`users` (`thelogin` ASC);


-- -----------------------------------------------------
-- Table `prepatestsymfony4`.`articles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prepatestsymfony4`.`articles` ;

CREATE TABLE IF NOT EXISTS `prepatestsymfony4`.`articles` (
  `idarticles` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `thetitle` VARCHAR(200) NOT NULL,
  `thetext` TEXT NOT NULL,
  `thedate` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `users_idusers` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idarticles`),
  CONSTRAINT `fk_articles_users`
    FOREIGN KEY (`users_idusers`)
    REFERENCES `prepatestsymfony4`.`users` (`idusers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_articles_users_idx` ON `prepatestsymfony4`.`articles` (`users_idusers` ASC);


-- -----------------------------------------------------
-- Table `prepatestsymfony4`.`sections`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prepatestsymfony4`.`sections` ;

CREATE TABLE IF NOT EXISTS `prepatestsymfony4`.`sections` (
  `idsections` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `thetitled` VARCHAR(80) NOT NULL,
  `thedesc` VARCHAR(350) NULL,
  PRIMARY KEY (`idsections`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prepatestsymfony4`.`sections_has_articles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prepatestsymfony4`.`sections_has_articles` ;

CREATE TABLE IF NOT EXISTS `prepatestsymfony4`.`sections_has_articles` (
  `sections_idsections` INT UNSIGNED NOT NULL,
  `articles_idarticles` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`sections_idsections`, `articles_idarticles`),
  CONSTRAINT `fk_sections_has_articles_sections1`
    FOREIGN KEY (`sections_idsections`)
    REFERENCES `prepatestsymfony4`.`sections` (`idsections`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sections_has_articles_articles1`
    FOREIGN KEY (`articles_idarticles`)
    REFERENCES `prepatestsymfony4`.`articles` (`idarticles`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_sections_has_articles_articles1_idx` ON `prepatestsymfony4`.`sections_has_articles` (`articles_idarticles` ASC);

CREATE INDEX `fk_sections_has_articles_sections1_idx` ON `prepatestsymfony4`.`sections_has_articles` (`sections_idsections` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
