-- MySQL Script generated by MySQL Workbench
-- 10/15/17 15:26:45
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ex6
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ex6` ;

-- -----------------------------------------------------
-- Schema ex6
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ex6` DEFAULT CHARACTER SET latin1 ;
USE `ex6` ;

-- -----------------------------------------------------
-- Table `ex6`.`livro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ex6`.`livro` ;

CREATE TABLE IF NOT EXISTS `ex6`.`livro` (
  `id` INT(10) NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `ano` INT(4) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ex6`.`autor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ex6`.`autor` ;

CREATE TABLE IF NOT EXISTS `ex6`.`autor` (
  `id` INT(10) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ex6`.`autoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ex6`.`autoria` ;

CREATE TABLE IF NOT EXISTS `ex6`.`autoria` (
  `livro_id` INT(10) NOT NULL,
  `autor_id` INT(10) NOT NULL,
  INDEX `fk_autoria_livro_idx` (`livro_id` ASC),
  INDEX `fk_autoria_autor1_idx` (`autor_id` ASC),
  CONSTRAINT `fk_autoria_livro`
    FOREIGN KEY (`livro_id`)
    REFERENCES `ex6`.`livro` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_autoria_autor1`
    FOREIGN KEY (`autor_id`)
    REFERENCES `ex6`.`autor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
