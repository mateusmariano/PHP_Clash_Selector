-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30-Set-2017 às 00:46
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perso`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chracters`
--

CREATE TABLE `chracters` (
  `id` int(11) NOT NULL,
  `Elixir` int(255) NOT NULL,
  `Vida` int(255) NOT NULL,
  `Dano` int(255) NOT NULL,
  `Tipo` text COLLATE utf8_bin NOT NULL,
  `nome` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `chracters`
--

INSERT INTO `chracters` (`id`, `Elixir`, `Vida`, `Dano`, `Tipo`, `nome`) VALUES
(1, 4, 750, 285, 'lendaria', 'bruxa sombria'),
(2, 4, 1408, 264, 'rara', 'corredor'),
(3, 5, 3344, 211, 'comum', 'gigante'),
(4, 5, 1331, 296, 'epica', 'principe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chracters`
--
ALTER TABLE `chracters`
  ADD PRIMARY KEY (`id`,`Dano`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
