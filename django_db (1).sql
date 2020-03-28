-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2020 at 09:53 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add business', 1, 'add_business'),
(2, 'Can change business', 1, 'change_business'),
(3, 'Can delete business', 1, 'delete_business'),
(4, 'Can view business', 1, 'view_business'),
(5, 'Can add field schema', 2, 'add_fieldschema'),
(6, 'Can change field schema', 2, 'change_fieldschema'),
(7, 'Can delete field schema', 2, 'delete_fieldschema'),
(8, 'Can view field schema', 2, 'view_fieldschema'),
(9, 'Can add model schema', 3, 'add_modelschema'),
(10, 'Can change model schema', 3, 'change_modelschema'),
(11, 'Can delete model schema', 3, 'delete_modelschema'),
(12, 'Can view model schema', 3, 'view_modelschema'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add model field schema', 5, 'add_modelfieldschema'),
(18, 'Can change model field schema', 5, 'change_modelfieldschema'),
(19, 'Can delete model field schema', 5, 'delete_modelfieldschema'),
(20, 'Can view model field schema', 5, 'view_modelfieldschema'),
(21, 'Can add log entry', 6, 'add_logentry'),
(22, 'Can change log entry', 6, 'change_logentry'),
(23, 'Can delete log entry', 6, 'delete_logentry'),
(24, 'Can view log entry', 6, 'view_logentry'),
(25, 'Can add permission', 7, 'add_permission'),
(26, 'Can change permission', 7, 'change_permission'),
(27, 'Can delete permission', 7, 'delete_permission'),
(28, 'Can view permission', 7, 'view_permission'),
(29, 'Can add group', 8, 'add_group'),
(30, 'Can change group', 8, 'change_group'),
(31, 'Can delete group', 8, 'delete_group'),
(32, 'Can view group', 8, 'view_group'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add content type', 10, 'add_contenttype'),
(38, 'Can change content type', 10, 'change_contenttype'),
(39, 'Can delete content type', 10, 'delete_contenttype'),
(40, 'Can view content type', 10, 'view_contenttype'),
(41, 'Can add session', 11, 'add_session'),
(42, 'Can change session', 11, 'change_session'),
(43, 'Can delete session', 11, 'delete_session'),
(44, 'Can view session', 11, 'view_session'),
(45, 'Can add buyer', 12, 'add_buyer'),
(46, 'Can change buyer', 12, 'change_buyer'),
(47, 'Can delete buyer', 12, 'delete_buyer'),
(48, 'Can view buyer', 12, 'view_buyer'),
(49, 'Can add addsupform', 13, 'add_addsupform'),
(50, 'Can change addsupform', 13, 'change_addsupform'),
(51, 'Can delete addsupform', 13, 'delete_addsupform'),
(52, 'Can view addsupform', 13, 'view_addsupform'),
(53, 'Can add bidform', 14, 'add_bidform'),
(54, 'Can change bidform', 14, 'change_bidform'),
(55, 'Can delete bidform', 14, 'delete_bidform'),
(56, 'Can view bidform', 14, 'view_bidform'),
(57, 'Can add post', 15, 'add_post'),
(58, 'Can change post', 15, 'change_post'),
(59, 'Can delete post', 15, 'delete_post'),
(60, 'Can view post', 15, 'view_post'),
(61, 'Can add auction bid', 16, 'add_auctionbid'),
(62, 'Can change auction bid', 16, 'change_auctionbid'),
(63, 'Can delete auction bid', 16, 'delete_auctionbid'),
(64, 'Can view auction bid', 16, 'view_auctionbid'),
(65, 'Can add auction configuration', 17, 'add_auctionconfiguration'),
(66, 'Can change auction configuration', 17, 'change_auctionconfiguration'),
(67, 'Can delete auction configuration', 17, 'delete_auctionconfiguration'),
(68, 'Can view auction configuration', 17, 'view_auctionconfiguration'),
(69, 'Can add auction participants', 18, 'add_auctionparticipants'),
(70, 'Can change auction participants', 18, 'change_auctionparticipants'),
(71, 'Can delete auction participants', 18, 'delete_auctionparticipants'),
(72, 'Can view auction participants', 18, 'view_auctionparticipants'),
(73, 'Can add snippet', 19, 'add_snippet'),
(74, 'Can change snippet', 19, 'change_snippet'),
(75, 'Can delete snippet', 19, 'delete_snippet'),
(76, 'Can view snippet', 19, 'view_snippet');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'admin', 'logentry'),
(8, 'auth', 'group'),
(7, 'auth', 'permission'),
(9, 'auth', 'user'),
(10, 'contenttypes', 'contenttype'),
(5, 'dynamic_models', 'modelfieldschema'),
(11, 'sessions', 'session'),
(13, 'web', 'addsupform'),
(16, 'web', 'auctionbid'),
(17, 'web', 'auctionconfiguration'),
(18, 'web', 'auctionparticipants'),
(14, 'web', 'bidform'),
(1, 'web', 'business'),
(12, 'web', 'buyer'),
(2, 'web', 'fieldschema'),
(3, 'web', 'modelschema'),
(15, 'web', 'post'),
(19, 'web', 'snippet'),
(4, 'web', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-20 19:07:26.327679'),
(2, 'auth', '0001_initial', '2020-03-20 19:07:35.520577'),
(3, 'admin', '0001_initial', '2020-03-20 19:07:38.773134'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-20 19:07:38.944790'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-20 19:07:38.998933'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-20 19:07:41.662409'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-20 19:07:42.938715'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-20 19:07:44.040728'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-20 19:07:44.448057'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-20 19:07:45.136220'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-20 19:07:45.181624'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-20 19:07:45.320911'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-20 19:07:46.336004'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-20 19:07:47.676840'),
(15, 'sessions', '0001_initial', '2020-03-20 19:07:48.958506'),
(16, 'web', '0001_initial', '2020-03-20 19:07:58.095272'),
(17, 'web', '0002_remove_auctionconfiguration_cancelledby', '2020-03-20 19:07:58.893327'),
(18, 'web', '0003_auto_20190922_1925', '2020-03-20 19:08:00.625760'),
(19, 'web', '0004_auto_20190922_1925', '2020-03-20 19:08:02.948372'),
(20, 'web', '0005_auto_20190922_1930', '2020-03-20 19:08:04.805036'),
(21, 'web', '0006_auto_20190922_1931', '2020-03-20 19:08:07.033620'),
(22, 'web', '0007_remove_auctionconfiguration_approved', '2020-03-20 19:08:07.784161'),
(23, 'web', '0008_auctionconfiguration_approved', '2020-03-20 19:08:08.385253'),
(24, 'web', '0009_auctionbid_auctionparticipants', '2020-03-20 19:08:12.025189'),
(25, 'web', '0010_auto_20190928_1245', '2020-03-20 19:08:12.993222'),
(26, 'web', '0011_auctionparticipants', '2020-03-20 19:08:15.318623'),
(27, 'web', '0012_auctionbid', '2020-03-20 19:08:17.513999'),
(28, 'web', '0013_auto_20200213_1344', '2020-03-20 19:08:17.590445'),
(29, 'web', '0014_auto_20200321_0037', '2020-03-20 19:08:25.271102'),
(30, 'web', '0015_buyer', '2020-03-20 19:15:15.307703'),
(31, 'web', '0016_auto_20200321_0045', '2020-03-20 19:15:40.298666'),
(32, 'web', '0017_snippet', '2020-03-21 10:05:18.596733'),
(33, 'web', '0018_remove_snippet_email', '2020-03-21 10:14:01.695002');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('k0ah211u6b44wqlcjsy6g7g5tqx9o7ia', 'NTkwODE1YmFlM2NiYTE0MDY0YzJkYWFiZGI2NjY5NjFiNWE2YjE4ODp7InVzZXJuYW1lIjoiYWxhdWtpayJ9', '2020-04-06 08:57:07.918704'),
('qfpma30l54zjaoj3kh99blcj6mwfljkb', 'NTkwODE1YmFlM2NiYTE0MDY0YzJkYWFiZGI2NjY5NjFiNWE2YjE4ODp7InVzZXJuYW1lIjoiYWxhdWtpayJ9', '2020-04-03 19:33:11.036794');

-- --------------------------------------------------------

--
-- Table structure for table `web_addsupform`
--

CREATE TABLE `web_addsupform` (
  `id` int(11) NOT NULL,
  `comp` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_auctionbid`
--

CREATE TABLE `web_auctionbid` (
  `BidID` int(11) NOT NULL,
  `BidAmount` int(11) NOT NULL,
  `BasePrice` int(11) NOT NULL,
  `Discount` int(11) DEFAULT NULL,
  `Reamount` int(11) NOT NULL,
  `CreatedOn` datetime(6) NOT NULL,
  `BidRank` int(11) NOT NULL,
  `user` longtext NOT NULL,
  `AuctionId_id` varchar(255) NOT NULL,
  `SupplierID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_auctionconfiguration`
--

CREATE TABLE `web_auctionconfiguration` (
  `AuctionId` varchar(255) NOT NULL,
  `MaterialID` varchar(255) DEFAULT NULL,
  `AuctionNumber` varchar(255) DEFAULT NULL,
  `AuctionName` varchar(255) DEFAULT NULL,
  `AuctionDescripton` longtext NOT NULL,
  `AuctionReference` varchar(255) DEFAULT NULL,
  `AuctionTypeID` varchar(10) NOT NULL,
  `CurrencyID` varchar(3) NOT NULL,
  `BasePrice` int(11) NOT NULL,
  `AuctionStartDate` datetime(6) NOT NULL,
  `AuctionEndDate` datetime(6) NOT NULL,
  `BidRank` int(11) NOT NULL,
  `StartOvertime` int(11) NOT NULL,
  `OvertimePeriod` int(11) NOT NULL,
  `Approved` longtext NOT NULL,
  `live` longtext NOT NULL,
  `Completed` longtext NOT NULL,
  `Cancelled_Rejected` longtext NOT NULL,
  `CreatedBy` longtext NOT NULL,
  `CancelledOn` datetime(6) NOT NULL,
  `CancelledBy` longtext NOT NULL,
  `BusinessID_id` varchar(255) NOT NULL,
  `BuyerID_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_auctionparticipants`
--

CREATE TABLE `web_auctionparticipants` (
  `SupplierID` int(11) NOT NULL,
  `SupplierType` varchar(255) NOT NULL,
  `SupplierSapCode` varchar(255) NOT NULL,
  `SupplierName` varchar(100) NOT NULL,
  `SupplierShortName` varchar(100) NOT NULL,
  `SupplierEmailID` varchar(254) NOT NULL,
  `SupplierContactNo` varchar(10) NOT NULL,
  `SupplierCity` varchar(50) NOT NULL,
  `SupplierCountry` varchar(255) NOT NULL,
  `SupplierRegion` varchar(255) NOT NULL,
  `TendorNo` int(11) NOT NULL,
  `BidProducts` int(11) NOT NULL,
  `QuoteReference` varchar(255) NOT NULL,
  `SupplierRank` int(11) NOT NULL,
  `Baseprice` int(11) NOT NULL,
  `InitialBidAmount` int(11) NOT NULL,
  `ConversionRate` varchar(255) NOT NULL,
  `ConversionAmount` varchar(255) NOT NULL,
  `IsTermsAccepted` varchar(255) NOT NULL,
  `UserID` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `IsProxy` tinyint(1) NOT NULL,
  `CreatedOn` datetime(6) NOT NULL,
  `CreatedBy` varchar(255) NOT NULL,
  `ModifiedOn` datetime(6) NOT NULL,
  `ModifiedBy` varchar(255) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsDisabled` tinyint(1) NOT NULL,
  `SupplierContactName` varchar(255) NOT NULL,
  `AuctionID_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_bidform`
--

CREATE TABLE `web_bidform` (
  `id` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `dat_from` date NOT NULL,
  `dat_to` date NOT NULL,
  `pub_time` time(6) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `bid_start` time(6) NOT NULL,
  `bid_end` time(6) NOT NULL,
  `req` longtext NOT NULL,
  `int_bid` longtext NOT NULL,
  `dec_bid` varchar(255) DEFAULT NULL,
  `participants` longtext NOT NULL,
  `live` longtext NOT NULL,
  `Completed` longtext NOT NULL,
  `Cancelled_Rejected` longtext NOT NULL,
  `conversion_rate` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_business`
--

CREATE TABLE `web_business` (
  `BusinessID` varchar(255) NOT NULL,
  `BusinessName` varchar(255) DEFAULT NULL,
  `BusinessCode` int(11) NOT NULL,
  `IsActive` varchar(255) DEFAULT NULL,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `CreatedOn` date NOT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `ModifiedOn` varchar(255) DEFAULT NULL,
  `TimeID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_buyer`
--

CREATE TABLE `web_buyer` (
  `BuyerID` varchar(255) NOT NULL,
  `BuyerCode` int(11) NOT NULL,
  `BuyerName` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `BusinessEmailID` varchar(254) NOT NULL,
  `BusinessID_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_fieldschema`
--

CREATE TABLE `web_fieldschema` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `data_type` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_modelschema`
--

CREATE TABLE `web_modelschema` (
  `id` int(11) NOT NULL,
  `_modified` datetime(6) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_post`
--

CREATE TABLE `web_post` (
  `id` int(11) NOT NULL,
  `user` longtext NOT NULL,
  `Inamount` int(11) NOT NULL,
  `Upamount` int(11) NOT NULL,
  `Discount` int(11) DEFAULT NULL,
  `Reamount` int(11) NOT NULL,
  `Conversion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `web_snippet`
--

CREATE TABLE `web_snippet` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `code` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_snippet`
--

INSERT INTO `web_snippet` (`id`, `created`, `title`, `code`) VALUES
(1, '2020-03-21 20:48:00.000000', 'first entry', '101');

-- --------------------------------------------------------

--
-- Table structure for table `web_user`
--

CREATE TABLE `web_user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(254) NOT NULL,
  `firstname` varchar(56) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `cellphone` varchar(14) NOT NULL,
  `address` varchar(255) NOT NULL,
  `town` varchar(45) NOT NULL,
  `post_code` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `user_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_user`
--

INSERT INTO `web_user` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `cellphone`, `address`, `town`, `post_code`, `country`, `user_type`) VALUES
(1, 'alaukik', '123', 'alaukik99@gmail.com', 'Alaukik', 'Tandlekar', '9426831058', 'surat', 'surat', '395007', 'India', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `web_addsupform`
--
ALTER TABLE `web_addsupform`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address` (`address`);

--
-- Indexes for table `web_auctionbid`
--
ALTER TABLE `web_auctionbid`
  ADD PRIMARY KEY (`BidID`),
  ADD KEY `web_auctionbid_AuctionId_id_91d678d9_fk_web_aucti` (`AuctionId_id`),
  ADD KEY `web_auctionbid_SupplierID_id_630de6b9_fk_web_aucti` (`SupplierID_id`);

--
-- Indexes for table `web_auctionconfiguration`
--
ALTER TABLE `web_auctionconfiguration`
  ADD PRIMARY KEY (`AuctionId`),
  ADD KEY `web_auctionconfigura_BusinessID_id_9f9e4c02_fk_web_busin` (`BusinessID_id`),
  ADD KEY `web_auctionconfigura_BuyerID_id_4c5e5747_fk_web_buyer` (`BuyerID_id`);

--
-- Indexes for table `web_auctionparticipants`
--
ALTER TABLE `web_auctionparticipants`
  ADD PRIMARY KEY (`SupplierID`),
  ADD KEY `web_auctionparticipa_AuctionID_id_2420f9b5_fk_web_aucti` (`AuctionID_id`);

--
-- Indexes for table `web_bidform`
--
ALTER TABLE `web_bidform`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `create_by` (`create_by`),
  ADD UNIQUE KEY `dec_bid` (`dec_bid`);

--
-- Indexes for table `web_business`
--
ALTER TABLE `web_business`
  ADD PRIMARY KEY (`BusinessID`);

--
-- Indexes for table `web_buyer`
--
ALTER TABLE `web_buyer`
  ADD PRIMARY KEY (`BuyerID`),
  ADD KEY `web_buyer_BusinessID_id_34d40854_fk_web_business_BusinessID` (`BusinessID_id`);

--
-- Indexes for table `web_fieldschema`
--
ALTER TABLE `web_fieldschema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_modelschema`
--
ALTER TABLE `web_modelschema`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `web_post`
--
ALTER TABLE `web_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_snippet`
--
ALTER TABLE `web_snippet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_user`
--
ALTER TABLE `web_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `web_addsupform`
--
ALTER TABLE `web_addsupform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_auctionbid`
--
ALTER TABLE `web_auctionbid`
  MODIFY `BidID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_bidform`
--
ALTER TABLE `web_bidform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_fieldschema`
--
ALTER TABLE `web_fieldschema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_modelschema`
--
ALTER TABLE `web_modelschema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_post`
--
ALTER TABLE `web_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_snippet`
--
ALTER TABLE `web_snippet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_user`
--
ALTER TABLE `web_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `web_auctionbid`
--
ALTER TABLE `web_auctionbid`
  ADD CONSTRAINT `web_auctionbid_AuctionId_id_91d678d9_fk_web_aucti` FOREIGN KEY (`AuctionId_id`) REFERENCES `web_auctionconfiguration` (`AuctionId`),
  ADD CONSTRAINT `web_auctionbid_SupplierID_id_630de6b9_fk_web_aucti` FOREIGN KEY (`SupplierID_id`) REFERENCES `web_auctionparticipants` (`SupplierID`);

--
-- Constraints for table `web_auctionconfiguration`
--
ALTER TABLE `web_auctionconfiguration`
  ADD CONSTRAINT `web_auctionconfigura_BusinessID_id_9f9e4c02_fk_web_busin` FOREIGN KEY (`BusinessID_id`) REFERENCES `web_business` (`BusinessID`),
  ADD CONSTRAINT `web_auctionconfigura_BuyerID_id_4c5e5747_fk_web_buyer` FOREIGN KEY (`BuyerID_id`) REFERENCES `web_buyer` (`BuyerID`);

--
-- Constraints for table `web_auctionparticipants`
--
ALTER TABLE `web_auctionparticipants`
  ADD CONSTRAINT `web_auctionparticipa_AuctionID_id_2420f9b5_fk_web_aucti` FOREIGN KEY (`AuctionID_id`) REFERENCES `web_auctionconfiguration` (`AuctionId`);

--
-- Constraints for table `web_buyer`
--
ALTER TABLE `web_buyer`
  ADD CONSTRAINT `web_buyer_BusinessID_id_34d40854_fk_web_business_BusinessID` FOREIGN KEY (`BusinessID_id`) REFERENCES `web_business` (`BusinessID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
