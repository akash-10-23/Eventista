-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 01:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventista`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendee`
--

CREATE TABLE `attendee` (
  `Att_username` varchar(16) NOT NULL,
  `AttEmail` varchar(30) DEFAULT NULL,
  `AttName` varchar(30) DEFAULT NULL,
  `AttPassword` varchar(15) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Age` int(11) GENERATED ALWAYS AS (year(current_timestamp()) - year(`DateOfBirth`)) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendee`
--

INSERT INTO `attendee` (`Att_username`, `AttEmail`, `AttName`, `AttPassword`, `DateOfBirth`) VALUES
('akash232', 'akashratan@gmail.com', 'Akash Ratan Verma  ', 'Database5', '2002-02-23'),
('delta', 'delta@gmail.com', 'Delta', 'Delta123', '2001-03-27'),
('om369', 'omkumar3@gmail.com', 'Om Kumar Thakur ', 'Database4', '2000-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `Att_username` varchar(16) DEFAULT NULL,
  `EventId` int(11) DEFAULT NULL,
  `BookmarkId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`Att_username`, `EventId`, `BookmarkId`) VALUES
('akash232', 101, 204),
('akash232', 102, 205),
('akash232', 103, 206),
('om369', 102, 207);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `EventId` int(11) NOT NULL,
  `Deadline` date DEFAULT NULL,
  `Venue` varchar(30) DEFAULT NULL,
  `DOEvent` date DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Poster` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`EventId`, `Deadline`, `Venue`, `DOEvent`, `Description`, `Poster`) VALUES
(100, '2021-03-29', 'Farm House', '2021-04-01', 'The fest is organized by Thapar University. It is a 3 day event with a wide range of fun activities and games and various artists perform live on the stage. ', 'img/Saturnlia.png'),
(101, '2021-04-07', 'Queen\'s Cup Concert Ground', '2021-04-20', 'It is the annual Event of The Oddball Beats Society. \r\nHere various open-mic artist will perform and it would be a night worth remembering. So don\'t just sit back and wait.', 'img/open-mic.png'),
(102, '2021-04-15', 'New Forks National Park', '2021-04-18', 'It is the annual Cultural Fest of FF Society. \r\nGive a chance to the artist inside of you to show others how special and awesome you are, also get a chance to win some amazing prizes. \r\nSing the melody of your heart and let everyone grove with the rhythm you create.', 'img/fiery-art.png'),
(103, '2021-04-15', 'Cordale High School Sci. Lab', '2021-04-18', 'It is a competition conducted by The Cordale High School Science Club. \r\nHow good is your knowledge and the fasinating Science all around us, is it better than others around you ? \r\nWell then compete for the title of the Trivia Master and get your chance to shine out to others.', 'img/trivia.png');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `Org_username` varchar(16) DEFAULT NULL,
  `EventId` int(11) NOT NULL,
  `Ename` varchar(30) NOT NULL,
  `Category` varchar(15) DEFAULT NULL,
  `GoldTicketPrice` decimal(4,0) DEFAULT NULL,
  `DiamondTicketPrice` decimal(4,0) DEFAULT NULL,
  `PlatinumTicketPrice` decimal(4,0) DEFAULT NULL,
  `NOParticipants` decimal(3,0) DEFAULT NULL,
  `MaxParticipants` decimal(3,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`Org_username`, `EventId`, `Ename`, `Category`, `GoldTicketPrice`, `DiamondTicketPrice`, `PlatinumTicketPrice`, `NOParticipants`, `MaxParticipants`) VALUES
('nikhil345', 100, 'Saturnlia', 'Fest', '150', '250', '400', '29', '75'),
('neetesh33', 101, 'Open Mic Jazz Night', 'Public Event', '100', '200', '500', '57', '150'),
('nikhil345', 102, 'Fiery Folks Art & Music Fest', 'Fest', '250', '360', '500', '36', '60'),
('nikhil345', 103, 'The Trivia Master', 'Competition', '120', '250', '320', '16', '30');

-- --------------------------------------------------------

--
-- Table structure for table `evesocialmedia`
--

CREATE TABLE `evesocialmedia` (
  `EventId` int(11) NOT NULL,
  `Instagram` varchar(50) DEFAULT NULL,
  `Facebook` varchar(50) DEFAULT NULL,
  `Twitter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evesocialmedia`
--

INSERT INTO `evesocialmedia` (`EventId`, `Instagram`, `Facebook`, `Twitter`) VALUES
(100, 'Saturnlia334', 'Saturnlia2k21', 'Saturnlia_2k21'),
(101, 'jazzItUp', 'JazzNight21', 'OpenJazzNight'),
(102, 'fieryfolks33', 'fieryFolks2k21', 'fieryFolks21'),
(103, 'triviamaster100', 'TriviaMaster 2.0', 'TheTriviaMaster314');

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `Org_username` varchar(16) NOT NULL,
  `OrgEmail` varchar(30) DEFAULT NULL,
  `OrgName` varchar(30) DEFAULT NULL,
  `OrgPassword` varchar(15) DEFAULT NULL,
  `ContactNo` char(10) DEFAULT NULL,
  `Organisation` varchar(50) DEFAULT 'NULL'
) ;

--
-- Dumping data for table `organizer`
--

INSERT INTO `organizer` (`Org_username`, `OrgEmail`, `OrgName`, `OrgPassword`, `ContactNo`, `Organisation`) VALUES
('neetesh33', 'neetesh@gmail.com', 'Neetesh Kumar', 'Organiser2', '8741953246', 'Bright Events'),
('nikhil345', 'nikhil@gmail.com', 'Nikhil Kumar', 'Organiser1', '9512364782', 'Night Eves'),
('theta', 'theta314@gmail.com', 'Theta Dev', 'Theta123', NULL, 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `orgsocialmedia`
--

CREATE TABLE `orgsocialmedia` (
  `Org_username` varchar(16) NOT NULL,
  `Instagram` varchar(50) DEFAULT 'NULL',
  `Facebook` varchar(50) DEFAULT 'NULL',
  `Twitter` varchar(50) DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orgsocialmedia`
--

INSERT INTO `orgsocialmedia` (`Org_username`, `Instagram`, `Facebook`, `Twitter`) VALUES
('neetesh33', 'neetesh123', 'Neetesh_Kumar45', 'Neetesh555'),
('nikhil345', 'aminick21', 'Nikhil_kumar', 'nik2109'),
('theta', 'None', 'None', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `Att_username` varchar(16) DEFAULT NULL,
  `EventId` int(11) DEFAULT NULL,
  `TicketId` int(11) NOT NULL,
  `TypeOfticket` varchar(9) DEFAULT NULL,
  `NOTickets` decimal(2,0) DEFAULT NULL,
  `TotalPrice` decimal(6,0) DEFAULT NULL
) ;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`Att_username`, `EventId`, `TicketId`, `TypeOfticket`, `NOTickets`, `TotalPrice`) VALUES
('akash232', 100, 6, 'Diamond', '4', '1000'),
('om369', 101, 7, 'Platinum', '2', '1000'),
('om369', 100, 8, 'Gold', '5', '750'),
('om369', 103, 9, 'Platinum', '1', '320');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendee`
--
ALTER TABLE `attendee`
  ADD PRIMARY KEY (`Att_username`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`BookmarkId`),
  ADD KEY `Att_username` (`Att_username`),
  ADD KEY `EventId` (`EventId`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`EventId`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`EventId`),
  ADD KEY `Org_username` (`Org_username`);

--
-- Indexes for table `evesocialmedia`
--
ALTER TABLE `evesocialmedia`
  ADD PRIMARY KEY (`EventId`);

--
-- Indexes for table `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`Org_username`);

--
-- Indexes for table `orgsocialmedia`
--
ALTER TABLE `orgsocialmedia`
  ADD PRIMARY KEY (`Org_username`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`TicketId`),
  ADD KEY `Att_username` (`Att_username`),
  ADD KEY `EventId` (`EventId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `BookmarkId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `EventId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `TicketId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_ibfk_1` FOREIGN KEY (`Att_username`) REFERENCES `attendee` (`Att_username`),
  ADD CONSTRAINT `bookmarks_ibfk_2` FOREIGN KEY (`EventId`) REFERENCES `events` (`EventId`);

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_ibfk_1` FOREIGN KEY (`EventId`) REFERENCES `events` (`EventId`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`Org_username`) REFERENCES `organizer` (`Org_username`);

--
-- Constraints for table `evesocialmedia`
--
ALTER TABLE `evesocialmedia`
  ADD CONSTRAINT `evesocialmedia_ibfk_1` FOREIGN KEY (`EventId`) REFERENCES `events` (`EventId`);

--
-- Constraints for table `orgsocialmedia`
--
ALTER TABLE `orgsocialmedia`
  ADD CONSTRAINT `orgsocialmedia_ibfk_1` FOREIGN KEY (`Org_username`) REFERENCES `organizer` (`Org_username`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`Att_username`) REFERENCES `attendee` (`Att_username`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`EventId`) REFERENCES `events` (`EventId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
