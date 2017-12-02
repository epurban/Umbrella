-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2017 at 02:23 PM
-- Server version: 5.7.20
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlh_umbrella`
--

-- --------------------------------------------------------

--
-- Table structure for table `anon_stories`
--

CREATE TABLE `anon_stories` (
  `story_id` int(10) UNSIGNED NOT NULL,
  `story_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `story_comp_id` int(10) UNSIGNED NOT NULL,
  `story_blurb` blob NOT NULL,
  `story_rating` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `company_rating` int(11) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `company_address`, `company_rating`) VALUES
(1, 'NBC', '30 Rockafellar Plaza, New York NY', 3),
(2, 'UBER', '666 Hellway Street, Las Vegas CA', 1),
(3, 'McDonalds', '123 McDonald Way, Indianapolis IN', 2),
(4, 'JT & Assoc.', '234 Hubbard Drive, St. Luis OH', 4),
(5, 'Microsoft', '700 Mercury Road,', 4),
(6, 'Google', '3745 Anything way, Boise MO', 2),
(7, 'GitHub', '777 Wewin Avenue Dearborn MI', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anon_stories`
--
ALTER TABLE `anon_stories`
  ADD PRIMARY KEY (`story_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anon_stories`
--
ALTER TABLE `anon_stories`
  MODIFY `story_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
