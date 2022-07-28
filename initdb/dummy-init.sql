-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db:3306:3306
-- Generation Time: Jul 26, 2022 at 08:52 PM
-- Server version: 10.8.3-MariaDB-1:10.8.3+maria~jammy
-- PHP Version: 8.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastgrad`
--
CREATE DATABASE IF NOT EXISTS `fastgrad` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fastgrad`;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(6) NOT NULL COMMENT 'A 6-digit CMU course number (e.g. 204111)',
  `faculty_id` int(2) NOT NULL,
  `name_th` varchar(100) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `credit` int(1) NOT NULL,
  `description_th` text NOT NULL,
  `description_en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `faculty_id`, `name_th`, `name_en`, `credit`, `description_th`, `description_en`) VALUES
(208250, 5, 'วิธีเชิงสถิติสำหรับวิทยาศาสตร์ข้อมูล', 'Statistical Methods for Data Science', 3, 'ความรู้เบื้องต้นเกี่ยวกับวิธีเชิงสถิติ การเก็บรวบรวมข้อมูล การวิเคราะห์เชิงค้นหา การแจกแจงปรกติและการทดสอบการแจกแจงปรกติ การอนุมานทางสถิติเกี่ยวกับค่าเฉลี่ยของประชากร การวิเคราะห์ความแปรปรวน การวิเคราะห์การถดถอยและสหสัมพันธ์', 'Introduction to statistical methods, collecting data, exploratory data analysis, normal distribution and normality tests, inference for population mean, analysis of variance, regression and correlation analysis.'),
(208263, 5, 'สถิติเบื้องต้น', 'Elementary Statistics', 3, 'ทบทวนความรู้พื้นฐานเกี่ยวกับสถิติ ความน่าจะเป็น และการแจกแจงความน่าจะเป็น การประมาณค่า และการทดลองสมมุติฐานของพารามิเตอร์ของประชากร โดยใช้ Z-test, t-test, x2-test, and F-test การประยุกต์ไคว์-สแควร์ การวิเคราะห์ความแปรปรวน การถดถอยและสหสัมพันธ์', 'Review of basic statistical knowledge. Probability and probability distribution. Estimation and test of hypothesis concerning parameters of populations by using Z-test, t-test, x2 test and F-test. Application of Chi-square. Analysis of variance. Regression and correlation.'),
(208272, 5, 'สถิติเบื้องต้นสำหรับสังคมศาสตร์ 2', 'Elementary Statistics for Social Sciences 2', 3, 'หลักการเบื้องต้นของการอนุมานเชิงสถิติ การอนุมานค่าสัดส่วนประชากร การอนุมานค่าเฉลี่ยประชากร การอนุมานค่าความแปรปรวนประชากร การวิเคราะห์ความแปรปรวน การอนุมานการถดถอยและสัมประสิทธิ์สหสัมพันธ์ การทดสอบไคกำลังสอง และการทดสอบไม่อิงพารามิเตอร์', 'Basic principles of statistical inference, inference about population proportions, inference about population means, inference about population variances, analysis of variance, inference of regression and correlation coefficient, Chi-squared test and non-parametric test.'),
(208280, 5, 'วิธีเชิงสถิติ', 'Statistical Methods', 3, 'ทบทวนสถิติเบื้องต้นและตัวอย่างสุ่ม ขนาดตัวอย่างกรณีประชากร 2 กลุ่ม การอนุมานทางสถิติ การวิเคราะห์ความสัมพันธ์ระหว่าง 2 ตัวแปร ตัวแบบทางสถิติ สถิติศาสตร์ไม่อิงพารามิเตอร์ สถิติประชากร', 'Reviewing the fundamental of statistics and the random samples, sample size for two populations, statistical inference, relationship analysis between two variables, statistical model, non-parametric statistics, demographic statistics.'),
(229223, 5, 'การโปรแกรมสำหรับวิทยาการข้อมูล', 'Programming for Data Science', 3, 'การคิดเชิงคำนวณ หลักมูลของแนวคิดการโปรแกรม ฟังก์ชันพื้นฐาน ตรรกะแบบมีเงื่อนไขและแบบบูลีน การวนซ้ำพื้นฐานการนำเข้าและส่งออกข้อมูลจากไฟล์ หลักมูลของโครงสร้างข้อมูล กระบวนการจัดดำเนินการข้อมูลพื้นฐาน แพ็กเกจคำนวณทางวิทยาศาสตร์', 'Computational thinking, fundamental of programming concept, basic function, conditionals and Boolean logic, iterations, basic file I/O, fundamental of data structure, basic data manipulation process, scientific computation package.'),
(229351, 5, 'การเรียนรู้เชิงสถิติสำหรับวิทยาการข้อมูล 1', 'Statistical Learning for Data Science 1', 3, 'แนวคิดพื้นฐานของวิทยาการข้อมูล พีชคณิตเชิงเส้นสำหรับวิทยาการข้อมูล การวิเคราะห์องค์ประกอบหลัก การวิเคราะห์การถดถอยสำหรับวิทยาการข้อมูล การวิเคราะห์อนุกรมเวลาสำหรับวิทยาการข้อมูล การวิเคราะห์การถดถอยโลจิสติกส์สำหรับวิทยาการข้อมูล', 'Fundamental concept of data science, linear algebra for data science, principal component analysis, regression analysis for data science, time series analysis for data science, logistic regression analysis for data science.');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `student_id` int(9) NOT NULL,
  `course_id` int(6) NOT NULL,
  `term` int(1) NOT NULL,
  `year` year(4) NOT NULL,
  `grade` enum('A','B+','B','C+','C','D+','D','F') NOT NULL,
  `grade_no` enum('4','3.5','3','2.5','2','1.5','1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `student_id`, `course_id`, `term`, `year`, `grade`, `grade_no`) VALUES
(1, 630510999, 229223, 1, 2021, 'B+', '3.5'),
(2, 630510888, 229223, 1, 2021, 'A', '4');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(2) NOT NULL,
  `name_th` varchar(60) NOT NULL,
  `name_en` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name_th`, `name_en`) VALUES
(1, 'คณะมนุษยศาสตร์', 'Faculty of Humanities'),
(2, 'คณะศึกษาศาสตร์', 'Faculty of Education'),
(3, 'คณะวิจิตรศิลป์', 'Faculty of Fine Arts'),
(4, 'คณะสังคมศาสตร์', 'Faculty of Social Sciences'),
(5, 'คณะวิทยาศาสตร์', 'Faculty of Science'),
(6, 'คณะวิศวกรรมศาสตร์', 'Faculty of Engineering'),
(7, 'คณะแพทยศาสตร์', 'Faculty of Medicine'),
(8, 'คณะเกษตรศาสตร์', 'Faculty of Agriculture'),
(9, 'คณะทันตแพทยศาสตร์', 'Faculty of Dentistry'),
(10, 'คณะเภสัชศาสตร์', 'Faculty of Pharmacy'),
(11, 'คณะเทคนิคการแพทย์', 'Faculty of Associated Medical Sciences'),
(12, 'คณะพยาบาลศาสตร์', 'Faculty of Nursing'),
(13, 'คณะอุตสาหกรรมเกษตร', 'Faculty of Agro-Industry'),
(14, 'คณะสัตวแพทยศาสตร์', 'Faculty of Veterinary Medicine'),
(15, 'คณะบริหารธุรกิจ', 'Chiang Mai University Business School'),
(16, 'คณะเศรษฐศาสตร์', 'Faculty of Economics'),
(17, 'คณะสถาปัตยกรรมศาสตร์', 'Faculty of Architecture'),
(18, 'คณะการสื่อสารมวลชน', 'Faculty of Mass Communication'),
(19, 'คณะรัฐศาสตร์และรัฐประศาสนศาสตร์', 'Faculty of Political Science and Public Administration'),
(20, 'คณะนิติศาสตร์', 'Faculty of Law'),
(21, 'วิทยาลัยศิลปะ สื่อและเทคโนโลยี', 'College of Art, Media and Technology'),
(22, 'วิทยาลัยนานาชาตินวัตกรรมดิจิทัล', 'International College of Digital Innovation');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `name_th` varchar(50) NOT NULL,
  `name_en` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `program_id`, `name_th`, `name_en`) VALUES
(1, 1, 'แผนปกติ', 'Regular Plan'),
(2, 1, 'แผนสหกิจศึกษา', 'Co-operative Education Plan');

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite`
--

CREATE TABLE `prerequisite` (
  `course_id` int(6) NOT NULL,
  `pre_group` int(11) DEFAULT NULL,
  `cond_year` int(1) DEFAULT NULL COMMENT 'Determine if students are required to have studied for at least a specific length of year.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prerequisite`
--

INSERT INTO `prerequisite` (`course_id`, `pre_group`, `cond_year`) VALUES
(229351, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite_group`
--

CREATE TABLE `prerequisite_group` (
  `id` int(11) NOT NULL,
  `main_group_id` int(11) DEFAULT NULL COMMENT 'If null, this record is a main group; not part of any groups.',
  `course_id` int(6) DEFAULT NULL COMMENT 'If null, the group acts as a group of subgroups.',
  `type` enum('all','any') NOT NULL COMMENT 'How would the application should evaluate the course within this group. ''all'' means that all prerequisites in this group must be satisfied. ''any'' means just one of them is fine.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prerequisite_group`
--

INSERT INTO `prerequisite_group` (`id`, `main_group_id`, `course_id`, `type`) VALUES
(1, NULL, NULL, 'all'),
(2, 1, 229223, 'all'),
(3, 1, NULL, 'any'),
(4, 3, 208263, 'all'),
(5, 3, 208272, 'all'),
(6, 3, 208280, 'all'),
(7, 3, 208250, 'all');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(11) NOT NULL,
  `start_year` year(4) NOT NULL,
  `end_year` year(4) NOT NULL,
  `name_th` varchar(100) NOT NULL,
  `name_en` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `start_year`, `end_year`, `name_th`, `name_en`) VALUES
(1, 2017, 2019, 'หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาวิทยาการคอมพิวเตอร์ (หลักสูตร พ.ศ. 2559 ฉบับปรับปรุง พ.ศ. 2563)', 'Bachelor of Science Program in Computer Science (หลักสูตร พ.ศ. 2559 ฉบับปรับปรุง พ.ศ. 2563)');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(9) NOT NULL COMMENT 'A 9-digit CMU student ID (e.g. 630510600)',
  `user_id` char(36) NOT NULL,
  `academic_year` int(4) NOT NULL COMMENT 'The year that this user legitimately became a CMU student.',
  `advisor_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `user_id`, `academic_year`, `advisor_id`) VALUES
(630510888, '0e713193-0d1e-11ed-9a08-0242ac140004', 2020, '72788988-0d1e-11ed-9a08-0242ac140004'),
(630510999, '0e714a5b-0d1e-11ed-9a08-0242ac140004', 2020, '72788988-0d1e-11ed-9a08-0242ac140004');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` char(36) NOT NULL COMMENT 'Based on SuperToken Library',
  `type` enum('student','advisor','administrator') NOT NULL DEFAULT 'student',
  `email` varchar(319) NOT NULL,
  `fname_th` varchar(50) NOT NULL COMMENT 'First name in Thai',
  `mname_th` varchar(50) DEFAULT NULL COMMENT 'Middle name in Thai (if any)',
  `lname_th` varchar(50) NOT NULL COMMENT 'Last name in Thai',
  `fname_en` varchar(50) DEFAULT NULL COMMENT 'First name in English (optional)',
  `mname_en` varchar(50) DEFAULT NULL COMMENT 'Middle name in English (if any; optional)',
  `lname_en` varchar(50) DEFAULT NULL COMMENT 'Last name in English (optional)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `type`, `email`, `fname_th`, `mname_th`, `lname_th`, `fname_en`, `mname_en`, `lname_en`) VALUES
('0e713193-0d1e-11ed-9a08-0242ac140004', 'student', 'mister_a@localhost', 'เอ', NULL, 'วิทย์คอม', 'A', NULL, 'Comsci'),
('0e714a5b-0d1e-11ed-9a08-0242ac140004', 'student', 'mister_b@localhost', 'บี', NULL, 'วิทย์คอม', 'B', NULL, 'Comsci'),
('72788988-0d1e-11ed-9a08-0242ac140004', 'advisor', 'advizor@localhost', 'ที่ปรึกษา', NULL, 'วิทย์คอม', 'Advisor', NULL, 'Comsci');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `prerequisite`
--
ALTER TABLE `prerequisite`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `pre_group` (`pre_group`);

--
-- Indexes for table `prerequisite_group`
--
ALTER TABLE `prerequisite_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_group_id` (`main_group_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `advisor_id` (`advisor_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prerequisite_group`
--
ALTER TABLE `prerequisite_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `program_id` FOREIGN KEY (`program_id`) REFERENCES `program` (`id`);

--
-- Constraints for table `prerequisite`
--
ALTER TABLE `prerequisite`
  ADD CONSTRAINT `prerequisite_ibfk_1` FOREIGN KEY (`pre_group`) REFERENCES `prerequisite_group` (`id`),
  ADD CONSTRAINT `prerequisite_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `prerequisite_group`
--
ALTER TABLE `prerequisite_group`
  ADD CONSTRAINT `prerequisite_group_ibfk_1` FOREIGN KEY (`main_group_id`) REFERENCES `prerequisite_group` (`id`),
  ADD CONSTRAINT `prerequisite_group_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`advisor_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
