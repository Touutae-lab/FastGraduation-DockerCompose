-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db:3306:3306
-- Generation Time: Oct 02, 2022 at 07:29 AM
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
(1201, 0, 'การอ่านเชิงวิเคราะห์และการเขียนอย่างมีประสิทธิผล', 'Critical Reading and Effective Writing', 3, 'ทักษะภาษาอังกฤษสำหรับการอ่านเชิงวิเคราะห์จากแหล่งข้อมูลและสื่อต่างๆ และการเขียนอย่างมีประสิทธิผล ในหัวข้อตามความสนใจของผู้เรียน', 'English language skills for critical reading from different sources and media and effective writing on topics of students’ interests.', 1, 1, 1),
(1225, 0, 'ภาษาอังกฤษในบริบทวิทยาศาสตร์และเทคโนโลยี', 'English in Science and Technology Context', 3, 'ทักษะ องค์ประกอบ และหน้าที่ของภาษาเฉพาะทาง เพื่อการสื่อสารอย่างมีประสิทธิภาพในบริบททางวิทยาศาสตร์และเทคโนโลยี', 'Specific language functions, components and skills for effective communication in science and technology contexts.', 0, 1, 0),
(13110, 0, 'จิตวิทยากับชีวิตประจำวัน', 'Psychology and Daily Life', 3, 'จิตวิทยากับชีวิตประจำวัน ปัจจัยด้านลักษณะส่วนบุคคล ปัจจัยด้านสัมพันธภาพระหว่างบุคคล ปัจจัยด้านสังคม', 'Psychology and daily life. Individual factors. Interpersonal factors. Social factors.', 1, 1, 1),
(50100, 0, 'การใช้ภาษาไทย', 'Usage of the Thai Language', 3, 'ศึกษาและฝึกทักษะการใช้ภาษาไทย', 'A study of the usage of the Thai Language and practice in writing.', 1, 1, 0),
(57121, 0, 'ฟุตบอลเพื่อชีวิตและการออกกำลังกาย', 'Football for Life and Exercise', 1, 'การออกกำลังกายเพื่อสุขภาพโดยการเล่นฟุตบอล การอบอุ่นร่างกายและคลายเย็นในกีฬาฟุตบอล การเล่นฟุตบอลในตำแหน่งต่างๆ การประยุกต์เล่นกีฬาฟุตบอลในรูปแบบต่างๆ กติกาทั่วไปในการเล่นกีฬาฟุตบอล การวิเคราะห์เกมการแข่งขันฟุตบอลและการเข้าร่วมทีมฟุตบอลในระดับต่างๆ ประโยชน์และมารยาทของการเป็นผู้เล่น และผู้ดูที่ดีในกีฬาฟุตบอล', 'The principles of exercise for health by playing Football. Warm up and cool down. Playing in each position and in different styles. Rules of playing Football. Analysis of Football matches and participation in competition at different levels. Benefits and etiquette for players and spectators.', 1, 1, 0),
(57122, 0, 'ว่ายน้ำเพื่อชีวิตและการออกกำลังกาย', 'Swimming for Life and Exercise', 1, 'การออกกำลังกายเพื่อสุขภาพโดยการว่ายน้ำ การอบอุ่นร่างกายในกีฬาว่ายน้ำ หลักการหายใจและการเคลื่อนไหวในน้ำ การใช้ส่วนต่างๆ ของร่างกายในการว่ายน้ำท่าต่างๆ การช่วยเหลือผู้ได้รับอันตรายต่างๆ จากการว่ายน้ำ การวิเคราะห์ท่าทางการว่ายน้ำ การว่ายน้ำเพื่อสุขภาพและการเข้าร่วมการแข่งขันว่ายน้ำในระดับต่างๆ ประโยชน์และมารยาทของการเป็นผู้เล่นและผู้ดูที่ดีในกีฬาว่ายน้ำ', 'The principles of exercise for health by Swimming. Warm up and cool down. Principles of breathing and movement under water. Using body physically to swim in each style. Helping others from dangers in swimming. Swimming for health and participation in competition at different levels. Benefits and etiquette for players and spectators.', 1, 1, 1),
(57123, 0, 'วอลเลย์บอลเพื่อชีวิตและการออกกำลังกาย', 'Volleyball for Life and Exercise', 1, 'การออกกำลังกายเพื่อสุขภาพโดยการเล่นวอลเลย์บอล การอบอุ่นร่างกายและคลายเย็นในกีฬาวอลเลย์บอล การเล่นวอลเลย์บอลในตำแหน่งต่างๆ การใช้อวัยวะส่วนต่างๆ ของร่างกายในการเล่นวอลเลย์บอล กติกาทั่วไปและการนับคะแนนในกีฬาวอลเลย์บอล การประยุกต์เล่นกีฬาวอลเลย์บอลในรูปแบบต่างๆ การวิเคราะห์เกมการแข่งขันวอลเลย์บอลและการเข้าร่วมแข่งขันวอลเลย์บอลในระดับต่างๆ ประโยชน์และมารยาทของการเป็นผู้เล่นและผู้ดูที่ดีในกีฬาวอลเลย์บอล', 'The principles of exercise for health by playing Volleyball. Warm up and cool down. How to play in each position and how to use parts of body to play Volleyball. Rules for playing and scoring in Volleyball. Playing Volleyball in different styles. Analysis of Volleyball matches and participation in Volleyball competition at different levels. Benefits and etiquette for players and spectators.', 1, 1, 0),
(57125, 0, 'กิจกรรมเข้าจังหวะเพื่อชีวิตและการออกกำลังกาย', 'Rhythmic Activities for Life and Exercise', 1, 'การออกกำลังกายเพื่อสุขภาพโดยการเล่นกิจกรรมเข้าจังหวะ การเคลื่อนไหวของร่างกายในลักษณะต่างๆ การเคลื่อนไหวของร่างกายให้เข้ากับจังหวะและเสียงดนตรี การเต้นรำพื้นเมืองของประเทศต่างๆ และการเต้นลีลาศในจังหวะต่างๆ มารยาทในการเข้าสังคมและมารยาทในการลีลาศ การวิเคราะห์ท่าทางการเต้นลีลาศจังหวะต่างๆ การร่วมงานลีลาศและการจัดงานลีลาศในรูปแบบต่างๆ', 'The principles of exercise for health through Rhythmic Activity. Body movements in different styles. Body movements with rhythm and music. Folk dances and social dances. Social manners and social dances etiquette. Analysis of social dances types. Participating in and organizing social dance parties.', 1, 1, 0),
(57126, 0, 'บาสเกตบอลเพื่อชีวิตและการออกกำลังกาย', 'Basketball for Life and Exercise', 1, 'การออกกำลังกายเพื่อสุขภาพโดยการเล่นบาสเกตบอล การอบอุ่นร่างกายและคลายเย็นในกีฬาบาสเกตบอล การเล่นบาสเกตบอลในตำแหน่งต่างๆ ความปลอดภัยในการเล่นกีฬาบาสเกตบอล กติกาการเล่นบาสเกตบอลทั่วไป การประยุกต์เล่นกีฬาบาสเกตบอลในรูปแบบต่างๆ การวิเคราะห์เกมการแข่งขันบาสเกตบอลและการเข้าร่วมแข่งขันบาสเกตบอลในระดับต่างๆ ประโยชน์และมารยาทของการเป็นผู้เล่นและผู้ดูที่ดีในกีฬาบาสเกตบอล', 'The principles of exercise for health by playing Basketball. Warm up and cool down. How to play in different positions, safety and regulations. Playing Basketball in different styles. Analysis of Basketball matches and participation in Basketball competition at different levels. Benefits and etiquette for players and spectators.', 1, 1, 0),
(57127, 0, 'แบดมินตันเพื่อชีวิตและการออกกำลังกาย', 'Badminton for Life and Exercise', 1, 'การออกกำลังกายเพื่อสุขภาพโดยการเล่นแบดมินตัน การอบอุ่นร่างกายและคลายเย็นในกีฬาแบดมินตัน การจับไม้และการเคลื่อนไหวของร่างกายเพื่อเข้าตีลูกแบดมินตันในลักษณะต่างๆ กติกาแบดมินตันทั่วไปและการนับคะแนนในกีฬาแบดมินตัน การประยุกต์เล่นกีฬาแบดมินตันในรูปแบบต่างๆ การวิเคราะห์เกมการแข่งขันแบดมินตันและการเข้าร่วมแข่งขันแบดมินตันในระดับต่างๆ ประโยชน์และมารยาทของการเป็นผู้เล่นและผู้ดูที่ดีในกีฬาแบดมินตัน', 'The principles of exercise for health by playing Badminton. Warm up and cool down. How to hold the racquet and body movements to hit the shuttlecock. Rules and scoring in Badminton. Playing Badminton in different styles. Analysis of Badminton matches and participation in Badminton competition at different levels. Benefits and etiquette for players and spectators.', 1, 1, 1),
(57128, 0, 'เทนนิสเพื่อชีวิตและการออกกำลังกาย', 'Tennis for Life and Exercise', 1, 'การออกกำลังกายเพื่อสุขภาพโดยการเล่นเทนนิส การอบอุ่นร่างกายและคลายเย็นในกีฬาเทนนิส การจับไม้และการเคลื่อนไหวของร่างกายเพื่อเข้าตีเทนนิสในลักษณะต่างๆ กติกาเทนนิสทั่วไปและการนับคะแนนในกีฬาเทนนิส การประยุกต์เล่นกีฬาเทนนิสในรูปแบบต่างๆ การวิเคราะห์เกมการแข่งขันเทนนิสและการเข้าร่วมการแข่งขันเทนนิสในระดับต่างๆ ประโยชน์และมารยาทของการเป็นผู้เล่นและผู้ดูที่ดีในกีฬาเทนนิส', 'The principles of exercise for health by playing Tennis. Warm up and cool down. How to hold the racquet and body movements to hit the tennis ball. Rules and scoring in Tennis. Playing Tennis in different styles. Analysis of Tennis matches and participation in Tennis competition at different levels. Benefits and etiquette for players and spectators.', 1, 1, 0),
(57129, 0, 'เทเบิลเทนนิสเพื่อชีวิตและการออกกำลังกาย', 'Table Tennis for Life and Exercise', 1, 'การออกกำลังกายเพื่อสุขภาพโดยการเล่นกีฬาเทเบิลเทนนิส การอบอุ่นร่างกายและคลายเย็นในกีฬาเทเบิลเทนนิส การจับไม้และการเคลื่อนไหวของร่างกายเพื่อเข้าตีลูกเทเบิลเทนนิสในลักษณะต่างๆ กติกาทั่วไปและการนับคะแนนในกีฬาเทเบิลเทนนิส การประยุกต์เล่นกีฬาเทเบิลเทนนิสในรูปแบบต่างๆ การวิเคราะห์เกมการแข่งขันเทเบิลเทนนิสและการเข้าร่วมแข่งขันเทเบิลเทนนิสในระดับต่างๆ ประโยชน์และมารยาทของการเป็นผู้เล่นและผู้ดูที่ดีในกีฬาเทเบิลเทนนิส', 'The principles of exercise for health by playing Table Tennis. Warm up and cool down. How to hold the racket and body movements to play Table Tennis. Rules and scoring in Table Tennis. Playing Table Tennis in different styles. Analysis of Table Tennis matches and participation in Table Tennis competition at different levels. Benefits and etiquette for players and spectators.', 1, 1, 1),
(57130, 0, 'กอล์ฟเพื่อชีวิตและการออกกำลังกาย', 'Golf for Life and Exercise', 1, 'การออกกำลังกายเพื่อสุขภาพโดยการเล่นกีฬากอล์ฟ การอบอุ่นร่างกายและคลายเย็นในกีฬากอล์ฟ การจับไม้ ท่าทางการตีลูกและการยืนในกีฬากอล์ฟในลักษณะต่างๆ กติกาการเล่นกอล์ฟทั่วไปและการนับคะแนนในกีฬากอล์ฟ การประยุกต์เล่นกีฬากอล์ฟในรูปแบบต่างๆ การวิเคราะห์ท่าทางในการตีกอล์ฟและการเข้าร่วมแข่งขันกอล์ฟในระดับต่างๆ ประโยชน์และมารยาทของการเป็นผู้เล่นและผู้ดูที่ดีในกีฬากอล์ฟ', 'The principles of exercise for health by playing Golf. Warm up and cool down. How to hold Golf club, stance and position in Golf. Rules and scoring in Golf. Playing Golf in different styles. Analysis of stance and position and participate in Golf competition at different levels. Benefits and etiquette for players and spectators.', 1, 1, 0),
(57131, 0, 'การออกกำลังกายและสุขภาพ', 'Exercise and Health', 2, 'ความสำคัญของการออกกำลังกายและสุขภาพ แนวทางในการออกกำลังกาย การออกแบบการออกกำลังกายเพื่อสุขภาพ การออกกำลังกายเพื่อสุขภาพ การประเมินผลการออกกำลังกายและภาวะสุขภาพ', 'The importance of exercise and health. Approach to exercise. Design of exercise for health. Exercise for health. Exercise and health status evaluation.', 1, 1, 1),
(57132, 0, 'ชีวิตมีสุขในค่ายพักแรม', 'Happy Life in Camping', 2, 'ความรู้ทั่วไปเกี่ยวกับค่ายพักแรม ปรัชญา และวัตถุประสงค์ของค่ายพักแรม ประเภทของค่ายพักแรม กิจกรรมต่างๆ ที่อาจเลือกจัดในค่ายพักแรม การศึกษาธรรมชาติ ป่าไม้ และการอนุรักษ์ การวางแผนจัดค่ายพักแรม การเป็นผู้นำค่ายพักแรม การประเมินผลค่ายพักแรม และฝึกปฏิบัติการจัดค่ายพักแรม', 'Introduction to camping, philosophy and objectives. Kinds of camping. Camping activities. Nature study, forest and conservation. Planning of camping management and camping leader. Camping evaluation and practice on camping activities.', 1, 1, 1),
(57133, 0, 'นันทนาการเพื่อคุณภาพชีวิต', 'Recreation for Quality of Life', 2, 'ความรู้ทั่วไปเกี่ยวกับนันทนาการและคุณภาพชีวิต ปรัชญา และวัตถุประสงค์ของนันทนาการ ประเภทของกิจกรรมนันทนาการ การเป็นผู้นำนันทนาการ การจัดนันทนาการเพื่อส่งเสริมคุณภาพชีวิต การประเมินผลนันทนาการ และฝึกปฏิบัติจัดนันทนาการ', 'Introduction to recreation and quality of life. Philosophy and objectives of recreation. Kinds of recreation activities and recreation leader. Recreation management for promoting quality of life. Recreation evaluation and recreation practice.', 1, 1, 1),
(57134, 0, 'ออกกำลังกายด้วยน้ำหนักเพื่อสร้างกล้ามเนื้อ', 'Muscle Building with Weight Training', 2, 'การออกกำลังกายด้วยน้ำหนักเพื่อสร้างกล้ามเนื้อ เครื่องมือ และเทคนิคการออกกำลังกายด้วยน้ำหนัก การจัดโปรแกรมการออกกำลังกายด้วยน้ำหนัก การออกกำลังกายด้วยน้ำหนัก และการประเมินการออกกำลังกายด้วยน้ำหนัก', 'Muscle building with weight training. Equipment and techniques of weight training. Weight training program management. Exercise with weight training and weight training evaluation.', 1, 1, 0),
(57135, 0, 'แอโรบิคเพื่อสุขภาพ', 'Aerobic Exercise for Health', 2, 'การออกกำลังกายและการออกกำลังกายแบบแอโรบิค ประโยชน์ของการออกกำลังกายแบบแอโรบิค การออกแบบการออกกำลังกายแบบแอโรบิคเพื่อสร้างสมรรถภาพทางกาย การประเมินการออกกำลังกายแบบแอโรบิค', 'Exercise and aerobic exercise. Benefits of aerobic exercise and design of aerobic exercise for physical fitness. Evaluation of aerobic exercise.', 1, 1, 0),
(57136, 0, 'กีฬา สุขภาพ สมรรถภาพ และการพัฒนาคุณภาพชีวิต', 'Sport, Health, Fitness and Wellness Development', 3, 'สุขภาพ หลักการดูกีฬา การเลือกกิจกรรมการออกกำลังกายที่เหมาะสมกับตนเองและการใช้ชีวิตประจำวัน การฝึกทักษะขั้นพื้นฐานทางการกีฬาและการสร้างเสริมสมรรถภาพทางกาย การเล่นกีฬาและการออกกำลังกาย รวมทั้งการดูแลตนเองเพื่อการมีสุขภาพที่ดีและการพัฒนาคุณภาพชีวิต', 'Health, principle of sports. Select of sport activities exercise for health and everyday living. Practice of basic skill of sports and building physical fitness. Playing sport and exercise. Self care for health and wellness development.', 1, 1, 1),
(57137, 0, 'กีฬาเพื่อสุขภาพ', 'Sports for Health', 3, 'กีฬาประเภททีม กีฬาประเภทบุคคล และกีฬาในร่ม เพื่อส่งเสริมการออกกำลังกาย สุขภาพกาย จิตใจ และสังคม (เลือกกีฬาประเภททีม 1 ประเภท กีฬาประเภทบุคคล 1 ประเภท และกีฬาในร่ม 1 ประเภท)', 'Team sports, individual sports and in-door sports to promote exercise, physical health, mental health and social health. (Select 1 team sport 1 individual sport and 1 in door sport)', 1, 1, 1),
(74100, 0, 'โภชนาการเพื่อการส่งเสริมสุขภาพ', 'Nutrition for Promotion of Health', 3, 'ความหมาย และความสำคัญของการส่งเสริมสุขภาพ และโภชนาการ ความต้องการอาหารของบุคคลวัยต่างๆ การวางแผนด้านโภชนาการ และการประเมินภาวะโภชนาการ การศึกษาบริโภคนิสัยของบุคคล และการวิเคราะห์ วิจารณ์ ภาวะที่เกิดจากการบริโภค', 'Meaning and importance of health promotion and nutrition. Food requirements at all stages of life. Planning of nutrition and evaluation of nutrition status. Study of consumer behavior. Analysis and synthesis of consumer status.', 1, 1, 0),
(109114, 0, 'ศิลปะในชีวิตประจำวัน', 'Art in Everyday Life', 3, 'การรับรู้เกี่ยวกับนิยามความหมาย รูปแบบ แนวคิด กระบวนการ และลักษณะเฉพาะของงานศิลปะต่างๆ วิธีการวิเคราะห์วิจารณ์ผลงาน ซึ่งสามารถนำไปประยุกต์ใช้ให้เป็นประโยชน์ต่อการดำเนินชีวิตประจำวัน', 'Perception of definitions, meanings, styles, concepts, processes and special characteristics of different kinds of art; methods of art-analysis and art-criticism which can be applied for the benefits of everyday life.', 0, 1, 0),
(140104, 0, 'การเป็นพลเมือง', 'Citizenship', 3, 'ความหมาย นิยาม และแนวคิดเกี่ยวกับการเป็นพลเมือง การสร้างความตระหนักถึงปัญหารอบตัว ทั้งในระดับท้องถิ่น ระดับประเทศ และระดับนานาชาติ การเป็นพลเมืองกับการเรียนรู้และการดำรงตนในพหุวัฒนธรรมและความหลากหลายทางสังคม การสร้างทัศนคติเชิงบวกเพื่อการแก้ไขปัญหาความขัดแย้งด้วยสันติวิธี การแสดงออกทางการเมืองในศตวรรษที่ 21', 'Meanings, definitions, and concepts involving citizenship. Creating awareness in surrounding problems at the local level, national level, and international level. Citizenship and learning, and existence in multicultural society and social diversity. Cultivation of positive attitude for peaceful conflict resolution. Political expression in the 21st century.', 1, 1, 1),
(176100, 0, 'กฎหมายและโลกสมัยใหม่', 'Law and Modern World', 3, 'แนวคิดทางกฎหมาย สถาบันทางกฎหมาย กฎหมายกับบทบาทในสังคม กฎหมายกับสังคมระหว่างประเทศ กฎหมายกับปัญหาท้องถิ่น และกฎหมายกับสิทธิชุมชน บทบาทของกฎหมายระดับท้องถิ่น ระดับสังคมเมือง และบทบาทของกฎหมายในยุคโลกาภิวัตน์ ศึกษาวิเคราะห์ปัญหาจากกรณีศึกษาต่างๆ เกี่ยวกับกฎหมายและโลกสมัยใหม่', 'Legal concepts. Legal Institutions. Law and its roles in society. Law and international societies. Law and local problems. Law and community rights. Roles of law in the rural and urban societies. Roles of law in the globalized era. Analyses of issues derived from case studies relating to law and modern world.', 1, 1, 0),
(201110, 0, 'คณิตศาสตร์บูรณาการ', 'Integrated Mathematical Sciences', 3, 'วิทยาการคอมพิวเตอร์ในชีวิตประจำวัน ประวัติของการคำนวณ อินเทอร์เน็ต สถิติในชีวิตประจำวัน สถิติกับการแก้ปัญหาในชีวิตประจำวัน ความน่าจะเป็นเพื่ออธิบายปรากฏการณ์ต่างๆ การจำลอง ตัวอย่างของแบบจำลองทางคณิตศาสตร์ การดำเนินการเมทริกซ์และการประยุกต์ การหาค่าเหมาะสมที่สุด การแทนข้อมูล ปัญญาประดิษฐ์และการเรียนรู้ของเครื่อง การเรียงลำดับและการค้นหา สถิติเพื่อการตัดสินใจ', 'Computer science in everyday life, history of computing, internet, statistics in everyday life, statistics for solving the problems in everyday life, probability for describing the phenomena, simulation, examples of mathematical models, matrix operations and its applications, optimization, data representation, artificial intelligence and machine learning, sorting and searching, statistics for decision making.', 1, 1, 0),
(201111, 0, 'โลกแห่งวิทยาศาสตร์', 'The World of Science', 3, 'บทนำ ความหมายของวิทยาศาสตร์ เทคโนโลยี และนวัตกรรม ประวัติของวิทยาศาสตร์ เทคโนโลยี และนวัตกรรม กระบวนการทางวิทยาศาสตร์ กิจกรรมกลุ่มเกี่ยวกับวิทยาศาสตร์และเทคโนโลยีในชีวิตประจำวัน วิทยาศาสตร์และเทคโนโลยีกับการพัฒนาประเทศ วิทยาศาสตร์และเทคโนโลยีกับเศรษฐกิจ วิทยาศาสตร์และเทคโนโลยีกับสังคม วิทยาศาสตร์และเทคโนโลยีกับสิ่งแวดล้อม วิทยาศาสตร์และเทคโนโลยีกับวัฒนธรรม วิทยาศาสตร์และเทคโนโลยีกับชุมชนท้องถิ่น วิทยาศาสตร์และเทคโนโลยีกับการเปลี่ยนแปลงสภาพภูมิอากาศ วิทยาศาสตร์และเทคโนโลยีกับการพัฒนาที่ยั่งยืน หรือหัวข้ออื่นๆ ตามความสนใจของนักศึกษา และการนำเสนอในห้องเรียน', 'Introduction, Meaning and history of science, technology and innovation, Scientific method, Group activities about science and technology in daily life, science and technology and country development, economy, society, environment, culture, local communities, climate change, sustainable development, or other topics depending on students’ interests, and class presentations.', 1, 1, 0),
(201114, 0, 'วิทยาศาสตร์สิ่งแวดล้อมในโลกปัจจุบัน', 'Environmental Science in Today’s World', 3, 'สิ่งแวดล้อมและผลกระทบจากกิจกรรมของมนุษย์ ความตระหนักเรื่องสิ่งแวดล้อมในเวทีนานาชาติ ความสำคัญของความหลากหลายทางชีวภาพ; การอนุรักษ์เพื่ออนาคต การใช้ทรัพยากร การเติบโตของประชากรและมลพิษ การแตกตัวของโอโซน ภาวะโลกร้อนและการเปลี่ยนแปลงสภาพภูมิอากาศ วิกฤติพลังงาน การพัฒนาอย่างยั่งยืนเพื่อรักษาสมดุลในการบริโภคทรัพยากรธรรมชาติและการทดแทน สถานการณ์สิ่งแวดล้อมปัจจุบัน', 'Environment and impacts from anthropogenic activities, Environmental concerns in international venues, Importance of biodiversity; conservation for the future, Resource use, Population growth and pollution, Ozone depletion, Global warming and climate change, Energy crisis, Sustainable development (balancing of natural resource consumption and replacement), and Current environmental issues.', 1, 1, 0),
(201190, 0, 'การคิดอย่างมีวิจารณญาณ การแก้ปัญหา และการสื่อสารทางวิทยาศาสตร์', 'Critical Thinking, Problem Solving and Science Communication', 3, 'การคิดอย่างมีวิจารณญาณ การแก้ปัญหาทางวิทยาศาสตร์และเทคโนโลยี การสื่อสารทางวิทยาศาสตร์และเทคโนโลยี', 'Critical thinking, problem solving in science and technology, communication in science and technology.', 1, 1, 0),
(201191, 0, 'การเรียนรู้ผ่านกิจกรรม', 'Learning Through Activities', 2, 'การเข้าร่วมกิจกรรมที่เกี่ยวข้องกับการพัฒนาคุณภาพนักศึกษา การเสริมทักษะและประสบการณ์ชีวิตต่างๆ ที่ถูกจัดขึ้นทั้งภายในและภายนอกมหาวิทยาลัย เป็นส่วนประกอบที่ดีที่ทำให้นักศึกษามีส่วนร่วมในช่วงเวลาของการศึกษาในมหาวิทยาลัย กิจกรรมต่างๆ เหล่านี้สามารถทำให้นักศึกษาประยุกต์ใช้การเรียนรู้จากกิจกรมต่างๆ ไปพัฒนาในด้านเกี่ยวกับการสร้างจิตสำนึกที่ดี ตระหนักในคุณค่าความเป็นมนุษย์ มีการพัฒนาบุคลิกภาพ เข้าใจการทำงานเป็นทีม มีคุณธรรม จริยธรรม สามารถนำไปใช้เป็นแบบอย่างในการดำรงชีพในอนาคตได้อย่างมีความสุขทั้งร่างกายและจิตใจ พร้อมทั้งมีจิตสาธารณะ สำนึกและรับผิดชอบต่อตนเอง และสังคม', 'Activities to promote skills/moral and ethical behaviors in addition to development of personality, art and culture, local wisdom, environmental preservation as well as community-based economy by students under supervision of advisors and/or joint supervision with the government or private organizations.', 1, 1, 1),
(201192, 0, 'ดอยสุเทพศึกษา', 'Doi Suthep Study', 1, 'ศึกษาดอยสุเทพใน 4 มิติ คือ มิติทางกายภาพ : ธรณีวิทยา มิติทางชีวภาพ : ระบบนิเวศ และความหลากหลายทางชีวภาพ มิติทางสังคมและวัฒนธรรม : ศาสนาและมานุษยวิทยา และมิติทางการอนุรักษ์ : พื้นที่อนุรักษ์ การฟื้นฟูป่าและการท่องเที่ยวเชิงนิเวศ ความสัมพันธ์ระหว่างดอยสุเทพกับมหาวิทยาลัยเชียงใหม่', 'Studying Doi Suthep in 4 aspects: physical - geology, biology, ecosystems and biodiversity; social and cultural - religion and anthropology; and conservation - conservation area, forest restoration, eco-tourism, and relationship between Doi Suthep and Chiang Mai University.', 0, 1, 0),
(201193, 0, 'การเรียนรู้ผ่านกิจกรรม 1', 'Learning Through Activities 1', 1, 'กิจกรรมพัฒนาคุณภาพนักศึกษา เพื่อสร้างจิตสำนึก คุณธรรมและจริยธรรม และพัฒนาบุคลิกภาพ ตลอดจนทักษะการทำงานเป็นทีม พร้อมทั้งมีจิตสาธารณะและมีความรับผิดชอบต่อตนเองและสังคม การให้ลำดับขั้นเป็นที่น่าพอใจ (Satisfactory : S) หรือไม่เป็นที่น่าพอใจ (Unsatisfactory : U)', 'Students’ developmental activities for promotion of moral, ethics and personality as well as teamwork skills with public awareness mindset, self- and social-responsibility. Grading will be given on satisfactory or unsatisfactory basis.', 1, 1, 0),
(201194, 0, 'การเรียนรู้ผ่านกิจกรรม 2', 'Learning Through Activities 2', 1, 'กิจกรรมพัฒนาคุณภาพนักศึกษาซึ่งนักศึกษาได้เป็นผู้จัดเอง เพื่อให้นักศึกษาได้มีคุณลักษณะของบัณฑิตที่พึงประสงค์ตามเจตนารมย์ของคณะ มีทักษะการเป็นพลเมืองโลก รวมถึงการตระหนักรู้ถึงเส้นทางอาชีพ การให้ลำดับขั้นเป็นที่น่าพอใจ (Satisfactory : S) หรือไม่เป็นที่น่าพอใจ (Unsatisfactory : U)', 'Self-organized students’ developmental activities for attaining expected graduates’ characters as delineated or outlined by the faculty, developing global citizen skills and realizing his/her career path. Grading will be given on satisfactory or unsatisfactory basis.', 1, 1, 0),
(202101, 0, 'ชีววิทยาพื้นฐาน 1', 'Basic Biology 1', 3, 'บทนำ ระเบียบวิธีการทางวิทยาศาสตร์ ลักษณะเฉพาะของสิ่งมีชีวิต การจัดระบบสิ่งมีชีวิต สารเคมีของสิ่งมีชีวิต เซลล์และเมแทบอลิซึม พันธุศาสตร์และอณูพันธุศาสตร์ กลไกของวิวัฒนาการ ความหลากหลายของสิ่งมีชีวิต โครงสร้างและหน้าที่ของพืช โครงสร้างและหน้าที่ของสัตว์ และนิเวศวิทยาและพฤติกรรม', 'Introduction, scientific methods, characteristics of life, biological level of organization, chemical of life, cell and metabolism, genetics and molecular genetics, mechanism of evolution, diversity of life, structure and function of plant, structure and function of animal and ecology and behavior.', 1, 1, 0),
(202103, 0, 'ปฏิบัติการชีววิทยา 1', 'Biology Laboratory 1', 1, 'กล้องจุลทรรศน์ โครงสร้างและหน้าที่ของเซลล์ การหายใจระดับเซลล์ การแบ่งเซลล์ พันธุศาสตร์ วิวัฒนาการและความหลากหลายของสิ่งมีชีวิต เนื้อเยื่อพืช เนื้อเยื่อสัตว์ พฤติกรรม และนิเวศวิทยาประชากร', 'Microscope, cell structure and functions, cellular respiration, cell divisions, genetics, evolution and biological diversity, plant tissues, animal tissues, behavior and population ecology.', 1, 1, 0),
(203103, 0, 'เคมีทั่วไป 1', 'General Chemistry 1', 3, 'ปริมาณสัมพันธ์ แก๊ส ของเหลวและของแข็ง เคมีเทอร์โมไดนามิกส์ ไฟฟ้าเคมี สมดุลเคมี โครงสร้างอะตอมและตารางธาตุ และพันธะเคมี', 'Stoichiometry, gases, liquids and solids, chemical thermodynamics, electrochemistry, chemical equilibrium, atomic structures and periodic table and chemical bonding.', 1, 1, 0),
(203111, 0, 'เคมี 1', 'Chemistry 1', 3, 'บทนำและปริมาณสัมพันธ์ทางเคมี โครงสร้างอะตอม พันธะเคมีในสารประกอบประเภทต่าง ๆ สมดุลเคมี อุณหพลศาสตร์เชิงเคมี ไฟฟ้าเคมี สารละลายและคอลลอยด์ กรด-เบส และจลนศาสตร์เชิงเคมี', 'Introduction and chemical stoichiometry, atomic structures, chemical bonding in various compounds, chemical equilibrium, chemical thermodynamics, electrochemistry, solutions and colloids, acid-bases and chemical kinetics.', 1, 1, 1),
(203115, 0, 'ปฏิบัติการเคมี 1', 'Chemistry Laboratory 1', 1, 'เทคนิคต่าง ๆ ในปฏิบัติการเคมี ปฏิกิริยาของทองแดง สารกำหนดปริมาณ:การสังเคราะห์แคลเซียม ออกซาเลต การสังเคราะห์โพแทสเซียมอะลัมจากอะลูมิเนียมฟอยล์ พันธะเคมีและโครงสร้างโมเลกุล สมดุลเคมี เอนทัลปีของปฏิกิริยา เซลล์กัลวานิกและเซลล์ความเข้มข้น อิเล็กโทรลิซิส การหามวลโมเลกุลโดยอาศัยหลักการลดลงของจุดเยือกแข็ง สมดุลกรดเบสและบัฟเฟอร์ กราฟการไทเทรตระหว่างกรด–เบส การไทเทรตระหว่างกรด–เบส การหาอัตราการเกิดปฏิกิริยาเคมี: ไอโอดิเนชันของแอซีโตน และการทดลองพิเศษ', 'Chemistry laboratory techniques, reactions of copper, limiting agent: synthesis of calcium oxalate, synthesis of potassium alum from aluminum foils, chemical bonds and molecular structure, chemical equilibria, enthalpy of reactions, galvanic and concentration cells, electrolysis, determination of molar weight by freezing point depression, acid-base equilibria and buffers, titration curves of acid-base, acid-base titration, determination of rate of reaction: iodination of acetone and special experiments.', 1, 0, 0),
(204100, 0, 'เทคโนโลยีสารสนเทศและชีวิตสมัยใหม่', 'Information Technology and Modern Life', 3, 'คอมพิวเตอร์กับการใช้งานในชีวิตประจำวัน เครือข่ายคอมพิวเตอร์และอินเทอร์เน็ต องค์ประกอบสำคัญของการออนไลน์ การทำงานร่วมกันแบบออนไลน์ ซอฟต์แวร์ช่วยเพิ่มประสิทธิผลในสำนักงานสำหรับชีวิตสมัยใหม่ ความปลอดภัยทางเทคโนโลยีสารสนเทศ การรู้สารสนเทศ', 'Computer in everyday life, computer network and internet, online essentials, online collaboration, office productivity software for modern life, information technology security, information literacy.', 1, 1, 0),
(204111, 0, 'การเขียนโปรแกรมเบื้องต้น', 'Fundamentals of Programming', 3, 'วิทยาการคอมพิวเตอร์ในชีวิตประจำวัน การแปลภาษา ระบบเลขฐานสอง อัลกอริทึมและการออกแบบ แนวคิดการเขียนโปรแกรมพื้นฐาน ระบบชนิดข้อมูลพื้นฐาน โครงสร้างข้อมูลพื้นฐาน โครงสร้างข้อมูลพื้นฐานและอัลกอริทึม และวิธีการพัฒนาโปรแกรม', 'Computer science in daily life, language translation, binary system, algorithm and designs, fundamental programming concepts, basic type system, fundamental data structure, fundamental data structure and algorithms, and development methods.', 1, 0, 0),
(204113, 0, 'หลักการคอมพิวเตอร์', 'Principles of Computing', 3, 'ประวัติของการคำนวณอย่างย่อ การคำนวณโดยการทำซ้ำ การคิดแบบเวียนบังเกิด การจัดระเบียบข้อมูล การแทนข้อมูล การจัดระเบียบคอมพิวเตอร์ ความสุ่มในการคำนวณ การจำลอง หลักพื้นฐานอินเทอร์เน็ตและอินเทอร์เน็ตของสิ่งต่างๆ ภาวะความพร้อมกัน ปัญญาประดิษฐ์ และภาวะคำนวณได้: ข้อจำกัดของการคำนวณ', 'A brief history of computation, computation using iteration, recursive thinking, data organization, data representation, computer organization, randomness in computation, simulations, Internet fundamentals and Internet of things, concurrency, artificial intelligence and computability: the limits of computation.', 0, 1, 0),
(204114, 0, 'การเขียนโปรแกรมเชิงวัตถุเบื้องต้น', 'Introduction to Object-oriented Programming', 3, 'หลักการเขียนโปรแกรมเชิงวัตถุ โครงสร้างการเขียนโปรแกรมพื้นฐาน คลาสและวัตถุ เมท็อด ความสัมพันธ์ระหว่างคลาส การทดสอบโปรแกรมเชิงวัตถุ การรับทอดและการนำกลับมาใช้ พหุลักษณ์ การเขียนโปรแกรมแบบทั่วไป การประกอบและการรวมกลุ่ม  ความสัมพันธ์  และการจัดสร้างความสัมพันธ์ของคลาส', 'Principle of object-oriented programming, fundamental programming structures, classes and objects, methods, relationship among classes, test of object-oriented programs, inheritance and reuse, polymorphism, generic programming, composition and aggregation, association and implementation of class relationships.', 0, 1, 0),
(204203, 0, 'เทคโนโลยีด้านวิทยาการคอมพิวเตอร์', 'Computer Science Technology', 3, 'หลักการจัดเก็บข้อมูลในคอมพิวเตอร์ คอนโทรลเลอร์และเซนเซอร์ หลักการของอินเทอร์เน็ตและความปลอดภัยในระบบไซเบอร์ และการวิเคราะห์ข้อมูลขนาดใหญ่', 'Principle of data allocation in computer, controller and sensor, principle of internet and cybersecurity and big data analysis.', 1, 0, 0),
(204211, 0, 'การเขียนโปรแกรมเชิงวัตถุ', 'Object-Oriented Programming', 3, 'การพัฒนาโปรแกรมเชิงวัตถุ คลาสและวัตถุ เมท็อด การจัดการหน่วยเก็บข้อมูลสำหรับวัตถุ ความสัมพันธ์ระหว่างคลาส การรับทอดและการนำกลับมาใช้ พหุลักษณ์และคลาสทั่วไป การประกอบและการรวมกลุ่ม ความสัมพันธ์ และการจัดสร้างความสัมพันธ์ของคลาส', 'Object-oriented program development, classes and objects, methods, storage management for objects, relationship among classes, inheritance and reuse, polymorphism and generic classes, composition and aggregation, association and implementation of class relationships.', 1, 0, 0),
(204212, 0, 'การพัฒนาแอปพลิเคชันสมัยใหม่', 'Modern Application Development', 3, 'สถาปัตยกรรมเว็บแอปพลิเคชัน เครื่องมือในการพัฒนาเว็บ เฟรมเวิร์กส่วนหน้าในการจัดการประสานกับผู้ใช้งานเว็บ การพัฒนาเว็บส่วนหน้า การพัฒนาเว็บส่วนหลัง ส่วนต่อประสานโปรแกรมประยุกต์ (เอพีไอ) การพัฒนาโมบายแอปพลิเคชันแบบมัลติแพลตฟอร์ม', 'Web application architecture, web development tools, front-end web user interface framework, front-end web development, back-end web development, Application Program Interface (API) and multiplatform mobile application development.', 0, 1, 0),
(204231, 0, 'การจัดระบบและสถาปัตยกรรมคอมพิวเตอร์', 'Computer Organization and Architecture', 3, 'วงจรตรรกะดิจิทัล องค์ประกอบดิจิทัล การแทนข้อมูล การถ่ายโอนเรจิสเตอร์และการดำเนินการไมโคร การจัดระบบและออกแบบคอมพิวเตอร์เบื้องต้น การควบคุมไมโครโปรแกรม หน่วยประมวลผลกลาง การคำนวณคอมพิวเตอร์ การจัดระบบรับเข้าส่งออก การจัดการหน่วยความจำ และการโปรแกรมระบบด้วยภาษาแอสเซมบลี', 'Digital logic circuits, digital components, data representation, register transfer and microoperations, basic computer organization and design, microprogrammed control, central processing unit, computer arithmetic, input-output organization, memory organization, and system programming with Assembly language.', 1, 0, 0),
(204232, 0, 'เครือข่ายคอมพิวเตอร์และเกณฑ์วิธี', 'Computer Networks and Protocols', 3, 'เครือข่ายคอมพิวเตอร์เบื้องต้น เกณฑ์วิธีชั้นโปรแกรมประยุกต์ เกณฑ์วิธีชั้นสื่อสารนำส่งข้อมูล เกณฑ์วิธีชั้นเครือข่าย เกณฑ์วิธีชั้นสื่อสารเชื่อมต่อ เครือข่ายเคลื่อนที่และไร้สาย และความปลอดภัยของเครือข่ายและการควบคุมการเข้าถึง', 'Basic computer networks, application layer protocols, transport layer protocols, network layer protocols, link layer protocols, wireless and mobile network and network security and access control.', 0, 1, 0),
(204251, 0, 'โครงสร้างข้อมูล', 'Data Structures', 3, 'การแก้ปัญหาและแนวคิดเชิงนามธรรม ลิสต์เชิงเส้น กองซ้อน คิว คิวแบบมีลำดับความสำคัญ เซต การส่งและแฮชชิง การเรียงลำดับ ต้นไม้ และกราฟ', 'Problem solving and concept of abstraction, linear lists, stacks, queues, priority queues, sets, maps and hashing, sorting, trees, and graphs.', 1, 1, 0),
(204252, 0, 'โครงสร้างข้อมูลและการวิเคราะห์', 'Data Structures and Analysis', 3, 'การแก้ปัญหาและแนวคิดเชิงนามธรรม การวิเคราะห์อัลกอริทึม ลิสต์เชิงเส้น กองซ้อน คิว คิวแบบมีลำดับความสำคัญ เซต การส่งและแฮชชิง การเรียงลำดับ ต้นไม้ และกราฟ', 'Problem solving and concept of abstraction, analysis of algorithms, linear lists, stacks, queues, priority queues, sets, maps and hashing, sorting, trees, and graphs.', 1, 0, 0),
(204271, 0, 'ปัญญาประดิษฐ์เบื้องต้น', 'Introduction to Artificial Intelligence', 3, 'บทนำสู่ปัญญาประดิษฐ์ การค้นหาและการวางแผน การแทนความรู้และการใช้เหตุผล การประมวลผลภาษาธรรมชาติ การประมวลผลภาพ การเรียนรู้เครื่อง และข้อคำนึงทางจริยธรรมและกฎหมาย', 'Introduction to Artificial Intelligence (AI), search and planning, knowledge representation and reasoning, Natural Language Processing (NLP), image processing, Machine Learning (ML), ethical and legal considerations.', 0, 1, 0),
(204306, 0, 'จริยธรรมสำหรับผู้ประกอบวิชาชีพคอมพิวเตอร์', 'Ethics for Computer Professionals', 1, 'แนวคิดจริยธรรมคอมพิวเตอร์ จริยธรรมวิชาชีพคอมพิวเตอร์และสารสนเทศ สิทธิทางทรัพย์สินและลิขสิทธิ์ในยุคสารสนเทศ ความเป็นส่วนตัวและนโยบายสาธารณะ อาชญากรรมผ่านสื่อทางคอมพิวเตอร์ และกฎหมายคอมพิวเตอร์และสารสนเทศ', 'Concepts of computer ethics, computer and information professional ethics, property rights and copyright in the information age, privacy and public policy, computer-mediated crime and computer and information laws.', 0, 1, 0),
(204311, 0, 'เฟรมเวิร์คการพัฒนาโมบายแอปพลิเคชัน', 'Mobile Application Development Frameworks', 3, 'ลักษณะเฉพาะของโมบายแอปพลิเคชัน วิวัฒนาการของโมบายแอปพลิเคชันเฟรมเวิร์ค เครื่องมือสำหรับการพัฒนาโมบายแอปพลิเคชัน โมบายแอปพลิชันเฟรมเวิร์คและลำดับการควบคุม การวิเคราะห์ความต้องการโมบายแอปพลิเคชัน การสร้างโมบายแอปพลิเคชันโดยใช้เฟรมเวิร์ค วิธีการทดสอบโมบายแอปพลิเคชัน การนำไปใช้และการบำรุงรักษา', 'Characteristics of mobile applications, evolution of mobile application frameworks, mobile application development tools, mobile application frameworks and control flow, analyzing mobile application requirements, creating mobile applications using frameworks, testing methodologies for mobile applications, deployment and maintenance', 1, 1, 0),
(204312, 0, 'การออกแบบการจำลองและประสบการณ์เสมือนจริง', 'Simulation and Experience Reality Design', 3, 'แนวคิดพื้นฐานของการจำลองและประสบการณ์เสมือนจริง แนะนำระบบโต้ตอบจำลองสามมิติ การสร้างต้นแบบโลกของความเป็นจริงเสมือน การสร้างต้นแบบวัตถุแบบความเป็นจริงเสริม กรณีศึกษาและการสาธิต อนาคตของการประยุกต์การจำลองและประสบการณ์เสมือนจริง', 'Basic concept in simulation and experience reality design, introduction to 3D simulation interactive system, prototyping virtual reality (VR) worlds, prototyping augmented reality (AR) object, case study and demonstration, the future of simulation and experience reality application', 1, 1, 0),
(204315, 0, 'การจัดระเบียบของภาษาโปรแกรม', 'Organization of Programming Languages', 3, 'แนะนำภาษาโปรแกรม ตัวประมวลผลภาษาโปรแกรม การอธิบายเกี่ยวกับวากยสัมพันธ์และความหมาย ชนิดข้อมูลนามธรรม ชนิดข้อมูลพื้นฐาน ชนิดข้อมูลโครงสร้าง คุณลักษณะของภาษาโปรแกรม และกระบวนทัศน์ของภาษาโปรแกรม', 'Introduction to programming languages, programming languages processor, describing syntax and semantics, abstract data types, elementary data types, structure data types, feature of programming language and programming language paradigms.', 0, 1, 0),
(204321, 0, 'ระบบฐานข้อมูล', 'Database Systems', 3, 'บทนำสู่ระบบฐานข้อมูล แนวคิดระบบฐานข้อมูลและสถาปัตยกรรม แบบจำลองข้อมูลโดยใช้แบบจำลองข้อมูลเชิงสัมพันธ์ ฐานข้อมูลเชิงสัมพันธ์ ฐานข้อมูลเชิงวัตถุ ฐานข้อมูลโนเอสคิวแอล ฐานข้อมูลเอ็กซ์เอ็มแอล', 'Introduction to database system, database system concepts and architectures, data modeling using relational data model, relational database, object-oriented database, NoSQL database, and XML database.', 1, 1, 0),
(204325, 0, 'การวิเคราะห์ระบบงานและการออกแบบงาน', 'System Analysis and Design', 3, 'แนวคิดของระบบและการจัดการโครงการ วัฏจักรการพัฒนาระบบและการวิเคราะห์เชิงโครงสร้าง การวิเคราะห์ความต้องการด้วยเทคนิคยูสเคส การสร้างแบบจำลองความต้องการ การออกแบบระบบ และการทำให้ระบบสำเร็จและการทำเอกสาร', 'System concepts and project management, system development life cycle and structural analysis, requirement analysis with use case technique, requirement modeling, system design, and system implementation and documentation.', 1, 1, 0),
(204331, 0, 'การสื่อสารข้อมูล และเครือข่ายคอมพิวเตอร์', 'Data Communication and Computer Networks', 3, 'ความรู้เบื้องต้นเกี่ยวกับการสื่อสารข้อมูลแบบดิจิทัล แบบจำลองการเชื่อมตัวระหว่างระบบเปิด (โอเอสไอ) เครือข่ายคอมพิวเตอร์ อุปกรณ์การสื่อสารข้อมูลพื้นฐาน ข่ายงานบริเวณเฉพาะที่ (แลน) ข่ายงานบริเวณกว้าง (แวน)', 'Introduction to digital data communication, Open System Interconnection Model, computer network, basic data communication equipments, Local Area Network (LAN), Wide Area Network (WAN).', 1, 1, 0),
(204333, 0, 'สถาปัตยกรรมเว็บแอปพลิเคชัน', 'Web Application Architecture', 3, 'สถาปัตยกรรมเว็บ รูปแบบต่าง ๆ ของสถาปัตยกรรม ฐานข้อมูลและการเก็บข้อมูล ภาวะปรับขนาดได้ ระบบแบบพร้อมใช้งานสูง การกระจายงานและการเก็บแคช คิวข้อความ การประมวลผลข้อมูลแบบสตรีม', 'Web architecture, architectural patterns, database and storage, scalability, high availability system, load balancing and caching, message queue, stream processing', 1, 1, 0),
(204335, 0, 'ไมโครคอนโทรลเลอร์และอินเทอร์เน็ตของสรรพสิ่ง', 'Microcontroller and Internet of Things', 3, 'แนะนำเกี่ยวกับไมโครคอนโทรลเลอร์เบื้องต้น การนำเข้าและส่งออกแบบดิจิทัล การนำเข้าและส่งออกแบบอะแนล็อก ทรานซิสเตอร์และมอเตอร์ขับเคลื่อน ส่วนต่อประสานของการติดต่อสื่อสาร การต่อประสานกับจอภาพ การต่อประสานระหว่างบอร์ดไมโครคอนโทรลเลอร์ เทคโนโลยีอินเทอร์เน็ตของสรรพสิ่ง', 'Introduction to basic microcontroller, digital inputs and outputs, analog inputs and outputs, transistors and driving motors, communication interfaces, interfacing with displays, interfacing between microcontroller boards, Internet of things technology.', 1, 1, 0),
(204341, 0, 'ระบบปฏิบัติการ', 'Operating Systems', 3, 'แนะนำระบบปฏิบัติการ โครงสร้างของระบบปฏิบัติการ โพรเซส การจัดลำดับของหน่วยประมวลผลกลาง การเข้าจังหวะโพรเซส สภาวะติดตาย การจัดการหน่วยความจำ หน่วยความจำเสมือน ระบบปฏิบัติการแบบกระจาย และกรณีศึกษา', 'Introduction to operating systems, operating systems structure, process, CPU scheduling, process synchronization, deadlock, memory management, virtual memory, distributed operating systems and case study.', 1, 0, 0),
(204355, 0, 'การเขียนโปรแกรมเชิงแข่งขัน', 'Competitive Programming', 3, 'บทนำเกี่ยวกับการเขียนโปรแกรมเชิงแข่งขัน โครงสร้างข้อมูลขั้นสูง ชุดปัญหาด้านคณิตศาสตร์ ชุดปัญหาด้านกำหนดการพลวัต ชุดปัญหาด้านเกมเชิงการจัด ชุดปัญหาด้านกราฟ ชุดปัญหาด้านเครือข่ายการไหล ชุดปัญหาด้านสายอักขระ  ชุดปัญหาด้านเรขาคณิต', 'Introduction to competitive programming, advanced data structures, problem set: mathematics, problem set: dynamic programming, problem set: combinatorial game, problem set: graph, problem set: flow network, problem set: string, problem set: geometry', 1, 1, 0),
(204361, 0, 'วิศวกรรมซอฟต์แวร์', 'Software Engineering', 3, 'บทนำเกี่ยวกับวิศวกรรมซอฟต์แวร์ ตัวแบบของกระบวนการซอฟต์แวร์ เครื่องมือและสภาพแวดล้อมเชิงซอฟต์แวร์ การประกันคุณภาพเชิงซอฟต์แวร์ การจัดระเบียบและการวางแผนโครงการ ความต้องการและการระบุข้อกำหนดความต้องการซอฟต์แวร์ เทคนิคการออกแบบซอฟต์แวร์ การสร้างซอฟต์แวร์ การตรวจสอบและการทวนสอบซอฟต์แวร์ และวิวัฒนาการเชิงซอฟต์แวร์', 'Introduction to software engineering, models of software process, software tools and environments, software quality assurance, project planning and organization, software requirements and specification, software design techniques, software construction, software validation and verification and software evolution.', 1, 0, 0),
(204362, 0, 'การออกแบบเชิงวัตถุ', 'Object-oriented Design', 3, 'แนวคิดเชิงวัตถุ วัฏจักรการพัฒนาซอฟต์แวร์เชิงวัตถุ การรวบรวมความต้องการ แนวคิดการสร้างแบบจำลอง แผนภาพการไหลของธุรกิจ แบบจำลองยูสเคส ข้อกำหนดยูสเคส แผนภาพการปฏิสัมพันธ์ของวัตถุตามกรอบงานเอ็มวีซี การสกัดคลาส การออกแบบฐานข้อมูล การทดสอบเชิงวัตถุ และการนำซอฟต์แวร์ขึ้นใช้งาน', 'Object-oriented concept, object-oriented software development life cycle, requirements capture, modeling concept, business flow diagram, use case model, use case specification, object interaction diagram base on MVC framework, class extraction, database design, object-oriented testing, and software deployment.', 0, 1, 0),
(204363, 0, 'ความต้องการและการสร้างตัวแบบซอฟต์แวร์', 'Software Modeling and Requirements', 3, 'การสร้างตัวแบบระบบและการพัฒนา วัฏจักรการพัฒนาซอฟต์แวร์ ภาษาสร้างตัวแบบซอฟต์แวร์ การติดตามและการวางแผนโครงการซอฟต์แวร์เครื่องมือวิศวกรรมซอฟต์แวร์การเก็บรวบรวมความต้องการ การวิเคราะห์ความต้องการ การระบุข้อกำหนดความต้องการและการจัดทำเอกสารความต้องการ การตรวจสอบความต้องการ การแปลงความต้องการเป็นการออกแบบเชิงสถาปัตยกรรม', 'System modeling and development, software development life cycle, software modeling language, software project planning and tracking, software engineering tools, eliciting requirements, requirements analysis, requirements specification and documentation, requirements validation, transformation of requirements to architectural design.', 1, 1, 0),
(204364, 0, 'การออกแบบและสร้างซอฟต์แวร์', 'Software Design and Implementation', 3, 'แนวคิดการออกแบบ กลยุทธ์การออกแบบ การออกแบบเชิงสถาปัตยกรรม การออกแบบส่วนต่อประสานผู้ใช้ การออกแบบอย่างละเอียด สัญกรณ์การออกแบบและเครื่องมือสนับสนุน การสร้างโปรแกรม การทวนสอบและตรวจสอบซอฟต์แวร์ วิวัฒนาการซอฟต์แวร์ มาตรฐานคุณภาพซอฟต์แวร์และกระบวนการ', 'Design concepts, design strategies, architectural design, user interface design, detailed design, design notations and support tools, program implementation, software verification and validation, software evolution, software quality standards and processes.', 1, 1, 0),
(204365, 0, 'ปฏิสัมพันธ์ระหว่างมนุษย์และคอมพิวเตอร์', 'Human-computer Interaction', 3, 'ภาพรวมการปฏิสัมพันธ์ระหว่างมนุษย์และคอมพิวเตอร์ ความสามารถและพฤติกรรมของมนุษย์ คอมพิวเตอร์และอุปกรณ์ที่เกี่ยวข้องในการนำข้อมูลเข้าและออก แบบจำลองการปฏิสัมพันธ์ระหว่างมนุษย์และคอมพิวเตอร์ การใช้งานได้ของระบบเชิงโต้ตอบ เทคนิคและเทคโนโลยีส่วนต่อประสาน กระบวนการออกแบบการปฏิสัมพันธ์ เทคนิคการประเมินผล', 'Overview of human-computer interaction, human capabilities and behaviors, computer and associated input-output devices, models of interaction between human and computer, usability of interactive systems, interface techniques and technologies, process of interaction design and evaluation techniques.', 1, 1, 0),
(204381, 0, 'การคำนวณเชิงตัวเลขและซอฟต์แวร์', 'Numerical Computation and Software', 3, 'บทนำสู่การคำนวณเชิงตัวเลข ระบบสมการเชิงเส้นและการสร้างชุดคำสั่ง การประมาณค่าฟังก์ชั่นแบบอินเทอร์โปเลทและการสร้างชุดคำสั่ง กฎการคำนวณควอดเดรเจอร์เชิงตัวเลขและการสร้างชุดคำสั่ง การหาอนุพันธ์เชิงตัวเลขและการสร้างชุดคำสั่ง การประมาณค่าฟังก์ชันแบบเชิงเส้นโดยวิธีกำลังสองน้อยที่สุดและการสร้างชุดคำสั่ง การหาคำตอบของสมการไม่เชิงเส้นและการสร้างชุดคำสั่ง', 'Introduction to numerical computation, linear system of equations and program implementation, interpolations and program implementation, numerical quadrature and program implementation, numerical differentiation and program implementation, linear least squares data fitting and program implementation, solution of nonlinear equations and program implementation.', 1, 1, 0),
(204382, 0, 'คอมพิวเตอร์กราฟิก', 'Computer Graphics', 3, 'แนะนำคอมพิวเตอร์กราฟิก อุปกรณ์การแสดงผล เทคนิคการสร้างภาพเรขาคณิต หน้าต่างและวิวพอร์ต การแปลง การระบาย หน้าต่างและการตัดรูปในกรอบ ส่วนของภาพ เส้นโค้ง แนะนำรูปสามมิติ การแปลงในสามมิติ การประยุกต์ใช้งานคอมพิวเตอร์กราฟิก', 'Introduction to computer graphics, video display device, geometric modeling technique, window and viewport, transformation, filling, windowing and clipping, segment, curve, introduction to three-dimensional objects. three-dimensional transformation and computer graphic applications.', 1, 1, 0),
(204383, 0, 'การประมวลผลภาพ', 'Image Processing', 3, 'การมองเห็นภาพ การแสวงหาภาพ การเก็บตัวอย่างภาพและควอนติเซชัน การแปลงภาพ การแทนภาพ การปรับปรุงภาพให้ดีขึ้น การแบ่งย่อยภาพ การสร้างภาพขึ้นมาใหม่ การบีบอัดข้อมูลภาพ', 'Image perception, image acquisition, image sampling and quantization, image transformation, image representation, image enhancement, image segmentation, image reconstruction, image data compression.', 1, 1, 0),
(204390, 0, 'การฝึกงานคอมพิวเตอร์', 'Computer Job Training', 1, 'นักศึกษาจำเป็นต้องฝึกงานในหน่วยงานที่เกี่ยวข้องกับคอมพิวเตอร์เป็นระยะเวลา 2 เดือน พร้อมกับเขียนรายงานและเสนอผลการฝึกงานเมื่อเสร็จสิ้นการฝึกงาน การวัดผลของกระบวนวิชานี้จะผ่านการประเมินเป็นลำดับขั้น S หรือ U', 'Students are required to work in computer related in the organization for two months. After a completion of the training, a proper written report and oral presentation are required.  Grading will be given on satisfactory or unsatisfactory basis.', 1, 0, 0),
(204421, 0, 'ระบบฐานข้อมูล 2', 'Database System 2', 3, 'ภาพรวมของรูปแบบจำลองฐานข้อมูล การออกแบบฐานข้อมูล การประมวลผลคำถาม การประมวลผลการทำรายการ การควบคุมการทำงานแบบภาวะพร้อมกัน การบริหารฐานข้อมูล ฐานข้อมูลแบบกระจาย การพัฒนาและการประยุกต์ใช้ในปัจจุบัน', 'Overview of database models. Database design. Query processing. Transaction processing. Concurrency control. Database administration. Distributed databases. Recent development and applications.', 1, 1, 0),
(204422, 0, 'คลังข้อมูล', 'Data Warehousing', 3, 'คลังข้อมูลเบื้องต้น สถาปัตยกรรมคลังข้อมูล การออกแบบคลังข้อมูล กระบวนการสกัด การทำความสะอาด การแปลง และการบรรจุข้อมูล การสร้างตัวแบบข้อมูลแบบหลายมิติ การประมวลผลเชิงวิเคราะห์แบบออนไลน์ (โอแล็ป) การวิเคราะห์คลังข้อมูลด้วยเทคนิคเหมืองข้อมูล การจัดการเมตาดาตาของคลัง การจัดการการเปลี่ยนแปลงของคลังข้อมูล การบูรณาการสารสนเทศ การประยุกต์คลังข้อมูลและการพัฒนา', 'Introduction to data warehousing, data warehouse architecture, data warehouse design, data extraction, cleansing, transformation and loading, multidimensional data modeling, Online Analytical Processing (OLAP), data warehouse analytical processing with data mining techniques, managing warehouse metadata, handling changes of data warehouse, information integration, data warehouse application and development.', 1, 1, 0),
(204423, 0, 'การทำเหมืองข้อมูล', 'Data Mining', 3, 'แนวคิดพื้นฐานของการทำเหมืองข้อมูล เครื่องมือพื้นฐานและการประมวลผลข้อมูลก่อน การจำแนกข้อมูล การทำเหมืองสำหรับตัวแบบและความสัมพันธ์ และการจัดกลุ่มข้อมูล', 'Basic concepts of data mining, basic tools and data preprocessing, data classification, mining for patterns and associations, and data clustering.', 1, 1, 0),
(204424, 0, 'การออกแบบและพัฒนาออนโทโลยี', 'Ontology Design and Development', 3, 'แนวคิดออนโทโลยี เอกสารเว็บแบบมีโครงสร้าง การกำหนดเค้าร่างทรัพยากรเว็บ ภาษาออนโทโลยีเว็บ วิศวกรรมออนโทโลยี โปรแกรมประยุกต์ที่ใช้ออนโทโลยี การสอบถามเว็บเชิงความหมาย ตรรกะและกฎการอนุมาน', 'Ontology concept, structured web documents, defining web resource schema, web ontology language, ontology engineering, applications using ontology, querying semantic web, logic and inference rules.', 1, 1, 0),
(204425, 0, 'ระบบสารสนเทศเพื่อการจัดการ', 'Management Information System', 3, 'แนะนำระบบสารสนเทศและโมเดลธุรกิจ ระบบประมวลผลรายการธุรกิจ ระบบสารสนเทศการจัดการและธุรกิจอัจฉริยะ ระบบสนับสนุนการตัดสินใจ ระบบสารสนเทศผู้บริหาร และระบบผู้เชี่ยวชาญและปัญญาประดิษฐ์', 'Introduction to information system and business model, business transaction processing system, management information system and business intelligence, decision support system, executive information system, and expert system and artificial intelligence.', 1, 1, 0),
(204426, 0, 'วิศวกรรมข้อมูล', 'Data Engineering', 3, 'ภาพรวมของวิศวกรรมข้อมูล การแปลงข้อมูล การทำความสะอาดข้อมูล การบูรณาการข้อมูล การตรวจวินิจฉัยข้อมูลและการมองภาพข้อมูล การประมวลผลคุณลักษณะ คุณภาพข้อมูลและการตรวจสอบข้อมูล วิศวกรรมข้อมูลขนาดใหญ่ ประเด็นท้าทายในด้านวิศวกรรมข้อมูล', 'Overview of data engineering, data transformation, data cleansing, data integration, data exploration and data visualization, feature processing, data quality and data auditing, big data engineering, challenging issues in data engineering.', 1, 1, 0),
(204431, 0, 'ระบบเครือข่ายสากล', 'Inter-Networking System', 3, 'แนวคิดเครือข่ายคอมพิวเตอร์ ความรู้เบื้องต้นเกี่ยวกับเกณฑ์วิธีอินเทอร์เน็ต เกณฑ์วิธีการจำแนกเลขที่อยู่ เกณฑ์วิธีควบคุมข้อความอินเทอร์เน็ต เกณฑ์วิธีจัดเส้นทาง เกณฑ์วิธีระบบเครือข่ายสากล เกณฑ์วิธีควบคุมการขนส่งข้อมูล/เกณฑ์วิธีอินเทอร์เน็ตประยุกต์ เกณฑ์วิธีการจัดการเครือข่ายแบบง่าย ความมั่นคงของเครือข่าย การออกแบบเครือข่ายและการนำไปใช้งาน', 'Computer networking concepts, introduction to Internet protocol, address resolution protocol, Internet Control Message Protocol (ICMP), routing protocol. internetworking protocol, transmission control protocol/Internet protocol, application protocols, Simple Network Management Protocol (SNMP), network security, network design and implementation.', 1, 1, 0),
(204432, 0, 'การออกแบบและจัดการเครือข่ายคอมพิวเตอร์', 'Computer Network Design and Management', 3, 'ระบบเครือข่ายและอินเทอร์เน็ต แนวคิดการจัดสรรเส้นทางและการส่งต่อแพ็กเกต แลนและสวิตชิง การจัดสรรเส้นทางแบบคงที่ การจัดสรรเส้นทางแบบเปลี่ยนแปลงได้ และเน็ตเวิร์คแอดเดรสทรานสเลชัน และการจัดการเครือข่าย', 'Network system and Internet, concepts of routing and packet forwarding, LAN and switching, static routing, dynamic routing and network address translation and network management.', 1, 1, 0),
(204433, 0, 'สถาปัตยกรรมคอมพิวเตอร์', 'Computer Architecture', 3, 'พีชคณิตบูลีนและการออกแบบเชิงตรรกะ การออกแบบรีจิสเตอร์ เครื่องระดับพื้นฐาน เครื่องเชิงลำดับ โครงสร้างหน่วยประมวลผลกลางและไปป์ไลน์ หน่วยความจำและหน่วยความจำแคช โครงสร้างอินพุต/เอาต์พุต และบัส สัญญาณขัดจังหวะ การประมวลผลแบบขนาน มัลติโพรเซสซิง', 'Boolean algebra and logic design, register design, elementary machines, sequential machines, central processing unit structures and pipelining, memory and caches, Input/Output structure and bus, interrupts, parallel processing, multiprocessing.', 1, 1, 0),
(204435, 0, 'การประมวลผลแบบขนาน', 'Parallel Processing', 3, 'แนวคิดของการประมวลผลแบบขนาน  ระบบหน่วยความจำของการประมวลผลแบบขนาน การจัดการหน่วยความจำของการประมวลผลแบบขนาน หลักการประมวลผลแบบไปป์ไลนิงและการประมวลผลเวคเตอร์ โครงสร้างและขั้นตอนวิธีของหน่วยประมวลผลแบบอาเรย์ สถาปัตยกรรมแบบมัลติโพรเซสเซอร์และการเขียนโปรแกรม คอมพิวเตอร์แบบกระแสข้อมูลและการคำนวณด้วยวงจรรวมความจุสูงมาก (วีแอลเอสไอ) และตัวอย่างของระบบแบบมัลติโพรเซสเซอร์', 'Parallel processing concepts, parallel processing memory systems, parallel processing memory management, principles of pipelining and vector processing, structures and algorithms for array processor, multiprocessor architecture and programming, data flow computers and Very Large Scale Integration (VLSI) computations and example of multiprocessor system.', 1, 1, 0),
(204441, 0, 'การเขียนโปรแกรมแบบทำงานหลายอย่างพร้อมกันและระบบกระจาย', 'Concurrent Programming and Distributed System', 3, 'ภาพรวมของการเขียนโปรแกรมแบบทำงานหลายอย่างพร้อมกัน แบบจำลองของภาวะพร้อมกัน โปรแกรมแบบทำงานหลายอย่างพร้อมกันโดยการใช้หน่วยความจำร่วมกัน โปรแกรมแบบทำงานหลายอย่างพร้อมกันโดยการส่งข้อมูล เวลาและสถานะส่วนกลาง รายการและการควบคุมภาวะพร้อมกัน ภาพรวมของระบบกระจาย ภาวะพร้อมกันในระบบกระจาย และตัวอย่าง', 'Overview of concurrent programming, concurrency model, resource sharing concurrent programming, message passing concurrent programming, time and global states, transaction and concurrency control, distributed system overview, concurrency in distributed system and examples.', 1, 1, 0),
(204442, 0, 'การสร้างคอมไพเลอร์', 'Compiler Construction', 3, 'บทนำของตัวแปลภาษาคอมพิวเตอร์ การวิเคราะห์คำศัพท์ ตารางสัญลักษณ์ การวิเคราะห์วากยสัมพันธ์ การก่อเกิดรหัสระหว่างกลาง การวิเคราะห์ความหมาย สภาพแวดล้อมรันไทม์ และการก่อกำเนิดรหัสและการเพิ่มประสิทธิภาพ', 'Introduction to compiler, lexical analysis, symbol tables, syntax analysis, intermediate code generation, semantic analysis, runtime environment, and code generation and optimization.', 1, 1, 0),
(204443, 0, 'ความปลอดภัยในระบบคอมพิวเตอร์', 'Computer System Security', 3, 'ภาพรวมของระบบความปลอดภัย การพิจารณาการจัดการความปลอดภัย การวิเคราะห์ภัยคุกคามและการจัดการความเสี่ยง ความปลอดภัย การเข้ารหัสและการถอดรหัสเบื้องต้น การประยุกต์เทคโนโลยีความปลอดภัย ข้อกฎหมายและจริยธรรมด้านความปลอดภัยในระบบคอมพิวเตอร์ กรณีศึกษาความปลอดภัยในระบบคอมพิวเตอร์', 'Overview of security system, security management consideration, threats analysis and risk management, security, basic encryption and decryption, security technology application, legal and ethical issues in computer security, and case study in computer system security.', 1, 1, 0);
INSERT INTO `course` (`id`, `is_pseudo`, `name_th`, `name_en`, `credit`, `description_th`, `description_en`, `term_1`, `term_2`, `term_s`) VALUES
(204451, 0, 'การออกแบบและการวิเคราะห์อัลกอริทึม', 'Algorithm Design and Analysis', 3, 'ทบทวนคณิตศาสตร์ ความสำคัญของอัลกอริทึมที่มีประสิทธิภาพ สัญกรณ์เชิงเส้นกำกับ การแก้ปัญหาความสัมพันธ์แบบเวียนเกิด อัลกอริทึมแบบแบ่งแยกและเอาชนะ ต้นไม้การตัดสินใจและขอบเขตล่าง ปัญหาเกี่ยวกับสายอักขระ อัลกอริทึมเชิงละโมบ กำหนดการพลวัต การไหลในเครือข่าย เอ็นพีบริบูรณ์ และออโตมาตา', 'Mathematic reviews, the importance of efficient algorithms, asymptotic notation, solving recurrence relations, divide-and-conquer algorithms, decision trees and lower bounds, string related problem, greedy algorithms, dynamic programming, network flow, NP-completeness and automata.', 1, 0, 0),
(204452, 0, 'ทฤษฎีการคำนวณ', 'Theory of Computation', 3, 'การแยกประเภทปัญหาตามความยากของการคำนวณปัญหาที่มีความยากต่างกัน ทฤษฎีออโตเมตา ทฤษฎีการคำนวณได้และการลดทอน ทฤษฎีความซับซ้อน', 'Classifying problems by the difference in computational hardness, automata theory, computability theory and reductions, and complexity theory.', 1, 1, 0),
(204453, 0, 'การรู้จำแบบ', 'Pattern Recognition', 3, 'ภาพรวมของการรู้จำแบบ การแทนแบบ ขั้นตอนวิธีเพื่อนบ้านใกล้ที่สุด ตัวจำแนกเบส์ ต้นไม้การตัดสินใจ โครงข่ายประสาทและเครื่องกลเวกเตอร์สนับสนุน ปัญหาชั้นข้อมูลอสมดุล', 'Overview of pattern recognition, pattern representation, nearest neighbor algorithms, Bayes classifiers, decision trees, neural networks and support vector machines and class imbalance problem.', 1, 1, 0),
(204454, 0, 'อัลกอริทึมและการเขียนโปรแกรมในการหาค่าเหมาะที่สุดเชิงการจัด', 'Combinatorial Optimization Algorithms and Programming', 3, 'บทนำ ต้นไม้และเส้นทาง ปัญหาตำแหน่ง ปัญหาลำดับย่อย การกำหนดและการจับคู่ เครือข่ายการไหล เซตเสถียรและการทาสี การประยุกต์ใช้เพิ่มเติม', 'Introduction, trees and paths, location problems, subsequence problems, assignments and matchings, network flow, stable sets and coloring, and additional applications.', 1, 1, 0),
(204456, 0, 'การเรียนรู้ของเครื่อง', 'Machine Learning', 3, 'แนวคิดพื้นฐานของการเรียนรู้ของเครื่อง การเรียนรู้แบบมีผู้สอน การวิเคราะห์ที่ไม่ขึ้นกับขั้นตอนวิธี การเรียนรู้แบบไม่มีผู้สอน และการเรียนรู้แบบเสริมกำลัง', 'Basic concepts of machine learning, supervised learning, algorithm independent analysis, unsupervised learning, and reinforcement learning.', 1, 1, 0),
(204471, 0, 'ปัญญาประดิษฐ์', 'Artificial Intelligence', 3, 'บทนำเกี่ยวกับปัญญาประดิษฐ์ ระเบียบวิธีการแก้ปัญหา การแทนความรู้ ระบบผู้เชี่ยวชาญ การเรียนรู้ในระบบปัญญาประดิษฐ์ และภาษาทางปัญญาประดิษฐ์', 'Introduction to artificial intelligence, problem solving methodology, knowledge representation, expert system, learning in artificial intelligence and artificial intelligence languages.', 1, 1, 0),
(204481, 0, 'กำหนดการเชิงคณิตศาสตร์และซอฟต์แวร์', 'Mathematical Programming and Software', 3, 'แนวคิดของกำหนดการเชิงคณิตศาสตร์ พื้นฐานพีชคณิตเชิงเส้น กำหนดการเชิงเส้น กำหนดการจำนวนเต็ม การวิเคราะห์ความอ่อนไหว กำหนดการไม่เชิงเส้น และทฤษฎีเกม', 'Concept of mathematical programming, basic linear algebra, linear programming, integer programming, sensitivity analysis, non-linear programming, and game theory.', 1, 1, 0),
(204482, 0, 'การจำลองแบบปัญหาและแบบจำลอง', 'Simulation and Modelling', 3, 'บทนำเกี่ยวกับการจำลองแบบปัญหา เทคนิคทางสถิติสำหรับการจำลองแบบปัญหา การจำลองแบบปัญหาแบบต่อเนื่อง การจำลองแบบปัญหาแบบไม่ต่อเนื่อง ภาษาที่ใช้ในการจำลองแบบปัญหา ระเบียบวิธีการจำลองแบบปัญหา การประยุกต์ใช้งานแบบจำลอง', 'Introduction to simulation, statistical techniques for simulation, continuous simulations, discrete simulations, simulation languages, simulation methodologies, simulation applications.', 1, 1, 0),
(204483, 0, 'การมองเห็นของคอมพิวเตอร์', 'Computer Vision', 3, 'บทนำและความสัมพันธ์กับสาขาอื่น การวิเคราะห์ภาพเก็บบิตเดียว บริเวณของจุดภาพที่เชื่อมต่อกัน ระบบของตัวกรอง การสกัดและการวิเคราะห์ลักษณะเด่น การแทนเส้นรอบขอบ ตัวบอกลวดลายสำหรับการมองเห็นของคอมพิวเตอร์ ทัศนศาสตร์ การสร้างและระบบศัพท์ภาพ การมองเห็นในมุมมองสามมิติทางเรขาคณิต และการประยุกต์ใช้การมองเห็นของคอมพิวเตอร์', 'Introduction and relationships to other fields, binary image analysis, region of connected pixels, systems of filters, feature extraction and analysis, contour representation, texture descriptors for computer vision, optics, image formation and terminology, geometric stereo vision, and computer vision applications.', 1, 1, 0),
(204490, 0, 'การวิจัยทางวิทยาการคอมพิวเตอร์', 'Research in Computer Science', 3, 'ระเบียบวิธีวิจัยพื้นฐานและจริยธรรมการวิจัย เครื่องมือสำหรับการวิจัย การกำหนดปัญหาในการวิจัย การทบทวนสิ่งตีพิมพ์ที่เกี่ยวข้อง การเขียนข้อเสนองานวิจัย การจัดการงานวิจัยด้านวิทยาการคอมพิวเตอร์ กฎและหลักการนำเสนอผลงานวิจัย การเขียนรายงานการวิจัย โปสเตอร์ผลงานวิชาการ การนำเสนอแบบบรรยาย', 'Basic research methodology and ethics, tools of research, formulating research problems, review of related literature, writing the research proposal, conducting research in computer science, rules and principles in research presentation, writing the research, academic poster, oral presentation.', 0, 1, 0),
(204491, 0, 'การค้นคว้าอิสระ 1', 'Independent Study 1', 1, 'กระบวนวิชานี้เป็นการศึกษา หรือค้นคว้า ในหัวข้อวิทยาการคอมพิวเตอร์ ซึ่งนักศึกษาสามารถนำเอาหัวข้อนี้ไปศึกษาเพิ่มเติมในกระบวนวิชา 204499 การค้นคว้าอิสระ 2 ต่อได้ โดยนักศึกษาจะเป็นผู้ดำเนินการภายใต้การดูแลของอาจารย์ที่ปรึกษา และจะต้องส่งรายงานผลการค้นคว้า และนำเสนอคณะกรรมการ โดยรายงานที่ประเมินนี้จะผ่านการประเมินเป็นลำดับขั้น S หรือ U', 'This course is designed for the students to study and conduct a research project in a topic of computer science, which the students may carry on into 204499 Independent Study II. The students must be under the supervision of the advisor. In order to complete this course, the students must submit a report and present it to the committee. Grading will be given on satisfactory or unsatisfactory basis.', 1, 1, 1),
(204494, 0, 'หัวข้อเลือกสรรทางวิทยาการคอมพิวเตอร์ 1', 'Selected Topics in Computer Science 1', 3, 'เป็นการบรรยายในหัวข้อใหม่ต่างๆ ที่เป็นที่น่าสนใจในทางวิทยาการคอมพิวเตอร์', 'Lecture series are offered on topics of current interest in any area of computer science.', 1, 1, 0),
(204495, 0, 'หัวข้อเลือกสรรทางวิทยาการคอมพิวเตอร์ 2', 'Selected Topics in Computer Science 2', 3, 'เป็นการบรรยายในหัวข้อใหม่ต่างๆ ที่เป็นที่น่าสนใจในทางวิทยาการคอมพิวเตอร์', 'Lecture series are offered on topic of current interest in any area of computer science.', 1, 1, 0),
(204496, 0, 'สหกิจศึกษา', 'Cooperative Education', 6, 'นักศึกษาต้องไปทำงานที่เกี่ยวกับคอมพิวเตอร์ในสถานประกอบการเป็นเวลาไม่น้อยกว่า 16 สัปดาห์อย่างต่อเนื่อง โดยปฏิบัติงานเสมือนพนักงานในสถานประกอบการภายใต้การควบคุมดูแลของหัวหน้างานที่ได้รับมอบหมายจากทางสถานประกอบการและคณาจารย์จากทางมหาวิทยาลัย มีการทำรายงานและการสอบปากเปล่า โดยมีการประเมินผลเป็นผ่านหรือไม่ผ่าน', 'Students are required to work in computer related in the organization for a minimum period of continuous 16-weeks as a staff in the organization under supervision of in-charge trainer(s) at the organization and instructor(s) of the university. A proper written report and oral examination are required. Grading will be given on satisfactory or unsatisfactory basis.', 1, 0, 0),
(204497, 0, 'สัมมนาทางวิทยาการคอมพิวเตอร์', 'Seminar in Computer Science', 1, 'การเสนอหัวข้อสัมมนาทางวิทยาการคอมพิวเตอร์ที่ทันสมัย ภายใต้การแนะนำของอาจารย์ การเขียนรายงานเป็นสิ่งที่ต้องจัดทำด้วย การวัดผลเป็นแบบผ่านหรือไม่ผ่าน', 'Presentation of current Computer science topics under supervision of staff. A written report is also required. Grading will be given on satisfactory or unsatisfactory basis.', 0, 1, 0),
(204499, 0, 'การค้นคว้าอิสระ 2', 'Independent Study 2', 2, 'กระบวนวิชานี้ให้นักศึกษาค้นคว้าเจาะจงในด้านที่นักศึกษาได้ศึกษามาจากวิชาเอกหรือวิชาโท โดยนักศึกษาจะต้องเขียนรายงานส่ง และมีการสอบปากเปล่าด้วย การวัดผลเป็นแบบผ่านหรือไม่ผ่าน', 'This course concentrates on intensive work in a special area of student’s major or minor field. Each individual project is to culminate in comprehensive written report and oral examination. Grading will be given on satisfactory or unsatisfactory basic.', 1, 1, 1),
(204712, 0, 'ระบบและเครือข่ายคอมพิวเตอร์', 'Computer Systems and Networks', 3, 'ระบบคอมพิวเตอร์เบื้องต้น สถาปัตยกรรมหน่วยประมวลผล โครงสร้างการเชื่อมต่อภายในคอมพิวเตอร์ ระบบปฏิบัติการเบื้องต้น การจัดการกระบวนการ การจัดการหน่วยความจำ เครือข่ายคอมพิวเตอร์เบื้องต้น ทีซีพี/ไอพี ความมั่นคงของเครือข่าย', 'Introduction to computer systems, processor architectures, computer interconnection structures, introduction to operating systems, process management, memory management, introduction to computer networks, TCP/IP, network security', 1, 0, 0),
(204713, 0, 'การประมวลผลแบบกลุ่มเมฆและข้อมูลขนาดใหญ่', 'Cloud Computing and Big Data', 3, 'ภาพรวมของการคำนวณแบบกลุ่มเมฆ โครงสร้างพื้นฐานของการปฏิสัมพันธ์และการคำนวณ เทคโนโลยีเสมือน ข้อมูลขนาดใหญ่เบื้องต้น ตัวแบบข้อมูลขนาดใหญ่และรูปแบบของข้อมูล ระบบเก็บข้อมูลแบบกลุ่มเมฆ ต้นแบบการเขียนโปรแกรมแบบกระจาย การประมวลผลข้อมูลขนาดใหญ่', 'Overview of cloud computing, interactive and computing infrastructure, virtualization technology, introduction to big data, big data models and data format, cloud storage system, distributed programming models, big data processing', 0, 1, 0),
(204715, 0, 'ระบบฝังตัวอัจฉริยะ', 'Intelligent Embedded System', 3, 'ระบบฝังตัวอัจฉริยะเบื้องต้น การจำลองระบบ การเขียนโปรแกรมบนระบบฝังตัว ตัวรับรู้และอุปกรณ์ทำงาน ระบบเครือข่ายตัวรับรู้ การประมวลผลสัญญาณ พื้นฐานระบบควบคุมแบบเปิดและแบบปิด การเรียนรู้และระบบตัดสินใจอัตโนมัติ การประยุกต์ใช้ระบบฝังตัวอัจฉริยะ', 'Introduction to intelligent embedded system, system modeling, embedded system programming, sensor and actuator, sensors network, signal processing, basic control system:open and closed loop control, learning and automated decision making, applications of intelligent embedded system', 0, 0, 0),
(204721, 0, 'วิศวกรรมข้อมูล', 'Data Engineering', 3, 'การวิเคราะห์และการจำลองข้อมูล สถาปัตยกรรมระบบและแพลตฟอร์ม ความมั่นคงของข้อมูล การรวมข้อมูล การทำข้อมูลให้เหมาะสมที่สุด การกำหนดมาตรฐานข้อมูลและการแบ่งกันใช้ข้อมูล เขตของการจัดการข้อมูล', 'Data analysis and modeling, system architecture and platform, data security, data integration, data optimization, data standardization and sharing, areas of data management', 1, 0, 0),
(204725, 0, 'การวิเคราะห์ข้อมูลและการเรียนรู้ของเครื่อง', 'Data Analytic and Machine Learning', 3, 'ตัวแบบการทำนาย การวิเคราะห์การจัดกลุ่ม การจัดหมวดหมู่ การวิเคราะห์ถดถอย การให้คะแนนและการจัดลำดับ การเรียนรู้โครงสร้าง การเรียนรู้แบบกึ่งมีผู้สอน การเรียนรู้แบบเสริมกำลัง', 'Predictive analytics, cluster analysis, classification, regression analysis, scoring and ranking, structure learning, semi-supervised learning, reinforcement learning', 0, 1, 0),
(204728, 0, 'การจัดดำเนินการข้อมูล', 'Data Manipulation', 3, 'การแทนและการได้มาซึ่งข้อมูล การแปลงและการตรวจชำระข้อมูล การประมวลผลคุณลักษณะ กระบวนการของการสกัด การแปลงและการบรรจุ (อีทีแอล) การนำเสนอข้อมูล', 'Data representations and acquisitions, data transformation and cleansing, feature processing, process of Extraction Transformation and Load (ETL), data presentation', 1, 0, 0),
(204732, 0, 'วิศวกรรมซอฟต์แวร์:ทฤษฎีและการประยุกต์', 'Software Engineering:Theory and Application', 3, 'ซอฟต์แวร์ – ปัญหาและโอกาส คุณภาพซอฟต์แวร์และการใช้ซ้ำในวิศวกรรมซอฟต์แวร์ กระบวนการวิศวกรรมซอฟต์แวร์ การจัดการโครงการวิศวกรรมซอฟต์แวร์ การได้ซึ่งความต้องการซอฟต์แวร์ การระบุข้อกำหนดความต้องการการวิเคราะห์และการออกแบบในกระบวนทัศน์การวิเคราะห์ระบบเชิงโครงสร้าง การระบุข้อกำหนดความต้องการ การวิเคราะห์และการออกแบบในกระบวนทัศน์การวิเคราะห์ระบบเชิงวัตถุ คุณลักษณะของการออกแบบที่ดี: การสะท้อนการวิเคราะห์ระบบเชิงโครงสร้างและการวิเคราะห์ระบบเชิงวัตถุ การเขียนรหัสคำสั่งและการจัดการโครงแบบ การทดสอบและการทำให้เกิดผล การบำรุงรักษาและวิวัฒนาการซอฟต์แวร์ เครื่องมือช่วยทางคอมพิวเตอร์ด้านวิศวกรรมซอฟต์แวร์', 'Software-problem and prospect, software quality and reuse in software engineering, software engineering process, managing software engineering projects, acquiring software requirements, specifying requirements, analysis and design in the structured systems analysis paradigm, specifying requirements, analysis and design in the object-oriented paradigm, the features of a good design: a reflection on structured systems analysis and object-oriented systems analysis, coding and configuration management, testing and implementation, maintenance and software evolution, computer-aided software engineering tools', 1, 0, 0),
(204735, 0, 'การคำนวณและขั้นตอนวิธี', 'Computation and Algorithms', 3, 'ทฤษฎีภาษา ทฤษฎีออโตเมตาและตัวแบบการประมวลผล ทฤษฎีความสามารถในการประมวลผล ทฤษฎีความซับซ้อน โครงสร้างข้อมูล ขั้นตอนวิธีแบบละโมบ การค้นหาเฉพาะที่ เมตาฮิวริสติก กำหนดการพลวัต', 'Language theory, automata theory and computational models, computability theory, complexity theory, data structures, greedy algorithms, local search, metaheuristics, dynamic programming', 0, 1, 0),
(204736, 0, 'การปรับปรุงกระบวนการซอฟต์แวร์', 'Software Process Improvement', 3, 'กรอบการปรับปรุงกระบวนการซอฟต์แวร์ (เอสพีไอ) กระบวนการและเครื่องมือเอสพีไอ ซีเอ็มเอ็มไอ (แบบจำลองวุฒิภาวะความสามารถ) กระบวนการซอฟต์แวร์ส่วนบุคคลและทีม (พีเอสพีและ ทีเอสพี) การปรับปรุงกระบวนการซอฟต์แวร์เชิงปฏิบัติ วิธีประเมินมาตรฐานแบบจำลองวุฒิภาวะความสามารถสำหรับการปรับปรุงกระบวนการ(สแคมไพ) ประเด็นการวิจัยและแนวโน้มการปรับปรุงกระบวนการซอฟต์แวร์', 'Software Process Improvement (SPI) framework, the SPI process and tools, the CMMI (Capability Maturity Model Integration), Personal and Team Software Process (PSP and TSP), practical software process improvement, the Standard CMMI Appraisal Method for Process Improvement (SCAMPI), research issues and trend of software process improvement', 0, 0, 0),
(204737, 0, 'วิศวกรรมคุณภาพซอฟต์แวร์', 'Software Quality Engineering', 3, 'วิศวกรรมคุณภาพซอฟต์แวร์เบื้องต้น คุณลักษณะคุณภาพซอฟต์แวร์ การประกันคุณภาพซอฟต์แวร์ กิจกรรมทดสอบ เทคนิคการทดสอบ ระดับของการทดสอบ พื้นฐานการวัด การวัดคุณภาพซอฟต์แวร์ การทดลองในมาตรวัดคุณภาพซอฟต์แวร์ และประเด็นการวิจัยและการประยุกต์คุณภาพซอฟต์แวร์', 'Introduction to software quality engineering, software quality attributes, software quality assurance,  test activities, testing techniques, level of testing, fundamentals of measurement, software quality measurement, experiment in software quality metric, research issues and application of software quality', 0, 0, 0),
(204779, 0, 'หัวข้อพิเศษทางด้านวิทยาการคอมพิวเตอร์', 'SELECTED TOPICS IN COMPUTER SCIENCE', 2, 'การศึกษาหัวข้อที่น่าสนใจในปัจจุบัน และการพัฒนาใหม่ ๆ ในสาขาต่าง ๆ  ทางด้านวิทยาการคอมพิวเตอร์อย่างเข้ม', 'Intensive study of current interesting topics and new development in various fields of computer science.', 0, 0, 0),
(204789, 0, 'หัวข้อพิเศษทางด้านวิทยาการคอมพิวเตอร์', 'SELECTED TOPICS IN COMPUTER SCIENCE', 3, 'การศึกษาหัวข้อที่น่าสนใจในปัจจุบัน และการพัฒนาใหม่ๆในสาขาต่างๆทางด้านวิทยาการคอมพิวเตอร์ อย่างเข้ม', 'Intensive study of current topics of  interest and new developments in various fields of computer science.', 0, 0, 0),
(206111, 0, 'แคลคูลัส 1', 'Calculus 1', 3, 'อนุพันธ์และการประยุกต์ การหาปริพันธ์และการประยุกต์ สมการเชิงอนุพันธ์อันดับหนึ่งและการประยุกต์', 'Derivatives and applications, integration and applications, and first-order differential equations and some applications.', 1, 1, 0),
(206112, 0, 'แคลคูลัส 2', 'Calculus 2', 3, 'สมการเชิงอนุพันธ์เชิงเส้นอันดับสอง ฟังก์ชันหลายตัวแปร ปริพันธ์หลายชั้น อนุกรมอนันต์', 'Linear second-order differential equations, functions of several variables, multiple integrals, and infinite series.', 0, 1, 1),
(206183, 0, 'โครงสร้างวิยุต', 'Discrete Structure', 3, 'เซต ตรรกศาสตร์เชิงประพจน์และการพิสูจน์ การอุปนัยเชิงคณิตศาสตร์และการเวียนเกิด ทฤษฎีจำนวนพื้นฐาน ความสัมพันธ์และฟังก์ชัน การนับพื้นฐาน สัมประสิทธิ์ทวินาม', 'Sets, propositional logics and proofs, mathematical induction and recursions, basic number theory, relations and functions, basic counting, binomial coefficients.', 1, 0, 0),
(206281, 0, 'วิยุตคณิต', 'Discrete Mathematics', 3, 'ขั้นตอนวิธี ความสัมพันธ์ การอุปนัยและการเวียนเกิด การนับทั่วไป ทฤษฎีกราฟเบื้องต้น กราฟต้นไม้และข่ายงานพีชคณิตบูลีน', 'Algorithms, relations, induction and recursion, general counting, elementary graph theory, trees and networks, Boolean algebra.', 1, 1, 0),
(206325, 0, 'พีชคณิตเชิงเส้น', 'Linear Algebra', 3, 'ระบบสมการเชิงเส้นและเมทริกซ์ ดีเทอร์มิแนนต์ ปริภูมิเวกเตอร์ การแปลงเชิงเส้น ค่าลักษณะเฉพาะและเวกเตอร์ลักษณะเฉพาะและการประยุกต์ ปริภูมิผลคูณภายใน', 'Systems of linear equations and matrices, determinants, vector spaces, linear transformations, eigenvalues and eigenvectors and some applications, inner product spaces.', 1, 1, 0),
(206336, 0, 'การวิเคราะห์เชิงจริง 1', 'Real analysis 1', 3, 'จำนวนจริง ลำดับและอนุกรมของจำนวน ลิมิตและภาวะต่อเนื่องของฟังก์ชัน การหาอนุพันธ์ ปริพันธ์แบบรีมันน์', 'Real numbers, sequences and series of numbers, limits and continuity of functions, differentiation, Riemann integral.', 1, 1, 0),
(206355, 0, 'วิธีเชิงตัวเลข', 'Numerical Method', 3, 'การแสดงค่าเชิงตัวเลขและค่าคลาดเคลื่อน ผลเฉลยของสมการหนึ่งตัวแปร ผลเฉลยเชิงตัวเลขของระบบสมการเชิงเส้นและไม่เชิงเส้น การประมาณค่าในช่วงด้วยพหุนามและการปรับเส้นโค้ง การหาอนุพันธ์และปริพันธ์เชิงตัวเลข ผลเฉลยเชิงตัวเลขของสมการเชิงอนุพันธ์สามัญ', 'Numerical representation and error, solution of one variable equation, numerical solution of systems of linear and nonlinear equations, interpolating polynomial and curve fitting, numerical differentiation and numerical integration, numerical solution for ordinary differential equations.', 1, 1, 0),
(206370, 0, 'ความน่าจะเป็น 1', 'Probability 1', 3, 'รากฐานของความน่าจะเป็น ความน่าจะเป็นมีเงื่อนไข ตัวแปรสุ่ม ค่าคาดหวังและโมเมนต์ของตัวแปรสุ่ม การประมาณตัวแปรสุ่ม', 'Foundation of probability, conditional probability, random variables, expectation and moment of random variables, approximation of random variables.', 1, 1, 0),
(206381, 0, 'คณิตศาสตร์เชิงการจัด', 'Combinatorics', 3, 'วิธีการนับทั่วไปสำหรับการจัดเรียงและการเลือก ฟังก์ชันก่อกำเนิด ความสัมพันธ์เวียนเกิด หลักการเพิ่มเข้าตัดออก สูตรการแจงนับของพอลยา การออกแบบเชิงการจัด', 'General counting methods for arrangements and selections, generating functions, recurrence relations, principles of inclusion and exclusion, Polya’s enumeration formula, combinatorial designs.', 1, 1, 0),
(206423, 0, 'เวฟเลทส์', 'Wavelets', 3, 'ภาพรวมของการประยุกต์และพัฒนาการของเวฟเลทส์ ความรู้เบื้องต้นทางคณิตศาสตร์ การแปลงฟูเรียร์และการแปลงฟูเรียร์แบบจำกัด เวฟเลทส์แบบแฮร์อย่างง่าย ฐานเชิงตั้งฉากปกติของเวฟเลทส์ การวิเคราะห์มัลติ-รีโซลูชัน การประยุกต์ของเวฟเลทส์', 'Overview of applications and development of wavelets, mathematical preliminaries, Fourier transform and discrete Fourier transform, simple Haar wavelets, orthonormal bases wavelets, multi-resolution analysis, applications of wavelets.', 1, 1, 0),
(206426, 0, 'พีชคณิตเชิงเส้น 2', 'Linear Algebra 2', 3, 'ทบทวนรูปแบบบัญญัติมูลฐาน รูปแบบตรรกยะและรูปแบบจอร์แดน หลักการดีคัพปลิง การประยุกต์ที่สำคัญบางอย่าง ตัวดำเนินการบนปริภูมิผลคูณภายในและรูปแบบเชิงเส้นคู่ สเปกตรา', 'Review of elementary canonical forms, the rational and Jordan forms, the decoupling principle, some crucial applications, operators on inner product spaces and bilinear forms, spectra.', 1, 1, 0),
(206428, 0, 'ทฤษฎีรหัส', 'Coding Theory', 3, 'บทนำสู่ทฤษฎีรหัส รหัสเชิงเส้น ขอบเขตของรหัสและรหัส รหัสพหุนาม', 'Introduction to coding theory, linear codes, bounds in coding theory and codes, polynomial codes.', 1, 1, 0),
(206455, 0, 'การวิเคราะห์เชิงตัวเลข', 'Numerical Analysis', 3, 'ทฤษฎีการประมาณค่าในช่วง การประมาณฟังก์ชัน การวิเคราะห์เชิงตัวเลขสำหรับสมการเชิงอนุพันธ์สามัญ การวิเคราะห์เชิงตัวเลขสำหรับสมการเชิงอนุพันธ์ย่อย ปัญหาค่าลักษณะเฉพาะของเมทริกช์', 'Interpolation theory, approximation of functions, numerical analysis for ordinary differential equations, numerical analysis for partial differential equations, matrix eigenvalues problem.', 1, 1, 0),
(206463, 0, 'การหาค่าเหมาะที่สุดเชิงกำหนด', 'Deterministic Optimization', 3, 'แบบจำลองการหาค่าเหมาะที่สุดเชิงกำหนด กำหนดการเชิงเส้น กำหนดการเชิงจำนวนเต็ม การวิเคราะห์โครงข่าย กำหนดการเชิงเป้าหมาย กำหนดการไม่เชิงเส้น', 'Deterministic optimization models, linear programming, integer programming, network analysis, goal programming, nonlinear programming.', 1, 1, 0),
(206467, 0, 'ข่ายงานประสาท', 'Neural Networks', 3, 'บทนำสำหรับข่ายงานและการเรียนรู้ของเครื่อง เพอร์เซปตรอน ข่ายงานป้อนไปข้างหน้า ข่ายงานแบบวนซ้ำ', 'Introduction to neural networks and machine learning, perceptron, feed-forward networks, recurrent networks.', 1, 1, 0),
(206476, 0, 'ทฤษฎีเกม', 'Game theory', 3, 'เกมแบบเล่นพร้อมกันที่มีข้อมูลครบถ้วน เกมแบบเล่นไม่พร้อมกันที่มีข้อมูลครบถ้วน เกมแบบเล่นพร้อมกันที่มีข้อมูลไม่ครบถ้วน เกมแบบเล่นไม่พร้อมกันที่มีข้อมูลไม่ครบถ้วน', 'Static games of complete information, dynamic games of complete information, static games of incomplete information, dynamic games of incomplete information.', 1, 1, 0),
(206481, 0, 'ทฤษฎีกราฟ', 'Graph Theory', 3, 'บทนำ ทฤษฎีกราฟมูลฐาน กราฟต้นไม้ กราฟแบบออยเลอร์และกราฟแบบแฮมิลตัน กราฟเชิงระนาบ การให้สีกราฟ', 'Introduction, elementary graph theory, trees, Eulerian and Hamiltonian graphs, planar graphs and graph colorings.', 1, 1, 0),
(207117, 0, 'ปฏิบัติการฟิสิกส์ 1', 'Physics Laboratory 1', 1, 'กระบวนวิชาปฏิบัติการเกี่ยวกับการใช้วิธีการทางวิทยาศาสตร์ในฟิสิกส์พื้นฐาน ซึ่งประกอบด้วย การทดลองต่างๆ ทางด้านกลศาสตร์ อุณหพลศาสตร์ คลื่น ไฟฟ้า สภาวะแม่เหล็ก ทัศนศาสตร์ และฟิสิกส์ยุคใหม่', 'Laboratory course dealing with scientific methods in basic physics consisting of various experiments in mechanics, thermodynamics, waves, electricity, magnetism, optics and modern physics.', 1, 1, 0),
(207187, 0, 'ฟิสิกส์ 1', 'Physics 1', 3, 'หน่วยและการวัด กลศาสตร์ การสั่น คลื่น และเสียง ของไหล อุณหพลศาสตร์ ไฟฟ้า สนามไฟฟ้า สภาวะแม่เหล็กและสนามแม่เหล็ก ทัศนศาสตร์ และฟิสิกส์ยุคใหม่', 'Dimension and measurement, mechanics, vibrations, wave and sound, fluid, thermodynamics, electricity, electric field, magnetism and magnetic field, optics and modern physics.', 1, 1, 0),
(208101, 0, 'สถิติสำหรับการดำรงชีวิตและการทำงาน', 'Statistics for Everyday Life and Work', 3, 'สถิติกับการดำรงชีวิตและการทำงาน สถิติและสารสนเทศกับการแก้ปัญหา การอธิบายเหตุและผลของปรากฏการณ์ต่างๆ การจัดทำข้อสรุปข้อมูล โอกาสและความไม่แน่นอน จากตัวอย่างไปสู่ประชากร การทดสอบสมมุติฐาน การสำรวจด้วยตัวอย่าง การพล็อตจุดและเส้น การประยุกต์ใช้ข้อสรุปทางสถิติ', 'Statistics for everyday life and work, statistics and information in problem solving, explaining causes and outcomes of phenomena, data summarization, chance and uncertainty, from sample to population, hypothesis testing, sample survey, plotting points and lines, applications of statistical conclusion.', 1, 1, 1),
(208263, 0, 'สถิติเบื้องต้น', 'Elementary Statistics', 3, 'ทบทวนความรู้พื้นฐานเกี่ยวกับสถิติ ความน่าจะเป็นและการแจกแจงความน่าจะเป็น การประมาณและการทดสอบสมมุติฐานเกี่ยวกับค่าเฉลี่ยประชากร การประมาณและการทดสอบสมมุติฐานเกี่ยวกับสัดส่วนประชากร การประมาณและการทดสอบสมมุติฐานเกี่ยวกับความแปรปรวนประชากร การประยุกต์ไคกำลังสอง การวิเคราะห์ความแปรปรวน การถดถอยและสหสัมพันธ์', 'Review of basic statistical knowledge, probability and probability distribution, estimation and hypothesis testing of population mean, estimation and hypothesis testing of population proportion, estimation and hypothesis testing of population variance, chi - square application, analysis of variance, regression and correlation.', 1, 1, 1),
(208269, 0, 'สถิติสำหรับวิทยาการคอมพิวเตอร์', 'Statistics for Computer Science', 3, 'ความรู้พื้นฐานเกี่ยวกับสถิติ ตัวแปรสุ่มและการแจกแจงความน่าจะเป็นของตัวแปรสุ่ม การแจกแจงความน่าจะเป็นของตัวแปรสุ่มไม่ต่อเนื่อง การแจกแจงความน่าจะเป็นของตัวแปรสุ่มต่อเนื่อง สถิติเชิงอนุมาน การทดสอบภาวะสารูปดีและการทดสอบความเป็นอิสระ การวิเคราะห์ความแปรปรวน สหสัมพันธ์และการวิเคราะห์การถดถอย', 'Basic statistical knowledge, random variables and probability distributions, probability distribution of discrete random variables, probability distribution of continuous random variables, inferential statistics, goodness of fit test and independence test, analysis of variance, and correlation and regression analysis.', 1, 0, 0),
(461170, 0, 'เครื่องสำอางในชีวิตประจำวัน', 'Cosmetics in Everyday Life', 3, 'ผลิตภัณฑ์เครื่องสำอางที่ใช้ในชีวิตประจำวัน โดยเน้นองค์ความรู้พื้นฐานเกี่ยวกับผิวหนังและเครื่องสำอาง การจัดประเภทเครื่องสำอาง กฎหมายที่เกี่ยวข้อง รู้จักองค์ประกอบและประโยชน์อย่างถูกต้องและเหมาะสมตามหลักวิชาการและหลักการเลือกซื้อผลิตภัณฑ์เพื่อประสิทธิภาพและความปลอดภัยในการใช้เครื่องสำอาง', 'Cosmetic products used in everyday life, emphasizing basic knowledge of skin and various skin care cosmetics, including cosmetic laws and regulations. Product compositions and their applications as well as purchasing guidelines for effective safe use of cosmetics.', 1, 1, 0),
(462130, 0, 'ยาในชีวิตประจำวัน', 'Medications in Everyday Life', 3, 'แนะนำความรู้พื้นฐานเกี่ยวกับการใช้ยา ชนิดของยา ข้อควรระวังในการใช้ยา ผลข้างเคียงของยา พิษของยา การใช้สมุนไพรใกล้ตัว และผลิตภัณฑ์เสริมอาหาร เพื่อการดูแลสุขภาพตนเองและเพื่อประโยชน์ในด้านความปลอดภัยในการใช้ยา และส่งเสริมสุขภาพอนามัย', 'Introduction to basic knowledge for medication uses including types of medication, precautions, adverse drug reactions, toxicity, as well as herbal medicines and food supplement products, for the safety of self-care medications and health promotion.', 1, 1, 0),
(510100, 0, 'ความสุขสมบูรณ์', 'Wellness', 3, 'ความสุขสมบูรณ์และสุขภาวะด้านต่างๆ ทั้งทางด้านกาย จิต สังคม ปัญญา และจิตวิญญาณ รวมถึงหลักการสุขภาพดีโดยองค์รวมทั้งความรู้และคุณธรรม ตลอดจนอาหาร โภชนาการ การออกกำลังกาย สมรรถภาพของร่างกาย การตรวจติดตามสุขภาวะทางด้านห้องปฏิบัติการ การจัดการความเครียดและจรรยาบรรณ', 'Involving the wellness and health status in physical, emotional, social, intellectual and spiritual wellness including principle of good health in holistic both knowledge and merit, following by diet, nutrition, exercise, fitness, wellness and health status laboratory monitoring, stress management and ethic.', 1, 1, 0),
(701103, 0, 'การบัญชีทั่วไป', 'General Accounting', 3, 'ศึกษาถึงวิธี และการบันทึกรายการบัญชี คํานิยาม ประวัติความเป็นมา วัตถุประสงค์ การจําแนกรายการสินทรัพย์ หนี้สินและทุน รายรับและรายจ่าย การปรับปรุงบัญชี งบทดลอง งบการเงิน กําไรขาดทุน กําไรสะสม และงบดุล บัญชีเงินสดรายวันทั่วไป และบัญชีย่อย', 'General method and record in the bookkeeping, definition, history and objective or purpose. Classification of assets, liabilities and capital, revenues and expenses. Adjustment account. Trial balance. Financial: Profit and loss, Retained earning and balance sheet, Cash book. General journal with the subsidiary book.', 0, 0, 0),
(701181, 0, 'การบัญชีเบื้องต้นสำหรับผู้ประกอบการ', 'Basic Accounting for Entrepreneurs', 3, 'หลักการและความรู้ทั่วไปเกี่ยวกับการบัญชี ความหมาย ความสำคัญ วัตถุประสงค์ ความสัมพันธ์ระหว่างบัญชีการเงิน บัญชีบริหาร กับธุรกิจ กฎหมายที่เกี่ยวข้องกับการจัดทำบัญชี มาตรฐานรายงานทางการเงินของไทยและกรอบแนวคิดสำหรับรายงานทางการเงิน พระราชบัญญัติการบัญชี พ.ศ. 2543 และ พ.ศ. 2547 รูปแบบธุรกิจ (บุคคลธรรมดา นิติบุคคล) จรรยาบรรณของผู้ประกอบวิชาชีพบัญชี การบัญชีสำหรับกิจการให้บริการ และนโยบายบัญชีที่สำคัญ การจัดประเภทรายการ นโยบายบัญชี การบัญชีสำหรับกิจการซื้อขายสินค้า และนโยบายบัญชีที่สำคัญ บัญชีรายตัว นโยบายบัญชี งบการเงินสำหรับธุรกิจ การวิเคราะห์งบการเงิน การประยุกต์ใช้ข้อมูลทางการบัญชีเพื่อการตัดสินใจ ต้นทุนและการคำนวณต้นทุน ความสัมพันธ์ระหว่างต้นทุน ปริมาณ กำไร การใช้ข้อมูลต้นทุนเพื่อการตัดสินใจ', 'Accounting principles and general knowledge about accounting. Definition, importance and objective of accounting. The relationship of financial accounting, managerial accounting, and business. Accounting law. Thai financial Reporting Standards (TFRS) and financial reporting framework. Accounting act 2000 and 2004. Business types (natural person, juristic person). Code of ethics. Accounting process and accounting policy for service business. Classification of accounting transactions. Accounting process and accounting policy for merchandising business. Subsidiary account. Financial statements for business. Financial statements analysis. Applying accounting information for decision making. Cost concepts and calculation. The relationship of cost, volume, and profit. Using cost information for decision making.', 1, 1, 0),
(702101, 0, 'การเงินในชีวิตประจำวัน', 'Finance for Daily Life', 3, 'ความรู้เบื้องต้นของการบริหารการเงินในชีวิตประจำวัน การสร้างฐานะมั่นคงทางการเงิน การสำรวจสุขภาพทางการเงิน การวางแผนทางการเงิน การบริหารรายได้ รายจ่าย และภาระหนี้สิน บริการของสถาบันการเงิน การออมเงิน การให้เงินทำงาน การวางแผนการเงินสำหรับเหตุการณ์ของชีวิต การประกันความเสี่ยง การวางแผนภาษี และการเตรียมความพร้อมเพื่อความสุข', 'Basic knowledge of financial management for daily life. Wealth creation. Financial health evaluation. Financial planning. Income, expenses and debt management. Financial institution services. Savings. Letting the money work for you. Financial planning for life events. Risk insurance. Tax planning. Preparing for happiness.', 1, 1, 0),
(703103, 0, 'การเป็นผู้ประกอบการและธุรกิจเบื้องต้น', 'Introduction to Entrepreneurship and Business', 3, 'บทบาทการเป็นผู้ประกอบการกับการพัฒนาเศรษฐกิจของประเทศ โอกาสในการประกอบธุรกิจ คุณลักษณะและแรงจูงใจในการเป็นผู้ประกอบการ สภาพแวดล้อม ประเภท รูปแบบและแผนธุรกิจ หลักการจัดการ การจัดการด้านการตลาด การผลิต การเงิน บัญชี ภาษี กฎหมายธุรกิจ ธุรกิจระหว่างประเทศ และจริยธรรมสำหรับผู้ประกอบการ', 'Entrepreneur role in economics development country Entrepreneur and business opportunities. The characteristic of entrepreneur and motivation factors, environment, types of business, forms of business, business plans, principle of management, marketing management, production management, financial management, accounting, taxation, business law, international business and business ethics for entrepreneur.', 1, 1, 0),
(751100, 0, 'เศรษฐศาสตร์ในชีวิตประจำวัน', 'Economics for Everyday Life', 3, 'แนวคิดทางเศรษฐศาสตร์ที่นำไปใช้ในชีวิตประจำวัน ที่เกี่ยวข้องกับการผลิต การบริโภค ตลาด รายได้ประชาชาติ การคลังสาธารณะ การเงินและการธนาคาร ภาวะเงินเฟ้อและเงินฝืด การจ้างงาน เศรษฐกิจการค้าและการเงินระหว่างประเทศ การพัฒนาเศรษฐกิจและสิ่งแวดล้อม', 'Basic economic concepts and application for everyday life concerning production, consumption, markets, national income, public finance, money and banking, inflation and deflation, employment, international trade and finance, and economic development and environment.', 1, 1, 1),
(801100, 0, 'สถาปัตยกรรมในชีวิตประจำวัน', 'Architecture in Everyday Life', 3, 'ความแตกต่างระหว่างอาคาร และสถาปัตยกรรม ศาสตร์และศิลป์พื้นฐานทางสถาปัตยกรรม สุนทรียะในงานสถาปัตยกรรม สถาปัตยกรรมในชีวิตประจำวัน รูปแบบสไตล์ แฟชั่น และศิลปะสถาปัตยกรรมในแบบต่างๆ บทบาท หน้าที่และความรับผิดชอบของวิชาชีพสถาปนิก เริ่มต้นอย่างไรกับการทำงานกับสถาปนิก สถาปนิกในอุดมคติของลูกค้า และลูกค้าในอุดมคติของสถาปนิก กฎหมายที่เกี่ยวข้องกับการก่อสร้างเบื้องต้น วัสดุที่ใช้ในงานสถาปัตยกรรมเบื้องต้น การอ่านแบบและการทำความเข้าใจแบบสถาปัตยกรรมเบื้องต้น ฮวงจุ้ย และความเชื่อในมุมมองของสถาปนิก อดีต ปัจจุบัน และอนาคตของสถาปัตยกรรมไทย และสถาปัตยกรรมล้านนา สถาปัตยกรรมสีเขียวกับการรักษาสิ่งแวดล้อม', 'The difference between building and architecture, Basic sciences and arts of architecture, Aesthetics in architecture, Architecture in everyday life, Styles and fashions of architecture, Roles and responsibilities of architects, How to start working with architects, Ideal architects versus ideal clients, Basic building laws and regulations, Basic building materials, How to read and understand architectural drawings, Fung-Shi and belief system in the understanding of architect, Past, Present and future of Thai and Lanna architecture, Green architecture and its sustainability.', 1, 1, 1),
(851100, 0, 'การสื่อสารเบื้องต้น', 'Introduction to Communication', 3, 'แนวคิดด้านการสื่อสาร กระบวนการสื่อสาร หน้าที่และบทบาทของการสื่อสารมวลชน สื่อทางเลือกและเทคโนโลยีสารสนเทศ ต่อสังคม', 'Concepts of communication. Communication process. Roles and functions of mass communication. Alternative media. Information technology and its interface with society.', 1, 1, 0),
(851103, 0, 'ชีวิตและสังคมผ่านสื่อ', 'Life and Society through Media', 3, 'การวิเคราะห์และวิจารณ์ความหมายและคุณค่าของชีวิต ในมิติของปรัชญา ประวัติศาสตร์ สังคม วัฒนธรรม การเมือง และเศรษฐกิจ ผ่านสื่อ ได้แก่ ภาพยนตร์ วิทยุโทรทัศน์ หนังสือพิมพ์ นิตยสาร รวมทั้ง นวนิยาย เรื่องสั้นและหนังสือการ์ตูน', 'Critical analysis of the meaning and value of life in philosophical, historical, social, cultural, political, and economic dimensions through media : film, radio, television, newspaper, magazine, as well as novel, short story, and comic book.', 0, 1, 0),
(951100, 0, 'ชีวิตสมัยใหม่กับแอนนิเมชัน', 'Modern Life and Animation', 3, 'ความเข้าใจเชิงประวัติศาสตร์แอนนิเมชันและภาพยนตร์แอนนิเมชัน วิวัฒนาการ และรูปแบบแอนนิเมชันในปัจจุบัน แนวคิดและกระบวนการสร้างแอนนิเมชันเบื้องต้น เช่น ขั้นเตรียมการผลิต การผลิตและหลังการผลิต การใช้ไฟล์ในงานแอนนิเมชันต่างๆ เพื่อนำเสนอผลงานของนักศึกษา การออกแบบตัวละครแอนนิเมชันเบื้องต้น', 'Understanding in animation works and animated cinema. Evolution and forms of animation at present day. Idea and basic process of animation production, for instance, pre-production, production, and post-production. File utilization in presenting the animation projects of students. And the basic design of animation character.', 1, 1, 0),
(953111, 0, 'ซอฟต์แวร์สำหรับชีวิตประจำวัน', 'Software for Everyday Life', 3, 'บทบาทของซอฟต์แวร์ในชีวิตประจำวัน องค์ประกอบของฮาร์ดแวร์ องค์ประกอบของซอฟต์แวร์ องค์ประกอบของระบบออนไลน์ ซอฟต์แวร์อรรถประโยชน์เพื่อชีวิตสมัยใหม่ ซอฟต์แวร์เพื่อการประมวลผลคำ ซอฟต์แวร์เพื่อการประมวลตารางทำการ ซอฟต์แวร์เพื่อการนำเสนอ ซอฟต์แวร์เพื่อการจัดการภาพและภาพเคลื่อนไหว ความปลอดภัย จริยธรรม และกฎหมายบนคอมพิวเตอร์และอินเทอร์เน็ต', 'Roles of software in everyday life. Hardware essentials. Software essentials. Online system essentials. Utility software for modern life. Word processing software. Spread sheet processing software. Presentation software. Image and animation software. Security, ethics and law on computer and internet.', 1, 1, 0),
(999001, 1, 'วิชาเลือกเสรี', 'Free Elective Course', 1, 'บางวิชาที่ใช้ลงแค่ 1 หน่วยกิตเช่นตัวกีฬา', 'Some course that required just 1 degree for example about Physical Education', 0, 0, 0),
(999002, 2, 'วิชาเลือกเสรี', 'Free Elective Course', 2, 'บางวิชาที่ใช้ลงแค่ 2 หน่วยกิต', 'Some course that required just 2 degrees', 0, 0, 0),
(999003, 3, 'วิชาเลือกเสรี', 'Free Elective Course', 1, 'ตัววิชาที่อาจจะเหลือมาจาก GE หรือว่าลงเพิ่มเกิน', 'Some course that left from General Elective or Free Elective', 0, 0, 0),
(999005, 1, 'วิชาโท', 'Minor Course', 1, 'วิชาโทที่ 1 หน่วยกิต', 'Some course that required just 1 degree', 0, 0, 0),
(999006, 1, 'วิชาโท', 'Minor Course', 2, 'วิชาโทที่ 2 หน่วยกิต', 'Some course that required just 2 degree', 0, 0, 0),
(999007, 1, 'วิชาโท', 'Minor Course', 3, 'วิชาโทที่สามหน่วยกิตหรือที่เกินมาจากตัวรหัส 300 , 400', 'Some course that required just 3 degree or left from Major course', 0, 0, 0);

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
(8, 'วิชาโท', 'Minor Courses', 'โท', 'minor'),
(11, 'ใครจะทำไม', 'new2', 'ใหม่กว่า2', 'newest2');

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
(204111, 5),
(204113, 5),
(204114, 5),
(204203, 5),
(204211, 5),
(204212, 5),
(204231, 5),
(204232, 5),
(204251, 5),
(204252, 5),
(204271, 5),
(204306, 5),
(204315, 5),
(204321, 5),
(204341, 5),
(204361, 5),
(204362, 5),
(204390, 5),
(204451, 5),
(204490, 5),
(202101, 4),
(202103, 4),
(203103, 4),
(203111, 4),
(203115, 4),
(204111, 4),
(206111, 4),
(206112, 4),
(206183, 4),
(206281, 4),
(207117, 4),
(207187, 4),
(208263, 4),
(208269, 4),
(13110, 1),
(50100, 1),
(57121, 1),
(57122, 1),
(57123, 1),
(57125, 1),
(57126, 1),
(57127, 1),
(57128, 1),
(57129, 1),
(57130, 1),
(57131, 1),
(57132, 1),
(57133, 1),
(57134, 1),
(57135, 1),
(57136, 1),
(57137, 1),
(74100, 1),
(109114, 1),
(176100, 1),
(201110, 1),
(201114, 1),
(201192, 1),
(208101, 1),
(461170, 1),
(462130, 1),
(510100, 1),
(701103, 1),
(701181, 1),
(702101, 1),
(703103, 1),
(751100, 1),
(801100, 1),
(851100, 1),
(851103, 1),
(951100, 1),
(953111, 1),
(204311, 7),
(204312, 7),
(204325, 7),
(204331, 7),
(204333, 7),
(204335, 7),
(204355, 7),
(204362, 7),
(204363, 7),
(204364, 7),
(204365, 7),
(204381, 7),
(204382, 7),
(204383, 7),
(206325, 7),
(206336, 7),
(206355, 7),
(206370, 7),
(206381, 7),
(204421, 10),
(204422, 10),
(204423, 10),
(204424, 10),
(204425, 10),
(204426, 10),
(204431, 10),
(204432, 10),
(204433, 10),
(204435, 10),
(204441, 10),
(204442, 10),
(204443, 10),
(204452, 10),
(204453, 10),
(204454, 10),
(204456, 10),
(204471, 10),
(204481, 10),
(204482, 10),
(204483, 10),
(204494, 10),
(204495, 10),
(206423, 10),
(206426, 10),
(206428, 10),
(206455, 10),
(206463, 10),
(206467, 10),
(206476, 10),
(206481, 10),
(204712, 9),
(204713, 9),
(204715, 9),
(204721, 9),
(204725, 9),
(204728, 9),
(204732, 9),
(204735, 9),
(204736, 9),
(204737, 9),
(204779, 9),
(204789, 9),
(204491, 6),
(204496, 6),
(204497, 6),
(204499, 6),
(1101, 3),
(1102, 3),
(1201, 3),
(1225, 3),
(140104, 3),
(201111, 3),
(201190, 3),
(201191, 3),
(201193, 3),
(201194, 3),
(204100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `default_course_plan`
--

CREATE TABLE `default_course_plan` (
  `course_id` int(6) NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `default_course_plan`
--

INSERT INTO `default_course_plan` (`course_id`, `plan_id`) VALUES
(204491, 6),
(204496, 6),
(204497, 6),
(204499, 6);

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
(6, 1, 'รวมทุกแผน', 'All Plans', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plan_requirement`
--

CREATE TABLE `plan_requirement` (
  `plan_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `min_credit` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plan_requirement`
--

INSERT INTO `plan_requirement` (`plan_id`, `category_id`, `min_credit`) VALUES
(1, 1, 6),
(1, 2, 6),
(1, 3, 24),
(1, 4, 24),
(1, 5, 41),
(1, 6, 3),
(1, 7, 3),
(1, 8, 15),
(1, 10, 12),
(2, 1, 6),
(2, 2, 6),
(2, 3, 24),
(2, 4, 24),
(2, 5, 41),
(2, 6, 7),
(2, 7, 6),
(2, 8, 15),
(2, 10, 6),
(3, 1, 6),
(3, 2, 6),
(3, 3, 24),
(3, 4, 24),
(3, 5, 41),
(3, 6, 3),
(3, 7, 6),
(3, 8, 15),
(3, 10, 9),
(4, 1, 6),
(4, 2, 6),
(4, 3, 24),
(4, 4, 24),
(4, 5, 41),
(4, 6, 7),
(4, 7, 3),
(4, 8, 15),
(4, 10, 9),
(5, 1, 6),
(5, 2, 6),
(5, 3, 24),
(5, 4, 24),
(5, 5, 41),
(5, 6, 3),
(5, 7, 6),
(5, 8, 15),
(5, 9, 12),
(5, 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite`
--

CREATE TABLE `prerequisite` (
  `course_id` int(6) NOT NULL,
  `precourse_id` int(6) NOT NULL,
  `pregroup_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prerequisite`
--

INSERT INTO `prerequisite` (`course_id`, `precourse_id`, `pregroup_id`) VALUES
(204113, 204111, NULL),
(204114, 204111, NULL),
(204203, 204114, NULL),
(204212, 204114, NULL),
(204252, 204114, NULL),
(204341, 204231, NULL),
(206112, 206111, NULL),
(204421, 204321, NULL),
(204431, 204331, NULL),
(204432, 204232, NULL),
(204435, 204341, NULL),
(204441, 204341, NULL),
(204442, 204315, NULL),
(204443, 204341, NULL),
(204454, 204451, NULL),
(206426, 206325, NULL),
(206455, 206355, NULL),
(204499, 204491, NULL),
(204451, 204251, 1),
(204451, 204252, 1),
(204451, 206183, 2),
(204451, 206281, 2),
(204381, 204203, 3),
(204381, 204211, 3),
(204381, 206112, 4),
(204382, 206112, 6),
(204383, 204211, 7),
(204383, 206112, 8),
(204423, 204251, 9),
(204423, 204271, 9),
(204423, 208263, 10),
(204423, 208269, 10),
(204452, 204251, 11),
(204452, 204252, 11),
(204452, 206183, 12),
(204452, 206281, 12),
(204453, 204251, 13),
(204453, 204271, 13),
(204453, 208263, 14),
(204453, 208269, 14),
(204456, 204251, 15),
(204456, 204271, 15),
(204456, 206112, 16),
(204456, 208263, 17),
(204456, 208269, 17),
(204471, 204251, 18),
(204471, 206183, 19),
(204471, 206281, 19),
(204482, 204203, 20),
(204482, 204211, 20),
(204482, 206112, 21),
(204482, 208263, 22),
(204482, 208263, 22),
(204482, 208269, 22);

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite_group`
--

CREATE TABLE `prerequisite_group` (
  `id` int(11) NOT NULL,
  `inclusion_type` enum('all','any') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prerequisite_group`
--

INSERT INTO `prerequisite_group` (`id`, `inclusion_type`) VALUES
(1, 'any'),
(2, 'any'),
(3, 'any'),
(4, 'all'),
(5, 'any'),
(6, 'all'),
(7, 'any'),
(8, 'all'),
(9, 'any'),
(10, 'any'),
(11, 'any'),
(12, 'any'),
(13, 'any'),
(14, 'any'),
(15, 'any'),
(16, 'all'),
(17, 'any'),
(18, 'any'),
(19, 'any'),
(20, 'any'),
(21, 'all'),
(22, 'any');

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite_inclusive`
--

CREATE TABLE `prerequisite_inclusive` (
  `course_id` int(6) NOT NULL,
  `inclusion_type` enum('all','any') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prerequisite_inclusive`
--

INSERT INTO `prerequisite_inclusive` (`course_id`, `inclusion_type`) VALUES
(204211, 'all'),
(204231, 'any'),
(204232, 'any'),
(204271, 'all'),
(204315, 'any'),
(204321, 'any'),
(204331, 'any'),
(204355, 'any'),
(204361, 'any'),
(204363, 'any'),
(204364, 'any'),
(204390, 'all'),
(204433, 'any'),
(204481, 'any'),
(204483, 'any'),
(206428, 'any'),
(206463, 'all');

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
  ADD PRIMARY KEY (`plan_id`,`category_id`),
  ADD KEY `plan_id` (`plan_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
