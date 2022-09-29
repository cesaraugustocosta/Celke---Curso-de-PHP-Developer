-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2016 at 08:37 PM
-- Server version: 5.7.11
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `celke`
--

-- --------------------------------------------------------

--
-- Table structure for table `niveis_acessos`
--

CREATE TABLE `niveis_acessos` (
  `id` int(11) NOT NULL,
  `nome_niveis_acesso` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `niveis_acessos`
--

INSERT INTO `niveis_acessos` (`id`, `nome_niveis_acesso`, `created`, `modified`) VALUES
(1, 'Administrador', '2016-10-13 00:00:00', NULL),
(2, 'Colaborador', '2016-10-13 00:00:00', NULL),
(3, 'Cliente', '2016-10-13 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `situacoes_users`
--

CREATE TABLE `situacoes_users` (
  `id` int(11) NOT NULL,
  `nome_sit_user` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `situacoes_users`
--

INSERT INTO `situacoes_users` (`id`, `nome_sit_user`, `created`, `modified`) VALUES
(1, 'Ativo', '2016-10-13 00:00:00', NULL),
(2, 'Inativo', '2016-10-13 00:00:00', NULL),
(3, 'Aguardando Confirmação', '2016-10-13 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(220) DEFAULT NULL,
  `email` varchar(220) DEFAULT NULL,
  `password` varchar(220) DEFAULT NULL,
  `foto` varchar(220) DEFAULT NULL,
  `niveis_acesso_id` int(11) DEFAULT NULL,
  `situacoes_user_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `foto`, `niveis_acesso_id`, `situacoes_user_id`, `created`, `modified`) VALUES
(1, 'Cesar Szpak', 'cesar@celke.com.br', '202cb962ac59075b964b07152d234b70', 'cesar_szpak.png', 1, 1, '2016-10-13 00:00:00', NULL),
(2, 'Cesar', 'cesar@celke.com.br', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL),
(3, 'Cesar', 'cesar@celke.com.br', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL),
(4, 'Kelly', 'kelly@celke.com.br', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL),
(5, 'Kelly', 'kelly@celke.com.br', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL),
(6, 'Kelly', 'kelly@celke.com.br', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL),
(7, 'Kelly', 'kelly@celke.com.br', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL),
(8, 'Cesar', 'cesar@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL),
(9, 'Cesar', 'cesar@celke.com.br', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL),
(10, 'Cesar', 'cesar@celke.com.br', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `niveis_acessos`
--
ALTER TABLE `niveis_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `situacoes_users`
--
ALTER TABLE `situacoes_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `niveis_acessos`
--
ALTER TABLE `niveis_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `situacoes_users`
--
ALTER TABLE `situacoes_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
