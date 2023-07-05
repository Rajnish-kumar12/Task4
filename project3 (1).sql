-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 05, 2023 at 07:08 PM
-- Server version: 8.0.33
-- PHP Version: 8.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project3`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesstype`
--

CREATE TABLE `accesstype` (
  `id` int NOT NULL,
  `type` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accesstype`
--

INSERT INTO `accesstype` (`id`, `type`) VALUES
(1, 'admin'),
(2, 'teacher'),
(3, 'student'),
(4, 'librarian');

-- --------------------------------------------------------

--
-- Table structure for table `assign`
--

CREATE TABLE `assign` (
  `id` int NOT NULL,
  `chapter_id` int NOT NULL,
  `subject_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assign`
--

INSERT INTO `assign` (`id`, `chapter_id`, `subject_id`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assign_1`
--

CREATE TABLE `assign_1` (
  `id` int NOT NULL,
  `standard_name` varchar(20) NOT NULL,
  `subject_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assign_1`
--

INSERT INTO `assign_1` (`id`, `standard_name`, `subject_name`) VALUES
(1, '4', 'science');

-- --------------------------------------------------------

--
-- Table structure for table `assign_2`
--

CREATE TABLE `assign_2` (
  `id` int NOT NULL,
  `standard_name` varchar(12) NOT NULL,
  `student_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `chapter_no` int NOT NULL,
  `chapter_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`chapter_no`, `chapter_name`) VALUES
(1, 'quantum');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `fullname`, `email`, `country`, `state`, `address`, `password`) VALUES
(1, 'Rajnish Kumar', 'rajnish@gmail.com', 'india', 'gujrat', 'ertyu', '$2y$10$SZt6XoH5Urj8gz1AAczXWulP9Ricg6RK4SPzLDQxoSQEkHaNIdKZK'),
(2, 'anurag kumar', 'anurag@gmail.com', 'india', 'bihar', 'ertyu', '$2y$10$H75KP7ToWhoB.ljF0SrwqOh8cZerH73ZAPLnc0YDLEtNK46ZfVKZu'),
(3, 'nargis', 'nargis@gmail.com', 'india', 'gujrat', 'ertyu', '$2y$10$shr/Tgd6t9qF09Ieeok6i.7OjhfBX8p6jANpLxYTDWi6merumHZRi'),
(4, 'manisha', 'manisha@gmail.com', 'india', 'bihar', 'ertyu', '$2y$10$Dq4l3NAQskrbLyf./S03EuLXr0U3KQl/mECN7PwqkmRwBeFVqjOuu'),
(5, 'Rajnish Kumari', 'rajnishkumari@gmail.com', 'india', 'bihar', 'ertyu', '$2y$10$ga.N4eCRYmMHsO6VrqQsmOn9BTBItC8KtINmlUl7xlM3.BSLRtrnW'),
(6, 'adminkumar', 'adminkumar@gmail.com', 'india', 'bihar', 'ertyu', '$2y$10$q2av0MO8Nd/ZZqekhuAYw.v0lT1uqwODAoTIknyM3WDA0IfXCfzwu');

-- --------------------------------------------------------

--
-- Table structure for table `standard`
--

CREATE TABLE `standard` (
  `standard_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `standard`
--

INSERT INTO `standard` (`standard_name`) VALUES
('4');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int NOT NULL,
  `subject_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`) VALUES
(1, 'science');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` int NOT NULL,
  `usertypeid` int NOT NULL,
  `accesstypeid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `usertypeid`, `accesstypeid`) VALUES
(1, 1, '3'),
(2, 2, '4'),
(3, 3, '2'),
(4, 4, '1'),
(5, 5, '4'),
(6, 6, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesstype`
--
ALTER TABLE `accesstype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign`
--
ALTER TABLE `assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_1`
--
ALTER TABLE `assign_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_2`
--
ALTER TABLE `assign_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`chapter_no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard`
--
ALTER TABLE `standard`
  ADD PRIMARY KEY (`standard_name`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesstype`
--
ALTER TABLE `accesstype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assign`
--
ALTER TABLE `assign`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assign_1`
--
ALTER TABLE `assign_1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assign_2`
--
ALTER TABLE `assign_2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
