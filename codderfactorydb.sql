-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 02:39 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codderfactorydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(12) NOT NULL,
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_pwd` varchar(50) DEFAULT NULL,
  `admin_photo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_pwd`, `admin_photo`) VALUES
(1, 'admin', 'admin', 'assets/images/profile_girl.jpg'),
(2, 'Vinaykumar', 'admin', 'assets/images/!logged-user.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bidding`
--

CREATE TABLE `tbl_bidding` (
  `bidding_id` int(12) NOT NULL,
  `user_id` int(12) DEFAULT NULL,
  `job_id` int(12) DEFAULT NULL,
  `proposal_des` text DEFAULT NULL,
  `my_earning` varchar(30) DEFAULT NULL,
  `client_bill` varchar(30) DEFAULT NULL,
  `hours` varchar(30) DEFAULT NULL,
  `weeks` varchar(30) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bidding`
--

INSERT INTO `tbl_bidding` (`bidding_id`, `user_id`, `job_id`, `proposal_des`, `my_earning`, `client_bill`, `hours`, `weeks`, `date_time`) VALUES
(27, 12, 82, 'Web developer specialising in high quality web applications and expertise in JavaScript.\r\nWeb Design Expert, Expert in PHP with 2year experiance.', '25', '27.1875', '20', '2', '2015-04-19 19:28:07'),
(28, 12, 81, 'I am Expert in Android App', '600', '652.5', '40', '12', '2015-04-29 15:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(12) NOT NULL,
  `cat_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`) VALUES
(1, 'IT and Programming'),
(8, 'Design and Multimedia'),
(12, 'Writing and Translation'),
(13, 'Sales and Marketing'),
(15, 'Admin Support'),
(17, 'Engineering and Manufacturing'),
(20, 'Finance and Management'),
(21, 'Legal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE `tbl_chat` (
  `msg_id` int(12) NOT NULL,
  `org_id` int(12) DEFAULT NULL,
  `user_id` int(12) DEFAULT NULL,
  `job_id` int(12) DEFAULT NULL,
  `msg_text` text DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_chat`
--

INSERT INTO `tbl_chat` (`msg_id`, `org_id`, `user_id`, `job_id`, `msg_text`, `date_time`) VALUES
(5, 39, NULL, 82, 'Hi......Vinay', '2015-04-30 12:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `city_id` int(12) NOT NULL,
  `city_name` varchar(50) DEFAULT NULL,
  `state_id` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `city_name`, `state_id`) VALUES
(1, 'Ahmedabad', 1),
(2, 'Anand', 1),
(3, 'Bhavnagar', 1),
(4, 'Bhuj', 1),
(5, 'Dwarka', 1),
(6, 'Gandhinagar', 1),
(7, 'Jamnagar', 1),
(8, 'Junagarh', 1),
(9, 'Mehsana', 1),
(10, 'Navsari', 1),
(11, 'Rajkot', 1),
(12, 'Surat', 1),
(13, 'Vadodara', 1),
(14, 'Mumbai', 2),
(15, 'Nagpur', 2),
(16, 'Nasik', 2),
(17, 'Pune', 2),
(18, 'Amritsar', 3),
(19, 'Mohali', 3),
(20, 'Patiala', 3),
(21, 'Ajmer', 4),
(22, 'Jaipur', 4),
(23, 'Jaisalmer', 4),
(24, 'Udaipur', 4),
(31, 'Ambikapur', 7),
(32, 'Bilaspur', 7),
(33, 'Durg', 7),
(34, 'Jagadalpur', 7),
(35, 'Korba', 7),
(36, 'Raigarh', 7),
(37, 'Raipur', 7),
(38, 'Bokaro', 8),
(39, 'Deoghar', 8),
(40, 'Dhanbad', 8),
(41, 'Giridih', 8),
(42, 'Hazaribagh', 8),
(43, 'Jameshedpur', 8),
(44, 'Ranchi', 8),
(45, 'Banglore', 12),
(46, 'Belgaum', 12),
(47, 'Bellary', 12),
(48, 'Bijapur', 12),
(49, 'Mangalore', 12),
(50, 'Manipal', 12),
(51, 'Mysore', 12),
(52, 'Dhulia', 2),
(53, 'Jalgaon', 2),
(54, 'Kolhapur', 2),
(55, 'Lonavala', 2),
(56, 'Ratnagiri', 2),
(57, 'Bhatinda', 3),
(58, 'Jalandhar', 3),
(59, 'Jodhpur', 4),
(60, 'Chennai', 9),
(61, 'Chidambram', 9),
(62, 'Kancheepuram', 9),
(63, 'Kanyakumari', 9),
(64, 'Mahabalipuram', 9),
(65, 'Rameshwaram', 9),
(66, 'Agra', 6),
(67, 'Aligarh', 6),
(68, 'Allahabad', 6),
(69, 'Bareilly', 6),
(70, 'Ghaziabad', 6),
(71, 'Jhansi', 6),
(72, 'Kanpur', 6),
(73, 'Lucknow', 6),
(74, 'Mathura', 6),
(75, 'Noida', 6),
(76, 'Varanasi', 6),
(77, 'Almora', 10),
(78, 'Dehradun', 10),
(79, 'Haridwar', 10),
(80, 'Nainital', 10),
(81, 'Rampur', 10),
(82, 'Rudrapur', 10),
(83, 'Uttarkashi', 10),
(84, 'Asansol', 11),
(85, 'Bagdogra', 11),
(86, 'Kolkata', 11),
(87, 'Darjeeling', 11),
(88, 'Durgapur', 11),
(89, 'Kharagpur', 11),
(90, 'Mirjapur', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_profile`
--

CREATE TABLE `tbl_client_profile` (
  `client_profile_id` int(12) NOT NULL,
  `org_id` int(12) DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `job_title` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_client_profile`
--

INSERT INTO `tbl_client_profile` (`client_profile_id`, `org_id`, `company_name`, `job_title`, `description`, `location`) VALUES
(15, 39, 'Neha Infotech', 'PHP/ MySQL/ Website Design Expert/ SEO', 'Neha Infotech is a proficient web design / development company.Our services include web site designing, web programming, content writing, providing graphics solutions, desktop application development, logo designing.', '12'),
(16, 40, 'Karon Infotech', '.NET, PHP, Android App Development', 'Neha Infotech also provide Project Training:\r\n\r\n1. ASP.NET with VB\r\n2. PHP\r\n3. HTML\r\n\r\nGraphics Designing\r\n\r\n1. Logo Design\r\n2. Presentation Design.\r\n\r\nWe provide reliable, quality, and value added services to focus on your core business needs so that you are assured that a dedicated offshore team is working for you.\r\n\r\nNeha Infotech has a vision that offers and delivers offshore software outsourcing services on the following promises: Quality, Cost-effective Services within Clients Budget and Project Deliverables on Client Timelines, Complete Customer Satisfaction. ', '1'),
(17, 41, 'Mindtree', 'Search Engine Optimization', 'I need someone with a rich portfolio in getting sites ranked high on Google. The project is an academic tutoring platform and is a couple of months old (8). Your assistance will be highly appreciated ', '19'),
(18, 42, 'N/A', 'N/A', 'N/A', '18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(12) NOT NULL,
  `faq_for` varchar(100) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_for`, `question`, `answer`) VALUES
(2, 'Client', 'How do I find the right freelancers?', 'Itâ€™s easy. First think about the person and skills you need, then describe your job and post it. Next wait for freelancers to submit their best proposals for your review. You can also invite freelancers to submit proposals from a list we recommend, or search our entire freelance community for that perfect fit. '),
(3, 'Client', 'Are top-skilled freelancers available on CoderFactory?', 'Yes. Over 75% of our freelancers have a bachelors, masters, professional or doctorate degree. Theyâ€™ve worked at Fortune 500 companies and successful startups. Over half now work full-time freelancing, giving you the skills and dedication you need. '),
(4, 'Client', 'What payment methods can I use?', 'You can use your MasterCard, Visa, American Express, PayPal or an CoderFactory Account to pay freelancers. Your financial information is safe and will not be shared. '),
(5, 'Client', 'Whats CoderFactory payment protection?', 'Most jobs get completed on-time and as expected. For every job, you pay only for work youâ€™ve received and then approved. If thereâ€™s a disagreement between you and your freelancer, weâ€™ll provide free dispute assistance and arbitration. '),
(6, 'Client', 'Is my Intellectual property safe?', 'Yes. In our Terms of Service and Independent Contractor Service Agreement, we stipulate your right to ownership of intellectual property. You can also add additional terms to your job, and you can have your freelancer sign a Non-Disclosure Agreement if needed. '),
(7, 'Freelancers', 'How can I find jobs that fit my skills?', 'There are a few ways: 1. Use our Search to find jobs that match your expertise, 2. View jobs weâ€™ve recommended (after weâ€™ve analyzed your skills and the needs of clients posting jobs), and 3. Keep an eye out for invitations sent to you by hiring clients. '),
(8, 'Freelancers', 'How do I apply for jobs on CoderFactory?', 'When you see a job you like, fill out a brief job proposal form. Youâ€™ll describe why youâ€™re uniquely qualified, how youâ€™ll approach the work and how much youâ€™ll charge. When you click submit, the client reviews your proposal and contacts you with further details. '),
(9, 'Freelancers', 'How much do freelancers earn?', 'Here are some average hourly examples:\r\nProgrammers 	$14-$164\r\nMobile Developers 	$12-$159\r\nContent Writers 	$10-$100\r\nGraphic Designers 	$12-$100'),
(10, 'Freelancers', 'How do I get paid? How quickly?', 'You get paid through your CoderFactory account. Client payments are deposited into your CoderFactory account, allowing you to make withdrawals right away. Youâ€™re in control of when and how often you get paid. For fixed price jobs, you and your client will agree on payment dates. For hourly jobs, youâ€™ll get paid each week when you use CoderFactoryâ€™s Tracker tool. '),
(11, 'Freelancers', 'Is this full time work or part time work?', 'All jobs on CoderFactory are independent freelance jobs. You work for yourself, not for CoderFactory or for the client posting the job. By working here, you are your own boss, setting the number of hours you work each week. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feed_id` int(12) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `feed_text` text DEFAULT NULL,
  `feed_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`feed_id`, `name`, `email`, `contact`, `feed_text`, `feed_date`) VALUES
(1, 'Vinay', 'vinay.g2404@gmail.com', '9974462617', 'Nice Features', '2015-04-22'),
(2, 'Neha', 'neha@gmail.com', '9975546215', 'Nice Website', '2015-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` int(12) NOT NULL,
  `org_id` int(12) DEFAULT NULL,
  `job_title` varchar(250) DEFAULT NULL,
  `job_description` text DEFAULT NULL,
  `sub_cat_id` int(12) DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `work_type` varchar(50) DEFAULT NULL,
  `budget` varchar(100) DEFAULT NULL,
  `ownbudget1` varchar(30) DEFAULT NULL,
  `ownbudget2` varchar(30) DEFAULT NULL,
  `total_hours` varchar(30) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `city_id` int(12) DEFAULT NULL,
  `job_post` varchar(100) DEFAULT NULL,
  `job_status` varchar(100) DEFAULT NULL,
  `bidding_start` timestamp NULL DEFAULT NULL,
  `bidding_end` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`job_id`, `org_id`, `job_title`, `job_description`, `sub_cat_id`, `skills`, `work_type`, `budget`, `ownbudget1`, `ownbudget2`, `total_hours`, `duration`, `city_id`, `job_post`, `job_status`, `bidding_start`, `bidding_end`) VALUES
(81, 40, 'Android Application  for wholesellers  in text-tile market for order material.', 'Hi! I need an energetic person to help me develop a Android application for Text-tile market. It needs to be easy for client to order material easily and view material. Can you help? \r\nProject Scope: Design and Code', 20, 'Android App Development, Android SDK, PHP, MySQL Programming, ', 'Fixed', 'Enter my own range', '1,000', '2,000', NULL, NULL, 1, '15 days', 'Working', '2015-04-19 12:20:42', '2015-05-04 12:20:42'),
(82, 39, 'Online Shopping For Festivals', 'Hi! I need an energetic person to help me develop a web site for Shopping For Festive. Can you help? Design Type: New Website Project Scope: Design and Code\r\n', 2, 'HTML5, PHP5, CSS 3, AngularJS, Account Management, ', 'Hourly', 'About $30 to $40 / hr', NULL, NULL, '40', '3-4 weeks', 13, '30 days', 'Working', '2015-04-19 12:33:45', '2015-05-19 12:33:45'),
(83, 41, 'I want my site on Page 1 of Google Search results', 'I need someone with a rich portfolio in getting sites ranked high on Google. The project is an academic tutoring platform and is a couple of months old (8). Your assistance will be highly appreciated ', 24, 'SEO Backlinking, WordPress, Google Adsense API, Google Web Toolkit, ', 'Hourly', 'Enter my own range', '40', '60', '20', 'Decide later', 86, '7 days', 'Hiring Open', '2015-04-19 14:46:04', '2015-04-26 14:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_assign`
--

CREATE TABLE `tbl_job_assign` (
  `final_id` int(12) NOT NULL,
  `bidding_id` int(12) DEFAULT NULL,
  `org_id` int(12) DEFAULT NULL,
  `job_assign_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_job_assign`
--

INSERT INTO `tbl_job_assign` (`final_id`, `bidding_id`, `org_id`, `job_assign_date`) VALUES
(5, 27, 39, '2015-04-29'),
(6, 28, 40, '2015-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_opportunities`
--

CREATE TABLE `tbl_opportunities` (
  `own_freelancer_id` int(12) NOT NULL,
  `org_id` int(12) DEFAULT NULL,
  `user_id` int(12) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_des` text DEFAULT NULL,
  `type_of_work` varchar(100) DEFAULT NULL,
  `city_id` int(12) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_accepted` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_opportunities`
--

INSERT INTO `tbl_opportunities` (`own_freelancer_id`, `org_id`, `user_id`, `firstname`, `lastname`, `job_name`, `job_des`, `type_of_work`, `city_id`, `message`, `is_accepted`) VALUES
(1, 42, 18, 'Virat', 'Kohli', 'Contract for  Animation', 'N/A', '8', 34, 'I would like to work with you on Coderfactory! Please accept my invitation so we can get started now.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organization`
--

CREATE TABLE `tbl_organization` (
  `org_id` int(12) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_organization`
--

INSERT INTO `tbl_organization` (`org_id`, `firstname`, `lastname`, `email`, `contact`, `pwd`, `photo`, `date`) VALUES
(39, 'Neha', 'Patel', 'nehapatel@gmail.com', '1234567890', '123', '../admin/user/15050705181504160514NehaInfotech_New1.png', '2015-04-19 08:43:11'),
(40, 'Keyur', 'Patel', 'keyurpatel@gmail.com', '0123456789', '123', '../admin/user/15041912431504160703IMG-20150218-WA0000.jpg', '2015-04-19 12:01:51'),
(41, 'Shikha', 'Aggarwal', 'shikha@gmail.com', '7854852140', '123', '../admin/user/1504190235unnamed.jpg', '2015-04-19 14:37:12'),
(42, 'Navdeep Singh', 'Gill', 'navdeepsingh@gmail.com', '9974525635', '123', '../admin/user/1504281247thumb64-80-288881521-GS.jpg', '2015-04-28 12:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skill`
--

CREATE TABLE `tbl_skill` (
  `skill_id` int(12) NOT NULL,
  `skill_name` varchar(100) DEFAULT NULL,
  `cat_id` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_skill`
--

INSERT INTO `tbl_skill` (`skill_id`, `skill_name`, `cat_id`) VALUES
(7, '.NET Framework', 1),
(8, 'ADO.NET', 1),
(9, 'AJAX', 1),
(10, 'API Development', 1),
(11, 'ASP', 1),
(12, 'ASP.NET', 1),
(13, 'ASP.NET MVC', 1),
(14, 'Abstract Window Toolkit (AWT)', 1),
(15, 'ActionScript', 1),
(16, 'Algorithm Development', 1),
(17, 'Android App Development', 1),
(18, 'Android SDK', 1),
(19, 'AngularJS', 1),
(20, 'Apache', 1),
(21, 'App Store', 1),
(22, 'Apple XCode', 1),
(23, 'Apple iWeb', 1),
(24, 'Apple Script', 1),
(25, 'BASIC', 1),
(26, 'Bash Shell Scripiting', 1),
(27, 'Bitcoin', 1),
(28, 'Black Box Testing', 1),
(29, 'Blogs', 1),
(30, 'C', 1),
(31, 'C++', 1),
(32, 'C Shell', 1),
(33, 'CSS', 1),
(34, 'CSS 3', 1),
(35, 'CVS', 1),
(36, 'Cake PHP', 1),
(37, 'Chrome OS', 1),
(38, 'Cisco', 1),
(39, 'Cisco IOS', 1),
(40, 'DBMS', 1),
(41, 'DHTML', 1),
(42, 'DHCP', 1),
(43, 'DNS', 1),
(44, 'DCOM', 1),
(45, 'DTS', 1),
(46, 'Data Analytics', 1),
(47, 'Data Engineering', 1),
(48, 'Data Mining', 1),
(49, 'Data Protection', 1),
(50, 'Data Science', 1),
(51, 'Data Structure', 1),
(52, 'Data Warehousing', 1),
(53, 'Database Design', 1),
(54, 'DropBox API', 1),
(55, 'Drupal', 1),
(56, 'Drupal 7', 1),
(57, 'ECMA Script', 1),
(58, 'Eclipse', 1),
(59, 'Embedded C', 1),
(60, 'Embedded Linux', 1),
(61, 'Embedded System', 1),
(62, 'F#', 1),
(63, 'FTP', 1),
(64, 'Facebook Development', 1),
(65, 'Facebook Game Development', 1),
(66, 'Facebook JavaScript', 1),
(67, 'Fetch Mail', 1),
(68, 'File Maker', 1),
(69, 'Firefox Plugin Development', 1),
(70, 'Google Adsense API', 1),
(71, 'Google Adwords Development', 1),
(72, 'Google API Engine', 1),
(73, 'Google App API', 1),
(74, 'Google Calender API', 1),
(75, 'Google Apps', 1),
(76, 'Google Play', 1),
(77, 'Google Web Toolkit', 1),
(78, 'Graph Database', 1),
(79, 'Graphics Programming', 1),
(80, 'Groovy', 1),
(81, 'HP Cloud', 1),
(82, 'HP Network Management', 1),
(83, 'HTML', 1),
(84, 'HTML5', 1),
(85, 'Hadoop', 1),
(86, 'IBM DB2 Administrator', 1),
(87, 'IBM Smart Cloud', 1),
(88, 'IBM System p', 1),
(89, 'IBM System x', 1),
(90, 'Artificial Intelligence', 1),
(91, 'Artificial Neural Networks', 1),
(92, 'J2EE', 1),
(93, 'J2ME', 1),
(94, 'J2SE', 1),
(95, 'jQuery Mobile', 1),
(96, 'JSON', 1),
(97, 'JSP', 1),
(98, 'LAMP Administrator', 1),
(99, 'LINQ', 1),
(100, 'MATLAB', 1),
(101, 'Mac OS App Development', 1),
(102, 'Machine Learning', 1),
(103, 'Magento', 1),
(104, 'Mambo', 1),
(105, 'Microsoft Access Programming', 1),
(106, 'Microsoft Dynamics ERP', 1),
(107, 'Microsoft Front Page', 1),
(108, 'Microsoft Hyper V', 1),
(109, 'Microsoft Hyper V - Server', 1),
(110, 'Microsoft Infopath', 1),
(111, 'Microsoft SQL Server', 1),
(112, 'JDBC', 1),
(113, 'Microsoft Silverlight', 1),
(114, 'Microsoft Visual C++', 1),
(115, 'Microsoft Visual Studio', 1),
(116, 'Microsoft Windows Phone 7 App Development', 1),
(117, 'MySQL Administrator', 1),
(118, 'MySQL Programming', 1),
(119, 'Natural Language Processing', 1),
(120, 'NetBeans', 1),
(121, 'Network Analysis', 1),
(122, 'Network Security', 1),
(123, 'Network Programming', 1),
(124, 'ODBC', 1),
(125, 'JellyBean', 1),
(126, 'Joomla!', 1),
(127, 'Jsharp', 1),
(128, 'Object Oriented PHP', 1),
(129, 'Objective-C', 1),
(130, 'Objective-J', 1),
(131, 'On-page Optimization', 1),
(132, 'Oracle 9i', 1),
(133, 'Oracle 10g', 1),
(134, 'Oracle 11g', 1),
(135, 'Oracle 12c', 1),
(136, 'Oracle PL/SQL', 1),
(137, 'PHP', 1),
(138, 'PHP4', 1),
(139, 'PHP5', 1),
(140, 'PEAR', 1),
(141, 'Pattern Recognization', 1),
(142, 'Pay Pal Development', 1),
(143, 'Perl', 1),
(144, 'Prolog', 1),
(145, 'Python', 1),
(146, 'QA Engineering', 1),
(147, 'QA Testing', 1),
(148, 'R', 1),
(149, 'R-Hadoop', 1),
(150, 'RSS', 1),
(151, 'Red Hat Certified Engineering (RHCE)', 1),
(152, 'Red Hat Enterprise Linux (RHEL)', 1),
(153, 'Ruby', 1),
(154, 'SAP Analysis', 1),
(155, 'SEO Backlinking', 1),
(156, 'Software QA Testing', 1),
(157, 'Ubuntu', 1),
(158, 'VB.NET', 1),
(159, 'Unix Shell', 1),
(160, 'VB Script', 1),
(161, 'VOIP Software', 1),
(162, 'Virual Machine', 1),
(163, 'Virualization', 1),
(164, 'WAMP', 1),
(165, 'XHTML', 1),
(166, 'XML', 1),
(167, 'XSLT', 1),
(168, 'XSL', 1),
(169, 'Xpath', 1),
(170, 'Yahoo! Developer skills', 1),
(171, 'Yahoo! store', 1),
(172, 'Yahoo! Query Language', 1),
(173, 'ZEND Freamwork', 1),
(174, 'Zoho CRM', 1),
(175, 'Zoho Creator Programming', 1),
(176, 'WordPress', 1),
(177, 'WordPress e-Commerce', 1),
(178, '2D Animation', 8),
(179, '2D Design', 8),
(180, '3D Animation', 8),
(181, '3D Design', 8),
(182, 'Adobe CS5', 8),
(183, 'Adobe Digital Marketing Suite', 8),
(184, 'Adobe Dreamweaver', 8),
(185, 'Adobe Dreamweaver CS5', 8),
(186, 'Adobe Flash', 8),
(187, 'Adobe Flash CS5', 8),
(188, 'Adobe illustrator', 8),
(189, 'Adobe illustrator CS6', 8),
(190, 'Adobe Photoshop', 8),
(191, 'Adobe Photoshop CS6', 8),
(192, 'Apple Motion', 8),
(193, 'Apple iMovie', 8),
(194, 'Audio Design', 8),
(195, 'Audio Editing', 8),
(196, 'Audio Mixing', 8),
(197, 'Autodesk 3D Studio Max', 8),
(198, 'Blog Development', 8),
(199, 'Bootstrap', 8),
(200, 'Brochure Design', 8),
(201, 'Business Card Design', 8),
(202, 'CPU Design', 8),
(203, 'GUI', 8),
(204, 'Calligraphy', 8),
(205, 'Cartooning', 8),
(206, 'Character Design', 8),
(207, 'Comic Art', 8),
(208, 'Computer Graphics', 8),
(209, 'Computer Hardware Design', 8),
(210, 'CorelDraw', 8),
(211, 'Fashion Design', 8),
(212, 'Flash 3D', 8),
(213, 'Font Development', 8),
(214, 'GIMP', 8),
(215, 'GUI Design', 8),
(216, 'Graphic Design', 8),
(217, 'Icon Design', 8),
(218, 'Illustration', 8),
(219, 'Image Editing', 8),
(220, 'Image Processing', 8),
(221, 'Lettering', 8),
(222, 'Lightwave 3D', 8),
(223, 'Logo Design', 8),
(224, 'Machine Design', 8),
(225, 'Maxon Cinema 3D', 8),
(226, 'Max', 8),
(227, 'Maya', 8),
(228, 'Medical illustration', 8),
(229, 'Microsoft Power Point', 8),
(230, 'Mobile UI Design', 8),
(231, 'Motion Graphics', 8),
(232, 'NVIDIA Mental Ray', 8),
(233, 'Nevigation System Design', 8),
(234, 'Photo Editing', 8),
(235, 'Templates', 8),
(236, 'Sticker Design', 8),
(237, 'UV Mapping', 8),
(238, 'VFX Animation', 8),
(239, 'VFX Design', 8),
(240, 'Video Conversion', 8),
(241, 'Video Editing', 8),
(242, 'Video Production', 8),
(243, 'Video Publishing', 8),
(244, 'Videography', 8),
(245, 'Web Design', 8),
(246, 'Apple iBook', 12),
(247, 'Artical Writing', 12),
(248, 'Artical Rewriting', 12),
(249, 'Biography Writing', 12),
(250, 'Blog Writing', 12),
(251, 'Blogging', 12),
(252, 'Book Writing', 12),
(253, 'Business Proposal Writing', 12),
(254, 'Comedy Writing', 12),
(255, 'Comic Writing', 12),
(256, 'Cooking', 12),
(257, 'English Grammer', 12),
(258, 'English-Japanese Translation', 12),
(259, 'English-Korean Translation', 12),
(260, 'English-Mandarin Translation', 12),
(261, 'English-Norwegian Translation', 12),
(262, 'English-Polish Translation', 12),
(263, 'English-Portuguese Translation', 12),
(264, 'English-Russian Translation', 12),
(265, 'English-Spanish Translation', 12),
(266, 'English-Swedish Translation', 12),
(267, 'English-Tagalog Translation', 12),
(268, 'English-Ukrainian Translation', 12),
(269, 'Hindi', 12),
(270, 'History', 12),
(271, 'Marathi', 12),
(272, 'Malayalam', 12),
(273, 'Microsoft Word', 12),
(274, 'Proposal Writing', 12),
(275, 'Report Writing', 12),
(276, 'Software Documentation', 12),
(277, 'Wikipedia', 12),
(278, 'Yahoo! Messenger', 12),
(279, 'Web Content Management', 12),
(280, 'Account Management', 13),
(281, 'Ad Planning and Buying', 13),
(282, 'B2B Marketing', 13),
(283, 'Broadcasting Advertising', 13),
(284, 'Bulk Marketing', 13),
(285, 'CRM', 13),
(286, 'Direct Marketing', 13),
(287, 'Facebook Marketing', 13),
(288, 'Freelance Marketing', 13),
(289, 'In-Game Advertising', 13),
(290, 'Inbound Marketing', 13),
(291, 'Internet Marketing', 13),
(292, 'Link Building', 13),
(293, 'Microsoft AdCenter', 13),
(294, 'Multi Level Marketing (MLM)', 13),
(295, 'Off-page Optimization', 13),
(296, 'Pay Per Click Advertising', 13),
(297, 'Search Engine Marketing (SEM)', 13),
(298, 'Social Media Marketing', 13),
(299, 'Web Analytics', 13),
(300, 'BPO IT Services', 15),
(301, 'Call Center Skills', 15),
(302, 'Chat Support', 15),
(303, 'Computer Repair', 15),
(304, 'Computer Skills', 15),
(305, 'Data Entry', 15),
(306, 'Data Backup', 15),
(307, 'Email Handling', 15),
(308, 'Event Planning', 15),
(309, 'Google Docs', 15),
(310, 'Helpdesk', 15),
(311, 'Interviewing', 15),
(312, 'Microsoft Office', 15),
(313, 'Microsoft OneNote', 15),
(314, 'Microsoft OutLook', 15),
(315, 'Mind Mapping', 15),
(316, 'Open Office', 15),
(317, 'Order Entry', 15),
(318, 'PDF Conversion', 15),
(319, 'Tally ERP', 15),
(320, '3D Printing', 17),
(321, '3D Scanning', 17),
(322, '3D System', 17),
(323, 'AutoCAD', 17),
(324, 'Microcontroller', 17),
(325, 'Electronic Design', 17),
(326, 'Materials Engineering', 17),
(327, 'Mathematics', 17),
(328, 'Mechanical Engineering', 17),
(329, 'Mechatronics', 17),
(330, 'PCB Design', 17),
(331, 'Project Scheduling', 17),
(332, 'Robotics', 17),
(333, 'Structural Analysis', 17),
(334, 'Wi-Fi', 17),
(335, 'Accounting', 20),
(336, 'Acquistions', 20),
(337, 'Analytics', 20),
(338, 'Bank Reconcilliation', 20),
(339, 'Corporate Finance', 20),
(340, 'Economics', 20),
(341, 'Event Management', 20),
(342, 'Finance Management', 20),
(343, 'Project Management Professionals', 20),
(344, 'Project Planning', 20),
(345, 'Recruiter', 20),
(346, 'SAP Crystal Reports', 20),
(347, 'Six Sigma', 20),
(348, 'Statistics', 20),
(349, 'Stock Management', 20),
(350, 'Strategic Planning', 20),
(351, 'Technical Recruiter', 20),
(352, 'Alternative Dispute Resolution', 21),
(353, 'Consumer Protection', 21),
(354, 'Contract Drafting', 21),
(355, 'Copyright', 21),
(356, 'Criminal Law', 21),
(357, 'Environmental Law', 21),
(358, 'Family Law', 21),
(359, 'Fraud Analysis', 21),
(360, 'Immigration Law', 21),
(361, 'Intellectual Property Law', 21),
(362, 'Medical Law', 21),
(363, 'Notary Public', 21),
(364, 'Patent Law', 21),
(365, 'Real Estate Law', 21),
(366, 'Tax Law', 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(12) NOT NULL,
  `state_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`) VALUES
(1, 'Gujarat'),
(2, 'Maharashtra'),
(3, 'Punjab'),
(4, 'Rajasthan'),
(6, 'Uttar Pradesh'),
(7, 'Chhatisgarh'),
(8, 'Jharkhand'),
(9, 'Tamilnadu'),
(10, 'Uttaranchal'),
(11, 'West Bengal'),
(12, 'Karnataka');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `sub_cat_id` int(12) NOT NULL,
  `sub_cat_name` varchar(100) DEFAULT NULL,
  `cat_id` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`sub_cat_id`, `sub_cat_name`, `cat_id`) VALUES
(1, 'Website Design', 1),
(2, 'Web Programming', 1),
(3, 'Data Analysis', 1),
(4, 'Animation', 8),
(5, 'Design Project Management', 8),
(6, 'Graphic Design', 8),
(7, '3D Modelling', 17),
(8, 'Architecture', 17),
(12, 'E-books and Blogs', 12),
(13, 'Blog Programming', 1),
(14, 'Business Intelligence', 1),
(15, 'Data Engineering', 1),
(16, 'Data Science', 1),
(17, 'Database Administration', 1),
(18, 'Database Development', 1),
(19, 'Flash and Flex Animation', 1),
(20, 'Mobile Applications', 1),
(21, 'Other - Data Science', 1),
(22, 'Product Management', 1),
(23, 'Project Management', 1),
(24, 'Search Engine Optimization', 1),
(25, 'Software Application', 1),
(26, 'Statistics', 1),
(27, 'System Administration', 1),
(28, 'Networking and Security', 1),
(29, 'Technical Project Management', 1),
(30, 'Technical Support', 1),
(31, 'Testing and QA', 1),
(32, 'User Experience Design', 1),
(33, 'Other IT and Programming', 1),
(34, 'Art', 8),
(35, 'Banner Ads', 8),
(36, 'Brochures', 8),
(37, 'Cartoons and Comics', 8),
(38, 'Corporate Identity Kit', 8),
(39, 'Digital Image Editing', 8),
(40, 'Emails and Newsletters', 8),
(41, 'Illustration', 8),
(42, 'Label and Package Design', 8),
(43, 'Logos', 8),
(44, 'Mobile Design', 8),
(45, 'Page and Book Design', 8),
(46, 'Photography', 8),
(47, 'Presentations', 8),
(48, 'Stationery Design', 8),
(49, 'Videos', 8),
(50, 'Voice Talent', 8),
(51, 'Other - Design', 8),
(52, 'Other - Multimedia Services', 8),
(53, 'Arabic &lt;-&gt; English Translation', 12),
(54, 'Academic Writing', 12),
(55, 'Article Writing', 12),
(56, 'Chinese &lt;-&gt; English Translation', 12),
(57, 'Copywriting', 12),
(58, 'Creative Writing', 12),
(59, 'Editing &amp; Proofreading', 12),
(60, 'German &lt;-&gt; English Translation', 12),
(61, 'Ghost Writing', 12),
(62, 'Grant Writing', 12),
(63, 'Japanese &lt;-&gt; English Translation', 12),
(64, 'Newsletters', 12),
(65, 'Other - Translation', 12),
(66, 'Portuguese &lt;-&gt; English Translation', 12),
(67, 'Press Releases', 12),
(68, 'Report Writing', 12),
(69, 'Resumes &amp; Cover Letters', 12),
(70, 'Russian &lt;-&gt; English Translation', 12),
(71, 'Sales Writing', 12),
(72, 'Spanish &lt;-&gt; English Translation', 12),
(73, 'Speeches', 12),
(74, 'Technical Writing', 12),
(75, 'Translation', 12),
(76, 'Translation Project Management', 12),
(77, 'User Guides &amp; Manuals', 12),
(78, 'Web Content', 12),
(79, 'Writing Project Management', 12),
(80, ' Other - Writing Services', 12),
(81, 'Ad Campaigns', 13),
(82, 'Business Plans', 13),
(83, 'Email Marketing', 13),
(84, 'Lead Generation', 13),
(85, 'Marketing &amp; Sales Consulting', 13),
(86, 'Marketing Project Management', 13),
(87, 'Marketing Strategy', 13),
(88, 'Product Marketing ', 13),
(89, 'Public Relations Consulting', 13),
(90, 'Research &amp; Surveys', 13),
(91, 'Sales Presentations', 13),
(92, 'Search Engine Marketing', 13),
(93, 'Telemarketing', 13),
(94, 'Training', 13),
(95, 'Viral Marketing', 13),
(96, 'Other - Sales &amp; Marketing', 13),
(97, 'Bulk Mailing', 15),
(98, 'Community Moderation', 15),
(99, 'Content Management', 15),
(100, 'Customer Service', 15),
(101, 'Customer Service Project Management', 15),
(102, 'Data Entry', 15),
(103, 'Event Planning', 15),
(104, 'Fact Checking', 15),
(105, 'Mailing List Development', 15),
(106, 'Office Management', 15),
(107, 'Other - Customer Service &amp; Moderation', 15),
(108, 'Presentation Formatting', 15),
(109, 'Research', 15),
(110, 'Social Network Management', 15),
(111, 'Transcription', 15),
(112, 'Travel Planning', 15),
(113, 'Virtual Assistant', 15),
(114, ' Word Processing', 15),
(115, 'Other - Administrative Support', 15),
(116, 'CAD', 17),
(117, 'Chemical Engineering', 17),
(118, 'Civil &amp; Structural', 17),
(119, 'Contract Manufacturing', 17),
(120, 'Electrical', 17),
(121, 'Interior Design', 17),
(122, 'Mechanical', 17),
(123, 'Product Design', 17),
(124, 'Other - Engineering &amp; Manufacturing', 17),
(125, 'Accounting', 20),
(126, 'Billing &amp; Collections', 20),
(127, 'Financial Planning', 20),
(128, 'Financial Reporting', 20),
(129, 'HR Policies &amp; Plans', 20),
(130, 'Investment Analysis', 20),
(131, 'Management Consulting', 20),
(132, 'Outsourcing Consulting', 20),
(133, 'Recruiting', 20),
(134, 'Tax Services', 20),
(135, 'Other - Finance &amp; Mgmt', 20),
(136, 'Bankruptcy', 21),
(137, 'Business and Corporate', 21),
(138, 'Contracts', 21),
(139, 'Criminal', 21),
(140, 'Family', 21),
(141, 'Immigration', 21),
(142, 'Incorporation', 21),
(143, 'Internet Law', 21),
(144, 'Labor &amp; Employment Law', 21),
(145, 'Landlord and Tenant', 21),
(146, 'Litigation', 21),
(147, 'Negligence', 21),
(148, 'Other Legal Fields', 21),
(149, 'Other Legal Services', 21),
(150, 'Paralegal Services', 21),
(151, 'Patent, Copyright and Trademarks', 21),
(152, 'Personal Injury', 21),
(153, 'Real Estate', 21),
(154, 'Tax Law', 21),
(155, ' Wills, Trusts and Estates', 21),
(156, 'Other - Legal', 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `test_id` int(12) NOT NULL,
  `org_id` int(12) DEFAULT NULL,
  `user_id` int(12) DEFAULT NULL,
  `testimonial` text DEFAULT NULL,
  `test_isdisplay` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`test_id`, `org_id`, `user_id`, `testimonial`, `test_isdisplay`, `date`) VALUES
(1, 39, NULL, 'Good Features.....................', '0', '2015-04-22'),
(7, NULL, 11, 'Hi', '0', '2015-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `trans_id` int(12) NOT NULL,
  `final_id` int(12) DEFAULT NULL,
  `org_id` int(12) DEFAULT NULL,
  `trans_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaction`
--

INSERT INTO `tbl_transaction` (`trans_id`, `final_id`, `org_id`, `trans_date`) VALUES
(17, 1, 39, '2015-05-07 21:55:41 PM'),
(18, 5, 39, '2015-05-08 13:55:14 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(12) NOT NULL,
  `account_type` varchar(30) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `cat_id` int(12) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `account_type`, `firstname`, `lastname`, `email_id`, `cat_id`, `city_id`, `photo`, `password`, `date`) VALUES
(11, 'Company', 'Anushka', 'Sharma', 'anushka@gmail.com', 1, 2, '../admin/user/1505080241unnamed-1.jpg', '123', '2015-04-19 18:05:31'),
(12, 'Individual', 'Vinay', 'Ghael', 'vinay@gmail.com', 1, 22, '../admin/user/1505080241unnamed-1.jpg', '123', '2015-04-19 18:30:57'),
(18, 'Individual', 'Umesh', 'Yadav', 'uyadav@gmail.com', 1, 75, '../admin/user/1505080241unnamed-1.jpg', '123', '2015-05-06 13:58:11'),
(30, 'Company', 'Vasu', 'Rane', 'vasu@gmail.com', 15, 45, '../admin/user/1505080241unnamed-1.jpg', '123', '2015-05-08 20:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_portfolio`
--

CREATE TABLE `tbl_user_portfolio` (
  `portfolio_id` int(12) NOT NULL,
  `user_id` int(12) DEFAULT NULL,
  `portfolio_name` varchar(150) DEFAULT NULL,
  `portfolio_photo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_portfolio`
--

INSERT INTO `tbl_user_portfolio` (`portfolio_id`, `user_id`, `portfolio_name`, `portfolio_photo`) VALUES
(9, 11, 'Deneloped Wedding Website For Couple', '../admin/user_portfolio/15041912411504161016WeddingWebsite.png'),
(10, 11, 'NanhiKali Wesite', '../admin/user_portfolio/15041912281504161029NanhiKali.png'),
(11, 12, 'Happy 2 Help Charity Website', '../admin/user_portfolio/1504190116NGO.png'),
(12, 12, 'Matrimonial Website', '../admin/user_portfolio/1504190158ShaadiMubarak.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_profile`
--

CREATE TABLE `tbl_user_profile` (
  `user_profile_id` int(12) NOT NULL,
  `user_id` int(12) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `founded_year` varchar(30) DEFAULT NULL,
  `total_emp` varchar(50) DEFAULT NULL,
  `hourly_rate` varchar(100) DEFAULT NULL,
  `client_charge` varchar(100) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `service` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_profile`
--

INSERT INTO `tbl_user_profile` (`user_profile_id`, `user_id`, `display_name`, `education`, `company_name`, `founded_year`, `total_emp`, `hourly_rate`, `client_charge`, `overview`, `service`) VALUES
(6, 11, NULL, NULL, 'Arti Infotech', '2014', '19', '40', '43.5', 'Arti Infotech is a proficient web design / development company located in Surat, Gujarat, India. The company started on 13 Dec, 2014 at Surat, Gujarat. We provide web solutions to end users. We can understand your requirements quite well and deliver the desired results in very short time. We specialize in providing all the services required for your web design / development needs. Our web designing process makes us quite different and competitive from our competition.', 'We develop following types of Web Application:\r\n\r\n1.Bussiness Website\r\n2.Wedding(Couple) Website\r\n3.Commercial Website\r\n4.Other Event Website\r\n\r\nArti Infotech also provide Project Training:\r\n\r\n1. ASP.NET with VB\r\n2. PHP\r\n3. HTML\r\n\r\nGraphics Designing\r\n\r\n1. Logo Design\r\n2. Presentation Design.\r\n\r\nWe provide reliable, quality, and value added services to focus on your core business needs so that you are assured that a dedicated offshore team is working for you.\r\n\r\nArti Infotech has a vision that offers and delivers offshore software outsourcing services on the following promises: Quality, Cost-effective Services within Clients Budget and Project Deliverables on Client Timelines, Complete Customer Satisfaction.'),
(7, 12, 'Vinay G.', 'B.Tech(IT)', NULL, NULL, NULL, '20', '21.75', 'I am expert in php, wordpress, joomla, magento, html, css, psd to html, bootstrap.\r\n\r\n2 Years experiance to work with Tech Ascender Company.', 'What I Do\r\n\r\nCustom Website Design\r\nCorporate Website Design\r\nWebsite Development\r\nWeb Application Development\r\nDesktop Application Development'),
(8, 18, 'Umesh Mak', 'B.Tech(IT)', NULL, NULL, NULL, '30', '32.625', 'N/A', 'N/A'),
(9, 30, NULL, NULL, 'JP Morgan Chase & Co.', '2010', '99', '40', '43.5', 'N/A', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_skill`
--

CREATE TABLE `tbl_user_skill` (
  `user_skill_id` int(12) NOT NULL,
  `user_id` int(12) DEFAULT NULL,
  `user_skills` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_skill`
--

INSERT INTO `tbl_user_skill` (`user_skill_id`, `user_id`, `user_skills`) VALUES
(40, 11, 'Adobe Dreamweaver CS5, '),
(41, 11, 'Adobe Photoshop CS6, '),
(42, 11, 'AJAX, '),
(43, 11, 'CSS 3, '),
(44, 11, 'MySQL Programming, '),
(45, 11, 'PHP5, '),
(46, 11, 'HTML5, '),
(47, 12, 'Adobe Photoshop CS6, '),
(48, 12, 'AJAX, '),
(49, 12, 'AngularJS, '),
(50, 12, 'Database Design, '),
(51, 12, 'DBMS, '),
(52, 12, 'DHTML, '),
(53, 12, 'Joomla!, '),
(54, 12, 'Magento, '),
(55, 12, 'MySQL Programming, '),
(56, 12, 'PHP, '),
(58, 12, 'Project Planning, '),
(59, 12, 'WordPress, '),
(60, 18, 'Artificial Intelligence, '),
(61, 18, 'Data Analytics, '),
(62, 18, 'Data Mining, '),
(63, 18, 'Data Science, '),
(64, 18, 'Data Structure, '),
(65, 18, 'Machine Learning, '),
(66, 30, 'Chat Support, '),
(67, 30, 'Computer Repair, '),
(68, 30, 'Email Handling, '),
(69, 30, 'Microsoft Access Programming, '),
(70, 30, 'Microsoft Office, '),
(71, 30, 'Microsoft OutLook, '),
(72, 30, 'Tally ERP, ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_workfile`
--

CREATE TABLE `tbl_workfile` (
  `file_id` int(12) NOT NULL,
  `job_id` int(12) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_bidding`
--
ALTER TABLE `tbl_bidding`
  ADD PRIMARY KEY (`bidding_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `client_id` (`org_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `tbl_client_profile`
--
ALTER TABLE `tbl_client_profile`
  ADD PRIMARY KEY (`client_profile_id`),
  ADD KEY `org_id` (`org_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `sub_cat_id` (`sub_cat_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `tbl_job_assign`
--
ALTER TABLE `tbl_job_assign`
  ADD PRIMARY KEY (`final_id`),
  ADD KEY `bidding_id` (`bidding_id`),
  ADD KEY `org_id` (`org_id`);

--
-- Indexes for table `tbl_opportunities`
--
ALTER TABLE `tbl_opportunities`
  ADD PRIMARY KEY (`own_freelancer_id`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `tbl_organization`
--
ALTER TABLE `tbl_organization`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `sub_cat_id` (`cat_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`sub_cat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`test_id`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `org_id_2` (`org_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `org_id` (`org_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `tbl_user_portfolio`
--
ALTER TABLE `tbl_user_portfolio`
  ADD PRIMARY KEY (`portfolio_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_user_profile`
--
ALTER TABLE `tbl_user_profile`
  ADD PRIMARY KEY (`user_profile_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_user_skill`
--
ALTER TABLE `tbl_user_skill`
  ADD PRIMARY KEY (`user_skill_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_workfile`
--
ALTER TABLE `tbl_workfile`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `job_id` (`job_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_bidding`
--
ALTER TABLE `tbl_bidding`
  MODIFY `bidding_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  MODIFY `msg_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `city_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tbl_client_profile`
--
ALTER TABLE `tbl_client_profile`
  MODIFY `client_profile_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feed_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `job_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tbl_job_assign`
--
ALTER TABLE `tbl_job_assign`
  MODIFY `final_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_opportunities`
--
ALTER TABLE `tbl_opportunities`
  MODIFY `own_freelancer_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_organization`
--
ALTER TABLE `tbl_organization`
  MODIFY `org_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  MODIFY `skill_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `sub_cat_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `test_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `trans_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_user_portfolio`
--
ALTER TABLE `tbl_user_portfolio`
  MODIFY `portfolio_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user_profile`
--
ALTER TABLE `tbl_user_profile`
  MODIFY `user_profile_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user_skill`
--
ALTER TABLE `tbl_user_skill`
  MODIFY `user_skill_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tbl_workfile`
--
ALTER TABLE `tbl_workfile`
  MODIFY `file_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bidding`
--
ALTER TABLE `tbl_bidding`
  ADD CONSTRAINT `tbl_bidding_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_bidding_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `tbl_jobs` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD CONSTRAINT `tbl_chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_chat_ibfk_2` FOREIGN KEY (`org_id`) REFERENCES `tbl_organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_chat_ibfk_3` FOREIGN KEY (`job_id`) REFERENCES `tbl_jobs` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD CONSTRAINT `tbl_city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `tbl_state` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_client_profile`
--
ALTER TABLE `tbl_client_profile`
  ADD CONSTRAINT `tbl_client_profile_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `tbl_organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD CONSTRAINT `tbl_jobs_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `tbl_organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_jobs_ibfk_2` FOREIGN KEY (`sub_cat_id`) REFERENCES `tbl_sub_category` (`sub_cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_jobs_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `tbl_city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_job_assign`
--
ALTER TABLE `tbl_job_assign`
  ADD CONSTRAINT `tbl_job_assign_ibfk_1` FOREIGN KEY (`bidding_id`) REFERENCES `tbl_bidding` (`bidding_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_job_assign_ibfk_2` FOREIGN KEY (`org_id`) REFERENCES `tbl_organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_opportunities`
--
ALTER TABLE `tbl_opportunities`
  ADD CONSTRAINT `tbl_opportunities_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `tbl_organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_opportunities_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_opportunities_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `tbl_city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  ADD CONSTRAINT `tbl_skill_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `tbl_category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD CONSTRAINT `tbl_sub_category_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `tbl_category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD CONSTRAINT `tbl_testimonial_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `tbl_organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_testimonial_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD CONSTRAINT `tbl_transaction_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `tbl_organization` (`org_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `tbl_category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_user_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `tbl_city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user_portfolio`
--
ALTER TABLE `tbl_user_portfolio`
  ADD CONSTRAINT `tbl_user_portfolio_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user_profile`
--
ALTER TABLE `tbl_user_profile`
  ADD CONSTRAINT `tbl_user_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user_skill`
--
ALTER TABLE `tbl_user_skill`
  ADD CONSTRAINT `tbl_user_skill_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_workfile`
--
ALTER TABLE `tbl_workfile`
  ADD CONSTRAINT `tbl_workfile_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `tbl_jobs` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
