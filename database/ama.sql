-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2019 at 07:12 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ama2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(15, 'sakib', 'sakib.sns', 'sakib.sns');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_roll` int(11) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `course_id` int(11) NOT NULL,
  `attendance_value` varchar(12) NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `message` text NOT NULL,
  `sending_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `designation`, `message`, `sending_date`) VALUES
(1, 'rahim', 'rahim@gmail.com', '01521410716', '', 'There\'s a mistake in my attendance percentage', '14-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_title` varchar(40) NOT NULL,
  `semester` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `teacher_id`, `course_code`, `course_title`, `semester`) VALUES
(1, 5, 'SSA-111', 'Soil Science', '1'),
(4, 7, 'CCE-311', 'Numerical Methods', '5'),
(5, 6, 'CCE-313', 'Computer Networks', '5'),
(7, 6, 'CIT-213', 'Software Engineering', '3'),
(8, 7, 'CCE-313', 'Computer Networks', '5'),
(9, 7, 'CIT-311', 'Microprocessor', '5'),
(12, 0, 'cit', 'bbbbbbbbbb', '1'),
(13, 8, 'CIT-111', 'c programming', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `roll` int(11) NOT NULL,
  `course_code` varchar(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student2`
--

CREATE TABLE `student2` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `roll` int(20) NOT NULL,
  `course_id` int(20) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rank` varchar(30) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `department` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `rank`, `faculty`, `department`, `email`, `username`, `password`) VALUES
(5, 'Atik Hasan', 'Professor', 'Agriculture', 'Soil Science', 'atik@gmail.com', 'atik.01', '$2y$10$MjdjMmQyZTMzYmRmYjlkYus6bSDET1iwqW6xiDuQRV4Tc8BqiEEvm'),
(6, 'Moinul Islam Sayed ', 'Lecturer', 'Computer Science and Engineering', 'Computer Science and Informati', 'smoinul@pstu.ac.bd', 'smoinul', '$2y$10$Y2E3MDA4MjI0M2ZlNGQxMeNDgRy8qn6KF3h6tx8G8UGAOemlcvY.K'),
(7, 'Golam Md. Muradul Bashir', 'Associate Professor', 'Computer Science and Engineering', 'Computer and Communication Eng', 'murad98csekuet@yahoo.com', 'murad98', '$2y$10$OWFkMTA2ZTU1ZGZlNGQzMu6eZFEbRL/Uagrb3HoZ0EYKrfjAc5Uvy'),
(8, 'sakib', 'Associate Professor', 'CSE', 'CIT', 'sakib@gmail.com', 'sakib.01', 'sakib.01'),
(9, 'Tanbeer Ahmed', 'Lecturer', 'CSE', 'Comper and Communication Engin', 'tanbeer@gmail.com', 'tanbeer', 'tanbeer');

-- --------------------------------------------------------

--
-- Table structure for table `trainingset1`
--

CREATE TABLE `trainingset1` (
  `id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `faceImage` blob NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student2`
--
ALTER TABLE `student2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainingset1`
--
ALTER TABLE `trainingset1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student2`
--
ALTER TABLE `student2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trainingset1`
--
ALTER TABLE `trainingset1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
