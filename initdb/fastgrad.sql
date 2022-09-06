-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db:3306:3306
-- Generation Time: Aug 05, 2022 at 07:54 AM
-- Server version: 10.8.3-MariaDB-1:10.8.3+maria~jammy
-- PHP Version: 8.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


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
  `is_pseudo` tinyint(1) NOT NULL DEFAULT 0,
  `name_th` varchar(100) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `credit` int(1) NOT NULL,
  `description_th` text NOT NULL,
  `description_en` text NOT NULL,
  `term_1` tinyint(1) NOT NULL DEFAULT 0,
  `term_2` tinyint(1) NOT NULL DEFAULT 0,
  `term_s` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `is_pseudo`, `name_th`, `name_en`, `credit`, `description_th`, `description_en`, `term_1`, `term_2`, `term_s`) VALUES
(1101, 0, 'ภาษาอังกฤษพื้นฐาน 1', 'Fundamental English 1', 3, 'การสื่อสารภาษาอังกฤษ เพื่อการปฏิสัมพันธ์ในชีวิตประจำวัน ทักษะการฟัง พูด อ่านและเขียนในระดับเบื้องต้น ในบริบททางสังคมและวัฒนธรรมที่หลากหลายเพื่อการเรียนรู้ตลอดชีวิต', 'Communication in English for everyday interactions. Basic listening, speaking, reading and writing skills in various social and cultural contexts for life-long learning.', 1, 1, 1),
(1102, 0, 'ภาษาอังกฤษพื้นฐาน 2', 'Fundamental English 2', 3, 'การสื่อสารภาษาอังกฤษเพื่อการปฏิสัมพันธ์ในชีวิตประจำวัน ทักษะการฟัง พูด อ่านและเขียนในระดับที่ซับซ้อนขึ้นในบริบททางสังคมและวัฒนธรรมที่หลากหลายเพื่อการเรียนรู้ตลอดชีวิต', 'Communication in English for everyday interactions. More advanced listening, speaking, reading and writing skills in various social and cultural contexts for life-long learning.', 1, 1, 1),
(204111, 0, 'การเขียนโปรแกรมเบื้องต้น', 'Fundamentals of Programming', 3, 'วิทยาการคอมพิวเตอร์ในชีวิตประจำวัน การแปลภาษา ระบบเลขฐานสอง อัลกอริทึมและการออกแบบ แนวคิดการเขียนโปรแกรมพื้นฐาน ระบบชนิดข้อมูลพื้นฐาน โครงสร้างข้อมูลพื้นฐาน โครงสร้างข้อมูลพื้นฐานและอัลกอริทึม และวิธีการพัฒนาโปรแกรม', 'Computer science in daily life, language translation, binary system, algorithm and designs, fundamental programming concepts, basic type system, fundamental data structure, fundamental data structure and algorithms, and development methods.', 1, 0, 0),
(208250, 0, 'วิธีเชิงสถิติสำหรับวิทยาศาสตร์ข้อมูล', 'Statistical Methods for Data Science', 3, 'ความรู้เบื้องต้นเกี่ยวกับวิธีเชิงสถิติ การเก็บรวบรวมข้อมูล การวิเคราะห์เชิงค้นหา การแจกแจงปรกติและการทดสอบการแจกแจงปรกติ การอนุมานทางสถิติเกี่ยวกับค่าเฉลี่ยของประชากร การวิเคราะห์ความแปรปรวน การวิเคราะห์การถดถอยและสหสัมพันธ์', 'Introduction to statistical methods, collecting data, exploratory data analysis, normal distribution and normality tests, inference for population mean, analysis of variance, regression and correlation analysis.', 1, 1, 0),
(208263, 0, 'สถิติเบื้องต้น', 'Elementary Statistics', 3, 'ทบทวนความรู้พื้นฐานเกี่ยวกับสถิติ ความน่าจะเป็น และการแจกแจงความน่าจะเป็น การประมาณค่า และการทดลองสมมุติฐานของพารามิเตอร์ของประชากร โดยใช้ Z-test, t-test, x2-test, and F-test การประยุกต์ไคว์-สแควร์ การวิเคราะห์ความแปรปรวน การถดถอยและสหสัมพันธ์', 'Review of basic statistical knowledge. Probability and probability distribution. Estimation and test of hypothesis concerning parameters of populations by using Z-test, t-test, x2 test and F-test. Application of Chi-square. Analysis of variance. Regression and correlation.', 1, 1, 0),
(208272, 0, 'สถิติเบื้องต้นสำหรับสังคมศาสตร์ 2', 'Elementary Statistics for Social Sciences 2', 3, 'หลักการเบื้องต้นของการอนุมานเชิงสถิติ การอนุมานค่าสัดส่วนประชากร การอนุมานค่าเฉลี่ยประชากร การอนุมานค่าความแปรปรวนประชากร การวิเคราะห์ความแปรปรวน การอนุมานการถดถอยและสัมประสิทธิ์สหสัมพันธ์ การทดสอบไคกำลังสอง และการทดสอบไม่อิงพารามิเตอร์', 'Basic principles of statistical inference, inference about population proportions, inference about population means, inference about population variances, analysis of variance, inference of regression and correlation coefficient, Chi-squared test and non-parametric test.', 1, 1, 0),
(208280, 0, 'วิธีเชิงสถิติ', 'Statistical Methods', 3, 'ทบทวนสถิติเบื้องต้นและตัวอย่างสุ่ม ขนาดตัวอย่างกรณีประชากร 2 กลุ่ม การอนุมานทางสถิติ การวิเคราะห์ความสัมพันธ์ระหว่าง 2 ตัวแปร ตัวแบบทางสถิติ สถิติศาสตร์ไม่อิงพารามิเตอร์ สถิติประชากร', 'Reviewing the fundamental of statistics and the random samples, sample size for two populations, statistical inference, relationship analysis between two variables, statistical model, non-parametric statistics, demographic statistics.', 1, 1, 0),
(229223, 0, 'การโปรแกรมสำหรับวิทยาการข้อมูล', 'Programming for Data Science', 3, 'การคิดเชิงคำนวณ หลักมูลของแนวคิดการโปรแกรม ฟังก์ชันพื้นฐาน ตรรกะแบบมีเงื่อนไขและแบบบูลีน การวนซ้ำพื้นฐานการนำเข้าและส่งออกข้อมูลจากไฟล์ หลักมูลของโครงสร้างข้อมูล กระบวนการจัดดำเนินการข้อมูลพื้นฐาน แพ็กเกจคำนวณทางวิทยาศาสตร์', 'Computational thinking, fundamental of programming concept, basic function, conditionals and Boolean logic, iterations, basic file I/O, fundamental of data structure, basic data manipulation process, scientific computation package.', 0, 1, 0),
(229351, 0, 'การเรียนรู้เชิงสถิติสำหรับวิทยาการข้อมูล 1', 'Statistical Learning for Data Science 1', 3, 'แนวคิดพื้นฐานของวิทยาการข้อมูล พีชคณิตเชิงเส้นสำหรับวิทยาการข้อมูล การวิเคราะห์องค์ประกอบหลัก การวิเคราะห์การถดถอยสำหรับวิทยาการข้อมูล การวิเคราะห์อนุกรมเวลาสำหรับวิทยาการข้อมูล การวิเคราะห์การถดถอยโลจิสติกส์สำหรับวิทยาการข้อมูล', 'Fundamental concept of data science, linear algebra for data science, principal component analysis, regression analysis for data science, time series analysis for data science, logistic regression analysis for data science.', 0, 1, 0),
(999990, 1, 'วิชาเลือกเสรี (1 หน่วยกิต)', 'Free Elective Course (1 credit)', 3, 'วิชาที่ไม่อยู่ในกลุ่มที่เฉพาะเจาะจงตามหลักสูตร แต่ต้องเรียนให้ครบตามหน่วยกิตที่กำหนด', 'A course that is not explicitly listed in a particular category. However, every study program requires a student to enroll in free elective courses for a given amount of credits.', 1, 1, 1),
(999991, 1, 'วิชาโท (3 หน่วยกิต)', 'Minor Courses', 3, 'วิชาที่นักศึกษาประสงค์จะเรียนเพิ่มเติมนอกเหนือจากสาขาเอก', 'A course that one prefers to study besides the major courses.', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

CREATE TABLE `course_category` (
  `id` int(11) NOT NULL,
  `name_th` varchar(50) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `abbr_th` varchar(10) NOT NULL,
  `abbr_en` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`id`, `name_th`, `name_en`, `abbr_th`, `abbr_en`) VALUES
(3, 'วิชาบังคับ', 'Required Courses', 'บังคับ', 'req'),
(1, 'วิชาศึกษาทั่วไป', 'General Education', 'ทั่วไป', 'GE'),
(2, 'วิชาเลือกเสรี', 'Free Elective', 'เสรี', 'FE'),
(6, 'วิชาเอกบังคับประจำแผน', 'Plan-specific Compulsory Courses', 'แผน', 'plan'),
(5, 'วิชาเอกบังคับร่วม', 'Compulsory Courses', 'เอกบังคับ', 'major req'),
(7, 'วิชาเอกเลือก ระดับ 300', 'Major Elective Courses (300)', '300', '300'),
(10, 'วิชาเอกเลือก ระดับ 400', 'Major Elective Courses (400)', '400', '400'),
(9, 'วิชาเอกเลือกสำหรับแผนก้าวหน้า', 'Major Elective Courses for Honors Plan', 'ก้าวหน้า', 'honor'),
(4, 'วิชาแกน', 'Core Courses', 'แกน', 'core'),
(8, 'วิชาโท', 'Minor Courses', 'โท', 'minor');

-- --------------------------------------------------------

--
-- Table structure for table `default_course_category`
--

CREATE TABLE `default_course_category` (
  `course_id` int(6) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `default_course_category`
--

INSERT INTO `default_course_category` (`course_id`, `category_id`) VALUES
(1101, 3),
(1102, 3),
(204111, 5);

-- --------------------------------------------------------

--
-- Table structure for table `default_course_plan`
--

CREATE TABLE `default_course_plan` (
  `course_id` int(6) NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `student_id` int(9) NOT NULL,
  `course_id` int(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `term` int(1) NOT NULL,
  `year` year(4) NOT NULL,
  `grade` enum('A','B+','B','C+','C','D+','D','F') NOT NULL,
  `grade_no` enum('4','3.5','3','2.5','2','1.5','1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `student_id`, `course_id`, `category_id`, `term`, `year`, `grade`, `grade_no`) VALUES
(1, 630510999, 229223, 9, 1, 2021, 'B+', '3.5'),
(2, 630510888, 229223, 9, 1, 2021, 'A', '4');

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
(18, 'คณะการสื่อสารมวลชน', 'Faculty of Mass Communication'),
(9, 'คณะทันตแพทยศาสตร์', 'Faculty of Dentistry'),
(20, 'คณะนิติศาสตร์', 'Faculty of Law'),
(15, 'คณะบริหารธุรกิจ', 'Chiang Mai University Business School'),
(12, 'คณะพยาบาลศาสตร์', 'Faculty of Nursing'),
(1, 'คณะมนุษยศาสตร์', 'Faculty of Humanities'),
(19, 'คณะรัฐศาสตร์และรัฐประศาสนศาสตร์', 'Faculty of Political Science and Public Administration'),
(3, 'คณะวิจิตรศิลป์', 'Faculty of Fine Arts'),
(5, 'คณะวิทยาศาสตร์', 'Faculty of Science'),
(6, 'คณะวิศวกรรมศาสตร์', 'Faculty of Engineering'),
(2, 'คณะศึกษาศาสตร์', 'Faculty of Education'),
(17, 'คณะสถาปัตยกรรมศาสตร์', 'Faculty of Architecture'),
(4, 'คณะสังคมศาสตร์', 'Faculty of Social Sciences'),
(14, 'คณะสัตวแพทยศาสตร์', 'Faculty of Veterinary Medicine'),
(13, 'คณะอุตสาหกรรมเกษตร', 'Faculty of Agro-Industry'),
(8, 'คณะเกษตรศาสตร์', 'Faculty of Agriculture'),
(11, 'คณะเทคนิคการแพทย์', 'Faculty of Associated Medical Sciences'),
(10, 'คณะเภสัชศาสตร์', 'Faculty of Pharmacy'),
(16, 'คณะเศรษฐศาสตร์', 'Faculty of Economics'),
(7, 'คณะแพทยศาสตร์', 'Faculty of Medicine'),
(22, 'วิทยาลัยนานาชาตินวัตกรรมดิจิทัล', 'International College of Digital Innovation'),
(21, 'วิทยาลัยศิลปะ สื่อและเทคโนโลยี', 'College of Art, Media and Technology');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `name_th` varchar(50) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `min_credit` int(3) NOT NULL,
  `is_for_all` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `program_id`, `name_th`, `name_en`, `min_credit`, `is_for_all`) VALUES
(1, 1, 'แผนปกติ', 'Regular Plan', 134, 0),
(2, 1, 'แผนสหกิจศึกษา', 'Co-operative Education Plan', 135, 0),
(3, 2, 'แผนปกติ', 'Regular Plan', 134, 0),
(4, 2, 'แผนสหกิจศึกษา', 'Co-operative Education Plan', 135, 0),
(5, 2, 'แผนก้าวหน้า', 'Honors Plan', 146, 0),
(6, 1, 'รวมทุกแผน', 'All Plans', 0, 1),
(7, 2, 'รวมทุกแผน', 'All Plans', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plan_requirement`
--

CREATE TABLE `plan_requirement` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `min_credit` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite`
--

CREATE TABLE `prerequisite` (
  `course_id` int(6) NOT NULL,
  `precourse_id` int(6) NOT NULL,
  `pregroup_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite_group`
--

CREATE TABLE `prerequisite_group` (
  `id` int(11) NOT NULL,
  `inclusion_type` enum('all','any') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite_inclusive`
--

CREATE TABLE `prerequisite_inclusive` (
  `course_id` int(6) NOT NULL,
  `inclusion_type` enum('all','any') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 2020, 2020, 'หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาวิทยาการคอมพิวเตอร์ (หลักสูตร พ.ศ. 2559 ฉบับปรับปรุง พ.ศ. 2563)', 'Bachelor of Science Program in Computer Science (หลักสูตร พ.ศ. 2559 ฉบับปรับปรุง พ.ศ. 2563)'),
(2, 2021, 2024, 'หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาวิทยาการคอมพิวเตอร์ (หลักสูตร พ.ศ. 2564)', 'Bachelor of Science Program in Computer Science (หลักสูตร พ.ศ. 2021)');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `user_id` char(36) NOT NULL,
  `student_id` int(9) NOT NULL COMMENT 'A 9-digit CMU student ID (e.g. 630510600)',
  `academic_year` int(4) NOT NULL COMMENT 'The year that this user legitimately became a CMU student.',
  `advisor_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`user_id`, `student_id`, `academic_year`, `advisor_id`) VALUES
('0e713193-0d1e-11ed-9a08-0242ac140004', 630510888, 2020, '72788988-0d1e-11ed-9a08-0242ac140004'),
('0e714a5b-0d1e-11ed-9a08-0242ac140004', 630510999, 2020, '72788988-0d1e-11ed-9a08-0242ac140004');

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
  `fname_en` varchar(50) NOT NULL COMMENT 'First name in English (optional)',
  `mname_en` varchar(50) DEFAULT NULL COMMENT 'Middle name in English (if any; optional)',
  `lname_en` varchar(50) NOT NULL COMMENT 'Last name in English (optional)'
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_th` (`name_th`,`name_en`,`abbr_th`,`abbr_en`);

--
-- Indexes for table `default_course_category`
--
ALTER TABLE `default_course_category`
  ADD KEY `category_id` (`category_id`),
  ADD KEY `course_id` (`course_id`) USING BTREE;

--
-- Indexes for table `default_course_plan`
--
ALTER TABLE `default_course_plan`
  ADD KEY `course_id` (`course_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollment_ibfk_1` (`student_id`),
  ADD KEY `enrollment_ibfk_2` (`course_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_th` (`name_th`,`name_en`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `plan_requirement`
--
ALTER TABLE `plan_requirement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `prerequisite`
--
ALTER TABLE `prerequisite`
  ADD KEY `pregroup_id` (`pregroup_id`),
  ADD KEY `precourse_id` (`precourse_id`),
  ADD KEY `course_id` (`course_id`) USING BTREE;

--
-- Indexes for table `prerequisite_group`
--
ALTER TABLE `prerequisite_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prerequisite_inclusive`
--
ALTER TABLE `prerequisite_inclusive`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `start_year` (`start_year`,`end_year`,`name_th`,`name_en`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`user_id`) USING BTREE,
  ADD UNIQUE KEY `student_id` (`student_id`) USING BTREE,
  ADD KEY `advisor_id` (`advisor_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_category`
--
ALTER TABLE `course_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plan_requirement`
--
ALTER TABLE `plan_requirement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `default_course_category`
--
ALTER TABLE `default_course_category`
  ADD CONSTRAINT `default_course_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `course_category` (`id`),
  ADD CONSTRAINT `default_course_category_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `default_course_plan`
--
ALTER TABLE `default_course_plan`
  ADD CONSTRAINT `default_course_plan_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `default_course_plan_ibfk_2` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `enrollment_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `course_category` (`id`);

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `program_id` FOREIGN KEY (`program_id`) REFERENCES `program` (`id`);

--
-- Constraints for table `plan_requirement`
--
ALTER TABLE `plan_requirement`
  ADD CONSTRAINT `plan_requirement_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`),
  ADD CONSTRAINT `plan_requirement_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `course_category` (`id`);

--
-- Constraints for table `prerequisite`
--
ALTER TABLE `prerequisite`
  ADD CONSTRAINT `prerequisite_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `prerequisite_ibfk_2` FOREIGN KEY (`pregroup_id`) REFERENCES `prerequisite_group` (`id`),
  ADD CONSTRAINT `prerequisite_ibfk_3` FOREIGN KEY (`precourse_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `prerequisite_inclusive`
--
ALTER TABLE `prerequisite_inclusive`
  ADD CONSTRAINT `prerequisite_inclusive_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

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
