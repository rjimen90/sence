-- MySQL Script generated by MySQL Workbench
-- Mon Jul  5 20:25:05 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Organizaciones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Organizaciones` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Organizaciones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NULL,
  `Mail` VARCHAR(45) NULL,
  `Tematica` VARCHAR(45) NULL,
  `Fono` VARCHAR(45) NULL,
  `Sitio Web` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Directores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Directores` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Directores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL,
  `Fono` VARCHAR(45) NULL,
  `Linkedin` VARCHAR(45) NULL,
  `Organizacion_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Organizacion_id`),
  INDEX `fk_Directores_Organizacion1_idx` (`Organizacion_id` ASC) VISIBLE,
  CONSTRAINT `fk_Directores_Organizacion1`
    FOREIGN KEY (`Organizacion_id`)
    REFERENCES `mydb`.`Organizaciones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Proveedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Proveedores` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Proveedores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Empresa` VARCHAR(45) NULL,
  `Contacto` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Fono` VARCHAR(45) NULL,
  `Rubro` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Organizacion_has_Proveedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Organizacion_has_Proveedores` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Organizacion_has_Proveedores` (
  `Organizacion_id` INT NOT NULL,
  `Proveedores_id` INT NOT NULL,
  PRIMARY KEY (`Organizacion_id`, `Proveedores_id`),
  INDEX `fk_Organizacion_has_Proveedores_Proveedores1_idx` (`Proveedores_id` ASC) VISIBLE,
  INDEX `fk_Organizacion_has_Proveedores_Organizacion1_idx` (`Organizacion_id` ASC) VISIBLE,
  CONSTRAINT `fk_Organizacion_has_Proveedores_Organizacion1`
    FOREIGN KEY (`Organizacion_id`)
    REFERENCES `mydb`.`Organizaciones` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Organizacion_has_Proveedores_Proveedores1`
    FOREIGN KEY (`Proveedores_id`)
    REFERENCES `mydb`.`Proveedores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`FAQS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`FAQS` ;

CREATE TABLE IF NOT EXISTS `mydb`.`FAQS` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `faq` VARCHAR(255) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Directores_has_FAQ`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Directores_has_FAQ` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Directores_has_FAQ` (
  `Directores_id` INT NOT NULL,
  `Directores_Organizacion_id` INT NOT NULL,
  `FAQ_ID` INT NOT NULL,
  PRIMARY KEY (`Directores_id`, `Directores_Organizacion_id`, `FAQ_ID`),
  INDEX `fk_Directores_has_FAQ_FAQ1_idx` (`FAQ_ID` ASC) VISIBLE,
  INDEX `fk_Directores_has_FAQ_Directores1_idx` (`Directores_id` ASC, `Directores_Organizacion_id` ASC) VISIBLE,
  CONSTRAINT `fk_Directores_has_FAQ_Directores1`
    FOREIGN KEY (`Directores_id` , `Directores_Organizacion_id`)
    REFERENCES `mydb`.`Directores` (`id` , `Organizacion_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Directores_has_FAQ_FAQ1`
    FOREIGN KEY (`FAQ_ID`)
    REFERENCES `mydb`.`FAQS` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
