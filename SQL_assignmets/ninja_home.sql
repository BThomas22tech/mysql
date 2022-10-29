-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ninja_dojo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ninja_dojo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ninja_dojo` DEFAULT CHARACTER SET utf8 ;
USE `ninja_dojo` ;

-- -----------------------------------------------------
-- Table `ninja_dojo`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ninja_dojo`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ninja_dojo`.`dojos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ninja_dojo`.`dojos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(255) NULL,
  `last_name` VARCHAR(255) NULL,
  `age` INT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ninja_dojo`.`ninjas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ninja_dojo`.`ninjas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `dojo_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ninjas_dojos_idx` (`dojo_id` ASC) VISIBLE,
  CONSTRAINT `fk_ninjas_dojos`
    FOREIGN KEY (`dojo_id`)
    REFERENCES `ninja_dojo`.`dojos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
