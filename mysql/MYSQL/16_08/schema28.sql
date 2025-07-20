-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Jun 10, 2017 as 06:38 PM
-- Versão do Servidor: 5.1.41
-- Versão do PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `projetomysql`
--
CREATE DATABASE `projetomysql` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projetomysql`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcategorias`
--

CREATE TABLE IF NOT EXISTS `tbcategorias` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `tbcategorias`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `tbclientes`
--

CREATE TABLE IF NOT EXISTS `tbclientes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `endereco` varchar(250) DEFAULT NULL,
  `telefone` varchar(25) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `datanascimento` datetime NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `tbclientes`
--

INSERT INTO `tbclientes` (`codigo`, `nome`, `endereco`, `telefone`, `email`, `datanascimento`) VALUES
(1, 'João da Silva', 'Rua das Pedras, 132, São José, SC', '48-32334567', 'joao@hotmail.com', '1987-12-18 00:00:00'),
(2, 'Mario Alberto', 'Rua das Tainhas, 54, São José, SC', '48-323342643', 'mario@hotmail.com', '1981-11-13 00:00:00'),
(3, 'Paulo Cunha', 'Rua das Esmeraldas,165,São José, SC', '48-98988776', 'paulo@hotmail.com', '1980-01-01 00:00:00'),
(4, 'Maria dae Doree', 'Rua dos Badejos,9898,São José,SC', '48-65861314', 'maria@hotmail.com', '1977-01-02 00:00:00'),
(5, 'Paula Dutra', 'Rua das Promélias,11,	São José,SC', '48-91918282', 'paula@hotmail.com', '1986-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbitenspedidos`
--

CREATE TABLE IF NOT EXISTS `tbitenspedidos` (
  `cliente` int(11) DEFAULT NULL,
  `produto` int(11) DEFAULT NULL,
  `pedido` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valorvenda` decimal(18,2) DEFAULT NULL,
  KEY `fkprodutoitens` (`produto`),
  KEY `fkpedido` (`pedido`),
  KEY `fkclienteitens` (`cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbitenspedidos`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpedidos`
--

CREATE TABLE IF NOT EXISTS `tbpedidos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(11) DEFAULT NULL,
  `datavenda` datetime DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `tbpedidos`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprodutos`
--

CREATE TABLE IF NOT EXISTS `tbprodutos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(150) DEFAULT NULL,
  `valorvenda` decimal(18,2) DEFAULT NULL,
  `ativo` int(1) DEFAULT '1',
  `categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fkprodutocategoria` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `tbprodutos`
--


--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `tbitenspedidos`
--
ALTER TABLE `tbitenspedidos`
  ADD CONSTRAINT `fkprodutoitens` FOREIGN KEY (`produto`) REFERENCES `tbprodutos` (`codigo`) ON DELETE SET NULL,
  ADD CONSTRAINT `fkpedido` FOREIGN KEY (`pedido`) REFERENCES `tbpedidos` (`codigo`) ON DELETE SET NULL,
  ADD CONSTRAINT `fkclienteitens` FOREIGN KEY (`cliente`) REFERENCES `tbclientes` (`codigo`) ON DELETE SET NULL;

--
-- Restrições para a tabela `tbprodutos`
--
ALTER TABLE `tbprodutos`
  ADD CONSTRAINT `fkprodutocategoria` FOREIGN KEY (`categoria`) REFERENCES `tbcategorias` (`codigo`) ON DELETE SET NULL;
