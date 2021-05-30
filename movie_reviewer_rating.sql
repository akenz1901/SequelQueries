-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema movie_categories
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema movie_categories
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movie_categories` DEFAULT CHARACTER SET utf8 ;
USE `movie_categories` ;

-- -----------------------------------------------------
-- Table `movie_categories`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_categories`.`movies` (
  `idmovies` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NULL,
  `release_year` YEAR(4) NULL,
  `genre` VARCHAR(100) NULL,
  `collection_in_mov` DECIMAL(4,1) NULL,
  PRIMARY KEY (`idmovies`),
  UNIQUE INDEX `idmovies_UNIQUE` (`idmovies` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie_categories`.`reviewers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_categories`.`reviewers` (
  `idreviewers` INT(11) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NULL,
  `last_name` VARCHAR(100) NULL,
  PRIMARY KEY (`idreviewers`),
  UNIQUE INDEX `idreviewers_UNIQUE` (`idreviewers` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie_categories`.`rating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_categories`.`rating` (
  `movies_idmovies` INT(11) NOT NULL,
  `reviewers_idreviewers` INT(11) NOT NULL,
  `rating` DECIMAL(2,1) NULL,
  PRIMARY KEY (`movies_idmovies`, `reviewers_idreviewers`),
  INDEX `fk_movies_has_reviewers_reviewers1_idx` (`reviewers_idreviewers` ASC) VISIBLE,
  INDEX `fk_movies_has_reviewers_movies_idx` (`movies_idmovies` ASC) VISIBLE,
  CONSTRAINT `fk_movies_has_reviewers_movies`
    FOREIGN KEY (`movies_idmovies`)
    REFERENCES `movie_categories`.`movies` (`idmovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_reviewers_reviewers1`
    FOREIGN KEY (`reviewers_idreviewers`)
    REFERENCES `movie_categories`.`reviewers` (`idreviewers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
