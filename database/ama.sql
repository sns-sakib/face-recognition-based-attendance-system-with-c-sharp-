-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2019 at 07:01 AM
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
-- Database: `ama`
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
(12, 'sakib', 'sakib.01', '$2y$10$MGM5NTdmNTQwNDkwMjA1MueAUReI/KkKqvc4Rm/DikM6EXew4zxvO'),
(14, 'sanoth', 'sanoth.01', '$2y$10$NjgzZGY2NGQ0ZTI0OTIzYOJoBd37N759J0kixADOe5wY30r4n0Vw6'),
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

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `student_roll`, `course_code`, `course_id`, `attendance_value`, `date`) VALUES
(1, 1, 1601001, 'SSA-111', 1, 'Present', '16-01-19'),
(2, 2, 1601002, 'SSA-111', 1, 'Present', '16-01-19'),
(38, 321, 1602001, 'CCE-313', 5, 'Present', '27-01-19'),
(39, 322, 1602002, 'CCE-313', 5, 'Absent', '27-01-19'),
(40, 323, 1602003, 'CCE-313', 5, 'Present', '27-01-19'),
(41, 324, 1602004, 'CCE-313', 5, 'Present', '27-01-19'),
(42, 325, 1602005, 'CCE-313', 5, 'Present', '27-01-19'),
(43, 326, 1602006, 'CCE-313', 5, 'Absent', '27-01-19'),
(44, 327, 1602008, 'CCE-313', 5, 'Present', '27-01-19'),
(45, 328, 1602010, 'CCE-313', 5, 'Present', '27-01-19'),
(46, 329, 1602011, 'CCE-313', 5, 'Present', '27-01-19'),
(47, 330, 1602013, 'CCE-313', 5, 'Absent', '27-01-19'),
(48, 331, 1602016, 'CCE-313', 5, 'Present', '27-01-19'),
(49, 332, 1602017, 'CCE-313', 5, 'Absent', '27-01-19'),
(50, 31, 1602001, 'CCE-311', 4, 'Present', '30-01-19'),
(51, 32, 1602002, 'CCE-311', 4, 'Absent', '30-01-19'),
(52, 33, 1602003, 'CCE-311', 4, 'Present', '30-01-19'),
(53, 34, 1602004, 'CCE-311', 4, 'Absent', '30-01-19'),
(54, 35, 1602005, 'CCE-311', 4, 'Present', '30-01-19'),
(55, 36, 1602006, 'CCE-311', 4, 'Absent', '30-01-19'),
(56, 37, 1602008, 'CCE-311', 4, 'Present', '30-01-19'),
(57, 38, 1602010, 'CCE-311', 4, 'Absent', '30-01-19'),
(58, 39, 1602011, 'CCE-311', 4, 'Present', '30-01-19'),
(59, 40, 1602013, 'CCE-311', 4, 'Absent', '30-01-19'),
(60, 41, 1602016, 'CCE-311', 4, 'Absent', '30-01-19'),
(61, 42, 1602017, 'CCE-311', 4, 'Absent', '30-01-19'),
(62, 43, 1602019, 'CCE-311', 4, 'Present', '30-01-19'),
(63, 44, 1602020, 'CCE-311', 4, 'Absent', '30-01-19'),
(64, 45, 1602021, 'CCE-311', 4, 'Present', '30-01-19'),
(65, 46, 1602022, 'CCE-311', 4, 'Absent', '30-01-19'),
(66, 47, 1602023, 'CCE-311', 4, 'Present', '30-01-19'),
(67, 48, 1602024, 'CCE-311', 4, 'Absent', '30-01-19'),
(68, 836, 1502005, 'CCE-313', 8, 'Present', '30-01-19'),
(69, 837, 1502009, 'CCE-313', 8, 'Present', '30-01-19'),
(70, 838, 1502015, 'CCE-313', 8, 'Present', '30-01-19'),
(71, 839, 1502018, 'CCE-313', 8, 'Present', '30-01-19'),
(72, 840, 1502069, 'CCE-313', 8, 'Present', '30-01-19'),
(73, 782, 1602001, 'CCE-313', 8, 'Present', '30-01-19'),
(74, 783, 1602002, 'CCE-313', 8, 'Absent', '30-01-19'),
(75, 784, 1602003, 'CCE-313', 8, 'Present', '30-01-19'),
(76, 785, 1602004, 'CCE-313', 8, 'Present', '30-01-19'),
(77, 786, 1602005, 'CCE-313', 8, 'Present', '30-01-19'),
(78, 787, 1602006, 'CCE-313', 8, 'Present', '30-01-19'),
(79, 788, 1602008, 'CCE-313', 8, 'Present', '30-01-19'),
(80, 789, 1602010, 'CCE-313', 8, 'Present', '30-01-19'),
(81, 790, 1602011, 'CCE-313', 8, 'Present', '30-01-19'),
(82, 791, 1602013, 'CCE-313', 8, 'Absent', '30-01-19'),
(83, 792, 1602016, 'CCE-313', 8, 'Absent', '30-01-19'),
(84, 793, 1602017, 'CCE-313', 8, 'Absent', '30-01-19'),
(85, 794, 1602019, 'CCE-313', 8, 'Absent', '30-01-19'),
(86, 795, 1602020, 'CCE-313', 8, 'Absent', '30-01-19'),
(87, 796, 1602021, 'CCE-313', 8, 'Present', '30-01-19'),
(88, 797, 1602022, 'CCE-313', 8, 'Present', '30-01-19'),
(89, 798, 1602023, 'CCE-313', 8, 'Absent', '30-01-19'),
(90, 799, 1602024, 'CCE-313', 8, 'Absent', '30-01-19'),
(91, 800, 1602027, 'CCE-313', 8, 'Absent', '30-01-19'),
(92, 801, 1602028, 'CCE-313', 8, 'Absent', '30-01-19'),
(93, 802, 1602030, 'CCE-313', 8, 'Absent', '30-01-19'),
(94, 803, 1602032, 'CCE-313', 8, 'Present', '30-01-19'),
(95, 804, 1602036, 'CCE-313', 8, 'Present', '30-01-19'),
(96, 805, 1602037, 'CCE-313', 8, 'Present', '30-01-19'),
(97, 806, 1602038, 'CCE-313', 8, 'Absent', '30-01-19'),
(98, 807, 1602040, 'CCE-313', 8, 'Absent', '30-01-19'),
(99, 808, 1602041, 'CCE-313', 8, 'Present', '30-01-19'),
(100, 809, 1602042, 'CCE-313', 8, 'Absent', '30-01-19'),
(101, 810, 1602043, 'CCE-313', 8, 'Absent', '30-01-19'),
(102, 811, 1602045, 'CCE-313', 8, 'Absent', '30-01-19'),
(103, 812, 1602046, 'CCE-313', 8, 'Present', '30-01-19'),
(104, 813, 1602047, 'CCE-313', 8, 'Absent', '30-01-19'),
(105, 814, 1602048, 'CCE-313', 8, 'Absent', '30-01-19'),
(106, 815, 1602049, 'CCE-313', 8, 'Absent', '30-01-19'),
(107, 816, 1602050, 'CCE-313', 8, 'Absent', '30-01-19'),
(108, 817, 1602051, 'CCE-313', 8, 'Absent', '30-01-19'),
(109, 818, 1602053, 'CCE-313', 8, 'Absent', '30-01-19'),
(110, 819, 1602055, 'CCE-313', 8, 'Absent', '30-01-19'),
(111, 820, 1602057, 'CCE-313', 8, 'Absent', '30-01-19'),
(112, 821, 1602058, 'CCE-313', 8, 'Absent', '30-01-19'),
(113, 822, 1602060, 'CCE-313', 8, 'Absent', '30-01-19'),
(114, 823, 1602061, 'CCE-313', 8, 'Absent', '30-01-19'),
(115, 824, 1602062, 'CCE-313', 8, 'Absent', '30-01-19'),
(116, 825, 1602063, 'CCE-313', 8, 'Absent', '30-01-19'),
(117, 826, 1602064, 'CCE-313', 8, 'Present', '30-01-19'),
(118, 827, 1602065, 'CCE-313', 8, 'Present', '30-01-19'),
(119, 828, 1602066, 'CCE-313', 8, 'Absent', '30-01-19'),
(120, 829, 1602067, 'CCE-313', 8, 'Present', '30-01-19'),
(121, 830, 1602069, 'CCE-313', 8, 'Present', '30-01-19'),
(122, 831, 1602070, 'CCE-313', 8, 'Present', '30-01-19'),
(123, 832, 1602073, 'CCE-313', 8, 'Present', '30-01-19'),
(124, 833, 1602074, 'CCE-313', 8, 'Present', '30-01-19'),
(125, 834, 1602075, 'CCE-313', 8, 'Absent', '30-01-19'),
(126, 835, 1602076, 'CCE-313', 8, 'Absent', '30-01-19'),
(127, 836, 1502005, 'CCE-313', 8, 'Present', '02-02-19'),
(128, 837, 1502009, 'CCE-313', 8, 'Present', '02-02-19'),
(129, 838, 1502015, 'CCE-313', 8, 'Present', '02-02-19'),
(130, 839, 1502018, 'CCE-313', 8, 'Present', '02-02-19'),
(131, 840, 1502069, 'CCE-313', 8, 'Absent', '02-02-19'),
(132, 782, 1602001, 'CCE-313', 8, 'Present', '02-02-19'),
(133, 783, 1602002, 'CCE-313', 8, 'Present', '02-02-19'),
(134, 784, 1602003, 'CCE-313', 8, 'Present', '02-02-19'),
(135, 785, 1602004, 'CCE-313', 8, 'Present', '02-02-19'),
(136, 786, 1602005, 'CCE-313', 8, 'Present', '02-02-19'),
(137, 787, 1602006, 'CCE-313', 8, 'Absent', '02-02-19'),
(138, 788, 1602008, 'CCE-313', 8, 'Present', '02-02-19'),
(139, 789, 1602010, 'CCE-313', 8, 'Absent', '02-02-19'),
(140, 790, 1602011, 'CCE-313', 8, 'Present', '02-02-19'),
(141, 791, 1602013, 'CCE-313', 8, 'Present', '02-02-19'),
(142, 792, 1602016, 'CCE-313', 8, 'Present', '02-02-19'),
(143, 793, 1602017, 'CCE-313', 8, 'Present', '02-02-19'),
(144, 794, 1602019, 'CCE-313', 8, 'Present', '02-02-19'),
(145, 795, 1602020, 'CCE-313', 8, 'Present', '02-02-19'),
(146, 796, 1602021, 'CCE-313', 8, 'Absent', '02-02-19'),
(147, 797, 1602022, 'CCE-313', 8, 'Present', '02-02-19'),
(148, 798, 1602023, 'CCE-313', 8, 'Absent', '02-02-19'),
(149, 799, 1602024, 'CCE-313', 8, 'Present', '02-02-19'),
(150, 800, 1602027, 'CCE-313', 8, 'Present', '02-02-19'),
(151, 801, 1602028, 'CCE-313', 8, 'Present', '02-02-19'),
(152, 802, 1602030, 'CCE-313', 8, 'Present', '02-02-19'),
(153, 803, 1602032, 'CCE-313', 8, 'Absent', '02-02-19'),
(154, 804, 1602036, 'CCE-313', 8, 'Absent', '02-02-19'),
(155, 805, 1602037, 'CCE-313', 8, 'Absent', '02-02-19'),
(156, 806, 1602038, 'CCE-313', 8, 'Absent', '02-02-19'),
(157, 807, 1602040, 'CCE-313', 8, 'Absent', '02-02-19'),
(158, 808, 1602041, 'CCE-313', 8, 'Present', '02-02-19'),
(159, 809, 1602042, 'CCE-313', 8, 'Present', '02-02-19'),
(160, 810, 1602043, 'CCE-313', 8, 'Absent', '02-02-19'),
(161, 811, 1602045, 'CCE-313', 8, 'Present', '02-02-19'),
(162, 812, 1602046, 'CCE-313', 8, 'Present', '02-02-19'),
(163, 813, 1602047, 'CCE-313', 8, 'Absent', '02-02-19'),
(164, 814, 1602048, 'CCE-313', 8, 'Present', '02-02-19'),
(165, 815, 1602049, 'CCE-313', 8, 'Present', '02-02-19'),
(166, 816, 1602050, 'CCE-313', 8, 'Present', '02-02-19'),
(167, 817, 1602051, 'CCE-313', 8, 'Present', '02-02-19'),
(168, 818, 1602053, 'CCE-313', 8, 'Present', '02-02-19'),
(169, 819, 1602055, 'CCE-313', 8, 'Present', '02-02-19'),
(170, 820, 1602057, 'CCE-313', 8, 'Present', '02-02-19'),
(171, 821, 1602058, 'CCE-313', 8, 'Present', '02-02-19'),
(172, 822, 1602060, 'CCE-313', 8, 'Present', '02-02-19'),
(173, 823, 1602061, 'CCE-313', 8, 'Absent', '02-02-19'),
(174, 824, 1602062, 'CCE-313', 8, 'Present', '02-02-19'),
(175, 825, 1602063, 'CCE-313', 8, 'Present', '02-02-19'),
(176, 826, 1602064, 'CCE-313', 8, 'Absent', '02-02-19'),
(177, 827, 1602065, 'CCE-313', 8, 'Present', '02-02-19'),
(178, 828, 1602066, 'CCE-313', 8, 'Present', '02-02-19'),
(179, 829, 1602067, 'CCE-313', 8, 'Present', '02-02-19'),
(180, 830, 1602069, 'CCE-313', 8, 'Present', '02-02-19'),
(181, 831, 1602070, 'CCE-313', 8, 'Present', '02-02-19'),
(182, 832, 1602073, 'CCE-313', 8, 'Absent', '02-02-19'),
(183, 833, 1602074, 'CCE-313', 8, 'Present', '02-02-19'),
(184, 834, 1602075, 'CCE-313', 8, 'Present', '02-02-19'),
(185, 835, 1602076, 'CCE-313', 8, 'Present', '02-02-19'),
(186, 31, 1602001, 'CCE-311', 4, 'Absent', '02-02-19'),
(187, 32, 1602002, 'CCE-311', 4, 'Present', '02-02-19'),
(188, 33, 1602003, 'CCE-311', 4, 'Absent', '02-02-19'),
(189, 34, 1602004, 'CCE-311', 4, 'Present', '02-02-19'),
(190, 35, 1602005, 'CCE-311', 4, 'Present', '02-02-19'),
(191, 36, 1602006, 'CCE-311', 4, 'Present', '02-02-19'),
(192, 37, 1602008, 'CCE-311', 4, 'Present', '02-02-19'),
(193, 38, 1602010, 'CCE-311', 4, 'Present', '02-02-19'),
(194, 39, 1602011, 'CCE-311', 4, 'Absent', '02-02-19'),
(195, 40, 1602013, 'CCE-311', 4, 'Present', '02-02-19'),
(196, 41, 1602016, 'CCE-311', 4, 'Present', '02-02-19'),
(197, 42, 1602017, 'CCE-311', 4, 'Present', '02-02-19'),
(198, 43, 1602019, 'CCE-311', 4, 'Present', '02-02-19'),
(199, 44, 1602020, 'CCE-311', 4, 'Absent', '02-02-19'),
(200, 45, 1602021, 'CCE-311', 4, 'Present', '02-02-19'),
(201, 46, 1602022, 'CCE-311', 4, 'Absent', '02-02-19'),
(202, 47, 1602023, 'CCE-311', 4, 'Present', '02-02-19'),
(203, 48, 1602024, 'CCE-311', 4, 'Present', '02-02-19'),
(204, 895, 1502005, 'CIT-311', 9, 'Absent', '03-02-19'),
(205, 896, 1502009, 'CIT-311', 9, 'Absent', '03-02-19'),
(206, 897, 1502015, 'CIT-311', 9, 'Absent', '03-02-19'),
(207, 898, 1502018, 'CIT-311', 9, 'Absent', '03-02-19'),
(208, 899, 1502069, 'CIT-311', 9, 'Absent', '03-02-19'),
(209, 841, 1602001, 'CIT-311', 9, 'Absent', '03-02-19'),
(210, 842, 1602002, 'CIT-311', 9, 'Absent', '03-02-19'),
(211, 843, 1602003, 'CIT-311', 9, 'Absent', '03-02-19'),
(212, 844, 1602004, 'CIT-311', 9, 'Absent', '03-02-19'),
(213, 845, 1602005, 'CIT-311', 9, 'Absent', '03-02-19'),
(214, 846, 1602006, 'CIT-311', 9, 'Absent', '03-02-19'),
(215, 847, 1602008, 'CIT-311', 9, 'Absent', '03-02-19'),
(216, 848, 1602010, 'CIT-311', 9, 'Absent', '03-02-19'),
(217, 849, 1602011, 'CIT-311', 9, 'Absent', '03-02-19'),
(218, 850, 1602013, 'CIT-311', 9, 'Absent', '03-02-19'),
(219, 851, 1602016, 'CIT-311', 9, 'Absent', '03-02-19'),
(220, 852, 1602017, 'CIT-311', 9, 'Absent', '03-02-19'),
(221, 853, 1602019, 'CIT-311', 9, 'Absent', '03-02-19'),
(222, 854, 1602020, 'CIT-311', 9, 'Absent', '03-02-19'),
(223, 855, 1602021, 'CIT-311', 9, 'Absent', '03-02-19'),
(224, 856, 1602022, 'CIT-311', 9, 'Absent', '03-02-19'),
(225, 857, 1602023, 'CIT-311', 9, 'Absent', '03-02-19'),
(226, 858, 1602024, 'CIT-311', 9, 'Absent', '03-02-19'),
(227, 859, 1602027, 'CIT-311', 9, 'Absent', '03-02-19'),
(228, 860, 1602028, 'CIT-311', 9, 'Absent', '03-02-19'),
(229, 861, 1602030, 'CIT-311', 9, 'Absent', '03-02-19'),
(230, 862, 1602032, 'CIT-311', 9, 'Absent', '03-02-19'),
(231, 863, 1602036, 'CIT-311', 9, 'Absent', '03-02-19'),
(232, 864, 1602037, 'CIT-311', 9, 'Absent', '03-02-19'),
(233, 865, 1602038, 'CIT-311', 9, 'Absent', '03-02-19'),
(234, 866, 1602040, 'CIT-311', 9, 'Absent', '03-02-19'),
(235, 867, 1602041, 'CIT-311', 9, 'Absent', '03-02-19'),
(236, 868, 1602042, 'CIT-311', 9, 'Absent', '03-02-19'),
(237, 869, 1602043, 'CIT-311', 9, 'Absent', '03-02-19'),
(238, 870, 1602045, 'CIT-311', 9, 'Absent', '03-02-19'),
(239, 871, 1602046, 'CIT-311', 9, 'Absent', '03-02-19'),
(240, 872, 1602047, 'CIT-311', 9, 'Absent', '03-02-19'),
(241, 873, 1602048, 'CIT-311', 9, 'Absent', '03-02-19'),
(242, 874, 1602049, 'CIT-311', 9, 'Absent', '03-02-19'),
(243, 875, 1602050, 'CIT-311', 9, 'Absent', '03-02-19'),
(244, 876, 1602051, 'CIT-311', 9, 'Absent', '03-02-19'),
(245, 877, 1602053, 'CIT-311', 9, 'Absent', '03-02-19'),
(246, 878, 1602055, 'CIT-311', 9, 'Absent', '03-02-19'),
(247, 879, 1602057, 'CIT-311', 9, 'Absent', '03-02-19'),
(248, 880, 1602058, 'CIT-311', 9, 'Absent', '03-02-19'),
(249, 881, 1602060, 'CIT-311', 9, 'Absent', '03-02-19'),
(250, 882, 1602061, 'CIT-311', 9, 'Absent', '03-02-19'),
(251, 883, 1602062, 'CIT-311', 9, 'Absent', '03-02-19'),
(252, 884, 1602063, 'CIT-311', 9, 'Absent', '03-02-19'),
(253, 885, 1602064, 'CIT-311', 9, 'Absent', '03-02-19'),
(254, 886, 1602065, 'CIT-311', 9, 'Absent', '03-02-19'),
(255, 887, 1602066, 'CIT-311', 9, 'Absent', '03-02-19'),
(256, 888, 1602067, 'CIT-311', 9, 'Absent', '03-02-19'),
(257, 889, 1602069, 'CIT-311', 9, 'Absent', '03-02-19'),
(258, 890, 1602070, 'CIT-311', 9, 'Absent', '03-02-19'),
(259, 891, 1602073, 'CIT-311', 9, 'Absent', '03-02-19'),
(260, 892, 1602074, 'CIT-311', 9, 'Absent', '03-02-19'),
(261, 893, 1602075, 'CIT-311', 9, 'Absent', '03-02-19'),
(262, 894, 1602076, 'CIT-311', 9, 'Absent', '03-02-19'),
(281, 1, 1602022, 'cit', 12, 'Present', '12-07-19'),
(282, 8, 1602049, 'cit', 12, 'Present', '12-07-19');

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

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `roll`, `course_code`, `course_id`, `session`) VALUES
(1, 'Abir hasan', 1601001, 'SSA-111', 1, '2016-17'),
(2, 'Foysal Wahid', 1601002, 'SSA-111', 1, '2016-17'),
(31, 'Surajit Biswas', 1602001, 'CCE-311', 4, '2016-17'),
(32, 'Shagota Mondal Divya', 1602002, 'CCE-311', 4, '2016-17'),
(33, 'Md. Jaki AL Amin', 1602003, 'CCE-311', 4, '2016-17'),
(34, 'Subir Mukherjee', 1602004, 'CCE-311', 4, '2016-17'),
(35, 'Monir Hossain Noyon', 1602005, 'CCE-311', 4, '2016-17'),
(36, 'Abdullah Md. Nayem', 1602006, 'CCE-311', 4, '2016-17'),
(37, 'Md. Azharul Islam', 1602008, 'CCE-311', 4, '2016-17'),
(38, 'Md. Rasel Hossain', 1602010, 'CCE-311', 4, '2016-17'),
(39, 'Md. Muksit  Ul Islam', 1602011, 'CCE-311', 4, '2016-17'),
(40, 'Ejaj Hossain Khan', 1602013, 'CCE-311', 4, '2016-17'),
(41, 'Md Nurul Kabir Akash', 1602016, 'CCE-311', 4, '2016-17'),
(42, 'Fardin Islam', 1602017, 'CCE-311', 4, '2016-17'),
(43, 'Julshan Alam Ratu', 1602019, 'CCE-311', 4, '2016-17'),
(44, 'Mohammad Rezaul Karim', 1602020, 'CCE-311', 4, '2016-17'),
(45, 'Md. Imran Khan', 1602021, 'CCE-311', 4, '2016-17'),
(46, 'Syed Nazmus  Sakib', 1602022, 'CCE-311', 4, '2016-17'),
(47, 'Sherajul Islam', 1602023, 'CCE-311', 4, '2016-17'),
(48, 'Tanbeer Ahammad', 1602024, 'CCE-311', 4, '2016-17'),
(321, 'Surajit Biswas', 1602001, 'CCE-313', 5, '2016-17'),
(322, 'Shagota Mondal Divya', 1602002, 'CCE-313', 5, '2016-17'),
(323, 'Md. Jaki AL Amin', 1602003, 'CCE-313', 5, '2016-17'),
(324, 'Subir Mukherjee', 1602004, 'CCE-313', 5, '2016-17'),
(325, 'Monir Hossain Noyon', 1602005, 'CCE-313', 5, '2016-17'),
(326, 'Abdullah Md. Nayem', 1602006, 'CCE-313', 5, '2016-17'),
(327, 'Md. Azharul Islam', 1602008, 'CCE-313', 5, '2016-17'),
(328, 'Md. Rasel Hossain', 1602010, 'CCE-313', 5, '2016-17'),
(329, 'Md. Muksit  Ul Islam', 1602011, 'CCE-313', 5, '2016-17'),
(330, 'Ejaj Hossain Khan', 1602013, 'CCE-313', 5, '2016-17'),
(331, 'Md Nurul Kabir Akash', 1602016, 'CCE-313', 5, '2016-17'),
(332, 'Fardin Islam', 1602017, 'CCE-313', 5, '2016-17'),
(782, 'Surajit Biswas', 1602001, 'CCE-313', 8, '2016-17'),
(783, 'Shagota Mondal Divya', 1602002, 'CCE-313', 8, '2016-17'),
(784, 'Md. Jaki AL Amin', 1602003, 'CCE-313', 8, '2016-17'),
(785, 'Subir Mukherjee', 1602004, 'CCE-313', 8, '2016-17'),
(786, 'Monir Hossain Noyon', 1602005, 'CCE-313', 8, '2016-17'),
(787, 'Abdullah Md. Nayem', 1602006, 'CCE-313', 8, '2016-17'),
(788, 'Md. Azharul Islam', 1602008, 'CCE-313', 8, '2016-17'),
(789, 'Md. Rasel Hossain', 1602010, 'CCE-313', 8, '2016-17'),
(790, 'Md. Muksit  Ul Islam', 1602011, 'CCE-313', 8, '2016-17'),
(791, 'Ejaj Hossain Khan', 1602013, 'CCE-313', 8, '2016-17'),
(792, 'Md Nurul Kabir Akash', 1602016, 'CCE-313', 8, '2016-17'),
(793, 'Fardin Islam', 1602017, 'CCE-313', 8, '2016-17'),
(794, 'Julshan Alam Ratu', 1602019, 'CCE-313', 8, '2016-17'),
(795, 'Mohammad Rezaul Karim', 1602020, 'CCE-313', 8, '2016-17'),
(796, 'Md. Imran Khan', 1602021, 'CCE-313', 8, '2016-17'),
(797, 'Syed Nazmus  Sakib', 1602022, 'CCE-313', 8, '2016-17'),
(798, 'Sherajul Islam', 1602023, 'CCE-313', 8, '2016-17'),
(799, 'Tanbeer Ahammad', 1602024, 'CCE-313', 8, '2016-17'),
(800, 'Md. Munim Hossain', 1602027, 'CCE-313', 8, '2016-17'),
(801, 'Ishrak Juhayer Bishal', 1602028, 'CCE-313', 8, '2016-17'),
(802, 'Farzin Anan Mukit', 1602030, 'CCE-313', 8, '2016-17'),
(803, 'Md. Sadekur Rahman', 1602032, 'CCE-313', 8, '2016-17'),
(804, 'Jahidul Islam', 1602036, 'CCE-313', 8, '2016-17'),
(805, 'Farhana Yeasmin Eva', 1602037, 'CCE-313', 8, '2016-17'),
(806, 'Md. Mahmudul Hasan Faisal', 1602038, 'CCE-313', 8, '2016-17'),
(807, 'Delwar Hosen', 1602040, 'CCE-313', 8, '2016-17'),
(808, 'Rifat Rahman', 1602041, 'CCE-313', 8, '2016-17'),
(809, 'Md. Maruf Hossain', 1602042, 'CCE-313', 8, '2016-17'),
(810, 'Jannatul Ferdaush', 1602043, 'CCE-313', 8, '2016-17'),
(811, 'Morium Sultana', 1602045, 'CCE-313', 8, '2016-17'),
(812, 'Mahadi Hasan Tusher', 1602046, 'CCE-313', 8, '2016-17'),
(813, 'Tamim Ibne Shahidullah', 1602047, 'CCE-313', 8, '2016-17'),
(814, 'Md Rubel Hossen', 1602048, 'CCE-313', 8, '2016-17'),
(815, 'Md. Naymur Rashid', 1602049, 'CCE-313', 8, '2016-17'),
(816, 'Setu Rani Mondal', 1602050, 'CCE-313', 8, '2016-17'),
(817, 'Mizanur Rahaman', 1602051, 'CCE-313', 8, '2016-17'),
(818, 'Raonak Jahan Mimi', 1602053, 'CCE-313', 8, '2016-17'),
(819, 'Marium Alom Mim', 1602055, 'CCE-313', 8, '2016-17'),
(820, 'Sanoth Debnath', 1602057, 'CCE-313', 8, '2016-17'),
(821, 'Shadik Faysal', 1602058, 'CCE-313', 8, '2016-17'),
(822, 'Md. Rifat Mahmud', 1602060, 'CCE-313', 8, '2016-17'),
(823, 'Hasibul Hasan', 1602061, 'CCE-313', 8, '2016-17'),
(824, 'Mst. Nusrat Sultana Dina', 1602062, 'CCE-313', 8, '2016-17'),
(825, 'Md. Shohanur Rahman', 1602063, 'CCE-313', 8, '2016-17'),
(826, 'Md. Tanjil Ahmed', 1602064, 'CCE-313', 8, '2016-17'),
(827, 'Jannatul Ferdousi', 1602065, 'CCE-313', 8, '2016-17'),
(828, 'Md. Rakibul Islam', 1602066, 'CCE-313', 8, '2016-17'),
(829, 'Md. Forhad Hossain', 1602067, 'CCE-313', 8, '2016-17'),
(830, 'Bhugol Bijoy Chakma', 1602069, 'CCE-313', 8, '2016-17'),
(831, 'Tafsir Ahamed', 1602070, 'CCE-313', 8, '2016-17'),
(832, 'HafiJa Aktar', 1602073, 'CCE-313', 8, '2016-17'),
(833, 'Nusrat Jahan Aunto', 1602074, 'CCE-313', 8, '2016-17'),
(834, 'Abdulla All Kawsar', 1602075, 'CCE-313', 8, '2016-17'),
(835, 'Tarun Chandra Das', 1602076, 'CCE-313', 8, '2016-17'),
(836, 'Md. Mahedi Hasan', 1502005, 'CCE-313', 8, '2016-17'),
(837, 'Mahmudul Hasan Sumon', 1502009, 'CCE-313', 8, '2016-17'),
(838, 'Pranesh Chakma', 1502015, 'CCE-313', 8, '2016-17'),
(839, 'Fahmida Rahman Liza', 1502018, 'CCE-313', 8, '2016-17'),
(840, 'Md. Siam Talukder', 1502069, 'CCE-313', 8, '2016-17'),
(841, 'Surajit Biswas', 1602001, 'CIT-311', 9, '2016-17'),
(842, 'Shagota Mondal Divya', 1602002, 'CIT-311', 9, '2016-17'),
(843, 'Md. Jaki AL Amin', 1602003, 'CIT-311', 9, '2016-17'),
(844, 'Subir Mukherjee', 1602004, 'CIT-311', 9, '2016-17'),
(845, 'Monir Hossain Noyon', 1602005, 'CIT-311', 9, '2016-17'),
(846, 'Abdullah Md. Nayem', 1602006, 'CIT-311', 9, '2016-17'),
(847, 'Md. Azharul Islam', 1602008, 'CIT-311', 9, '2016-17'),
(848, 'Md. Rasel Hossain', 1602010, 'CIT-311', 9, '2016-17'),
(849, 'Md. Muksit  Ul Islam', 1602011, 'CIT-311', 9, '2016-17'),
(850, 'Ejaj Hossain Khan', 1602013, 'CIT-311', 9, '2016-17'),
(851, 'Md Nurul Kabir Akash', 1602016, 'CIT-311', 9, '2016-17'),
(852, 'Fardin Islam', 1602017, 'CIT-311', 9, '2016-17'),
(853, 'Julshan Alam Ratu', 1602019, 'CIT-311', 9, '2016-17'),
(854, 'Mohammad Rezaul Karim', 1602020, 'CIT-311', 9, '2016-17'),
(855, 'Md. Imran Khan', 1602021, 'CIT-311', 9, '2016-17'),
(856, 'Syed Nazmus  Sakib', 1602022, 'CIT-311', 9, '2016-17'),
(857, 'Sherajul Islam', 1602023, 'CIT-311', 9, '2016-17'),
(858, 'Tanbeer Ahammad', 1602024, 'CIT-311', 9, '2016-17'),
(859, 'Md. Munim Hossain', 1602027, 'CIT-311', 9, '2016-17'),
(860, 'Ishrak Juhayer Bishal', 1602028, 'CIT-311', 9, '2016-17'),
(861, 'Farzin Anan Mukit', 1602030, 'CIT-311', 9, '2016-17'),
(862, 'Md. Sadekur Rahman', 1602032, 'CIT-311', 9, '2016-17'),
(863, 'Jahidul Islam', 1602036, 'CIT-311', 9, '2016-17'),
(864, 'Farhana Yeasmin Eva', 1602037, 'CIT-311', 9, '2016-17'),
(865, 'Md. Mahmudul Hasan Faisal', 1602038, 'CIT-311', 9, '2016-17'),
(866, 'Delwar Hosen', 1602040, 'CIT-311', 9, '2016-17'),
(867, 'Rifat Rahman', 1602041, 'CIT-311', 9, '2016-17'),
(868, 'Md. Maruf Hossain', 1602042, 'CIT-311', 9, '2016-17'),
(869, 'Jannatul Ferdaush', 1602043, 'CIT-311', 9, '2016-17'),
(870, 'Morium Sultana', 1602045, 'CIT-311', 9, '2016-17'),
(871, 'Mahadi Hasan Tusher', 1602046, 'CIT-311', 9, '2016-17'),
(872, 'Tamim Ibne Shahidullah', 1602047, 'CIT-311', 9, '2016-17'),
(873, 'Md Rubel Hossen', 1602048, 'CIT-311', 9, '2016-17'),
(874, 'Md. Naymur Rashid', 1602049, 'CIT-311', 9, '2016-17'),
(875, 'Setu Rani Mondal', 1602050, 'CIT-311', 9, '2016-17'),
(876, 'Mizanur Rahaman', 1602051, 'CIT-311', 9, '2016-17'),
(877, 'Raonak Jahan Mimi', 1602053, 'CIT-311', 9, '2016-17'),
(878, 'Marium Alom Mim', 1602055, 'CIT-311', 9, '2016-17'),
(879, 'Sanoth Debnath', 1602057, 'CIT-311', 9, '2016-17'),
(880, 'Shadik Faysal', 1602058, 'CIT-311', 9, '2016-17'),
(881, 'Md. Rifat Mahmud', 1602060, 'CIT-311', 9, '2016-17'),
(882, 'Hasibul Hasan', 1602061, 'CIT-311', 9, '2016-17'),
(883, 'Mst. Nusrat Sultana Dina', 1602062, 'CIT-311', 9, '2016-17'),
(884, 'Md. Shohanur Rahman', 1602063, 'CIT-311', 9, '2016-17'),
(885, 'Md. Tanjil Ahmed', 1602064, 'CIT-311', 9, '2016-17'),
(886, 'Jannatul Ferdousi', 1602065, 'CIT-311', 9, '2016-17'),
(887, 'Md. Rakibul Islam', 1602066, 'CIT-311', 9, '2016-17'),
(888, 'Md. Forhad Hossain', 1602067, 'CIT-311', 9, '2016-17'),
(889, 'Bhugol Bijoy Chakma', 1602069, 'CIT-311', 9, '2016-17'),
(890, 'Tafsir Ahamed', 1602070, 'CIT-311', 9, '2016-17'),
(891, 'HafiJa Aktar', 1602073, 'CIT-311', 9, '2016-17'),
(892, 'Nusrat Jahan Aunto', 1602074, 'CIT-311', 9, '2016-17'),
(893, 'Abdulla All Kawsar', 1602075, 'CIT-311', 9, '2016-17'),
(894, 'Tarun Chandra Das', 1602076, 'CIT-311', 9, '2016-17'),
(895, 'Md. Mahedi Hasan', 1502005, 'CIT-311', 9, '2016-17'),
(896, 'Mahmudul Hasan Sumon', 1502009, 'CIT-311', 9, '2016-17'),
(897, 'Pranesh Chakma', 1502015, 'CIT-311', 9, '2016-17'),
(898, 'Fahmida Rahman Liza', 1502018, 'CIT-311', 9, '2016-17'),
(899, 'Md. Siam Talukder', 1502069, 'CIT-311', 9, '2016-17'),
(900, 'aaaaaaa', 1203033, 'CIT-111', 13, '2014-15'),
(902, 'Shagota Mondal Divya', 1602002, 'cit', 12, '2016-17'),
(903, 'Md. Jaki AL Amin', 1602003, 'cit', 12, '2016-17'),
(904, 'Subir Mukherjee', 1602004, 'cit', 12, '2016-17'),
(905, 'Monir Hossain Noyon', 1602005, 'cit', 12, '2016-17'),
(906, 'Abdullah Md. Nayem', 1602006, 'cit', 12, '2016-17'),
(907, 'Md. Azharul Islam', 1602008, 'cit', 12, '2016-17'),
(908, 'Md. Rasel Hossain', 1602010, 'cit', 12, '2016-17'),
(909, 'Md. Muksit  Ul Islam', 1602011, 'cit', 12, '2016-17'),
(910, 'Ejaj Hossain Khan', 1602013, 'cit', 12, '2016-17'),
(911, 'Md Nurul Kabir Akash', 1602016, 'cit', 12, '2016-17'),
(912, 'Fardin Islam', 1602017, 'cit', 12, '2016-17'),
(913, 'Julshan Alam Ratu', 1602019, 'cit', 12, '2016-17'),
(914, 'Mohammad Rezaul Karim', 1602020, 'cit', 12, '2016-17'),
(915, 'Md. Imran Khan', 1602021, 'cit', 12, '2016-17'),
(916, 'Syed Nazmus  Sakib', 1602022, 'cit', 12, '2016-17'),
(917, 'Sherajul Islam', 1602023, 'cit', 12, '2016-17'),
(918, 'Tanbeer Ahammad', 1602024, 'cit', 12, '2016-17'),
(919, 'Md. Munim Hossain', 1602027, 'cit', 12, '2016-17'),
(920, 'Ishrak Juhayer Bishal', 1602028, 'cit', 12, '2016-17'),
(921, 'Farzin Anan Mukit', 1602030, 'cit', 12, '2016-17'),
(922, 'Md. Sadekur Rahman', 1602032, 'cit', 12, '2016-17'),
(923, 'Jahidul Islam', 1602036, 'cit', 12, '2016-17'),
(924, 'Farhana Yeasmin Eva', 1602037, 'cit', 12, '2016-17'),
(925, 'Md. Mahmudul Hasan Faisal', 1602038, 'cit', 12, '2016-17'),
(926, 'Delwar Hosen', 1602040, 'cit', 12, '2016-17'),
(927, 'Rifat Rahman', 1602041, 'cit', 12, '2016-17'),
(928, 'Md. Maruf Hossain', 1602042, 'cit', 12, '2016-17'),
(929, 'Jannatul Ferdaush', 1602043, 'cit', 12, '2016-17'),
(930, 'Morium Sultana', 1602045, 'cit', 12, '2016-17'),
(931, 'Mahadi Hasan Tusher', 1602046, 'cit', 12, '2016-17'),
(932, 'Tamim Ibne Shahidullah', 1602047, 'cit', 12, '2016-17'),
(933, 'Md Rubel Hossen', 1602048, 'cit', 12, '2016-17'),
(934, 'Md. Naymur Rashid', 1602049, 'cit', 12, '2016-17'),
(935, 'Setu Rani Mondal', 1602050, 'cit', 12, '2016-17'),
(936, 'Mizanur Rahaman', 1602051, 'cit', 12, '2016-17'),
(937, 'Raonak Jahan Mimi', 1602053, 'cit', 12, '2016-17'),
(938, 'Marium Alom Mim', 1602055, 'cit', 12, '2016-17'),
(939, 'Sanoth Debnath', 1602057, 'cit', 12, '2016-17'),
(940, 'Shadik Faysal', 1602058, 'cit', 12, '2016-17'),
(941, 'Md. Rifat Mahmud', 1602060, 'cit', 12, '2016-17'),
(942, 'Hasibul Hasan', 1602061, 'cit', 12, '2016-17'),
(943, 'Mst. Nusrat Sultana Dina', 1602062, 'cit', 12, '2016-17'),
(944, 'Md. Shohanur Rahman', 1602063, 'cit', 12, '2016-17'),
(945, 'Md. Tanjil Ahmed', 1602064, 'cit', 12, '2016-17'),
(946, 'Jannatul Ferdousi', 1602065, 'cit', 12, '2016-17'),
(947, 'Md. Rakibul Islam', 1602066, 'cit', 12, '2016-17'),
(948, 'Md. Forhad Hossain', 1602067, 'cit', 12, '2016-17'),
(949, 'Bhugol Bijoy Chakma', 1602069, 'cit', 12, '2016-17'),
(950, 'Tafsir Ahamed', 1602070, 'cit', 12, '2016-17'),
(951, 'HafiJa Aktar', 1602073, 'cit', 12, '2016-17'),
(952, 'Nusrat Jahan Aunto', 1602074, 'cit', 12, '2016-17'),
(953, 'Abdulla All Kawsar', 1602075, 'cit', 12, '2016-17'),
(954, 'Tarun Chandra Das', 1602076, 'cit', 12, '2016-17'),
(958, 'Fahmida Rahman', 1502018, 'cit', 12, '2016-17'),
(959, 'Md. Siam Talukder', 1502069, 'cit', 12, '2016-17'),
(960, 'Shagota Mondal Divya', 1602002, 'CIT-111', 13, '2016-17'),
(961, 'Md. Jaki AL Amin', 1602003, 'CIT-111', 13, '2016-17'),
(962, 'Subir Mukherjee', 1602004, 'CIT-111', 13, '2016-17'),
(963, 'Monir Hossain Noyon', 1602005, 'CIT-111', 13, '2016-17'),
(964, 'Abdullah Md. Nayem', 1602006, 'CIT-111', 13, '2016-17'),
(965, 'Md. Azharul Islam', 1602008, 'CIT-111', 13, '2016-17'),
(966, 'Md. Rasel Hossain', 1602010, 'CIT-111', 13, '2016-17'),
(967, 'Md. Muksit  Ul Islam', 1602011, 'CIT-111', 13, '2016-17'),
(968, 'Ejaj Hossain Khan', 1602013, 'CIT-111', 13, '2016-17'),
(969, 'Md Nurul Kabir Akash', 1602016, 'CIT-111', 13, '2016-17'),
(970, 'Fardin Islam', 1602017, 'CIT-111', 13, '2016-17'),
(971, 'Julshan Alam Ratu', 1602019, 'CIT-111', 13, '2016-17'),
(972, 'Mohammad Rezaul Karim', 1602020, 'CIT-111', 13, '2016-17'),
(973, 'Md. Imran Khan', 1602021, 'CIT-111', 13, '2016-17'),
(974, 'Syed Nazmus  Sakib', 1602022, 'CIT-111', 13, '2016-17'),
(975, 'Sherajul Islam', 1602023, 'CIT-111', 13, '2016-17'),
(976, 'Tanbeer Ahammad', 1602024, 'CIT-111', 13, '2016-17'),
(977, 'Md. Munim Hossain', 1602027, 'CIT-111', 13, '2016-17'),
(978, 'Ishrak Juhayer Bishal', 1602028, 'CIT-111', 13, '2016-17'),
(979, 'Farzin Anan Mukit', 1602030, 'CIT-111', 13, '2016-17'),
(980, 'Md. Sadekur Rahman', 1602032, 'CIT-111', 13, '2016-17'),
(981, 'Jahidul Islam', 1602036, 'CIT-111', 13, '2016-17'),
(982, 'Farhana Yeasmin Eva', 1602037, 'CIT-111', 13, '2016-17'),
(983, 'Md. Mahmudul Hasan Faisal', 1602038, 'CIT-111', 13, '2016-17'),
(984, 'Delwar Hosen', 1602040, 'CIT-111', 13, '2016-17'),
(985, 'Rifat Rahman', 1602041, 'CIT-111', 13, '2016-17'),
(986, 'Md. Maruf Hossain', 1602042, 'CIT-111', 13, '2016-17'),
(987, 'Jannatul Ferdaush', 1602043, 'CIT-111', 13, '2016-17'),
(988, 'Morium Sultana', 1602045, 'CIT-111', 13, '2016-17'),
(989, 'Mahadi Hasan Tusher', 1602046, 'CIT-111', 13, '2016-17'),
(990, 'Tamim Ibne Shahidullah', 1602047, 'CIT-111', 13, '2016-17'),
(991, 'Md Rubel Hossen', 1602048, 'CIT-111', 13, '2016-17'),
(992, 'Md. Naymur Rashid', 1602049, 'CIT-111', 13, '2016-17'),
(993, 'Setu Rani Mondal', 1602050, 'CIT-111', 13, '2016-17'),
(994, 'Mizanur Rahaman', 1602051, 'CIT-111', 13, '2016-17'),
(995, 'Raonak Jahan Mimi', 1602053, 'CIT-111', 13, '2016-17'),
(996, 'Marium Alom Mim', 1602055, 'CIT-111', 13, '2016-17'),
(997, 'Sanoth Debnath', 1602057, 'CIT-111', 13, '2016-17'),
(998, 'Shadik Faysal', 1602058, 'CIT-111', 13, '2016-17'),
(999, 'Md. Rifat Mahmud', 1602060, 'CIT-111', 13, '2016-17'),
(1000, 'Hasibul Hasan', 1602061, 'CIT-111', 13, '2016-17'),
(1001, 'Mst. Nusrat Sultana Dina', 1602062, 'CIT-111', 13, '2016-17'),
(1002, 'Md. Shohanur Rahman', 1602063, 'CIT-111', 13, '2016-17'),
(1003, 'Md. Tanjil Ahmed', 1602064, 'CIT-111', 13, '2016-17'),
(1004, 'Jannatul Ferdousi', 1602065, 'CIT-111', 13, '2016-17'),
(1005, 'Md. Rakibul Islam', 1602066, 'CIT-111', 13, '2016-17'),
(1006, 'Md. Forhad Hossain', 1602067, 'CIT-111', 13, '2016-17'),
(1007, 'Bhugol Bijoy Chakma', 1602069, 'CIT-111', 13, '2016-17'),
(1008, 'Tafsir Ahamed', 1602070, 'CIT-111', 13, '2016-17'),
(1009, 'HafiJa Aktar', 1602073, 'CIT-111', 13, '2016-17'),
(1010, 'Nusrat Jahan Aunto', 1602074, 'CIT-111', 13, '2016-17'),
(1011, 'Abdulla All Kawsar', 1602075, 'CIT-111', 13, '2016-17'),
(1012, 'Tarun Chandra Das', 1602076, 'CIT-111', 13, '2016-17'),
(1013, 'Md. Mahedi Hasan', 1502005, 'CIT-111', 13, '2016-17'),
(1014, 'Mahmudul Hasan Sumon', 1502009, 'CIT-111', 13, '2016-17'),
(1015, 'Pranesh Chakma', 1502015, 'CIT-111', 13, '2016-17'),
(1016, 'Fahmida Rahman Liza', 1502018, 'CIT-111', 13, '2016-17'),
(1017, 'Md. Siam Talukder', 1502069, 'CIT-111', 13, '2016-17');

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

--
-- Dumping data for table `student2`
--

INSERT INTO `student2` (`id`, `name`, `roll`, `course_id`, `course_code`, `session`) VALUES
(178, 'Julshan Alam Ratu', 1602019, 8, 'CCE-313', '2016-17'),
(179, 'Mohammad Rezaul Karim', 1602020, 8, 'CCE-313', '2016-17'),
(180, 'Md. Imran Khan', 1602021, 8, 'CCE-313', '2016-17'),
(181, 'Syed Nazmus  Sakib', 1602022, 8, 'CCE-313', '2016-17'),
(182, 'Sherajul Islam', 1602023, 8, 'CCE-313', '2016-17'),
(183, 'Tanbeer Ahammad', 1602024, 8, 'CCE-313', '2016-17'),
(184, 'Md. Munim Hossain', 1602027, 8, 'CCE-313', '2016-17'),
(185, 'Ishrak Juhayer Bishal', 1602028, 8, 'CCE-313', '2016-17'),
(186, 'Farzin Anan Mukit', 1602030, 8, 'CCE-313', '2016-17'),
(187, 'Md. Sadekur Rahman', 1602032, 8, 'CCE-313', '2016-17'),
(188, 'Jahidul Islam', 1602036, 8, 'CCE-313', '2016-17'),
(189, 'Farhana Yeasmin Eva', 1602037, 8, 'CCE-313', '2016-17'),
(190, 'Md. Mahmudul Hasan Faisal', 1602038, 8, 'CCE-313', '2016-17'),
(191, 'Delwar Hosen', 1602040, 8, 'CCE-313', '2016-17'),
(192, 'Rifat Rahman', 1602041, 8, 'CCE-313', '2016-17'),
(193, 'Md. Maruf Hossain', 1602042, 8, 'CCE-313', '2016-17'),
(194, 'Jannatul Ferdaush', 1602043, 8, 'CCE-313', '2016-17'),
(195, 'Morium Sultana', 1602045, 8, 'CCE-313', '2016-17'),
(196, 'Mahadi Hasan Tusher', 1602046, 8, 'CCE-313', '2016-17'),
(197, 'Tamim Ibne Shahidullah', 1602047, 8, 'CCE-313', '2016-17'),
(198, 'Md Rubel Hossen', 1602048, 8, 'CCE-313', '2016-17'),
(199, 'Md. Naymur Rashid', 1602049, 8, 'CCE-313', '2016-17'),
(200, 'Setu Rani Mondal', 1602050, 8, 'CCE-313', '2016-17'),
(201, 'Mizanur Rahaman', 1602051, 8, 'CCE-313', '2016-17'),
(202, 'Raonak Jahan Mimi', 1602053, 8, 'CCE-313', '2016-17'),
(203, 'Marium Alom Mim', 1602055, 8, 'CCE-313', '2016-17'),
(204, 'Sanoth Debnath', 1602057, 8, 'CCE-313', '2016-17'),
(205, 'Shadik Faysal', 1602058, 8, 'CCE-313', '2016-17'),
(206, 'Md. Rifat Mahmud', 1602060, 8, 'CCE-313', '2016-17'),
(207, 'Hasibul Hasan', 1602061, 8, 'CCE-313', '2016-17'),
(208, 'Mst. Nusrat Sultana Dina', 1602062, 8, 'CCE-313', '2016-17'),
(209, 'Md. Shohanur Rahman', 1602063, 8, 'CCE-313', '2016-17'),
(210, 'Md. Tanjil Ahmed', 1602064, 8, 'CCE-313', '2016-17'),
(211, 'Jannatul Ferdousi', 1602065, 8, 'CCE-313', '2016-17'),
(212, 'Md. Rakibul Islam', 1602066, 8, 'CCE-313', '2016-17'),
(213, 'Md. Forhad Hossain', 1602067, 8, 'CCE-313', '2016-17'),
(214, 'Bhugol Bijoy Chakma', 1602069, 8, 'CCE-313', '2016-17'),
(215, 'Tafsir Ahamed', 1602070, 8, 'CCE-313', '2016-17'),
(216, 'HafiJa Aktar', 1602073, 8, 'CCE-313', '2016-17'),
(217, 'Nusrat Jahan Aunto', 1602074, 8, 'CCE-313', '2016-17'),
(218, 'Abdulla All Kawsar', 1602075, 8, 'CCE-313', '2016-17'),
(219, 'Tarun Chandra Das', 1602076, 8, 'CCE-313', '2016-17'),
(220, 'Md. Mahedi Hasan', 1502005, 8, 'CCE-313', '2016-17'),
(221, 'Mahmudul Hasan Sumon', 1502009, 8, 'CCE-313', '2016-17'),
(222, 'Pranesh Chakma', 1502015, 8, 'CCE-313', '2016-17'),
(223, 'Fahmida Rahman Liza', 1502018, 8, 'CCE-313', '2016-17'),
(224, 'Md. Siam Talukder', 1502069, 8, 'CCE-313', '2016-17');

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
-- Dumping data for table `trainingset1`
--

INSERT INTO `trainingset1` (`id`, `roll`, `name`, `faceImage`, `course_code`, `course_id`, `session`) VALUES
(8, 1602049, 'naymur rashid', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080084008403012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f007cce9b5b7f0bdce6bcdb536549a54624b6f3ce6b73c51a9cf1c9e44527c84658015c7191ddc93d49ef400e0bb8f0335a767a5bcd869000bdb1de9ba5da19a4dcc3e515d3c6aaaa074c7b50053874b8875c7a55f4d361dd90bcd4d1609185ab91a60e6802a8d3e1ddb8c43347f65db024f92b93cd6a2a291d6a4118c500631d3603d1714c7d1ad64396415b262149e500383401cfcba15b6dc227e759f75a0a0c9518c7615d79438ed55e48875c50079b5f69925b3160095fe555925c7cb5e83756a920219735c66a9a79b694b229d84f4f4a0081092ebf5adb4d480862b77762aa7e515ce090af4ab56cc64957eb401d32b2ed1c5155d59b68ce7228a00cad52ecdcde48c1be4dc703dab3802ee3eb4e765663f5a92d23df30e3a1a00e9b4c842440639c77ad355f6aab6df2a01deae2919a009a25c76ab9183dea08465855e8f60c0c806801e838a9541c54b1a211918a93cb140151c62a32ded9ab6cbd8d44c8bd33401598d42cd56cc20f7aaef0806802aba061e958daadb092d5fe95b8ea40acdd42366b6700f38a00f3e75c1ef525bcbe5b0fad4d3a6c90a9ce6aab9da7a50074514e8f183ba8ac15b96518048a28019824f5ad2d2d332e72303b55682132ee0a371033815a1a541ba56623e45c67de80363ce23eee734e5fb43f238fad22a0dd841815bd61611cb0077fcb3401952d8dd451a4bf688983f40adc8a6c67518231248b98ba02181c7e55bd3e9f6e1073b79eb9acfd4acc470a185c8e30c33d68027b1d53230c70476ad417ea475ae1dae24b66de14b0cf22ad59ea3752c72b7d9dba7c8464f3401d5cb7ea14906b22e753c1214e79aa125f3480a08dd64c0c8618aabf36fc6327d280347fb66e6223e5e0f6229e35791f929c77ab7a6e833ea71bb34a1022e718e4d5fd4745b5b4b5b7369339765fdea30e86803206a7116dac719ef4971f321c1e6aadde9eaab9cedfa565cb797164009079b11380d9c11ed4019baa2ecbd3b8751dab3e4504715ada9482eec05c202029ac88e4273939a0080820e38a2ad6dcf6a2802d0867b19e447429228c1c8ad0d1d838b8c8e72a6b47c6311b7b8b6931c48a413f4aa3a28e84e30e08e6803459a341bb774a9a0bc568c6e7da3a62aa5e40580da6ab25bca0eefd280276d516291940ddb4e052bea5bd7050a67d0e6a2fecc124a59f702dd715723d35553615257b1ef40145dda45c83c7d2b66c3ce78c1562800f4aa52588421501cb1e86b72cad8ac417a9039a00a2e5ff00b442ca72e23383ea2aa5c0114bb8f00f22b4afe1db3c139e88db5c9fee9e29ba9e9a46cc3ef519c60628022875f4b50c3cc9172b8c815624d721bbb7429382e87043719ac596db7c7e5374078acf3a6c8b26f206074c1a00e8bfb4524ca679c551d4e28e5d3a40a3e6caedfae6b2d44a8e0107dab45d9fc90a5700e28029ea67ecfa4a5aac7f2eefbd8eb5cc03b4d75d70cb35b34520edd7deb94b84dae71f95001e67bd150f3450077dafa0bab6cb3664460c33e9deaa58c1b2dd78c679a5d4e57174c83ee8e9576d17f76b9e805004b1c624c0e8d538b3029bb4354a132b8323d002c76b93806ad32ac11e1b838f5aac629ba8de71f8566dccf244ccee8463d4f5a00b6cff00be0ec32456b5a5dc4010715c1cda9dfcf2e228c281db19ab315fca13e6c86ef401d95d3413a940073d45471ea0df668acae1151a3e15fb38ed5c7ff6b5f4137988a193d0d6d41abc77b081245b5bd0d00684b651b1ce00a12d576952aa7ea28b590ecc8ce3f3ab1f339e1bafb50067be9a88dbd88e0d47e424ae091945fd6b51adb70c3b6e1e94c78951708a063a50063dc410608c6323ae2b83b95292b0c7735e833c6724fe75c6cb128bd7575dc15c8228032c0ff67f5a2bb38aeec04601b64e3d568a00bf7f683707e0fbd2dbedd983d453e7fdd45d2a18882339c5005f8d54f4ab71aaf5c0acf8db078ab91c8545005b246c3c5626a70a4d1609c77a92fb554b71b09f98fa561497725c3139e0d004217cb3c7356e18a323738a8228c06c9e7daaf47e40520822802130c4f911b85c0e8454f67a54c5f76e50b504b1c60e6338a7db5fcb6e4f2483401d5dac5e4aa8cf6e6ae88e2393b793deb16cb558e6500f0ddc56a472e4706802478d71c55199767bd5c6618eb55273b81a00cab97c6ecf5ac8b2b585afa4330c6ee5466b46ec8dc463a77a8ade1f3a4423191d4d00519ec02cf208f94078e28ae80a2a9c60514015ee50981b9e82a9c0c36e2afcb9f2d863a8c56743c641183401710f3914e790aa337a0cd4719c75e6964c3211401ce5cc8d2ccce7d6989211c0ad436aa491b7351bc291b6768fca802158ae8aee485987a8a0add06da619327dab42db538edc61fb74cd5bfedeb6246e601bb739a00c431de05cb5bc83df6d576b823839cfbd746dad5b32e7393ec2a94b2417bc32647eb40190976eac0a939cd751a3ea2674646e5979aca6d3110662047b139ab9a4c262b86623aae3e9401be65c8eb5048f81485876a85dbd4d0051bc3f29c0ea6ade9907fa3e4e4331c8cfa5675fc9b463b935a1a6de27d995586197d7d28012e37a4c55474a2abdddc79972ec338ed4500586c9aa327eee4c63ad5dc9e955eee32d1ee0795a008bccc50656c7154fcd07bd2197078a00b609348d1ee155d6624f06aec2738dd401977164c72719acdfb04cd27ca8df80aece3087e5c54ea91a73c73401cbdae9520203ab7e55b30d9a463a60d6ac7222e40ef51caaadcf4a00a4c00f7a62b846c8e2894edc9cf154de4f43401a5e7f1d6a2926f419aa1e7e075a866bcc29c7e740097336e9c2e49a94673c707daa8c01a59371e79abe46064b0e280179f534547e72ff007e8a00d8269b22831b03d08a28a00e765f925207ad47231c668a2800899bd6aea4ae07068a2802c25c4831f3517177285e0f4a28a00896f27c83bff4ab69712797f7a8a280229a46dac73540bb67ad14500359db6f5aa8cc49e4d145005eb66290f1f5a4decff78d145004a235c74a28a2803fffd9, 'cit', 12, '2016-17'),
(9, 1602049, 'naymur rashid', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108007b007b03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f3dbed7279811bb6a9ec2b15d8ca724e6a366f734e8002e073c9a00b36d6cf348100c574367a5a46b97504f6268d3ad84718247cc7ad6c471e3a0a00823b2566071d3b55e8aca2e018d48c7422a48939f7abd1a2d0054feccb593ef5ba7e551ff6159eec8b7031dab616318e2a5111c50073f26816b270220bf855097c276fcb02c0f6c575fe4f14c30d0079fdcf85ca8fddbe18763d2b0ae6096ca631b8208af569a1ca9005606afa647710b0641b80e0d007148d900f46ae8749d5a6dc914eca57a027835cd3a35bcbb641820d5886449485c9a00f4159830f6a76456559388edd149ce075ab424246463f3a00f3623deaf69f006994e338aa2a3d78adcd2e26519c75ea68037ad97e5191cd5f8d4e739aa1130520935645f271b54b7e1401a11afa0ab90c6c4d65a6a2918cc80ae3b11572db5ab67655504377c8a00d448daa70a7a62920b98e550411cd5b013140149c15e6a32c7d6aec8179cf4a81bcb3e94015247e0d519b0fc115a32c4a578aa5246072450070be27b3f2a68e4418dfc1ac9b16314849fc2ba7f132178578e14e7ad7299c722803acb29bcec71803b67ad6bac785c71f95717a5de341396ce7daba0feda51c143f9d00719182580c75aea2da25b7b78c91f78735896112659df9c7415bf00221e4e4f500f6a00b96974d1bab2c4a4e780466b6ec6da390bc936118f2368ac98d82804a827143eacd11299d83d71d28034753d325917cc122b9e83b573af1cb049c82ac2b487892178f635c74efb3ad55b8bc4b860430614016acb54f2405793f3ada83521226f56079c641ef5ca4f0c725b90dc60839f4ad6834fb0367e58f3954f2086fd680346ef546c155ce4d673b5e6c5990f07a7cdc9fc2ab410cd10688cbbd4360313c915d3e83f61b1b8b7b8962596504fc8f9c1e2803971acdec59000ebdc5584d6c4bb4480027dab5aeadace6bb91fcb085989da0f4aa171a7c1f3164068033b5a559ec242a3240cf5ae4b01d718fcaba2d4bf71ba3824ca85cb29f4ac37b6f2915b9c374cd00568c18a4c826b485e0c0ca66b3db19e69eb328500f6a006d98792e91139e6ba50ac074aa1a55aafda59b03e438ae805bee38a00a87cdf2976f1c633511b29656dec4127ae056b25b987a8dc87afb55d82da393051949f4068039b1a0ab9cb3b27b019ab7fd951120a8208e322ba95b1047ceb8151ce915ba90065cf41401cccb6a43ac64e4935d0c101f297e5e00aa71c3b6ebcd9ba9ed5bf1341e48c9c12280394489a09658fab2bf5355667d462cb45292cad90368addbb8905eef439561f3529d343b655b68fce80395fedbbcf3089e30f9ebc608abd6d7e276d9bb191c03566eecbca639cb66a945a7959321481da802a5f9ff004ddc07de8b06b2efef6496da288801633c6056fdddb32103ef1615caccd991b8e734011a8f3297ca23b5496c19dc2ed27e9577691c142280376c6d8c1b87524d6b44a00c9eb5411b64ac33ce6ae44dce6802c8dd9fbb5660b762772c6031ef8a640f93c8abe92051c50053bf3771c180e4ff00c0ab9e935292d0b6f5dd263a135d44ee181663c0f535ce6a66d6721ba91d08a00cb6d635179048624f2f3d05587d72503214e40e99a8a35472015f96a4b9b48540c139a007d86be3cedb728cbbb8cf5c574106a00b154c3af6cd7291d8493bfeeb6923deba7d32c9a0817ccc16ef9a009e46321cf924e7d2985720e22607deb4cc31b2f1c7d2a2788afbd00633c7b5b2e466b8c8f4bb8beb994425540639c9f7aedeec6324f4ed5cb7d9ee2d9bcc50577138c1a0061b6d42221161d98e03718ab4ba53ba8692625cf5c0ad608ecabb873819a77ce38c500528f99d8e78ce455e8c1aa2aea2e485e573c55d52738a00bf136d1524b76b0c6ccdd00a8625e39355f538d9ed7629ea79a00c7bad4a6bc9b6e47979e0537f763a9c9a69d3e4dbf21031dcf7a96d6c0b7fac931ec2802e452c68a0285e3b5134b138e6319f5a9d340062dcb744311c64669a7c3d71b037dad49ff7680334178640f1b91839e0d6ad96b5b98472ae3fdacd63ded8dcda724071dcaf354033b73cd007a0c371bd783c5124a79e6b0741b895e0911cfdc2307d8d68bc87340105eca3612454715b2496f1c8e3dc525cb6e183560ee5b64460061400280216033d29b9a466e3bd3334019113ba5db64630c720f6ad556c807d6a3d42f22b83ba2b58e1e72c5472d50473e4706803563978a2470fc62b3fcec77a9239b27ad005bd80ae2a85d5bca84bc79cd5d46dc6ad88b7a153d0d0072e75fbeb5f93207fc0453a3f125dc99509d7deb626d0a1987cd9fa8a5834586ddb824e3d450067c73de5d6094da0f539ab12db6f5f980cfae2b4248563e7bd4123616801ba7c2b6eae7bb558924cf4aa42620e29af2f72680249260b2c792073cd5ebb995d142f5f6ac21309653c6715692461c1a0095891d69bb85293bbbd379f5a008f67183d2b26567b798a30c0cf06b65f8e9599aa7fabcfb50047f68c8ce6963bbc375acc2c42f5a8c31cf5a00ea2def1776739ab69a9a838cf7e2b928e46f5a78964ce771a00ec9b54882fdfed9a897558d9802c307bd728f2be09dc698b2380df31a00eb9af9197391ed54e7bc5c63ae6b07cd9303e63cd2f98ecdcb138a00d23724fb5569ae7e52b9e4d556760b9cd32225a65c9cf3401a36c0a2e48eb5710e6abafdec54a0e3a50058e829379a8472466a4a00fffd9, 'cit', 12, '2016-17'),
(10, 1602049, 'naymur rashid', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080080008003012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00e135dd4da5b831abe1178e0f5ae7a49327a9fad2cb21925691fab12714c241ed4002e49e0d6a58d8b4c417538aaf616de74838e33cd7596f02a28dabda80191e9f1280020fc05584d3632795057d2ac460fd2af4299c719a00a1fd89692fde8f03d0531bc2d68c72a5d73e86ba18e31dea7110ed401ca7fc2230060448c73ea7ff00ad55e5f09827e56aed7cb34d3150079fcbe129719dca79f5ff00eb567dcf87ae200db0ee60338c75af4d68811c8aa3716aac391401e560b23ed61d3ad4eac7aa920f6c56f6bfa4e14cf127ccbf7b1dc57362531f18a00ea74bd5da36f2ee2467040c13eb5ba9379833d335c569b8b89d7209553926bab46321da091c763401e7a652c7b51bb26998f4a9e08b748bdf9e9401b7a4445406c039ae863eb8accb084c710278f6ad38caa60b102802dc6a3a55e8be5200e6a9433c45b1bc0fc6b42dcc45b3b87e74016933d6acc6292231920022ad246a680198e3a544719ab6538e2a078b9a00aeec3d2aa4a73d6ae4909c641aa72467bf14019f7502c91b291904579d6a56a20be95474ddc0af4b9c6d53ef5c2eb8a3fb41d8e71ef4014ac6e5604da7839ae8f4bbc4b972a59571ef5c93800f06ae58b800af734019b815a1a5c41ee470491cd5bf1068dfd93a8187702ac372fb0cd49a528b69124da1d8f5a00d3de15700d4b15bbdca92f3845ec36e6a943137da9d49f939602b7ace582de1f98670391d6802ac1a4ee2435c483fbb85acf984d6f3150ee4a9232475adf4d56332fcb13607424e2a1be922b83be4886eecd4015ec7569a3daad938ef5d1daea8aebd738ae2d976487cb6fa54b69797627f256dde40a792bd40a00eeffb4140aa179aca46dbb38c0ac29b52685bcb78a6527a16181515bc4f773a80a64e7241381401ac3c49101960d8fad48bae5adc2f0c41cf4618aa7a8680d262485238fa028ac71545b40b989721d723b13401ad24f1cca4ab03f4ae3bc40a7ed0993dc8c5691373632fce38ef8e4551d6e65b9b5574218ab672280315d015e29b0928df5f5a7237cbc8a616c37b50075df109045a9da48013be2da4fd0d62690ccecc581da0e056c6b9a8b6a90ed7c305395c8e94cd3ad0259a7cb82dc9a009914090b638dbfd6aadc4d287211702af84dae09076e79fa55f5b18db9f5a00e6e58a6b980797b9a407a2d241657e092c92aaf4f9f22bb5d3ec6247672833db15a26c6270731f07d6803828eda647db229ce32315a3a54323dd4877320c0e9deb7af6de0823672bf37451516976640de7a93401475688a4312b9deaf205191c8355fcdfb1e0c63e6cf38adbd62d59ecc003e6470ca7dc1aa5f65de3381cd00536f1188b7433a4a37721fd0509ada48b90dbd7f2345fe8a6f63126e0ac8302b1db4f6b701558eecf24d006cce1261bc632475ae70a249789d151c65bb015a902cc22c3678e95997ca218f0460018fc68031ae582dd4810e5431029f1c624e9cf151b465e4e30726afdadb344acce557dc9a00df9f4d1101eb9f5abd1478555c0e062a5bfc2a230ee706a3864e98a00b2b1ae314f8a378cfc8415f434020d5b8a0c9f99bf2a00b569711c63e74f9bd8d4b71abc70aed48c671d4b74a8fecf185c919ac9beb012248eb9dd8e0668026b99d1f32ceeb9c7192053acf548a25dc181f4f4ae327b592697f7c58fb134e8a29add0ac7bb6fa66803b4bad4d2e14202b83c7151dbfcbf2c8401d89ae19a5ba590379cc083d01ae9348d4a7bc6581d55e40b9ce3ad006e3c795e0820fa55492c449e83deadb40c3a864ff77a53446c3fe5ab7e54014dada3823e473dab035db655b00d8cb17eb5d34c13ab727d6b0b598da78638e3e4ef1c50063d97876ee5413b3c68a46464e6ae43a28f3479d37983b81d2ac69cf74b3fd9d9c98d410411d315a5b40e879a006ea0a518291d4e45451718c77a5d46e15e256e7767d29b6e372039a00bd129c826afc2d8359f19f7ab2ad81cd005b96e63853748d85f526b12e75a0ecc91a9f638accd5aee49e768c6422f1d6a8c7288fea6802efefee662d9033eb57042c91670091deb363b97519d8dcf7c54a7503b71bbbd001e5c265fdfc6704f38ae8b46b4b284acb00c92b8eb935ccb5c2bf071f5a7dbde1b590346e40f41401e82594ae3b1aad2228e9c567d96a69770f0c0b01c8153bc82802a5d2b21c8e41acde5ee91719e7b568dd3e63f94fd6aad920175bc0c900fe1401279091bb360066a8dc81d2a5b993f7983d855667cd0024f6934ba6379609dac18e07503ad416d958c2e3a53cdf5e34263560aa7d076aab148cac43f5a00d3427ad4db8ede78aa0b291ce694cdbb8cd0042f681e562467269e22860652635183d7153a7d69b342644f5c5005d82781c00e233c700e295ad34c7c9369164f5e315c75f09e16ca3119e951dbdc5f6ec1964c13dce2803a0bed3ec181fb38113f6c1e2b366b3685725d5bfdda92082661ba52727d6ac1886dc50033452eb7ac376176735bed2f1d6b22d5638589cf5ab2d283d1a8024925c649356b4a923292b646775644f3aaa1cf39a6c32154f9491b873834017e66df2b374c9a80e734d0dfed1fce9724d00215e3a7e5546ef7210ea0fbd68b7d2abcb18742b9e0f5a00a297395eb520b803bd64c85ade42ad9f6a8dae8e78cd0074f6b26f38238f5ad681540e48ae32db5231e4b31fceafaeb24370fdbf0a00ea1ede0947cc8ac3dc5466d6d7fe78a67d768ac1fedd2b16339a68d74b11ce306803667b65c7c9c566ca361c1e0d47fdb41b70623af18ed5527bf0edd73c7ad004a64da7ad067c0ce6a899f3dea179893d6802e34a669428c9156d30a38aad6c9b1324726ac03ef4012f994e1213eb507bd3d5b1e9401ffd9, 'cit', 12, '2016-17'),
(11, 1602049, 'naymur rashid', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080081008103012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00a3aaeab1d94393b8b9e028ef5c56a3aacb72d82405f414bad5db5c5fc987f941c03592c493c9a007e4b1abd6560f752003851d4d56b28bcd982fa9aecacadd608542803d4d005783478625c0407dc8ab31e910b901d7be78abd1d5b861dc7340199ff08e59cac59d09cfbe29afe12b563f2b320f4eb9ae9238b0a2a51171d2803945f094023f99cb1f6a85fc211ff0ca7f2aecfcac76a6f93401c0c9e1021f893e5ef9159379a15c5af29f3ae7f1af4f9221deb3aea00c48c71401e628e55b6b0e9566199a3915e372ad9ea2b4f5ed27ca26e615eff3015849201d4500771a36b6242d6f2b967ea84f7ae8209c38e46315c16871f9f7b14a30023679ef5d979e06157d33f4a00d2dc28acddfeed4500798cae58f1c93d6a3efd299ce69e8b961f5a00dcd0a15f30b95c9fad7529f747a561e930ec8c31eb5b90903ef1a00b3103e956e325781556396327ef0e2aedb3465c720d005b8c6403cd584ebcd2c4d19e01ab222079c8a008714c240ab66318a81e25f5a00a929e2a94bd0e6b45e1f4354258ce79a00cbbc804b11181d39cd79e5e4062ba9107456c0af4b9fe58db8c9ae0755045ebee5c1272680174aba5b52a41e872735d6e977515ddc1dac0a275f7ae05b02afe9d3156e18a907b5007a4f9b1ffb3f9d15c879f37fcf56fce8a00e45b39f41566ca3325ca2fbd5ad6745bad1ef9e09d095cfc8e3a30ab3a3c49015b8946589c2afb7ad006bdbed5882a91c75ab5141e71f9a73181d82e6a9dadbe26908391c903d39ad3b4db1b167e73da8025b6d297cd0cef3342782c9d6a9ea707d92e4ac12ca538237f0456d8d4e28a3444424ab03ed49ae5f41a8dc79be4855f2c03f5a00c7b1d52585910b138e3935d2c1aa87407fad71cd1297f94e3fa53ac5b523746184a18e360599bb8a00edff00b482ae49accbbd68e7e5209c5654f35ec37212789440ed857520e38a75ba9967554c039ea680266d7e68f1ba23483c411ce30d19461d4135d2dce95049a6cc973f3c8814ab80063f2ae62e342b6504a827dc139a0097ed71ce99535c9788131771be0fcd9c9ad492d67b59730b1c7a1ef593a95c1bc5116c2b2a37427eb40196e9c64516fba393760628438041a693b4d005df37fdafd68aa7be8a00f4bf88d015d16095718fb400df91ae134d98c970b1edf95178af44f16de5aea1a7cf6049de8d95653d18570fa459911c8ee30c5b028034a2c09777fb247eb50493ce92653a0ab6b030604026ada58ac8a0e015a00c293ed33c2cc266f301c80bc5476f06a123fef1a6541d4b13cd7550e9b10707601eb5a29a682bf2a5007230db4ead87c9c8e2afe9d0eeb86f30703a56b5ec26d636f97e73c28a7e9569f22e7ef9eb4019daa45e4c7032e42b4a108cf1cd43bda2c944cb75eb5b9ab597996af1f1b87ccbf515460804d0ab83d4723d0d004171e2c9ed3ce8a6b7c24f181c374f7aa0bae24bfeaddb39e41abd7ba41bc8806453b7a64e0e2b1a7d28c3f22ae31401a2d28b84041ed58788e3bc3752a6e554c91ef9ad2b6b699136e723afd2a8ea198e090e382c168039e95c34f211d0b9207a7352c3187da3b9351baee9be5ead5a763a7cbb81765553cf268023fb227a8fca8ad1fb3c1ff3f71d14016ef6ce713c927396249ab36116d8029ebd6b66fa1db14cac305320fe1599010a78a00b48800eb52c69b5b723edcf55c7069aa548e953c71863d28025494a9076a1c7a9a925d5da18cfc880e3839a9a28630b9c73ef556eed9240d903a50066ddeb16d0af9b73302c7a77350d9f8820642f1c84f3d08c62b266d3f64f9980719eb4e4d2d65c98caa0f61401b136bf14b2aa34ca09f53576dcf95cc7ca3f3815c7cfa608f3b977107a835ada0f9e664832e63cf7ed401d0b4c9fde20fa1a8d96193962a7f1ad27b23b060ee1ef55cc217398d73f4a00ce9e3551fbbefe9dab1f578c2e9b2afb7a56eccc724631591aaa34b6ce8bf798605006169ba0c97605c19d634078c8c9ad45d01188334eeeaa7ee81806a2b7b5bbb49e38c311920e074e6ba3c1ce0e280333fb26cffe7dc7e668ad5f2c7a8a2802d7888343737031957193f88ae6e16ddc8ae8358b8fb499f3d40c7e55ceda9193401a50f2b57226208f6aa29d7b8ab0adb45005e6b958a32cedb540c9ae7eeb5a69e5d902e57d49aadaddc48eeb08e9d6b311de2e154963c0a00bde5c9249f3bf5e4f357a344116d12fe7c566c70deedde6de439348679518abc5207fee95340164f9904a4a9dd5b5a66a31b3aab0dafebeb5cd1bce3a11ed4dfb40241cd007a479bf2f5e2a07615cde8bab1793ecf23678f96b69a618a0086e30c49e86b12ec976dabc92702b56e1c6d3ef59f1c625bc8c75c1dd8fa500691b70a559b8600537bd4b2c873f364135167be6801d9a2999f6a2802b5c46f2eee4f3d6a8449e5395ef5b9b088d9873b464d615c4e4cfbf6ed5cfad005b5720f3538938e6b384f9a513d002dc42259b34bb36263b0a7a3a9e49a976ef180339a008a0d52180e24623deae2eb76a7fe5a2eeed9ac1d434e9d8031a1e3bd6745a4de6ef30c2fd719c50074b757d6b70855846e0e7b56635adb85dd106e9dcd4b6fa79440cca73ef56366050052d3a2dba844d9230dcd744d2715971b88db21467d6a633eea0096572c0fa545a7cc82f896e98eb55e6b80884934cb4903213ef9a00d8bb983ca369e83151ab122aa7982a55638e28027dc68a8b27d68a00d954616931c7453fcab9a9e12636c0e6bab90edd326603f86b9c909c1c0a00c2598ab6d269ff0068c545a840524322f7e48c566b5c1e9bb1401bf04dbd856b5bb2a0193cd7171de346dbb356c6ae5971bb18f7a00edd6546186c1a5f3e25180d815c6ff6c3a27caf863dea16d5dd9b05faf7cd0076770e8ebd6b3650ab9f9ab0bfb65f7039dd81839a1b54f30678c9f4a00d07719e0d46f36d5c96c550fb4e79a8659cb719a00b324cd248aa3919ad48c058d57d0565d9c6702423bf4ad2041ed8a00903e0f06a757e3ad5418ed52a1c7ad0058de68a8f3450075337fc82a7fa7f5ae74f434514018f7dfeacd73aff0078fd68a280233d2a3ec68a2801ff00c0bf4a4a28a0070ebf854b0f5a28a00b3da9abf7bf1a28a00d8b6ff57565ba51450028a9968a2801d45145007fffd9, 'cit', 12, '2016-17'),
(12, 1602049, 'naymur rashid', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108007e007e03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00e375ed57cfb93091b446c4707f5ae7e593272289e46795998e4b124d404f3400f45de7a64d6d699a419cac92fdcec3d6a869b009e50483807b57670c7b63500f41400b1d9c49184555000c7029c9a7c5bf2c037d454f18f5ab914618500571a75bba85689587a119a6cbe1db09506fb65ff80922b5e28428fad4a23cf7a00e697c2d641f23785f426ab5c7852dd94f941811d32c6bad68b1d298633401c3cbe126db812edc7fb19feb59779e1f9edf77967cc19feee0d7a4b4595e4552b98131d31f4a00f2c5dcae54923070463a55a81da1916546c48a72a476ad8d7f4cfbd3a004e7923ad73c84af04d00779a3eba5f16f3cc1db1956239fa56f437026ce38c7ad79e68c825d4627c7c919dc7f0ed5dbc53190958c70073e9401e5aee5a4c8ee69db55b806987af5a9ed9373e3ad006fe8b0e118e7ae322ba2880000cfe9593a746b12724138ad54952352ce703d49a00b28b5721e0702b392fa1dd80c09f6f4ad0b7bab7e09917e94017631df19a9d73e9490bc72300a7ad5a08b4011638a89b19ab4538e2a0741e94015dc8aa731f4ab8f1e0552950eecf4a00cdb9895c30200522bcfaf20f26ee58c0236b1ef9af479d7e5391dab87d58e2fdfe5e7bd00269974b6cbcae79e7b66bb0d36e3ed5113090a07dec9ef5c03305e6b4ec2e9bc8c072bce700d006315279c569e8b6c64b8dc5410a33cd59f116969a5eb92d9c39f2d7079ed9ab16416255485f249cb62802e35cfccc8a0654e08157ed22b799089adde538ece401f955016c1af3cdc9008f9beb5a71dc2dbc602955e3a9a00b76da4c1bc036e0871804b9e3358fa9594d6572f1b2e029c020d5c5d626f97e6181d0d36ef52f3f7190ab67ae4d0056b1bf68c84663d7ae7b57516ba88f2c93dba5712b877f90f5a9ed23d41aeda28670a8083f39c8c5007723515da4ff5acfbbd61548206481c806b06eee2fec26532c6af6ec71bd0f4ab160c6e2f221c005c024fd6802c9d782fdf017d473914e1ac5bca400dc91dea5d53446ba89ee0313b1c2138007f9e958d268650677f3ec68034a59d25195e7b5721adaffa7163d1b915a6166b490857dc3b8acbd5a65b845207ce87d3b5006618c31e318f7a92d9fca52082727231508e9cd2890038f4a00e9bc78a0f8924911b224453c1e98e2a968d03884c84756e3e952df19ee97f7887af5c56c58db6cb58d707017e94015031120cf706aacb04f24db95baf6f4adb6b42cc0f4c1e95616d1241c30cfeb401cdff00634f71fbb0d83d771e94f4f0fdc5bb1691d5830c0c135d7dae9d200769fa9ad05d358677927da80388834d9a32dbd47b106ae69f6c4dc3b313c0c0e6b6f5131dba048b991b803d299616abb4647cc7ae28032f568ca5aab2f4320073547cf92dd9654037020e2b7f5ab50d61220c83c11c7706a9476de7dbac8873b8648a00a3ff00091dd22cb6f2fc91cae243834d8f5a573feb378f42318ab1359dabc644c987ec4f15953d847193e563eb9a00d0b8923910b82390791580c10dd46f2f0a532dfad695bc126dc678acfd4808d33838076f4a00ca9b1f699361f90b1dbf4a9c5bac9db27daab3299250a8a493d00ad8b4b39563cbed0c7d4d007517d6ea11405c64fa54d0021178e00a7de480a2e3b1a82390e306802f0048e293ecf213955f9bb107151a38cf5ab91cea05002c773a85a464ec47cff7ba8fcab2ae3c477ed398ddd635ce0ed51576eaf863629e4f5acd9e18e581d78048eb8e680247d5ac624cc9709bfdc927352daeb2981223ab0ec457232da32c84361a9803c39d84ae0f6a00edee357130d9bb823a014cb6992d5b7364c47a8f4f7ae1269257604c8dc7a1abf677d75295b7decc0f1cf3401dccc96b7716e464706b39f4c898f0db7db6d32cacf7e37484102adfd8dd4f2370f6340146585601b01cf1585adc4ab68983d64e78f635d2cc8114fca33f4ac1d562fb4347128c107268028d968465884a974012323e5ad7b4f0da6cdd3dcb4ac474036e2a3d0ad244bb6f9895507ad742a31d0d0053d487cea1400b51212140cd457b3192e0c3bbe68fa8a96323cb1c67de801e1f069cd36109f419a685cfb524e9fe8d29070761fe5401893eac4c8486f9ba0e285b89e500b3903d2b39ac656f9d1496ee29d13cfbb638231c7cd401a714092c9f393cfa1ab86d6dd5180c9cfad32cf44d46e224910a0563c648ab6da06a4d218c229efbb7d00624f68b110db8303db156ace5b585c1900461d0e2a0bd82eec98f9f0baed3824f4acd92e73d0e0d0076914e81832b0c1f4ab467c8e0d71567a9c914a8ae4b02c067d2ba72e76fd47ad003e690371dc55011f9d7ab8ec2a479296c23dd72cc0e36af34017eda248236c2f2dd4d3830c9a198af15196cf7a008ef34392d6e2e2ea69a248d9cb2027e66cf35491c1fba7814f60f2b66425bfde39aaccc2093667e9401755b1d4d4bbc15c67ad6699c53a39989140165605073b7bd579cac6f96031ea6aeabee14c9e0592320ae734016f4cb9876fcb2ed6182006e2b4ffb47e6399d3d8102b81b8b692d652f097047bd40b757cc76b4848a00ec756b8f3e365774c1ef5caff6644f292262475e054d0db5ccdcbb31157e281615c639a00c95b2fdf2a2af1b873e95d031e300d546600d219f71a0091cf526ac69f2afef3771ef5992cd818c93ed572dcaf92bf2f51cd0068b3293c1a6e33e950a81eb8a7e40f7a0052075359ba9a7c8245eabf787b56831c1c557b940f190dca91cf140188b703bd4a2e554d67cc3ca9597af3c542f236383de803a7b3b80cbf377e95ac9803b66b87b6bd9a26fbc481d2b5135297390cc3d79a00e924863997e602a25b1b58fa46a39eb8aca1aa4a8b90323ad31f5790f51d4f005006cf9512ae100aa538d858e78aa2755707017f1cd579ef59f0718cf5a0099a45278351492951c62aa994d579256638ce2802d2399ee318ad542540ce7a550b08c2a67afad5d3f53401655bd0d48197d79aaa84d5955c8c8c74ee2803fffd9, 'cit', 12, '2016-17'),
(13, 1602003, 'jaki al amin', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080089008903012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f30bcb869e79256cee762c7f1aabf78d4aebcf342a8a0096d60f32509eb5bf6f600a81dc75aa3a4458b919e9debaa8915474a00c77b120b02b553ec0c5f02ba6640dd45546b6647ca9fd28032469e7038354ee2dda13c8aeba084b26592aade592b1c05ea28039529b8718a84a95ad55b460e536fccbda925b07da4ec3eb40196307bd2374a92585d4f038f5aacc181c1a00339a72b738a8c75a7630722803aaf075d243a8bc4e402ebf293eb5db3dfac7f77e66af30d2a630ea56ee4e00619fa5774719e2802e5cea13de36667623b2f61f85419a88134b401e604fbd2c632e2999e7a54d18cb038a00d6d317fd202f38f6ae9572075ac7d2edb00486b6953de8024527ad5948838048a811391cd5f8909c006801f14185e82896d37d68c5002a326a5f2280391beb358aee39f9c9e08fa5681d35658c301d47a56bcf611cdf7874a944415401da8038bbad170cc42fca7a0ae76fb4d789b383f4af519225618c0acbbcd312552591738c67bd0079632943834f4e7bd749abe8b8f9d17a0ed5cd3c6d1b953d45004ea4202d9e4577f164c4849e4a8fe55e7a8091838aefe162608f3d768cfe54012127de8c9a4ddcd2ee1e9401e63bb9abd63119654ebd79c54775666dee1d39201e09ad8d12152779038a00db810471280314d9efa3b6eb927d0558edc55296089dc9739cd0042fadc99fddc602fa9ce6a487c492291b9545452436e1b19c0f7aa771670ba128d8f71401d343e2db55fbee57d80ad187c4d672631281fef0c579bbdbed3c3d490b329c03401ea91ea50cdf7181e33c538de211d6b84b09d946727a6319ab935ebf9670c7de803a2b8d66da16219bf1acebaf125984f9640c4f607a572b7778eff283cf7acf10b48fcb50074777aec32708b9c8e73590d0c779206538600e7de922b5438dcd5712c8210e8dc8ec2803000defb403c9e2bbb4caaa8db8005727a4c3bafe391c7c88d935d9643739eb4011eecf7a5ddee2987ad263de8039cd5a3b7371fba6dc71f3739e6ace92804390bd4f268bdb0586cc4bb81766a974d388947ad006908891c735997b0ceadf2ab62b7625c8181d2a66b533262803871e6a39dcb93fed534ead7d18f2f31051c15082ba4bbd3268f24c45d477519c55031c3b70f1ab63b941914014dedae64b659de00030cfca3a55648598f00fbf15bc92971b42b30e98ed57a3b28d232560552dd78a00aba1d979dc11deafeb5622d2c8c8a07271d2ade910797370302b4b52b5fb45a32b74eb401e5d333073914e82f238cf30abff00bd5bd79a7a2e5c26ecf5aca16d02499d9f303c034012ccd845325b88b2382a7356eca5df1119e9c54415a62370c8ab8912c687000c0ce314018d142de4704824d7530e561453d42807359b040182f1c035a592474a00463cf5a3753719a763de803375afdd5ac6072a5bf2a874f73e5a83d6a4f103c66d62d846e0fcfe554ac24f941f4a00eb2cb6b1fe75b16d12b76ae7ac26c100fe55d25a3ae41a00beb669220254554974b8f7711a63e82b456418e0d35e751d79a00cbfecb8932563519ef8aa7728aafb4722b46eafd554f6ac569249189038a009ed8ec938ad1977344c3d45675a93e67cc315a8244298cf6a00c4584331538a6ff63c2f21678c313ebd2a591825c6474ef576295587140144e951227ca8abf4159f750f9713647415d148ea539ac0d564090c8dfc38e6802a5a283167d4d583c0aad6d2e611b454e32fd4d00373cd3b2de869e10669fb7de8030f598c359b37752315936336c623b1adbd4b1259ba80735cbc72ed7045007596b38040cf03a1adcb5bddbc6eae3a0ba38504f3deaf4776ca7a9a00ec97503d88a8a7d438fbc6b9b5bf7038352c4f25c72c4814016eeaf0ede064553fedb863e19f047a9ab7e526dc3118f7ac0beb08bcd629c7b76a00deb4d6a095be57527eb57ffb463c1e715e7fb248d8ed18fa1ab50bbb902491bf3a00e88eab14d29442189f4ab515e15c0ac781618c653009eb4e794a1c83401b6f7bf2d60eb37b94083b9e7f0a635ce7bd670cde6a691e4904e39a00e8a188471aaf4c0e6a6503b5377034e1c0a00764034bbfd85479e7d697f1a00cc986e8c8f515c94a3cb908c9aeca653b6b9bd4ed792ebfa50057866f9864d6bc4ea70335ce2920e2b5ed260bf4a00d905517246714a6f78014e3e954ccbbd714f8b4e799372b32e7a1a00b46e9caf2f8c8f5aab2302fcbfeb4b269a918c48d2907beea8934bb52e48b8941ff006b068024f295938604d5671b1b19156869855494bd8c2f707ad569ac16339173bf3fdda0037c89196069a2e99f8347d95b6f0c71e86abb0f2cf3c5004b3cfb13deade8b11dc6e19796fba71592a8d7772b1a96e4f6ed5d4c41218c2200157814016770f4a7023155fcca379a0097773d297cc1e951a64d3fcaa0086719422b1e75ca90475ada9f95e6b2ae07cd9a00e6ae616825f6a741360e339abf7b10923231cf5158ecad1b60f0680376de74c80c40adfb69bf7636f415c34539520926b6ec751c22aee3d6803766ba0bf2c8bf29ec6b16f67546ca3617d335b6b25acc30e771c77acebdb5b5624a63f3a00c5378fbb01b39ebcd685a31d9bdb9cf6a8a1d3e3f332dd056937d9e18b200e3b0a006f99f2fa0ac3bb9cc9308e3e4f4e3bd4b7b7a09214e3d81a9745b33266ea4e07441fd68034b4db4fb1db82e079cdf78fa55969466a37623bd5577fad005b129f5a9166e79359fe67bd3d5ce68036223919a973ef55616fdd8a9371f5a0091c2e39acbb81d40e99f4ad496b32ebef0a00cb9bae08aa1710ac83b64568dcff0d513d0d006530646c62962b968981f4a966fbf551fef5006a43a99ce7711f8d4a351cf24d622f5a94fdca00d56d4091c5569af9dc60b13f5aa8bd2987efd005bb6824bb980c10a7be2bad4db146154600158fa4fdc8eb5dba500432be7bd55727b1a99fa9aae7ad001c8ef5343cb0c9e2ab9ed53c1f7c5006aa38c629fbbdaa18ea4a00fffd9, 'cit', 12, '2016-17'),
(14, 1602003, 'jaki al amin', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108007a007a03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f2d96691e5662492c7249f5a889ddc60d38fcc7ad49128dc075a00b16f665c6ee7f2ab22d0052181ad2b4893cb0707a74ab0d0a375cd00601b6f9bb53c59391f2fe3c56a8b770ff28cd68456aa14923048a00e576323608a181c715b77b61c1703815505a078ce3bf4e28032b1cd48b9c6302ac4b64c9d2aa9ca83d680065c75a6a900f5a61627ad0173d2802c092bd0fc2177247a4c91c170ca0b7ce178c1ff00f5579c2673c8aeabc1f75e5ea4f01fbb22647d4500772be6eecbcf2c9fefb135644cf8fbf59d35da45c7527b0355ff00b464feead00791f04e07153c0b865dc78f5c54209cf4ad1b089e57031c77a00d8881181d0638c55a55cf7a8572b8cd48b73046c03b01f5a00b71c1bf195fc715a314208c11d2a1b3bab772007420f4c1add83ecef10e47e340194d64a720ae548c1aced3ec0abbc250673c575c238c9c60511da471b975ea680399bad11b3f7463dab02eb497059923dc3bd7a4b22b75aad2da46dd8500791dcc0d1b91b4823ad57048ef5e8fa9e8705d025d0063c67ffd55c26a1a5cd652b065f9477a00aea09390735a1a6dc496b7d0ba70dbb19cfaf159b19da3bd5cb27cde42a7a33806803ba0307ad3b77b8a6823008a5cd00799a06cfcbd6ba2d3a2f2e00c782dd79ac7b784999470335d246a020cf5a00a7726667c42481ed55dac266ef927d6b425758d49c74aa3f6a791b0b9e7a014015dad2e6dd72ae0fb2f18a75bea57503002475c7ad4b2dc6cca157dc38fbd51b21c64f43d33401bf65e23badebbc89171c8c60d6fc1ac9755dc0ae7ad709112ac3b7d2ba7b4b29e5841f94fbd0068dceba11711e0b7a9e6b0e7f165dc24636b83db18aabaa2c96d3947186e9590d82dcf3f5a00d51e27ba94302a324f4155a7bf7b805655273ed4c84c6b1eec263e9572dae2299fcb64dad8ea3a1a00cb9eca28b4f5b843ceec364f4f4a8b4d01b52b718fe3ad8d4ad5574c9b6f382bfceabe896816e7ed12f0a9f779ef401d4636f147e14a36919eb4ff00968038a8150dd0209033c66b5d412beb5426545d41d5780b8c73ec2b56de32541ec680217b712a104673daa9a59ac4fbb907dc57556763e611d31fceaf9d0ad664f9e301bfbc3ad00706fa509642e25c166c92474ad5fb34125ba4030760c066eb5ab2f85a20c4acef827a1a21d123839049c7ad0064ae98b1e3e70c7d85757a5284b5fbb839acd68307a56bd813e5018e6803035dd35ae2f0c80000af4cf24d73b71a4b087e51fbccf4cf5aefefd4e54951c77acb9b4c6b8e636009f5a00e77464bab4977c8b88ca90172326a27b26378f2a2ec566cec1daba083c3d7ad28fdf6d5f5c5683687e545924b30a00e6ee53758c88481903afd6a196cfc9d3a1e73213c8cfaf35a5a9c5e45b9047391c7e351c404b0465c76e87b5004d6d95b68d4f3851536ea62f0a0014bb8fa1a00e50ba8bd7ca11f3739eb5bd619760073f5ae7e41ff001316246dcb648adb82754c67f0a00eb2cc221e3a0ad41244075ae4e2bf083ae29f2eacb18c17c50074725c44a79c55396fa29329180c6b979f559647c459c1f6eb55d6f67b56f31949c500748776724035ab61b54076efdab8d8fc468cca0a9e9ce6b62d75a84a644809f4a00dfbf2862078f6aa10ca91b7cfc7a5665d6bd6c3e5126587602ab35f35c202148a00ebe2743d08a9a464319f5ae26df5a36f39490f038e99ad3fed612460ab7ca68020f1044af18727a11dea846ca235519c01814ed62f565b5551f7b70351c0014079c9f5a009871cf34bbfdcd18dbd38a61619eb401ca5d4bff130933c65aacc73291d4e6aa6aa0c77a4e31bba1cf5a6dbc809e4e28034c4ac3f8b355a498b48726a78e3ca86ce7d2a8bdb4af3911afcc4f005006b5accab105eb4fb8669612bb7ad627da2eeda4f29c6d61d411d2b5ed6db509a360841c0c83c5005096ce5c6429fc2a2304f1a8ce719ae8d748d5b31801599c671d314a34dd63cd910c31fc98e72280312da194b0661f28f6ad50ec170bc54b2d96a62dfce9961418f5e6b0fed77b3dd7916e508f5038fce8022bb9c99b209dddcfad5bb5b87f29598fcdef559ec2569f6bb64f722acce91c11a8424e28016ea60e6319e726b4e3b8d8800e580e45615a43f6bba2704a2726b7a0842af0b81400f0659b962147a0a93cb3e829403d453b3ee68030b5b8bcd891ba94ef8ac08a4dac07bd75532071b49ae6b5083c99377a9a00d1b59b3f21fceb4628c139e322b9cb5b8d85413c57436b70939c03cfd280249628a720ca32cbd0d6be96a88bb016c93c9f4159af113d3155c5c4f64dbd1b3ec4500776b21ea1b3db269af232e79424f715c60f134880ee80163fdd6c6686f13cc71e5c08a7fda39a00dcd52577842396087f0ac88a08e352b0a6013c9ee69d1c977a8b8927e80718e82afc76fe5c659b814018d72a20e49e7ad615cdd79b2ec419e7156b55d4524936c593cf5a9b47b12034f347963f747a5006869f6a2d2100e379e58d686e24638aae3ad4c871d31400f078eb49ba919805a8f7afbd00452a0efd6b175384326dc015b92f4358977f7a8039e394720f6abf617a619171d3d0d4173f78fd6abc5d6803d0ec658aeadf3819ee2a6934c8661939e9c638ac0d259b7a0c9e9ebed5b503316e589e7d680233a0c38c8762de86adda68568adbe47181d38a97271d69accc10f27a7ad005b30c16e3119ce4d735e22d6234db04327ce32188abcd249f3fcedc29c735c3dd92d3b6493cf7a00d1d1b4e17730b894e23078007535d52c201e302abd9a858502800607415763eb400790a4734c36f83f2d585a71a00a4e0a0cd43e71f6abee064714c2064f1401ffd9, 'cit', 12, '2016-17'),
(15, 1602003, 'jaki al amin', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080070007003012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f003c4baa2e956221b725679070c3b0f5af3976323b3b72cc7249ef5a3af6a126a5a9cd216fdd03b631ed596139c66802482dccaf8c5687f67ed00f6fa55bd3a08c43bb6f39ad0daa7b6280308da9cf6a7a58165271cd6cfd8b2d9c0ab915aa04c11f9500728f6ed19c1151b43c64574d73a76f8c85c961d09aa71e9fba32db4e4750050061f4eb4633d5ab46e74e29961f962a8142bd6801071de9ca413daa2c734e5183401dbf81351682f5ec987eee6195f622bd145794f836445f1042b28fbc08539e878af56c00339a00f9f242d9e41a740bb9fde984367356ed62f324503a9a00d9b35fdc8f5abf1a9cf22a89956de35c9c9031f5a85b559761d898f43401d0c116f6c015796d980edcfa572706bf2c270ea4f3dab461f15a1e0c2d9f73401bdf640c2a2b7b068a662c7e4ec292db5ab79d82fccbf515785cc4df7581f7a00a971611c9cede7d6b0afb412c19e28c6eebd6ba39751b684e1dfeb819a824d52c5d06264c9e8338a00f3a9a392090aba1520e3069aae49c575bacc169791e55d3cc032083c9ae4f618a52a40c8340176cae5edaf209d4e0c722b0fc0d7ab4f726ee0508c42361b3ebc5791a303d40af4bd2cbb68d66e41e615e7f0a00f2924eee95b3a740366f230718aa9736822b83b795272b5af68bb605031f95002490231cb107148be429dbb7bfd69f3464a91d3deb38c336ece4e280346682368cee808f70b594d0206f973c7a8a0437ab37c864c139fbdc55e96cdd4821b7823938e734009619493d47d6b6ff007c8b9daca319ce2b3ad6d764e871dc574d2286b56c2e495e280393bab9762c09c935456d6695b21873dcd59b98e4497e74604f4e3ad352f2285b6b405c8ebb9b1400e5d3a75618900f5a61b22242261938ea2ae4b725594888c608c8e722a789966404fd28039cc738e95ec1a3c78d06c931ff002c1463f0af2358d9ee846b9259f6feb5ecf6a822b58631d1500fd2803c9efe64b9bb0d1a108001d3ad5cb71bb6e38cd43a8a2c53c4b1851f264fd73566ccf0bb88cfa5005f8adb7f1fcaa66d0d654dde6146f6156ec76802b4372e3b500730da54d1b6d1283f515225a3c6bf3366b765310e5bb5519e48e43b5074ef4014e18bf7c091902b5c0263c01daa9c0989012735b110458f9c500604d6c1dc9da0b2f4ac79ecd7cf264b562d9ebb4f35d2ca479c7031cd5a8e3570a4d0072bf6569882c8c001d08a9842235e0600aeb0da823a03c7a563ea302c68d803f2a00e62cd195e49f69ca9f948af45d02f5efb498e593ef2b1427d715c6db846b7288b8e4e6bb2d06d8db69112918de4bfe7401e69ab174bfc1c1ca820d58b695782d8159b71334d2ee7c66951f2396a00ea2def368c7e552bea655719e6b9e8ddb039e95279c17ef5006c1ba96619e82b3ee6eaea025a3c364f422a34baca801b19f5344db9867cc5c500321d5aea3981902e33cd681f10384f914e4f51597f63691b01d41a70d3e65270c303bd0068dbeb12dc4bb4c279fd2b4e1be3080ad5890e6341ebed4d9eec7dc39ce6803b14bf4d9c30acdd52e95ed9f9ede958705f304da49a86faf7741b32793401b9e1fb2fb4ec0705492e71e82bb427626780a077e82b8fd2b51b6d234ede4f9b294e83b0f4acc9bc5525e49309c30529b5231d33ef401cd4a842646703d6a38e4190b5ab2da97b32075db9158a094386183401ad6ff38c9e31563ca57201f5acd825200c1ad08e6c9009c5005a3610b2f0074f5a62d8c63865047d6a542fb786a64a64c707045002fd9ad508cbca8ddb6914e36314832b71707fe042b2e49a576c9ab3693dc6fda09db4016bfb3e5df95b8902fa139a866b10ac09663eb9357566751deab5c4df3673f866802b3ed897e955e15fb6dea440e17a9fa0a8eee7ded807dab6b4ed3c5a686f79226679bee03d94d0074ba469b6b1582b089776dcb330c9ae0ee5a27d4a43103e59970b91db35e86ae2d74e9412aab1c5d4f6e2b83b6b576956e1ce7e6ce31401a423010281c018ac1d5edc4536f51804735d164566ea5b645da79c50073f1cdb0605588ee4820fe955a542b938c006a20d8a00e8ad2ec29c92307b569a5d42c3803deb8f8ee197a74a9d6edba66803aa6304a738071eb4e59ad946dda83e82b9917cc06375235f36dfbc280376eafa344f9187d0d624d7bb8301d6a9c970d27ca1aade9ba54b7f2f2c1631d49a007e996e6f2f555feee0b73debad086e2216f173b71803a0c5074ab7d36e63b891e258d130a8bd58d365d559415b688203fc4473f95006918164b5956f66d8b270c376d159b7d716c228e1b3881553cb01806aa3ef9db7cac598faf349b76f7a00ffd9, 'cit', 12, '2016-17'),
(25, 1602036, 'khan mohammad jahid', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108007c007c03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00d2f1adf9548ed11c8e0bb815e672caceecc78e7815d5f8967136a376f93c1da0d725229de7340116e258e4d1d3bf34e2a3de99b493d2801eb96148c4a8c0a721c7e34adeb40111dcc3a1c50a99e7353072170474ad6d36c23997cc2093d85005082d7cc1c7352b5b90318aea2df4eda30a807d45594d16393965039a00e62d34e720315e01c9a967b768c9f403b576b6ba7c280a85e48a8f50d2e2fb23edc6ec7a6280386542e79e07b5598a3d92061d0548d1ec7231834aa0631401dc7c3dd65adf54368e7f752f5f63dabd62bccbe195946f777972ca0b200ab91d2bd36803e6dd5c892e2739e19d88fceb05b835bfe204f2756b88d57017b573ec493c5003796356044c54614e2b434cd3d27884cc3be2b4bec11aae36d00738d6cd8e87f0ab16b642465ddbb03ad6d0b1c83fd2af59e9caaa0953d7d68032174bde362a617d6b734ed3441181b71f8d68c76a07515761809ed4010c710e081569176f0055a8add00c1c53e436f0ae5dd57ea6802ba27cd9e9f8548f1798bb4f7a81f56b08c733a71e9525bdf5b5d2e629431f4a00e3f56b7115d383ebe9541146ee6bb7d4b4b4d42265da03e3820571af03dbced138c321c1a00f49f864e3c9bd8f1f364126bd02bcf7e1a2b037871f2e0577ed2a21c33006803c1bc5519b898df28015930401deb8fda73c8af58d5b46825f0a4d25b02641c9e7d2bcb99181e7af7a00dfd0416b0618e8e735a3e564d1a1db8b7d096597e50c4b93ed542eb5fb784108bb9b3c1a00d68a0503e6c55e8046a30702b8b3e23b827e555033e949fdbf293cf1401dfee4519f4a85b54b6843167191d457256faf34b1321cf3dbd2a9cad797321f2e190a939c81d68036f52f1848034764b839c6fcf4ac0171797c46f6924663eb529d38c23ccb938efb00a7ade3c3196862f957af1401a9a7f87ee2501a595507a6326b593c3d2478922b83c75c715cfd85edd5dcea8aea1a43b55319ae815afedee444814faeca00e834d8dbca11c872ebdcfa560f8ab4ff0026ed2e557e59060fd6ba9d3d098834800722a1d7ad7cfd2a42065a33b850045e0396586d6e4a1037103a735d57cc793924f7ae2746b59ffb3598965424b003bd5ed3ef67860646763873d4d006b68568d73a54fba3211d9957f2af1ed674d96d3569ad1c6184981f89afa220816085228c6114600af39f883a444359b2bc42374b22ab8efd7ad0072fae43722cadac205f97682d8f6ae7934b81306790eeeea0d77da9b471a49215cb0042f15c7b5b24bbccc5938f9571d7de803367b7b2550b1b1ce7ae7354da005f0bcd684168c938dec3606cf1deb6a4b559a2decbf37f08c628032f48d3c3364839eb5e8ba65a44b68418c038c03f85733a6db794ab9eb5d8580dd10e3af4a00e7f5ad29a765c28db9e4d657d8e6b78da258b746ded5dfbc0ac3e61f98a864b184ae5783f4a00e2f48d31e3baf322b72879ebdabb1b1b02a3795e7b934f86dda33c735ad6eb95f9b8a00aab1329e3f1a7cc81ed66523ac67f955d2abdaabcf85864e9f70ff2a00c8d32fa18ed92072772f1d28165e63c8c84ed2e48a85eda1f22265ff5ade9deba7d3b4cf36d7737ca738fd05006f01c0af27f14432c7e2c984859b0e25424ff000d7ad5709e3db4d93c17eaa4929e593f8f140183740bb118e2b3ee2cd660381c0ad671e65b453750ea0d56ef8a00ce8b4e8232084cb0ee6a478c0eb57f6d453460ae49e9400cb541c1f7aea74d8d5d3ae78e2b89bad4e2b650a180e6afe9dae2aa06563f85007652c3263000aa729781c2b7d6b0a6d735671bada1cc639cee19fcab42da4b9bc8564b852ad8ef401ab6eeac46475ad00063ad622131b0e718ad48650cbd7340121fa556bccfd99c7f7863f3ab59cf4a4681ae06c5524fb0a00a9a4d944cd8c1697f8723815d64110861541d87350d9da2db42a382d8e4d5aa002b23c4b602ff00449d31f320debf856bd21019483c82306803cbb4e25ec0db37de8feefd2abcabe5b7e35a3aada9d275fdea7fd189e07b1eb516ab005c4883e56f4a00a1e60f5a8e670f194ce323ad55926d9d6b26ef542ae5149cfb50047790243217772c7b0228b32a0ee518354d8b5c36e63935a760f1daae1901cf5cd004b15fdd42414276fa1e86b6175e9a38d7e5c71d33c55659639485550fcf1819c54f259cb22f31afb64d005b875e126048a14f7c1adcb6b90e8083c571135a4b1365a3fcaba7d2e51e42a9cf005006fc52138c5745a7c616d95b032dc9ae62199438ad4b3d476dcc50eee1db18a00dea28a280239664887cc79ec2b3ae2ede5e172abe82a363b8e4e49f5a6e2802b5c5a43771f973c61d7dfb573f751e12480ff01c0aea081585ad058e659939dc30e076a00e275084a060d5cfc910071debb3d4e359ad9881c8e6b9574cca777183400d8214500ba337e3c56bd97d908c3db866ce3e6e6b35a4207ca05557be955b09f29cd0075f09541b63558d7d07157203103cc9b8d7051c97733023cc6e71d6baad2e29238577e493ebda8036a6dad16d1496b18519ce2a2c8c75a864bd589700f3401a6f32a77a769d2efbb13eecaa1cd73cd7ad732aa2773cf35bb664430aa0fc6803b58b5bb2925f28c9b1fd185680208041c83d0d798ea5b84c2551d40c9f434b6daddf5bc2234b97551d050076d8a8649553ff00ad51cd236edb9e2a0ed40049333f438155cc2b29db29214f5c5585009a930076a00e6b58b25b32d240ed25be39c8e4572d79042cde629193d4035e98f147229574521860f15e73e27b68ec6f95adc14ddd476a00cc68d00c1c5314c39ced191546e2791780d8cf5a82363ba80364def9636a63deafa6a5b22525ab9c66229a6462319e2803a76d5d1232c1b7311d0d5217325cbed51926b3ad904aea1b3826ba4b28638a3c2201ef4016ec2d1605048f9c8c935ac954a2ab89f76801b7037c781cd64ba30722b61b8155a4197cd007ffd9, 'CIT-111', 13, '2016-17');
INSERT INTO `trainingset1` (`id`, `roll`, `name`, `faceImage`, `course_code`, `course_id`, `session`) VALUES
(26, 1602036, 'khan mohammad jahid', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108007f007f03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f0076ba57fb266563f7b815e7122f27dbdabd3753b6fb4594898ed915e6d3218e42a7b1c500553c9a4e454a4027bd30a9cfad004721cad084018a985b96eb91527d88f181401063776ab1059990f2a454b05b00c01ad8b688638068028c76272005a90e964af3d4f615b71c21474a91631bb38e94018f6fa395c3311f956c2699198c7ca38a96adc24ede68030351d2d52333019f518ae6275c3715e837619a275519c8ae1ef21f2e520f63d2802815c1cd2eee7029d8e4d371f366803d81f18c119af34d5c8fed09b18186c10057a6f7af39f10c020d6274c601208fc450065c685df0bcd5a8ad71f33549a3441eea41fdd8f3578c7cf4a00a2b164f156d6df3d6a74b6e01c63eb56e384707ae28029a5a80738157a2419c28a7f979ed53c2817ad000b11229fe590381521963404bba803d4d51975db38f80d9c75a00bab1927a74ab4a005008ac0ff849a10d8542d535bf892067db344507661cd006c94f94f7e2b8cd66dde1b86628769e8715d8c7730cd8f2e45391eb515dd8a5e4651c75efe9401e7791bb38a76d53d455dd4f4e6b0b92a7254f426a98a00f5bae43c676dfbfb7b80bc105588ee6bb13587e27b5fb469264070623ba80397d0d3f7b74f9c6100fccd5d678a2e59b9ac68aedad20982637498e7e9545ee669796626803a5fb54431f38a58efa3ce01ae577b81d4fe74e499d4d0075935eaa267776ed54a5d5caae149cfd6b2d259264d9d476e29e9a6ddcb9290b15f5ed4015ee2f6e2e589773d7a0a8561924c00bcf6e2ae3da7d9cfcfd6888c92bec89493ed4013dae979c34d2051e80f35ab168b6f205db38fa66b05a799242990a41c74ad181ee4da35c0f2ca29da31c13401a9169925acc1924240ec075ae8edf12c793d7bd737a55d5e4d80f1b3267a915d4db4588f3d33da8031bc496227d319d572e9c838ae1d4106bd46e63df13291d462bcda780c33ba7f7491401ea78aaf7b6df6ab29a1e72cbc55900d2ed38a00f3b8f4566b7967972161e187ad67cb2c718215001ec2bb9d660234cf2201ccee727f1ae56f6186d6d8da3467cd049693d68030a46dd82063348b1b679153c76e0b8ce4f3d05688b4dccb918ee6802d695660ac6db47ad75b15bafd98a81826b234f8b6e38e9daba0890f979a00e4b56d39998103a75c0acc8965b43f22e73c72b5de4d1237de507f0acf9ac622c4aa85a00e41a0fb4cdbcc6727ae2b774bb3c22831e54741daafc56201c900fe15a1043b790071400b0dbed00ed03d80ab91f029f1c791cd3ca01d280216190735c6dde9e26f10cb1b70846efd2bb5651c8ae7a74dfa9cb2a0ced5033401d3e295632dc00493daa782d6498f0303b935a70dba42bc005bd680394d6e1f24c08782aa4feb5cbdddb2ccf97e6bb0f11e0dde31c815ce320dd40198b6880fca80548221902af151503622258f6a00d2b08c679c715b68a020c572506a0164055b02b50eba90460bba0fad006acaa71902b2e69bcbb8dadf5a643e28b691f6875e2a2b9945dce665e980050069c4508c8ef5697000c0ac68262b815a91cb9514017172bf4a0b0c75a88371413c75a008e4936e4d6245290b2b8c6e77cd68dd31d8c3daab430af923e553f519a00ef15428c01814f1d2850453c03da8039af12c04c8930eeb8fcab97738af40d56dfcfb1624729cd79fdea342f8268022df597a999181f2c9c55892708324d66dd6a39056339f7a00cf52f0b7de3bbdcd4e662c14bf38f5aa91ac92cb93ce4f26b523b246037c838eb834012da5c59c93af9912823d456dadfdb00006519e83a5602d94424dde61c67a5473db156255f2b9fca803a612a39f95866af5bcb83c9fa570d05e4b0b800f7aeaad262f12b1f4ed401b7e70dbc1a6b49c55112376a72163d49a009672044c6a3b6991460ff002aaba84fb612bbb00f7ad3d07e6d38363927a9a00ed80a917a5016a40b4011b46254646e8c315c1eb767f2938c323106bd0b6d73daf5b28ba57206d99707ea2803c935091c4ac838159abc120f7ae835eb6fb3dd904104f4acab78f2c5a80191c7349c471b1fc2ad456b7c18288f6e7b934e599e27ebc0ab5f6d4dbf34c38ed9e68024874d3d6e2e803df654cfa3c5203e5c927bb135045a85a11cb66b4a0bc575c28c0a00c2bbd31addb319661ea6b574f7d91ed27a53ef72e802f4079a65b45c673401a224a93cddab924555c80bcd559e51b0e1f0b400fbb951dd5188258f415d5e990aada6c03014e2b85b256bcbc007dd5e49af41d2406b7931d9bfa500758169c052d1400567eaf68d79665107cea7729ab771711db26f909c7600563dceab34b958bf7687d3a9a00e13c4f6fe7db2ca8a5a488e1f15ca86c291d2bbcd5e3f219ae179463f3a9ae4aea188b978bee9f514018933c9ce09aaeb14d2be00627e95a8fb109e327dc545e684e40a002caca6694065e9d6ba0863d8304f4ec2b0edeed9589ce3356d3503920751401aeeaa63eb4c37290c783c1ec2a8497db17a7d2b3a4bb321e49fa5006a4ba82b2b0ce08ace9277b8904699c9ec2a934bbbd6b674ab3c1dec017f5cf4a00d8d2ad85bc2a3f88f5aecfc33199cdc47c67018572b10db81e956c6ad71a44125d5bb946e01e339e6803fffd9, 'CIT-111', 13, '2016-17'),
(27, 1602036, 'khan mohammad jahid', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080081008103012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00dff8aa52e9ac9e2605369048f5af219c61be95ee7f13b4f8869d05e0c2b6fd847af19cd7885ce3730f7e28028484d33da9edd49a61cd0046e38a605dc2a46dc45342b76a0066dc1a9154b54b142ce4641ad48acc6d00019c50064f9071cd3442c5b15d0a588e370cd489a6a31dc47028030e3b22cb9c1343c053b57576d6710e053ee2c2368cf0338e33401c53023b75a451ce6addcc46372a7ae7b557db83400f5e2bbaf0fcc8da726d278ea3d2b831c9aed3c1f6933dbbccdb4c25f001a00dff0033eb455efb327f747e545004de37f11fdbf4d8ede545041c8dbdcd792dc9f9c8ef9aecfc5899b486619f95f6935c4cdcbe68021f2cb734e101ad4b6b656b1593824e6a264c718a00a6b0803a53d6004f4c54e10e7a75ab0b17b500410c18fad5e8971d4d33cbc55886227f1a0078a954e0548b00e869fe4a8e3fad0025b825f38e315719772e0d411ed5380c01fad5919039a00e5755804731ff000ac93d715d9ea5a7adec5b87120e98ae46e2de4b794c72290defde8022553babd23c1a9ff12241907e7278ed5e74b5e87e0724e932827eeca718fa0a00e976515273fe451401cfea70fdab4d9e22012549191debce994671f857ad796806028008c5799eb56e2cf54b984740d95fc6802dd847b74c8c1fe224d412055345edf0b4b58ade3c1754009f4ac29aee676fbc45006d646735224886b9bfb4ca0e4b93f8d396f5c11dff001a00e95e455193c527f68450a827d3b56135d34eb8a88f9adf285639f41401a771afc8415886013d4d67b5fdc49d643cd37ecdb4fef38f6a91258a1e42838f5a009215ba98600761f5ad2b69f50b23805f68eaac3355adf57e7ee301feca66b5e1d6e3202b1590639182ac3f03401a5a7dd1bc4f99363547ade9a2eac9a451fbc8c647bd4f67e4cae24878cf6c569b46194ab0c82306803cd91464673cd7a1f81c29d36723ef7998fd05715a85a1b5bf9621f741cafd2ba8f0c6af6fa7698d1b23bc8ce490a3b50076f834573dff00097597f724fca8a00d8c5719e33d3d84f05e20f95c846fad76f8ae7bc5529482d6dc45912ca3e63db068038bbfd30abb4cf9da4e315972bc31120a01f866baed72ddae248e38d828fe239ae5afa14810c2c8030e370ef401424647e113afb54663c9e570454d04789037271d31565e1dcc0e093de8025b0b6076b15cf3d2bacb7b5885a61635c9f6ac1b28c0da3a574f68018c0a00e4753b4759f01481eb552258511d648c92c319aeea7b28661875eb58f71a4221f97047bd0073305b95901593033ebce2baa8eca1bfdaf38fba30a01a8edac23539282b66da2541c0fca8024b4b68ad80d8b8fc6aff00de151a43bea509b781401cdf88ad374f6f228e5cec26afda58451dbf900725793526b51eeb68ce73b5c7159a6fae6de6f9c0d9db02801dfd9cdeff00951577fb487b7e5450075f8acbf115b7da3492c065a175907e079ad42ca3a9151caa268248f6921d4af4a00e32ef3e731ed8e2b0eee159252cd826ba6b9887921c8ed581328690e28033c42074514ef2c640ee4d592a292344121773855e6802682321c7a0ae8acd084cfa8ae58dfa17c267f1adbb1d4d520c36de050068ca76f41542e2402500ff0010a46f1258a4a1199492718e6a1d4668af248e584741dba5005a89411d2ada26dac9b698a0c1f5ad689c3a8c5005f89b094ac7bd42ad914a4f1d680286a72e16104ffcb4ce3e9542e37df6d8e28b71ee476ab7769e6ce81ba039c558b4cc659420da7d050067ff0063c9fde1f9d15d0fd964feefe945006c8c0e829d9c1e292968039fd421c493c58c63e75fa1ae4ee06c723a60d773ab4614c575d42feee41fec9ef5c7eaf0ac529da78278a00cc2f54ee7731ca9eb4f77c77aa32de004a8340151d0a48599886cf18356a3b87119dcd91544ef95c9f5abd0db064dbbc67be6802d457d6ee82392dd473c915ad15ddb2a00ac145627d823c8025e7bf14b35a15198d8118e6803a25746c1520d5fb672a3ad70f1dcc96ee31923eb5d3e9b79e7c3ba803a2593e4148cfc55113363ad286663cf4a005b86db2c7c1393dbbd6be9903c854989c2672770c573d34e56fed1727fd6aff3aeff00a9a004e3d0514bb68a006d2d14b400c78c491bc6c0156041cd713acda388ca9fbd19c1f7aee33585adc412e12561fbb946d6fa8a00f33bedebc741596ca43e6ba1d6e2f2a723b76ac645cb64f6a006a893380879f6ab0b6d7057700383eb4858af4352a5d051866c7e34013c3672b60bcaabfad5c3a6218885999a43d80e2a947a8c0ac03367e95a16d7f191945383de8028dce952c2bbb76f3dc0153e9323459461deb4de5df09c1ea2a9dbc3f3d006cab8c0a7f9985cd555c2a81e955ae66f2e362ad803af34016a16126ab086fe16df5e840e45799e8f13976b97c82df76bb58bc4363f71ddd18707e5cf3401b34566ff006f69dff3f23fef9345005d0d4b9cd63ea3e22d374b97cab9b8fde77445248a934ed7b4dd50edb4b905ff00b8c30680356a0bab44bc85a27e87a1f43530a5a00f39f1059ca9ba1923c4919f94e7ef0ae50820e0839af60d634c4d4ad0a9e2403e561dabcb2fa36b7bb782642aea79cf7a00cd90313c55668a427045683ba28c8eb5099416a008d2d242c1b38adbb4b7312ae48e958de790dc1e2ae2de6d51e87ad006f2019c1eb4c4648989cd67457c0725b9150cf7c598e0e01f4a00d493504fbbcfd455042f7d384390839354e347b87e01f738ad9b28160551ce7b93401ad6f85451d80c0ae6f5812c7aace52420121861bd6ba143c562eb7116b91228072bcfe140197f68baff009ecff9d151e1bfe799fce8a00d1d73fe43d7bff5d0ff003a7f873fe461b3ff00ae828a2803d88f5a65145002d79578cffe43cffeed145007352f4a8c51450021eb4e1f768a280261f77f0a6c7d68a280366c7ee1fa5692f414514016d3a7e159baa751f434514019145145007fffd9, 'CIT-111', 13, '2016-17'),
(28, 1602036, 'khan mohammad jahid', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080082008203012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00e9258f06bcd3c4d7267d5a607854f940f6af4c9e404e2bc975d91a4d62e8b0c61c80050064b9c31a889cfad48c72c4502162334011631ef4dab3e49c74a3c8a00aae72284031564dae4669a2d9bb5004247b53d54915721b43d5855b1659140191b0e3245331835b6d61b979e2a21a6be785c8ed40194149ed52a02a79ad9fecd6f2fe5033dc5519adde32415c62802b679cd491b1dd9cd331eb5222fb50059de7fc9a293b51401ea664c9af35f10a18f59ba07f89b22bd1378ae07c519fed9908e85450061639ad91022da47c0cedc9accb788cd3246064b1adeb98f622c63b0c50066ed1d8537cb39ab1e5e5bad482218a008121cf514efb38cf238ab6910c0a93cba00823840ab71c600a6c6849e455b4878e680231183cd4a100c714f10b0e94f48ce79a009523431f2a0fe158bacc01554a9c0ee2b7c2e00c5656b310f2b268039723b53e3e287eb428ce0628025cfb514bb3fd9345007a41490f44383deb89f1646c9a9a9618063e2bd14af15c6f8e21f9ad1c75e57140183a5a476f0bde4cd81d12a0bad5f7c9f22617dcd6a4fa6b3d94102e176282dcfb561c96f12121896f71c5001fda6d9ce38a9a3d441e4f1ed54a48a23cab63db355c8c1e2803a186f5490062ac9b945e4906b96491d5b8ab865919791401bcb7d0a00c4f5a53ae5bc5c9e47b1ae699ddb8c139a8fca6f4a00e9878922fee719ab30f882d49f9830ae5a3b72ed8dc055fb7d37701894673401d75ade5bddaee85f763a823069b7f6c2eed5973823a573eb63756b2092224e39ca9adfd32e24ba8312ae1d7afbd0071b2a3472b2382181c735220c8f7ed5b7e23b30863b8518dc707eb58f0233381d7e6a00e92deda336d112064a0eded457456da7c82d610635e107f2a28035715e7dac2bdc789de27625566e9e83ad7a2e39ae12f900f165cff007892dfa500477eecd0bc7170c78c935cf341142645ba059f8d841e056f4ffc46b2ae62f34e4d0060f96de6100753daa736d88c30249ee2ae0b300f39fad49e400bc50052b68774838aded3ec83cbb594104d52862c1e056fe9b1f2bc76a00adab5845126638c0c7a0ae61d58b903819af41b883cd8ca935cf5ee8eea3727299a00e7e685e1457ddf7bd054d62d34926c8ce5bd08eb5335a483e53f3283d2ae585b323f00ae78381400eb5d41e2944720217ba9ed5d0e9e0171220e18735143a7c0ca0b40a4fa915a56f0ac5f2a8c0a00a5e20837e94e47f0b06ae7748b7fb46a76f17ab827e95d6ea481f4eb853fdc26b9cd2ecdddfcef98003e5c1c66803d354c6aa06470314579d34acac47cfc1c7dea2803d0eb85d52365f194c4f468c91f95773bc7b9ae575b510f8920918616650a33f950063dc0ec7ad536453d45686a31f972b71dfad6716e6801362fa540f9ddb40c9356430a80cf1c4ec5b823a5004f145b5578e7bd741a6c39e98e99ae4c6a51c8ff0029e9ef5b9a5ea7e530c8040a00de9906dcfa567cd2aa80a7bd595d4eda5c6fc267df359dac840b0bc0f91b8e6800fb3248781c9a9a3b7dafd2a0b4b8dc8b9ea3ad6a47820639a009618c95e952797b4d2a640c83c1a566a00ad7ff002d8cf91d508ac8d3af21895226c82bdeb435298794233fc4c01ac7b8853ed4a22e738e280349edd1a463ea49a2a52ad9e87f3a2803afe82b07c556525c5947750a665b76c9c75c57414846783d0f0680383d5889618a741f79735cf3390def5d25fc67c9921ec9232fd39ae62e87979268017cdc556b9f2d94927f2aa32cefd8e3351ee771c9a005ca06f97afad5a495d6200b9e7d0d558e23bf24e2af8b6574055c628025b6822b96016668df39e6ba54b4db02ab49bf8eb5ca25b4b1cc0ae481ce45594d4ee2138ce70ddfd2803670d0b915a76d3128077ae7e3d496e080462b4ed64e783d6803692538c538cbc75aa21f14ede4f00d0041740cd38c92157d2af5bd94388da28bf78dc6eef505aaac92beec7079f7ae934cb4445f3803c9f96801cba4c7b1777dec73455fa2800a4a5a280394d4a309a95cc478127ef47e3d6b8ed5804720715e81afd9e6117aa097886081fddae175b5df1acca38e9401ce14dcfb40a94dbfcbc1c1a9100cf4a1a40720f6a0044b39df942a7f1a963b7bb04a795fad4715cac67efe2ad477485bfd60e7de802782ceedd372803d8b5473dace321e2e4771cd5b85c138121c75eb57be531e33c11cd0072c15a398053deba5b407cb53eb59734082e72bd335ad6cd85e9c5005b04edeb4e3218d0b1ed51ab83f85112fdb6f21b65ff968c07e1de803a8d0ec2ddf4e8ae25855a47e73ed5b6a000001803a0a8ade15b6b78e04fbb1aed1530a0028a5a2801945028a004650ca5586548c115e7baed97d82ee481c6209326327f957a1d735e328619f4a11bb0131398fd6803cf248429f94f155a588b76a5fb415186e3150b5ce4d0040d6efbba7229ff679558617f1a904beb4e8e73b85005db385d705b3935a91ee0b8cd508ef01ebe956e39d7af4c8cd002a47ba4248ef5686d5159ed78a84e08355defc9041393da80342e2708321b1f8d3ac6e67b0ddaa1eb1f0a08aa16701b9943ca7e51d05696a600d2a5503d2803add17c5b63a9058a7220989c73d0d74ac85319efc83eb5e100947ca9c11d2bd43c0be215d4506977b27ce3fd5b9ea2803a6a2b48e8b779380a47639eb450065d2d1450027715c178c1dbfe124b45dc71b8719a28a00e2751e2e5f1fde3541a8a2801e294751f5a28a009d3ef55dc9f2c727a5145004069b1fdf4fad145007416fc22e3d28d57fe41aff0051451401cc1adcf0cb32ebd664123e61d0fbd145007d29013f678f93f747f2a28a2803ffd9, 'CIT-111', 13, '2016-17'),
(29, 1602036, 'khan mohammad jahid', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108007d007d03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00d0f1bca62d2bcb507e76e4fb5795dc7dee2bd0bc63732cda5647f7f9af3a94f38a00818f6c5331532c65db029ff673d31d2802afd28278ab5e4103a53c5b03c11401417834fd9bba0ab46d476153436cb904d00544b66ee31527d988e4d6bc56e3a119ab02cd3ae33401ce340d9c62a45b32ca091cd744ba7c6e37b28f6ab56f611edc0e2803926876f4a8d87635d55f69a9e5b3ed076fa5737227cd91401122fa5594e17bd44a306ac2e31d2803bdf114667d16703aae1bf2af397e4d7a66a23cdb09d3d508af343956c63a1a00b7a5461e79370ce138ab33200d814fd1e11e549311f78ed14e9d43484e6802994352471d4aa8a0d4c88b9e050044221e99a911067a55809c52aa7cc28008d71dbad4ea3d45491a2f53daac04427f0a00ae31d0559b752393de904687a11f9d598d08191d28020b95dd0b0071c571f751ec988f7ed5dc119520f718ae4756b67b7b96247cac7834019f522021698bc9ab089c74cd007a8b5b2ec60141c8c735e51770baea12438c3f9a57f5af61c579f6a962a7c5d8439527cca00a7777d1e9f025b42b9755c1f4158ada8cc4fbfb1ad8d4b4e50cf3c8ff0079b017d6b1e4fb3a67283f3a006aea1283daac26a2777bd526f2c8caf7a8b6f3c1a00df8afc3a72c3f3a43a8ed7e0e7d6b2208dd8e455e5d2aee700c69bb8cf5a00925d666030b8354df52b991b2653f851258bc0712f0c3a8a8f083a2d003d2ee62dc3bfb60d5d86fafa33b84ae31ea2abc37a22c00983eb8ad5b5d4908c148db3d4743401a765ac2dc6c49c1494f19ec6afddd8a5e40c8c3248f94d674705adc7cf12a861d456edb02605c8e5462803cfa489a199a36fbcad83572de27914ed527156b5eb6f23557207120dd57342b07ba8a6605805200c5007a0489ba3751dd48fd2bce74b5ff00898cf231c945239f5cd7a601f30af3d82210dfea110c128e73f99a00a9a9c4d7b28dae1540f4ea6b0ef047e4088422374001239cd7453f00e2b266b757627bd0063c31fcea5f040ed53c90618150003daaea5b2a9ceda7b44323d6801b67000b822ba9d2e15488f1c915856f190e38ae96c1498f18ed40183acd93b6597a13586b18864cb206c577f2a03c328acabbd2e262590053d718a00e46480c93174e01e719ad7b3b15b8b35899417ce4b91c8ab2ba6286048fcab4ed6d16320d004163a435b386f34b0ae862188c0a8a38be4e2a7552bc50073fe268416825c75ca9a66996f7115afeee678c31c902b435d50d6f0038e250696daf6dda3ce4500763deb8896dcc7e23d510ff00100e3f3aedbcb1dc93f8d735ac462d7c45149fc173184fa1a00c1b940a4f354f68ef5a3a8c66299873c9acc2dcd000cbc7151a4459f27ee83526fe2a9dc5fb46b851c8a00d388a89073c574b62a9e46475c579fc5a8977fde023d2b72d7591045c39f60066803a69b71190b5973cfb67f2dbd2a8ff00c255345228f21c027ef30a96f67fb73a5c2ae3e5e6802f47b48f5ab31c40115936d3edc035af1480aa9a00bd18017a5293835189415a6b3f19a00a1aa14924862623939358b711ac33322f2074ad1ba0d3ddf04050319c55a4d2edf6eec3316e4926803b222b23c4360f7960b2c2b99a06de3e95b1450070babed9608e75fe2009feb5cdbb9049aeaf5483609e11fc12103f1ae46f33183eb4008d3e3bd54b89a3c64f26a9cd2b9ea69a017eb40019373e31c5581214518a8e28d41c9e6af2885d002bd3ad004d69aa00ea9708ae0742456c8d42d980c1c66b016d6266dd9200ed514d16d6255b8f4a00e84b296ca11f85685acc71835c6c376f14801e99c57456b316456f6a00de128c0e694c848c550598eda9165e7268025b78d6591b3c8ce0d6ed8e9cbe49c924678cd54d134d86e6d7ed4ecfb99cf00f04574288b1a0551802801d8a4c519a28039dd69163bf25bee4e9fa8ae23594f2a665c7cbdabd3352b11796cc140f354129f5af3cd66369212ccbb644e1d68039864ded8152081368ce463bd28e0e687931d680258aca391b3e711f854c34c5dc47da4e0d505bb0873cd4eba9a000ec27f1a00d6b6b1b7407cc91987d714e7d2a077deacc13ebcd53b6d4518e361cfd6b5a39b78c74a00c0b9b36866c6091d456d58802151ed505ca1927c13f4ab504463519a00bca578144ee7608d3ef31da0555797cae7a8a8ecee5a5d46294aee8e260edf85007a1e976c6cf4d8203f7957e6aba2b3b4fd62cb53c08260243d636e0d68e08ea2801b4a7eb45267d68017deb94f1569c4236a108e147ef140ea3d6baaacbf104de468d3b050db976f3ef401e56e2373b90f5e6a178c1ef45dafd9eee444fbb9c8155de67e39eb4003db0f5eb4a2cd3032dce29a2438cd2798cc680352cad15141dc2b563c0001e958514ecb8c55c8a77db9cf4ed4017db6acc0939f4a1aed546323f3acdb9b972c7b552f319ce0f6a00d0372f732f948793deb5e08560b0954632636c9fc2b3f4e89546eea6b573fb9907aa1fe5401c9c13cd6d2ac9148430f435de685e3a31597957e82474385627b579ec8db49181d6955b70e40a00ffd9, 'CIT-111', 13, '2016-17'),
(30, 1602005, 'monir hossain', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080083008303012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00e37c4978d77abcd939488f9683d3158a6ac4ce646667fbcc4939a8339e050037269694c4d8fad1e59f4a0061c67346ea788d8f414794c0f239f4a0055c75a9523321c74148232a46e18ab318e301493db0280152d14820f03d686b25042a9ce7a9ab51da5c1c165217f5ad7b6b0006e71d4700d00612e9f90180ebd2a75b2565f997f1c56cb4414edc74a63263f868039ab9b7680ee03029d617220be8656ddb55be6c75c56cdcdb896d997033d45738ebb588e411401ecda6cd17d8626d85b6f4cf7ad0172864590400a8fe06e9583e199d2f341b5913f8576b7d456d043401acbac596d19d263cff00bd4564eda2803c4666676f98e4fad10c5b9ba50ddaac5a11e60cd005e834c564264249f414a34d558a5933855e99ad3440b1863e9d0557649af176042b103cfbd005182db742f2f45070003d6acc1a59640cdd5f93ed5a30586e44120c22f4415a290803016803252c218bac61bdcd5b86084ae0201566480f615142ac92608e28024f251578514c1c74ab582452791ebd280284aa4b640e6a304f43575e2155dd31d2802bc89b874ae5af502dc37d6baf0335cdead6c23d4194138201a00ee3e1fb6ed1664230565aeb42d731e008b6e94feec73f8576013da802beda2acf97ed4500783cc851d97fba714b68b99d57d4d6a6bb6db2e3cd119556ead9e0d54d3a263731be0ec0796c71401d14630a07a54c98c03daa367550791597717f372aa42afd2803a18caedcf18a7f9e8bd587e75c5cd79705b6abb1a87edd7b13756c7d3ad0077a26465c83401191ce2b8a875ab98d86e5231c1cd6c41a8f9a01dd401d016455ea055796f62442770aca9aed8275ac2bcbc965caa9e2803666d6e24240604d557d6cba901067b106b0e2b69656c2ab1a9cdab47c11cf7c1a00ddb2d404aeb1be031ee2a9ebcb8bd8ce3ef47505b6d4757ee0f7ab17d38bab8849e005233401e93e0db2f2746e08397278f4ae91613e95e45a65fdce9b710790586d20939ea2bdc60b732431c98fbea1bf4a00cdf20d15b02cce3a1a2803c2a246fb1e2425d49e8d5591f65d7d9514619770c559bdde96e02f00707daaa5944cba929620fee891ed4009224c6e1a2248572a171daabdcc22da46470495f535b6ca3767b8aa925a09642cc0eef5a00c812848bcd6854ae71d2a3495ae25091c60120f038ad4784a46c8572be9505bc42324c69863d4d0057b686491cee1c0eb91560c326e416e4293d4b0e2b4520f2e0663cb75c0a8eca279ef1188f97b8a00a57497b1c4a19a2c9ee14d511102a093f31f5aec753b71259b055e474ae6a384bcbe5ed24e6802092ce630a490e59b9dc334d8ad9b6bb4c082d5b325a18d1406c29ea2a15b31b58e7ef1c5005086da524301f2fa935725b63716a4edc14239fad5a8ed4e303b55a8a311c12823391fca803a1d07c273eabe5f94804718019dbb57b0c71ac512201c2a851f85737e049d25f0dc6c0104bb678eb5d3d00145145007846bf6420bb6217f752fcc31d8f7ae7a0263d5429391b4a8cd77fabc7bed43050db1b3f415e71773a8d5bcc5e8185006f0009a9820c74a8524523e5e957201b87340159e00e38148b6881b26b4ca46ab926a9dc4a8809cf4a0089e35c6d5fd2a5b589633c0e739aa692999f8ed57a0ca9c350059b95df6c78ac06c452960719eb5d0b9cc6c3dab0ee63dcf8a009915655193ba9ff675ac78afda090aed3c1e735a70deac83191400f65dbd053464a480ff00709fd29259c1c60d473ca21d3a7973f3152a3f1a00ecfc2faade5ae896ab04ed1aedce3008eb5d443e2c9d07efa18e4c0ea0ed35c1787e52ba4c0acc0e171815abbc1079a00ee17c4d1322b084f201eb4570e27603018e28a005b99d614666e9b7b9af2cd578d4252b8e4e78ae8753d51e53bb7f18c7e15ca5cc81e4dc38cd006f5a5d06890e73c56a457200eb5c85adcec3b7a56ac77059473401b3717985ce78acd2f25d3f70a3bd569650305c9da3ad44752da76c2bda802fabb59c8641c8c63147f6e2ef1846523d79159939b8b96dc01fc4e2ab1b6ba6c9f2cf1efd6803acfed78caf2c324561dc6ae7ed7845ca8e33598b1dc160be53eea8a4b59873c0f5e68036bcc8a44dcc464d40cc623ba27c8f43592e5d0637f3512cae0f04e476a00db176cdc9f4a8af6fcc912c5b8edce48aa924a11327ae2a9194c8f401ddf86a5b9689802cd086e1987b574ea4b0ae3f42d548b78e16e001d315d4c53aba8233401286e28a8f2b9eb8a280385d61f1229500061c81586dd7bd6e6ba36c918008041fd2b09fa500337953c55cb5ba208dc6b3d8e2904983401b7732ef4001cd476d6cd393b24dac3d466a9ace31826b42c27466dbc8c7bd004eb6b738c34a09f714efb25d11c6d3f8d4d2311ce4d46ba808ce19c0fad0020b1be63d87d5aa296c9e31fbc703d854cdad2630181fa5547ba7bb7ce4914008b6d089370049038cd549d1639771fc78abec4451963d85615dce64949cd003679f7b9e69b10cbe2a024e723bd59888038eb401bba61092ab31cfd2bb3b29f283fba7a7b570fa5c6ed2ab67284d755604a6e5cf5e6802fcd2b09586e3455427249279a28031bc4b18330603e607939ae698715daeb762b2dab3c608207cd8ef5c6f7c638a00ace3f3a8c822accab83d2abb1e6801379e9562da528e0e7a555a7ab738a00e8a2b81380bb867a512d98c166e703ad62acfe5e39c7d2a66bd774da58edfad004ab10dc7a55c855634c719acb139ef486edb6e33d6802c5fdc02362b7d456339c9f7a9a47c9a8189dd400a063bd4b1805866a21cd4919c366803abd2009ca42d82a46148eb9ad78d5adaf1a262480719cf6ae52cee5b83d00f4ae8b4e984c5bafe340174bf34539946eea28a00bac4fd865ff70d79db8f99a8a2802196aac9d68a2801b4abd73451400a68c9e68a2800c9e29a49a28a0069ea29bdc514500009df4f14514017adb807f0ae9b45ff00567fdfa28a00d372779e68a28a00ffd9, 'CIT-111', 13, '2016-17'),
(31, 1602005, 'monir hossain', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108007f007f03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00e58af7a4c549d4d4cb0023af340157b530827b55dfb39278e41a05a12fb718a00ce6539a7a0c0aba6c8eec0f989e94f4d3a538d83737a0140104516581ea33cd5f8ca86e46054d069574e705427b9157e1d100e5d8b1cf5a00ad1c5e76060e3356d6cf6ab03d6b42ded96dcfbe3029f281d450067adbaa9cf4a1a1539e8723157060f5a4283b0a00e3eee030dc3a918e6bbdf8657ca5ae34e60379cc8a7d4715c9eb308120607ad69f806636fe29b6c2e7702a7e871401ec8b153bca3564252eda00f9b9172d8c56cd9da47b433807ea2b194ed6049cf35d0e9ec1e2ce38a007fd922241da302ab2440dc138c22e6aec91cd2b6d1854f5a961b4f9b07eefa7ad005682d1247660a391807156c5a08d000b57a38828c28c01d2a43102280335490e148aba178a64b6d960476a9511b18f4a0085d7e6eb4c64e31574463bd4333aa75a00a4d190694539e7880e5947e355fed7179db0900fd6802aeb16c5ad3ce5ea8467e952783a3d9e21b766048391d3bd5eb851369d7007398988fcaa7f005bc6faaacd3c823d803a6f380ddb8a00f5853951d7a7714ea40430041041e8452d007cd3ceeae9b4c5ff0043423b8cd6449a7ceb3ec2bdf83dab6acdbc8b548a4c075e0fbd005c1ef5224b1ab60902b36eae5946233c8f4acd9679886c9639f5a00e9cdec0bc79829c2f10f7ae29bed2e092f8f6cd357ed608db233739eb401dc8b84347da531d6b93b5baba4e25dc476e4d69ac8cca0e0d00684fa8040707f1cd731a96be77ed8865b3d7352ea2641907214d63fd94c8c5b3fa66801a6f6e2724b73939c9ab3049248dcf18ef51a2ac6b80edcf5f9055b9ad4c0cac3907f3a00dbb0bc586cf648493cf6ed49a7176747794bc718daaa7b567c0f2f97e590a3238dcb52e98ef1ea12c52052bb09ca8efc62803d93c357093e8f12ab65a3e187a56c570fe12d4ec6c6dee1eeee52277601431ea05749ff09168ff00f41087f3a00f24b9982865ce18038fad46c924d62b70a01723eefe345ca012be47041c1ab96407f67c3ecbfd68031d2391a26926621b7101318e29bb1e460a80007d6b6a48048318a61b6e3818c7b50073b34524521561ce7f3abe9a6b791139721d802ca7b55a9229b76001ed52c2936e1bce71400c36eaaa03636d25ae9a663bbcc9377fb2702a6b9576da31c7535a7a65bf976e73d58e6803979ac05bdcc9b8b12c79dcd9a9ad2dc89b7ec240ed8ad7d5ed4bc991c90322aadb3344b82739a00a73c10b4a64fb3e1c7a93827e94863769b18e95a982edb8f5a5081727b9a00ce116581356e58479f6a2251ba53b33f953f00b7a54b33f9371a5b2a939b8c81eb802803b64f035ab448649e5dc14676918cfe54f5f03d901febe7cfd47f854b16a1220f96465e7a66a75d5ae3392ea7eaa2803ceaf6ce48049bd384f515574d984967807eeb91fd6b6758924786594286ca9ce3e95c96997062ba689b1b5874f7a00e8e3c13d6ac79608aa88e055a858b639e28013ecfcd396144ebcd4e48c5412b802802060a5fa719abf074e3d2b350991f83c5685b9dabea68023be42d86f6c564799b24c115b7727747f4ac5b95c92cbd41a00b4a415a638ebcd558e7238634e79be5e0d00213f30a966b957d7347b55c131e64607fcfb552df83907a7358035232eb6f7064d800db19f4c5007ae83f9e2a4078ae6bc3fa9cd71667cfc1dadb55f1d456c8b8cf4e68039ed4ee1459c819804271f5ae2448629b721e54f15a9acddf9972caad955e063a67bd623b0cfa5007556f70248d5b3cf7ad08a602b90b3bc68db6e78adcb6b80c060d006c99f8e2aacb2b4878e3da98189140744f99c803d4d00305c3daab1f2cbe4f6351c5abc865cb45b07fbd9aada86a031b62191eb593be67dceaac42f5c0a00e8a7d69082ab9dd8ef542da69e69cee70509c95159797b81b55093d78a8524b9825c85618f51401d332e3a557763eb594356941f9c03cf353fdad6542ffd68021d4aefc9849079e82b1aca644977b2abe39c30ce699a9cfe6dc614e40f7ef515affad5fae6803d2747d412e608c6154aafdd518c56e88b2386c5715a193e631dfc9fe11d315d425c151d680385d49365dc83b139159b2631c56eebd1aa32bab29c8e477ae799c50001ca9abf657ac8db49ebeb596ce31c53565c1eb401dbc5701a30723a5665d5cc92caca4fcb9e2a95b5f168f6e7a0ee6a48dcb49cf39a00b0b3c10e09397c74152adec84e62e054d1c16a1407890e7a935696ced8f2a8ab9a00cc7bc7395e07a81c5577370e0f9684faf35b7f66b587276ae7d45529ee573b5318a00c79e19420770067d3ad57f30c5039248c8ad59c811333761deb9db993cc665cf19e2802b9258f5a9e2f9086ef5548c1a9e304b28cf5f5a00e97452f1af9fc7cddaba98dced071d79c572d601161458158be3e63eb5bb6f21c6d7ec280286ad16eb7925c6303d2b9865c9e95d97886db72a8894600cb73deb9161f3918c60d005591706a222ae4911c66ab15a007c526c191572d6ec8917273cf359b8e6a68ced60450074c64de8196a06bb96238db9f6cd53b5b9c603671deb51e58562dc3a91e94019cd7f7529215428fceae5b404c62473927b62a9a38f3411eb571af82c6703b1c50053d51c20d9938eb58320c9cd5cb9b869188354d8e6801bce2a4b71fbd52c3e507a66983ad3836d3c500767a25f5b472c71801536e4fd6b52e7c879bcc8581ddf7867a1ae234f66dd8ce2ba2d3c90ec8ddc645007fffd9, 'CIT-111', 13, '2016-17'),
(32, 1602005, 'monir hossain', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080075007503012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00e048c9e4d263148fbb762ad5b5abc9801727da802bae4d3f045690d2e5dc32879e82a54d3bf79b78271cd006528f6e953c68d9c62b521d377972470bc0c77357d3480e06e3b7e94019b04217e6e3356a27cb60015a916890ece5998e78e6af258a4407038f6a00cd8ac8cc3240e3bd591648a3005692801400381511c026802a340bb3040c563df5bf904301f29ae88ae6a86a7196b46c76e68033b4cb9297a8b8cef217f5aefe23845cfdec5797453b453a48bd51837e55e9b0c82485241fc6a1bf3a00b5be8a83751401e2ebcbe09ae9f4a857ca0e0738ef5cb8e0f15d66864b5ae5be82802d48eb1738cbf455151db5b48dbb03f78debd85682c11efdfb416f535722441da8021b7b411a01d6a4784fa55a05453b7291d6802a5be558835608c8e94e58d739a93e51de8020f2ceda8990d4d35cc71a1cb0ace7d5ed93ef38a00b078aaf78a5ad6423a853d2abb6af6cec02b822ad071342db0e43291401c634996f735e95645bfb3ad77707ca5cfe55e670c65a6c0ea1b9cfd6bd3218e636e9e58ce4640a009f70f5a2989a75f48bb842dd7bd1401e40cbf3118c735dae876e574a8588ea33590fa44505e89c9dd6e1b7143e95ab34b2a4510804891f60060631c5004d7b7c9687628dcf5912eb5728bf2be09ec05685cda3c96df6c91a33800119e6aadbc5034aa190727ad0050feddbd07e73b87a1abb6de21937e1a3e3d2aeddc102a64b6c3f515991a34d2796a0b0ebf4a00de8f520eb956e0d32eb512b18c93543ec8fe605864db8ee4545790cd911b38dbdf0319a00ced4351b89df6ab1007a5578ec6f1d436d7da6ae49008086e0e4f02acc5a9b42769b42e48e9401462b69a2277702b7b4a9bca0caefd4820135912de0b92711f97cf4a7428b28daca1bd334010dbc2175560f908ee5411ee78af50b2921dbfb9f9b6e075af37b5b17b69261b8839cae7b5743e11f346a53233120c649cfd45007a54179fb84deca871d0b5159fe679a06e45f94606051401e577f7a0c72c6a9c9e322b7de206089707e5451fa57397e3c8595b6e55cf07f1ae9049e6468477506802b4c84c45368da571591269f363ef9fa0ae95572318cd298377f0f1401c92d8c8fdd8fd4d6941606da2dea0ee61ce6b656ce353920e3d29ce149dbd050055d32dd8ced238c803814ed6606648d80c62b46dd4281b7a525eaee8bfa50072ab6524e4672076e2ac35b4810c71b018f6eb5762711cbb0e3d2ad9891f9e9401862c047b724120649c77a7adbe24079eb5a8d081d0542dc1c6050066cc31a8e3b18b71aeb3c31a6986de4bd901dd2fca83fd9f5ae72381af7c476f6c831ba3018fb64d7a36d4821551844450a3f0a008810b45673df01236c57719ea051401c3f88a38edad1113ef3b558d22e04ba745cf2a369aa9e2d109f2de224907079aa1a25df971c9113fc5b85007610b65b9e957814039ac48ae805a95af3e4c679a00bb717088b54125f3e423d39aaebbae1b249c5457120b5dc5250ae45006f5bc8a06cc8cd3ee597ca249e95c647aaccb3967903fe18a4b8d725685973827807d280356e9826d914e4e6a6b7bfca8573cd61e9f79bd0acd296f426ad398ce7ca61b87a5006cb5c02bd45560db9b19ea6b2fed2e386a6bdf882267cfcd8e3eb401bde1306e7c5b7338e62894203f4aed752866902948dd900c9da3bd79f784755fb24636c5cbc987c3f249f6af51b1bc9638d5837cc47218500729f6b78c954b7271d4914577a9756d20ccf147bbd93345007ced7573e744e242493d33daa8412f97286071daac5e9d84a60fb9359e4f3401d4da5e798a06eabcd2845c9ae46d2e0c2d9ebcfad6c9ba122707ad004f26a9231db136c038a8ca89db32c98634cb5b486e0b0941e9c60d5a4d3ad63e02363fde340155ec20f2fe59d849ea4641a8c58a01f34a58f70062b5d34eb2231be45cfa35365b3b0443b8c8df563401812c314249ded9aaeb336ec866fae6b67c9b5276c70281ebcf350df451ac20f4c7414011c53ee8b73139f73542e6e4c8db47407ad327b8c2ec5aaca4b9a00efbc1ff638ae70e0b48402b9e95e916ebb97ad794e8504b6c631d9d977330e95eaf603f70a3be073eb401388cfa9a2a6c1c51401f3b5dc85dfae71eb545f35a3244c4e4802ab49100bd6802aab1535762ba2aa3a5542b49d2803a2d2af8f9851b1823afa56948e4afc879ae52de528c31d6b62db52f2d7121cf6f7a009269af557890af3c61454682ee538799883d738a59b50590f038ec2923bb514016f6089393d3b9ac4d46e8c8fb41e0559bdd40b218d3bf5358d236e6cd00318e6a4858ab649c7bd47c539473d2803b6f0a896f2f63065cc49cb027ae2bd3ac67f20aab81b40c715e3fa2078648e48db6b120f5aefa0bf9b600c450077c8aaea194e41a2b99b1d7258212a30413de8a00f35d534f8e34f90e063238ae76700704668a28028bf5a683451401229c74a50e73451400f12b67af4a779a5979a28a008dd89150351450037a54f01fde0cf3451401d569455adf76c00a9c035d158cad241f3766c0a28a00bca4e28a28a00ffd9, 'CIT-111', 13, '2016-17'),
(33, 1602005, 'monir hossain', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080076007603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00e7bc5b7265d53c807e585401f53c9ae7c8206735a1ac190ea1712bff001c84839aa11c6ce7be2801a1b9a9037b558166fb73b08f7a905930c1c7e340156a44e7a55cfece6f30280467daacc7a639c6c539f534010410962091c77aba122ce36fe956a1d22e1b82ea3e9cd5c8b470a32c4b1f5271fa500534b4136309efc54e9a7285071cfa56b436e912631cd3480188a00a496db5718c9acfbcb52a86451d3ad6db21ea0d57b98c35bc8a7b8a00e6c4d8fc39aefb4990c9a6c2e411b866bce2725242a4115def8667371a2c7b861a23b08a00d8cd14628a00f22bcddf6994139c39efef53e9b089645c8e33cd55b85649e40c4e771ce6af68e49bb55cf047228037cc6a5705401ef506d5966ce308b8edd6b41a012280dd2ac416d1211b500c50056b6b22ee64718ddd055c36e140c0c62adaaaf73526d523b5005084e24c13c55be08a5f214b66a40805004210d46f193568b2a2e4902aa497910eae07e3401172a7069ae372e0f029b2dfdae33e6039f414e4757fbac0fd280389bf245db839073ce6baff000548458dc21ce37822b98d72209abca074201fd2bacf07c522d9480c63e5723ad0074991ef452ed90f4551f56a2803ccfc4764d6da8cadb7e491b2a4537c371192fdc11d1335a77ca9ac43bbe64994f049c8a4d3e08ec6da468c66ed10e7d0fa5006bcf225b45bdff01eb59926b4c84944c63b1a9be7d45231bd10f19dc7001acbbab6586e248091215ea54e41a007ff00c24f286e5323bd4f6fe24048dcadf4aa3e55b98beeaafe348d6f121c794b9fa50074b0eacb2c6197807d6965d48aa6735862de6816368a3ddbfb6714fb9372b0f30618ff00b540116a3accb8d91924f726b19ae6e259325ce7d8d693e9e7bb039e691bcdb35508aa437f75680294265de0927f135b9a5caf1b90edf2b0aa1e4cd244b2480ab9e808c1c511990360c8e3e86800d7d7cdd4832f4f2c648aec7c3d776a968a9f323cafb86eae3628a78ee9fce2c627c852fdead1478ee2364739046de7a5007a604a2a7553b173d7033450079cc83ec56ec0f50c45268ade7cf792b0e81140fcf356756833b973c39dca7deaae88c564bc8d86d3f29fe740170c2507eec019eb91552485cdc7998f988c6715ae8326a430a11ffd6a00e69ec63f3b795209e768e86ae4566ceeaec30a3d6b58da83edf8539a248d382734019d042d35d22ed2133cd5fd46d14db0654195353dac6339ee6acdc2ee848c50072621691b6027eb8ab31da4d0a86dc096e871d2ac8d8926318e7d2ad94debd78a00c8fb3c85cb48771e829ad698ea39ad628101a81d867a500666a11ffa1c440f984800fc6b5743d2bedda926f04c30e19cfbf6159da91630dba28f99e5f97debbef0fe9ff64d263247ef26f9d8ff002a00bbde8ab1e40f7a28038b9ed7316e9e33b579e6b93b2b855d75f69fddc9951cd763a85fac6b3443e6210e4579c34a60bf1247d15f22803b80fcf157a2da466b12dee83a86f5ab89718180680345d9429359f3dc02c157d69924ccfc66a1789f01fb8e68034ad7e438279ab72b0f2cf35c8cda95cc77201316d1d319e69f2ebae1194838c7ad005cbcc64b03d3ae29f6f780aed3c62b16c6ee5b89596575da7a0ad0788af2b8e2802fb4c31559a5cb62a9b4ec383519b954e5cf0280279b75d6b9a6da44016525cfe3ff00eaaf4db75f26de3881e1140af22d27510bacbdc7cbe61fb864e4015e9fa35d4b79642596328c4e00ec68034f71f534526d3ef45007915ddeb33c8ee186e39233583332e7a601ad9b842c37e33ea2b0e63b9c9fe5401a7617a500526b7a19848062b8a0e54e41ad9d3af8ecda4818f7eb401d03dcc56eb973cf61eb54e5d465b942880283e9d6b3ee67f39c0c9cd491d94a54334fb54f3f2f5a0069b1691b2f2a8fa9a87ec33721e48d57d4366b4c69bbc7c9727a7f10a0e92c3ef5c018fee8a00c76b7781f724e3dbb520d42e236dbbf357ee2ca0e53cc919bdc8aa53d82245b93248ea49a00b2977e726e3807bd67deddf3b01a88ca2284807afbd512c59b9393401bfa0cb6f1caaf2a17393919c66bd774bb98ee208de350148c003b578de956d20613823e5e82bd4bc2cc22b58f7b121f39622803a6dbed454e10e28a00f12d4bfd0e3d847ce4715ce3f5adfd69de6bb766ff00f5564347eb8a00a0d9cd3e295a36c8269ee9835091ef401a0976370c8ade8e6478015f4e95c8ab6d6cfa56ada5e6300e36f7a00d16be9606202e47d6abb6ab7120c04007d6ad4b736a62e0e491556131ab6e6008f7a009e04771bdbbfad55d42ebca5282aecf7d1450920827a573f732f9ce589a00acefbb209a6264366861ce6807d05006b69f2bc93244b215de71d78af58d2d523b38a2470ca88067d6bc9f498ff7ea4f009ef5dc5834d6f046a0e0ad0077f67a9246a526e547dd34572eb76dd49a280396bf2b142ceea082dd873583728bb83ae707b1a28a00cc7e739a80f068a280129fe6103038a28a00512b53c5c37bd1450030cac47351b351450045939a7a0c9a28a00ded1e4f32e444c3298c9e7d2bae865123b60118e68a2802dab7145145007fffd9, 'CIT-111', 13, '2016-17'),
(34, 1602005, 'monir hossain', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080075007503012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00e6fc5775f68d60c4a72b02ecfc7a9ac1248ab1792f99732cd93b9dc9e7eb50a2f9a718a004520d3c114e4b66df8ed53a593312391b7af140100ebd6acc6bb9b18ab36fa7338df8c8cf03b9ad18746998f0ca83dc500568a254192bcd5c89379f9455d8b443905e4c8f4c56843651c240c0c0ec28032e3d3c12a4ae45595b208010a07ad69ba0dbc54383401467b6564da47d6b0aee236b3edc0c7515d46cac5d723f97781823ad0047a34dff00134b755fe26c1fa577c09af2cb2ba36f7b0cff00dc704fd2bd45583a2baf46008a007e68a4a2803c7ae364b29645da33d339ad1d2ecd24e59723deb30b1cf4c56fe87f3ab0f414016da08a305f628c0c01ef44103346401f339fd2ad8b3f325dd2b12a3eeaf6abf6d6e918e3bf7a0065bdaac68b8ec314e2a57a55e455f6a73c2ac28021898320a715c9e29c906da98281d680202840a84a91daa79ee628b8660315464d4ed57ac83ad003c9c5656b319366efd7032455a4d4209252aac3daa69505c5bbaf6653401c0927711d2bd4b479bced22d5dbef6c00d7976c633346065b24715e9ba229feca8088ce368a00d3c8f5a28c3768da8a00f20bb80c3732a1ecc4015bfe1a8f75bccddf701f4a6f89a0324eb3c70809ce5979cd4f60dfd89651190799f683bb838dbc5006adc4d1daa65db9c6401deb3df5f116004ce6a7bbb659d4bc8d209d8651106e1586f1401b0e58953c83c500680f13a93f3295fa55eb5f10453360139f7e2b0bec914832b1fbd2a5aa21fbbce78e7a50075435038e0d54bcd4ca77f6acd83ed1c858c373dce2a29e396798ab2ed03b6734019d77a8dd4f237cd8527a5408933f259b07eb5a5f62903e0a0c8f5aae93399962119dc4e3ad003add18ae19b1e9c5745a74d88555c8f97b93dab1274657c2f23d6a336c6ea32981bbb134014b618f513295f93cc247bf35e9ba44d01b382dd1b0eb18f94f15c325aa46d1db3f3246b904f7ab9a72cd0eb50387272e0673d6803d042d152ec393450079d5bc463b73b8e067a1a7595bc7776f70eca09126d527b714fd5232b0c8a3f85b774eb9a34361f60957b894ff002a00b04c90b821c838e0af6acb9edd25925ce72e73b8f506b7846afd4534da47bb7281f9500615ac725b3365c36780074ab096ec01728715aa2c54b038031df152bc4aa36ad0041a4db1cbc8ebd3eee6a0d560315d99635c2fd2b6ad9422e1471515f4618648e28039df26697e60761ed915345652449bbe53230eb8abd014dd8356da25619cd0063a5a94562f8dede9d85225b61f205693c5b7a0a8989e9401917f1ffa7db11905d7191ec6b7bc39a69bbd504ae0f956ff0031f73dab13522c2f2cb68f98eec57a6687a4b5968d0ee03cc97e76f5e7a5004bb45156bec8fec3f1a2803cfaface59e3dc8b86e99358da3395b8bc80e06d607fa575b7b3a0b360582b3f0a7deb80d2ee1a1d524573cbe41fad0075d160b55d58971cd65437002d4ed7bf275c5005b95916a83485e4c2d576b8695f00d4523bdbee917078e84e280372dce230292ec8da0935cc43accd1cac5d571e80f4a8ef75a9268b6af07d6802fcce61915c73b8d5b82f830c371e958967766740277c91c0e2ad1543cc64647a5006ac93823ad537979eb544ced8c1ed514975b47340139df75e20d3e18fb6727d8f5af53495d555431c280319af1cd36fc47ae2ca7613b4805ce31c7b57a968f7325eda2cd245b3774f7a00d533c87f88d14cd868a00f33d7351579a3851c308f39c7ad73334a56f7cd079ce6ac5c9dec0f43df159d391b8639e393401d05bde16039eb569e4da84b1e075ae561b968c8f6ad7179e6c18ddd6802cff6a88ce238c7d5a992497178325c2a9ed51da59c774c436e0477156bfb33cb3813b81ebb680289d3e4605bce4df9fbb4cfb071fbc940f60326b5974e5ef70c7fe022a436100525a4727f2a00e7e4816104acad8f7aaa2ea457c2c8719eb5d0fd8a06e36647b934b736517d9b6a80a074c0a00cdb7b92d17ce72c0f53556eee8eec73c0a2699638ced3cd663b96393401b5a23c0b3acb302595c71ed5ebfa65c47710c6d181b40c0c1af19d26195e60e9c15e471d6bd47c2b2148b121f9b764f1c500755b68a9f651401e1b728a66949c050c71cd624c4176c74cf15d0eb28a8e5146003c67bd603ae73c62802a96c1ab10dc1500678151327ad30aed3401b9a5ea016e9430e0d6f4d2ee1f2735c4c4db581adfb2d4f9db21f93d6802596f6ee20400a31eab4c4beb990fccc307ae1454b2cf0c872181ec288447bb27181d2802d43b82fce6a9ea776218c807e63daa7b8ba8a18f258127b57397b71e73eef4a00a724a4f5a80125bad3ca8269318e9401a5693b248bb1b0cdc673d2bd5b468441611a09773632cdea4d791d8a079d430ebd335dde85793c113203900f033401e8d6ba924716d98138e01f5a2b9917bc73d68a00e6f5bb759221b89c2f20572532e1d85145005571cd4468a2801a3ad3c4841c514500598e775031dea6371214ebef4514015649dd8f273c5566639c51450042589a1793451401a9a63817112940727ad7596ade5aa15e0d145006d039145145007ffd9, 'CIT-111', 13, '2016-17');
INSERT INTO `trainingset1` (`id`, `roll`, `name`, `faceImage`, `course_code`, `course_id`, `session`) VALUES
(35, 1602022, 'nazmus sakib', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc000110800a300a303012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00c06931dea27604535ce0d45be802451b89f6a4750285931d29eb990e28023484bd59168ca338cd5fb5b23b431eb5796d4b0e45006347083daacadbf60b5aab63e839ed5720b0c1cb50052b3d3f90d8e3bd6b2c3b17818a9d1020c014ad93c50054619a8e42883e63d7a54f264038eb55e28406324adbdcf4cf6a0081959f90303deaacb0a81d326b4a4603a0aa929cb63b500654b1e2a1dbcd5fb8c01558af1400d5622a456aae49a7a13ebfa5005e858e6bd03c0b7289733dbb1f9a44057df1d6bcea37c11cd6fe937ad6d3453444868d81ebd6803d828aab6ba85bdd5b473a48bb5d73827a51401f36b9cd576ebd6a42d9150e327ad0048bf5ad4d3a0df82464566c6858803bd74ba6c016206802fc50854000a9940f4a146075a5ef401320ab0bd2a08f38ab2aa71400668fc69769a36d0040e33daa3f2eac1427a0a3cbf6a00a8d18c5539e3eebd456ab47c551b85215801f31e940183752924200720d490a3327cc0d3a6836be79273cd5cb74fdd027bd0065cf1943edeb5083835ad7306e427d056495e68027423bd68d9cdb4819eb59299ab513904702803a58ee9d63015d80f6345528e45f2d72b9e28a00e1b39a6639a5dded49bbd01a00d0d3e132c8a30715d34281102f4c566e956e56dd6461f3373f4ad41c5004ebf5a9923cd65cba9c30f01b247b544daf84fb8849fd2803a048cd5845c75ae5d3c4cfbc7991285cff000d6a5bebb6d31c0de0fb8a00db54c8a3ca15025ca95e0d4825c8cd003fcb03b546d80714d7971593a86a7e48215b27be280349c8079aad234678c8c9ed5c95d6af74e48f35b1ed5512e6e9ceef324ce78e4d007592889ba90334c5d98c2915851477526371638ee6ad08eea3208e71ef401a4e32319ac3ba5f2a661efc5694772cc76c8a4376aa9a8c59c498a00a6ad9ab50d51423357a0e71cf39a00d88b1e52e73d3d68a4456d8bd7a7a51401c23641eb525b2196e234cf2580eb51be41ab7a5ed37b1e4739a00eb517646001d0551713ceec18954f415a03ee807d29ae555493c6280280d3233dcfe353a68903a732b82476c54125f28fbb4d835495ee96d628cb48c71827028012e74258bee4c483ea2aa25acd6f26e0d9c1ed56a4bdb96ba7b7685bcc52781f30e2a1172cc70c3068035ecef1c20539ad68652cb935816a7760e2b7adc0318a0065ccd853cd62dc279c4827a9ad1bf3b72063d2b299d97d68008f4fb7dd99391e95a50456b026238907e158fe6cd23e1119c8e70a3a0a4b6d48959033451103e50fc93401b124f1e7b533cd53d08ac786e2eae9a4db1ab95e4eda05c7cdb4e558750680350ed6344e81e0607d2a2b6dd2106ae327c847b500734061c81d8e2b4acc65946339ebc5522803b7d6bae834a8237b14b490dc4926c7240e84f6a004485d54021d48ed8a2bbc93409a572e5631bbb668a00f03bf8bc9b9913d0f14ba6717f08f57156f5402e2e32aa411c1f7aad620c7a8c008c7ce2803b25c62ab5e2168b033cd5814eda5c5006669b0c30de6f9c06e3032338a5d6347927b93756251b70f99436083ed5627b46eabc542b14f1e4838cfbd003f40d39acae0de5eb0560a55533b8f3dcd58be5b1b890b45191216e5b18154b75c676995c93db35661b7651b9faf614000eb8000c71c56a5bab7943b567aa7cd9ad48066319ec28028df29e3355993ceb711f40a727d4d695e2e540aa51ae1c1a00b567359db12890ecdc0648e735937fa15b4d73e65adca20639287b7d2aecd6825c91d7d2ab7d9255272587d28025b7b7b5d3edd911f7b9e598f53548c0b713310a393926adae9cee412ed8f4c55d8acd6218039a0082dedc462a72063a54be5e2984e0e68039df2ffd21d7278739fcebd57c15a2c51d8477d2fcf2648407a2815e671c6d25e4807772727eb5ec3e12429e1ab507ae0ff33401b7451450078135b24b233a81d706b3ef6d5a0b88e61c0041e2b4adbe5bb753dd7a7bd3afe3df0127a202714017212191483d455c8d40ac9d3651240bfecf19ad78d862802c08d5c7207e351b59404f2b9fc69f1b64e315262802b8b6890e52251f41505c9555c0eb5a1b09acbd414ac8a179f5a008e3dcec00ad7850ac60115474d41dfad6caa0238a00cebb4dc381cd66eedadd3bd6dcc073ed595771966cad0059836c899153f96b546cb70520f6ad01c8a0072aa814d90607029d914c6618a00ace48aab3498079a9a67c1c0acebb942c6467af140058292ecc39e6bd9b468441a359c63fe79293f5233fd6bcb3c2d6ab7b7905bf1b5dfe63ed5ec0aa1115546154600a005a28cd1401e06cc0dcace3f8bef63b55d708d132ba9c1522a44b18428017a7bd3ae519612e9d41e73401cee953f9770d113c13deba48cf15c6ccdf66d4b8cfdeefef5d3da5cf9880f7a00d347fc2ac23e6a82b13deaca1340168c9b4564ccc1a56c9ef5a248239ae7f56b3b82e64b76232724038a00d082e9227c66b6ed6f9003903915e76897f1cc0977c8fef1c835a906aed1295906d23d6803a6bbb845cb6401e959bf6b4673ce07a9ac5b9d464ba3e5c40e4f435464d3ae65e0b3bfd5f00500752977189942904938e2b4c72b9c75ae5f4bd29e1759242063a00735d1abe1704e6801ced8e950bbe050ed55a573eb400923e41c562dfca38507bd5f9a5daa4d73f7336f9383de803b0f0d97483ed5bb604f950fab7ad6d9d4ae49dbf6c948ff7ce2b2b4e5116871f3feb25dca3d80c7f3a9c1cf4a00d98f52c46a189271c9c9a2b1b27d68a00a01b3ea29c40742873c8a60c7ad2e73dc50071fada84d40b0c8dc0120fad5cd2ee4b281ed8cd5dd734d9ae6cfed091e44592cded58ba73157c678a00ea22973d7a8ab0253deb3a27152c936c8cb138c0a00b6f78a9804d30dd230e0835cacf773bca59db2338abd6d731f940b48067d4d005c95cc8e582606702a17b7497874e7d695753890e1769c1ea6ac26a169230f35304ff001034015a2856dbeea65bb902a649d8361a33cf7a9cea3690644518048fbdbb9aa726a90e79c727f8a803496ed147340d423248ddc8f4ac737d6f21277053d306b3a4ba1e7b056cf3da803acfb52bf4351bb83587697455f0fd0f4f6ad0697e5fad00437928c107a562451f9d771c5ce19f157af1fd4e0526976e25b857eeac31401d9202608a344db1c6bb546734f01c7f09a7c52c5b73b80f6a93cd8f38cf3401061cff0009fca8ab1bd7d68a00cb4882a819e00ef4ff00917a9159cb70e0e0d580430c9c13401abe45a4fa1cced867e7e5cfbd7012a7d8efdd541037103e99aeb88291290701f208fa1acad52d3cf412aafce83b0eb40104521201a964cc91ed159b6f365707b55d47cf7a00b165611fcde622b1ed919a5b8d2eddbfe5981dfe538a9a1906054e5b78a00ce8ac2de3e0c48707a919ab896966530628feb8a6cb95154a5998027278f7a00d35b4b48f910c7f95413f907858d07fc04565a5dc8ec0163569189c6450028d3ada56ded0a75ec315722b68114858917e8b4c43c75a90ca00e2803364b44490f6e734d91f68eb53dc499393546571b4e28029dc48ce79ae8344b5d98054fccb927d0d64595a497b74a3692aa7731edf4aec2ce068901600123b5005a0a001c74a5c0f4a3f1a70031d680136a5146da280397e928078ad24418154fc9f9c6e3deb492290a0c21e9e940134910fb0da1c75f333f9d461148e541fa8a7cd7445b4317d9a7dd1861f77839355fed4c0e05b4c4e33f7680397d421fb35e4c117e50e7a76a863bc5039eb5ab7c9e6dc48cca5198e4a91d2b99bd5681f8a00e9ad65deb9cfe157a37ed5c7d96a65088cf0335d2c370ac0734017d9430aacf68af9a952518ea2a659131d47e74019a9a5387dc0ae074e6ac0b629d4827daac194038cd2199719c50045e57b531d76a9f6a56b85f5aa1757185dc1bad0045733a038f51deaa461ae265890e58fe9542eef3326158574de0db58e5596e25dace3e5507b0a00d1b08adeced873c63e6201393574ea36aa701a43e9843571edad8c67318c019e38a7c51dab2ac88a082382466802aadc23e30b273eabff00d7a6bdcf958cc321cf7c802b4818d780a071d8539c2489b5d015a00cff0030fa7eb455c10418e14e3fdea280329235329257a74ab8bda8a2801e09f5a1988c60d14500737a91cdfcf9fef7f4ae735855f290e067751450073ec7e635b5632c9b00dc7a0a28a00dc566f5a9d09c75a28a00371c9e69923b6d1f31e45145006634d279bf78f4aa57b2bf92df31a28a00c8424b8cd7a07867e4d2a12bc169181c77a28a00e88286520e71f5a9238d238142ae0628a2801714ab451401251451401fffd9, 'CIT-111', 13, '2016-17'),
(36, 1602022, 'nazmus sakib', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108009b009b03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00d5f1a6a8977e23ba18216102251eb8ebfad724f20ebcd5ff0012de4179af5d5c5a07113b9ebdcfad6333d004c32dde9ae303ae4d351f03ad3d3f78dc73400d8e0dedd2ae2dae17a55fb4b31e5838e6af2db2fb7e54018e96ad8e4715622b32cdd3f4ad75b64ab31c4a83814015aded046338e715298cf6ab21691d78a00a129d83a658f414d1031f99f24fa761564a00fbbbd2331c7140159d78aa32c60f5e7357dd4906aab91b4f340194f1fcc453002a6a70fe61e0536452bcf6a00553ea6a54602a9ef39a9636e79a00dbb095639e39245dca0f2a7b8af61b0b986e6c6196027ca65c2e7db8fe95e236d2e1864f15d2daeb1756b6c90c4c762e71cfbe680380964ddb9b18c9278edcd5663935216a85b26801c3eb5aba6dbe4e4e3dab2a352c40ae96c221142bc7245005f8d42a0c54ab4ca7a034012a8a9946053117d6a75427a5003290e48a9fca3486138a00ab8e68d9ed56c5bf7a0c600a00ce9131d0563dfee1f2464e5bad745247907deb367b42493c668031ad626ddd79ab135be53dea782dda297e6c55978c11401cf382a6915c8ab9a8461581038f5c551da7b1a00b514bcd6bc770046a091d3bd61464a9ab40b63bd00627d29bd4f3485b069bbe80342c61f3251c715d246bb540acad1e0c41e6b75278ab935d88ced55deded4017c301d48a945d5ba7df755fa9ae76417731f9891e98e2a33a65d6cdc2166a00eae0bfb394e239509f4cd5e47527a8fc0d79fbdb5cc27e68dc63daaf6997b2c2f8624e3a5007761971412bdab2e2bc57030735644df2e6802779542e2b26eb5886d8e1b2df4a5bc9ce0a838cf7ae76e6de49dca8ce0d005c9bc4c15b090679ea5aa33e200eb8688eeefcf154e0d0a577cbc8a17eb57d34381064c8ec7bf1c50046baa0739db8ab91dc472af0413e9517d8a11d00c542f6414ef88b061ef400fbe4f32238e2b13cc00e0f515b6a59e3dae0e7bd615da7933918e6802656c9ab21b8eb59f149d2ae03c50061b9e4e69aa72e07a9a599591cab02083c834b6a3fd223ff0078500765027976e8831c2f614d4b645e4f5a9631f260f6a8ee64f2a326801fbd54e38ab297036fd3d2b12133ddcbb211cf763d05537b9bab3bb922b879095c82aad8a00ddb8ba8d9b93d2aaee8d9b200c9ef55f4bb19f54f3dfcd7554036efe413e9537d8a5b6b958e7c2823390734017ed09ed5ac41d9c7a563dbe55c28c915a64b04f6f4a00a3712fcd86e71555a755e95232879b0dd09e4fa0aad2d9c97176d15b91c0ce5ce05004d15dfcdd3f5ab124ee132193159fa86873c365e7453bc8e3efaa1eded5869e7dcbac688e5f38e33401d1fda48ea05289b78e2b3ae2ca5b38d76ccccddc31cd2db34ae7907f0a00d451c66b2b59886d5900e735b491e1064f3599aca62db2077a00c34ebc9abea7e519c5518802d8abcb11da3a7e2680347c63a04f63241a82c5fe8d751ab070380d815cbdb022e23f761fcebd5bc5ba8da9f875a7d9c8e0dd5c451346b8e4018c9af2d5529347b863e61fce803b24e074a64d189074a7af22ac4710239a00c7daf6b2074c8a74b2a5d6d3710a48c3a1c62b68da834c367c7240f4e2803392e196211470f969e80e07e9526d6da41ee2adada229ce493ea6a39be56db400db45db256860e39aaf6713336e238abec8769cd00634c9fbc245491a891369183eb4f994a92769c516ecac48cd0056df7307cabc0f41510967c12b010c7a944eb5b1e5023914f4b74cf0314018021b8b87f9d187bb0c55e8ad56251f2f35ade4a81c01c542caa2802a638aced5c7fa0b71c6456abf1595abbe6c1d077231401ce26e56c819c76aea256d26671222c918655f9447d0e067f5ac0b780b1ced38f5af55d1fc0b6536916b2dc3b79ae819b1efcd00616b1a51d43c25a3ea91e48860f29c0ec338cd71f7d66442ae3a8af57f0ac2973e0eb5b795494757420ff00bc6bcff50b7c433463076123f2a005b27f3208db1d40ad24c015cfe913828c99fbbdab6d1b8a00b6a72294ae7bd448d8a9d39e6802331b56532b1b920f638ad7b997cb88e3ad64b4a89f3668036ed9576281534885473595677caffc42b4a5be468c0e01a00a57203291deb3951a390139c53e7bf45948dc07d4d27dbaddb812a13e80d006921f9454801a82c6513c1d3a1c66ac371400b93eb513e31417150bc9c75a008666e302b1751724043d339ad29dcaa9c561c8de7df05dddf1cd006b595ba9b7550092c3f9d7b65aa795690c78c6d4518fc2bcdbc2d64979aa409c6d43bcfe15e9d401cdf81b0de12b4ce0956707fefa35c7788ec92cf56bab73f758ee18f43cd25a5f5dd94222b5bb9a18c36eda8d819a8350966b9f32e6494cb37192c7ad00721653886f8af63c1ae8e390150474ae3eef747aa3b1e39cd74165701e2ce41a00d756e6acc6c71ed542390f5ab0b2e28025b802489973c918ae52fb4cbd326558951d3e6c574125ec41ca96e45579ee415c2f3401896d1dcd9ae43b30eebe95624d56471b4641ed5641e7919a0471a3798a8377d280334e9725c219252e59ba0269f06832870408d07d735a06e1d48210915621ba0065b8a00bf6117d962080e71dead3be45677dba31c16c7d6a51751b74753f4340123b902abc9252bca0d5599f1934015ef27dab907a5635b3abdf727193cd3f5194e473c66a3d20092e98b1e40c0a00ee345b96b456b8898ab63623671f535b09aa5d6c1bae6527b9de6b2a38cc56d0a3000840481db34bcd0053ce05319bd7a77a33ef4f8ede49cb08c03b464e4e280390d79365e230182cbcfe153e972e500e315a7abda89ed9c0dad2272a476ac4d3dcc795231401d0a4831c5417b78f047fbbc6e34c8dce2a39e069dc1ed4019f14ae67fde3724f249abed791c58e431f4ab4da65b3c637441bdf3cd51fec98e39739765f42680251aca26018d5813d318a9d756b1550df650cc7b16e9491e9f03ffcb341f854e34d840dbe54673df6d0040dae07c83185c7418a87fb4a190fce02fd2b40da5bc4a711af3ea3354df4f866e04283dc0c50052bd9a26dad1b8fc2990dd48a4313906b4a1d16d90fcd1ee1fed1cd175a7c5bd4c636281c814012473864c86cd433ca40eb51a0f29702abdc4c0023ad00675ec9bce2aff876c4cb3f9f23111a9fba0726b3197cd9940fe26c5761a4451c2072a382319f7a00d3777690b95eb49927f84fe5536f8c01f30e69db93d4d0067fc8a3248ad1d19ada49e459197950003df9ac356de33d6a7453b19c71b31c8a0073fd9c161b7e539ed5ccdedbadb5de63ff00567a62ba0da4d56bdb16b98182e378195fad00674728e2ae44c09ac657689b6480ab0e08ab705c02e029e680371586314c61eb51c2fc8cd596191d28029c9218f906a137eebc0ebeb5625b7df59d3dac824e0d005b13b4bd4d5a88e07155a1b738048e6ae2a11ed401203c7350dc3a9422a42303ad529df1c1a00ad23550b965c6d23f1a965947f09aa6dbee1c2460b127802801fa65b99efb3fc09d735d958c291400001bdc8e6b3f4bd2becd120918173cb715b61368c0230280136afa7e94bb052e07ad18a00c781414c81d6af5ba66ceefea9fceaadaff00ab15a3001f61b8e3f896802b0403b53b68a5a0d0072daedbedbd91941c900fe95851de186504e703d2babd600374d91ff2cc571779c4981401d458dea4c990df41deb662937a7279ae0f4c9a4495955c81c715d65a3b67a9e9401a8b926a5102939201aaa8cd807352876caf26802c6c03b0a6b051d6a30c4f7aaf3b307e0f6a007dcc81138ea6b02f6eced3b8f23a558ba762c32c7ad739a9bb79a46e38a00492ece76d747e1a811adee67971b832aaf7c0ae36d3e6939e702bd0bc2f1a3e9d71b973f30fe5401a497f6a8000c79ec10d4cb75138e165e7b94e29f6d6f0955cc60e3a66aff94898da807d050065c974b1824c5291db0053d24de8187191d09ad264478cab28231d0d54682256202f1f5a00ffd9, 'CIT-111', 13, '2016-17'),
(37, 1602022, 'nazmus sakib', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc000110800a400a403012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00eabe204f2c9aaac1f36c44040f7ae11e4ed5d9f8de7336bd303d23509815c3cb80c71400d6929a31d7351b1e69bb8d0048c371c0a7c76bbb9352dadb99194f5ad84b40a3a5006235aede9cd392dc9ed8add16a0f6a916c01ea05006247665d80c715af6960117e641ed57e2b38e3ed93ef53ede38140150808318fc2a3650727a5597181d013551a3795f05b6a0eb8ef4015a4dad90abb8d5392dcb72dfa56bb222ae060554970178a00c59e000f033550a01c62b5e540473cd50922e723b500451f15306a8480bd69778c71401695c64575fe0fd6d74abb2ad1b4a928da150739245712a4e7835d3f84e78adf5eb39665cc65f691ee7a1a00f6746dc8ad82323383d4514b4500789ebd7cf797d3ced8dd2396c7b76ae7656c126af5e4fe636e1f8d66c8734011eee69f1297900151e3d055eb0b725c376a00d5b2802a8e306af8e2a28b18031d054b40122d4c99a810735691726801f453b6534ad0047263150151daacb2d46633e940159e3c8c5549a2c29c75ad368ce2aa4ea541fa50063cf20446248e2a92b1906739ab179134ac58e063f5a75bc2369f9781401426523b557dc6b56ea1dcbc0e95925704d004f1b1ad6b1948c6090c0e41f7ac54357ed9f6903b5007bb683a8aea5a3dbcf9f9c2847cff007875a2bcc34fd66eecedbcbb776085b7103d7fc8a28039898618e78aa9275ad0be8f0e7838c5669f63400b1aef91540c927b56fdac4238c7ae39aa1a55be4b4c7b1c0ad3924488658e2802c27d2a64dbd49158d2ea126088a3247f7b154daeeeb3f2ee07d40a00eb9114f39a9d500ef5c235fde2b7fc7c480fb1ab769afdcc184243affb439a00edd4034e318acab2d53ed0b9380c7d3a55e13679cd004a6214c755514865e3354aeef44499ebec2802c363155e445718ae76eb5db804ec6007618aa2dac5ec87fd6371d7d28037e7b556a8a28046a47bd642ea975270c39ce415a992fe407e60def4017a78c14358336165653d735b693a4a99526b23531b65dd9e4d00423156a1600d67a39ab50b7cc2803663970800c8a2a6b4b596e21df1a65738e945003fc456ff0067d42e2053958dca8fc2b992bcf5aecbc6f6d2596b971e60f96563229f635c76e1bb9a00e8ece311dbaa814b340b2b65bb74a75bf3021ff6453a4e149a00896344e054f108f7648acb92f42b104802a17d5d2d882e8ec08ed401b93c36ec8498d09f5c562cd650e7e5f94fb544faec733048e29572401923ad3669658e4c38653e845005bb50d01e1bbd6edb3b15c926b0ad77950eca707a715b966ca539a009259b60e4d645c319188cf5e95a17ecaa991cd62b33609e6801aba6a4873239abb6fa4da46b9da5bd98d670bc20f240c77357e1bf84ae0dc229f76140133dadba7dc8957e82a178e3c636d452dd29385b856fc45426e0f7391eb400ef20249b93f2a835384bdbef009dbd6ad44779a6df0c59c9fee9a00e750f357601f30aa4b82dd2b4aca1766242f0066803a5b0062b60a8e4739383de8aeabc33e1b1a868eb74ecabbdce07b0e28a0083e284b69225a44aea6e909de01e42e3bd797b0c360d7a1f8e74e65d79ee0f31cea194fb8e08ae22fedb648ac071401bb102235e9d05398065c1e951c0fbe253ea2ad47186eb40189756615f78191505ca2dd402263b48e87d2ba636ca4702aa4ba6ee6c8854fa91c50060d9e990db4e93c93a39460c147ad6a4971f68624a86047a53ff00b3983e0aaa8fcea65b511aff008d005550570ab9da3a66b4ad13f75926aaed19e2afdbafc99ed4015af93f759cd505ccb0b40a4283c935ad760797835988986a006476766a59658892c300e73f8d73575a75c5b4eca23665cfcaca33915d6cb6c2551c90c3a62aa9b4ba5270cc47be4d00635ae9a5612f3332b3745f4a58e19cc9b558902b5c584d2b6198818f4ab9169e211d493ea68020b580a27cdf7a8be4ff00429bfdd35742151556fc81653678f90d0072d1388e50db738ed5b5a34324f33229c00858f35434eb09750d42ded225f9e67083db35ee1a3f83b4cd2ad027922498a6d791b9a00b1e1481edbc396b1b8c1c16fc09cd15aabb63408b80aa3000ed4500735e2db54b9d11a665f9e060c0fb7435e67a8c5b938e80649f4af5fd72c9a7d0ef23424b796580f5c735e5b7516eb690823ee9e2802a5810f0285ec315a7181dcd60e993912345f8d6da3714016d08e94ac09a8a32339ef532b64d0045b0fa554bc628b8f5ad267544248ac8b926e24ce381400cb743337b56cc70ed41f4aa162021c1ada8937ae41a00ceba88b274ac87cc5260f18add9f8241ed59373179ad90318a009e12ae833d6a611806abda0206c3d474ab8050018a63823b53f814d76c0a00aee7dab2efe40607527af02af4d2641c1c5635e4999523f53401d3f80b49fb46b904e01c400c8c7f97f3af5b2b91d4d79bf83ef5b4e795c2298a4da8c49c60d747378b829754b61b94e012dc5006ff00d981eb4571cde27d4a46dc9244aa7a009450069b78c6cdede41f679c48410aa40c1fc735e797f88f2aca71229c62ad1976d4171fbe452c7ee9a00e4edae7c9bd192473b4d74d05c0740457237a0c1a9c833d1b35b7a74d94ebd28036d5fd2a747aa31c99c1ed5691c5004922993bd635e5ead9485640473c6056b34c8bc66aa5d24170843aa9e3bd0065c3adc465003100fa8ae86d750f9410dd47ad72ed6902c8db1460d46d24f6e309965edcf4a00e8eff0050545249193d39ac71ad5ba93be619cf6acfd92dc90653c7a54d0e910c8d9666ebebc5006bd95eadcdc0319cafad6c1271d6b32cad62b503cb18abc5c62801189cf06a191f039a491b155259707bd0032e240a84935862433df601248230077ab3a85ced8f19e4f4e6a2f0ca79fae46fb772a927a7b673401d940ef6f6e90e3001dc7eb56249036f6c0233d6aac8c4b13d79a40c718ec680250fb4605151e4f614500556eb4051b482320d5eb0b7335d6cd8af943c3741504f14827914ed1b58ae17a71401c7ebf6be4ddac881b6b8c64fafa53f4d90ed55e95b3ab5899ecce4fdc3bb8ac1b27d8fb08ebd2803a189c05a74b74b0465dbb7eb552393031515def9555473ce6802bb5fcb7130232a3d2af2b314c3375a822d37cd8c167643ed50cf65768db45c6e5078c8e6802f24303706650697ec1212766c913b10d59c34d9dbeecffa53d6cb50849f2dc1047f7b140170e98e1497755f4039a8d6dda1248941fc6abad8ea0c77348a1bdd8d324b7bf8cf1221efd6802dbddcb14793da88f560540200f5f6acf2f7f2831341bb8ea054525acf02832ae33e873401bff680c2abcf2614d53b5998c7b58f4e949712657bf1401957edb9ba64f6ae83c1d68d199ae9f00142a8075c93c9ae6d819aebcb07249c5761a24124364a8ac46189048a00d816e0742df8d35edb711cb2fd0d3c17a33277a006fd897fbcc7ea68a7fcff00dea2802a5a5dcf6b39951b276e08c76a8e69de599e4ce373134e823dcb3ffb31123f314c11d0033064f958920f5e6b9eba845adf30c1da4e47d2ba811e2b3f5ab51259f9a3efc67f3068033e3718eb565181eb5911cbb4e09abb14c0e3e6e7d28035a13b47b539d031c8a8236e055918c5005627cb391486f1578614f9d0b2f15977492280003d7ad005f37ea47cab516e795b38eb55ad977202dd6afc7851c0a0058a2c726a3b9457ea32054c58e2aacae7d6802a9013a0aa1752b007156a6971cd517dd2c98504b138000a007e976e649da5da4ed040c0ea6bb9b640b12fcb8e3007a564e9560f6f02c5b4920658e3b9e6b6d720723f4a0077e14b8a42c075a4de31d6801d4545bfd31450025aae62b93c13e5e07e27ff00ad50e501e58035335ac120c3478cfa122a26d3acd579f33039fbd400071ea38a86f4ab58ccb9192bd2acc505b203b3241eb96cd45776f01b59187de5424107da8038ebd8ca8dea3a55286f4a4c0961c56e4f16f4c115ca5c44d14aca41183401d7da5d0986723f0ad389c100570da75f9b6930d9da7be6ba5b3d4164e720e2803648cd4725b09060e2a38eed4e30473537da97bd00442c910714be562a5f3811c54325c05ee28012401173595773ec0c411d3bd58babc5e84802b9bbebe1f3229cf34012cb7618e7b9adfb0d06e83472c98466e4107a5723660cd711827e52ea3f5af55459d2e260fb4c591b3da8023834e9631f35cbe7b90c6a4974ef350e657ddfef7152ee6a50ed8c62802ac5652aaf9640e39c934e4b06473b8ee420f00d5a0cc3ae29373e3a8a00845b800048c63dcd15364f73450055c9fd2987e6fbc33451400831d8014c9957ecd370388d8fe94514018981b3f0ac5d42146939145140185280bbb1d8d4d63712076c3741451401ad67752b3004f7abfe7c85b19e28a2801d15c485339ed54aeaea5e4678c51450064dc5c49b8286c0aa27e6939ee68a2803574b502eedf8ff0096c9ff00a10af5397fd63fd4d14500427ad3949a28a007e690d145004458e68a28a00fffd9, 'CIT-111', 13, '2016-17'),
(38, 1602022, 'nazmus sakib', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108009e009e03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00e83c653ab7886e7073b303f419ae59e406b535eb913de5c4e0ff00ac726b01df140121724f1486a20fcd2eec9c0a007673d2831b6726ac5bc3b864d5910f6c5006708c1ed4e1073d2b452d327a55a86c403934014ed2cb77ccc38ad1081061454eb1ed18031484500539582f5ebe951796cfcb0c7b54a5079a59bf0a5623140155e351daa9cb183579c124f1559f1934019eeb838a40706a794296a81fe534012897029cb2127ad55df4e47e6803aef0bbcb2eaf6f6f14cd16f6c12a7a8af601c0c578569176f6b7714f1310f19dc08af6eb3ba4bdb38ae63fb922ee1401e13772eee074acf722a477f7aad21cd0026ea9edc176aac393d2b4ec22c0cd006945185402a55c0a074a0039a0099315617a75a8117eb56523c8e0d001486a5f28d34c645005578c6734c603d2ae7905ba8a3ece1474a00ce653e9542e5369c8e3d6b6de31597796c5f3e94018ca5e493838a95e2f96a54b765994118e6acb4795340186f9538a15aa5bb4db263a540a39f5a00d2b4976b0fe75e95e0bd76282da5b4ba976a2fcd193dbd45796c4f835b1692909c139c5006348dcf3c5404f343b8c9a80b9cd005db740f201f9d6dc48235c0c550d2e2fdcf9bcfcd56e59bcbe072de940168c8aa327a502f604e59d47d4d65bc3733f3bb1ec29834cb993d3f13401b71eab684e0480fbd68473a3005587e75c7cba6dd463252996e6e2195776e506803bf5236d2e0563da5ef9912ee3cd5d5b8e2802c92147359b79a8240338cfb5493ce76922b02ee369589ce493d6801d71e21c36121c7ae4d56fedc9581dd18e7d0d4434b691b3bb157069502fdedc7db340157fb40b10769156a3b9591783cfa53c5ac4bfc3c7bd432da281ba32030a0082fd37c7b8751598ad835aeca5e22add48ac3605242a7b1f5a00b91b64d695bb9d99ac88dab5ec6332fca31d33c9a00c7b804374c542b92c01f5ad3d5ac9ecefae2ddb27ca9193247a1acc5e1a803a5b44d96c8a7a814f31aefdc7ad2c2bf20c74c53a4caae73401199403814f8ee1f3c62b2da66693646a4b13c0a8af65bab19d559f6ab0ce40a00da9ee70bf30aa86646e2a95acafa8ea890acac11f3d474c0ab1716171039270caa7ef0ff0a00b90382c31d2b561f993358f08f2f1cf5eb5a904c447eb40105dca5323f0aa1e6006a7bc25a5cd53ba89be44881766ec2802ca5cae702a669982e702b1ef6d2eecec45cef00eec155e4a8acc6bf99d00f31c30ef9eb401d0b4c4f5a679bcf5aa52413c5046fe6966239523a52dbb3bbe194f5a00d051dcf7ac2d41365d9000fc2ba348c6c1587ab4645ca9f514015602770cf4adeb08c346c3a9eb59d05aaa69b15d9218bb91b7d00e2ba3d217252578b08d17ca07e1401d07c50d3acede2b7bd8d36dc4ce43e0fdec01cd796938e7a57a178f22bb9b5add3b3340cbfb919e07ad70b7b6db002a7ad006fc195853273c0352b005719aaf6cfbe153dc002ae2479a00cc96131bf9899e2a0b964bb8c24e0fca7823ad7422dd59718a89f4f079dabf88a00c5b336f62c5e04632631b8f38ab625967259b38ef9ab7fd9e80f273fa539e258d33d85005355cbe4d69458d8302a90e4f15a50a7c838a00a1789fc42a18f3d075abb769deaa44407c67ad004334d2c6ad1bc7bd186307a11546382d239048b06181e8738adff2411ca823de905a45d971f434018ecd25c37cab9ab905b08d47afad688b655e8290851401076ac3d6d7f7b0fb835bce40ac6d490cf7312fb1a006f87b44bad66ffecd6cbce32cc7a28af61d2fc271d8c7124ae1c245b3a77cd61fc30b45b5b5bf94a9dcceaa0e3d01ff001aef5a755eaa7f2a00e4fc4f62b79a3bc9ff002d20f9d7e9debcd750855a3181927a57b8dd59c73d9cd08451e6465471ea2bc75e22415ee322803334d3fbad99c953cd6b478e95cedacad0df18ce40cd6ec4d9e45005d4600e077a90e6aba38cd4cad9a004da6a85fee50bef5a99c0aceb865964e7f868019631ef7cb74ad858f8e2b26299617c66b5ad6ee2d9c8eb40104f183c1ac7990ac8768efc56ade5c228241eb59e278d94b1207d78a00b36ec4c609ab00552b5b889a6f2c104374c1abfc01400950c9814e67a81da802099b3d3a566a624bf031d2ae4ed85c565d8ca5af0edee71401ed7e0db54b6f0e42cbf7a52cec7f123fa56f900f515e6f637ef6b6f1410c9222842080e7afafe755e4bfbb60375cca73eb21a009e4f136b120dad7c403d76c6a3f5c573b723cb6ddb88527ae69ece73c74a638f3232beb401cbddb3437e704e33915bb673078c60d636b71949e361dc60d4da64c76aafa5006f86f4a9e3622a923e6a75908a00b99c8ac2d56d2e1a466849e79e0d684978b181b8e2a2fb5a38e0d007362def44a0f9ae0f5e4d6945a93c2b893ef0a92472ef902a278964e1c50045717b3de1d9077ea71541f4cb87930ecd267deb563db08d91a8fc3bd3d2e086c32d001a4583dbc81db8c70306b74be5715926ed51092718a45d4e3248dd9c7bd00683b91deab3c87b9a61b956a8649323ad00437b71b13350786a3136a6c5b9080be3d48fff005d55d49f287938157fc22368bbb82bc28d833ea7ff00d5401d12b9570d9e94acc36a81cf5cd45cb1e298d2043820e6800482597718d4b05eb8ed4de077ad3d2e38675b805ba01800e3d6b3bf72b8e68031b5bb412dbf991ee2ca738acad398ab900d7592342c369e8462b9564fb1df3a01c062067d28037237c0e2964976c6cde82a9c721c54ae3cc4db9c500634f34af26e24903a7356e0ba454fde1c135a7696a881bd4f7a59ed22908dc8a7ea280280d4910f038a953558c902585597d6ac2dbaa0c0518f4c54c1a3e8caa7ea28029beab182443101f4155defcb744271d78ad4324280ec55cfa0a81d8c87a50064cb7790728d9230062b280b9121251c2f738e2bac489579039f5a79855948619cf5a00c7b3b8765dafdaac3c871c52cd1a2b9dab8e2aa4acca32bcd0054bc62cdb735d0f86d3c8b691246f999f35cea219ee5437af35d9d9dbc6b12951c63a9ef4017be5e84d21dbeb49b01a36e28028c419019572a54e320fad47827a55b45cd8487fe9a28a6aa8cd004289cf3e959dac5a6f844cabcc60e71e95b38a4963df0c8ac386420fe5401cb43374ce7356d24071cd663a9880a6adeece09a00e8a297a54d9df5936b72ac80e7ad694527ad000eac2a94acc013e95a64022a368378a00c78a4669306afc6a71532d822f20fe95308828c50044060535db02a6601475ace9e6c0e0f3ef4010cf27cc4d5099f278ed4d9ef06e3cf4a92c225b9937ca711fa7ad005dd2ed091e694dc5ce4647402ba945daa00e8062aadb3c2b1a85603030060f1523dd4717dedded85cd0059c515089814dcb9208cd225c6f19553ef400df3d62b478dd1812e1b38f41557eda9c0d8f93d38ad3edf5a8e69cc6334015924674dc10800e39a3ce97cc0ab1139ef561672c9b88a4371839db401cbcb0074da7b7435837a1a2948cd74ec0648c77acbd4adc491e738c73f5a00c7b7be685c7271ed5d15b6a3138186c9e315cabc5b7a1ef4473bc4dc1a00ef52e97a6454eb70b8ae3a3d49b8c039f5cd6826a0c63ceda00e8bed0a6a392e028ce6b9f7bf619383d2a0b8d41c900679e3ad006ccd7e30c037358f7f7a020239cf7acdb8ba6e40c83d73545e62cdf376a00b22532c86bd1f4bb0b27d32dd800df28cf1d0f7af3ab58c641f5af5182ca3b28cc68588ce4e4f7a009d22853eea0029592278f63282b51e7b503ad002a5bc4bc7247bd3d238533b0633e94dc7149803b5007ffd9, 'CIT-111', 13, '2016-17'),
(39, 1602022, 'nazmus sakib', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108009a009a03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00b2f290319aaed37bd472b9048cd405bde8026df9351bb7a1a66f03bd2a7ced81400810bd23438eb5a31dbf1ef52fd97239a00c81103c60d491daee6000e3e95acb660f6ab30db2a60e39a00af6f6a1147cb53b26d1567681daa2706802bb0cd40e800cb1153bb2a8f5aac577b6f7fc07a50054957729fe754658704f35a731f96ab483721a00cd2b8a5524548f8f6cd42ed8340126f6f5ab16d2912020e083c1f4aa024e6acc0d8753401ec3e07f366d29eea49d9f7bedda7b600ff1aea2b88f87d7ea6de7b0661b8379883d477fe95dbd00780cd26589aac5fdea4958726aa31e68024dfce2b4eca1f941ef5970a16916b7e0508a001401600c0eb4f5a676a552734013a83527414d419a944668023ddef4d70719a94c7ed4d643d2802932ee34df2fdeaef907ad0631e940199245c1aa1704c2a78cd6ccb19c702b32ea02c0e4138a00ca8c176e6993c657e957e0876b9e3b517316633c74e9401922a68891d6a123048a721c1a00ea341d4e4d3efa0b98db0636f987aaf715ec51dfdacb1248b3c7b5d430f9877af03b590870466b616fa6540a243803039a00c36351e0669a64f7a58b32ca10753401a3630e7e62315a8b5044823400761514b78a9c28dcdd2803414af7353298ff00bc07d4d73cf2ddc873b5867a62a0922bbc6e2929fce803ae8de327e5756c75c1cd5a4209c0ae07ccb9b7738de87bf5ad6d3b56983fef5891d304d0075985039a690b54d6e738e6a533714012395515427be821c87702a3bcba2a842fdeae6aebcd924c024d006ccbaddb2f727f0aaf26ad6efd0f5f5aca8b4cb898e48c0f7ab6ba394037c809f6a009d2ea163d7152b1574383d455536000ebcd3552485b19cad00675d2f933950783c8a895b3cd5cd4a3ca09076ef59d1b5005fb763bb157371cf5acfb73fbc5ad1279fbb40192dd7157f4a4ccfbcf618aa6ebf3568e94396a00d39065081dea158123ff001ab1cd51bc9cc630a0e4f7f4a00b2258d08ce2ac25d26ded58f6d6f3deab32b05033c9ee6a84770638e78a72e653c039fbb401b53cf13312769c9ef508f2f76540cd36c34a96ef4a6b90ec1f790a0f714c8ada68e7292103039a00d6b57ce3a9f6abaf90848accb57d8d8cf5abef2131914019f71364e0f6aabe7227352797e6cfb4b60679355e3b09eee67110c22b6d2cc6802dc7760ff8934d96e8824657f3aced4ace6d2ee92519963c704e719aad6b1bea57dbb0557ab95e82803505cfafe94f0e1eb3ee607b79b6c6c593deadd9ab311918f6a0075d47bada418fe135cf8e1abaa9630d130c6722b9655ccbb49c64e334016edbef0392715d18b524672bcfbd62e9f12f9a6307271915b896ae514e5ba5007373fdfc8ef5774824c928f6155a7b56c3373c7352690db64901e09c62803733c556b88449c9ab0064d4e90061cd006446d25b37c848cf6a6c8904d279924219fa935b12596ee548cd406c08eae3f0140155af24f2d638cb220e814e05280ecb96cee3dfbd5b4b28d79e49f7a64bb54e2801b6ebb5f9ad03f32631c553814bc80638ad1d9f2e08a00c69536ca48a7e094f97233cf1c5493a90e7229602aff2f71401564b894af96ca197a1dc334c12ba26d8d028f615a4d6e1bb522daa8ed401991c0f2c9b9c715752209daad88940e00a0a803a50057600a918ea315c94a3f7cc318c1c575d21dbcd73d1da99ee5b0382e7f9d00745e11f0ededeceb79e4910053cb719af52b7f0fda2dac2aebf30400e00eb8ab1650c165a65bc11e155235181f4ab02e06d1d7a7a50078ddcd918a4961718742548f7158b14660d4091f758e39aeffc5d66b6dae3b28c2cc81ff1e87f95711aa2887cb651d0f268034e2e473571080a2b26ca632c4b93935a40e31401607cd47966856a981e334010344769ac6972d3301d8e38ad5b99cf2074aa1f275a00d0b28c04071574c7c74acbb5bb5040cf19ad51728d011de80285cc6b83f4acc45649338e33d6aedddd221ebc9aadf698b192c07d4d006820ca83d8d4be5f1552cae77a90395ed574bf1400dda2a27c62959fd4d40f28c1e6802add384566f414ef0c58fdbb51b7871c3cc33f4ef547529b6c479e3a568f852ee582e5278f00c219c6475e3ffaf401eccd6e8542818c74c537ca41c570b71e2ad4e48f619163dddd1306a8fdbae4f26ea5ff00becd0026bfaab6ad78b73e5796a89b157393d735ca6b65dad9582ae17afad6d239ce0f35977f6c5a0993ae41c668032f4bb8c12a4e6b7925c8e2b90b693ca9b83c1e2ba3825fddad0069a3922a65638eb5451ce29cf3ec5278a00b122065619e48ae76f6d6fc3feee4f97b60e2af8d4d59c8eb44d71b93e5192680316137709de646383c826b41358c4782486a3cb909e109aaef6a8c4965dad4010cd24f7ae482428a8e0d2667903b49c55f5824db955c0eddaa48cca9d47e5401a1668b6d104c93c753567ce0470d5873df346ad91d3d2aaa6abf3a9ddd7d7b500740f263bd55925c534484a8cf5c5432107bd0067ea938db8cf279ae8bc3c0c5a4acac7e6981c7b01d2b92d4082d9aeb74e531693689eb187fce802fc8d9233e94dcfbd45bc03c9a3cd5f5a006a9c547721a48f09d6a511fab52ed5c75a00e1e689adeed95948c356dda3fc99273e949af5a0f92653c81822ab59cd950be9401b0ad9159daabbb05446200e4e3bd5847a788924903373ed4018d147344f931b903a9c55afed05ce150e7dc56d98815e9558d9c65cb60034019cba8cc186d4627b6054f1ea72a83bedd89ff0074d5c58bcbe9538917b85cd0064bdddd4ab95b7900edf2e2a0696ecf584afd6b66490630a0541e5973cd006230bbb80c8b18e7f889a897499e3019886cf619e2ba458540c629ccaa178e28033626658955bb714c95f20d3e53c907ad519ddd46077a00aaeaf2ca768cfb5773671ffa3c6339f900ae53498bcdbc1b9b00feb5d745195403340120b78cbe5b9a3c84f4146c39e4d183eb4019f96f5a722920f269e1053c2d005796dd2642aea1b8ee2b9bd86d2778dba838aebb1581af41b6ea3917a18f9fccd0044928356a1946e19ac413ec35661bc53285cd00740926e14f2323354a3981c60d5c8d9597ad00432ee1d2a8cd2ba8ad4600f18a85ed849c605005181da41cf06aea03eb4a9681391c1a984781d28019cd4133601a9e421173597777400241ed83401148df3126a94a59e4da83249c01ef4c6badddc64d6c693a78252e25e5ba85f4f7a00b9a4d8ac055b6e597ab1f5ad95f7a811a289705d464fad486450324f4a00948a4cfbd44665c75a6f99ec68020f3a20799147e3522caa4654820f4aa1b17fba3ee7a7bd5f8957ca4e074f4a004fb4479c679f4aa1aa62468f8e36919fc6b4362f9cdf28fbbe954b52007d9f03f80ff004a00e66f2dd972cbd2b1cdc347270791eb5d4cc0153c76ae52fc0170f81de803634dd4c336d67c1ef9adfb7ba46c618735c0c24f9839ae8ec49d8793d2803a613291906a513263ad6340c70393d6ad64e2802fb4ab8e2abcd71b067355909c753546f18ed6e4fe7401627be05792315837d7aa1d941cfe344e4ec1c9acb7e6439f5a00dcf0fd88d46e7737dc57553f8d7791e9f047f77238c706b91f087dd9bfeba2ff00235d88278e7b500325d3e1914632ac3bf6a70b4cae1cf5a97276f5a3276f5a008d6d11131c3739e697ecfee29d93eb4993ea6803ffd9, 'CIT-111', 13, '2016-17');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1018;

--
-- AUTO_INCREMENT for table `student2`
--
ALTER TABLE `student2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trainingset1`
--
ALTER TABLE `trainingset1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
