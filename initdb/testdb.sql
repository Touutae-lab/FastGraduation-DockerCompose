SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `member` (
  `student_id` varchar(9) NOT NULL,
  `firstname_en` varchar(50) NOT NULL,
  `lastname_en` varchar(50) NOT NULL,
  `firstname_th` varchar(50) NOT NULL,
  `lastname_th` varchar(50) NOT NULL,
  `section` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `member` (`student_id`, `firstname_en`, `lastname_en`, `firstname_th`, `lastname_th`, `section`) VALUES
('630510584', 'Thanawin', 'Suyanan', 'ธนะวินท์', 'สุยะนันทน์', 1),
('630510587', 'Poramin', 'Sithong', 'ปรมินทร์', 'ศรีทอง', 1),
('630510589', 'Phornphithak', 'Rotkhian', 'พรพิทักษ์', 'รอดเขียน', 1),
('630510590', 'Ponlakrit', 'Parnsa-nguard', 'พลกฤต', 'ภารสงัด', 1),
('630510591', 'Pantakan', 'Kanprawet', 'พันธกานต์', 'กันประเวท', 2),
('630510600', 'Saksinkarn', 'Petchkuljinda', 'ศักย์ศิลกาล', 'เพชรกุลจินดา', 1);


ALTER TABLE `member`
  ADD PRIMARY KEY (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
