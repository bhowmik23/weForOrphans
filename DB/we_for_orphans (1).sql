-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2020 at 07:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `we_for_orphans`
--

-- --------------------------------------------------------

--
-- Table structure for table `cb_menus`
--

CREATE TABLE `cb_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_number` int(11) NOT NULL DEFAULT 0,
  `cb_modules_id` int(11) DEFAULT NULL,
  `parent_cb_menus_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_menus`
--

INSERT INTO `cb_menus` (`id`, `name`, `icon`, `path`, `type`, `sort_number`, `cb_modules_id`, `parent_cb_menus_id`) VALUES
(7, 'orphanage', 'fa fa-bank', 'javascript:void(0);', 'url', 0, NULL, NULL),
(8, 'Teacher', 'fa fa-address-book-o', NULL, 'module', 0, 2, NULL),
(9, 'Donor', 'fa fa-address-book-o', NULL, 'module', 0, 3, NULL),
(10, 'orphan', 'fa fa-address-book-o', NULL, 'module', 0, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cb_modules`
--

CREATE TABLE `cb_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_column_build` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_modules`
--

INSERT INTO `cb_modules` (`id`, `name`, `icon`, `table_name`, `controller`, `last_column_build`) VALUES
(2, 'Teacher', 'fa fa-bars', 'teacher', 'AdminTeacherController', '[{\"column_label\":\"Teacher\",\"column_field\":\"teacher_id\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"teacher\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"user_name\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"teacher_id\",\"primary_key\":false,\"display\":false},{\"column\":\"teacher_name\",\"primary_key\":false,\"display\":true},{\"column\":\"email\",\"primary_key\":false,\"display\":false},{\"column\":\"phone\",\"primary_key\":false,\"display\":false},{\"column\":\"present_address\",\"primary_key\":false,\"display\":false},{\"column\":\"permanent_address\",\"primary_key\":false,\"display\":false},{\"column\":\"photo\",\"primary_key\":false,\"display\":false},{\"column\":\"user_name\",\"primary_key\":false,\"display\":true},{\"column\":\"password\",\"primary_key\":false,\"display\":false},{\"column\":\"created_at\",\"primary_key\":false,\"display\":false},{\"column\":\"updated_at\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Teacher Name\",\"column_field\":\"teacher_name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Email\",\"column_field\":\"email\",\"column_type\":\"email\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Phone\",\"column_field\":\"phone\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Present Address\",\"column_field\":\"present_address\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Permanent Address\",\"column_field\":\"permanent_address\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Photo\",\"column_field\":\"photo\",\"column_type\":\"image\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"User Name\",\"column_field\":\"user_name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Password\",\"column_field\":\"password\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(3, 'Donor', 'fa fa-bars', 'donor', 'AdminDonorController', '[{\"column_label\":\"Donor\",\"column_field\":\"donor_id\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"donor\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"account_name\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"donor_id\",\"primary_key\":false,\"display\":false},{\"column\":\"donor_name\",\"primary_key\":false,\"display\":true},{\"column\":\"address\",\"primary_key\":false,\"display\":false},{\"column\":\"email\",\"primary_key\":false,\"display\":false},{\"column\":\"phone\",\"primary_key\":false,\"display\":false},{\"column\":\"user_name\",\"primary_key\":false,\"display\":true},{\"column\":\"password\",\"primary_key\":false,\"display\":false},{\"column\":\"transiction_id\",\"primary_key\":false,\"display\":false},{\"column\":\"account_name\",\"primary_key\":false,\"display\":true},{\"column\":\"account_number\",\"primary_key\":false,\"display\":false},{\"column\":\"donation_amount\",\"primary_key\":false,\"display\":false},{\"column\":\"photo\",\"primary_key\":false,\"display\":false},{\"column\":\"created_at\",\"primary_key\":false,\"display\":false},{\"column\":\"updated_at\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Donor Name\",\"column_field\":\"donor_name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Address\",\"column_field\":\"address\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Email\",\"column_field\":\"email\",\"column_type\":\"email\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Phone\",\"column_field\":\"phone\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"User Name\",\"column_field\":\"user_name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Password\",\"column_field\":\"password\",\"column_type\":\"password\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Transiction\",\"column_field\":\"transiction_id\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Account Name\",\"column_field\":\"account_name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Account Number\",\"column_field\":\"account_number\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Donation Amount\",\"column_field\":\"donation_amount\",\"column_type\":\"money\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Photo\",\"column_field\":\"photo\",\"column_type\":\"file\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]'),
(4, 'Orphan', 'fa fa-address-card-o', 'orphan', 'AdminOrphanController', '[{\"column_label\":\"Student\",\"column_field\":\"student_id\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"orphan\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"name\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"student_id\",\"primary_key\":false,\"display\":false},{\"column\":\"name\",\"primary_key\":false,\"display\":true},{\"column\":\"roll\",\"primary_key\":false,\"display\":false},{\"column\":\"attendance\",\"primary_key\":false,\"display\":false},{\"column\":\"result\",\"primary_key\":false,\"display\":false},{\"column\":\"feedback\",\"primary_key\":false,\"display\":false},{\"column\":\"created_at\",\"primary_key\":false,\"display\":false},{\"column\":\"updated_at\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Name\",\"column_field\":\"name\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Roll\",\"column_field\":\"roll\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Attendance\",\"column_field\":\"attendance\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[{\"key\":null,\"label\":null}],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Result\",\"column_field\":\"result\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Feedback\",\"column_field\":\"feedback\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Created At\",\"column_field\":\"created_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Updated At\",\"column_field\":\"updated_at\",\"column_type\":\"datetime\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":null,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":null,\"column_add\":null,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]');

-- --------------------------------------------------------

--
-- Table structure for table `cb_roles`
--

CREATE TABLE `cb_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_roles`
--

INSERT INTO `cb_roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Teacher'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `cb_role_privileges`
--

CREATE TABLE `cb_role_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `cb_roles_id` int(11) NOT NULL,
  `cb_menus_id` int(11) NOT NULL,
  `can_browse` tinyint(4) NOT NULL DEFAULT 1,
  `can_create` tinyint(4) NOT NULL DEFAULT 1,
  `can_read` tinyint(4) NOT NULL DEFAULT 1,
  `can_update` tinyint(4) NOT NULL DEFAULT 1,
  `can_delete` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cb_role_privileges`
--

INSERT INTO `cb_role_privileges` (`id`, `cb_roles_id`, `cb_menus_id`, `can_browse`, `can_create`, `can_read`, `can_update`, `can_delete`) VALUES
(4, 1, 9, 1, 0, 1, 0, 0),
(5, 1, 10, 1, 1, 1, 1, 1),
(6, 1, 7, 1, 1, 1, 1, 1),
(7, 1, 8, 1, 1, 1, 0, 1),
(8, 2, 9, 0, 0, 0, 0, 0),
(9, 2, 10, 0, 0, 0, 0, 0),
(10, 2, 7, 0, 0, 0, 0, 0),
(11, 2, 8, 1, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `donor_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `transiction_id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` int(11) NOT NULL,
  `donation_amount` float NOT NULL,
  `photo` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_08_07_152421_modify_users', 2),
(5, '2016_08_07_152421_table_menus', 2),
(6, '2016_08_07_152421_table_modules', 2),
(7, '2016_08_07_152421_table_role_privileges', 2),
(8, '2016_08_07_152421_table_roles', 2),
(9, '2020_02_08_170920_Teacher', 3),
(10, '2020_02_08_172113_Donor', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orphan`
--

CREATE TABLE `orphan` (
  `id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roll` int(11) NOT NULL,
  `attendance` int(11) NOT NULL,
  `result` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orphan`
--

INSERT INTO `orphan` (`id`, `student_id`, `name`, `roll`, `attendance`, `result`, `feedback`, `created_at`, `updated_at`) VALUES
(1, '1', 'Biddut Bhowmik', 12, 1, '5.00', 'good', '2020-02-08 12:52:24', '2020-02-08 12:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `present_address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `teacher_id`, `teacher_name`, `email`, `phone`, `present_address`, `permanent_address`, `photo`, `user_name`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'Esrat', 'esrat@gmail.com', '01515213494', '97/a, Indhira Road, Dhaka_1207', '97/a, Indhira Road, Dhaka_1207', 'storage/files/2020/02/08/b1caad63621951953b73555a48393609.jpg', 'esrat23', '12345678', '2020-02-08 12:51:00', '2020-02-08 12:51:00'),
(2, 1, 'Esrat Jahan', 'esrat@gmail.com', '01515213494', '97/a, Indhira Road, Dhaka_1207', '97/a, Indhira Road, Dhaka_1207', 'storage/files/2020/02/08/a5968fe71fa75f69a5d03be0a8cf5daf.jpg', 'esrat23', '12345678', '2020-02-08 12:51:29', '2020-02-08 12:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cb_roles_id` int(11) NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo`, `cb_roles_id`, `ip_address`, `user_agent`, `login_at`) VALUES
(8, 'Biddut Bhowmik', 'biddut@gmail.com', NULL, '$2y$10$3Yc9dE6deZAABBGjn0GHPub1qO0uhEYZfi32jj8i2pMb3kcQSegyO', NULL, NULL, NULL, 'storage/files/2020/02/08/a41ef94460891d33d9a0006f24240d29.jpg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', '2020-02-08 10:46:44'),
(9, 'Esrat Jahan', 'esrat@gmail.com', NULL, '$2y$10$Xh5kSE.bRl9Sr6LHieqsF.Hn1RLDdNcWL1LZFV4h8L7zOmTpHYFLu', NULL, NULL, NULL, 'storage/files/2020/02/08/c096c67f68e9babf90b2fcf75fbba864.jpg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', '2020-02-08 11:11:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cb_menus`
--
ALTER TABLE `cb_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cb_modules`
--
ALTER TABLE `cb_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cb_roles`
--
ALTER TABLE `cb_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cb_role_privileges`
--
ALTER TABLE `cb_role_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orphan`
--
ALTER TABLE `orphan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cb_menus`
--
ALTER TABLE `cb_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cb_modules`
--
ALTER TABLE `cb_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cb_roles`
--
ALTER TABLE `cb_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cb_role_privileges`
--
ALTER TABLE `cb_role_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orphan`
--
ALTER TABLE `orphan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
