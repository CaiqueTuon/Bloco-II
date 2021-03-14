-- MySQL Script generated by MySQL Workbench
-- Thu Mar 11 22:39:43 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cafeteria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cafeteria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cafeteria` DEFAULT CHARACTER SET utf8 ;
USE `cafeteria` ;

-- -----------------------------------------------------
-- Table `cafeteria`.`funcionarios_tb`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafeteria`.`funcionarios_tb` (
  `registro` INT UNSIGNED NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `funcao` VARCHAR(45) NOT NULL,
  `turno` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`registro`),
  UNIQUE INDEX `registro_UNIQUE` (`registro` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cafeteria`.`caixa_tb`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafeteria`.`caixa_tb` (
  `funcionarios_tb_registro` INT UNSIGNED NOT NULL,
  `salario` DECIMAL(10,2) NULL,
  PRIMARY KEY (`funcionarios_tb_registro`),
  INDEX `fk_caixa_tb_funcionarios_tb_idx` (`funcionarios_tb_registro` ASC) VISIBLE,
  CONSTRAINT `fk_caixa_tb_funcionarios_tb`
    FOREIGN KEY (`funcionarios_tb_registro`)
    REFERENCES `cafeteria`.`funcionarios_tb` (`registro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cafeteria`.`entrada_saida_dinheiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafeteria`.`entrada_saida_dinheiro` (
  `caixa_tb_funcionarios_tb_registro` INT UNSIGNED NOT NULL,
  `entrada` DECIMAL(10,2) NOT NULL,
  `saida` DECIMAL(10,2) NULL,
  PRIMARY KEY (`caixa_tb_funcionarios_tb_registro`),
  CONSTRAINT `fk_entrada_saida_dinheiro_caixa_tb1`
    FOREIGN KEY (`caixa_tb_funcionarios_tb_registro`)
    REFERENCES `cafeteria`.`caixa_tb` (`funcionarios_tb_registro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cafeteria`.`estoque_tb`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafeteria`.`estoque_tb` (
  `id_produto` INT NOT NULL,
  `quantidade` INT NULL,
  `funcionarios_tb_registro` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_produto`, `funcionarios_tb_registro`),
  INDEX `fk_estoque_tb_funcionarios_tb1_idx` (`funcionarios_tb_registro` ASC) VISIBLE,
  CONSTRAINT `fk_estoque_tb_funcionarios_tb1`
    FOREIGN KEY (`funcionarios_tb_registro`)
    REFERENCES `cafeteria`.`funcionarios_tb` (`registro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cafeteria`.`produto_tb`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafeteria`.`produto_tb` (
  `estoque_tb_id_produto` INT NOT NULL,
  `quantidade` INT NULL,
  `nome` VARCHAR(45) NULL,
  `precos` DECIMAL(10,2) NULL,
  PRIMARY KEY (`estoque_tb_id_produto`),
  CONSTRAINT `fk_produto_tb_estoque_tb1`
    FOREIGN KEY (`estoque_tb_id_produto`)
    REFERENCES `cafeteria`.`estoque_tb` (`id_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cafeteria`.`cliente_tb`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafeteria`.`cliente_tb` (
  `caixa_tb_funcionarios_tb_registro` INT UNSIGNED NOT NULL,
  `cpf` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `pedido` VARCHAR(45) NULL,
  `produto_tb_estoque_tb_id_produto` INT NOT NULL,
  PRIMARY KEY (`caixa_tb_funcionarios_tb_registro`, `cpf`, `produto_tb_estoque_tb_id_produto`),
  INDEX `fk_cliente_tb_caixa_tb1_idx` (`caixa_tb_funcionarios_tb_registro` ASC) VISIBLE,
  INDEX `fk_cliente_tb_produto_tb1_idx` (`produto_tb_estoque_tb_id_produto` ASC) VISIBLE,
  CONSTRAINT `fk_cliente_tb_caixa_tb1`
    FOREIGN KEY (`caixa_tb_funcionarios_tb_registro`)
    REFERENCES `cafeteria`.`caixa_tb` (`funcionarios_tb_registro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_tb_produto_tb1`
    FOREIGN KEY (`produto_tb_estoque_tb_id_produto`)
    REFERENCES `cafeteria`.`produto_tb` (`estoque_tb_id_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
