-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2020 at 09:24 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackcovit`
--

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `d_pk` int(5) NOT NULL,
  `sym` varchar(600) NOT NULL,
  `prexn` varchar(600) NOT NULL,
  `remd` varchar(600) NOT NULL,
  `rsn` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `description`
--

INSERT INTO `description` (`d_pk`, `sym`, `prexn`, `remd`, `rsn`) VALUES
(101, 'itchy red bisters over body over 21 days, fever, headache, loss of appetite', 'avoid contact with infected person, improve immunity system, get vaccinated', 'consult doctor if red blisters is accompanied by cold or fever,lu stay at home', 'caused by Varicella-zoster virus (VZV), contact with an infected person'),
(102, 'mild to severe illness, sudden cough, sore throat, runny nose, muscle aches, fatigue and vomitting and diarrhoea', 'flu vaccine, regular bath and hand washing', 'influenza antiviral drugs', 'caused by influenza virus which replicates itself'),
(103, 'blisters and ulceration on external genitalia, pain and itching, tender and enlarged lymph nodes, urination pain, vaginal discharge', 'avoid tight clothes, do not engage in sexual contact', 'painkillers, bathing in light salt water, using petroleum jelly', 'HSV on infected person\'s skin, transfers from moist objects'),
(104, 'pain, burning, numbness, sensitivity to touch, fluid blisters, itching', 'pain, burning, numbness, sensitivity to touch, fluid blisters, itching', 'get vaccinated(zostaax and shingrix)', 'varicella-zoster virus, low immunity'),
(105, 'fatigue, body aches, low grade fever, appetite loss, headache,  swelled salivary gland with pain', 'get vaccinated at young age, consult to doctors if not vaccinated', 'take rest, pain relivers, apply ice packs, drink plenty of water, avoid acidic food, eat soft diet', 'take rest, pain relivers, apply ice packs, drink plenty of water, avoid acidic food, eat soft diet'),
(106, 'sudden high fever, stiff neck, headache with nausea, seizures, sensitivity to light, no thirt or appetite', 'wash hands, good hygiene, cover your mouth, improve immune system', 'Hib vaccine, PCV13, PPSV23, meningococcal conjugate vaccine', 'caused by viruses, fungus, bacteria'),
(107, 'mild fever, rash, joint or muscle pain, red eyes(conjunctivitis), headache', 'avoid travelling to affected zones, sexual contact, stay at cool places, wear full clothes, use mosquito repellent', 'use acetaminophen to relieve joint pain and fever, no vaccines have been found till now', 'aedes species mosquito bite, sexual contact, blood transfusion'),
(108, 'fever, chills, muscle aches, headache and ocassional diarrhea, dry cough, short breath', 'wash hands frequently, wear disposal gloves, surgical mask, disinfect surfaces', 'no cure/ vaccine found till now', 'virus emerged by cave-dwelling horseshow bats in China'),
(109, '5 to 10 days, fever, chills, headache, myalgia (muscle aches), nausea, vomiting, chest or abdominal pain', 'avoid direct contact with blood, saliva, vomit, urine and other bodily fluids of people, Avoid close contact with wild animals', 'o specific treatment for Marburg hemorrhagic fever', 'butchering or eating infected animals, contact with the feces or urine of infected animals, contagious'),
(110, 'fever, headache, muscle pain, chills, internal bleeding, vomiting, coughing blood', 'avoid contact with blood and body fluids of ill people, semen from a man who has recovered from EVD, bats and nonhuman primates’ blood', 'no specific treatment for Ebola Virus', 'animal-borne, Comes from bats, which transmit the Ebola virus to other animals and humans'),
(111, 'fever, sore throat, fatigue, weight loss, fever or night sweats, fatigue, recurrent infections', 'choose less risky sexual behaviors, Use condoms every time you have sex, Limit your number of sexual partners, get tested and treated for STDs', 'no cure exists for AIDS, but strict adherence to antiretroviral regimens (ARVs) can dramatically slow the disease\'s progress as well as prevent secondary infections and complications', 'Simian immunodeficiency virus (SIV) jumped from chimps to humans when people consumed infected chimpanzee meat, Once inside the human population, the virus mutated into what we now know as HIV');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(5) NOT NULL,
  `d_fk` int(5) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `d_fk`, `name`) VALUES
(1, 101, 'Chicken Pox'),
(2, 102, 'Flu'),
(3, 103, 'Herpes'),
(4, 104, 'Shingles'),
(5, 105, 'Mumps'),
(6, 106, 'Menigitis'),
(7, 107, 'Zika'),
(8, 108, 'SARS'),
(9, 109, 'Marburg'),
(10, 110, 'Ebola'),
(11, 111, 'AIDS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`d_pk`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_fk` (`d_fk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disease`
--
ALTER TABLE `disease`
  ADD CONSTRAINT `disease_ibfk_1` FOREIGN KEY (`d_fk`) REFERENCES `description` (`d_pk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
