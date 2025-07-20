-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Set 03, 2017 as 01:39 PM
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcategorias`
--

CREATE TABLE IF NOT EXISTS `tbcategorias` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `tbcategorias`
--

INSERT INTO `tbcategorias` (`codigo`, `descricao`) VALUES
(1, 'Livros'),
(2, 'Celulares'),
(3, 'tablets'),
(4, 'Notebooks'),
(5, 'Material de Escritorio');

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

INSERT INTO `tbitenspedidos` (`cliente`, `produto`, `pedido`, `quantidade`, `valorvenda`) VALUES
(NULL, 1, 1, 1, '50.00'),
(NULL, 2, 2, 2, '50.00'),
(NULL, 3, 3, 1, '1500.00'),
(NULL, 4, 4, 2, '2000.00'),
(NULL, 5, 5, 1, '1800.00'),
(NULL, 6, 6, 2, '1000.00'),
(NULL, 7, 7, 3, '2100.00'),
(NULL, 8, 8, 1, '2000.00'),
(NULL, 9, 9, 2, '1000.00'),
(NULL, 10, 10, 4, '1000.00'),
(NULL, 1, 11, 10, '55.00'),
(NULL, 2, 12, 10, '55.00'),
(NULL, 3, 13, 2, '1500.00'),
(NULL, 4, 14, 3, '2000.00'),
(NULL, 5, 15, 2, '1500.00'),
(NULL, 6, 16, 1, '1000.00'),
(NULL, 1, 16, 1, '50.00'),
(NULL, 2, 15, 2, '50.00'),
(NULL, 3, 14, 1, '1500.00'),
(NULL, 4, 13, 2, '2000.00'),
(NULL, 5, 12, 1, '1800.00'),
(NULL, 6, 11, 2, '1000.00'),
(NULL, 7, 10, 3, '2100.00'),
(NULL, 8, 9, 1, '2000.00'),
(NULL, 9, 8, 1, '1000.00'),
(NULL, 10, 7, 4, '1000.00'),
(NULL, 1, 6, 10, '55.00'),
(NULL, 2, 5, 10, '55.00'),
(NULL, 3, 4, 2, '1500.00'),
(NULL, 4, 3, 3, '2000.00'),
(NULL, 5, 2, 2, '1500.00'),
(NULL, 6, 1, 1, '1000.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpedidos`
--

CREATE TABLE IF NOT EXISTS `tbpedidos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(11) DEFAULT NULL,
  `datavenda` datetime DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Extraindo dados da tabela `tbpedidos`
--

INSERT INTO `tbpedidos` (`codigo`, `cliente`, `datavenda`) VALUES
(1, 6, '2012-12-21 00:00:00'),
(2, 2, '2012-12-21 00:00:00'),
(3, 6, '2012-11-21 00:00:00'),
(4, 4, '2012-12-21 00:00:00'),
(5, 4, '2012-10-21 00:00:00'),
(6, 3, '2012-10-21 00:00:00'),
(7, 2, '2012-09-21 00:00:00'),
(8, 3, '2012-09-21 00:00:00'),
(9, 2, '2012-08-21 00:00:00'),
(10, 4, '2012-08-21 00:00:00'),
(11, 3, '2012-07-21 00:00:00'),
(12, 6, '2012-07-21 00:00:00'),
(13, 4, '2012-06-21 00:00:00'),
(14, 2, '2012-06-21 00:00:00'),
(15, 4, '2012-05-21 00:00:00'),
(16, 4, '2012-05-21 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `tbprodutos`
--

INSERT INTO `tbprodutos` (`codigo`, `descricao`, `valorvenda`, `ativo`, `categoria`) VALUES
(1, 'Integração  de Dados na Prática - Técnicas de ETL para Business Intelligence com Microsoft Integration Services 2012', '55.00', 1, 1),
(2, 'T-SQL com Microsoft SQL SERVER 2012 na prática', '55.00', 1, 1),
(3, 'Samsung Galaxy S III', '1999.00', 1, 2),
(4, 'Aplle IPHONE 5', '2199.00', 1, 2),
(5, 'Samsung Galaxy Tab II', '1999.00', 1, 3),
(6, 'Motorola Xoom', '1099.00', 1, 3),
(7, 'Dell Ultrabook 14', '2499.00', 1, 4),
(8, 'ASUS Ultrabook 14', '2599.00', 1, 4),
(9, 'Fragmentadora Clone', '1099.00', 0, 5),
(10, 'Suporte para Notebook', '1099.00', 1, 5);

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
