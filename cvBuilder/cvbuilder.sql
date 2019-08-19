-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 авг 2019 в 21:18
-- Версия на сървъра: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvbuilder`
--

-- --------------------------------------------------------

--
-- Структура на таблица `profilepicture`
--

CREATE TABLE `profilepicture` (
  `name` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `userState` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `proffession` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `projects` varchar(255) NOT NULL,
  `englishLevel` varchar(255) NOT NULL,
  `availability` varchar(255) NOT NULL,
  `hourlyRate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `firstname`, `lastname`, `age`, `userState`, `phoneNumber`, `proffession`, `experience`, `projects`, `englishLevel`, `availability`, `hourlyRate`) VALUES
(26, 'xxdangerboy21xx@gmail.com', '$2y$10$6fte1Xpo7WUsjxhCEqwCAeZasWB6UaX6zlt7fPSI6/Y18JrQwb5KO', 'Bojidar', 'Matsanov', '17', 'normal', '0897064520', 'Web developer', 'none', '123', 'Expert', '0', '0$/hr'),
(27, 'krisi@abv.bg', '$2y$10$mnAN3XTaVxXp9shT5G6f3OYfS/o3xlViWoum0jAOuLHgmQIzIVrNe', 'Kristiqn', 'Matsanov', '18', 'normal', 'none', 'none', 'none', '0', 'none', '0', '0$/hr'),
(28, 'ivan@abv.bg', '$2y$10$XdyxveZehMzHNE1Av0tZvudLS0rrtev1FXw0MDbwycOSCPr22dS.2', 'Ivan', 'Vlahov', '24', 'normal', '0877368861', 'C# developer', 'Expert', '143', 'Good', '2 weeks', '3$/hr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
