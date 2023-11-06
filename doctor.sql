-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Nov 06, 2023 at 05:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `course` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `tablet_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `sex`, `course`, `specialization`, `year`, `tablet_name`, `quantity`, `amount_paid`) VALUES
(1, 'avula jhansy', 45, 'female', 'B-Tech', 'DS&AI', 2023, 'APOLO', 6, 40.00);

-- --------------------------------------------------------

--
-- Table structure for table `signuo`
--

CREATE TABLE `signuo` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `username`, `email`, `password`) VALUES
(1, 'Avula Jhasny', 'avulajhansy6@gmail.com', '45454!'),
(2, 'JHANSY', 'avulajhansy6@gmail.com', '565656!');

-- --------------------------------------------------------

--
-- Table structure for table `tablet3`
--

CREATE TABLE `tablet3` (
  `id` int(11) NOT NULL,
  `tabletname` varchar(255) NOT NULL,
  `cost` float DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `DateOfExpiry` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tablet3`
--

INSERT INTO `tablet3` (`id`, `tabletname`, `cost`, `Quantity`, `DateOfExpiry`) VALUES
(1, 'T.PCM', 500, 5, '2023-11-05'),
(2, 'Tt.DOLO', 2, 5, '2023-11-06'),
(3, 'T.Thioford', 19, 5, '2023-11-07'),
(4, 'T.Acimol sr', 5, 9, '2023-11-08'),
(5, 'T.Brufen', 4, 5, '2023-11-09'),
(6, 'Cap. Tramadol', 7, 5, '2023-11-10'),
(7, 'T.Amoxicilin 500', 8, 5, '2023-11-11'),
(8, 'T.Amoxicillin cv 500 mg', 53, 5, '2023-11-12'),
(9, 'T.Oflox oz', 10, 5, '2023-11-13'),
(10, 'T.Rantack 150 mg', 3, 5, '2023-11-14'),
(11, 'Cap. Omez 20 mg', 3, 5, '2023-11-15'),
(12, 'T.Pan 40', 12, 5, '2023-11-16'),
(13, 'T.Ondem', 5, 5, '2023-11-17'),
(14, 'T.Beplexfort', 2, 5, '2023-11-18'),
(15, 'T.Zincovit', 7, 5, '2023-11-19'),
(16, 'T.Avil 25 mg', 2, 5, '2023-11-20'),
(17, 'T.Sinarest', 8, 5, '2023-11-21'),
(18, 'T.Ketorolac DT', 7, 5, '2023-11-22'),
(19, 'T.Telma 5 mg', 5, 5, '2023-11-23'),
(20, 'T.Telma 20 mg', 10, 5, '2023-11-24'),
(21, 't.Asthalin 2 MG', 2, 5, '2023-11-25'),
(22, 'T.Okacet', 2, 5, '2023-11-26'),
(23, 'T.Okacet L', 6, 5, '2023-11-27'),
(24, 'T.Montack LC', 19, 5, '2023-11-28'),
(25, 'T.Primulute N', 4, 5, '2023-11-29'),
(26, 'T.Pulmoclear', 53, 5, '2023-11-30'),
(27, 'T.Orafast', 53, 5, '2023-12-01'),
(28, 'T.Azee 500', 80, 5, '2023-12-02'),
(29, 'T.Azee 250 mg', 80, 5, '2023-12-03'),
(30, 'T.Naxdom 500 mg', 10, 5, '2023-12-04'),
(31, 'T.Naxdom 250 mg', 7, 5, '2023-12-05'),
(32, 'T.Altiva 120 mg', 21, 5, '2023-12-06'),
(33, 'Spasmonil S', 3, 5, '2023-12-07'),
(34, 'T.sporolac Ds', 7, 5, '2023-12-08'),
(35, 'T.Eldoper', 4, 5, '2023-12-09'),
(36, 'T.Cefitax cv', 34, 5, '2023-12-10'),
(37, 'T.Fenak plus', 4, 5, '2023-12-11'),
(38, 'T.Limcee 500', 3, 5, '2023-12-12'),
(39, 'T.Digen', 2, 5, '2023-12-13'),
(40, 'T.Dulcolex', 3, 5, '2023-12-14'),
(41, 'T.Fungiset', 13, 5, '2023-12-15'),
(42, 'T.orofe XR', 20, 5, '2023-12-16'),
(43, 'T.Tranaxa 500 mg', 20, 5, '2023-12-17'),
(44, 'T.Vertiford', 4, 5, '2023-12-18'),
(45, 'T.Buscogast', 4, 5, '2023-12-19'),
(46, 'T.Losenges', 4, 5, '2023-12-20'),
(47, 'T.Clopitab 75 mg', 5, 5, '2023-12-21'),
(48, 'T.Deriphyllin 150 mg', 53, 5, '2023-12-22'),
(49, 'T.Metrogyl 400 mg', 4, 5, '2023-12-23'),
(50, 'T.Cipro 250 mg', 3, 5, '2023-12-24'),
(51, 'Drop.Ciplox', 19, 5, '2023-12-25'),
(52, 'Drop.Dewax', 128, 5, '2023-12-26'),
(53, 'drop.Earwel', 70, 5, '2023-12-27'),
(54, 'drop.Eyelet', 75, 5, '2023-12-28'),
(55, 'Powder.Candid', 99, 5, '2023-12-29'),
(56, 'Pow.Nebasulf', 80, 5, '2023-12-30'),
(57, 'Injuction', 53, 5, '2023-12-31'),
(58, 'Tnj.Tramadol', 53, 5, '2024-01-01'),
(59, 'Inj.Pan 40', 56, 5, '2024-01-02'),
(60, 'Inj.Zofer', 15, 5, '2024-01-03'),
(61, 'Inj.Eptoin', 13, 5, '2024-01-04'),
(62, 'Inj.Optineuran', 53, 5, '2024-01-05'),
(63, 'Inj.Avil vival', 53, 5, '2024-01-06'),
(64, 'Inj.Dynaper', 34, 5, '2024-01-07'),
(65, 'Inj.Hydrocort', 53, 5, '2024-01-08'),
(66, 'Inj.T.T ival', 30, 5, '2024-01-09'),
(67, 'Inj.Monocef 1 G', 68, 5, '2024-01-10'),
(68, 'In.xylocan 2/', 53, 5, '2024-01-11'),
(69, 'Inj.wolcobal', 53, 5, '2024-01-12'),
(70, 'Inj.Deriphyllin', 53, 5, '2024-01-13'),
(71, 'Inj.Atropin 1ml', 53, 5, '2024-01-14'),
(72, 'Inj.Avil 2ml', 53, 5, '2024-01-15'),
(73, 'Inj.Drotaverin', 53, 5, '2024-01-16'),
(74, 'Inj.Avil vival 10 ml', 53, 5, '2024-01-17'),
(75, 'Inj.Lasix', 53, 5, '2024-01-18'),
(76, 'Inj.Lobetalelos 5ml', 53, 5, '2024-01-19'),
(77, 'INJ.Lobetalos 20 mg', 53, 5, '2024-01-20'),
(78, 'Inj.Methargin', 53, 5, '2024-01-21'),
(79, 'Inj.Perinorm', 53, 5, '2024-01-22'),
(80, 'Inj.Rantac 50 mg', 53, 5, '2024-01-23'),
(81, 'Inj.Pcm vival', 53, 5, '2024-01-24'),
(82, 'Inf.Metronidazole 100 ml', 53, 5, '2024-01-25'),
(83, 'Inf.PCM 100 ML', 399, 5, '2024-01-26'),
(84, 'Inf.Oflokem 100 ml', 199, 5, '2024-01-27'),
(85, 'INF.DNS 500 ML', 38, 5, '2024-01-28'),
(86, 'Inf.RL 500 ML', 26, 63, '0000-00-00'),
(87, 'INF.NS 100 ml', 20, 5, '2024-01-30'),
(88, 'INF.NS 500 ml', 32, 5, '2024-01-31'),
(89, 'Oint.T-muce', 124, 5, '2024-02-01'),
(90, 'Oint.Rapid gel', 113, 5, '2024-02-02'),
(91, 'Oint.Tenovate', 100, 5, '2024-02-03'),
(92, 'Oint.Candid', 53, 5, '2024-02-04'),
(93, 'Oint.Silvacure', 55, 5, '2024-02-05'),
(94, 'Oint.Cipladin', 54, 5, '2024-02-06'),
(95, 'Oint.Thrombophob', 53, 5, '2024-02-07'),
(96, 'Oint.Lignocane', 53, 5, '2024-02-08'),
(97, 'Oint.Orafast gel', 85, 5, '2024-02-09'),
(98, 'Oint.Soframax', 50, 5, '2024-02-10'),
(99, 'Suture material', 53, 5, '2024-02-11'),
(100, 'Ethilon 3-0', 500, 5, '2024-02-12'),
(101, 'Nylon 3-0', 350, 5, '2024-02-13'),
(102, 'Prolin 3-0', 450, 5, '2024-02-14'),
(103, 'Lotion', 53, 5, '2024-02-15'),
(104, 'Lotion.Calamine', 100, 5, '2024-02-16'),
(105, 'Syrup', 53, 5, '2024-02-17'),
(106, 'Syp.Ambrodil S', 34, 5, '2024-02-18'),
(107, 'Syp.Tusq D', 99, 5, '2024-02-19'),
(108, 'Syp.Citralka', 105, 5, '2024-02-20'),
(109, 'Syp.Duphulac', 53, 5, '2024-02-21'),
(110, 'Syp.Sucrachem', 162, 5, '2024-02-22'),
(111, 'Nebulization', 53, 5, '2024-02-23'),
(112, 'Duolin', 30, 5, '2024-02-24'),
(113, 'Budecort', 30, 5, '2024-02-25'),
(114, 'Iv canula', 53, 5, '2024-02-26'),
(115, 'Scalp 22no.', 20, 5, '2024-02-27'),
(116, 'Intracath 22no.', 165, 5, '2024-02-28'),
(117, 'Intracath 20 no', 135, 5, '2024-02-29'),
(118, 'Iv set', 180, 5, '2024-03-01'),
(119, 'Syringe', 53, 5, '2024-03-02'),
(120, 'Dispo 2ml', 5, 5, '2024-03-03'),
(121, 'Dispo 5ml', 7, 5, '2024-03-04'),
(122, 'Dispo 10 ml', 12, 5, '2024-03-05'),
(123, 'Needle 24 no.', 2, 5, '2024-03-06'),
(124, 'Dressing Material', 53, 5, '2024-03-07'),
(125, 'Crep bandage 15 cm', 150, 5, '2024-03-08'),
(126, 'Crep bandage 10 cm', 100, 5, '2024-03-09'),
(127, 'Roller 15 cm', 12, 5, '2024-03-10'),
(128, 'Roller 10 cm', 9, 5, '2024-03-11'),
(129, 'Roller 5 cm', 6, 5, '2024-03-12'),
(130, 'Hand Plast', 2, 5, '2024-03-13'),
(131, 'Cotton Bundal', 53, 5, '2024-03-14'),
(132, 'Betadin Solution', 53, 5, '2024-03-15'),
(133, 'Surgical gloves', 53, 5, '2024-03-16'),
(134, 'Surgical Sprit', 53, 5, '2024-03-17'),
(135, 'Disposable gloves', 10, 5, '2024-03-18'),
(136, 'Mask', 10, 5, '2024-03-19'),
(137, 'Sanitizer', 53, 5, '2024-03-20'),
(138, 'Surgical blade', 53, 5, '2024-03-22'),
(139, 'Surdical blade size 10', 20, 5, '2024-03-23'),
(140, 'ORS Sachet', 5, 5, '2024-03-25'),
(141, 'ENO', 10, 5, '2024-03-26'),
(142, 'Spray .Dicloram', 200, 5, '2024-03-27'),
(143, 'Oint Megaheal', 53, 5, '2024-03-28'),
(144, 'T.NewTablet', 10.99, 100, '2023-12-31'),
(145, 'apolo', 45, 5, '2023-09-11'),
(146, 'Apolo', 26, 5, '2023-07-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signuo`
--
ALTER TABLE `signuo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablet3`
--
ALTER TABLE `tablet3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `signuo`
--
ALTER TABLE `signuo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tablet3`
--
ALTER TABLE `tablet3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
