-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jan-2020 às 23:30
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `profissao` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`codigo`, `nome`, `email`, `profissao`) VALUES
(3, 'lucas', 'lucas@gmail.com', 'ator'),
(4, 'Pedro', 'pedroll@gmail.com', 'jornalista'),
(5, 'hebert', 'hbtl@gmail.com', 'programador'),
(6, 'fernando', 'fefe@gmail.com', 'professor'),
(7, 'laura', 'laurinha@gmail.com', 'artista'),
(8, 'luiza', 'luizaaa@gmail.com', 'cantora'),
(9, 'renan', 'rerere@gmail.com', 'policial'),
(11, 'renan', 'rerere@gmail.com.br', 'policial'),
(12, 'Lucas Fernando Seraffin ', 'lucas_fer@hotmail.com', 'Fisioterapeuta'),
(13, 'Larissa Alves de Lima', 'Lari_alves@gmail.com', 'Podologa'),
(14, 'Renato Ferraz de Souza', 'Renato_Souza@hotmail.com', 'Design Grafico'),
(15, 'paulo sergio', 'paulo@gh.com', 'cantor');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
