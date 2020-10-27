drop table tb_cargo;
drop table tb_funcionario;

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_RH2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_RH2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_RH2` DEFAULT CHARACTER SET utf8 ;
USE `db_RH2` ;

-- -----------------------------------------------------
-- Table `db_RH2`.`tb_cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_RH2`.`tb_cargo` (
  `id_cargo` INT NOT NULL AUTO_INCREMENT,
  `departamento` VARCHAR(45) NULL,
  `nome_cargo` VARCHAR(45) NULL,
  PRIMARY KEY (`id_cargo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_RH2`.`tb_funcionario`
-- -----------------------------------------------------
#`tb_funcionariocol` VARCHAR(45) NULL,
CREATE TABLE IF NOT EXISTS `db_RH2`.`tb_funcionario` (
  `id_funcionario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `sobrenome` VARCHAR(45) NULL,
  `sexo` ENUM("M", "F") NULL,
  `idade` INT NULL,
  `salario` DECIMAL(6,2) NULL,
  `tb_cargo_id_cargo` INT NOT NULL,
  PRIMARY KEY (`id_funcionario`, `tb_cargo_id_cargo`),
  CONSTRAINT `fk_tb_funcionario_tb_cargo`
    FOREIGN KEY (`tb_cargo_id_cargo`)
    REFERENCES `db_RH2`.`tb_cargo` (`id_cargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

use db_RH2;

insert into tb_cargo values
(default,"administrativo","analista de RH"),
(default,"administrativo","assitente Comercial"),
(default,"administrativo","Auxiliar Administrativo"),
(default,"producao","Torneiro Mecânico"),
(default,"producao","Fresador");

select * from tb_cargo;

#`id_funcionario / nome / sobrenome / tb_funcionariocol / sexo / idade / salario / tb_cargo_id_cargo
insert into tb_funcionario values
(default,"João","Guimarães","M",30,1850.00,2),
(default,"Jorge","Aparecido","M",40,2500.00,1),
(default,"Junior","Guilherme","M",25,3700.00,4);
insert into tb_funcionario values
(default,"Ademir","Santos","M",18,1500.00,1),
(default,"Bruno","Silva","M",25,1700.00,2),
(default,"Caio","Guimarães","M",35,1850.00,3),
(default,"Daniel","Silverio","M",55,2500.00,4),
(default,"Daniela","Santos","M",52,2200.00,4),
(default,"Danuse","Silva","M",60,1900.00,3),
(default,"Fabiana","Guimarães","M",32,3000.00,2),
(default,"Felipe","Silverio","M",37,4500.00,5),
(default,"Gabriela","Silverio","M",38,3700.00,5),
(default,"Helio","Guimarães","M",25,2500.00,2),
(default,"Heitor","Silva","M",25,2700.00,3),
(default,"Ivan","Santos","M",25,3700.00,4);

select * from tb_funcionario;

select * from tb_funcionario where salario > 2000;

select * from tb_funcionario where salario > 1000 and salario < 2000;

select * from tb_funcionario where nome like 'C%'
