-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2024 at 04:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Allergies`
--

CREATE TABLE `Allergies` (
  `aType` varchar(255) NOT NULL,
  `pID` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `severity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Allergies`
--

INSERT INTO `Allergies` (`aType`, `pID`, `description`, `severity`) VALUES
('Mold (organism)', '0a859c31-a1e5-03ee-7e60-c3661644185f', '', ''),
('House dust mite (organism)', '0a859c31-a1e5-03ee-7e60-c3661644185f', '', ''),
('Animal dander (substance)', '0a859c31-a1e5-03ee-7e60-c3661644185f', 'Eruption of skin (disorder)', 'MILD'),
('Tree pollen (substance)', '0a859c31-a1e5-03ee-7e60-c3661644185f', '', ''),
('Eggs (edible) (substance)', '0a859c31-a1e5-03ee-7e60-c3661644185f', 'Wheal (finding)', 'MODERATE'),
('Wheat (substance)', '0a859c31-a1e5-03ee-7e60-c3661644185f', '', ''),
('Shellfish (substance)', '0a859c31-a1e5-03ee-7e60-c3661644185f', 'Anaphylaxis (disorder)', 'SEVERE'),
('Peanut (substance)', '0a859c31-a1e5-03ee-7e60-c3661644185f', 'Allergic angioedema (disorder)', 'MODERATE'),
('Mold (organism)', 'c719203f-0cb7-42e7-9cb2-c2ec32b99353', '', ''),
('House dust mite (organism)', 'c719203f-0cb7-42e7-9cb2-c2ec32b99353', '', ''),
('Animal dander (substance)', 'c719203f-0cb7-42e7-9cb2-c2ec32b99353', 'Wheal (finding)', 'MILD'),
('Grass pollen (substance)', 'c719203f-0cb7-42e7-9cb2-c2ec32b99353', '', ''),
('Tree pollen (substance)', 'c719203f-0cb7-42e7-9cb2-c2ec32b99353', '', ''),
('Lisinopril', 'c719203f-0cb7-42e7-9cb2-c2ec32b99353', '', ''),
('Fish (substance)', 'c719203f-0cb7-42e7-9cb2-c2ec32b99353', 'Dyspnea (finding)', 'MODERATE'),
('Grass pollen (substance)', '8860d8e2-6471-7e22-4b85-c4bd4e6599a8', '', ''),
('Animal dander (substance)', 'ebfa5f8b-6aa8-6f80-1cad-1221a00b6933', 'Cough (finding)', 'MODERATE'),
('Grass pollen (substance)', 'ebfa5f8b-6aa8-6f80-1cad-1221a00b6933', '', ''),
('Eggs (edible) (substance)', 'ebfa5f8b-6aa8-6f80-1cad-1221a00b6933', 'Wheal (finding)', 'MODERATE'),
('House dust mite (organism)', 'b2049305-5896-e051-b8c3-16bcdca19289', '', ''),
('Aspirin', 'b2049305-5896-e051-b8c3-16bcdca19289', 'Wheal (finding)', 'MODERATE'),
('Shellfish (substance)', 'b2049305-5896-e051-b8c3-16bcdca19289', 'Anaphylaxis (disorder)', 'SEVERE'),
('Mold (organism)', 'bcd441d2-761f-b584-b1f2-f025d90ba022', 'Allergic skin rash', 'MILD'),
('House dust mite (organism)', 'bcd441d2-761f-b584-b1f2-f025d90ba022', '', ''),
('Animal dander (substance)', 'bcd441d2-761f-b584-b1f2-f025d90ba022', 'Rhinoconjunctivitis (disorder)', 'MODERATE'),
('Lisinopril', 'bcd441d2-761f-b584-b1f2-f025d90ba022', 'Cough (finding)', 'MODERATE'),
('Shellfish (substance)', 'bcd441d2-761f-b584-b1f2-f025d90ba022', 'Allergic angioedema (disorder)', 'MODERATE'),
('Bee venom (substance)', '3f456b18-65d7-e0cf-052c-32a52ed12d5c', '', ''),
('Mold (organism)', '3f456b18-65d7-e0cf-052c-32a52ed12d5c', 'Allergic skin rash', 'MILD'),
('House dust mite (organism)', '3f456b18-65d7-e0cf-052c-32a52ed12d5c', '', ''),
('Animal dander (substance)', '3f456b18-65d7-e0cf-052c-32a52ed12d5c', 'Rhinoconjunctivitis (disorder)', 'MODERATE'),
('Grass pollen (substance)', '3f456b18-65d7-e0cf-052c-32a52ed12d5c', '', ''),
('Tree pollen (substance)', '3f456b18-65d7-e0cf-052c-32a52ed12d5c', '', ''),
('Soya bean (substance)', '3f456b18-65d7-e0cf-052c-32a52ed12d5c', 'Diarrhea (finding)', 'MILD'),
('Eggs (edible) (substance)', '3f456b18-65d7-e0cf-052c-32a52ed12d5c', '', ''),
('Wheat (substance)', '3f456b18-65d7-e0cf-052c-32a52ed12d5c', '', ''),
('Tree nut (substance)', '3f456b18-65d7-e0cf-052c-32a52ed12d5c', 'Eruption of skin (disorder)', 'MODERATE'),
('Mold (organism)', '934d53d9-d7c8-7231-438c-20df18054880', '', ''),
('Penicillin V', '934d53d9-d7c8-7231-438c-20df18054880', 'Wheal (finding)', 'MILD'),
('Animal dander (substance)', '90a12c7b-29bf-fd05-fbed-e2f1ecff3535', 'Rhinoconjunctivitis (disorder)', 'MODERATE'),
('Tree pollen (substance)', '90a12c7b-29bf-fd05-fbed-e2f1ecff3535', '', ''),
('Peanut (substance)', '1cc2cd12-7992-a85b-89cd-e02a8716e91d', 'Dyspnea (finding)', 'MILD'),
('Aspirin', 'e18c9852-9af6-3447-a0e4-0e13c58df070', '', ''),
('Shellfish (substance)', 'e18c9852-9af6-3447-a0e4-0e13c58df070', 'Anaphylaxis (disorder)', 'SEVERE'),
('Mold (organism)', '93e63be8-f548-c22a-d5c4-d1004478ed3b', '', ''),
('Eggs (edible) (substance)', '93e63be8-f548-c22a-d5c4-d1004478ed3b', '', ''),
('Shellfish (substance)', 'db461b4e-83b9-cf5a-a12b-29c77a9e75f5', 'Anaphylaxis (disorder)', 'SEVERE'),
('Penicillin V', 'f0dbe5ae-286d-3e5f-6f97-4b12e8140bf4', 'Eruption of skin (disorder)', 'MILD'),
('Aspirin', 'e83dd9f0-ea67-1bc1-4f5c-0e33ab1b2602', '', ''),
('Shellfish (substance)', 'e83dd9f0-ea67-1bc1-4f5c-0e33ab1b2602', 'Allergic angioedema (disorder)', 'MODERATE'),
('Latex (substance)', '46f43378-d788-98bb-426d-ecce673ffb19', 'Wheal (finding)', 'MILD'),
('Sulfamethoxazole / Trimethoprim', '21f2b31e-f7d0-1052-41c2-66c47c7ad49f', 'Wheal (finding)', 'MODERATE'),
('Wheat (substance)', '21f2b31e-f7d0-1052-41c2-66c47c7ad49f', '', ''),
('Soya bean (substance)', '5986422b-0ea2-bc90-f85c-f6689e80595f', '', ''),
('Bee venom (substance)', '94e4c580-d804-b9b4-e163-d8e03aec3689', 'Eruption of skin (disorder)', 'MODERATE'),
('Mold (organism)', '94e4c580-d804-b9b4-e163-d8e03aec3689', '', ''),
('House dust mite (organism)', '94e4c580-d804-b9b4-e163-d8e03aec3689', '', ''),
('Animal dander (substance)', '94e4c580-d804-b9b4-e163-d8e03aec3689', 'Rhinoconjunctivitis (disorder)', 'MODERATE'),
('Grass pollen (substance)', '94e4c580-d804-b9b4-e163-d8e03aec3689', '', ''),
('Tree pollen (substance)', '94e4c580-d804-b9b4-e163-d8e03aec3689', '', ''),
('Sulfamethoxazole / Trimethoprim', '94e4c580-d804-b9b4-e163-d8e03aec3689', 'Wheal (finding)', 'MODERATE'),
('Wheat (substance)', '94e4c580-d804-b9b4-e163-d8e03aec3689', '', ''),
('Shellfish (substance)', '94e4c580-d804-b9b4-e163-d8e03aec3689', 'Anaphylaxis (disorder)', 'SEVERE'),
('Fish (substance)', '94e4c580-d804-b9b4-e163-d8e03aec3689', 'Dyspnea (finding)', 'MODERATE'),
('Tree nut (substance)', '94e4c580-d804-b9b4-e163-d8e03aec3689', 'Anaphylaxis (disorder)', 'SEVERE'),
('Mold (organism)', '5137a820-1dec-c8a6-b504-fca6f6bae25f', '', ''),
('House dust mite (organism)', '5137a820-1dec-c8a6-b504-fca6f6bae25f', '', ''),
('Animal dander (substance)', '5137a820-1dec-c8a6-b504-fca6f6bae25f', 'Dyspnea (finding)', 'MILD'),
('Grass pollen (substance)', '5137a820-1dec-c8a6-b504-fca6f6bae25f', '', ''),
('Cow\'s milk (substance)', '5137a820-1dec-c8a6-b504-fca6f6bae25f', 'Wheezing (finding)', 'MILD'),
('Wheat (substance)', '5137a820-1dec-c8a6-b504-fca6f6bae25f', '', ''),
('Lisinopril', '72e6aa15-69c3-b700-aaaf-55872958428a', '', ''),
('Ibuprofen', '72e6aa15-69c3-b700-aaaf-55872958428a', 'Rhinoconjunctivitis (disorder)', 'MODERATE'),
('Latex (substance)', '3b0fa285-9d07-b98f-7d91-3dffc5fdd246', 'Wheal (finding)', 'MILD'),
('Mold (organism)', '3b0fa285-9d07-b98f-7d91-3dffc5fdd246', '', ''),
('House dust mite (organism)', '3b0fa285-9d07-b98f-7d91-3dffc5fdd246', '', ''),
('Animal dander (substance)', '3b0fa285-9d07-b98f-7d91-3dffc5fdd246', 'Rhinoconjunctivitis (disorder)', 'MODERATE'),
('Grass pollen (substance)', '3b0fa285-9d07-b98f-7d91-3dffc5fdd246', '', ''),
('Tree pollen (substance)', '3b0fa285-9d07-b98f-7d91-3dffc5fdd246', '', ''),
('Soya bean (substance)', '3b0fa285-9d07-b98f-7d91-3dffc5fdd246', 'Diarrhea (finding)', 'MILD'),
('Eggs (edible) (substance)', '3b0fa285-9d07-b98f-7d91-3dffc5fdd246', 'Wheal (finding)', 'MODERATE'),
('Mold (organism)', '44accb3f-f470-60c7-fcee-9083647b553a', '', ''),
('House dust mite (organism)', '44accb3f-f470-60c7-fcee-9083647b553a', '', ''),
('Animal dander (substance)', '44accb3f-f470-60c7-fcee-9083647b553a', 'Rhinoconjunctivitis (disorder)', 'MODERATE'),
('Grass pollen (substance)', '44accb3f-f470-60c7-fcee-9083647b553a', '', ''),
('Tree pollen (substance)', '44accb3f-f470-60c7-fcee-9083647b553a', '', ''),
('Cow\'s milk (substance)', '44accb3f-f470-60c7-fcee-9083647b553a', 'Finding of vomiting (finding)', 'MODERATE'),
('Fish (substance)', '44accb3f-f470-60c7-fcee-9083647b553a', '', ''),
('Sulfamethoxazole / Trimethoprim', '89f4895c-df10-450f-cd71-6f94d7047108', 'Wheal (finding)', 'MODERATE'),
('Bee venom (substance)', '672333eb-804b-62ef-d9c5-79a5d2198455', '', ''),
('Mold (organism)', '672333eb-804b-62ef-d9c5-79a5d2198455', '', ''),
('House dust mite (organism)', '672333eb-804b-62ef-d9c5-79a5d2198455', '', ''),
('Animal dander (substance)', '672333eb-804b-62ef-d9c5-79a5d2198455', 'Dyspnea (finding)', 'MILD'),
('Grass pollen (substance)', '672333eb-804b-62ef-d9c5-79a5d2198455', '', ''),
('Tree pollen (substance)', '672333eb-804b-62ef-d9c5-79a5d2198455', '', ''),
('Lisinopril', '672333eb-804b-62ef-d9c5-79a5d2198455', '', ''),
('Soya bean (substance)', '672333eb-804b-62ef-d9c5-79a5d2198455', 'Diarrhea (finding)', 'MILD'),
('Shellfish (substance)', '672333eb-804b-62ef-d9c5-79a5d2198455', 'Anaphylaxis (disorder)', 'SEVERE'),
('Tree nut (substance)', '672333eb-804b-62ef-d9c5-79a5d2198455', 'Anaphylaxis (disorder)', 'SEVERE'),
('Aspirin', '9a0dae4f-2de9-4e6e-6ca1-97e04f40e261', 'Abdominal pain (finding)', 'MODERATE');

-- --------------------------------------------------------

--
-- Table structure for table `Appointments`
--

CREATE TABLE `Appointments` (
  `docID` varchar(255) NOT NULL,
  `pID` varchar(255) NOT NULL,
  `appID` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Appointments`
--

INSERT INTO `Appointments` (`docID`, `pID`, `appID`, `date`, `description`) VALUES
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '00f64bf2-ab73-91de-7ff9-b76178574396', '1982-07-24T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '01d4300f-3e02-370e-1835-ee1e63573566', '2011-11-26T05:14:39Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '0e6fac05-6f46-3d4b-74f0-84c4807c4679', '2020-04-25T22:07:23Z', 'Prenatal visit'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '10b0391e-6039-6f75-4249-fa1e5f4811e0', '1989-07-22T05:14:39Z', 'General examination of patient (procedure)'),
('8d27ce6a-ba2a-3e09-80e1-2c2f2ebc00e8', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '119dd21c-ed7d-b4dc-5c28-95182007abee', '2016-08-06T22:07:23Z', 'Urgent care clinic (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '1c91a557-5cb2-26a0-b987-c95fb963b097', '2003-06-28T22:07:23Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '2f572a12-0189-7eba-f11c-d308deb08435', '1955-09-03T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '35189be2-0679-6b82-0fea-fa448c053321', '1970-09-19T05:14:39Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '38c1e3a4-831a-bae6-522b-f5cdfb2f8570', '2000-06-10T22:07:23Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '38fe94a8-b9a0-4ec2-898a-d59a694d82ec', '2004-10-16T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '3e2dd16e-a2f0-6467-1950-84ef2e834c73', '1954-08-28T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '40eaa564-afaa-0a3d-31a3-40e06d3238c3', '1997-09-06T05:14:39Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '41e1f9e3-e835-7564-d295-b374f939ff3c', '1999-06-05T22:07:23Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '4225620b-ab9b-f661-d54b-6b58e97af60a', '2011-08-13T22:07:23Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '42afa107-c831-a412-c60e-3540134434f7', '2016-07-31T17:18:35Z', 'Encounter for symptom'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '474cad11-e78f-3f12-cc80-577deb2f1b9e', '1978-07-15T05:14:39Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '47e2352d-2d31-7e15-702f-99e389ab9ecd', '2018-09-22T22:07:23Z', 'General examination of patient (procedure)'),
('3e1f58dd-c7c3-3e3d-a273-688c212bfd4b', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '4d42ecf9-ef0a-2c87-82e5-b89c188c66a9', '1994-02-04T05:14:39Z', 'Encounter for problem'),
('a9d4ab1a-5037-36c4-adbe-4189bf1fd3bc', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '4f8cee32-faaa-6832-d64d-c530305c1395', '2012-02-16T22:07:23Z', 'Consultation for treatment'),
('a9d4ab1a-5037-36c4-adbe-4189bf1fd3bc', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '4fccb914-cc4e-04c9-df10-9ce3c8fff6bc', '2013-03-23T22:07:23Z', 'Consultation for treatment'),
('a9d4ab1a-5037-36c4-adbe-4189bf1fd3bc', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '50230fd9-1602-bc7e-3070-54cc9b2965ce', '2019-12-07T22:07:23Z', 'Patient encounter procedure'),
('3e1f58dd-c7c3-3e3d-a273-688c212bfd4b', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '5046ee39-54be-b58a-cdc8-863c333f0a4d', '1986-07-05T05:14:39Z', 'Encounter for \'check-up\''),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '50b21e80-d0ac-cf08-1eba-31847d4ebe70', '1961-09-09T05:14:39Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '51e8b8c2-536e-d62a-1f60-cdbef49efef0', '2017-09-16T22:07:23Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '5497d81e-2e43-528b-1ff2-1239bf31793c', '2009-08-01T22:07:23Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '5759a5a7-916f-5ffb-5d7c-429ef10a6470', '2020-09-26T22:07:23Z', 'Postnatal visit'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '5a741bc7-7b91-aa67-eb30-6da1d4e25615', '2014-08-30T22:07:23Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '5aa41630-3a9b-a324-050a-b720eee4df31', '2020-02-29T22:07:23Z', 'Prenatal visit'),
('a9d4ab1a-5037-36c4-adbe-4189bf1fd3bc', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '5bf91b04-a0d0-3bde-cafa-472996ad388a', '2017-04-01T22:07:23Z', 'Patient encounter procedure'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '63023e17-bb98-6d93-5296-e1fceb93cbe9', '1995-05-13T22:07:23Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '651395ed-9932-9386-5c06-274b99e269ae', '2007-07-21T22:07:23Z', 'Prenatal visit'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '65a28303-d799-abf3-7fa6-29575b9b8823', '1984-07-28T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '66201651-e6ca-9617-24c3-c27598874bff', '1990-07-28T05:14:39Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '7161e655-5b2d-4cbe-4a35-1d0c00ed569c', '2016-09-10T22:07:23Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '73b95cf6-9152-e68b-3a94-d8e0d9fc529a', '1964-09-12T05:14:39Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '74fb9ef7-92cd-d693-b1a7-e7392a8fb087', '2020-06-20T22:07:23Z', 'Prenatal visit'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '759a12fd-28bf-480d-22f4-2729855d89c0', '2006-10-28T05:14:39Z', 'General examination of patient (procedure)'),
('a9d4ab1a-5037-36c4-adbe-4189bf1fd3bc', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '7850cc8f-55c7-1de6-9bf0-a21233d1b7c5', '2017-03-02T22:27:34Z', 'Consultation for treatment'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '7e7672b8-e61d-7e39-9a86-ddb0650d2e93', '1998-05-30T22:07:23Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '7e7917e1-f3a5-f736-f53e-64280374a381', '2010-11-20T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '801dcd7e-ac4c-afc2-7f06-d07a90e7b65a', '2002-10-05T05:14:39Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '8181316f-5fcd-693c-e020-3ba970427f9a', '2014-12-28T01:07:23Z', 'Encounter for symptom'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '818fb48d-d889-28ad-3b6b-57e0b41a72c2', '2006-07-15T22:07:23Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '864d30bc-9711-c830-bbcc-7f7a6697eda6', '2015-04-25T15:07:23Z', 'Encounter for symptom'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '8ac8a7d4-f24d-20a8-dfa1-812a94f726e6', '1991-04-20T22:07:23Z', 'Well child visit (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '8c3eb2fb-5f00-9fd7-460c-79bff35aa37b', '1991-08-03T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '8d141168-4968-3f52-c35d-31271e606607', '1967-09-16T05:14:39Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '8e33e2c9-2578-3cac-b326-5b90a83de2f8', '2013-03-22T22:07:23Z', 'Prenatal visit'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '9086e6bd-03a4-1783-6a66-d96d0fb23818', '2013-08-24T22:07:23Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '91983330-e175-c9a3-cf58-cb8466a61f6a', '2005-10-22T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '93001935-6565-e85b-8338-ae35fe668b74', '2012-12-01T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '96351ce9-6bae-66d8-5a00-3e174e90fd7d', '1994-08-20T05:14:39Z', 'General examination of patient (procedure)'),
('8d27ce6a-ba2a-3e09-80e1-2c2f2ebc00e8', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '97aa7023-7871-a2d2-d798-e9da14eff123', '2015-01-03T22:07:23Z', 'Urgent care clinic (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '9f1a2446-6109-ca43-b3cd-d5f22ba5b433', '1996-05-18T22:07:23Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', '9f85455e-2330-dc08-742e-787b69ef6936', '2020-02-01T22:07:23Z', 'Prenatal initial visit'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '9fd8577b-3ef1-11a2-025b-5f43d6b3c53d', '2003-10-11T05:14:39Z', 'General examination of patient (procedure)'),
('a9d4ab1a-5037-36c4-adbe-4189bf1fd3bc', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'a06dc911-9ac0-ed93-7299-bc48d1c93643', '2015-01-10T22:07:23Z', 'Encounter for check up (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'a12a0828-924c-8abe-80e6-f95c76568747', '1999-09-18T05:14:39Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'a633ff4f-1460-a168-1981-04de50e09862', '2018-09-10T21:07:23Z', 'Encounter for symptom'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'a79a7997-62be-a8ed-9e3e-3fe3d3f7bab4', '2013-12-07T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'a94641c9-6aaf-124f-bac2-d42abc105558', '1988-07-16T05:14:39Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'ab7c2269-73c2-5a77-ca5d-569b66741243', '2008-07-26T22:07:23Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'af8b22c5-03ba-5b7a-49e6-ade605908cd9', '2019-09-28T22:07:23Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'b48a5ee8-da8a-0abc-0f41-8ad0b17a0511', '1998-09-12T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'b922708f-8804-e593-93da-cd84d16f5cb4', '2001-09-29T05:14:39Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'b9484734-5858-8e4f-0d02-fb2509dbe221', '2020-08-15T22:07:23Z', 'Obstetric emergency hospital admission'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'ba4fff99-24f2-89fe-4769-550646cf483e', '2017-02-05T20:07:23Z', 'Encounter for symptom'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'be3e07a4-00ea-4e1f-6e5c-32620712d7e1', '1988-04-02T22:07:23Z', 'Well child visit (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'be65faa7-2f4b-98ff-eba3-77aaa8253c4e', '2007-11-03T05:14:39Z', 'General examination of patient (procedure)'),
('a9d4ab1a-5037-36c4-adbe-4189bf1fd3bc', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'bfbde4fe-f5d2-d18e-bab9-28a0e074f262', '2016-03-07T22:27:34Z', 'Consultation for treatment'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'c30829d1-1ccb-888e-d642-e4f9c8ea35a9', '2010-08-07T22:07:23Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'c506b192-e907-6e28-7143-552d871d6322', '2004-07-03T22:07:23Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'c51977a5-225e-a87b-08ec-3280e7c9acca', '1997-05-24T22:07:23Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'c64df9c3-896d-72ce-76e7-87742a596349', '2020-07-18T22:07:23Z', 'Prenatal visit'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'c71f66d6-d085-b323-e1b7-8963e510d4db', '1958-09-06T05:14:39Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'c8386566-3213-c918-c304-8de08de5ce8c', '2005-07-09T22:07:23Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'c97cff55-96bb-9368-3bea-ac0255e8db0f', '2020-03-28T22:07:23Z', 'Prenatal visit'),
('3e1f58dd-c7c3-3e3d-a273-688c212bfd4b', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'cb739cd1-4540-e729-2ef1-fc09075f521c', '2012-11-21T08:36:35Z', 'Encounter for \'check-up\''),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'ce815c81-7904-edfa-ec5b-2dd9a423ab68', '1995-08-26T05:14:39Z', 'General examination of patient (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'cf95b8be-0d7c-bace-ced9-ea5bd9a92068', '2000-02-02T04:07:23Z', 'Encounter for symptom'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'd584671c-8796-c2c6-42c1-44197d20e35e', '2013-03-12T22:07:23Z', 'Patient-initiated encounter'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'd676858b-fb93-cfba-594a-1878c7820deb', '1976-07-10T05:14:39Z', 'General examination of patient (procedure)'),
('a9d4ab1a-5037-36c4-adbe-4189bf1fd3bc', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'd800483b-6c86-b8dd-38d4-3d77ff081a4d', '2014-03-18T22:27:34Z', 'Consultation for treatment'),
('a9d4ab1a-5037-36c4-adbe-4189bf1fd3bc', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'dac502be-3007-432f-b8e1-34d2bc8b02ab', '1994-12-02T22:07:23Z', 'Encounter Inpatient'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'db0cf130-765d-dc39-3a08-4637ea2a18d8', '2020-05-23T22:07:23Z', 'Prenatal visit'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'dc4ba106-bb26-1791-4dfd-69f36accb8b8', '2015-09-05T22:07:23Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'df0ff750-42fe-98ff-a6c2-50e30e68fef6', '2014-12-13T05:14:39Z', 'General examination of patient (procedure)'),
('02d12e96-4cad-3539-b5c2-5ca1ac36f720', 'f3c14569-8acf-ffc8-a688-962309d7e599', 'df47a2cfe3e5cd8f2475ed7b627c7b2d', '2024-04-30', 'Physical'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'e34cfc90-62c0-b077-ea92-43208951d7f0', '2016-12-24T05:14:39Z', 'General examination of patient (procedure)'),
('3e1f58dd-c7c3-3e3d-a273-688c212bfd4b', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'e4b7cac4-be74-bdce-d2c0-f66e6ea17045', '2011-07-04T07:54:15Z', 'Encounter for \'check-up\''),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'e5e22010-0649-229f-013a-44b804bffb11', '2012-08-18T22:07:23Z', 'General examination of patient (procedure)'),
('a9d4ab1a-5037-36c4-adbe-4189bf1fd3bc', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'ebc1cf5c-afce-aca7-aa46-d8b6ed687ebe', '2000-02-05T22:07:23Z', 'Encounter for check up (procedure)'),
('d161557f-3d8f-3598-b488-5f7111d4b937', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'eed7bcd4-a8b6-41a7-bce6-eee7e672a7dc', '2013-03-02T22:07:23Z', 'Prenatal initial visit'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'effe7fc2-de6f-9b3e-98c5-af04334d9e16', '2015-12-19T05:14:39Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'f12332bf-7f93-ebcf-2873-cd7bc3eb4267', '1992-08-08T05:14:39Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'f18682a0-1f3d-a689-c6f3-0a0679065e5c', '2002-06-22T22:07:23Z', 'General examination of patient (procedure)'),
('a9d4ab1a-5037-36c4-adbe-4189bf1fd3bc', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'f61c04c6-d7bb-010a-007a-bfd3bcb4eec5', '2011-01-15T22:07:23Z', 'Encounter for check up (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'f76932af-29a8-9750-dca6-d39676c61f30', '1987-07-11T05:14:39Z', 'General examination of patient (procedure)'),
('1f1d9cdf-e594-3527-8f86-6ac68b0a5d30', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'f7984ba4-ce88-dd27-44b4-ae2178f0ed2f', '2001-06-16T22:07:23Z', 'General examination of patient (procedure)'),
('7f9f32d1-4426-3277-9fbd-8ae3855df313', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'fc754992-6dcf-60e7-0d55-b7678c19ff33', '1996-08-31T05:14:39Z', 'General examination of patient (procedure)'),
('3e1f58dd-c7c3-3e3d-a273-688c212bfd4b', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'fede2f43-4529-6caf-a2a7-9c60306ab049', '1981-06-14T14:14:39Z', 'Encounter for symptom');

-- --------------------------------------------------------

--
-- Table structure for table `Bill`
--

CREATE TABLE `Bill` (
  `appID` varchar(255) NOT NULL,
  `cost` decimal(65,30) NOT NULL,
  `deductible` decimal(65,30) NOT NULL,
  `inID` varchar(255) NOT NULL,
  `invoice` decimal(65,30) NOT NULL,
  `pID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Bill`
--

INSERT INTO `Bill` (`appID`, `cost`, `deductible`, `inID`, `invoice`, `pID`) VALUES
('00f64bf2-ab73-91de-7ff9-b76178574396', '136.800000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '853.360000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('01d4300f-3e02-370e-1835-ee1e63573566', '136.800000000000000000000000000000', '603.400000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '855.130000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('0e6fac05-6f46-3d4b-74f0-84c4807c4679', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '7768.160000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('10b0391e-6039-6f75-4249-fa1e5f4811e0', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '1198.790000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('119dd21c-ed7d-b4dc-5c28-95182007abee', '142.580000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '278.580000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('1c91a557-5cb2-26a0-b987-c95fb963b097', '136.800000000000000000000000000000', '527.840000000000000000000000000000', '6e2f1a2d-27bd-3701-8d08-dae202c58632', '778.790000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('2f572a12-0189-7eba-f11c-d308deb08435', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '1266.540000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('35189be2-0679-6b82-0fea-fa448c053321', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '5059a55e-5d6e-34d1-b6cb-d83d16e57bcf', '853.360000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('38c1e3a4-831a-bae6-522b-f5cdfb2f8570', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '1159.490000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('38fe94a8-b9a0-4ec2-898a-d59a694d82ec', '136.800000000000000000000000000000', '1097.660000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '1412.080000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('3e2dd16e-a2f0-6467-1950-84ef2e834c73', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '704.200000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('40eaa564-afaa-0a3d-31a3-40e06d3238c3', '136.800000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '1338.910000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('41e1f9e3-e835-7564-d295-b374f939ff3c', '136.800000000000000000000000000000', '290.350000000000000000000000000000', '6e2f1a2d-27bd-3701-8d08-dae202c58632', '1351.600000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('4225620b-ab9b-f661-d54b-6b58e97af60a', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '568.210000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('42afa107-c831-a412-c60e-3540134434f7', '85.550000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '7812.180000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('474cad11-e78f-3f12-cc80-577deb2f1b9e', '136.800000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '778.780000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('47e2352d-2d31-7e15-702f-99e389ab9ecd', '136.800000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '1050.790000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('4d42ecf9-ef0a-2c87-82e5-b89c188c66a9', '85.550000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '96.480000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('4f8cee32-faaa-6832-d64d-c530305c1395', '142.580000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '156.150000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('4fccb914-cc4e-04c9-df10-9ce3c8fff6bc', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '7940.650000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('50230fd9-1602-bc7e-3070-54cc9b2965ce', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '7744.380000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('5046ee39-54be-b58a-cdc8-863c333f0a4d', '85.550000000000000000000000000000', '0.000000000000000000000000000000', '5059a55e-5d6e-34d1-b6cb-d83d16e57bcf', '9885.590000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('50b21e80-d0ac-cf08-1eba-31847d4ebe70', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '1269.480000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('51e8b8c2-536e-d62a-1f60-cdbef49efef0', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '840.210000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('5497d81e-2e43-528b-1ff2-1239bf31793c', '136.800000000000000000000000000000', '1203.370000000000000000000000000000', '7c4411ce-02f1-39b5-b9ec-dfbea9ad3c1a', '1266.710000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('5759a5a7-916f-5ffb-5d7c-429ef10a6470', '142.580000000000000000000000000000', '0.000000000000000000000000000000', 'b1c428d6-4f07-31e0-90f0-68ffa6ff8c76', '1005.380000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('5a741bc7-7b91-aa67-eb30-6da1d4e25615', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '4d71f845-a6a9-3c39-b242-14d25ef86a8d', '704.210000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('5aa41630-3a9b-a324-050a-b720eee4df31', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '10107.090000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('5bf91b04-a0d0-3bde-cafa-472996ad388a', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '19880.480000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('63023e17-bb98-6d93-5296-e1fceb93cbe9', '136.800000000000000000000000000000', '471.900000000000000000000000000000', '6e2f1a2d-27bd-3701-8d08-dae202c58632', '704.210000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('651395ed-9932-9386-5c06-274b99e269ae', '142.580000000000000000000000000000', '7653.880000000000000000000000000000', '7c4411ce-02f1-39b5-b9ec-dfbea9ad3c1a', '8116.720000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('65a28303-d799-abf3-7fa6-29575b9b8823', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '704.200000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('66201651-e6ca-9617-24c3-c27598874bff', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '568.200000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('7161e655-5b2d-4cbe-4a35-1d0c00ed569c', '136.800000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '642.790000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('73b95cf6-9152-e68b-3a94-d8e0d9fc529a', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '5059a55e-5d6e-34d1-b6cb-d83d16e57bcf', '778.780000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('74fb9ef7-92cd-d693-b1a7-e7392a8fb087', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '16344.970000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('759a12fd-28bf-480d-22f4-2729855d89c0', '136.800000000000000000000000000000', '563.360000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '704.200000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('7850cc8f-55c7-1de6-9bf0-a21233d1b7c5', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '157.160000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('7e7672b8-e61d-7e39-9a86-ddb0650d2e93', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '5059a55e-5d6e-34d1-b6cb-d83d16e57bcf', '1050.790000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('7e7917e1-f3a5-f736-f53e-64280374a381', '136.800000000000000000000000000000', '648.760000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '954.870000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('801dcd7e-ac4c-afc2-7f06-d07a90e7b65a', '136.800000000000000000000000000000', '640.160000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '840.200000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('8181316f-5fcd-693c-e020-3ba970427f9a', '85.550000000000000000000000000000', '0.000000000000000000000000000000', '5059a55e-5d6e-34d1-b6cb-d83d16e57bcf', '459.310000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('818fb48d-d889-28ad-3b6b-57e0b41a72c2', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '704.210000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('864d30bc-9711-c830-bbcc-7f7a6697eda6', '85.550000000000000000000000000000', '0.000000000000000000000000000000', '5059a55e-5d6e-34d1-b6cb-d83d16e57bcf', '100.470000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('8ac8a7d4-f24d-20a8-dfa1-812a94f726e6', '136.800000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '1157.880000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('8c3eb2fb-5f00-9fd7-460c-79bff35aa37b', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '1350.410000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('8d141168-4968-3f52-c35d-31271e606607', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '5059a55e-5d6e-34d1-b6cb-d83d16e57bcf', '1155.830000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('8e33e2c9-2578-3cac-b326-5b90a83de2f8', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '1653.210000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('9086e6bd-03a4-1783-6a66-d96d0fb23818', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '1166.400000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('91983330-e175-c9a3-cf58-cb8466a61f6a', '136.800000000000000000000000000000', '1072.960000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '1381.200000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('93001935-6565-e85b-8338-ae35fe668b74', '136.800000000000000000000000000000', '1011.950000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '1326.430000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('96351ce9-6bae-66d8-5a00-3e174e90fd7d', '136.800000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '704.200000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('97aa7023-7871-a2d2-d798-e9da14eff123', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '5059a55e-5d6e-34d1-b6cb-d83d16e57bcf', '278.580000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('9f1a2446-6109-ca43-b3cd-d5f22ba5b433', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '704.210000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('9f85455e-2330-dc08-742e-787b69ef6936', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '54856.450000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('9fd8577b-3ef1-11a2-025b-5f43d6b3c53d', '136.800000000000000000000000000000', '919.190000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '1188.990000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('a06dc911-9ac0-ed93-7299-bc48d1c93643', '85.550000000000000000000000000000', '0.000000000000000000000000000000', '5059a55e-5d6e-34d1-b6cb-d83d16e57bcf', '85.560000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('a12a0828-924c-8abe-80e6-f95c76568747', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '4d71f845-a6a9-3c39-b242-14d25ef86a8d', '704.200000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('a633ff4f-1460-a168-1981-04de50e09862', '85.550000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '614.040000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('a79a7997-62be-a8ed-9e3e-3fe3d3f7bab4', '136.800000000000000000000000000000', '903.130000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '1228.970000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('a94641c9-6aaf-124f-bac2-d42abc105558', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '4d71f845-a6a9-3c39-b242-14d25ef86a8d', '1234.250000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('ab7c2269-73c2-5a77-ca5d-569b66741243', '136.800000000000000000000000000000', '869.040000000000000000000000000000', '7c4411ce-02f1-39b5-b9ec-dfbea9ad3c1a', '914.790000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('af8b22c5-03ba-5b7a-49e6-ade605908cd9', '136.800000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '778.790000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('b48a5ee8-da8a-0abc-0f41-8ad0b17a0511', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '6e2f1a2d-27bd-3701-8d08-dae202c58632', '853.360000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('b922708f-8804-e593-93da-cd84d16f5cb4', '136.800000000000000000000000000000', '970.120000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '1252.650000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('b9484734-5858-8e4f-0d02-fb2509dbe221', '146.180000000000000000000000000000', '0.000000000000000000000000000000', 'b1c428d6-4f07-31e0-90f0-68ffa6ff8c76', '577.580000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('ba4fff99-24f2-89fe-4769-550646cf483e', '85.550000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '85.550000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('be3e07a4-00ea-4e1f-6e5c-32620712d7e1', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '347.380000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('be65faa7-2f4b-98ff-eba3-77aaa8253c4e', '136.800000000000000000000000000000', '1163.970000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '1454.960000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('bfbde4fe-f5d2-d18e-bab9-28a0e074f262', '142.580000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '160.950000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('c30829d1-1ccb-888e-d642-e4f9c8ea35a9', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '6e2f1a2d-27bd-3701-8d08-dae202c58632', '778.790000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('c506b192-e907-6e28-7143-552d871d6322', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '1266.700000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('c51977a5-225e-a87b-08ec-3280e7c9acca', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '840.210000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('c64df9c3-896d-72ce-76e7-87742a596349', '142.580000000000000000000000000000', '0.000000000000000000000000000000', 'b1c428d6-4f07-31e0-90f0-68ffa6ff8c76', '11023.650000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('c71f66d6-d085-b323-e1b7-8963e510d4db', '136.800000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '1491.930000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('c8386566-3213-c918-c304-8de08de5ce8c', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '704.210000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('c97cff55-96bb-9368-3bea-ac0255e8db0f', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '11519.400000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('cb739cd1-4540-e729-2ef1-fc09075f521c', '85.550000000000000000000000000000', '4943.580000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '6219.480000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('ce815c81-7904-edfa-ec5b-2dd9a423ab68', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '4d71f845-a6a9-3c39-b242-14d25ef86a8d', '778.780000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('cf95b8be-0d7c-bace-ced9-ea5bd9a92068', '85.550000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '2354.720000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('d584671c-8796-c2c6-42c1-44197d20e35e', '85.550000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '8996.560000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('d676858b-fb93-cfba-594a-1878c7820deb', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '778.780000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('d800483b-6c86-b8dd-38d4-3d77ff081a4d', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '4d71f845-a6a9-3c39-b242-14d25ef86a8d', '160.760000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('dac502be-3007-432f-b8e1-34d2bc8b02ab', '87.710000000000000000000000000000', '0.000000000000000000000000000000', '6e2f1a2d-27bd-3701-8d08-dae202c58632', '252.850000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('db0cf130-765d-dc39-3a08-4637ea2a18d8', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '8872.580000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('dc4ba106-bb26-1791-4dfd-69f36accb8b8', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '5059a55e-5d6e-34d1-b6cb-d83d16e57bcf', '568.210000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('df0ff750-42fe-98ff-a6c2-50e30e68fef6', '136.800000000000000000000000000000', '1190.250000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '1606.890000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('e34cfc90-62c0-b077-ea92-43208951d7f0', '136.800000000000000000000000000000', '1008.860000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '1346.640000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('e4b7cac4-be74-bdce-d2c0-f66e6ea17045', '85.550000000000000000000000000000', '26817.920000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '33562.400000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('e5e22010-0649-229f-013a-44b804bffb11', '136.800000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '1140.640000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('ebc1cf5c-afce-aca7-aa46-d8b6ed687ebe', '85.550000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '221.560000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('eed7bcd4-a8b6-41a7-bce6-eee7e672a7dc', '142.580000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '17553.120000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('effe7fc2-de6f-9b3e-98c5-af04334d9e16', '136.800000000000000000000000000000', '928.690000000000000000000000000000', '7caa7254-5050-3b5e-9eae-bd5ea30e809c', '1235.100000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('f12332bf-7f93-ebcf-2873-cd7bc3eb4267', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '1153.910000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('f18682a0-1f3d-a689-c6f3-0a0679065e5c', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '4d71f845-a6a9-3c39-b242-14d25ef86a8d', '704.210000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('f61c04c6-d7bb-010a-007a-bfd3bcb4eec5', '85.550000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '221.560000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('f76932af-29a8-9750-dca6-d39676c61f30', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '1068.360000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('f7984ba4-ce88-dd27-44b4-ae2178f0ed2f', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '047f6ec3-6215-35eb-9608-f9dda363a44c', '1401.170000000000000000000000000000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('fc754992-6dcf-60e7-0d55-b7678c19ff33', '136.800000000000000000000000000000', '0.000000000000000000000000000000', '42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', '1312.170000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('fede2f43-4529-6caf-a2a7-9c60306ab049', '85.550000000000000000000000000000', '0.000000000000000000000000000000', 'd47b3510-2895-3b70-9897-342d681c769d', '85.550000000000000000000000000000', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e');

-- --------------------------------------------------------

--
-- Table structure for table `Buys`
--

CREATE TABLE `Buys` (
  `pID` varchar(255) NOT NULL,
  `inID` varchar(255) NOT NULL,
  `premium` decimal(65,30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Buys`
--

INSERT INTO `Buys` (`pID`, `inID`, `premium`) VALUES
('0354645f-84ae-a2bf-aedc-521b1c570f60', '', '1778809.657000000000000000000000000000'),
('06f12012-769b-05d5-88b4-ac2c33329580', '', '2462382.722000000000000000000000000000'),
('0a33823c-ea8d-51c3-7e5b-f1821a5e6b48', '', '2090449.554000000000000000000000000000'),
('0a859c31-a1e5-03ee-7e60-c3661644185f', '', '2361727.075000000000000000000000000000'),
('10c0514d-43fa-d3b6-2263-b0db9c8d7428', '', '2013299.028000000000000000000000000000'),
('1187c2f0-98ae-e0ef-bbaf-c18ca0ee43c1', '', '104087.350000000000000000000000000000'),
('124eb1cd-ddde-f4b1-a466-07fd3e725ac7', '', '771343.842500000000000000000000000000'),
('13192f42-775a-d0a8-c2bb-c6acdf6c44cd', '', '7044270.461000000000000000000000000000'),
('183df435-4190-060e-8f8e-bf63c572b266', '', '2636541.039000000000000000000000000000'),
('1a9bd5b5-5567-7e0f-8ffb-e29abdd9a732', '', '498613.660000000000000000000000000000'),
('1b1c8491-fcd0-93f0-d73e-ab2d0f95714b', '', '959647.069000000000000000000000000000'),
('1f601bc3-727b-c0bc-a420-8ae8f467910b', '', '1453827.040000000000000000000000000000'),
('217851b0-5f47-d376-18b9-0fe4ba77207e', '', '244138.860000000000000000000000000000'),
('23832f5d-e045-2541-1626-a65dce9bbcf7', '', '1859583.592000000000000000000000000000'),
('250733f1-bf9b-941a-609b-6d2b07717282', '', '2575676.056000000000000000000000000000'),
('2853ca5a-7862-68c8-07d1-3d7fa2d6ae27', '', '1877338.528000000000000000000000000000'),
('2adaad93-a3c3-2835-f74f-8198b64cffd0', '', '843464.757500000000000000000000000000'),
('2ed6f63a-f360-b469-fe05-45e4acfc9ac4', '', '2405466.398000000000000000000000000000'),
('34e019a7-c8d5-e9f1-8c4c-e02dc723cd15', '', '2877279.058000000000000000000000000000'),
('3bb3498b-b251-1252-c3a5-b2d291457123', '', '1819169.427000000000000000000000000000'),
('3ddd9f80-f2da-eddb-97b1-9796deee7b8c', '', '2217267.938000000000000000000000000000'),
('3f456b18-65d7-e0cf-052c-32a52ed12d5c', '', '1596140.819000000000000000000000000000'),
('4d3dc07c-a4e0-dc43-9d7b-0353d71e405f', '', '2570384.794000000000000000000000000000'),
('518bc4a7-676a-c07d-6e9d-e6f9662fa001', '', '1824029.540000000000000000000000000000'),
('51e2a198-bdc2-80ec-806a-e63544c9e95d', '', '1850275.397000000000000000000000000000'),
('537034b9-992e-f8b3-4b7e-ee2c75ae6e75', '', '1632423.938000000000000000000000000000'),
('54588b00-0bba-8d94-bdd2-c1b43ea26fa7', '', '2675592.537000000000000000000000000000'),
('5605b66b-e92d-c16c-1b83-b8bf7040d51f', '', '1382106.268000000000000000000000000000'),
('58aa3b69-1ec8-5bd1-21c9-f946e682e37f', '', '1732669.523000000000000000000000000000'),
('5ade7563-6157-6408-e3d8-9f3daa6304c1', '', '1367519.003000000000000000000000000000'),
('5c457d84-8f3c-6993-484e-bea13266fe58', '', '1197217.020000000000000000000000000000'),
('5f30f184-10f7-6e87-905e-1f3a634a1260', '', '2699501.746000000000000000000000000000'),
('621532aa-4366-cfec-1898-d427cc9732f4', '', '1004047.890000000000000000000000000000'),
('6404c205-838e-42dc-cd11-f1188b807938', '', '1380362.358000000000000000000000000000'),
('648a4b53-0be3-48d5-b202-d8e32e3bedd8', '', '2737937.507000000000000000000000000000'),
('657bac7d-e15f-8248-3d62-aa6422fd39fc', '', '2217328.881000000000000000000000000000'),
('689da5a6-fe82-4c08-a592-1f5311a57f1d', '', '2428862.148000000000000000000000000000'),
('6abf5ea2-3b2c-1f33-f2cc-88fd1bfa40dd', '', '2595506.624000000000000000000000000000'),
('6ba3aa40-7557-835d-5751-f40ad4edf832', '', '1777407.183000000000000000000000000000'),
('6cb48da4-921a-3f0c-4acc-ed707f859046', '', '1820017.521000000000000000000000000000'),
('6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f', '', '625530.722500000000000000000000000000'),
('6e5ae27c-8038-7988-e2c0-25a103f01bfa', '', '2007909.125000000000000000000000000000'),
('6f8ed8a1-93ba-f3fe-6ecb-dba289f80ea4', '', '1122699.087000000000000000000000000000'),
('6fcd1c63-7582-8b87-6673-500355894852', '', '2211967.343000000000000000000000000000'),
('70bc8ab9-174f-0df9-eae4-9074292a11d6', '', '2266107.841000000000000000000000000000'),
('71d71612-4ebe-18f4-233c-1c31cf4d375e', '', '150213.614500000000000000000000000000'),
('720560d4-51da-c38c-ee90-c15935278df1', '', '1205855.998000000000000000000000000000'),
('74c24e72-de7a-4e21-913a-f0297b9bc72b', '', '1048541.298000000000000000000000000000'),
('770518e4-6133-648e-60c9-071eb2f0e2ce', '', '2113559.670000000000000000000000000000'),
('7bc96f89-ebde-f23a-8203-c24f3a8e9a07', '', '1644863.026000000000000000000000000000'),
('7dd67d86-aa0a-3d50-fa5c-e409617fec76', '', '2302504.752000000000000000000000000000'),
('7ec9c50e-9a51-8397-8e1e-03507f103fab', '', '2626273.101000000000000000000000000000'),
('8123d076-0886-9007-e956-d5864aa121a7', '', '1607870.485000000000000000000000000000'),
('83bca13b-f50d-eb82-02af-51101ff01ae9', '', '2186988.140000000000000000000000000000'),
('84a69a69-4309-1549-de32-083332b13d56', '', '2663911.120000000000000000000000000000'),
('8860d8e2-6471-7e22-4b85-c4bd4e6599a8', '', '906415.912500000000000000000000000000'),
('8862088b-5c23-7ae0-41cb-d9c6b9fafff5', '', '1984350.732000000000000000000000000000'),
('8c29a625-c292-b2e2-4c1f-abcb7bc2a5f6', '', '2085281.543000000000000000000000000000'),
('8e9650d1-788a-78f9-4a28-d08f7f95354a', '', '2403664.648000000000000000000000000000'),
('93e54313-8a07-9cd9-6eb9-085b621fcf82', '', '2340390.876000000000000000000000000000'),
('93f23e19-e2e2-4bc5-f7a5-de52a3637d60', '', '2190307.668000000000000000000000000000'),
('94d39619-8e17-d248-41b3-9ec1f2d031b2', '', '2637311.468000000000000000000000000000'),
('a4e89ca1-2d08-a775-cd47-526bbc80f6ea', '', '2210677.451000000000000000000000000000'),
('a61c45e8-d5dc-739a-480b-64c695461ff1', '', '402347.255000000000000000000000000000'),
('a8bb6851-ab1e-ece1-d333-05a375683690', '', '2487839.296000000000000000000000000000'),
('ac8fed9d-fbb2-314b-d262-4221eab2522c', '', '200028.830000000000000000000000000000'),
('ad362b64-31b4-8fa3-c760-38d0e5cacc1c', '', '2736246.644000000000000000000000000000'),
('b1c4449e-8f60-b4e2-83ad-4c8891b534e6', '', '1774511.243000000000000000000000000000'),
('b2049305-5896-e051-b8c3-16bcdca19289', '', '2903369.039000000000000000000000000000'),
('b329f512-ea76-1760-7b84-45dad90cfbb1', '', '2049087.005000000000000000000000000000'),
('b42ebbb4-ba77-c0b7-b8f5-b23915921622', '', '1858659.400000000000000000000000000000'),
('b90c0d9b-101c-de2b-f4c2-bd300705429d', '', '1125241.709000000000000000000000000000'),
('bc5ed545-7992-d053-11da-00487d812536', '', '1279814.414000000000000000000000000000'),
('bcd441d2-761f-b584-b1f2-f025d90ba022', '', '2414590.799000000000000000000000000000'),
('c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', '', '2118564.539000000000000000000000000000'),
('c2b2d9ce-ebad-f0d0-56f2-e784556f0531', '', '42717.050000000000000000000000000000'),
('c5e505f9-40be-9e3c-28f1-5ef511cd9719', '', '2057085.435000000000000000000000000000'),
('c719203f-0cb7-42e7-9cb2-c2ec32b99353', '', '2517562.086000000000000000000000000000'),
('c7273f7a-601f-8885-3715-efd12b90397d', '', '1831496.992000000000000000000000000000'),
('c92e78ef-ee20-8da7-bd9c-5069dc69c82f', '', '242783.370000000000000000000000000000'),
('cc3daea9-2d23-52e3-08d4-00caace42d07', '', '1166618.471000000000000000000000000000'),
('cf236937-d987-f82a-5744-2e4fb2d6f5cc', '', '1543020.509000000000000000000000000000'),
('cf4a4560-ddd4-f904-ad6e-97e9378ea64c', '', '2014337.135000000000000000000000000000'),
('d338ce73-ec70-25ce-0d66-6616ae5aae13', '', '1362919.953000000000000000000000000000'),
('d376b758-635b-0b49-2e64-9fa7b3e88033', '', '3463506.701000000000000000000000000000'),
('d536c0da-c3c8-edca-ebc5-24ee565621a2', '', '1417831.595000000000000000000000000000'),
('db0c781e-8511-1ce6-0c36-c259fff73e26', '', '591416.783000000000000000000000000000'),
('ddc122e7-c735-5f62-a3be-a83cd1f95a7c', '', '3095528.068000000000000000000000000000'),
('e0b4961a-4849-de83-1390-b5fcd24fbafb', '', '936758.192500000000000000000000000000'),
('ebfa5f8b-6aa8-6f80-1cad-1221a00b6933', '', '1879670.470000000000000000000000000000'),
('f3c14569-8acf-ffc8-a688-962309d7e599', '', '533216.484000000000000000000000000000'),
('f3d4ebb8-a0db-f0e6-8c22-0a555525b372', '', '1211885.669000000000000000000000000000'),
('f40e9fd7-1cb8-9423-9d04-dbea3cb66be1', '', '1914745.709000000000000000000000000000'),
('f96addf5-81b9-0aab-7855-d208d3d352c5', '', '2096598.873000000000000000000000000000'),
('fa9ee76e-89ed-f43c-2eb0-64544a9a8b45', '', '886581.457500000000000000000000000000'),
('fe60bdf4-84fd-fb52-186b-d5bb03d467d3', '', '2230463.615000000000000000000000000000'),
('fea1ff3a-e86f-7562-f8ae-9270fa8c6561', '', '2548695.369000000000000000000000000000'),
('febefd51-6130-5e0e-34ed-2ccce47be271', '', '2700447.132000000000000000000000000000'),
('ff331e5c-ab16-e218-f39a-63e11de1ed75', '', '9734600.189000000000000000000000000000'),
('ff5a900f-1148-9ac5-c4a4-86b72176570e', '', '1840009.750000000000000000000000000000');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `docID` varchar(255) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `speciality` varchar(255) NOT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`docID`, `first`, `last`, `gender`, `speciality`, `userID`) VALUES
('02d12e96-4cad-3539-b5c2-5ca1ac36f720', 'Russel238', 'Walker122', 'M', 'GENERAL PRACTICE', 103),
('09362225-471e-3c4c-bf37-8a65bcaccca4', 'Marvin195', 'Glover433', 'M', 'GENERAL PRACTICE', 104),
('0b90520c-b471-3295-824f-a33816e37281', 'Aron520', 'Botsford977', 'M', 'GENERAL PRACTICE', 105),
('0bcfd98c-e7bf-3376-a6b0-934978e68e5e', 'Trina350', 'Cummings51', 'F', 'GENERAL PRACTICE', 106),
('106022fe-b3da-3d99-b118-1564fe64c7a7', 'Alleen813', 'Anderson154', 'F', 'GENERAL PRACTICE', 107),
('17a3649b-7c70-3367-8993-f25ab458f328', 'Riley817', 'Dicki44', 'M', 'GENERAL PRACTICE', 108),
('1a52cbbc-76c4-3ff0-8437-756bd7690844', 'Courtney281', 'Bradtke547', 'M', 'GENERAL PRACTICE', 109),
('1d3620a2-d183-3978-9739-d915b3bbe971', 'Tera136', 'Tromp100', 'F', 'GENERAL PRACTICE', 110),
('20748786-af31-3b2b-b3a0-24e646ceb5af', 'Karyl215', 'Olson653', 'F', 'PHYSICAL THERAPY', 111),
('210c7384-7168-3ff8-a9c3-6a0e22007222', 'Wilfredo622', 'Medhurst46', 'M', 'GENERAL PRACTICE', 112);

-- --------------------------------------------------------

--
-- Table structure for table `Immunizations`
--

CREATE TABLE `Immunizations` (
  `iCode` varchar(255) NOT NULL,
  `pID` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Immunizations`
--

INSERT INTO `Immunizations` (`iCode`, `pID`, `description`, `cost`) VALUES
('140', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Influenza  seasonal  injectable  preservative free', 136),
('140', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Influenza  seasonal  injectable  preservative free', 136),
('52', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hep A  adult', 136),
('140', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Influenza  seasonal  injectable  preservative free', 136),
('113', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Td (adult) preservative free', 136),
('52', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hep A  adult', 136),
('140', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Influenza  seasonal  injectable  preservative free', 136),
('140', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Influenza  seasonal  injectable  preservative free', 136),
('140', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Influenza  seasonal  injectable  preservative free', 136),
('140', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Influenza  seasonal  injectable  preservative free', 136),
('208', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'SARS-COV-2 (COVID-19) vaccine  mRNA  spike protein  LNP  preservative free  30 mcg/0.3mL dose', 136),
('208', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'SARS-COV-2 (COVID-19) vaccine  mRNA  spike protein  LNP  preservative free  30 mcg/0.3mL dose', 136),
('140', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Influenza  seasonal  injectable  preservative free', 136),
('140', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Influenza  seasonal  injectable  preservative free', 136),
('140', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Influenza  seasonal  injectable  preservative free', 136),
('113', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Td (adult) preservative free', 136),
('140', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Influenza  seasonal  injectable  preservative free', 136),
('140', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Influenza  seasonal  injectable  preservative free', 136),
('140', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Influenza  seasonal  injectable  preservative free', 136),
('207', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'SARS-COV-2 (COVID-19) vaccine  mRNA  spike protein  LNP  preservative free  100 mcg/0.5mL dose', 136),
('207', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'SARS-COV-2 (COVID-19) vaccine  mRNA  spike protein  LNP  preservative free  100 mcg/0.5mL dose', 136),
('140', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Influenza  seasonal  injectable  preservative free', 136),
('113', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Td (adult) preservative free', 136),
('140', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Influenza  seasonal  injectable  preservative free', 136),
('207', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'SARS-COV-2 (COVID-19) vaccine  mRNA  spike protein  LNP  preservative free  100 mcg/0.5mL dose', 136),
('207', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'SARS-COV-2 (COVID-19) vaccine  mRNA  spike protein  LNP  preservative free  100 mcg/0.5mL dose', 136),
('140', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Influenza  seasonal  injectable  preservative free', 136),
('113', '6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Td (adult) preservative free', 136),
('140', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Influenza  seasonal  injectable  preservative free', 136),
('121', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'zoster', 136),
('140', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Influenza  seasonal  injectable  preservative free', 136),
('113', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Td (adult) preservative free', 136),
('121', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'zoster', 136),
('140', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Influenza  seasonal  injectable  preservative free', 136),
('52', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Hep A  adult', 136),
('140', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Influenza  seasonal  injectable  preservative free', 136),
('113', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Td (adult) preservative free', 136),
('52', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Hep A  adult', 136),
('140', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Influenza  seasonal  injectable  preservative free', 136),
('208', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'SARS-COV-2 (COVID-19) vaccine  mRNA  spike protein  LNP  preservative free  30 mcg/0.3mL dose', 136),
('208', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'SARS-COV-2 (COVID-19) vaccine  mRNA  spike protein  LNP  preservative free  30 mcg/0.3mL dose', 136),
('140', '23832f5d-e045-2541-1626-a65dce9bbcf7', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Influenza  seasonal  injectable  preservative free', 136),
('113', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Td (adult) preservative free', 136),
('140', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Influenza  seasonal  injectable  preservative free', 136),
('208', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'SARS-COV-2 (COVID-19) vaccine  mRNA  spike protein  LNP  preservative free  30 mcg/0.3mL dose', 136),
('208', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'SARS-COV-2 (COVID-19) vaccine  mRNA  spike protein  LNP  preservative free  30 mcg/0.3mL dose', 136),
('140', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Influenza  seasonal  injectable  preservative free', 136),
('52', '518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Hep A  adult', 136),
('140', '6ba3aa40-7557-835d-5751-f40ad4edf832', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6ba3aa40-7557-835d-5751-f40ad4edf832', 'Influenza  seasonal  injectable  preservative free', 136),
('113', '6ba3aa40-7557-835d-5751-f40ad4edf832', 'Td (adult) preservative free', 136),
('140', '6ba3aa40-7557-835d-5751-f40ad4edf832', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6ba3aa40-7557-835d-5751-f40ad4edf832', 'Influenza  seasonal  injectable  preservative free', 136),
('140', 'd536c0da-c3c8-edca-ebc5-24ee565621a2', 'Influenza  seasonal  injectable  preservative free', 136),
('52', 'd536c0da-c3c8-edca-ebc5-24ee565621a2', 'Hep A  adult', 136),
('140', 'd536c0da-c3c8-edca-ebc5-24ee565621a2', 'Influenza  seasonal  injectable  preservative free', 136),
('140', 'd536c0da-c3c8-edca-ebc5-24ee565621a2', 'Influenza  seasonal  injectable  preservative free', 136),
('113', 'd536c0da-c3c8-edca-ebc5-24ee565621a2', 'Td (adult) preservative free', 136),
('52', 'd536c0da-c3c8-edca-ebc5-24ee565621a2', 'Hep A  adult', 136),
('140', 'd536c0da-c3c8-edca-ebc5-24ee565621a2', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6ba3aa40-7557-835d-5751-f40ad4edf832', 'Influenza  seasonal  injectable  preservative free', 136),
('140', '6ba3aa40-7557-835d-5751-f40ad4edf832', 'Influenza  seasonal  injectable  preservative free', 136),
('33', '6ba3aa40-7557-835d-5751-f40ad4edf832', 'pneumococcal polysaccharide vaccine  23 valent', 136);

-- --------------------------------------------------------

--
-- Table structure for table `Insurance`
--

CREATE TABLE `Insurance` (
  `inID` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `HQ` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Insurance`
--

INSERT INTO `Insurance` (`inID`, `name`, `street`, `city`, `state`, `HQ`, `phone`) VALUES
('047f6ec3-6215-35eb-9608-f9dda363a44c', 'Cigna Health', '900 Cottage Grove Rd', 'Bloomfield', 'CT', 'CT', '1-800-997-1654'),
('42c4fca7-f8a9-3cd1-982a-dd9751bf3e2a', 'Anthem', '220 Virginia Ave', 'Indianapolis', 'IN', 'IN', '1-800-331-1476'),
('4d71f845-a6a9-3c39-b242-14d25ef86a8d', 'Aetna', '151 Farmington Ave', 'Hartford', 'CT', 'CT', '1-800-872-3862'),
('5059a55e-5d6e-34d1-b6cb-d83d16e57bcf', 'UnitedHealthcare', '9800 Healthcare Lane', 'Minnetonka', 'MN', 'MN', '1-888-545-5205'),
('6e2f1a2d-27bd-3701-8d08-dae202c58632', 'Blue Cross Blue Shield', 'Michigan Plaza', 'Chicago', 'IL', 'IL', '1-800-262-2583'),
('7c4411ce-02f1-39b5-b9ec-dfbea9ad3c1a', 'Medicaid', '7500 Security Blvd', 'Baltimore', 'MD', 'MD', '1-877-267-2323'),
('7caa7254-5050-3b5e-9eae-bd5ea30e809c', 'Medicare', '7500 Security Blvd', 'Baltimore', 'MD', 'MD', '1-800-633-4227'),
('b1c428d6-4f07-31e0-90f0-68ffa6ff8c76', 'NO_INSURANCE', '', '', '', '', ''),
('b3221cfc-24fb-339e-823d-bc4136cbc4ed', 'Dual Eligible', '7500 Security Blvd', 'Baltimore', 'MD', 'MD', '1-877-267-2323'),
('d47b3510-2895-3b70-9897-342d681c769d', 'Humana', '500 West Main St', 'Louisville', 'KY', 'KY', '1-844-330-7799');

-- --------------------------------------------------------

--
-- Table structure for table `Medications`
--

CREATE TABLE `Medications` (
  `mCode` varchar(255) NOT NULL,
  `pID` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cost` decimal(65,30) NOT NULL,
  `reason` text NOT NULL,
  `expires` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Medications`
--

INSERT INTO `Medications` (`mCode`, `pID`, `description`, `cost`, `reason`, `expires`) VALUES
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '1996-05-18T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '1996-05-18T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '1997-05-24T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '1997-05-24T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '1998-05-30T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '1998-05-30T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '1999-06-05T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '1999-06-05T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2000-02-05T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '2.450000000000000000000000000000', 'Hypertension', '2000-02-05T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2000-02-05T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '0.010000000000000000000000000000', 'Hypertension', '2000-02-05T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2000-06-10T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '1.260000000000000000000000000000', 'Hypertension', '2000-06-10T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2001-06-16T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2001-06-16T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2002-06-22T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2002-06-22T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2003-06-28T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2003-06-28T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2004-07-03T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2004-07-03T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2005-07-09T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2005-07-09T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2006-07-15T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2006-07-15T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2007-07-21T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2007-07-21T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2008-07-26T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2008-07-26T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2009-08-01T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2009-08-01T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2010-08-07T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2010-08-07T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2011-01-15T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '1.610000000000000000000000000000', 'Hypertension', '2011-01-15T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2011-08-13T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '2.100000000000000000000000000000', 'Hypertension', '2011-08-13T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2012-08-18T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2012-08-18T22:07:23Z'),
('757594', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Jolivette 28 Day Pack', '253.200000000000000000000000000000', '', '2013-02-10T22:07:23Z'),
('309362', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Clopidogrel 75 MG Oral Tablet', '7.520000000000000000000000000000', '', '2010-11-20T05:14:39Z'),
('312961', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Simvastatin 20 MG Oral Tablet', '9.400000000000000000000000000000', '', '2010-11-20T05:14:39Z'),
('197361', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Amlodipine 5 MG Oral Tablet', '5.700000000000000000000000000000', '', '2010-11-20T05:14:39Z'),
('705129', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Nitroglycerin 0.4 MG/ACTUAT Mucosal Spray', '56.200000000000000000000000000000', '', '2010-11-20T05:14:39Z'),
('309362', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Clopidogrel 75 MG Oral Tablet', '72.000000000000000000000000000000', '', '2011-11-26T05:14:39Z'),
('705129', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Nitroglycerin 0.4 MG/ACTUAT Mucosal Spray', '712.800000000000000000000000000000', '', '2011-11-26T05:14:39Z'),
('312961', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Simvastatin 20 MG Oral Tablet', '156.960000000000000000000000000000', '', '2011-11-26T05:14:39Z'),
('197361', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Amlodipine 5 MG Oral Tablet', '201.360000000000000000000000000000', '', '2011-11-26T05:14:39Z'),
('309362', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Clopidogrel 75 MG Oral Tablet', '531.000000000000000000000000000000', '', '2012-12-01T05:14:39Z'),
('705129', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Nitroglycerin 0.4 MG/ACTUAT Mucosal Spray', '308.520000000000000000000000000000', '', '2012-12-01T05:14:39Z'),
('312961', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Simvastatin 20 MG Oral Tablet', '210.120000000000000000000000000000', '', '2012-12-01T05:14:39Z'),
('197361', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Amlodipine 5 MG Oral Tablet', '63.600000000000000000000000000000', '', '2012-12-01T05:14:39Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2013-08-24T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2013-08-24T22:07:23Z'),
('389221', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Etonogestrel 68 MG Drug Implant', '3894.720000000000000000000000000000', '', '2014-03-18T22:27:34Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2014-08-30T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2014-08-30T22:07:23Z'),
('757594', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Jolivette 28 Day Pack', '250.080000000000000000000000000000', '', '2015-03-13T22:27:34Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2015-01-10T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '1.330000000000000000000000000000', 'Hypertension', '2015-01-10T22:07:23Z'),
('313782', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Acetaminophen 325 MG Oral Tablet', '2.480000000000000000000000000000', 'Acute bronchitis (disorder)', '2015-01-07T01:18:35Z'),
('309362', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Clopidogrel 75 MG Oral Tablet', '213.240000000000000000000000000000', '', '2013-12-07T05:14:39Z'),
('705129', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Nitroglycerin 0.4 MG/ACTUAT Mucosal Spray', '1543.800000000000000000000000000000', '', '2013-12-07T05:14:39Z'),
('312961', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Simvastatin 20 MG Oral Tablet', '88.800000000000000000000000000000', '', '2013-12-07T05:14:39Z'),
('197361', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Amlodipine 5 MG Oral Tablet', '112.080000000000000000000000000000', '', '2013-12-07T05:14:39Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2015-09-05T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '2.380000000000000000000000000000', 'Hypertension', '2015-09-05T22:07:23Z'),
('834102', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Penicillin V Potassium 500 MG Oral Tablet', '18.630000000000000000000000000000', 'Streptococcal sore throat (disorder)', '2015-05-08T23:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2016-09-10T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2016-09-10T22:07:23Z'),
('748962', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Camila 28 Day Pack', '234.120000000000000000000000000000', '', '2017-03-02T22:27:34Z'),
('1043400', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Acetaminophen 21.7 MG/ML / Dextromethorphan Hydrobromide 1 MG/ML / doxylamine succinate 0.417 MG/ML Oral Solution', '4.460000000000000000000000000000', 'Acute bronchitis (disorder)', '2016-08-13T17:21:36Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2017-09-16T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2017-09-16T22:07:23Z'),
('748962', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Camila 28 Day Pack', '200.880000000000000000000000000000', '', '2018-02-25T22:27:34Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2018-09-22T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2018-09-22T22:07:23Z'),
('311989', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Nitrofurantoin 5 MG/ML Oral Suspension', '510.110000000000000000000000000000', 'Escherichia coli urinary tract infection', '2018-09-17T21:07:23Z'),
('1094107', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Phenazopyridine hydrochloride 100 MG Oral Tablet', '18.380000000000000000000000000000', 'Escherichia coli urinary tract infection', '2018-09-17T21:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2019-09-28T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2019-09-28T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2020-10-03T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2020-10-03T22:07:23Z'),
('309362', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Clopidogrel 75 MG Oral Tablet', '144.360000000000000000000000000000', '', '2014-12-13T05:14:39Z'),
('705129', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Nitroglycerin 0.4 MG/ACTUAT Mucosal Spray', '728.880000000000000000000000000000', '', '2014-12-13T05:14:39Z'),
('312961', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Simvastatin 20 MG Oral Tablet', '174.480000000000000000000000000000', '', '2014-12-13T05:14:39Z'),
('197361', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Amlodipine 5 MG Oral Tablet', '311.280000000000000000000000000000', '', '2014-12-13T05:14:39Z'),
('309362', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Clopidogrel 75 MG Oral Tablet', '164.640000000000000000000000000000', '', '2015-12-19T05:14:39Z'),
('705129', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Nitroglycerin 0.4 MG/ACTUAT Mucosal Spray', '718.560000000000000000000000000000', '', '2015-12-19T05:14:39Z'),
('312961', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Simvastatin 20 MG Oral Tablet', '196.200000000000000000000000000000', '', '2015-12-19T05:14:39Z'),
('197361', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Amlodipine 5 MG Oral Tablet', '79.080000000000000000000000000000', '', '2015-12-19T05:14:39Z'),
('309362', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Clopidogrel 75 MG Oral Tablet', '603.600000000000000000000000000000', '', '2016-12-24T05:14:39Z'),
('705129', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Nitroglycerin 0.4 MG/ACTUAT Mucosal Spray', '1198.080000000000000000000000000000', '', '2016-12-24T05:14:39Z'),
('312961', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Simvastatin 20 MG Oral Tablet', '42.720000000000000000000000000000', '', '2016-12-24T05:14:39Z'),
('197361', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Amlodipine 5 MG Oral Tablet', '382.320000000000000000000000000000', '', '2016-12-24T05:14:39Z'),
('748962', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Camila 28 Day Pack', '276.240000000000000000000000000000', '', '2021-09-21T22:07:23Z'),
('310798', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Hydrochlorothiazide 25 MG Oral Tablet', '0.000000000000000000000000000000', 'Hypertension', '2021-10-09T22:07:23Z'),
('314076', '5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'lisinopril 10 MG Oral Tablet', '3.710000000000000000000000000000', 'Hypertension', '2021-10-09T22:07:23Z');

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE `Patient` (
  `pID` varchar(255) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `SSN` varchar(255) NOT NULL,
  `ethnicity` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Patient`
--

INSERT INTO `Patient` (`pID`, `first`, `last`, `gender`, `DOB`, `SSN`, `ethnicity`, `street`, `city`, `state`, `zip`, `userID`) VALUES
('0354645f-84ae-a2bf-aedc-521b1c570f60', 'Bart73', 'Macejkovic424', 'M', '12/25/28', '999-95-6272', 'hispanic', '573 Block Track Apt 58', 'Boston', 'Massachusetts', '2203', 13),
('06f12012-769b-05d5-88b4-ac2c33329580', 'Holley125', 'Faye398', 'F', '12/8/51', '999-63-7137', 'nonhispanic', '948 Welch Plaza', 'Pepperell', 'Massachusetts', '1463', 48),
('0a33823c-ea8d-51c3-7e5b-f1821a5e6b48', 'Cleo27', 'Maggio310', 'F', '4/12/54', '999-24-1529', 'hispanic', '373 Huel Ramp Suite 87', 'Harvard', 'Massachusetts', '', 21),
('0a859c31-a1e5-03ee-7e60-c3661644185f', 'Annett908', 'VonRueden376', 'F', '3/6/58', '999-74-9029', 'nonhispanic', '180 Jacobs Dale', 'Wellesley', 'Massachusetts', '2481', 10),
('10c0514d-43fa-d3b6-2263-b0db9c8d7428', 'Zena758', 'Paucek755', 'F', '1/16/24', '999-75-3742', 'nonhispanic', '129 D\'Amore Annex', 'Lowell', 'Massachusetts', '1852', 98),
('1187c2f0-98ae-e0ef-bbaf-c18ca0ee43c1', 'Dorthea49', 'Blick895', 'F', '2/22/44', '999-44-9516', 'hispanic', '173 O\'Keefe Union', 'New Bedford', 'Massachusetts', '2746', 27),
('124eb1cd-ddde-f4b1-a466-07fd3e725ac7', 'Andrew29', 'Schiller186', 'M', '12/25/28', '999-61-8108', 'hispanic', '1012 Cummings Bypass Unit 90', 'Boston', 'Massachusetts', '2113', 6),
('13192f42-775a-d0a8-c2bb-c6acdf6c44cd', 'Gary33', 'Donnelly343', 'M', '3/1/31', '999-75-1807', 'nonhispanic', '515 Gleichner Walk', 'Newton', 'Massachusetts', '2466', 45),
('183df435-4190-060e-8f8e-bf63c572b266', 'Eilene124', 'Walsh511', 'F', '11/8/57', '999-56-1679', 'nonhispanic', '235 Lang Parade', 'Cambridge', 'Massachusetts', '2142', 31),
('1a9bd5b5-5567-7e0f-8ffb-e29abdd9a732', 'Raven88', 'Halvorson124', 'F', '5/17/81', '999-11-3556', 'nonhispanic', '777 Donnelly Boulevard Apt 84', 'Montague', 'Massachusetts', '', 84),
('1b1c8491-fcd0-93f0-d73e-ab2d0f95714b', 'Sadye922', 'Schiller186', 'F', '3/31/88', '999-92-1166', 'nonhispanic', '547 Mills Track Suite 4', 'Plymouth', 'Massachusetts', '2360', 85),
('1f601bc3-727b-c0bc-a420-8ae8f467910b', 'Lamont867', 'Herzog843', 'M', '4/27/31', '999-27-4277', 'nonhispanic', '484 Rowe Ville', 'Whitman', 'Massachusetts', '', 58),
('217851b0-5f47-d376-18b9-0fe4ba77207e', 'Adrian111', 'Gleason633', 'M', '3/6/54', '999-65-4160', 'hispanic', '808 Gottlieb Wall', 'Boston', 'Massachusetts', '2126', 3),
('23832f5d-e045-2541-1626-a65dce9bbcf7', 'Magan944', 'Green467', 'F', '4/13/72', '999-89-5858', 'nonhispanic', '427 Jakubowski Viaduct Unit 76', 'Edgartown', 'Massachusetts', '', 66),
('250733f1-bf9b-941a-609b-6d2b07717282', 'Beverlee316', 'Hartmann983', 'F', '2/22/44', '999-45-3609', 'hispanic', '681 Runolfsson Landing Apt 76', 'New Bedford', 'Massachusetts', '2748', 14),
('2853ca5a-7862-68c8-07d1-3d7fa2d6ae27', 'Stuart913', 'Goyette777', 'M', '10/8/36', '999-98-5226', 'nonhispanic', '256 Maggio Ferry Apt 45', 'Attleboro', 'Massachusetts', '', 89),
('2adaad93-a3c3-2835-f74f-8198b64cffd0', 'Carol737', 'Konopelski743', 'M', '3/1/31', '999-11-7127', 'nonhispanic', '923 Grady Ferry Unit 90', 'Newton', 'Massachusetts', '', 17),
('2ed6f63a-f360-b469-fe05-45e4acfc9ac4', 'Thao506', 'Tromp100', 'F', '6/20/58', '999-24-9727', 'nonhispanic', '154 Dickens Club Unit 47', 'Quincy', 'Massachusetts', '2186', 90),
('34e019a7-c8d5-e9f1-8c4c-e02dc723cd15', 'Samuel331', 'Cummerata161', 'F', '12/26/31', '999-68-7140', 'nonhispanic', '490 Beahan Wall Unit 2', 'Lunenburg', 'Massachusetts', '1462', 86),
('3bb3498b-b251-1252-c3a5-b2d291457123', 'Elroy493', 'Gusikowski974', 'M', '6/11/52', '999-34-1244', 'nonhispanic', '985 Ebert Path', 'North Falmouth', 'Massachusetts', '2556', 33),
('3ddd9f80-f2da-eddb-97b1-9796deee7b8c', 'Jessie665', 'Larkin917', 'M', '12/25/28', '999-83-7440', 'hispanic', '1059 Bechtelar Wall Unit 58', 'Boston', 'Massachusetts', '2120', 54),
('3f456b18-65d7-e0cf-052c-32a52ed12d5c', 'Jammie261', 'Huels583', 'F', '6/19/77', '999-96-2983', 'nonhispanic', '533 Feeney Bay Apt 46', 'Walpole', 'Massachusetts', '2081', 53),
('4d3dc07c-a4e0-dc43-9d7b-0353d71e405f', 'Dania217', 'Gottlieb798', 'F', '1/30/27', '999-67-6637', 'nonhispanic', '1031 Kerluke Terrace', 'Pittsfield', 'Massachusetts', '1201', 23),
('518bc4a7-676a-c07d-6e9d-e6f9662fa001', 'Dannette613', 'Luettgen772', 'F', '5/3/81', '999-20-6252', 'nonhispanic', '293 Mitchell Dale', 'Worcester', 'Massachusetts', '1604', 24),
('51e2a198-bdc2-80ec-806a-e63544c9e95d', 'Ezequiel972', 'Sauer652', 'M', '4/27/31', '999-93-6439', 'nonhispanic', '598 Senger Mission', 'Whitman', 'Massachusetts', '', 39),
('537034b9-992e-f8b3-4b7e-ee2c75ae6e75', 'Leopoldo762', 'Lockman863', 'M', '11/8/54', '999-45-8495', 'nonhispanic', '327 Schaden Parade Suite 29', 'Hingham', 'Massachusetts', '', 60),
('54588b00-0bba-8d94-bdd2-c1b43ea26fa7', 'Anisa442', 'Schuppe920', 'F', '11/5/23', '999-23-8095', 'nonhispanic', '881 Boyle Wall', 'Mashpee', 'Massachusetts', '', 8),
('5605b66b-e92d-c16c-1b83-b8bf7040d51f', 'Nikita578', 'Erdman779', 'F', '3/19/77', '999-94-9633', 'nonhispanic', '510 Little Station Unit 69', 'Quincy', 'Massachusetts', '2186', 77),
('58aa3b69-1ec8-5bd1-21c9-f946e682e37f', 'Jamaal34', 'Zieme486', 'M', '2/1/43', '999-90-3903', 'nonhispanic', '551 Kemmer Rest Suite 45', 'Dracut', 'Massachusetts', '', 52),
('5ade7563-6157-6408-e3d8-9f3daa6304c1', 'Freddy176', 'Balistreri607', 'M', '2/1/56', '999-10-6370', 'nonhispanic', '494 Ebert Row Suite 76', 'Amesbury', 'Massachusetts', '', 42),
('5c457d84-8f3c-6993-484e-bea13266fe58', 'Fidel864', 'Hirthe744', 'M', '12/27/72', '999-80-4898', 'nonhispanic', '700 Terry Rue Unit 67', 'Barnstable', 'Massachusetts', '2648', 40),
('5f30f184-10f7-6e87-905e-1f3a634a1260', 'Hunter736', 'Hagenes547', 'M', '4/27/31', '999-63-1471', 'nonhispanic', '548 Lemke Annex Unit 62', 'Whitman', 'Massachusetts', '', 50),
('621532aa-4366-cfec-1898-d427cc9732f4', 'Dwight645', 'Waters156', 'M', '3/1/31', '999-66-6709', 'nonhispanic', '666 MacGyver Rue Apt 45', 'Newton', 'Massachusetts', '2467', 29),
('6404c205-838e-42dc-cd11-f1188b807938', 'Dustin31', 'Simonis280', 'M', '12/25/28', '999-58-2969', 'hispanic', '734 Friesen Estate', 'Boston', 'Massachusetts', '2130', 28),
('648a4b53-0be3-48d5-b202-d8e32e3bedd8', 'Yanira774', 'Luettgen772', 'F', '1/16/24', '999-25-1882', 'nonhispanic', '676 Cassin Park', 'Lowell', 'Massachusetts', '1850', 97),
('657bac7d-e15f-8248-3d62-aa6422fd39fc', 'Maegan141', 'Keebler762', 'F', '1/30/27', '999-61-6089', 'nonhispanic', '351 Walker Drive Apt 43', 'Pittsfield', 'Massachusetts', '', 65),
('689da5a6-fe82-4c08-a592-1f5311a57f1d', 'Antoine384', 'Yundt842', 'M', '10/30/26', '999-16-5353', 'nonhispanic', '391 Moen Trace Unit 29', 'Boston', 'Massachusetts', '2210', 11),
('6abf5ea2-3b2c-1f33-f2cc-88fd1bfa40dd', 'Cecila397', 'Gerhold939', 'F', '4/9/38', '999-71-4553', 'nonhispanic', '873 Hane Union', 'Royalston', 'Massachusetts', '', 19),
('6ba3aa40-7557-835d-5751-f40ad4edf832', 'Carlos172', 'Pulido715', 'M', '9/20/30', '999-45-3094', 'hispanic', '834 Treutel Plaza', 'Boston', 'Massachusetts', '2203', 16),
('6cb48da4-921a-3f0c-4acc-ed707f859046', 'Noel608', 'Cremin516', 'M', '5/22/48', '999-37-2289', 'nonhispanic', '932 Considine Passage Apt 90', 'Chelmsford', 'Massachusetts', '', 78),
('6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f', 'Man114', 'Kautzer186', 'M', '3/1/31', '999-11-5078', 'nonhispanic', '295 Davis Meadow Apt 92', 'Newton', 'Massachusetts', '2464', 68),
('6e5ae27c-8038-7988-e2c0-25a103f01bfa', 'Zane918', 'Hodkiewicz467', 'M', '2/19/40', '999-83-7940', 'nonhispanic', '747 Conn Throughway', 'Boston', 'Massachusetts', '2135', 98),
('6f8ed8a1-93ba-f3fe-6ecb-dba289f80ea4', 'Trent525', 'Berge125', 'M', '7/30/86', '999-66-1282', 'nonhispanic', '855 Smith Orchard', 'Amherst', 'Massachusetts', '', 92),
('6fcd1c63-7582-8b87-6673-500355894852', 'Simon598', 'Waelchi213', 'M', '12/12/36', '999-89-1317', 'nonhispanic', '1044 Gislason Ranch Suite 52', 'Stoughton', 'Massachusetts', '', 87),
('70bc8ab9-174f-0df9-eae4-9074292a11d6', 'Mariano761', 'Olivas524', 'M', '9/20/30', '999-13-8139', 'hispanic', '1014 Cormier Terrace Suite 66', 'Boston', 'Massachusetts', '2203', 69),
('71d71612-4ebe-18f4-233c-1c31cf4d375e', 'Fredrick998', 'Swift555', 'M', '2/8/74', '999-96-6007', 'nonhispanic', '661 Runolfsson Branch', 'Boston', 'Massachusetts', '2110', 43),
('720560d4-51da-c38c-ee90-c15935278df1', 'Lowell343', 'Price929', 'M', '6/27/72', '999-85-6714', 'nonhispanic', '694 Kuhlman Corner Apt 74', 'Quincy', 'Massachusetts', '2170', 63),
('74c24e72-de7a-4e21-913a-f0297b9bc72b', 'Stanley702', 'Hickle134', 'M', '3/1/31', '999-33-8525', 'nonhispanic', '1006 Boyle Mews Unit 75', 'Newton', 'Massachusetts', '2467', 88),
('770518e4-6133-648e-60c9-071eb2f0e2ce', 'Abel832', 'Smitham825', 'M', '12/25/28', '999-33-6334', 'hispanic', '127 Cole Way Unit 95', 'Boston', 'Massachusetts', '2118', 1),
('7bc96f89-ebde-f23a-8203-c24f3a8e9a07', 'Kaycee352', 'Harris789', 'F', '2/10/73', '999-10-7222', 'nonhispanic', '1016 Parisian Burg Apt 74', 'Springfield', 'Massachusetts', '1020', 55),
('7dd67d86-aa0a-3d50-fa5c-e409617fec76', 'Mohamed943', 'Cartwright189', 'M', '12/25/28', '999-79-3126', 'hispanic', '777 Mohr Alley', 'Boston', 'Massachusetts', '2124', 76),
('7ec9c50e-9a51-8397-8e1e-03507f103fab', 'Zita788', 'MacGyver246', 'F', '4/10/34', '999-36-9357', 'nonhispanic', '189 Cummings Green Unit 63', 'Hanover', 'Massachusetts', '', 100),
('8123d076-0886-9007-e956-d5864aa121a7', 'Quinn173', 'Marquardt819', 'M', '6/4/58', '999-67-5979', 'nonhispanic', '816 Okuneva Extension Apt 91', 'Quincy', 'Massachusetts', '2170', 81),
('83bca13b-f50d-eb82-02af-51101ff01ae9', 'Mickey576', 'Hilpert278', 'M', '10/8/36', '999-92-2195', 'nonhispanic', '100 VonRueden Burg Suite 16', 'Attleboro', 'Massachusetts', '2861', 73),
('84a69a69-4309-1549-de32-083332b13d56', 'Marty115', 'Hessel84', 'M', '11/4/62', '999-57-6030', 'nonhispanic', '413 Olson Forge', 'Westport', 'Massachusetts', '', 71),
('8860d8e2-6471-7e22-4b85-c4bd4e6599a8', 'Lloyd546', 'Weissnat378', 'M', '3/1/31', '999-76-5752', 'nonhispanic', '489 Hills Burg Suite 71', 'Newton', 'Massachusetts', '2468', 61),
('8862088b-5c23-7ae0-41cb-d9c6b9fafff5', 'Kirk871', 'Prosacco716', 'M', '2/1/43', '999-61-8354', 'nonhispanic', '993 Hand Street Apt 97', 'Dracut', 'Massachusetts', '', 56),
('8c29a625-c292-b2e2-4c1f-abcb7bc2a5f6', 'Willy639', 'Borer986', 'M', '10/8/36', '999-90-2197', 'nonhispanic', '240 Maggio Dale', 'Attleboro', 'Massachusetts', '2703', 95),
('8e9650d1-788a-78f9-4a28-d08f7f95354a', 'Frankie174', 'Oberbrunner298', 'M', '12/25/28', '999-30-9997', 'hispanic', '303 Bechtelar Bypass Suite 26', 'Boston', 'Massachusetts', '2467', 41),
('93e54313-8a07-9cd9-6eb9-085b621fcf82', 'Evonne919', 'Hansen121', 'F', '8/4/46', '999-76-9231', 'nonhispanic', '534 Wilkinson Parade', 'Lynnfield', 'Massachusetts', '', 38),
('93f23e19-e2e2-4bc5-f7a5-de52a3637d60', 'Valene773', 'Okuneva707', 'F', '5/7/41', '999-34-7178', 'nonhispanic', '969 Hilpert Arcade Apt 1', 'Billerica', 'Massachusetts', '', 94),
('94d39619-8e17-d248-41b3-9ec1f2d031b2', 'Emmett200', 'Collins926', 'M', '11/8/54', '999-84-3708', 'nonhispanic', '675 Ortiz Mission Unit 59', 'Hingham', 'Massachusetts', '2043', 34),
('a4e89ca1-2d08-a775-cd47-526bbc80f6ea', 'Gayle448', 'Smith67', 'M', '12/25/28', '999-75-3007', 'hispanic', '512 Kuhic Alley Unit 28', 'Boston', 'Massachusetts', '2116', 47),
('a61c45e8-d5dc-739a-480b-64c695461ff1', 'Malik994', 'Gerhold939', 'M', '7/14/69', '999-42-6942', 'nonhispanic', '415 Bashirian Walk Apt 10', 'Quincy', 'Massachusetts', '2171', 67),
('a8bb6851-ab1e-ece1-d333-05a375683690', 'Xiao631', 'Kerluke267', 'F', '1/16/24', '999-59-8829', 'nonhispanic', '131 Pfannerstill Tunnel', 'Lowell', 'Massachusetts', '1854', 96),
('ac8fed9d-fbb2-314b-d262-4221eab2522c', 'Luciano237', 'Graham902', 'M', '10/24/58', '999-84-7764', 'nonhispanic', '307 Upton Dale', 'Pittsfield', 'Massachusetts', '', 64),
('ad362b64-31b4-8fa3-c760-38d0e5cacc1c', 'Anamaria46', 'Toy286', 'F', '1/16/24', '999-31-7031', 'nonhispanic', '268 Klocko Highlands', 'Lowell', 'Massachusetts', '1851', 5),
('b1c4449e-8f60-b4e2-83ad-4c8891b534e6', 'Christoper325', 'Jerde200', 'M', '12/12/36', '999-73-2099', 'nonhispanic', '781 Bernhard Trail', 'Stoughton', 'Massachusetts', '', 20),
('b2049305-5896-e051-b8c3-16bcdca19289', 'Cammy883', 'Kautzer186', 'F', '11/8/57', '999-66-8863', 'nonhispanic', '872 Corkery Throughway', 'Cambridge', 'Massachusetts', '', 15),
('b329f512-ea76-1760-7b84-45dad90cfbb1', 'Marinda592', 'Bogan287', 'F', '4/18/33', '999-68-1809', 'nonhispanic', '816 Zulauf View Apt 81', 'Fitchburg', 'Massachusetts', '', 70),
('b42ebbb4-ba77-c0b7-b8f5-b23915921622', 'Dallas143', 'Prosacco716', 'M', '11/4/62', '999-93-6030', 'nonhispanic', '531 Simonis Key Suite 40', 'Westport', 'Massachusetts', '', 22),
('b90c0d9b-101c-de2b-f4c2-bd300705429d', 'Latonia966', 'Frami345', 'F', '2/7/82', '999-98-9017', 'nonhispanic', '364 D\'Amore Crossroad Unit 72', 'Wellesley', 'Massachusetts', '2492', 59),
('bc5ed545-7992-d053-11da-00487d812536', 'Kyle55', 'Wyman904', 'M', '3/1/31', '999-95-3899', 'nonhispanic', '478 Kirlin Hollow Suite 1', 'Newton', 'Massachusetts', '2460', 57),
('bcd441d2-761f-b584-b1f2-f025d90ba022', 'Norbert530', 'Sipes176', 'M', '5/13/49', '999-17-1999', 'nonhispanic', '956 Bernier Extension', 'Medford', 'Massachusetts', '2145', 79),
('c06a2ab3-c3b1-a3d0-7c12-262a12c6885e', 'Miguel Angel46', 'Atencio773', 'M', '7/3/36', '999-76-5032', 'hispanic', '1022 Hermann Quay Suite 79', 'Springfield', 'Massachusetts', '1118', 74),
('c2b2d9ce-ebad-f0d0-56f2-e784556f0531', 'Paris331', 'Daniel959', 'M', '12/25/28', '999-55-7973', 'hispanic', '928 Bosco Ville Apt 19', 'Boston', 'Massachusetts', '2122', 80),
('c5e505f9-40be-9e3c-28f1-5ef511cd9719', 'Ethan766', 'Smith67', 'M', '4/27/31', '999-43-3350', 'nonhispanic', '1030 Barrows Skyway', 'Whitman', 'Massachusetts', '', 35),
('c719203f-0cb7-42e7-9cb2-c2ec32b99353', 'Evalyn273', 'Zieme486', 'F', '7/18/55', '999-74-3295', 'nonhispanic', '805 Stark Row', 'Wrentham', 'Massachusetts', '', 37),
('c7273f7a-601f-8885-3715-efd12b90397d', 'Gayle444', 'Bradtke547', 'M', '5/10/55', '999-59-7863', 'nonhispanic', '253 Ondricka Row Unit 19', 'Cochituate', 'Massachusetts', '', 46),
('c92e78ef-ee20-8da7-bd9c-5069dc69c82f', 'Angelo118', 'Baumbach677', 'M', '12/24/62', '999-88-5924', 'nonhispanic', '109 Weissnat Mews', 'Salisbury', 'Massachusetts', '1952', 7),
('cc3daea9-2d23-52e3-08d4-00caace42d07', 'Iesha760', 'Wuckert783', 'F', '11/6/89', '999-23-7393', 'nonhispanic', '246 Beatty Gateway Unit 31', 'Methuen', 'Massachusetts', '1844', 51),
('cf236937-d987-f82a-5744-2e4fb2d6f5cc', 'Antonette454', 'Heaney114', 'F', '1/16/24', '999-58-4787', 'nonhispanic', '630 Wilkinson Landing', 'Lowell', 'Massachusetts', '1850', 12),
('cf4a4560-ddd4-f904-ad6e-97e9378ea64c', 'Gabriela205', 'Cantú190', 'F', '12/15/48', '999-68-8656', 'hispanic', '296 Langworth Dam Apt 50', 'Newton', 'Massachusetts', '2462', 44),
('d338ce73-ec70-25ce-0d66-6616ae5aae13', 'Dante562', 'Hilpert278', 'M', '11/3/71', '999-91-5675', 'nonhispanic', '183 Wilderman Club Apt 23', 'Lawrence', 'Massachusetts', '1840', 25),
('d376b758-635b-0b49-2e64-9fa7b3e88033', 'Lorrie905', 'Spencer878', 'F', '1/16/24', '999-18-9141', 'nonhispanic', '558 Little Spur Apt 31', 'Lowell', 'Massachusetts', '', 62),
('d536c0da-c3c8-edca-ebc5-24ee565621a2', 'Quinn177', 'Sauer652', 'M', '6/4/58', '999-78-1409', 'nonhispanic', '1062 Ernser Forge Apt 97', 'Quincy', 'Massachusetts', '2169', 82),
('db0c781e-8511-1ce6-0c36-c259fff73e26', 'Horace32', 'Dare640', 'M', '1/16/48', '999-82-1149', 'nonhispanic', '849 Beahan Fork Apt 63', 'North Amherst', 'Massachusetts', '1059', 49),
('ddc122e7-c735-5f62-a3be-a83cd1f95a7c', 'Toi270', 'Rempel203', 'F', '4/12/54', '999-68-8552', 'hispanic', '752 Ferry Lane Unit 83', 'Harvard', 'Massachusetts', '', 91),
('e0b4961a-4849-de83-1390-b5fcd24fbafb', 'Raquel318', 'Stark857', 'F', '6/19/77', '999-95-3797', 'nonhispanic', '652 Daugherty Heights Apt 95', 'Walpole', 'Massachusetts', '2081', 83),
('ebfa5f8b-6aa8-6f80-1cad-1221a00b6933', 'Donnie175', 'Brakus656', 'M', '7/10/27', '999-39-3433', 'hispanic', '285 Pagac Camp Unit 74', 'Boston', 'Massachusetts', '2118', 26),
('f3c14569-8acf-ffc8-a688-962309d7e599', 'Adolfo777', 'Collier206', 'M', '3/1/31', '999-70-6991', 'nonhispanic', '137 Ronan Forge', 'Newton', 'Massachusetts', '2459', 2),
('f3d4ebb8-a0db-f0e6-8c22-0a555525b372', 'Catrina144', 'Douglas31', 'F', '5/22/85', '999-62-7794', 'hispanic', '482 Glover Common Apt 33', 'Westwood', 'Massachusetts', '', 18),
('f40e9fd7-1cb8-9423-9d04-dbea3cb66be1', 'Valencia279', 'Haley279', 'F', '11/5/23', '999-39-3665', 'nonhispanic', '785 Smitham Lodge', 'Mashpee', 'Massachusetts', '', 93),
('f96addf5-81b9-0aab-7855-d208d3d352c5', 'Edwin773', 'Labadie908', 'M', '12/25/28', '999-45-9661', 'hispanic', '976 Ziemann Gateway', 'Boston', 'Massachusetts', '2125', 30),
('fa9ee76e-89ed-f43c-2eb0-64544a9a8b45', 'Marybelle759', 'Davis923', 'F', '1/26/61', '999-91-1598', 'hispanic', '386 Green Avenue Apt 86', 'Springfield', 'Massachusetts', '1129', 72),
('fe60bdf4-84fd-fb52-186b-d5bb03d467d3', 'Elmo857', 'Collier206', 'M', '4/27/31', '999-70-3326', 'nonhispanic', '147 Wehner Corner Unit 81', 'Whitman', 'Massachusetts', '', 32),
('fea1ff3a-e86f-7562-f8ae-9270fa8c6561', 'Alfonso758', 'Denesik803', 'M', '12/25/28', '999-82-6976', 'hispanic', '316 Parker Ramp Apt 60', 'Boston', 'Massachusetts', '2163', 4),
('febefd51-6130-5e0e-34ed-2ccce47be271', 'Annabelle638', 'Swift555', 'F', '7/16/41', '999-44-6750', 'nonhispanic', '268 Rogahn Light', 'Fall River', 'Massachusetts', '2724', 9),
('ff331e5c-ab16-e218-f39a-63e11de1ed75', 'Eugene421', 'Abernathy524', 'M', '7/10/27', '999-66-4568', 'hispanic', '706 Connelly Track Unit 1', 'Boston', 'Massachusetts', '2111', 36),
('ff5a900f-1148-9ac5-c4a4-86b72176570e', 'Mohamed94', 'Cole117', 'M', '4/27/31', '999-98-1224', 'nonhispanic', '868 Hoppe Overpass', 'Whitman', 'Massachusetts', '', 75);

-- --------------------------------------------------------

--
-- Table structure for table `Prescribes`
--

CREATE TABLE `Prescribes` (
  `docID` varchar(255) NOT NULL,
  `mCode` varchar(255) NOT NULL,
  `pID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Prescribes`
--

INSERT INTO `Prescribes` (`docID`, `mCode`, `pID`) VALUES
('06b4eaf4-15aa-c9ac-20f3-3d00712a8edc', '443402002', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('0d4bd632-9008-32ab-4fc8-b417d131318b', '443402002', '74c24e72-de7a-4e21-913a-f0297b9bc72b'),
('0e974801-0819-32e5-72fb-c7ebe4fb9b6b', '133901003', 'febefd51-6130-5e0e-34ed-2ccce47be271'),
('104189b4-3271-56f7-414b-61c313eaf645', '412776001', '94d39619-8e17-d248-41b3-9ec1f2d031b2'),
('131ab4c8-5571-5c29-94c9-4cc7aa69c693', '736376001', 'febefd51-6130-5e0e-34ed-2ccce47be271'),
('177c0569-1c24-6738-004b-400d957bdbba', '773513001', '5ade7563-6157-6408-e3d8-9f3daa6304c1'),
('1bb3fb33-8556-b85b-fc64-f5ed694fe66b', '736252007', '6ba3aa40-7557-835d-5751-f40ad4edf832'),
('1cf1ed1c-55f9-e599-4372-df1c0d899af9', '133901003', 'd536c0da-c3c8-edca-ebc5-24ee565621a2'),
('1edb4c61-52b3-1622-236f-740c740827f7', '736353004', '6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f'),
('23bc501f-93cf-3e9d-3a8b-7688d2bf324c', '736285004', 'f3c14569-8acf-ffc8-a688-962309d7e599'),
('2deba3a9-6ee4-d022-aaae-1a2ddc886c71', '386257007', 'ad362b64-31b4-8fa3-c760-38d0e5cacc1c'),
('32370b6a-faab-4908-e174-ee751233208c', '134435003', '23832f5d-e045-2541-1626-a65dce9bbcf7'),
('36104ec5-f234-172c-c7b1-6debe6284604', '53950000', 'd536c0da-c3c8-edca-ebc5-24ee565621a2'),
('3ad37233-3218-f137-1fa8-4de22a334ced', '134435003', '518bc4a7-676a-c07d-6e9d-e6f9662fa001'),
('3adbf728-7f0e-722d-3001-c0245f1fbf88', '276239002', '70bc8ab9-174f-0df9-eae4-9074292a11d6'),
('3bd363b1-2827-dc9e-687a-35ffde65504f', '134435003', 'b90c0d9b-101c-de2b-f4c2-bd300705429d'),
('3db72576-ea5f-6543-9021-1d7fd5c64f3e', '443402002', '657bac7d-e15f-8248-3d62-aa6422fd39fc'),
('3f3448c5-2bac-ec57-1d2c-a712726ad6a4', '443402002', 'f3c14569-8acf-ffc8-a688-962309d7e599'),
('41470c24-0844-59f9-da76-3134fcc80957', '408869004', '6404c205-838e-42dc-cd11-f1188b807938'),
('41cc1926-cf85-d2ad-1558-2e7c201f93f5', '134435003', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('43c7a12f-c316-34c5-0701-e6f035500c2b', '736285004', '689da5a6-fe82-4c08-a592-1f5311a57f1d'),
('44360e57-e250-c5a5-c073-96d4c3eaf9b8', '773513001', 'f3c14569-8acf-ffc8-a688-962309d7e599'),
('471fa2a3-10c1-6157-7416-f428f4f26cdd', '385691007', '06f12012-769b-05d5-88b4-ac2c33329580'),
('47d8d362-e440-a4f0-bf46-2cac96ae7794', '182964004', '74c24e72-de7a-4e21-913a-f0297b9bc72b'),
('48234743-b15f-a182-8e78-d99ab8c7a836', '385691007', '6abf5ea2-3b2c-1f33-f2cc-88fd1bfa40dd'),
('4b99242f-080a-9f93-312b-2df18c589861', '53950000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('4e27c3f5-c50d-7be6-c4bf-c0d7ed138f6e', '736285004', '6ba3aa40-7557-835d-5751-f40ad4edf832'),
('503c60fb-9872-69cb-ad32-e6ab04d9c041', '385691007', 'ad362b64-31b4-8fa3-c760-38d0e5cacc1c'),
('515c1315-0899-b4b9-b343-8f51ad616ff7', '698360004', '6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f'),
('55d89f15-562d-fdf1-1990-1fa3a5ad4f74', '699728000', '518bc4a7-676a-c07d-6e9d-e6f9662fa001'),
('5e6e3c97-57f4-1679-00ad-58f3e3b7da03', '53950000', '5ade7563-6157-6408-e3d8-9f3daa6304c1'),
('6324ac75-a3b5-3458-5f3d-b8da17b91a6c', '698360004', '94d39619-8e17-d248-41b3-9ec1f2d031b2'),
('639eb824-d4c9-d254-3008-cccaa38ae3ce', '53950000', 'febefd51-6130-5e0e-34ed-2ccce47be271'),
('6b2a02f6-549e-df84-0dbc-e66c24a43ca4', '408869004', '657bac7d-e15f-8248-3d62-aa6422fd39fc'),
('6f574324-f9b6-a0da-ca5e-870039fc7096', '718361005', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('73fe6f1e-d2de-f03b-0b46-db96408892f7', '443402002', 'f3d4ebb8-a0db-f0e6-8c22-0a555525b372'),
('74bf4cfd-2f56-c6e2-377b-7699ec91551a', '53950000', '8123d076-0886-9007-e956-d5864aa121a7'),
('75c44f5c-9082-5382-d7ed-735e39ea37bd', '53950000', '5ade7563-6157-6408-e3d8-9f3daa6304c1'),
('76fbaf79-4193-9dab-04b1-bd9bf81b7263', '134435003', '23832f5d-e045-2541-1626-a65dce9bbcf7'),
('77272156-4269-d2ce-33d6-55ed23490264', '53950000', '6404c205-838e-42dc-cd11-f1188b807938'),
('780dae99-3508-f279-44a2-da14b4ae320a', '53950000', '537034b9-992e-f8b3-4b7e-ee2c75ae6e75'),
('7986ffd6-1744-3f56-e97d-df57913fa0ae', '735984001', '6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f'),
('80b4fadb-bc0d-daff-0101-27aba6a747de', '736353004', '6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f'),
('83ee5f9f-fd41-bd01-5c05-2ed322abd518', '385691007', '70bc8ab9-174f-0df9-eae4-9074292a11d6'),
('89f3d5f8-f279-3a0c-eacf-b670a5e9b058', '134435003', '518bc4a7-676a-c07d-6e9d-e6f9662fa001'),
('8c3787b8-a3ee-0b88-8310-876936075bc5', '53950000', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('8fe937bc-71c0-0a6a-9f40-7dfbc9b4f3da', '443402002', '5ade7563-6157-6408-e3d8-9f3daa6304c1'),
('9003bad9-dd28-dd3a-696d-b1056ea0ac3a', '736353004', '6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f'),
('90ab7616-0f3d-8d74-52b6-70630098d5a1', '7.81831E+14', '6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f'),
('90e1ed53-199b-71d1-a1aa-b9a8cabeace1', '736285004', 'febefd51-6130-5e0e-34ed-2ccce47be271'),
('91abd059-a9d9-99d5-daf4-9bc33effe504', '53950000', '657bac7d-e15f-8248-3d62-aa6422fd39fc'),
('91ee24dd-0720-536c-b495-d65a4137b236', '134435003', '23832f5d-e045-2541-1626-a65dce9bbcf7'),
('920cf01c-9010-0383-dd60-3e220086982e', '736376001', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('97d298f0-8b29-7795-1536-9c3f7dd7a5c9', '276239002', '3bb3498b-b251-1252-c3a5-b2d291457123'),
('98e376f9-32e7-f6a4-e2db-084a37f6a605', '736376001', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('9af796fc-782a-d23d-6b95-9ba7cf775773', '408869004', '6abf5ea2-3b2c-1f33-f2cc-88fd1bfa40dd'),
('a154b0ae-e1f6-404e-09d3-19b89919a9b1', '736252007', '70bc8ab9-174f-0df9-eae4-9074292a11d6'),
('a891b567-bb3e-539d-e958-8af2324c6cf2', '698360004', 'b1c4449e-8f60-b4e2-83ad-4c8891b534e6'),
('a8c640c6-4008-4729-90be-324791082ecc', '698360004', '6ba3aa40-7557-835d-5751-f40ad4edf832'),
('afb3e0c1-be96-8483-c13f-7505d0e595c5', '736353004', '6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f'),
('afccfe63-ebe6-476f-41bc-1da9475933e3', '53950000', 'd536c0da-c3c8-edca-ebc5-24ee565621a2'),
('b13dc360-001f-397c-e624-89cea2abeee9', '698360004', '3bb3498b-b251-1252-c3a5-b2d291457123'),
('b2722b20-07a1-1b8b-72d1-99d27666835c', '698360004', '6abf5ea2-3b2c-1f33-f2cc-88fd1bfa40dd'),
('b34b6cba-47a7-b1ac-f3ee-51b3df59596b', '225358003', '6404c205-838e-42dc-cd11-f1188b807938'),
('b50f9db4-14b2-0e5f-3b14-15e854057e14', '736285004', '06f12012-769b-05d5-88b4-ac2c33329580'),
('b6448806-6b58-4207-1534-8c389e0d8dd4', '385691007', '657bac7d-e15f-8248-3d62-aa6422fd39fc'),
('b9297bb0-48db-c497-a55a-28b87ca36328', '385691007', '74c24e72-de7a-4e21-913a-f0297b9bc72b'),
('b953d90e-1d5d-e929-2c86-58e9b5249989', '53950000', '6404c205-838e-42dc-cd11-f1188b807938'),
('bfd3d25b-6899-cd4a-7b3d-07d71bcd6be0', '8.69761E+14', '5605b66b-e92d-c16c-1b83-b8bf7040d51f'),
('c0102513-deed-e577-17a7-881ddd72e45a', '134435003', 'f3d4ebb8-a0db-f0e6-8c22-0a555525b372'),
('c301b316-b2c0-4f64-e8ee-89e5c7929718', '443402002', '8123d076-0886-9007-e956-d5864aa121a7'),
('c408d6e6-e1a0-720c-5032-bb5c7e94437a', '385691007', '6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f'),
('c8fea570-f749-448c-a20a-ae8f07cec920', '53950000', '537034b9-992e-f8b3-4b7e-ee2c75ae6e75'),
('c96ea308-c8c9-3061-e6b3-5245d70e5e6c', '386257007', 'f3c14569-8acf-ffc8-a688-962309d7e599'),
('cbb61215-0be5-b474-7ba5-9b4cafb17897', '698360004', '689da5a6-fe82-4c08-a592-1f5311a57f1d'),
('cbd2913c-46eb-baaf-d879-4d5b8fee1502', '134435003', 'f3d4ebb8-a0db-f0e6-8c22-0a555525b372'),
('cbf91ffb-6f7f-1a8b-b52d-015710cff0f1', '385691007', '6abf5ea2-3b2c-1f33-f2cc-88fd1bfa40dd'),
('cf423b12-fccb-711c-df3c-f058cbe16a3b', '395082007', '6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f'),
('cfe2ce51-8198-3fcd-c588-807291031356', '134435003', '518bc4a7-676a-c07d-6e9d-e6f9662fa001'),
('d08c0c6d-e8cd-0eec-71fd-8b0513a8e84b', '385691007', '70bc8ab9-174f-0df9-eae4-9074292a11d6'),
('d171ca30-8b80-ea2a-e768-fa96e2bfb1eb', '53950000', '3bb3498b-b251-1252-c3a5-b2d291457123'),
('d29f0214-dcab-5ad0-9504-3a006bc0e831', '408869004', 'c06a2ab3-c3b1-a3d0-7c12-262a12c6885e'),
('d2ed3806-5373-44d5-0a17-f99f3b333a4d', '773513001', '537034b9-992e-f8b3-4b7e-ee2c75ae6e75'),
('d96ad1d2-c438-613e-4f5b-63bb9fbc9ffe', '385691007', 'f3d4ebb8-a0db-f0e6-8c22-0a555525b372'),
('d97d96ac-0d17-9528-6d1f-66dc4f056c32', '698360004', '5ade7563-6157-6408-e3d8-9f3daa6304c1'),
('da4dde02-8b1b-41e9-9581-ca46782db195', '698360004', 'd536c0da-c3c8-edca-ebc5-24ee565621a2'),
('dafb0e9e-68bb-4ed0-1a6b-228a3e4b8f36', '773513001', '5ade7563-6157-6408-e3d8-9f3daa6304c1'),
('df381243-41f4-60b5-32b9-3cd3f51bbfe6', '134435003', '23832f5d-e045-2541-1626-a65dce9bbcf7'),
('e0252fdc-489e-de4f-ae23-02085858e038', '443402002', '6d2e5eaa-b38d-5da0-5b1d-070b76d5f88f'),
('e346b160-6bab-b805-7afd-b9c131c18e06', '53950000', '06f12012-769b-05d5-88b4-ac2c33329580'),
('e3c2bc27-bf82-2ced-1d1f-e8b7f80fcb28', '698360004', 'f3d4ebb8-a0db-f0e6-8c22-0a555525b372'),
('e5ea7798-578f-19d5-9cad-bb315a11b70f', '408869004', '6e5ae27c-8038-7988-e2c0-25a103f01bfa'),
('ea3ee693-6e95-12cc-cc03-9fd9dc5b7157', '53950000', '23832f5d-e045-2541-1626-a65dce9bbcf7'),
('eb9cb4a5-d23f-d69a-4172-67e95f40d494', '386257007', '657bac7d-e15f-8248-3d62-aa6422fd39fc'),
('ec5af92e-b832-32d4-8082-d6d463c78e8f', '182964004', '94d39619-8e17-d248-41b3-9ec1f2d031b2'),
('edfc10d8-9fa3-6eeb-04ef-2bbbe127c53f', '53950000', '3bb3498b-b251-1252-c3a5-b2d291457123'),
('f104612b-15cd-cb83-f331-edaa432495a6', '182964004', '6ba3aa40-7557-835d-5751-f40ad4edf832'),
('f831bfb4-f20d-4a8a-46bd-f8da908b7266', '443402002', '6e5ae27c-8038-7988-e2c0-25a103f01bfa'),
('fa485505-8d9b-2af1-6b0b-20274246332b', '225358003', '518bc4a7-676a-c07d-6e9d-e6f9662fa001');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `passcode` varchar(255) DEFAULT NULL,
  `usertype` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`userID`, `username`, `passcode`, `usertype`) VALUES
(1, 'Abel832', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(2, 'Adolfo777', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(3, 'Adrian111', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(4, 'Alfonso758', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(5, 'Anamaria46', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(6, 'Andrew29', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(7, 'Angelo118', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(8, 'Anisa442', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(9, 'Annabelle638', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(10, 'Annett908', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(11, 'Antoine384', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(12, 'Antonette454', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(13, 'Bart73', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(14, 'Beverlee316', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(15, 'Cammy883', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(16, 'Carlos172', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(17, 'Carol737', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(18, 'Catrina144', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(19, 'Cecila397', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(20, 'Christoper325', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(21, 'Cleo27', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(22, 'Dallas143', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(23, 'Dania217', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(24, 'Dannette613', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(25, 'Dante562', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(26, 'Donnie175', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(27, 'Dorthea49', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(28, 'Dustin31', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(29, 'Dwight645', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(30, 'Edwin773', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(31, 'Eilene124', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(32, 'Elmo857', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(33, 'Elroy493', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(34, 'Emmett200', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(35, 'Ethan766', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(36, 'Eugene421', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(37, 'Evalyn273', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(38, 'Evonne919', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(39, 'Ezequiel972', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(40, 'Fidel864', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(41, 'Frankie174', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(42, 'Freddy176', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(43, 'Fredrick998', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(44, 'Gabriela205', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(45, 'Gary33', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(46, 'Gayle444', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(47, 'Gayle448', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(48, 'Holley125', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(49, 'Horace32', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(50, 'Hunter736', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(51, 'Iesha760', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(52, 'Jamaal34', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(53, 'Jammie261', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(54, 'Jessie665', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(55, 'Kaycee352', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(56, 'Kirk871', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(57, 'Kyle55', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(58, 'Lamont867', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(59, 'Latonia966', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(60, 'Leopoldo762', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(61, 'Lloyd546', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(62, 'Lorrie905', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(63, 'Lowell343', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(64, 'Luciano237', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(65, 'Maegan141', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(66, 'Magan944', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(67, 'Malik994', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(68, 'Man114', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(69, 'Mariano761', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(70, 'Marinda592', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(71, 'Marty115', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(72, 'Marybelle759', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(73, 'Mickey576', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(74, 'Miguel Angel46', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(75, 'Mohamed94', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(76, 'Mohamed943', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(77, 'Nikita578', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(78, 'Noel608', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(79, 'Norbert530', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(80, 'Paris331', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(81, 'Quinn173', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(82, 'Quinn177', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(83, 'Raquel318', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(84, 'Raven88', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(85, 'Sadye922', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(86, 'Samuel331', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(87, 'Simon598', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(88, 'Stanley702', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(89, 'Stuart913', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(90, 'Thao506', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(91, 'Toi270', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(92, 'Trent525', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(93, 'Valencia279', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(94, 'Valene773', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(95, 'Willy639', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(96, 'Xiao631', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(97, 'Yanira774', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(98, 'Zane918', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(99, 'Zena758', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(100, 'Zita788', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(101, 'patient', '$2y$10$Mb.ESNL751YWHA8jfhWW8OnVu.6D6pOl.D8kiH6B0BgY7FbepaC8S', 'patient'),
(102, 'doctor', '$2y$10$KvA7B19sEhWyn4CrQO.2Feae.ypmKQCL955OIB3MCzfaeHbzGHvgW', 'doctor'),
(103, 'Russel238', '$2y$10$KvA7B19sEhWyn4CrQO.2Feae.ypmKQCL955OIB3MCzfaeHbzGHvgW', 'doctor'),
(104, 'Marvin195', '$2y$10$KvA7B19sEhWyn4CrQO.2Feae.ypmKQCL955OIB3MCzfaeHbzGHvgW', 'doctor'),
(105, 'Aron520', '$2y$10$KvA7B19sEhWyn4CrQO.2Feae.ypmKQCL955OIB3MCzfaeHbzGHvgW', 'doctor'),
(106, 'Trina350', '$2y$10$KvA7B19sEhWyn4CrQO.2Feae.ypmKQCL955OIB3MCzfaeHbzGHvgW', 'doctor'),
(107, 'Alleen813', '$2y$10$KvA7B19sEhWyn4CrQO.2Feae.ypmKQCL955OIB3MCzfaeHbzGHvgW', 'doctor'),
(108, 'Riley817', '$2y$10$KvA7B19sEhWyn4CrQO.2Feae.ypmKQCL955OIB3MCzfaeHbzGHvgW', 'doctor'),
(109, 'Courtney281', '$2y$10$KvA7B19sEhWyn4CrQO.2Feae.ypmKQCL955OIB3MCzfaeHbzGHvgW', 'doctor'),
(110, 'Tera136', '$2y$10$KvA7B19sEhWyn4CrQO.2Feae.ypmKQCL955OIB3MCzfaeHbzGHvgW', 'doctor'),
(111, 'Karyl215', '$2y$10$KvA7B19sEhWyn4CrQO.2Feae.ypmKQCL955OIB3MCzfaeHbzGHvgW', 'doctor'),
(112, 'Wilfredo622', '$2y$10$KvA7B19sEhWyn4CrQO.2Feae.ypmKQCL955OIB3MCzfaeHbzGHvgW', 'doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Appointments`
--
ALTER TABLE `Appointments`
  ADD PRIMARY KEY (`appID`);

--
-- Indexes for table `Bill`
--
ALTER TABLE `Bill`
  ADD PRIMARY KEY (`appID`);

--
-- Indexes for table `Buys`
--
ALTER TABLE `Buys`
  ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`docID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `Insurance`
--
ALTER TABLE `Insurance`
  ADD PRIMARY KEY (`inID`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `Prescribes`
--
ALTER TABLE `Prescribes`
  ADD PRIMARY KEY (`docID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `Users` (`userID`);

--
-- Constraints for table `Patient`
--
ALTER TABLE `Patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `Users` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
