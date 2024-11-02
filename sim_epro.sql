-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2024 at 05:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sim_epro`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1730543309),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1730543309;', 1730543309),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1730557965),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1730557965;', 1730557965),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:54:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:16:\"view_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:20:\"view_any_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:18:\"create_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:18:\"update_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:19:\"restore_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:23:\"restore_any_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:21:\"replicate_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:19:\"reorder_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:18:\"delete_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:22:\"delete_any_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:24:\"force_delete_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:28:\"force_delete_any_pembangunan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:16:\"view_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:20:\"view_any_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:18:\"create_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:18:\"update_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:19:\"restore_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:23:\"restore_any_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:21:\"replicate_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:19:\"reorder_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:18:\"delete_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:22:\"delete_any_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:24:\"force_delete_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:28:\"force_delete_any_perencanaan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:14:\"view_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:18:\"view_any_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:16:\"create_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:16:\"update_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:17:\"restore_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:21:\"restore_any_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:19:\"replicate_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:17:\"reorder_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:16:\"delete_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:20:\"delete_any_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:22:\"force_delete_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:26:\"force_delete_any_perizinan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:17:\"Pengawas Lapangan\";s:1:\"c\";s:3:\"web\";}}}', 1730619544);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_02_203845_create_perizinans_table', 2),
(5, '2024_10_03_042323_create_perizinans_table', 3),
(6, '2024_10_03_050848_create_perencanaans_table', 4),
(7, '2024_10_03_052001_create_perencanaans_table', 5),
(8, '2024_10_03_052326_create_pembangunans_table', 6),
(9, '2024_10_03_061513_create_permission_tables', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembangunans`
--

CREATE TABLE `pembangunans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_spk` varchar(255) NOT NULL,
  `nama_pekerjaan` varchar(255) NOT NULL,
  `nilai_pekerjaan` varchar(255) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `hari_tersisa` int(11) DEFAULT NULL,
  `progress_pekerjaan` varchar(255) DEFAULT NULL,
  `doc_pembangunan` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembangunans`
--

INSERT INTO `pembangunans` (`id`, `no_spk`, `nama_pekerjaan`, `nilai_pekerjaan`, `tgl_mulai`, `tgl_selesai`, `hari_tersisa`, `progress_pekerjaan`, `doc_pembangunan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SPK-201', 'Pembangunan Jembatan C', 'Rp 500.000.000', '2024-10-03', '2024-11-03', 30, '75%', NULL, '2024-10-03 01:00:05', '2024-10-03 01:11:43', NULL),
(2, 'SPK-202', 'Pembangunan Gedung D', 'Rp 1.200.000.000', '2024-10-03', '2025-01-03', 240, '25%', NULL, '2024-10-03 01:01:39', '2024-10-03 01:01:39', NULL),
(3, 'SPK-TES02', 'pembangunan tower telkomsel', 'Rp 500.000.000', '2024-10-01', '2024-10-20', -18, '85%', 'test_file.pdf', '2024-10-29 03:50:32', '2024-10-29 03:50:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perencanaans`
--

CREATE TABLE `perencanaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_spk` varchar(255) NOT NULL,
  `nama_pekerjaan` varchar(255) NOT NULL,
  `tgl_spk_sp` date NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `hari_tersisa` int(11) DEFAULT NULL,
  `termin` varchar(255) DEFAULT NULL,
  `doc_perencanaan` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perencanaans`
--

INSERT INTO `perencanaans` (`id`, `no_spk`, `nama_pekerjaan`, `tgl_spk_sp`, `tgl_mulai`, `tgl_selesai`, `hari_tersisa`, `termin`, `doc_perencanaan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SPK-101', 'Pembangunan Gedung A', '2024-10-03', '2024-10-10', '2024-11-30', 90, '2', NULL, '2024-10-03 00:49:00', '2024-10-03 00:49:00', NULL),
(2, 'SPK-102', 'Pengaspalan Jalan ABC', '2024-10-03', '2024-10-10', '2024-11-30', 60, '1', NULL, '2024-10-03 00:50:26', '2024-10-03 00:53:47', NULL),
(3, 'SPK-TES01', 'pembangunan tower indosat', '2024-09-30', '2024-10-01', '2024-10-20', -18, '3', 'test_file.pdf', '2024-10-29 03:40:13', '2024-10-29 03:40:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perizinans`
--

CREATE TABLE `perizinans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_spk` varchar(255) NOT NULL,
  `nama_pekerjaan` varchar(255) NOT NULL,
  `tgl_berita_acara` date NOT NULL,
  `progress_berita_acara` varchar(255) NOT NULL,
  `posisi_berita_acara` varchar(255) NOT NULL,
  `tgl_update` date NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `doc_perizinan` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perizinans`
--

INSERT INTO `perizinans` (`id`, `no_spk`, `nama_pekerjaan`, `tgl_berita_acara`, `progress_berita_acara`, `posisi_berita_acara`, `tgl_update`, `keterangan`, `doc_perizinan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SPK-301', 'Pembangunan Jembatan E', '2024-10-03', 'Sudah Disetujui	', 'Pengajuan', '2024-10-10', 'Menunggu izin final', 'test_file.pdf', '2024-10-03 01:04:59', '2024-10-29 03:29:36', NULL),
(2, 'SPK-302', 'Pembangunan Gedung F', '2024-10-03', 'Dalam Proses', 'Verifikasi', '2024-10-08', 'Diperlukan tambahan dokumen', NULL, '2024-10-03 01:06:25', '2024-10-03 01:06:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(2, 'view_any_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(3, 'create_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(4, 'update_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(5, 'restore_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(6, 'restore_any_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(7, 'replicate_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(8, 'reorder_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(9, 'delete_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(10, 'delete_any_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(11, 'force_delete_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(12, 'force_delete_any_pembangunan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(13, 'view_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(14, 'view_any_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(15, 'create_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(16, 'update_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(17, 'restore_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(18, 'restore_any_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(19, 'replicate_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(20, 'reorder_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(21, 'delete_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(22, 'delete_any_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(23, 'force_delete_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(24, 'force_delete_any_perencanaan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(25, 'view_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(26, 'view_any_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(27, 'create_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(28, 'update_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(29, 'restore_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(30, 'restore_any_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(31, 'replicate_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(32, 'reorder_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(33, 'delete_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(34, 'delete_any_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(35, 'force_delete_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(36, 'force_delete_any_perizinan', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(37, 'view_role', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(38, 'view_any_role', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(39, 'create_role', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(40, 'update_role', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(41, 'delete_role', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(42, 'delete_any_role', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(43, 'view_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(44, 'view_any_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(45, 'create_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(46, 'update_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(47, 'restore_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(48, 'restore_any_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(49, 'replicate_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(50, 'reorder_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(51, 'delete_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(52, 'delete_any_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(53, 'force_delete_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21'),
(54, 'force_delete_any_user', 'web', '2024-10-02 23:15:21', '2024-10-02 23:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-10-02 23:15:20', '2024-10-02 23:15:20'),
(2, 'Pengawas Lapangan', 'web', '2024-10-02 23:24:52', '2024-10-02 23:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('p393aiBeNczmm0mdo2Mt1zDumvOflaHqeQEMwbCk', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiR3psclV4QUFUVWNQWldVNDJuRFhiM3NhaVFJQzI1SnJvYU5KbUJXOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wZXJpemluYW5zLzEvZWRpdCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRXTXRSMVFRYkhqUUdQaEdrdmxhYnNlYzJFWWVXT0NxQldJekdJcjFSY1VBUGhldTdra08vQyI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1730545764),
('QnaDQD07XdbcF0tU9Utp0uKzVDSm5qPcDZZyhOEd', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjY0aHRIcXR0UWo0R3NuNnpYSkd1NWVtS0thVDBna2FydTltak83aCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fX0=', 1730562967);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$WMtR1QQbHjQGPhGkvlabsec2EYeWOCqBWIzGIr1RcUAPheu7kkO/C', NULL, '2024-10-02 13:29:26', '2024-10-02 13:29:26'),
(2, 'Pengawas Lapangan', 'pengawas@gmail.com', NULL, '$2y$12$0dQfYCrmk6JvucoFKDvR7OPnslvXxb7dPCiCeppqndawEUH2nYX4W', NULL, '2024-10-02 22:38:12', '2024-10-02 22:38:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembangunans`
--
ALTER TABLE `pembangunans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perencanaans`
--
ALTER TABLE `perencanaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perizinans`
--
ALTER TABLE `perizinans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pembangunans`
--
ALTER TABLE `pembangunans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `perencanaans`
--
ALTER TABLE `perencanaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `perizinans`
--
ALTER TABLE `perizinans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
