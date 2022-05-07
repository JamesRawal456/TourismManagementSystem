-- Password: Admin 
-- Username: Admin
-- Database name: tmsalldata



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


-- Table for Admin

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data into table "Admin"

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'admin', '2017-05-13 11:18:49');






-- Table for tmsBookings

CREATE TABLE `tmsbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `tmsbooking`

INSERT INTO `tmsbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'anuj@gmail.com', '05/18/2017', '05/31/2017', '\"Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2017-05-13 19:01:10', 2, 'u', '2017-05-13 21:30:23');







-- Table For tmsenquiry

CREATE TABLE `tmsenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `tmsenquiry`

INSERT INTO `tmsenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Test', 'test@gm.com', '4747474747', 'Test', 'iidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiid', '2017-05-14 07:54:07', 1);





-- Table  for tmsissues

CREATE TABLE `tmsissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `tmsissues`

INSERT INTO `tmsissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, 'abc@g.com', 'Refund', 'test test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:46', 'vetet ert erteryre', '2017-05-14 07:58:43');










-- Table for tmstourpackages

CREATE TABLE `tmstourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `tmstourpackages`

INSERT INTO `tmstourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Manali Trip ', 'General', 'Kullu Manali India', 100, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '14287acc-b5cb-46db-b8b4-e3ffe652fc0d.png', '2017-05-13 14:23:44', '2017-05-13 17:51:01'),
(2, 'Kerla', 'Familty and Couple', 'Kerlal', 2000, ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'images.jpg', '2017-05-13 22:39:37', '0000-00-00 00:00:00'),
(3, 'Coorg : Tour Packages', 'General', 'Coorg', 3000, ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'coorg-hill-station1.jpg', '2017-05-13 22:42:10', '0000-00-00 00:00:00');








-- Table  for  `tmsusers`

CREATE TABLE `tmsusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `tmsusers`

INSERT INTO `tmsusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'XYZ', '8888888888', 'abc@g.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:54:32', '2017-05-14 07:55:17');





--
-- Table structure for table `tmspages`
--

CREATE TABLE `tmspages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmspages`
--

INSERT INTO `tmspages` (`id`, `type`, `detail`) VALUES
(1, 'Terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) TERMS AND CONDITIONS</FONT><BR><BR></STRONG>  By using this website, you agree to be governed by these Terms and Conditions of Use, all relevant laws and regulations, and that you are responsible for complying with any applicable local laws. You are not permitted to use or access this site if you do not agree with any of these conditions. This websites materials are protected by applicable copyright and trade mark law. <BR><BR> •	25% deduction in total payment if the trip cancelled 30 days prior to commence date. <BR> •	50% deduction in total payment if the trip cancelled 15 days prior to commence date. <BR> •	75% deduction in total payment if the trip cancelled 7 days prior to commence date. <BR> •	No refund if the trip cancelled less than 7 days prior to commence date.   </FONT></P>'),
(2, 'Privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">This Privacy Policy controls how the tourism management system collects, uses, stores, and discloses information gathered from users. This privacy statement applies to the Site as well as all products and services provided by the tourism management system. <BR> 	Personal identifiable information may be collected from Users in a variety of ways, including, but not limited to, when Users visit our site, place a purchase, and in conjunction with other activities, services, features, or resources we make accessible on our Site. As appropriate, users may be requested for their name, email address, mailing address, phone number, and credit card information. We will only gather personal identifiable information from Users if they willingly provide it to us. Users can always refuse to provide personally identifiable information, but doing so may restrict them from participating in certain Site-related activities.</span>'),
(3, 'About', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"> Tourism Management System is the leading travel agency In Nepal, we organize private excursions and treks. We are a well-known and well-established brand for providing outstanding tour and trip services at extremely reasonable pricing. We have always dedicated ourselves to providing our guests with warm hospitality and high-quality services. Our success stories include not only the hard work of our team members, but also the drive of confidence and professionalism toward guest happiness.
We do our best to understand your needs, assist you in selecting the finest tour, and cater to your specific needs. We carefully plan our itineraries, ensuring the proper mix of programmed activities and leisure time, as well as the proper sequencing of the activities. As a result, all of our trips can be customized.
Except for planned departure excursions, all of our trips and treks are personally organized. For sightseeing trips, private guides and drivers are provided, as are guides and porters for trekking. Aside from our web-based activities, we can also provide you with bespoke trips and treks based on your interests, time constraints, and budget. Treks with fixed departures are scheduled with a trek leader and one porter for every two hikers. The costs are based on a minimum of two people sharing. However, even if you are traveling alone, there will be no additional charges for treks booked on set departures. Every fixed departure is guaranteed.
Please do not hesitate to contact us for additional information and other details about your trip to Nepal. Thank you, and best wishes for a great and safe journey to this unique region.
</span>'),
(11, 'Contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"> If you have any questions about your trip to Nepal, please contact us via the email or phone form provided below. <BR> Phone Number : +977 986019835 <BR> Email Address : student.services@heraldcollege.edu.np </span>');

-- --------------------------------------------------------






-- Indexes for dumped tables


-- Indexes for table `admin`
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);



-- Indexes for table `tmsbooking`
ALTER TABLE `tmsbooking`
  ADD PRIMARY KEY (`BookingId`);


-- Indexes for table `tmsenquiry`

ALTER TABLE `tmsenquiry`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `tmsissues`

ALTER TABLE `tmsissues`
  ADD PRIMARY KEY (`id`);




-- Indexes for table `tmstourpackages`

ALTER TABLE `tmstourpackages`
  ADD PRIMARY KEY (`PackageId`);


-- Indexes for table `tmsusers`

ALTER TABLE `tmsusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);


-- AUTO_INCREMENT for dumped tables

-- AUTO_INCREMENT for table `admin`

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


-- AUTO_INCREMENT for table `tmsbooking`

ALTER TABLE `tmsbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


-- AUTO_INCREMENT for table `tmsenquiry`

ALTER TABLE `tmsenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


-- AUTO_INCREMENT for table `tmsissues`

ALTER TABLE `tmsissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;




-- AUTO_INCREMENT for table `tmstourpackages`

ALTER TABLE `tmstourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


-- AUTO_INCREMENT for table `tmsusers`

ALTER TABLE `tmsusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

