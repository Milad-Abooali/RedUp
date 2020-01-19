-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 20, 2020 at 03:08 AM
-- Server version: 10.3.19-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `redhue_ex`
--

-- --------------------------------------------------------

--
-- Table structure for table `ex_secret_key`
--

CREATE TABLE `ex_secret_key` (
  `id` int(11) NOT NULL,
  `skey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `page_title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `count_request` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_admin_cache`
--

CREATE TABLE `mmh_admin_cache` (
  `cache_id` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cache_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_ban_filter`
--

CREATE TABLE `mmh_ban_filter` (
  `ban_id` int(25) NOT NULL,
  `time_banned` int(10) NOT NULL DEFAULT 0,
  `ban_type` tinyint(1) NOT NULL DEFAULT 0,
  `ban_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_file_logs`
--

CREATE TABLE `mmh_file_logs` (
  `log_id` int(25) NOT NULL,
  `filename` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(20) NOT NULL DEFAULT 0,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_uploaded` int(10) NOT NULL DEFAULT 0,
  `gallery_id` int(32) NOT NULL DEFAULT 0,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `original_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `upload_type` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'normal',
  `bandwidth` int(50) NOT NULL DEFAULT 0,
  `image_views` int(32) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_file_ratings`
--

CREATE TABLE `mmh_file_ratings` (
  `rating_id` int(25) NOT NULL,
  `filename` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `total_rating` int(5) NOT NULL DEFAULT 5,
  `total_votes` int(30) NOT NULL DEFAULT 1,
  `voted_by` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `gallery_id` int(25) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_file_storage`
--

CREATE TABLE `mmh_file_storage` (
  `file_id` int(25) NOT NULL,
  `filename` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `gallery_id` int(25) NOT NULL DEFAULT 0,
  `album_id` int(25) NOT NULL DEFAULT 0,
  `file_title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `viewer_clicks` int(25) NOT NULL DEFAULT 1,
  `dir_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL,
  `time_icon` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_gallery_albums`
--

CREATE TABLE `mmh_gallery_albums` (
  `album_id` int(25) NOT NULL,
  `gallery_id` int(25) NOT NULL DEFAULT 0,
  `album_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `has_pw` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_gallery_sessions`
--

CREATE TABLE `mmh_gallery_sessions` (
  `user_session` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) NOT NULL,
  `gallery_id` int(10) NOT NULL,
  `album_id` int(10) NOT NULL,
  `valid_till` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_pict_ulfy`
--

CREATE TABLE `mmh_pict_ulfy` (
  `session_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_time` int(10) NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tmp_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_robot_info`
--

CREATE TABLE `mmh_robot_info` (
  `robot_id` int(25) NOT NULL,
  `preg_match` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `robot_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_robot_logs`
--

CREATE TABLE `mmh_robot_logs` (
  `log_id` int(25) NOT NULL,
  `robot_id` int(25) NOT NULL DEFAULT 0,
  `page_indexed` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `time_indexed` int(10) NOT NULL DEFAULT 0,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `http_referer` tinytext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_site_cache`
--

CREATE TABLE `mmh_site_cache` (
  `cache_id` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cache_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_site_settings`
--

CREATE TABLE `mmh_site_settings` (
  `config_key` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_user_info`
--

CREATE TABLE `mmh_user_info` (
  `user_id` int(25) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `private_gallery` tinyint(1) NOT NULL DEFAULT 0,
  `time_joined` int(10) NOT NULL DEFAULT 0,
  `user_group` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'normal_user',
  `upload_type` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'standard',
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `homepage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_visible` tinyint(2) NOT NULL DEFAULT 0,
  `country_visible` tinyint(2) NOT NULL DEFAULT 0,
  `city_visible` tinyint(2) NOT NULL DEFAULT 0,
  `homepage_visible` tinyint(2) NOT NULL DEFAULT 0,
  `facebook_visible` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_user_passwords`
--

CREATE TABLE `mmh_user_passwords` (
  `password_id` int(25) NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(25) NOT NULL DEFAULT 0,
  `new_password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_requested` int(10) NOT NULL DEFAULT 0,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mmh_user_sessions`
--

CREATE TABLE `mmh_user_sessions` (
  `session_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `session_start` int(10) NOT NULL DEFAULT 0,
  `user_id` int(25) NOT NULL DEFAULT 0,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ex_secret_key`
--
ALTER TABLE `ex_secret_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mmh_admin_cache`
--
ALTER TABLE `mmh_admin_cache`
  ADD PRIMARY KEY (`cache_id`);

--
-- Indexes for table `mmh_ban_filter`
--
ALTER TABLE `mmh_ban_filter`
  ADD PRIMARY KEY (`ban_id`);

--
-- Indexes for table `mmh_file_logs`
--
ALTER TABLE `mmh_file_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `filename` (`filename`);

--
-- Indexes for table `mmh_file_ratings`
--
ALTER TABLE `mmh_file_ratings`
  ADD PRIMARY KEY (`rating_id`),
  ADD UNIQUE KEY `filename` (`filename`);

--
-- Indexes for table `mmh_file_storage`
--
ALTER TABLE `mmh_file_storage`
  ADD PRIMARY KEY (`file_id`),
  ADD UNIQUE KEY `filename` (`filename`);

--
-- Indexes for table `mmh_gallery_albums`
--
ALTER TABLE `mmh_gallery_albums`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `mmh_gallery_sessions`
--
ALTER TABLE `mmh_gallery_sessions`
  ADD KEY `user_session` (`user_session`);

--
-- Indexes for table `mmh_pict_ulfy`
--
ALTER TABLE `mmh_pict_ulfy`
  ADD PRIMARY KEY (`tmp_name`);

--
-- Indexes for table `mmh_robot_info`
--
ALTER TABLE `mmh_robot_info`
  ADD PRIMARY KEY (`robot_id`);

--
-- Indexes for table `mmh_robot_logs`
--
ALTER TABLE `mmh_robot_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `mmh_site_cache`
--
ALTER TABLE `mmh_site_cache`
  ADD PRIMARY KEY (`cache_id`);

--
-- Indexes for table `mmh_site_settings`
--
ALTER TABLE `mmh_site_settings`
  ADD PRIMARY KEY (`config_key`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Indexes for table `mmh_user_info`
--
ALTER TABLE `mmh_user_info`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `mmh_user_passwords`
--
ALTER TABLE `mmh_user_passwords`
  ADD PRIMARY KEY (`password_id`),
  ADD UNIQUE KEY `password` (`new_password`),
  ADD UNIQUE KEY `auth_key` (`auth_key`);

--
-- Indexes for table `mmh_user_sessions`
--
ALTER TABLE `mmh_user_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ex_secret_key`
--
ALTER TABLE `ex_secret_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mmh_ban_filter`
--
ALTER TABLE `mmh_ban_filter`
  MODIFY `ban_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mmh_file_logs`
--
ALTER TABLE `mmh_file_logs`
  MODIFY `log_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mmh_file_ratings`
--
ALTER TABLE `mmh_file_ratings`
  MODIFY `rating_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mmh_file_storage`
--
ALTER TABLE `mmh_file_storage`
  MODIFY `file_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mmh_gallery_albums`
--
ALTER TABLE `mmh_gallery_albums`
  MODIFY `album_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mmh_robot_info`
--
ALTER TABLE `mmh_robot_info`
  MODIFY `robot_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mmh_robot_logs`
--
ALTER TABLE `mmh_robot_logs`
  MODIFY `log_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mmh_user_info`
--
ALTER TABLE `mmh_user_info`
  MODIFY `user_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mmh_user_passwords`
--
ALTER TABLE `mmh_user_passwords`
  MODIFY `password_id` int(25) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
