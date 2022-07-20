-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307:3307
-- Generation Time: Jul 20, 2022 at 02:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `grading_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisers`
--

CREATE TABLE `advisers` (
  `adviser_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `grade_id` varchar(5) NOT NULL,
  `section` varchar(20) NOT NULL,
  `program` varchar(5) NOT NULL,
  `school_year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ATT_ID` int(30) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SYI_ID` int(30) NOT NULL,
  `MONTH` varchar(15) NOT NULL,
  `DAYS_OF_CLASSES` int(5) NOT NULL,
  `DAYS_PRESENT` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ATT_ID`, `STUDENT_ID`, `SYI_ID`, `MONTH`, `DAYS_OF_CLASSES`, `DAYS_PRESENT`) VALUES
(25, 2, 3, 'June', 0, 0),
(26, 2, 3, 'July', 0, 0),
(27, 2, 3, 'August', 0, 0),
(28, 2, 3, 'September', 0, 0),
(29, 2, 3, 'October', 0, 0),
(30, 2, 3, 'November', 0, 0),
(31, 2, 3, 'December', 0, 0),
(32, 2, 3, 'January', 0, 0),
(33, 2, 3, 'February', 0, 0),
(34, 2, 3, 'March', 0, 0),
(35, 2, 3, 'April', 0, 0),
(36, 2, 3, 'May', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `awss`
--

CREATE TABLE `awss` (
  `id` int(200) NOT NULL,
  `ff` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_b`
--

CREATE TABLE `data_b` (
  `db_id` int(10) NOT NULL,
  `db_name` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_base`
--

CREATE TABLE `data_base` (
  `db_id` int(10) NOT NULL,
  `dn_name` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(10) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `grade`, `status`) VALUES
(1, '7', ''),
(2, '8', ''),
(3, '9', ''),
(4, '10', ''),
(23, '11', ''),
(24, '12', ''),
(25, '13', ''),
(26, '14', ''),
(27, '15', '');

-- --------------------------------------------------------

--
-- Table structure for table `grades_per_subject`
--

CREATE TABLE `grades_per_subject` (
  `ID` int(11) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `YEAR` int(5) NOT NULL,
  `SUBJECT` varchar(20) NOT NULL,
  `PERIODIC_GRADING` int(5) NOT NULL,
  `GRADES` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(10) NOT NULL,
  `transaction` varchar(200) NOT NULL,
  `user_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `transaction`, `user_id`, `date_added`) VALUES
(36, 'logged out', 1, '2021-02-26 09:34:59'),
(37, 'logged in', 1, '2021-02-26 09:38:19'),
(38, 'logged in', 1, '2021-02-26 11:57:05'),
(39, 'added Science in the subject list', 1, '2021-02-26 11:57:42'),
(40, 'printed Angel Jude Suarez permanent record', 1, '2021-02-26 11:58:23'),
(41, 'added record of m m', 0, '2021-02-26 12:00:26'),
(42, 'printed Angel Jude Suarez permanent record', 1, '2021-02-26 12:00:46'),
(43, 'logged out', 1, '2021-02-26 12:05:14'),
(44, 'added Additional Math in the subject list', 0, '2022-06-16 18:05:29'),
(45, 'added Additional Math in the subject list', 0, '2022-06-16 18:05:34'),
(46, 'added 12 in the grades list', 0, '2022-06-16 18:11:36'),
(47, 'added 11 in the grades list', 0, '2022-06-16 18:11:53'),
(48, 'added qwerty yui as new student', 0, '2022-06-24 15:18:10'),
(49, 'added lui jason as new student', 0, '2022-06-24 15:29:29'),
(50, 'updated 3 in the curriculum list', 0, '2022-07-01 16:38:48'),
(51, 'updated 3 in the curriculum list', 0, '2022-07-01 16:38:50'),
(52, 'updated 1 in the curriculum list', 0, '2022-07-01 16:38:52'),
(53, 'updated 2 in the curriculum list', 0, '2022-07-01 16:38:52'),
(54, 'updated 1 in the curriculum list', 0, '2022-07-01 16:38:53'),
(55, 'updated 3 in the curriculum list', 0, '2022-07-01 16:38:53'),
(56, 'added Jeff satur as new student', 0, '2022-07-04 01:08:02'),
(57, 'added Sivan trite as new student', 0, '2022-07-04 01:10:53'),
(58, 'added Arce Michelle as new student', 0, '2022-07-04 01:15:03'),
(59, 'added Chee  Tan as new student', 0, '2022-07-04 10:05:59'),
(60, 'added Fei Kim as new student', 0, '2022-07-11 14:41:08'),
(61, 'added Xin Tan  as new student', 0, '2022-07-11 14:43:12'),
(62, 'printed   permanent record', 0, '2022-07-12 23:34:12'),
(63, 'logged out', 0, '2022-07-12 23:42:37'),
(64, 'printed   permanent record', 0, '2022-07-12 23:50:36'),
(65, 'added Leng Loh as new student', 0, '2022-07-13 01:55:13'),
(66, 'added   as new student', 0, '2022-07-13 02:08:20'),
(67, 'added 6 in the grades list', 0, '2022-07-13 02:36:09'),
(68, 'added Computer in the subject list', 0, '2022-07-13 02:37:45'),
(69, 'added 5 in the grades list', 0, '2022-07-13 02:39:29'),
(70, 'added 4 in the grades list', 0, '2022-07-13 02:39:40'),
(71, 'added 11 in the grades list', 0, '2022-07-13 02:42:30'),
(72, 'added 12 in the grades list', 0, '2022-07-13 02:43:23'),
(73, 'added 12 in the grades list', 0, '2022-07-13 02:45:30'),
(74, 'added 13 in the grades list', 0, '2022-07-13 02:47:41'),
(75, 'added 12 in the grades list', 0, '2022-07-13 02:50:42'),
(76, 'added 13 in the grades list', 0, '2022-07-13 02:51:13'),
(77, 'added 13 in the grades list', 0, '2022-07-13 02:54:00'),
(78, 'added 14 in the grades list', 0, '2022-07-13 02:57:36'),
(79, 'added 15 in the grades list', 0, '2022-07-13 02:57:45'),
(80, 'added 16 in the grades list', 0, '2022-07-13 02:59:26'),
(81, 'added Chinese in the subject list', 0, '2022-07-13 03:00:04'),
(82, 'added Chinese in the subject list', 0, '2022-07-13 03:00:37'),
(83, 'added Chinese in the subject list', 0, '2022-07-13 03:00:55'),
(84, 'added Zi Tan as new student', 0, '2022-07-13 03:03:52'),
(85, 'logged out', 0, '2022-07-13 03:04:00'),
(86, 'logged out', 0, '2022-07-13 03:06:23'),
(87, 'updated   academic record', 0, '2022-07-13 05:16:18'),
(88, 'added Mei Yong as new student', 0, '2022-07-13 05:25:51'),
(89, 'added 17 in the grades list', 0, '2022-07-13 05:26:01'),
(90, 'added Physics in the subject list', 0, '2022-07-13 05:26:39'),
(91, 'logged out', 0, '2022-07-13 05:27:16'),
(92, 'added Sew Si as new student', 0, '2022-07-13 05:34:45'),
(93, 'added 18 in the grades list', 0, '2022-07-13 05:34:56'),
(94, 'added Biology in the subject list', 0, '2022-07-13 05:35:11'),
(95, 'printed Angel Jude Suarez permanent record', 0, '2022-07-13 05:53:05'),
(96, 'printed Zi Tan permanent record', 0, '2022-07-13 05:53:16'),
(97, 'printed Angel Jude Suarez permanent record', 0, '2022-07-13 05:54:04'),
(98, 'added Zi  Tan as new student', 0, '2022-07-13 06:12:03'),
(99, 'added 19 in the grades list', 0, '2022-07-13 06:12:20'),
(100, 'added Chemistry in the subject list', 0, '2022-07-13 06:12:44'),
(101, 'added Yong Lau as new student', 0, '2022-07-14 02:34:37'),
(102, 'added Kar Pong as new student', 0, '2022-07-14 02:43:36'),
(103, 'added 11 in the grades list', 0, '2022-07-14 02:43:45'),
(104, 'added Programming in the subject list', 0, '2022-07-14 02:44:21'),
(105, 'added ke tan as new student', 0, '2022-07-14 05:22:30'),
(106, 'added ke tan as new student', 0, '2022-07-14 05:23:00'),
(107, 'added Ke Tan as new student', 0, '2022-07-14 05:24:42'),
(108, 'added Yen Tan  as new student', 0, '2022-07-14 05:30:35'),
(109, 'added 12 in the grades list', 0, '2022-07-14 05:31:41'),
(110, 'added Bahasa Malaysia in the subject list', 0, '2022-07-14 05:33:05'),
(111, 'added Zi Tan as new student', 0, '2022-07-14 06:06:34'),
(112, 'added 13 in the grades list', 0, '2022-07-14 06:07:01'),
(113, 'added Mathematics in the subject list', 0, '2022-07-14 06:07:38'),
(114, 'added Xin tan as new student', 0, '2022-07-14 21:59:44'),
(115, 'added 14 in the grades list', 0, '2022-07-14 22:00:09'),
(116, 'added IT in the subject list', 0, '2022-07-14 22:00:35'),
(117, 'added Yee Tan as new student', 0, '2022-07-14 22:14:29'),
(118, 'added 15 in the grades list', 0, '2022-07-14 22:14:48'),
(119, 'added Art in the subject list', 0, '2022-07-14 22:15:09'),
(120, 'added kan Low as new student', 0, '2022-07-17 16:08:03'),
(121, 'logged out', 0, '2022-07-17 16:50:50'),
(122, 'logged out', 0, '2022-07-17 16:51:01'),
(123, 'logged out', 0, '2022-07-17 16:54:32'),
(124, 'logged out', 0, '2022-07-17 16:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `PROGRAM_ID` int(20) NOT NULL,
  `PROGRAM` varchar(10) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`PROGRAM_ID`, `PROGRAM`, `DESCRIPTION`) VALUES
(1, 'Regular', 'Regular'),
(2, 'Tennisball', 'Ball activity'),
(3, 'Badminton', 'Ball activity'),
(4, 'Art Club', 'Drawing, Handmake'),
(5, 'Chinese La', 'Chinese Language'),
(6, 'BasketBall', 'Ball activity'),
(8, 'Volleyball', 'ball activity'),
(10, 'Student Cl', 'Valid for all students that want to lead'),
(11, 'Football', 'Ball activity'),
(12, 'Ball Game', 'Ball Game Activity'),
(13, 'Game', 'Game Activity'),
(14, 'Handmake', 'Handmake society'),
(15, 'Bahasa Lan', 'Bahasa Language');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_candidates`
--

CREATE TABLE `promotion_candidates` (
  `id` int(10) NOT NULL,
  `STUDENT_ID` int(10) NOT NULL,
  `SY` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `SY_ID` int(10) NOT NULL,
  `school_year` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`SY_ID`, `school_year`, `status`) VALUES
(1, '2016-2017', 'No'),
(2, '2017-2018', 'No'),
(3, '2018-2019', 'No'),
(4, '2019-2020', 'Yes'),
(5, '2017-2018', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `STUDENT_ID` int(50) NOT NULL,
  `LRN_NO` int(12) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `MIDDLENAME` varchar(30) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `STREET` varchar(30) NOT NULL,
  `PROVINCE` varchar(30) NOT NULL,
  `TOWN` varchar(30) NOT NULL,
  `BRGY` varchar(30) NOT NULL,
  `PARENT_GUARDIAN` varchar(50) NOT NULL,
  `P_ADDRESS` varchar(60) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `GEN_AVE` int(6) NOT NULL,
  `TOTAL_NO_OF_YEAR` int(5) NOT NULL,
  `PROGRAM` varchar(20) NOT NULL,
  `BIRTH_PLACE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `STUDENT_ID` int(50) NOT NULL,
  `LRN_NO` varchar(15) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `MIDDLENAME` varchar(30) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `ADDRESS` varchar(20) NOT NULL,
  `BIRTH_PLACE` varchar(50) NOT NULL,
  `PARENT_GUARDIAN` varchar(50) NOT NULL,
  `P_ADDRESS` varchar(60) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `GEN_AVE` varchar(6) NOT NULL,
  `TOTAL_NO_OF_YEARS` varchar(5) NOT NULL,
  `PROGRAM` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`STUDENT_ID`, `LRN_NO`, `LASTNAME`, `FIRSTNAME`, `MIDDLENAME`, `GENDER`, `DATE_OF_BIRTH`, `ADDRESS`, `BIRTH_PLACE`, `PARENT_GUARDIAN`, `P_ADDRESS`, `INT_COURSE_COMP`, `SCHOOL_YEAR`, `GEN_AVE`, `TOTAL_NO_OF_YEARS`, `PROGRAM`) VALUES
(2, '11111', 'Suarez', 'Angel Jude', 'Reyes', 'MALE', '1996-02-11', 'Himamaylan City', 'Brgy. Tooy Himamaylan City', 'Michael Suarez', 'Himamaylan City', 'San Ramon Catholic School', '2004-2010', '85', '6', '1'),
(7, '23', 'Michelle', 'Arce', 'Sas', 'FEMALE', '2003-02-05', '12, Lorong bas, p.P', 'Kedah', 'Laura Arce', '12, Lorong Bas, P.P', 'CC', '2021-2022', '54', '1', '3'),
(8, '58', 'Tan', 'Chee ', 'Keong', 'MALE', '2003-10-15', '7, Lorong Tan, P.P', 'Penang', 'Tan Heng Huat', '7, Lorong Tan, P.P', 'CC', '2021-2022', '85', '1', '2'),
(10, '88', 'Tan ', 'Xin', 'Yee', 'MALE', '2000-08-19', '5, Lorong Yui, Taman', 'Penang', 'Tan Chee keong', '5, Lorong Yui, Taman Ou, P.P', 'CC', '2021-2022', '80', '1', '3'),
(11, '21', 'Loh', 'Leng', 'Leng', 'FEMALE', '2000-10-19', '8, Taman Mountain, P', 'Penang', 'Loh Kwan Hin', '8, Taman Mountain, P.P', 'CC', '2021-2022', '58', '1', '4'),
(14, '10', 'Yong', 'Mei', 'Qi', 'FEMALE', '2000-06-21', '8, Taman Mountain, P', 'Penang', 'Yong Wei Quan', '8, Taman Mountain, P.P', 'HCHS', '2021-2022', '85', '1', '4'),
(16, '9', 'Tan', 'Zi ', 'Yee', 'FEMALE', '2013-02-21', '40,Tingkat Relau 6,S', 'Bayan Lepas', 'Tan Chee keong', '40,Tingkat Relau 6,Setia Vista, Relau', 'CC', '2021-2022', '85', '1', '4'),
(17, '1112', 'Lau', 'Yong', 'Hui', 'FEMALE', '2002-10-23', '50-D, Cangkat Minden', 'Penang', 'Lau Teik Hin', '50-D, Cangkat Minden Jalan 15, Minden Heights, 11700 Gelugor', 'HCHS', '2021-2022', '89', '1', '4'),
(18, '3235', 'Pong', 'Kar', 'Sin', 'FEMALE', '2002-01-04', '20, Lebuh Rambai 3, ', 'Penang', 'pong Jie Shen', '20, Lebuh Rambai 3, Paya Terubong, 11500 Ayer Itam, Pulau Pi', 'HCHS', '2020-2022', '85', '2', '6'),
(21, '56', 'Tan', 'Ke', 'Qi', 'FEMALE', '1999-03-25', '6, Lorong Ara, Taman', 'Penang', 'Tan Keng Hui', '6, Lorong Ara, Taman Bunga, P.P', 'CC', '2021-2022', '54', '1', '3'),
(22, '11112', 'Tan ', 'Yen', 'Yin', 'FEMALE', '2002-02-25', '7, Jalan Ara, Lorong', 'Penang', 'Tan Keng Hui', '7, Jalan Ara, Lorong Hua,Taman Harum, P.P', 'HCHS', '2021-2022', '56', '1', '6'),
(23, '2', 'Tan', 'Zi', 'Xuan', 'FEMALE', '2002-11-25', '40,Tingkat Relau 6,S', 'penang', 'Tan Chee keong', '40,Tingkat Relau 6,Setia Vista, Relau', 'HCHS', '2021-2022', '89', '1', '4');

-- --------------------------------------------------------

--
-- Table structure for table `student_int_info`
--

CREATE TABLE `student_int_info` (
  `ID` int(30) NOT NULL,
  `STUDENT_ID` varchar(30) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR_START` year(4) NOT NULL,
  `SCHOOL_YEAR_ENDS` year(4) NOT NULL,
  `GEN_AVE` int(5) NOT NULL,
  `TOTAL_NO_YEARS` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_year_info`
--

CREATE TABLE `student_year_info` (
  `SYI_ID` int(11) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SCHOOL` varchar(100) NOT NULL,
  `YEAR` varchar(15) NOT NULL,
  `SECTION` varchar(10) NOT NULL,
  `TOTAL_NO_OF_YEAR` int(5) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `ADVANCE_UNIT` varchar(10) NOT NULL,
  `LACK_UNIT` varchar(10) NOT NULL,
  `ADVISER` varchar(40) NOT NULL,
  `GEN_AVE` varchar(10) NOT NULL,
  `RANK` varchar(10) NOT NULL,
  `TO_BE_CLASSIFIED` varchar(10) NOT NULL,
  `TDAYS_OF_CLASSES` int(5) NOT NULL,
  `TDAYS_PRESENT` int(5) NOT NULL,
  `ACTION` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_year_info`
--

INSERT INTO `student_year_info` (`SYI_ID`, `STUDENT_ID`, `SCHOOL`, `YEAR`, `SECTION`, `TOTAL_NO_OF_YEAR`, `SCHOOL_YEAR`, `ADVANCE_UNIT`, `LACK_UNIT`, `ADVISER`, `GEN_AVE`, `RANK`, `TO_BE_CLASSIFIED`, `TDAYS_OF_CLASSES`, `TDAYS_PRESENT`, `ACTION`) VALUES
(3, 2, 'School', '1', '1', 7, '2019-2020', '', '', '', '90.1666666', '', '', 0, 0, 'Promoted');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SUBJECT_ID` int(11) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `FOR` varchar(10) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SUBJECT_ID`, `SUBJECT`, `FOR`, `DESCRIPTION`) VALUES
(1, 'English', 'All', 'English'),
(2, 'Math', 'All', 'Math'),
(4, 'Additional Math', 'All', 'Advanced'),
(6, 'Computer', 'All', 'IT'),
(7, 'Chinese', 'All', 'Chinese'),
(10, 'Physics', 'All', 'Physics'),
(11, 'Biology', 'All', 'Biology'),
(12, 'Chemistry', 'All', 'Chemistry'),
(13, 'Programming', 'All', 'Programming Language(Python)'),
(14, 'Bahasa Malaysia', 'All', 'Bahasa Language'),
(15, 'Mathematics', 'All', 'Mathematics'),
(16, 'IT', 'All', 'IT'),
(17, 'Art', 'All', 'Art');

-- --------------------------------------------------------

--
-- Table structure for table `total_grades_subjects`
--

CREATE TABLE `total_grades_subjects` (
  `TGS_ID` int(30) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SYI_ID` int(30) NOT NULL,
  `SUBJECT` int(20) NOT NULL,
  `1ST_GRADING` varchar(10) NOT NULL,
  `2ND_GRADING` varchar(10) NOT NULL,
  `3RD_GRADING` varchar(10) NOT NULL,
  `4TH_GRADING` varchar(10) NOT NULL,
  `UNITS` varchar(10) NOT NULL,
  `FINAL_GRADES` varchar(10) NOT NULL,
  `PASSED_FAILED` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_grades_subjects`
--

INSERT INTO `total_grades_subjects` (`TGS_ID`, `STUDENT_ID`, `SYI_ID`, `SUBJECT`, `1ST_GRADING`, `2ND_GRADING`, `3RD_GRADING`, `4TH_GRADING`, `UNITS`, `FINAL_GRADES`, `PASSED_FAILED`) VALUES
(5, 2, 3, 2, '90', '95', '96', '97', '', '94.50', 'PASSED'),
(6, 2, 3, 1, '85', '86', '87', '88', '', '86.50', 'PASSED'),
(7, 2, 3, 3, '88', '88', '90', '92', '', '89.50', 'PASSED');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `USER` varchar(10) NOT NULL,
  `PASSWORD` text NOT NULL,
  `USER_TYPE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `LASTNAME`, `FIRSTNAME`, `USER`, `PASSWORD`, `USER_TYPE`) VALUES
(1, 'admin', 'admin', 'admin', '0192023a7bbd73250516f069df18b500', 'ADMINISTRATOR'),
(2, 'staff', 'staff', 'staff', 'de9bf5643eabf80f4a56fda3bbb84483', 'STAFF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisers`
--
ALTER TABLE `advisers`
  ADD PRIMARY KEY (`adviser_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ATT_ID`);

--
-- Indexes for table `data_b`
--
ALTER TABLE `data_b`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `data_base`
--
ALTER TABLE `data_base`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `grades_per_subject`
--
ALTER TABLE `grades_per_subject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`PROGRAM_ID`);

--
-- Indexes for table `promotion_candidates`
--
ALTER TABLE `promotion_candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`SY_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student_int_info`
--
ALTER TABLE `student_int_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_year_info`
--
ALTER TABLE `student_year_info`
  ADD PRIMARY KEY (`SYI_ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SUBJECT_ID`);

--
-- Indexes for table `total_grades_subjects`
--
ALTER TABLE `total_grades_subjects`
  ADD PRIMARY KEY (`TGS_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advisers`
--
ALTER TABLE `advisers`
  MODIFY `adviser_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ATT_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `data_b`
--
ALTER TABLE `data_b`
  MODIFY `db_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_base`
--
ALTER TABLE `data_base`
  MODIFY `db_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `grades_per_subject`
--
ALTER TABLE `grades_per_subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `PROGRAM_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `promotion_candidates`
--
ALTER TABLE `promotion_candidates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `SY_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `STUDENT_ID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `STUDENT_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `student_int_info`
--
ALTER TABLE `student_int_info`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_year_info`
--
ALTER TABLE `student_year_info`
  MODIFY `SYI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SUBJECT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `total_grades_subjects`
--
ALTER TABLE `total_grades_subjects`
  MODIFY `TGS_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
