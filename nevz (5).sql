-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 08:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nevz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('nev', '1234'),
('nev', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `patient_id` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `date` date NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`patient_id`, `name`, `date`, `status`) VALUES
('24', 'nev', '2024-04-26', 'Approved'),
('88', 'nev', '2024-12-13', 'pending'),
('88', 'nev', '2024-12-19', 'pending'),
('88', 'nev', '2024-12-19', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `caretaker_profile`
--

CREATE TABLE `caretaker_profile` (
  `c_id` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` varchar(3) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `mobile_number` varchar(12) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `marital_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caretaker_profile`
--

INSERT INTO `caretaker_profile` (`c_id`, `password`, `name`, `age`, `sex`, `mobile_number`, `qualification`, `address`, `marital_status`) VALUES
('022', 'ct1022', 'bimki', '30', 'female', '7358308635', 'teacher', 'ambattur', 'married'),
('088', 'ct1088', 'THENMOZHI', '36', 'female', '7350308635', 'manager', 'chennai', 'married'),
('11', '1234', 'mm1m', 'mmm', 'mmm', '143', 'mm', 'mmmmm', 'single '),
('12', '1234', 'gobi', '21', 'female', '5826934710', 'engineering', 'pondicherry', 'single'),
('202', 'ct1202', 'vijay', '50', 'male', '9789924401', 'trust director', 'chennai', 'married');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_profile`
--

CREATE TABLE `doctor_profile` (
  `d_id` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `mobile_number` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `specialization` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `marital_status` varchar(10) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_profile`
--

INSERT INTO `doctor_profile` (`d_id`, `password`, `name`, `designation`, `sex`, `mobile_number`, `email`, `specialization`, `address`, `marital_status`, `img`) VALUES
('1434', '', 'sharni', 'mbbs', 'female', '00000000000', '', 'neuro', 'chennai', 'single', ''),
('147', '888', 'nikitha', 'mbbs', 'female', '7358497760', '7358497760', 'pathology', 'ambattur', 'single', 'img/.jpg'),
('22', '1234', 'artz', 'mbbs', 'female', '2222222', 'nev@gmail.com', 'neuro', 'chennai', 'married', ''),
('73', '888', 'nikitha', 'mbbs', 'female', '7358497760', '7358497760', 'pathology', 'ambattur', 'single', 'img/73.jpg'),
('84', '1234', 'SATYAM', 'mbbs', 'male', '9543956924', 'satyam2003@gmail.com', 'pyscho', 'madavaram', 'Married', ''),
('99', '1234', 'SATYAM', 'mbbs', 'male', '9543956924', 'satyam2003@gmail.com', 'pyscho', 'madavaram', 'Married', '');

-- --------------------------------------------------------

--
-- Table structure for table `d_score`
--

CREATE TABLE `d_score` (
  `id` int(10) NOT NULL,
  `score` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `d_score`
--

INSERT INTO `d_score` (`id`, `score`, `date`) VALUES
(88, 8, '2024-07-27'),
(88, 6, '2024-07-28'),
(88, -4, '2024-07-30'),
(88, -2, '2024-07-31'),
(88, -2, '2024-08-14'),
(88, 2, '2024-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_monitoring`
--

CREATE TABLE `medicine_monitoring` (
  `id` varchar(30) NOT NULL,
  `true` varchar(10) NOT NULL,
  `false` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_monitoring`
--

INSERT INTO `medicine_monitoring` (`id`, `true`, `false`) VALUES
('', '1', ''),
('', '1', '0'),
('', '0', '1'),
('', '0', '1'),
('', '1', '0'),
('', '1', '0'),
('', '0', '1'),
('', '1', '0'),
('', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_timings`
--

CREATE TABLE `medicine_timings` (
  `id` varchar(30) NOT NULL,
  `Medicine_name` varchar(100) NOT NULL,
  `Dose` varchar(50) NOT NULL,
  `Type` varchar(25) NOT NULL,
  `status` int(2) NOT NULL,
  `Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_timings`
--

INSERT INTO `medicine_timings` (`id`, `Medicine_name`, `Dose`, `Type`, `status`, `Date`) VALUES
('88', 'eldoper', '500mg', 'morning', 1, '2024-12-05'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-06'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-07'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-08'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-09'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-10'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-11'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-12'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-13'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-14'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-15'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-16'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-17'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-18'),
('88', 'eldoper', '500mg', 'morning', 0, '2024-12-19'),
('88', 'telma 40', '500mg', 'night', 1, '2024-12-05'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-06'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-07'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-08'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-09'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-10'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-11'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-12'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-13'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-14'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-15'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-16'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-17'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-18'),
('88', 'telma 40', '500mg', 'night', 0, '2024-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `read_status` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `message`, `read_status`, `date`) VALUES
(101, 'Patient ID 88 has missed three days of medication', 1, '2024-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `patient_id` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(11) NOT NULL,
  `education` varchar(100) NOT NULL,
  `mobile_number` varchar(12) NOT NULL,
  `address` varchar(250) NOT NULL,
  `marital_status` varchar(10) NOT NULL,
  `disease_status` varchar(100) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `img` text NOT NULL,
  `insertion_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`patient_id`, `name`, `age`, `sex`, `education`, `mobile_number`, `address`, `marital_status`, `disease_status`, `duration`, `img`, `insertion_timestamp`) VALUES
('88', 'looo', 8, 'male', 'fghj', '0987654', 'fgh', 'sdfg', 'sdfgh', 'dfgh', 'img/88.jpg', '2024-04-10 04:11:50'),
('108', 'nev', 0, 'female', 'pyscho', '9543956924', 'madavaram', 'Married', '1234', 'satyam2003@gmail.com', 'img/108.jpg', '2024-04-27 01:23:02'),
('333', 'tab', 23, 'female', 'be', '7358497760', 'jkdjghcm vihfkhf', 'no', 'fever', 'dirt', 'img/333.jpg', '2024-05-07 11:02:02'),
('1088', 'Nikitha', 20, 'female', 'B.E ECE final yr', '7358497760', 'chennai', 'single', 'higj', '1month', 'img/1088.jpg', '2024-07-28 11:50:59'),
('1022', 'imiki', 12, 'female', '7th', '9789924401', 'block1 p2 kochar', 'single', 'low', '2 weeks', 'img/1022.jpg', '2024-07-28 12:01:48'),
('1202', 'tabitha', 23, 'female', 'msc psychologist', '6383823091', 'chennai', 'single', 'medium', '3 weeks', 'img/1202.jpg', '2024-07-28 12:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `reasons`
--

CREATE TABLE `reasons` (
  `patient_id` varchar(50) NOT NULL,
  `reasons` varchar(1000) NOT NULL,
  `time1` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reasons`
--

INSERT INTO `reasons` (`patient_id`, `reasons`, `time1`) VALUES
('88', 'feeling sick \n', '2024-12-05 08:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

CREATE TABLE `relation` (
  `patient_id` varchar(30) NOT NULL,
  `c_id` int(11) NOT NULL,
  `relation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relation`
--

INSERT INTO `relation` (`patient_id`, `c_id`, `relation`) VALUES
('1088', 88, 'mother'),
('1202', 202, 'father'),
('42', 22, 'mother'),
('88', 11, 'mother');

-- --------------------------------------------------------

--
-- Table structure for table `screening`
--

CREATE TABLE `screening` (
  `patient_id` int(11) NOT NULL,
  `q1` varchar(10) NOT NULL,
  `q2` varchar(10) NOT NULL,
  `q3` varchar(10) NOT NULL,
  `q4` varchar(10) NOT NULL,
  `q5` varchar(10) NOT NULL,
  `q6` varchar(10) NOT NULL,
  `q7` varchar(10) NOT NULL,
  `q8` varchar(30) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `screening`
--

INSERT INTO `screening` (`patient_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `date`) VALUES
(12, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'rarely', '2024-05-06'),
(23, 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'Usually', '2024-05-06'),
(88, '1', '1', '0', '1', '0', '1', '0', '1', '2024-08-14'),
(333, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'Usually', '2024-05-07'),
(420, 'yes', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'All the time', '2024-05-08'),
(467, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '2024-05-07'),
(1000, 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '2024-04-24'),
(1202, '0', '0', '0', '0', '0', '0', '0', '0', '2024-07-28'),
(1434, 'yes', 'no', 'no', 'no', 'yes', 'no', 'yes', 'No', '2024-04-24'),
(66667, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '2024-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `screening2`
--

CREATE TABLE `screening2` (
  `patient_id` int(10) NOT NULL,
  `q1` varchar(10) NOT NULL,
  `q2` varchar(10) NOT NULL,
  `q3` varchar(10) NOT NULL,
  `q4` varchar(10) NOT NULL,
  `q5` varchar(10) NOT NULL,
  `q6` varchar(10) NOT NULL,
  `q7` varchar(10) NOT NULL,
  `q8` varchar(10) NOT NULL,
  `q9` varchar(10) NOT NULL,
  `q10` varchar(10) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `screening2`
--

INSERT INTO `screening2` (`patient_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `date`) VALUES
(0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2024-07-26'),
(12, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2024-05-06'),
(88, 'true', 'true', 'false', 'true', 'true', 'true', 'true', 'false', 'true', 'true', '2024-12-05'),
(123, '1', '1', '0', '1', '0', '1', '0', '1', '0', '1', '2024-05-06'),
(333, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2024-07-26'),
(420, '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2024-05-08'),
(66667, '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2024-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `streak`
--

CREATE TABLE `streak` (
  `id` varchar(20) NOT NULL,
  `total_count` varchar(20) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `streak`
--

INSERT INTO `streak` (`id`, `total_count`, `date`) VALUES
('001', '0', '2024-02-27'),
('001', '0', '2024-02-28'),
('001', '0', '2024-02-29'),
('1000', '0', '2024-02-29'),
('001', '0', '2024-03-01'),
('1000', '0', '2024-03-01'),
('001', '0', '2024-03-02'),
('1000', '0', '2024-03-02'),
('001', '0', '2024-03-03'),
('1000', '0', '2024-03-03'),
('001', '0', '2024-03-04'),
('1000', '0', '2024-03-04'),
('001', '0', '2024-03-05'),
('1000', '0', '2024-03-05'),
('001', '0', '2024-03-06'),
('1000', '0', '2024-03-06'),
('001', '0', '2024-03-07'),
('1000', '0', '2024-03-07'),
('001', '0', '2024-03-08'),
('1000', '0', '2024-03-08'),
('1434', '1', '2024-03-08');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `uVideos` varchar(50) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `thumbnail` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`uVideos`, `Title`, `Description`, `thumbnail`) VALUES
('videos/1000133397.mp4', 'What is Schizophrenia?', '  ', ''),
('videos/1000133401.mp4', 'Common drawbacks of taking medication ', '   ', '');

-- --------------------------------------------------------

--
-- Table structure for table `w_score`
--

CREATE TABLE `w_score` (
  `id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `w_score`
--

INSERT INTO `w_score` (`id`, `score`, `date`) VALUES
(88, 5, '2024-07-21 18:30:00'),
(88, 3, '2024-07-25 18:30:00'),
(88, 5, '2024-08-13 18:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caretaker_profile`
--
ALTER TABLE `caretaker_profile`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `doctor_profile`
--
ALTER TABLE `doctor_profile`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `d_score`
--
ALTER TABLE `d_score`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relation`
--
ALTER TABLE `relation`
  ADD PRIMARY KEY (`patient_id`,`c_id`);

--
-- Indexes for table `screening`
--
ALTER TABLE `screening`
  ADD UNIQUE KEY `patient_id` (`patient_id`);

--
-- Indexes for table `screening2`
--
ALTER TABLE `screening2`
  ADD UNIQUE KEY `patient_id` (`patient_id`);

--
-- Indexes for table `w_score`
--
ALTER TABLE `w_score`
  ADD PRIMARY KEY (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
