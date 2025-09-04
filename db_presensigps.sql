-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2025 at 11:47 AM
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
-- Database: `db_presensigps`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `kode_cabang` char(3) NOT NULL,
  `nama_cabang` varchar(50) NOT NULL,
  `alamat_cabang` varchar(100) NOT NULL,
  `telepon_cabang` varchar(13) NOT NULL,
  `lokasi_cabang` varchar(255) NOT NULL,
  `radius_cabang` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`kode_cabang`, `nama_cabang`, `alamat_cabang`, `telepon_cabang`, `lokasi_cabang`, `radius_cabang`, `created_at`, `updated_at`) VALUES
('BGR', 'Pusat', 'Jln. Citimun', '081314733451', '-6.7272704,108.5341696', 30, '2024-06-15 07:36:25', '2025-08-25 11:50:40'),
('BJG', 'Bojong Sindang Taman', 'Jalan Sindang Taman', '081314733451', '-6.825546753613772, 107.91631249406153', 30, '2025-08-25 09:49:07', '2025-08-25 09:49:07'),
('CTM', 'citimun', 'Jalan Citimun', '081314733451', '-6.7918634152814725, 107.93374686911828', 30, '2025-08-25 09:40:08', '2025-08-25 09:40:08'),
('KRP', 'karapyak', 'Jln Srikandi Karapyak Sumedang', '081314733451', '-6.834556736596053, 107.92041168191246', 30, '2025-08-25 09:47:27', '2025-08-25 09:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `kode_cuti` char(3) NOT NULL,
  `jenis_cuti` varchar(255) NOT NULL,
  `jumlah_hari` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`kode_cuti`, `jenis_cuti`, `jumlah_hari`, `created_at`, `updated_at`) VALUES
('C01', 'Tahunan', 12, '2024-06-15 08:03:56', '2024-06-15 08:03:56'),
('C02', 'Melahirkan', 90, '2024-06-15 08:03:56', '2024-06-15 08:03:56'),
('C03', 'Khusus', 2, '2024-06-15 08:03:56', '2024-10-14 13:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dari` smallint(6) NOT NULL,
  `sampai` smallint(6) NOT NULL,
  `denda` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`id`, `dari`, `sampai`, `denda`, `created_at`, `updated_at`) VALUES
(2, 1, 5, 0, '2025-03-12 15:15:38', '2025-08-25 12:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `kode_dept` char(3) NOT NULL,
  `nama_dept` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`kode_dept`, `nama_dept`, `created_at`, `updated_at`) VALUES
('FAP', 'Finance, Accounting and People', '2024-06-15 07:24:09', '2025-08-25 09:50:25'),
('MAR', 'Marketing', '2024-04-27 14:06:16', '2025-08-25 09:51:45'),
('PRO', 'Product and Warehouse', '2025-08-25 09:53:10', '2025-08-25 09:53:10'),
('RnD', 'Research and Development', '2025-08-25 09:53:36', '2025-08-25 09:53:36'),
('SAL', 'Sales', '2025-08-25 09:51:56', '2025-08-25 09:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `detailtunjangans`
--

CREATE TABLE `detailtunjangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `hari_libur`
--

CREATE TABLE `hari_libur` (
  `kode_libur` char(7) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_cabang` char(3) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hari_libur`
--

INSERT INTO `hari_libur` (`kode_libur`, `tanggal`, `kode_cabang`, `keterangan`, `created_at`, `updated_at`) VALUES
('LB25001', '2025-05-01', 'BGR', 'Hari Buruh', '2025-05-03 14:20:07', '2025-05-03 14:20:07'),
('LB25002', '2025-05-03', 'BGR', 'Cuti Bersama', '2025-05-03 14:23:58', '2025-05-03 14:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `hari_libur_detail`
--

CREATE TABLE `hari_libur_detail` (
  `kode_libur` char(7) NOT NULL,
  `nik` char(9) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hari_libur_detail`
--

INSERT INTO `hari_libur_detail` (`kode_libur`, `nik`, `created_at`, `updated_at`) VALUES
('LB25001', '25.11.001', '2025-05-03 14:20:15', '2025-05-03 14:20:15'),
('LB25002', '25.11.001', '2025-05-03 14:27:29', '2025-05-03 14:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kode_jabatan` char(3) NOT NULL,
  `nama_jabatan` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kode_jabatan`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
('C01', 'Chief Executive Officer', '2025-08-25 09:55:19', '2025-08-25 09:55:19'),
('H01', 'Head of Marketing and Sales', '2025-08-25 09:59:23', '2025-08-25 09:59:23'),
('H02', 'Head of Operation', '2025-08-25 09:59:51', '2025-08-25 09:59:51'),
('J01', 'Kepala ICT', '2024-04-27 14:11:42', '2025-03-01 14:47:33'),
('J02', 'Direktur', '2025-03-01 14:56:56', '2025-03-01 14:56:56'),
('M01', 'Marketing Manager', '2025-08-25 10:00:19', '2025-08-25 10:00:19'),
('M11', 'Market Channel', '2025-08-25 10:01:06', '2025-08-25 10:02:23'),
('M12', 'Content Channel', '2025-08-25 10:01:59', '2025-08-25 10:02:32'),
('O11', 'Finance Accounting and Tax', '2025-08-25 10:08:50', '2025-08-25 10:08:50'),
('O12', 'People', '2025-08-25 10:09:12', '2025-08-25 10:09:12'),
('P01', 'Product and Warehouse manager', '2025-08-25 10:10:22', '2025-08-25 10:10:22'),
('P11', 'Packer', '2025-08-25 10:11:00', '2025-08-25 10:11:00'),
('P12', 'Quality Control', '2025-08-25 10:11:16', '2025-08-25 10:11:16'),
('R01', 'Research and Development', '2025-08-25 10:05:05', '2025-08-25 10:05:05'),
('R11', 'Business Development', '2025-08-25 10:05:44', '2025-08-25 10:05:44'),
('R12', 'Content Development', '2025-08-25 10:06:09', '2025-08-25 10:06:09'),
('R13', 'Product Development', '2025-08-25 10:06:30', '2025-08-25 10:06:30'),
('S01', 'Sales Manager', '2025-08-25 10:02:59', '2025-08-25 10:02:59'),
('S11', 'Host Channel', '2025-08-25 10:03:16', '2025-08-25 10:03:16'),
('S12', 'Relation Channel', '2025-08-25 10:03:44', '2025-08-25 10:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_tunjangan`
--

CREATE TABLE `jenis_tunjangan` (
  `kode_jenis_tunjangan` char(4) NOT NULL,
  `jenis_tunjangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenis_tunjangan`
--

INSERT INTO `jenis_tunjangan` (`kode_jenis_tunjangan`, `jenis_tunjangan`, `created_at`, `updated_at`) VALUES
('TJ01', 'Makan', '2025-05-29 08:08:17', '2025-05-30 08:57:12'),
('TJ02', 'Jabatan', '2025-05-29 08:53:13', '2025-05-30 08:57:16'),
('TJ03', 'Akomodasi', '2025-05-30 08:57:22', '2025-08-25 12:03:47'),
('TJ04', 'Telekomunikasi', '2025-05-30 09:22:23', '2025-08-25 12:04:00');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` char(9) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `kode_status_kawin` char(2) DEFAULT NULL,
  `pendidikan_terakhir` varchar(4) DEFAULT NULL,
  `kode_cabang` char(3) NOT NULL,
  `kode_dept` char(3) NOT NULL,
  `kode_jabatan` char(3) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status_karyawan` char(1) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `kode_jadwal` char(5) DEFAULT NULL,
  `pin` smallint(6) DEFAULT NULL,
  `tanggal_nonaktif` date DEFAULT NULL,
  `tanggal_off_gaji` date DEFAULT NULL,
  `lock_location` char(1) NOT NULL,
  `lock_jam_kerja` char(1) NOT NULL DEFAULT '1',
  `status_aktif_karyawan` char(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `no_ktp`, `nama_karyawan`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_hp`, `jenis_kelamin`, `kode_status_kawin`, `pendidikan_terakhir`, `kode_cabang`, `kode_dept`, `kode_jabatan`, `tanggal_masuk`, `status_karyawan`, `foto`, `kode_jadwal`, `pin`, `tanggal_nonaktif`, `tanggal_off_gaji`, `lock_location`, `lock_jam_kerja`, `status_aktif_karyawan`, `password`, `created_at`, `updated_at`) VALUES
('25.11.001', '321201712930002', 'Mohammad Haydar Hasan', 'Jakarta', '1993-12-17', 'Sumedang', '081314733451', 'L', 'TK', 'S1', 'BJG', 'FAP', 'R11', '2025-01-01', 'T', '25.11.001.jpg', NULL, 1179, NULL, NULL, '1', '1', '1', '$2y$12$odm2ghh54Zjqda20eg9T/uRAD9C7TLK3R.VWv7r53uJvPaqt3qMeC', '2025-04-28 23:17:11', '2025-08-25 10:46:03'),
('H01202501', '3603130908940006', 'Mochamad Kharisma Ginanjar', 'Sumedang', '1994-08-09', 'Komp. Mutiara Garuda C. VI No 16 RT 02, RW 16, Kel/Ds. KMP MELAYU TIM, Kec. Teluk Naga, Kab. Tangerang.', '081399719113', 'L', 'TK', 'SMA', 'BJG', 'SAL', 'H01', '2024-01-01', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$YOQLM6Dp3EbsXOAr/pKap.onIRWvjST0jLah2wHTyZQxhKq8dQRtq', '2025-08-25 11:47:03', '2025-08-25 11:47:03'),
('H02202502', '3374152907950007', 'Robby Salam', 'Sumedang', '1995-07-29', 'Dsn. Ganeas, RT 04, RW 05, Kel/Ds. Ganeas, Kec. Ganeas, Kab. Sumedang.', '081292870050', 'L', 'TK', 'S1', 'BJG', 'FAP', 'H02', '2024-01-01', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$ll6nOgol6nlHdB1kvfrh4.AbfsB84TwF1QXDJkjaXzS2NxPazVgsO', '2025-08-25 11:47:03', '2025-08-25 11:47:03'),
('M01202503', '3211200608950004', 'Vega Chandra Alam', 'Sumedang', '1995-08-06', 'Perum. Jatihurip, RT 03, RW 01, Kel/Ds. Jatihurip, Kec. Sumedang Utara, Kab. Sumedang.', '082117782045', 'L', 'TK', 'S1', 'KRP', 'MAR', 'M01', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$BxZ9nzMvmLHn51wv13IssuFviqfPuJv7iFXYbFREJLHa5yL6Ub8Xm', '2025-08-25 11:47:04', '2025-08-25 11:47:04'),
('M11202504', '3211183011960005', 'Musfik Nazmuloh', 'Sumedang', '1996-11-30', 'Dsn. Cibiru, RT 04, RW 07, Kel/Ds. Jatimulya, Kec. Sumedang Utara, Kab. Sumedang.', '085925873030', 'L', 'TK', 'SMA', 'BJG', 'MAR', 'M11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$XJn9VXlCsSqAMVDEY2BLYO3.SzzZx3C.3rxzNuXEH3.XhFT5tYKSm', '2025-08-25 11:47:04', '2025-08-25 11:47:04'),
('M12202505', '3211180812990003', 'Cecep Hilman', 'Sumedang', '1999-12-06', 'Dsn. Cibiru, RT 05, RW 07, Kel/Ds. Jatimulya, Kec. Sumedang Utara, Kab. Sumedang.', '088970815092', 'L', 'TK', 'SMA', 'KRP', 'MAR', 'M12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$zWQeEj0oOE2yBVSL3n14xO7bUDD3bAILWqigWjcWfSvIBwlQVy0fS', '2025-08-25 11:47:04', '2025-08-25 11:47:04'),
('M12202506', '3211201507960004', 'Dian Rudiansyah', 'Sumedang', '1996-07-15', 'Dsn. Sindang Taman, RT 02, RW 09, Kel/Ds. Jatimulya, Kec. Sumedang Utara, Kab. Sumedang.', '082128228427', 'L', 'TK', 'SMA', 'KRP', 'MAR', 'M12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$O9U2MkFiERPgTLEku7t/v.7LORCtvjL1HfQaDC4INudr6QgTDMLGO', '2025-08-25 11:47:05', '2025-08-25 11:47:05'),
('O11202507', '3211174308930001', 'Deri Sucinda Gustiara', 'Sumedang', '1993-08-03', 'Lingkungan Parigi, RT 03, RW 11, Kel/Ds. Kotakulon, Kec. Sumedang Selatan, Kab. Sumedang.', '089690028266', 'P', 'TK', 'S1', 'BJG', 'FAP', 'O11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$NUfa0eqn6m1jckTA7xLIfuIT8yXK46Z.W7S3OZ6RS2y7Qq5OihNCe', '2025-08-25 11:47:05', '2025-08-25 11:47:05'),
('O12202508', '3211224409840002', 'Indriani Rachmat . SP', 'Sumedang', '1984-09-04', 'Dsn. Malangbong, RT 03, RW 05, Kel/Ds. Serang, Kec. Cimalaka, Kab. Sumedang.', '081394257039', 'P', 'TK', 'S1', 'BJG', 'FAP', 'O12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$Nodj6mMw7EQU0AL/DV.lIuwcKZdsw7kSEGqUp4IFf3FxXIhaYVhY6', '2025-08-25 11:47:05', '2025-08-25 11:47:05'),
('P11202509', '3211181907980002', 'Deden Hendrik', 'Sumedang', '1998-07-19', 'Lingk. Tegalkalong, RT 01, RW 09, Kel/Ds. Kota Kaler, Kec. Sumedang Utara, Kab. Sumedang.', '082127558992', 'L', 'TK', 'SMA', 'BJG', 'PRO', 'P11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$JZpZFGbKoKmw/O..Ml8vAeub/V1dyyTIovcIQg85O1EBUPSwale8K', '2025-08-25 11:47:06', '2025-08-25 11:47:06'),
('P11202510', '3211192901960002', 'Rizal Muhamad Ramdan', 'Sumedang', '1996-01-29', 'Dsn. Cibungur, RT 02, RW 01, Kel/Ds. Tanjunghurip, Kec. Ganeas, Kab. Sumedang.', '085314228764', 'L', 'TK', 'SMA', 'BJG', 'PRO', 'P11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$C1RTeP8.Yxp52u9d7HYieObJlAHvNUSuntMao3GqNOpZnrnpL3loe', '2025-08-25 11:47:06', '2025-08-25 11:47:06'),
('P11202511', '3211190905980003', 'Mulyana', 'Sumedang', '1998-05-09', 'Dsn. Cibungur, RT 04, RW 01, Kel/Ds. Tanjunghurip, Kec. Ganeas, Kab. Sumedang.', '081224359979', 'L', 'TK', 'SMA', 'BJG', 'PRO', 'P11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$iVQ6SxPolI/jeDQ1FHirMumJg8jXO9MVS3aYqfat0oMbsmEabSLVa', '2025-08-25 11:47:06', '2025-08-25 11:47:06'),
('P11202512', '321120111213004', 'Muhamad Bintang', 'Sumedang', '2006-10-05', 'Dsn. Ciduging, RT 02, RW 03, Kel/Ds. Tarunajaya, Kec. Darmaraja, Kab. Sumedang.', '081224359979', 'L', 'TK', 'SMA', 'BJG', 'PRO', 'P11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$6YXqXZ0pM5tHA8JON.D7Eu9olUc2vYDOiAAGc1LgfxY2aPIThL3A.', '2025-08-25 11:47:07', '2025-08-25 11:47:07'),
('P11202513', '321120009010005', 'Ahmad Musa Irfany', 'Pati', '1997-01-09', 'Dsn Sudiplak Rt 02 RW 07 Kel/Ds. Cipanas Kec Tanjungkerta Kab Sumedang', '085642376569', 'L', 'TK', 'SMA', 'BJG', 'PRO', 'P11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$XAHj6ElD83XjBp/7cvvZCOUR6uXVy9XoD.C6ajvghH6lesem9XWUy', '2025-08-25 11:47:07', '2025-08-25 11:47:07'),
('P12202514', '3211221106960003', 'Rangga Prasetyo Irawan', 'Sumedang', '1996-07-11', 'Dsn. Margamukti, RT 02, RW 04, Kel/Ds. Licin, Kec. Cimalaka, Kab. Sumedang.', '085218286900', 'L', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$iogD9J9kVntO781SUu9URO41X/iRZPACcW/1VneaFAmGC78DP2qhO', '2025-08-25 11:47:07', '2025-08-25 11:47:07'),
('P12202515', '3210144410010004', 'Sri Marni', 'Majalengka', '2001-10-04', 'Dsn. Garawangi, RT 01, RW 06, Kel/Ds. Cibunar, Kec. Rancakalong, Kab. Sumedang.', '085759882195', 'P', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$5g.H7b85kAyMGk4mxZYLoevtAcWnfSDv6qlqEwsmxxLIKsVrz0ot6', '2025-08-25 11:47:08', '2025-08-25 11:47:08'),
('P12202516', '3211161104820001', 'Nandang Supriatna', 'Sumedang', '1982-04-11', 'Dsn. Garawangi, RT 01, RW 06, Kel/Ds. Cibunar, Kec. Rancakalong, Kab. Sumedang.', '087874700318', 'L', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$CdkqA2gb/ZVMculCFmBpreX0Sh1JuDLaA4GKINo1127beYJMGzCFa', '2025-08-25 11:47:08', '2025-08-25 11:47:08'),
('P12202517', '3173063005051005', 'Fikri Prasetya Nugraha', 'Sumedang', '2005-05-30', 'Kmp. Cipondo, RT 09, RW 08, Kel/Ds. Semanan, Kec. Kalideres, Jakarta.', '085715058991', 'L', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$avESBgO9//eke4Xj96og5e.RHNDkDFzRcpgTe5JAwRR6w.auQ9B5u', '2025-08-25 11:47:08', '2025-08-25 11:47:08'),
('P12202518', '3211161810050001', 'Ziqri Rafi Aqila', 'Sumedang', '2005-10-18', 'Dsn. Garawangi, RT 01, RW 06, Kel/Ds. Cibunar, Kec. Rancakalong, Kab. Sumedang.', '082119859655', 'L', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$Pb6SGQZMAmFBKgFBxL91Ke3RetcTg8cA.jHUQcwQN9zojvTVYlk1G', '2025-08-25 11:47:09', '2025-08-25 11:47:09'),
('P12202519', '3211161602930004', 'Rusli Mulyadi', 'Sumedang', '1993-02-16', 'Dsn. Lebakmaja, RT 02, RW 14, Kel/Ds. kutamandiri, Kec. Tanjungsari, Kab. Sumedang.', '087736374785', 'L', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$Bi.ZwYfS.ojJVoUaxT/ZGuefJuccxNbMxUPaojsI0HN7dbJ3X2meS', '2025-08-25 11:47:09', '2025-08-25 11:47:09'),
('P12202520', '3211197110030002', 'Widia Nurul Siam', 'Sumedang', '2003-10-31', 'Dsn. Cibungur, RT 04, RW 01, Kel/Ds. Tanjunghurip, Kec. Ganeas, Kab. Sumedang.', '081280821648', 'P', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$tgHMZI5Ekz1v6jmXf/JbL.qA4YhYyGdP2fIzkBJQHgunEu2qfViJS', '2025-08-25 11:47:09', '2025-08-25 11:47:09'),
('P12202521', '3211034811010009', 'Rosita Fatimatuzzahra', 'Sumedang', '2001-11-08', 'Dsn. Ciduging, RT 02, RW 03, Kel/Ds. Tarunajaya, Kec. Darmaraja, Kab. Sumedang.', '082113385916', 'P', 'TK', 'SMA', 'BJG', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$u.guTickcS5Cr8HUdxxGneusx65WPWS3rgqc66KRBws4Cethj91M6', '2025-08-25 11:47:09', '2025-08-25 11:47:09'),
('P12202522', '3211160103060001', 'Rizky Maulana', 'Sumedang', '2006-03-01', 'Dsn. Garawangi, RT 01, RW 06, Kel/Ds. Cibunar, Kec. Rancakalong, Kab. Sumedang.', '085736266978', 'L', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$t0M1yALT/FwnZa4ZWeZ7Y.HP89hqUyhSqHUibnUWMWbgVOUuGyQ0q', '2025-08-25 11:47:10', '2025-08-25 11:47:10'),
('P12202523', '3211185503060003', 'Rina', 'Bogor', '2006-03-15', 'Dsn Babakan Loa, Rt 04 RW 01, Kel/Ds. Margamukti Kec. Sumedang Utara, Kab,. Sumedang', '085559396112', 'P', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$mBSy5Plsx.oYJu9ObPbMv.52DAaH45FFvZJOh04qNAG84sGdzHOoK', '2025-08-25 11:47:10', '2025-08-25 11:47:10'),
('P12202524', '3211185206030001', 'Haifa Nur Fauziah', 'Sumedang', '2003-06-12', 'Dsn Sukaluyu Rt 02 RW 07, Kel/Ds. Girimukti Kec. Sumedang Utara, Kab. Sumedang', '089671559535', 'P', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$CJYiwkyvbcrQ0i3UjS9.AeXY.5fceaply.mTmLvWNB3lODN40t.Bm', '2025-08-25 11:47:10', '2025-08-25 11:47:10'),
('P12202525', '321120111213005', 'Kiki Rahayu', 'Sumedang', '2003-06-12', 'Dsn Sukaluyu Rt 02 RW 07, Kel/Ds. Girimukti Kec. Sumedang Utara, Kab. Sumedang', '089671559535', 'P', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$5kFCPlspH1L26y6h54iJl.ZvMZAqrCgW5jwp.rRZFlb8t.MGipoKi', '2025-08-25 11:47:11', '2025-08-25 11:47:11'),
('P12202526', '321120111213006', 'Erwin Haikal', 'Sumedang', '2003-06-12', 'Dsn Sukaluyu Rt 02 RW 07, Kel/Ds. Girimukti Kec. Sumedang Utara, Kab. Sumedang', '089671559535', 'L', 'TK', 'SMA', 'CTM', 'PRO', 'P12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$j.5a6ZfHIsHFJ01htNdiK.QRHwh99wzlVmWjMWG01WL.chO7fnzAG', '2025-08-25 11:47:11', '2025-08-25 11:47:11'),
('R12202528', '321120111213002', 'M. Ilham', 'Sumedang', '1993-12-17', 'Lingkungan Parigi, RT 03, RW 11, Kel/Ds. Kotakulon, Kec. Sumedang Selatan, Kab. Sumedang.', '082118464663', 'L', 'TK', 'S1', 'KRP', 'RnD', 'R12', '2024-01-01', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$8l0i8EaWBWFcELnvCh4b/e8XkbXzrnRefExe96jLnFla8Ex.VJ7XS', '2025-08-25 11:47:12', '2025-08-25 11:47:12'),
('R13202529', '321120111213001', 'M. Dzikri Amar', 'Sumedang', '1993-12-17', 'Lingkungan Parigi, RT 03, RW 11, Kel/Ds. Kotakulon, Kec. Sumedang Selatan, Kab. Sumedang.', '082120844992', 'L', 'TK', 'SMA', 'CTM', 'RnD', 'R13', '2024-01-01', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$NbICPMWR776Ixute/0TE/u1v.zeuH3XqzCmgb8gbOhCtQVKf4yE1.', '2025-08-25 11:47:12', '2025-08-25 11:47:12'),
('S11202530', '3211130201040001', 'Diaz Zaki Ansori', 'Sumedang', '2004-01-02', 'Dsn. Cikeuyeup, RT 01, RW 04, Kec. Pamulihan, Kab. Sumedang.', '085863054390', 'L', 'TK', 'SMA', 'BJG', 'SAL', 'S11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$SZtp88M0FUurn25ajc3xy.LaqmAnWX4RQCEC.Tv4kpCEdn3SUc.QO', '2025-08-25 11:47:12', '2025-08-25 11:47:12'),
('S11202531', '3374156405980011', 'Shofi Nisa Jamilah', 'Bandung', '1998-05-24', 'Dsn. Ganeas, RT 03, RW 05, Kel/Ds. Ganeas, Kec. Ganeas, Kab. Sumedang.', '082113311636', 'P', 'TK', 'S1', 'BJG', 'SAL', 'S11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$0w3xg5/CMQ9KBC9iUNwZPuZumq1cFt5uvMKXYY1rafem2agTkZo3i', '2025-08-25 11:47:13', '2025-08-25 11:47:13'),
('S11202532', '3211194507010005', 'Neli Putri Nur Aripin', 'Sumedang', '2001-07-05', 'Lingk. Ciberko, RT 04, RW 03, Kel/Ds. Kalitimbang, Kec. Cibeber, Kab. Sumedang.', '085559080006', 'P', 'TK', 'SMA', 'BJG', 'SAL', 'S11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$xtHgF3HYQ6aU0nj17eRA/OvVPERkBHHindRuuVI9qxB/kaZEqlhcu', '2025-08-25 11:47:13', '2025-08-25 11:47:13'),
('S11202533', '3211184203040001', 'Alpina Nuraeni', 'Sumedang', '2004-03-02', 'Gn. Buleud, RT 01, RW 01, Kel/Ds. Jatimulya, Kec. Sumedang Utara, Kab. Sumedang.', '0882000222714', 'P', 'TK', 'SMA', 'BJG', 'SAL', 'S11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$gSUGAz1vfA6XtcDPswfw.uhkaxs9netEcVs7j89gtBNzD1.ylwTDm', '2025-08-25 11:47:13', '2025-08-25 11:47:13'),
('S11202534', '3211184510060002', 'Elvani', 'Sumedang', '2006-10-05', 'Dsn. Ciduging, RT 02, RW 03, Kel/Ds. Tarunajaya, Kec. Darmaraja, Kab. Sumedang.', '0882001840074', 'P', 'TK', 'SMA', 'BJG', 'SAL', 'S11', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$SEbH97LuRMyZ1hViSaqTPuXOOsmQeGzDGijMAQriU5Ez608.2v1oG', '2025-08-25 11:47:14', '2025-08-25 11:47:14'),
('S12202535', '3211087011010006', 'Devi Siti Lutfiah', 'Sumedang', '2001-11-30', 'Dsn. Sukamulya, RT 13, RW 04, Kel/Ds. Paseh Kidul, Kec. Paseh, Kab. Sumedang.', '08986782507', 'P', 'TK', 'SMA', 'BJG', 'SAL', 'S12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$lT57LR5uD0lZkevqX7rbfuHth3qV6MKJfizSRxyZkis/9comB0pHq', '2025-08-25 11:47:14', '2025-08-25 11:47:14'),
('S12202536', '3211182411940008', 'Muhammad Sirojul Umam', 'Bandung', '1994-11-24', 'Perum. Sindang Amanah, RT 13, RW 15, Kel/Ds. Jatihurip, Kec. Sumedang Utara, Kab. Sumedang.', '082321781628', 'L', 'TK', 'SMA', 'BJG', 'SAL', 'S12', '2024-01-01', 'K', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$.311cjes.iTANqqTQdDv4O7hy6xf6NDG.IyyW9nzUVqzKrYOlisZ2', '2025-08-25 11:47:14', '2025-08-25 11:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_bpjskesehatan`
--

CREATE TABLE `karyawan_bpjskesehatan` (
  `kode_bpjs_kesehatan` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_bpjskesehatan`
--

INSERT INTO `karyawan_bpjskesehatan` (`kode_bpjs_kesehatan`, `nik`, `jumlah`, `tanggal_berlaku`, `created_at`, `updated_at`) VALUES
('K250001', '25.11.001', 75000, '2025-05-01', '2025-06-06 08:43:46', '2025-06-06 08:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_bpjstenagakerja`
--

CREATE TABLE `karyawan_bpjstenagakerja` (
  `kode_bpjs_tk` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_bpjstenagakerja`
--

INSERT INTO `karyawan_bpjstenagakerja` (`kode_bpjs_tk`, `nik`, `jumlah`, `tanggal_berlaku`, `created_at`, `updated_at`) VALUES
('K250001', '25.11.001', 25000, '2025-05-01', '2025-06-06 08:43:58', '2025-06-06 08:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_gaji_pokok`
--

CREATE TABLE `karyawan_gaji_pokok` (
  `kode_gaji` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_gaji_pokok`
--

INSERT INTO `karyawan_gaji_pokok` (`kode_gaji`, `nik`, `jumlah`, `tanggal_berlaku`, `created_at`, `updated_at`) VALUES
('G250001', '25.11.001', 6000000, '2025-05-01', '2025-05-28 09:41:22', '2025-08-25 12:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_penyesuaian_gaji`
--

CREATE TABLE `karyawan_penyesuaian_gaji` (
  `kode_penyesuaian_gaji` char(9) NOT NULL,
  `bulan` smallint(6) NOT NULL,
  `tahun` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_penyesuaian_gaji`
--

INSERT INTO `karyawan_penyesuaian_gaji` (`kode_penyesuaian_gaji`, `bulan`, `tahun`, `created_at`, `updated_at`) VALUES
('PYG072025', 7, 2025, '2025-06-08 07:30:22', '2025-07-19 07:40:40'),
('PYG082025', 8, 2025, '2025-08-28 08:55:40', '2025-08-28 08:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_penyesuaian_gaji_detail`
--

CREATE TABLE `karyawan_penyesuaian_gaji_detail` (
  `kode_penyesuaian_gaji` char(9) NOT NULL,
  `nik` char(9) NOT NULL,
  `penambah` int(11) NOT NULL,
  `pengurang` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_penyesuaian_gaji_detail`
--

INSERT INTO `karyawan_penyesuaian_gaji_detail` (`kode_penyesuaian_gaji`, `nik`, `penambah`, `pengurang`, `keterangan`, `created_at`, `updated_at`) VALUES
('PYG072025', '25.11.001', 100000, 0, 'Kekurangan Bulan Lalu', '2025-06-08 09:39:55', '2025-06-08 09:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_tunjangan`
--

CREATE TABLE `karyawan_tunjangan` (
  `kode_tunjangan` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_tunjangan`
--

INSERT INTO `karyawan_tunjangan` (`kode_tunjangan`, `nik`, `tanggal_berlaku`, `created_at`, `updated_at`) VALUES
('T250001', '25.11.001', '2024-01-01', '2025-05-30 10:16:59', '2025-08-25 12:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_tunjangan_detail`
--

CREATE TABLE `karyawan_tunjangan_detail` (
  `kode_tunjangan` char(7) NOT NULL,
  `kode_jenis_tunjangan` char(4) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_tunjangan_detail`
--

INSERT INTO `karyawan_tunjangan_detail` (`kode_tunjangan`, `kode_jenis_tunjangan`, `jumlah`, `created_at`, `updated_at`) VALUES
('T250001', 'TJ01', 0, '2025-08-25 12:05:33', '2025-08-25 12:05:33'),
('T250001', 'TJ02', 0, '2025-08-25 12:05:33', '2025-08-25 12:05:33'),
('T250001', 'TJ03', 0, '2025-08-25 12:05:33', '2025-08-25 12:05:33'),
('T250001', 'TJ04', 0, '2025-08-25 12:05:33', '2025-08-25 12:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_wajah`
--

CREATE TABLE `karyawan_wajah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` char(9) NOT NULL,
  `wajah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_wajah`
--

INSERT INTO `karyawan_wajah` (`id`, `nik`, `wajah`, `created_at`, `updated_at`) VALUES
(92, '25.11.001', '1_front.png', '2025-07-26 00:21:17', '2025-07-26 00:21:17'),
(93, '25.11.001', '2_left.png', '2025-07-26 00:21:17', '2025-07-26 00:21:17'),
(94, '25.11.001', '3_right.png', '2025-07-26 00:21:17', '2025-07-26 00:21:17'),
(95, '25.11.001', '4_up.png', '2025-07-26 00:21:17', '2025-07-26 00:21:17'),
(96, '25.11.001', '5_down.png', '2025-07-26 00:21:17', '2025-07-26 00:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `lembur`
--

CREATE TABLE `lembur` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nik` char(9) NOT NULL,
  `lembur_mulai` datetime NOT NULL,
  `lembur_selesai` datetime NOT NULL,
  `lembur_in` datetime DEFAULT NULL,
  `lembur_out` datetime DEFAULT NULL,
  `foto_lembur_in` varchar(255) DEFAULT NULL,
  `foto_lembur_out` varchar(255) DEFAULT NULL,
  `lokasi_lembur_in` varchar(255) DEFAULT NULL,
  `lokasi_lembur_out` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lembur`
--

INSERT INTO `lembur` (`id`, `tanggal`, `nik`, `lembur_mulai`, `lembur_selesai`, `lembur_in`, `lembur_out`, `foto_lembur_in`, `foto_lembur_out`, `lokasi_lembur_in`, `lokasi_lembur_out`, `status`, `keterangan`, `created_at`, `updated_at`) VALUES
(3, '2025-07-07', '22.22.224', '2025-07-07 22:00:00', '2025-07-07 23:59:00', '2025-07-07 22:10:00', '2025-07-07 23:00:00', '22.22.224-2025-07-07-in.png', NULL, '-5.390336,105.2737536', NULL, '1', 'Beresin Laporan Keuangan', '2025-07-07 15:10:29', '2025-07-15 10:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_13_163827_add_username_field_to_users', 1),
(6, '2024_01_14_065610_create_permission_tables', 1),
(7, '2024_01_15_170203_create_permission_groups_table', 1),
(8, '2024_01_16_081416_add_id_permission_group_to_permissions', 1),
(9, '2024_01_16_082530_add_relation_from_permissions_to_permission_groups', 1),
(10, '2024_04_27_133940_create_karyawans_table', 2),
(11, '2024_04_27_134826_create_cabangs_table', 3),
(12, '2024_04_27_140209_create_departemens_table', 4),
(13, '2024_04_27_140736_create_jabatans_table', 5),
(14, '2024_04_27_141507_crate_table_status_kawin', 6),
(15, '2024_05_25_080125_add_column_to_karyawan', 7),
(16, '2024_06_01_151030_create_relation_karyawan_to_departemen', 8),
(17, '2024_06_15_075718_create_cutis_table', 9),
(19, '2024_12_01_143041_create_jamkerjas_table', 10),
(21, '2024_12_17_221256_create_setjamkerjas_table', 11),
(22, '2024_12_25_141314_create_hariliburs_table', 12),
(23, '2024_12_30_143453_create_detailhariliburs_table', 13),
(24, '2025_01_13_152829_create_setjamkerjabydates_table', 14),
(25, '2025_01_21_074359_create_userkaryawans_table', 15),
(26, '2025_01_22_150849_create_presensis_table', 16),
(27, '2025_01_22_153134_create_setjamkerjabydepts_table', 17),
(28, '2025_01_22_153959_create_detailsetjamkerjabydepts_table', 18),
(29, '2025_01_27_083520_create_izinabsens_table', 19),
(32, '2025_01_28_225208_create_approveizinabsens_table', 20),
(33, '2025_01_29_110840_create_izinsakits_table', 21),
(34, '2025_01_29_235629_create_approveizinsakits_table', 22),
(35, '2025_01_31_052651_create_izincutis_table', 23),
(36, '2025_02_01_221452_create_approveizincutis_table', 24),
(37, '2025_03_01_215021_add_relation_karyawan_jabatan', 25),
(38, '2025_03_10_233534_create_pengaturanumums_table', 26),
(39, '2025_03_12_210910_add_column_periode_laporan', 27),
(40, '2025_03_12_213803_create_dendas_table', 28),
(41, '2025_03_21_070306_create_facerecognitions_table', 29),
(43, '2025_03_24_145610_add_facerecognition', 30),
(44, '2025_03_24_151107_add_cloud_id_token', 31),
(45, '2025_04_28_194528_change_cascade_userskaryawan', 32),
(46, '2025_04_28_195903_change_cascade_harilibur', 32),
(47, '2025_04_28_200136_change_cascade_presensi_jamkerja_bydate', 32),
(48, '2025_04_28_200151_change_cascade_presensi_jamkerja_byday', 32),
(49, '2025_04_28_200326_change_cascade_presensi_izinabsen', 32),
(50, '2025_04_28_200341_change_cascade_presensi_izincuti', 32),
(51, '2025_04_28_200352_change_cascade_presensi_izinsakit', 32),
(52, '2025_04_28_200644_change_cascade_presensi', 32),
(53, '2025_04_28_201020_change_cascase_presensi_izinabsen_approve', 32),
(54, '2025_04_28_201036_change_cascase_presensi_izincuti_approve', 33),
(55, '2025_04_28_201055_change_cascase_presensi_izinsakit_approve', 33),
(56, '2025_04_28_205629_add_logo_and_domain_email_to_pengaturanumums_table', 34),
(57, '2025_05_13_172741_create_sessions_table', 35),
(58, '2025_05_19_200108_add_domian_wa_gateway', 36),
(59, '2025_05_25_182126_create_jobs_table', 37),
(61, '2025_05_28_160332_create_gajipokoks_table', 38),
(63, '2025_05_29_144500_create_jenistunjangans_table', 39),
(64, '2025_05_30_154217_create_tunjangans_table', 40),
(66, '2025_05_30_154419_create_detailtunjangans_table', 41),
(67, '2025_05_31_162620_add_column_batasi_absen_jam_batasi_absen', 42),
(68, '2025_06_06_131732_create_bpjskesehatans_table', 43),
(70, '2025_06_06_144606_create_bpjstenagakerjas_table', 44),
(71, '2025_06_08_140901_create_penyesuaiangajis_table', 45),
(74, '2025_06_08_141250_create_detailpenyesuaiangajis_table', 46),
(75, '2025_06_10_162258_create_wamessages_table', 47),
(76, '2025_06_10_163230_add_column_wa_api_key_to_pengaturan_umum', 48),
(78, '2025_06_24_183103_create_slipgajis_table', 49),
(80, '2025_07_04_145928_create_lemburs_table', 50),
(82, '2025_07_08_052018_add_column_istirahat_to_presensi', 51),
(84, '2025_07_19_165824_add_column_multilokasi_to_pengaturan_umum', 52),
(85, '2025_07_28_173007_create_izindinas_table', 53),
(86, '2025_08_01_184429_add_column_batasi_hari_izin_pengaturan_umum', 54),
(87, '2025_08_01_195631_add_column_batas_presensi_lintashari', 55),
(88, '2025_08_02_155748_add_column_batas_jam_absen_pulang', 56);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(3, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(3, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 43),
(3, 'App\\Models\\User', 44),
(3, 'App\\Models\\User', 45),
(3, 'App\\Models\\User', 46),
(3, 'App\\Models\\User', 47),
(3, 'App\\Models\\User', 48);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_umum`
--

CREATE TABLE `pengaturan_umum` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `total_jam_bulan` int(11) NOT NULL,
  `denda` tinyint(1) NOT NULL DEFAULT 1,
  `face_recognition` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `periode_laporan_dari` smallint(6) NOT NULL,
  `periode_laporan_sampai` smallint(6) NOT NULL,
  `periode_laporan_next_bulan` tinyint(1) NOT NULL,
  `cloud_id` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `domain_email` varchar(255) DEFAULT NULL,
  `domain_wa_gateway` varchar(255) DEFAULT NULL,
  `wa_api_key` varchar(255) NOT NULL,
  `batasi_absen` tinyint(1) NOT NULL DEFAULT 0,
  `batas_jam_absen` smallint(6) NOT NULL DEFAULT 0,
  `batas_jam_absen_pulang` smallint(6) NOT NULL DEFAULT 0,
  `multi_lokasi` tinyint(1) NOT NULL DEFAULT 0,
  `notifikasi_wa` tinyint(1) NOT NULL DEFAULT 0,
  `batasi_hari_izin` tinyint(1) NOT NULL DEFAULT 1,
  `jml_hari_izin_max` int(11) NOT NULL,
  `batas_presensi_lintashari` time NOT NULL DEFAULT '08:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pengaturan_umum`
--

INSERT INTO `pengaturan_umum` (`id`, `nama_perusahaan`, `alamat`, `telepon`, `logo`, `total_jam_bulan`, `denda`, `face_recognition`, `created_at`, `updated_at`, `periode_laporan_dari`, `periode_laporan_sampai`, `periode_laporan_next_bulan`, `cloud_id`, `api_key`, `domain_email`, `domain_wa_gateway`, `wa_api_key`, `batasi_absen`, `batas_jam_absen`, `batas_jam_absen_pulang`, `multi_lokasi`, `notifikasi_wa`, `batasi_hari_izin`, `jml_hari_izin_max`, `batas_presensi_lintashari`) VALUES
(1, 'PT Carumby Adventure Indonesia', 'Sumedang, Jawa Barat', '031-1234567', '1756125069.png', 200, 0, 1, '2025-03-12 14:19:58', '2025-08-25 12:31:09', 26, 25, 1, NULL, NULL, 'adamadifa.com', 'wa.me/6281314733451', 'um6WoeMhPAAappsVF8Hx', 1, 1, 2, 1, 1, 1, 2, '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_permission_group` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `id_permission_group`) VALUES
(1, 'karyawan.index', 'web', '2024-03-14 09:46:35', '2024-03-14 09:46:35', 1),
(2, 'karyawan.create', 'web', '2024-03-14 09:46:44', '2024-03-14 09:46:44', 1),
(3, 'karyawan.edit', 'web', '2024-03-14 09:46:54', '2024-03-14 09:46:54', 1),
(4, 'karyawan.show', 'web', '2024-03-14 09:48:11', '2024-03-14 09:48:11', 1),
(5, 'karyawan.delete', 'web', '2024-03-14 09:48:18', '2024-03-14 09:48:18', 1),
(6, 'departemen.index', 'web', '2024-03-14 09:56:41', '2024-03-14 09:56:41', 2),
(7, 'departemen.create', 'web', '2024-03-14 09:57:08', '2024-03-14 09:57:08', 2),
(8, 'departemen.edit', 'web', '2024-03-14 09:57:16', '2024-03-14 09:57:16', 2),
(9, 'departemen.delete', 'web', '2024-03-14 09:57:32', '2024-03-14 09:57:32', 2),
(10, 'cabang.index', 'web', '2024-03-14 10:12:07', '2024-03-14 10:12:07', 3),
(11, 'cabang.create', 'web', '2024-03-14 10:12:15', '2024-03-14 10:12:15', 3),
(12, 'cabang.edit', 'web', '2024-03-14 10:12:25', '2024-03-14 10:12:25', 3),
(13, 'cabang.delete', 'web', '2024-03-14 10:12:41', '2024-03-14 10:12:41', 3),
(14, 'cuti.index', 'web', '2024-03-14 10:15:53', '2024-03-14 10:15:53', 4),
(15, 'cuti.create', 'web', '2024-03-14 10:16:00', '2024-03-14 10:16:00', 4),
(16, 'cuti.edit', 'web', '2024-03-14 10:16:09', '2024-03-14 10:16:09', 4),
(17, 'cuti.delete', 'web', '2024-03-14 10:16:20', '2024-03-14 10:16:20', 4),
(18, 'presensi.index', 'web', '2024-03-14 10:22:37', '2025-01-22 14:15:52', 10),
(19, 'karyawan.lockunlocklocation', 'web', '2024-05-25 08:39:29', '2024-05-25 08:39:29', 1),
(20, 'karyawan.lockunlockjamkerja', 'web', '2024-05-25 08:39:40', '2024-05-25 08:39:40', 1),
(21, 'karyawan.setjamkerja', 'web', '2024-10-14 13:38:16', '2024-10-14 13:38:16', 1),
(22, 'jamkerja.index', 'web', '2024-12-01 14:41:55', '2024-12-01 14:41:55', 6),
(23, 'jamkerja.create', 'web', '2024-12-01 14:41:55', '2024-12-01 14:41:55', 6),
(24, 'jamkerja.edit', 'web', '2024-12-01 14:41:55', '2024-12-01 14:41:55', 6),
(25, 'jamkerja.show', 'web', '2024-12-01 14:41:55', '2024-12-01 14:41:55', 6),
(26, 'jamkerja.delete', 'web', '2024-12-01 14:41:55', '2024-12-01 14:41:55', 6),
(27, 'suratjalancabang.index', 'web', '2024-12-01 14:41:55', '2024-12-01 14:41:55', 6),
(28, 'harilibur.index', 'web', '2024-12-25 14:16:11', '2024-12-25 14:16:11', 7),
(29, 'harilibur.create', 'web', '2024-12-25 14:16:11', '2024-12-25 14:16:11', 7),
(30, 'harilibur.edit', 'web', '2024-12-25 14:16:11', '2024-12-25 14:16:11', 7),
(31, 'harilibur.show', 'web', '2024-12-25 14:16:11', '2024-12-25 14:16:11', 7),
(32, 'harilibur.delete', 'web', '2024-12-25 14:16:11', '2024-12-25 14:16:11', 7),
(33, 'harilibur.setharilibur', 'web', '2024-12-25 14:44:03', '2024-12-25 14:44:03', 7),
(34, 'users.index', 'web', '2025-01-21 08:02:01', '2025-01-21 08:02:01', 8),
(35, 'users.create', 'web', '2025-01-21 08:02:09', '2025-01-21 08:02:09', 8),
(36, 'users.edit', 'web', '2025-01-21 08:02:20', '2025-01-21 08:02:20', 8),
(37, 'users.delete', 'web', '2025-01-21 08:02:31', '2025-01-21 08:02:31', 8),
(38, 'presensi.create', 'web', '2025-01-22 14:14:08', '2025-01-22 14:14:08', 10),
(39, 'presensi.edit', 'web', '2025-01-22 14:14:08', '2025-01-22 14:14:08', 10),
(40, 'presensi.delete', 'web', '2025-01-22 14:14:08', '2025-01-22 14:14:08', 10),
(41, 'jamkerjabydept.index', 'web', '2025-01-22 15:42:39', '2025-01-22 15:42:39', 11),
(42, 'jamkerjabydept.create', 'web', '2025-01-22 15:42:39', '2025-01-22 15:42:39', 11),
(43, 'jamkerjabydept.edit', 'web', '2025-01-22 15:42:39', '2025-01-22 15:42:39', 11),
(44, 'jamkerjabydept.delete', 'web', '2025-01-22 15:42:39', '2025-01-22 15:42:39', 11),
(45, 'izinabsen.index', 'web', '2025-01-27 01:40:48', '2025-01-27 01:40:48', 12),
(46, 'izinabsen.create', 'web', '2025-01-27 01:40:48', '2025-01-27 01:40:48', 12),
(47, 'izinabsen.edit', 'web', '2025-01-27 01:40:48', '2025-01-27 01:40:48', 12),
(48, 'izinabsen.delete', 'web', '2025-01-27 01:40:48', '2025-01-27 01:40:48', 12),
(49, 'izinsakit.index', 'web', '2025-01-29 14:10:31', '2025-01-29 14:10:31', 13),
(50, 'izinsakit.create', 'web', '2025-01-29 14:10:31', '2025-01-29 14:10:31', 13),
(51, 'izinsakit.edit', 'web', '2025-01-29 14:10:31', '2025-01-29 14:10:31', 13),
(52, 'izinsakit.delete', 'web', '2025-01-29 14:10:31', '2025-01-29 14:10:31', 13),
(53, 'izinsakit.approve', 'web', '2025-01-29 14:52:51', '2025-01-29 14:52:51', 13),
(54, 'izincuti.index', 'web', '2025-02-01 13:20:35', '2025-02-01 13:20:35', 14),
(55, 'izincuti.create', 'web', '2025-02-01 13:20:35', '2025-02-01 13:20:35', 14),
(56, 'izincuti.edit', 'web', '2025-02-01 13:20:35', '2025-02-01 13:20:35', 14),
(57, 'izincuti.delete', 'web', '2025-02-01 13:20:35', '2025-02-01 13:20:35', 14),
(58, 'izincuti.approve', 'web', '2025-02-01 13:20:35', '2025-02-01 13:20:35', 14),
(59, 'izinabsen.approve', 'web', '2025-02-01 15:46:19', '2025-02-01 15:46:19', 12),
(60, 'jabatan.index', 'web', '2025-03-01 14:27:48', '2025-03-01 14:27:48', 15),
(61, 'jabatan.create', 'web', '2025-03-01 14:27:48', '2025-03-01 14:27:48', 15),
(62, 'jabatan.edit', 'web', '2025-03-01 14:27:48', '2025-03-01 14:27:48', 15),
(63, 'jabatan.show', 'web', '2025-03-01 14:27:48', '2025-03-01 14:27:48', 15),
(64, 'jabatan.delete', 'web', '2025-03-01 14:27:48', '2025-03-01 14:27:48', 15),
(65, 'generalsetting.index', 'web', '2025-03-12 11:49:24', '2025-03-12 11:49:24', 16),
(66, 'generalsetting.create', 'web', '2025-03-12 11:49:24', '2025-03-12 11:49:24', 16),
(67, 'generalsetting.edit', 'web', '2025-03-12 11:49:24', '2025-03-12 11:49:24', 16),
(68, 'generalsetting.show', 'web', '2025-03-12 11:49:24', '2025-03-12 11:49:24', 16),
(69, 'generalsetting.delete', 'web', '2025-03-12 11:49:24', '2025-03-12 11:49:24', 16),
(70, 'laporan.presensi', 'web', '2025-03-12 17:36:30', '2025-03-12 17:36:30', 17),
(71, 'wagateway.index', 'web', '2025-05-19 13:11:48', '2025-05-19 13:11:48', 18),
(72, 'gajipokok.index', 'web', '2025-05-28 09:08:43', '2025-05-28 09:08:43', 19),
(73, 'gajipokok.create', 'web', '2025-05-28 09:08:43', '2025-05-28 09:08:43', 19),
(74, 'gajipokok.edit', 'web', '2025-05-28 09:08:43', '2025-05-28 09:08:43', 19),
(75, 'gajipokok.show', 'web', '2025-05-28 09:08:43', '2025-05-28 09:08:43', 19),
(76, 'gajipokok.delete', 'web', '2025-05-28 09:08:43', '2025-05-28 09:08:43', 19),
(77, 'jenistunjangan.index', 'web', '2025-05-29 07:48:28', '2025-05-29 07:48:28', 20),
(78, 'jenistunjangan.create', 'web', '2025-05-29 07:48:28', '2025-05-29 07:48:28', 20),
(79, 'jenistunjangan.edit', 'web', '2025-05-29 07:48:28', '2025-05-29 07:48:28', 20),
(80, 'jenistunjangan.show', 'web', '2025-05-29 07:48:28', '2025-05-29 07:48:28', 20),
(81, 'jenistunjangan.delete', 'web', '2025-05-29 07:48:28', '2025-05-29 07:48:28', 20),
(82, 'tunjangan.index', 'web', '2025-05-30 08:47:12', '2025-05-30 08:47:12', 21),
(83, 'tunjangan.create', 'web', '2025-05-30 08:47:12', '2025-05-30 08:47:12', 21),
(84, 'tunjangan.edit', 'web', '2025-05-30 08:47:12', '2025-05-30 08:47:12', 21),
(85, 'tunjangan.show', 'web', '2025-05-30 08:47:12', '2025-05-30 08:47:12', 21),
(86, 'tunjangan.delete', 'web', '2025-05-30 08:47:12', '2025-05-30 08:47:12', 21),
(87, 'bpjskesehatan.index', 'web', '2025-06-06 06:20:52', '2025-06-06 06:20:52', 22),
(88, 'bpjskesehatan.create', 'web', '2025-06-06 06:20:52', '2025-06-06 06:20:52', 22),
(89, 'bpjskesehatan.edit', 'web', '2025-06-06 06:20:52', '2025-06-06 06:20:52', 22),
(90, 'bpjskesehatan.show', 'web', '2025-06-06 06:20:52', '2025-06-06 06:20:52', 22),
(91, 'bpjskesehatan.delete', 'web', '2025-06-06 06:20:52', '2025-06-06 06:20:52', 22),
(92, 'bpjstenagakerja.index', 'web', '2025-06-06 07:48:32', '2025-06-06 07:48:32', 23),
(93, 'bpjstenagakerja.create', 'web', '2025-06-06 07:48:32', '2025-06-06 07:48:32', 23),
(94, 'bpjstenagakerja.edit', 'web', '2025-06-06 07:48:32', '2025-06-06 07:48:32', 23),
(95, 'bpjstenagakerja.show', 'web', '2025-06-06 07:48:32', '2025-06-06 07:48:32', 23),
(96, 'bpjstenagakerja.delete', 'web', '2025-06-06 07:48:32', '2025-06-06 07:48:32', 23),
(97, 'penyesuaiangaji.index', 'web', '2025-06-08 07:15:37', '2025-06-08 07:15:37', 24),
(98, 'penyesuaiangaji.create', 'web', '2025-06-08 07:15:37', '2025-06-08 07:15:37', 24),
(99, 'penyesuaiangaji.edit', 'web', '2025-06-08 07:15:37', '2025-06-08 07:15:37', 24),
(100, 'penyesuaiangaji.show', 'web', '2025-06-08 07:15:37', '2025-06-08 07:15:37', 24),
(101, 'penyesuaiangaji.delete', 'web', '2025-06-08 07:15:37', '2025-06-08 07:15:37', 24),
(102, 'slipgaji.index', 'web', '2025-06-24 11:40:01', '2025-06-24 11:40:01', 25),
(103, 'slipgaji.create', 'web', '2025-06-24 11:40:01', '2025-06-24 11:40:01', 25),
(104, 'slipgaji.edit', 'web', '2025-06-24 11:40:01', '2025-06-24 11:40:01', 25),
(105, 'slipgaji.delete', 'web', '2025-06-24 11:40:01', '2025-06-24 11:40:01', 25),
(106, 'lembur.index', 'web', '2025-07-04 08:13:10', '2025-07-04 08:13:10', 26),
(107, 'lembur.create', 'web', '2025-07-04 08:13:10', '2025-07-04 08:13:10', 26),
(108, 'lembur.edit', 'web', '2025-07-04 08:13:10', '2025-07-04 08:13:10', 26),
(109, 'lembur.delete', 'web', '2025-07-04 08:13:10', '2025-07-04 08:13:10', 26),
(110, 'lembur.approve', 'web', '2025-07-05 08:07:36', '2025-07-05 08:07:36', 26),
(111, 'izindinas.index', 'web', '2025-07-28 10:34:46', '2025-07-28 10:34:46', 27),
(112, 'izindinas.create', 'web', '2025-07-28 10:34:46', '2025-07-28 10:34:46', 27),
(113, 'izindinas.edit', 'web', '2025-07-28 10:34:46', '2025-07-28 10:34:46', 27),
(114, 'izindinas.delete', 'web', '2025-07-28 10:34:46', '2025-07-28 10:34:46', 27),
(115, 'izindinas.approve', 'web', '2025-07-28 10:34:46', '2025-07-28 10:34:46', 27);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Karyawan', '2024-03-14 09:46:22', '2024-03-14 09:46:22'),
(2, 'Departemen', '2024-03-14 09:55:53', '2024-03-14 09:55:53'),
(3, 'Cabang', '2024-03-14 10:09:23', '2024-03-14 10:09:23'),
(4, 'Cuti', '2024-03-14 10:15:40', '2024-03-14 10:15:40'),
(5, 'Presensi', '2024-03-14 10:22:00', '2024-03-14 10:22:00'),
(6, 'Jam Kerja', '2024-12-01 14:41:55', '2024-12-01 14:41:55'),
(7, 'Haril Libur', '2024-12-25 14:16:11', '2024-12-25 14:16:11'),
(8, 'User', '2025-01-21 08:01:51', '2025-01-21 08:01:51'),
(10, 'Presensi', '2025-01-22 14:14:08', '2025-01-22 14:14:08'),
(11, 'Jam Kerja Departemen', '2025-01-22 15:42:39', '2025-01-22 15:42:39'),
(12, 'Izin Absen', '2025-01-27 01:40:47', '2025-01-27 01:40:47'),
(13, 'Izin Sakit', '2025-01-29 14:10:31', '2025-01-29 14:10:31'),
(14, 'Izin Cuti', '2025-02-01 13:20:35', '2025-02-01 13:20:35'),
(15, 'Jabatan', '2025-03-01 14:27:48', '2025-03-01 14:27:48'),
(16, 'General Setting', '2025-03-12 11:49:24', '2025-03-12 11:49:24'),
(17, 'Laporan', '2025-03-12 17:36:30', '2025-03-12 17:36:30'),
(18, 'WA Gateway', '2025-05-19 13:11:48', '2025-05-19 13:11:48'),
(19, 'Gaji Pokok', '2025-05-28 09:08:43', '2025-05-28 09:08:43'),
(20, 'Jenis Tunjangan', '2025-05-29 07:48:28', '2025-05-29 07:48:28'),
(21, 'Tunjangan', '2025-05-30 08:47:12', '2025-05-30 08:47:12'),
(22, 'Bpjs Kesehatan', '2025-06-06 06:20:52', '2025-06-06 06:20:52'),
(23, 'Bpjs Tenaga Kerja', '2025-06-06 07:48:31', '2025-06-06 07:48:31'),
(24, 'Penyesuaian Gaji', '2025-06-08 07:15:37', '2025-06-08 07:15:37'),
(25, 'Slip Gaji', '2025-06-24 11:40:00', '2025-06-24 11:40:00'),
(26, 'Lembur', '2025-07-04 08:13:10', '2025-07-04 08:13:10'),
(27, 'Izin Dinas', '2025-07-28 10:34:46', '2025-07-28 10:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_in` datetime DEFAULT NULL,
  `jam_out` datetime DEFAULT NULL,
  `foto_in` varchar(255) DEFAULT NULL,
  `foto_out` varchar(255) DEFAULT NULL,
  `lokasi_in` varchar(255) DEFAULT NULL,
  `lokasi_out` varchar(255) DEFAULT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `status` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `istirahat_in` datetime DEFAULT NULL,
  `lokasi_istirahat_in` varchar(255) DEFAULT NULL,
  `foto_istirahat_in` varchar(255) DEFAULT NULL,
  `istirahat_out` datetime DEFAULT NULL,
  `lokasi_istirahat_out` varchar(255) DEFAULT NULL,
  `foto_istirahat_out` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id`, `nik`, `tanggal`, `jam_in`, `jam_out`, `foto_in`, `foto_out`, `lokasi_in`, `lokasi_out`, `kode_jam_kerja`, `status`, `created_at`, `updated_at`, `istirahat_in`, `lokasi_istirahat_in`, `foto_istirahat_in`, `istirahat_out`, `lokasi_istirahat_out`, `foto_istirahat_out`) VALUES
(54, '25.11.001', '2025-05-13', '2025-05-13 06:45:00', NULL, NULL, NULL, NULL, NULL, 'JK01', 'h', '2025-05-13 11:40:07', '2025-05-13 11:40:07', NULL, NULL, NULL, NULL, NULL, NULL),
(57, '25.11.001', '2025-05-14', '2025-05-14 23:32:00', NULL, '22.22.224-2025-05-14-in.png', NULL, '-6.7403776,108.5374464', NULL, 'JK03', 'h', '2025-05-14 16:32:32', '2025-05-14 16:32:32', NULL, NULL, NULL, NULL, NULL, NULL),
(59, '25.11.001', '2025-05-21', '2025-05-21 22:04:00', '2025-05-22 05:40:00', '22.22.224-2025-05-21-in.png', '22.22.224-2025-05-21-out.png', '-6.7272704,108.5472768', '-6.7272704,108.5472768', 'JK03', 'h', '2025-05-21 15:04:50', '2025-05-21 22:40:39', NULL, NULL, NULL, NULL, NULL, NULL),
(60, '25.11.001', '2025-05-26', '2025-05-25 18:34:00', NULL, '22.22.224-2025-05-25-in.png', NULL, '-6.9075,107.8151', NULL, 'JK05', 'h', '2025-05-25 11:34:14', '2025-05-25 11:34:14', NULL, NULL, NULL, NULL, NULL, NULL),
(63, '25.11.001', '2025-05-31', '2025-05-31 16:37:00', NULL, '22.22.224-2025-05-31-in.png', NULL, '-6.8419,108.0232', NULL, 'JK04', 'h', '2025-05-31 09:37:59', '2025-05-31 09:37:59', NULL, NULL, NULL, NULL, NULL, NULL),
(64, '25.11.001', '2025-06-01', NULL, NULL, NULL, NULL, NULL, NULL, 'JK01', 'a', '2025-06-01 09:16:18', '2025-06-01 09:16:18', NULL, NULL, NULL, NULL, NULL, NULL),
(65, '25.11.001', '2025-05-02', NULL, NULL, NULL, NULL, NULL, NULL, 'JK01', 'a', '2025-06-01 09:36:51', '2025-06-01 09:36:51', NULL, NULL, NULL, NULL, NULL, NULL),
(68, '25.11.001', '2025-06-10', '2025-06-10 17:21:00', '2025-06-10 17:21:00', '22.22.224-2025-06-10-in.png', '22.22.224-2025-06-10-out.png', '-6.9075,107.8151', '-6.9075,107.8151', 'JK03', 'h', '2025-06-10 10:21:13', '2025-06-10 10:21:41', NULL, NULL, NULL, NULL, NULL, NULL),
(69, '25.11.001', '2025-07-08', '2025-07-08 05:14:00', NULL, '22.22.224-2025-07-08-in.png', NULL, '-5.390336,105.2737536', NULL, 'JK01', 'h', '2025-07-07 22:14:36', '2025-07-08 01:04:45', '2025-07-08 08:04:00', '-5.390336,105.2737536', '22.22.224-2025-07-08-in.png', NULL, NULL, NULL),
(73, '25.11.001', '2025-07-14', '2025-07-14 19:53:00', NULL, '22.22.224-2025-07-14-in.png', NULL, '-6.193152,106.7384832', NULL, 'JK04', 'h', '2025-07-14 12:53:20', '2025-07-14 12:54:41', '2025-07-14 19:53:00', '-6.193152,106.7384832', '22.22.224-2025-07-14-in.png', '2025-07-14 19:54:00', '-6.193152,106.7384832', '22.22.224-2025-07-14-out.png'),
(77, '25.11.001', '2025-07-19', '2025-07-19 17:27:00', NULL, '22.22.224-2025-07-19-in.png', NULL, '-6.9177,107.7226', NULL, 'JK04', 'h', '2025-07-19 10:27:08', '2025-07-19 10:27:08', NULL, NULL, NULL, NULL, NULL, NULL),
(80, '25.11.001', '2025-07-21', '2025-07-21 16:25:00', NULL, '22.22.224-2025-07-21-in.png', NULL, '-5.3772288,105.2606464', NULL, 'JK04', 'h', '2025-07-21 09:25:10', '2025-07-21 09:25:10', NULL, NULL, NULL, NULL, NULL, NULL),
(82, '25.11.001', '2024-07-24', '2024-07-24 08:00:00', '2024-07-24 16:00:00', NULL, NULL, NULL, NULL, 'JK03', 'h', '2025-07-24 10:26:45', '2025-07-24 10:27:10', NULL, NULL, NULL, NULL, NULL, NULL),
(83, '25.11.001', '2025-07-25', '2025-07-25 22:24:00', NULL, '22.22.224-2025-07-25-in.png', NULL, '-6.9177,107.7226', NULL, 'JK01', 'h', '2025-07-25 15:24:16', '2025-07-25 15:24:16', NULL, NULL, NULL, NULL, NULL, NULL),
(84, '25.11.001', '2025-07-26', '2025-07-26 07:12:00', NULL, '22.22.224-2025-07-26-in.png', NULL, '-7.302417040043266,108.24185936959124', NULL, 'JK04', 'h', '2025-07-26 00:12:20', '2025-07-26 00:12:20', NULL, NULL, NULL, NULL, NULL, NULL),
(95, '25.11.001', '2025-07-31', '2025-07-31 18:31:00', NULL, '22.22.224-2025-07-31-in.png', NULL, '-7.302417040043266,108.24185936959124', NULL, 'JK01', 'h', '2025-07-31 11:31:39', '2025-07-31 11:31:39', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinabsen`
--

CREATE TABLE `presensi_izinabsen` (
  `kode_izin` char(255) NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `nik` char(9) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_hrd` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinabsen_approve`
--

CREATE TABLE `presensi_izinabsen_approve` (
  `id_presensi` bigint(20) UNSIGNED NOT NULL,
  `kode_izin` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izincuti`
--

CREATE TABLE `presensi_izincuti` (
  `kode_izin_cuti` char(12) NOT NULL,
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `kode_cuti` char(3) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_hrd` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izincuti_approve`
--

CREATE TABLE `presensi_izincuti_approve` (
  `id_presensi` bigint(20) UNSIGNED NOT NULL,
  `kode_izin_cuti` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izindinas`
--

CREATE TABLE `presensi_izindinas` (
  `kode_izin_dinas` char(255) NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `nik` char(9) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_hrd` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_izindinas`
--

INSERT INTO `presensi_izindinas` (`kode_izin_dinas`, `tanggal`, `dari`, `sampai`, `nik`, `keterangan`, `keterangan_hrd`, `status`, `created_at`, `updated_at`) VALUES
('ID25070001', '2025-07-31', '2025-07-31', '2025-07-31', '25.11.001', 'test', NULL, '1', '2025-07-31 11:30:10', '2025-07-31 11:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinsakit`
--

CREATE TABLE `presensi_izinsakit` (
  `kode_izin_sakit` char(12) NOT NULL,
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `doc_sid` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_hrd` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinsakit_approve`
--

CREATE TABLE `presensi_izinsakit_approve` (
  `id_presensi` bigint(20) UNSIGNED NOT NULL,
  `kode_izin_sakit` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja`
--

CREATE TABLE `presensi_jamkerja` (
  `kode_jam_kerja` char(4) NOT NULL,
  `nama_jam_kerja` varchar(255) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_pulang` time NOT NULL,
  `istirahat` char(1) NOT NULL,
  `jam_awal_istirahat` time DEFAULT NULL,
  `jam_akhir_istirahat` time DEFAULT NULL,
  `total_jam` smallint(6) NOT NULL,
  `lintashari` char(1) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja`
--

INSERT INTO `presensi_jamkerja` (`kode_jam_kerja`, `nama_jam_kerja`, `jam_masuk`, `jam_pulang`, `istirahat`, `jam_awal_istirahat`, `jam_akhir_istirahat`, `total_jam`, `lintashari`, `keterangan`, `created_at`, `updated_at`) VALUES
('JK01', 'NON SHIFT', '08:00:00', '17:00:00', '1', '12:00:00', '13:00:00', 8, '0', 'NORMAL', NULL, '2025-08-25 11:52:20'),
('JK02', 'SHIFT 1', '08:00:00', '17:00:00', '1', '12:00:00', '13:00:00', 8, '0', 'Mantap', '2024-12-17 15:11:39', '2025-08-25 11:57:31'),
('JK03', 'SHIFT 3', '15:00:00', '00:00:00', '1', '21:00:00', '22:00:00', 0, '0', '-', '2025-03-01 13:58:19', '2025-08-25 11:59:31'),
('JK04', 'SHIFT 2', '12:00:00', '21:00:00', '1', '18:00:00', '19:00:00', 8, '0', NULL, '2025-05-06 14:03:37', '2025-08-25 11:58:39'),
('JK05', 'SHIFT 4', '15:00:00', '09:00:00', '1', '23:00:00', '09:00:00', 8, '1', '-', '2025-05-10 17:40:34', '2025-08-25 12:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_bydate`
--

CREATE TABLE `presensi_jamkerja_bydate` (
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_byday`
--

CREATE TABLE `presensi_jamkerja_byday` (
  `nik` char(9) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja_byday`
--

INSERT INTO `presensi_jamkerja_byday` (`nik`, `hari`, `kode_jam_kerja`, `created_at`, `updated_at`) VALUES
('25.11.001', 'Senin', 'JK04', '2025-07-14 12:40:52', '2025-07-14 12:40:52'),
('25.11.001', 'Selasa', 'JK01', '2025-07-14 12:40:52', '2025-07-14 12:40:52'),
('25.11.001', 'Rabu', 'JK03', '2025-07-14 12:40:52', '2025-07-14 12:40:52'),
('25.11.001', 'Kamis', 'JK01', '2025-07-14 12:40:52', '2025-07-14 12:40:52'),
('25.11.001', 'Jumat', 'JK01', '2025-07-14 12:40:52', '2025-07-14 12:40:52'),
('25.11.001', 'Sabtu', 'JK04', '2025-07-14 12:40:52', '2025-07-14 12:40:52'),
('25.11.001', 'Minggu', 'JK05', '2025-07-14 12:40:52', '2025-07-14 12:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_bydept`
--

CREATE TABLE `presensi_jamkerja_bydept` (
  `kode_jk_dept` char(7) NOT NULL,
  `kode_cabang` char(3) NOT NULL,
  `kode_dept` char(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja_bydept`
--

INSERT INTO `presensi_jamkerja_bydept` (`kode_jk_dept`, `kode_cabang`, `kode_dept`, `created_at`, `updated_at`) VALUES
('JBGRAKT', 'BGR', 'AKT', '2025-01-23 14:02:24', '2025-01-23 14:02:24'),
('JCTMPRO', 'CTM', 'PRO', '2025-08-28 08:59:04', '2025-08-28 08:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_bydept_detail`
--

CREATE TABLE `presensi_jamkerja_bydept_detail` (
  `kode_jk_dept` char(7) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja_bydept_detail`
--

INSERT INTO `presensi_jamkerja_bydept_detail` (`kode_jk_dept`, `hari`, `kode_jam_kerja`, `created_at`, `updated_at`) VALUES
('JBGRAKT', 'Senin', 'JK02', '2025-01-23 14:28:00', '2025-01-23 14:28:00'),
('JBGRAKT', 'Selasa', 'JK01', '2025-01-23 14:28:00', '2025-01-23 14:28:00'),
('JBGRAKT', 'Rabu', 'JK01', '2025-01-23 14:28:00', '2025-01-23 14:28:00'),
('JBGRAKT', 'Kamis', 'JK01', '2025-01-23 14:28:00', '2025-01-23 14:28:00'),
('JBGRAKT', 'Jumat', 'JK01', '2025-01-23 14:28:00', '2025-01-23 14:28:00'),
('JBGRAKT', 'Sabtu', 'JK01', '2025-01-23 14:28:00', '2025-01-23 14:28:00'),
('JBGRAKT', 'Minggu', 'JK02', '2025-01-23 14:28:00', '2025-01-23 14:28:00'),
('JCTMPRO', 'Senin', 'JK01', '2025-08-28 08:59:04', '2025-08-28 08:59:04'),
('JCTMPRO', 'Selasa', 'JK01', '2025-08-28 08:59:04', '2025-08-28 08:59:04'),
('JCTMPRO', 'Rabu', 'JK01', '2025-08-28 08:59:04', '2025-08-28 08:59:04'),
('JCTMPRO', 'Kamis', 'JK01', '2025-08-28 08:59:04', '2025-08-28 08:59:04'),
('JCTMPRO', 'Sabtu', 'JK01', '2025-08-28 08:59:04', '2025-08-28 08:59:04'),
('JCTMPRO', 'Minggu', 'JK01', '2025-08-28 08:59:04', '2025-08-28 08:59:04');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', '2024-03-14 09:31:06', '2024-03-14 09:31:06'),
(2, 'admin departemen', 'web', '2024-03-14 09:51:49', '2024-03-14 09:51:49'),
(3, 'karyawan', 'web', '2025-01-21 07:42:30', '2025-01-21 07:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(18, 3),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
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
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(102, 3),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(106, 3),
(107, 1),
(107, 3),
(108, 1),
(108, 3),
(109, 1),
(109, 3),
(110, 1),
(111, 1),
(112, 1),
(112, 3),
(113, 1),
(114, 1),
(114, 3),
(115, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5cnJxgTlUgeZRaYcvCnKRx9jmdlypdUC39uXaVcg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ0c0YU9PeXdXMURXQWdURGxuQVZwRXpjTjN2a2FoMk1LZ2RaVWt2UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747891930),
('bHztnxwTzMnoA0Eq9K6SlFbASUMvxk8NM0cK0BVT', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSm1xMERXakp2bFR2dW1abFcwS2lBNHZLUzRsYTBpQ1A0WlZoR1NyQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747869124),
('GmB1EFcJigpcehMkuclwnXOeg7ZBlDCqJtqMdxlH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib0FPRXJsVlU2UG9zWUFFSHBqWWN0ZVJ2b0lqZFdQbk43WWY5bVR4SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9rYXJ5YXdhbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1747695657),
('V9m7zD1SgRzTFUG4ZocXR3Nbj7orWoTUTVQABzn5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSkY2OEtvZ21SZEZVVVZRd2MxVkhTdGY3VFRwd1pXWk1MRngyREhQcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1748181137),
('WfkoxeJDZw3M8hskj6FTcPZHCxq2jgZ9NNn18uEi', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiREt3UkVSNFMyRzVnTGpYSklHZGNnRFJMSnhqMUxiMkhPSFo4WUdaYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1748172920),
('YuXDjDSUhQROI2eedBORZrhCpr7wgluzmnYCp1Pl', 12, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/17.5 Mobile/15A5370a Safari/602.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN1lneG1aUEFTRVZTbW1kdjAzTVNSM3hNTHlMcnYwOWVRMmh6ZlkzTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mYWNlcmVjb2duaXRpb24vZ2V0d2FqYWg/dD0xNzQ3NjY5ODk0NDQ5Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTI7fQ==', 1747662701);

-- --------------------------------------------------------

--
-- Table structure for table `slip_gaji`
--

CREATE TABLE `slip_gaji` (
  `kode_slip_gaji` char(8) NOT NULL,
  `bulan` smallint(6) NOT NULL,
  `tahun` char(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `slip_gaji`
--

INSERT INTO `slip_gaji` (`kode_slip_gaji`, `bulan`, `tahun`, `status`, `created_at`, `updated_at`) VALUES
('GJ62025', 7, '2025', 1, '2025-06-26 10:37:38', '2025-07-19 08:52:30'),
('GJ22024', 2, '2024', 0, '2025-08-28 08:53:22', '2025-08-28 08:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `status_kawin`
--

CREATE TABLE `status_kawin` (
  `kode_status_kawin` char(2) NOT NULL,
  `status_kawin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `status_kawin`
--

INSERT INTO `status_kawin` (`kode_status_kawin`, `status_kawin`, `created_at`, `updated_at`) VALUES
('HB', 'Telah Berpisah Secara Hukum / Janda / Duda', '2024-04-27 14:20:47', '2024-04-27 14:20:47'),
('K0', 'Kawin Belum Punya Tanggungan', '2024-04-27 14:20:47', '2024-04-27 14:20:47'),
('K1', 'Kawin Punya Tanggungan 1', '2024-04-27 14:20:47', '2024-04-27 14:20:47'),
('K2', 'Kawin PUnya Tanggungan 2', '2024-04-27 14:20:47', '2024-04-27 14:20:47'),
('K3', 'Kawin PUnya Tanggungan 3', '2024-04-27 14:20:47', '2024-04-27 14:20:47'),
('TK', 'Tidak Kawin', '2024-04-27 14:20:47', '2024-04-27 14:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adam Abdi Al Ala', 'adam', 'adamabdi.al.a@gmail.com', NULL, '$2y$12$7f.rOofB1/CU8PtbCJ25Ge04gv1wsF3S74w4ppq5XH9dmfRAjf.yO', 'SsRrhlLhr5XZBGSN9lfaFkhvq6IJK3cm76Y2VeeuwPEuynEjvB0Up5awPmrJ', NULL, '2024-03-14 09:31:24'),
(12, 'Nabila Salsabila', '22.22.224', '2222224@adamadifa.com', NULL, '$2y$12$PR5buN8QwrdlN93gS1rsb.SHRCRL4ghnQoqyZIPuuWqDCPxM9PBJu', NULL, '2025-05-06 13:54:44', '2025-05-06 13:54:44'),
(14, 'Ahmad Musa Irfany', 'P11202513', 'p11202513@adamadifa.com', NULL, '$2y$12$GoDY.L2YXvf9XR/FrXV5.egzdoiqk5J/DtzxM/ExMtr0FGPEuNC0.', NULL, '2025-08-25 12:35:54', '2025-08-25 12:35:54'),
(15, 'Alpina Nuraeni', 'S11202533', 's11202533@adamadifa.com', NULL, '$2y$12$2TQbel1qTwQaeg/7nYLsiu5ZCyY7yEs44JuxW8lMsfio63obyvaym', NULL, '2025-08-25 12:35:56', '2025-08-25 12:35:56'),
(16, 'Cecep Hilman', 'M12202505', 'm12202505@adamadifa.com', NULL, '$2y$12$1FVOrG4BSF2HJh7eFYm2euDqJhQKQO8C0TjKAM3R34.6JRKIXhO6m', NULL, '2025-08-25 12:36:00', '2025-08-25 12:36:00'),
(17, 'Deden Hendrik', 'P11202509', 'p11202509@adamadifa.com', NULL, '$2y$12$v3QHpukkpnJOohMhnAsYqePCL4zqP.41ZnEZmQNuqEZ6Bui/MrD3W', NULL, '2025-08-25 12:36:04', '2025-08-25 12:36:04'),
(18, 'Deri Sucinda Gustiara', 'O11202507', 'o11202507@adamadifa.com', NULL, '$2y$12$hdXPKEFG8.NxrO.FGgroqOWSazdOnjdEIaGFwUy.f.GQ.0odwqnbS', NULL, '2025-08-25 12:36:11', '2025-08-25 12:36:11'),
(19, 'Devi Siti Lutfiah', 'S12202535', 's12202535@adamadifa.com', NULL, '$2y$12$BLthEd/V9RJ6pwNtvqZ4mOeYfTyG66S0MQPpR4ATuu5wDo5Xbmnv.', NULL, '2025-08-25 12:36:15', '2025-08-25 12:36:15'),
(20, 'Dian Rudiansyah', 'M12202506', 'm12202506@adamadifa.com', NULL, '$2y$12$ymYMe7Y0VypTwfFECpes4uYwpx4eUCLZGfcktyq/UPgzu0Hx.rg1q', NULL, '2025-08-25 12:36:18', '2025-08-25 12:36:18'),
(21, 'Diaz Zaki Ansori', 'S11202530', 's11202530@adamadifa.com', NULL, '$2y$12$zOxrgFhvAXom77J9YEg8duXkhQ1IGwmqBCf4uHwOdTGgVyzvp4Mai', NULL, '2025-08-25 12:36:21', '2025-08-25 12:36:21'),
(22, 'Elvani', 'S11202534', 's11202534@adamadifa.com', NULL, '$2y$12$KXZPbWCoOUrBSiJs1bRiwOyu0JnaCH34d4pXkzQkBIsedTnPHD/Gm', NULL, '2025-08-25 12:36:26', '2025-08-25 12:36:26'),
(23, 'Erwin Haikal', 'P12202526', 'p12202526@adamadifa.com', NULL, '$2y$12$.4UhElLQHeNaGsXIwe1rrOWVtXd2AI.VIrI.djDb5NBhSF9JHjAlu', NULL, '2025-08-25 12:36:30', '2025-08-25 12:36:30'),
(24, 'Fikri Prasetya Nugraha', 'P12202517', 'p12202517@adamadifa.com', NULL, '$2y$12$xuTRq2NhOL4vOTtW3OsOp.qmxKu6L4nD9Np4aIxzxbZqGQRFUbG8O', NULL, '2025-08-25 12:36:34', '2025-08-25 12:36:34'),
(25, 'Haifa Nur Fauziah', 'P12202524', 'p12202524@adamadifa.com', NULL, '$2y$12$UC3OKYra9sfc6EWGBqhu.O6xuyUGdeDewCPktK2oaWhMgtR1nd4CK', NULL, '2025-08-25 12:36:38', '2025-08-25 12:36:38'),
(26, 'Indriani Rachmat . SP', 'O12202508', 'o12202508@adamadifa.com', NULL, '$2y$12$UsFDVK0PlLok7qRxlsoN5OUsZ1eCpMOzN4IGOz752UbRTylzKqzoa', NULL, '2025-08-25 12:36:43', '2025-08-25 12:36:43'),
(27, 'Kiki Rahayu', 'P12202525', 'p12202525@adamadifa.com', NULL, '$2y$12$T.ovYJo/p3Wmrsu6FKGARumV1j.3AW92IvsJrhHLfF1aeHV3W5DUa', NULL, '2025-08-25 12:36:47', '2025-08-25 12:36:47'),
(28, 'M. Dzikri Amar', 'R13202529', 'r13202529@adamadifa.com', NULL, '$2y$12$mx/EdWBFdt7.flyyo3Vk7ueM1mjYiRs3yJO7GzFLwW4boLpk51m/W', NULL, '2025-08-25 12:36:51', '2025-08-25 12:36:51'),
(29, 'Mochamad Kharisma Ginanjar', 'H01202501', 'h01202501@adamadifa.com', NULL, '$2y$12$4kYVw3gYjGxYSoIWrQDDoOj5rbIo8k78Pv5f.e84rrhNoHt/Gpryu', NULL, '2025-08-25 12:36:59', '2025-08-25 12:36:59'),
(30, 'M. Ilham', 'R12202528', 'r12202528@adamadifa.com', NULL, '$2y$12$kB3zEAdjsiK32e4JnyL77eczp0DJ7uQXSXsfGBRyUp91LIvvjHnXW', NULL, '2025-08-25 12:37:11', '2025-08-25 12:37:11'),
(31, 'Muhamad Bintang', 'P11202512', 'p11202512@adamadifa.com', NULL, '$2y$12$bZ9bh5OsHhWYrwWhwWA13.dGH6iGPvY9pYR2s4wJ5O0meA8YjNOLS', NULL, '2025-08-25 12:37:19', '2025-08-25 12:37:19'),
(32, 'Muhammad Sirojul Umam', 'S12202536', 's12202536@adamadifa.com', NULL, '$2y$12$FZfmSh/JVGrvlRXYAOBlp.SA9A6httXuN6zzvKlPe2VrvbL2lesqi', NULL, '2025-08-25 12:37:27', '2025-08-25 12:37:27'),
(33, 'Mulyana', 'P11202511', 'p11202511@adamadifa.com', NULL, '$2y$12$LE9kYC7kXPpDvIyew2rYSOkPOymjxXvs47Ql10ZEgA6AbTHeOYzQe', NULL, '2025-08-25 12:37:35', '2025-08-25 12:37:35'),
(34, 'Musfik Nazmuloh', 'M11202504', 'm11202504@adamadifa.com', NULL, '$2y$12$9NH9nGZgZNJ7/1F7rVQVYuJG4olDdYre5Nr0vzpvKy9PzXi.fiSZG', NULL, '2025-08-25 12:37:42', '2025-08-25 12:37:42'),
(35, 'Nandang Supriatna', 'P12202516', 'p12202516@adamadifa.com', NULL, '$2y$12$uizUjMHY3Bh3Fe6TL21KX.daHj0mJ1WMteZA/7BmPHKz6EkCrkP/S', NULL, '2025-08-25 12:37:49', '2025-08-25 12:37:49'),
(36, 'Neli Putri Nur Aripin', 'S11202532', 's11202532@adamadifa.com', NULL, '$2y$12$rGl1yKLWNilFDb6BmcuL3uGUnfam3RfHo2nOTcYcUxzz12EDxEeoa', NULL, '2025-08-25 12:37:57', '2025-08-25 12:37:57'),
(37, 'Rosita Fatimatuzzahra', 'P12202521', 'p12202521@adamadifa.com', NULL, '$2y$12$98lOZkxerqgj9eQ5uRevQ.FylZ/qBsfk03vtOY.L4NzTKu6D1NYEy', NULL, '2025-08-25 12:38:14', '2025-08-25 12:38:14'),
(38, 'Robby Salam', 'H02202502', 'h02202502@adamadifa.com', NULL, '$2y$12$CrW78DQe8csdDjtDTx5ubexCDnNRW2UytdVkogra6hIgsZrvD0cM.', NULL, '2025-08-25 12:38:22', '2025-08-25 12:38:22'),
(39, 'Rizky Maulana', 'P12202522', 'p12202522@adamadifa.com', NULL, '$2y$12$voswcVAVK./U4bfLqfyRrehRtJnHNuMq0zyAxj03dvytB1Uel12/2', NULL, '2025-08-25 12:38:29', '2025-08-25 12:38:29'),
(40, 'Rizal Muhamad Ramdan', 'P11202510', 'p11202510@adamadifa.com', NULL, '$2y$12$DinX7CXdy1oYYEyz1RqeFu6EmiY74dn.FNw12vKvL3BK0aIb7u64e', NULL, '2025-08-25 12:38:36', '2025-08-25 12:38:36'),
(41, 'Rina', 'P12202523', 'p12202523@adamadifa.com', NULL, '$2y$12$NiqwfYsowQ0bffkM8bSXEuiVKTn/EaEh0hX0T1vYdNyVPFyV.bf5y', NULL, '2025-08-25 12:38:44', '2025-08-25 12:38:44'),
(42, 'Rangga Prasetyo Irawan', 'P12202514', 'p12202514@adamadifa.com', NULL, '$2y$12$UVexHHE7r0rhfFSlS697YOE0z7tOK268ofBOTLJtqS3uUPHfYbwFu', NULL, '2025-08-25 12:38:52', '2025-08-25 12:38:52'),
(43, 'Rusli Mulyadi', 'P12202519', 'p12202519@adamadifa.com', NULL, '$2y$12$rzGI8OeyLurvlFaplvNxQeFmjl4/s5OBwE8osBChzvV6zfBaiAMX.', NULL, '2025-08-25 12:38:59', '2025-08-25 12:38:59'),
(44, 'Shofi Nisa Jamilah', 'S11202531', 's11202531@adamadifa.com', NULL, '$2y$12$qU23Em2mZ4VeUV9dP.kNbOK4VwCHQogG9rUN5MCgbGdyFTk8bV1HS', NULL, '2025-08-25 12:39:05', '2025-08-25 12:39:05'),
(45, 'Sri Marni', 'P12202515', 'p12202515@adamadifa.com', NULL, '$2y$12$XWXoePXr97drqrivTIrOzunELkNMU9t9x9wxcKYB0FYySPd31YGQi', NULL, '2025-08-25 12:39:11', '2025-08-25 12:39:11'),
(46, 'Vega Chandra Alam', 'M01202503', 'm01202503@adamadifa.com', NULL, '$2y$12$NaM6mBKjhvECOCR3A5QsbeAgJgB.iIGyszoA5yCwsg5zoZ2G8JLoO', NULL, '2025-08-25 12:39:18', '2025-08-25 12:39:18'),
(47, 'Widia Nurul Siam', 'P12202520', 'p12202520@adamadifa.com', NULL, '$2y$12$tMKvylp3SBqNMitmGWCf7uh67mr7UPBDCx/XGFHaI/CKT2PvFlLsO', NULL, '2025-08-25 12:39:25', '2025-08-25 12:39:25'),
(48, 'Ziqri Rafi Aqila', 'P12202518', 'p12202518@adamadifa.com', NULL, '$2y$12$5OH3h9PGoZNuP9Yjb1KoH.ix.jIwlYikU800NnJs2b.dBe9dISqYu', NULL, '2025-08-25 12:39:31', '2025-08-25 12:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `users_karyawan`
--

CREATE TABLE `users_karyawan` (
  `nik` char(10) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_karyawan`
--

INSERT INTO `users_karyawan` (`nik`, `id_user`, `created_at`, `updated_at`) VALUES
('25.11.001', 12, '2025-05-06 13:54:44', '2025-05-06 13:54:44'),
('P11202513', 14, '2025-08-25 12:35:54', '2025-08-25 12:35:54'),
('S11202533', 15, '2025-08-25 12:35:56', '2025-08-25 12:35:56'),
('M12202505', 16, '2025-08-25 12:36:00', '2025-08-25 12:36:00'),
('P11202509', 17, '2025-08-25 12:36:04', '2025-08-25 12:36:04'),
('O11202507', 18, '2025-08-25 12:36:11', '2025-08-25 12:36:11'),
('S12202535', 19, '2025-08-25 12:36:15', '2025-08-25 12:36:15'),
('M12202506', 20, '2025-08-25 12:36:18', '2025-08-25 12:36:18'),
('S11202530', 21, '2025-08-25 12:36:21', '2025-08-25 12:36:21'),
('S11202534', 22, '2025-08-25 12:36:26', '2025-08-25 12:36:26'),
('P12202526', 23, '2025-08-25 12:36:30', '2025-08-25 12:36:30'),
('P12202517', 24, '2025-08-25 12:36:34', '2025-08-25 12:36:34'),
('P12202524', 25, '2025-08-25 12:36:38', '2025-08-25 12:36:38'),
('O12202508', 26, '2025-08-25 12:36:43', '2025-08-25 12:36:43'),
('P12202525', 27, '2025-08-25 12:36:47', '2025-08-25 12:36:47'),
('R13202529', 28, '2025-08-25 12:36:51', '2025-08-25 12:36:51'),
('H01202501', 29, '2025-08-25 12:36:59', '2025-08-25 12:36:59'),
('R12202528', 30, '2025-08-25 12:37:11', '2025-08-25 12:37:11'),
('P11202512', 31, '2025-08-25 12:37:19', '2025-08-25 12:37:19'),
('S12202536', 32, '2025-08-25 12:37:27', '2025-08-25 12:37:27'),
('P11202511', 33, '2025-08-25 12:37:35', '2025-08-25 12:37:35'),
('M11202504', 34, '2025-08-25 12:37:42', '2025-08-25 12:37:42'),
('P12202516', 35, '2025-08-25 12:37:49', '2025-08-25 12:37:49'),
('S11202532', 36, '2025-08-25 12:37:57', '2025-08-25 12:37:57'),
('P12202521', 37, '2025-08-25 12:38:14', '2025-08-25 12:38:14'),
('H02202502', 38, '2025-08-25 12:38:22', '2025-08-25 12:38:22'),
('P12202522', 39, '2025-08-25 12:38:29', '2025-08-25 12:38:29'),
('P11202510', 40, '2025-08-25 12:38:36', '2025-08-25 12:38:36'),
('P12202523', 41, '2025-08-25 12:38:44', '2025-08-25 12:38:44'),
('P12202514', 42, '2025-08-25 12:38:52', '2025-08-25 12:38:52'),
('P12202519', 43, '2025-08-25 12:38:59', '2025-08-25 12:38:59'),
('S11202531', 44, '2025-08-25 12:39:05', '2025-08-25 12:39:05'),
('P12202515', 45, '2025-08-25 12:39:11', '2025-08-25 12:39:11'),
('M01202503', 46, '2025-08-25 12:39:18', '2025-08-25 12:39:18'),
('P12202520', 47, '2025-08-25 12:39:25', '2025-08-25 12:39:25'),
('P12202518', 48, '2025-08-25 12:39:31', '2025-08-25 12:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `wamessages`
--

CREATE TABLE `wamessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `error_message` text DEFAULT NULL,
  `sent_at` timestamp NOT NULL DEFAULT '2025-06-10 09:26:41',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `wamessages`
--

INSERT INTO `wamessages` (`id`, `sender`, `receiver`, `message`, `status`, `error_message`, `sent_at`, `created_at`, `updated_at`) VALUES
(113, '-', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(114, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(115, '-', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(116, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(117, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(118, '6282220804021:80@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Halo, ini pesan dari PHP!', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(119, '6282220804021:82@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'test', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(120, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ttt', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(121, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'test', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(122, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', '12', 0, 'Connection Closed', '2025-06-10 09:26:41', NULL, NULL),
(123, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', '22', 0, 'Connection Closed', '2025-06-10 09:26:41', NULL, NULL),
(124, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'TESTTT', 0, 'Connection Closed', '2025-06-10 09:26:41', NULL, NULL),
(125, '6282220804021:83@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ggggg', 0, 'Connection Closed', '2025-06-10 09:26:41', NULL, NULL),
(126, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ggg', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(127, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'tttt', 0, 'Connection Closed', '2025-06-10 09:26:41', NULL, NULL),
(128, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'test', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(129, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'hhhh', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(130, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'ddd', 1, NULL, '2025-06-10 09:26:41', NULL, NULL),
(131, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'gggg', 0, 'Connection Closed', '2025-06-10 09:26:41', NULL, NULL),
(132, '6282220804021:84@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'bbbbb', 0, 'Connection Closed', '2025-06-10 09:26:41', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`kode_cabang`) USING BTREE;

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`kode_cuti`) USING BTREE;

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`kode_dept`) USING BTREE;

--
-- Indexes for table `detailtunjangans`
--
ALTER TABLE `detailtunjangans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `hari_libur`
--
ALTER TABLE `hari_libur`
  ADD PRIMARY KEY (`kode_libur`) USING BTREE,
  ADD KEY `hari_libur_kode_cabang_foreign` (`kode_cabang`) USING BTREE;

--
-- Indexes for table `hari_libur_detail`
--
ALTER TABLE `hari_libur_detail`
  ADD KEY `hari_libur_detail_kode_libur_foreign` (`kode_libur`) USING BTREE,
  ADD KEY `hari_libur_detail_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode_jabatan`) USING BTREE;

--
-- Indexes for table `jenis_tunjangan`
--
ALTER TABLE `jenis_tunjangan`
  ADD PRIMARY KEY (`kode_jenis_tunjangan`) USING BTREE;

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `jobs_queue_index` (`queue`) USING BTREE;

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`) USING BTREE,
  ADD KEY `karyawan_kode_dept_foreign` (`kode_dept`) USING BTREE,
  ADD KEY `karyawan_kode_jabatan_foreign` (`kode_jabatan`) USING BTREE;

--
-- Indexes for table `karyawan_bpjskesehatan`
--
ALTER TABLE `karyawan_bpjskesehatan`
  ADD PRIMARY KEY (`kode_bpjs_kesehatan`) USING BTREE,
  ADD KEY `karyawan_bpjskesehatan_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_bpjstenagakerja`
--
ALTER TABLE `karyawan_bpjstenagakerja`
  ADD PRIMARY KEY (`kode_bpjs_tk`) USING BTREE,
  ADD KEY `karyawan_bpjstenagakerja_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_gaji_pokok`
--
ALTER TABLE `karyawan_gaji_pokok`
  ADD PRIMARY KEY (`kode_gaji`) USING BTREE,
  ADD KEY `karyawan_gaji_pokok_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_penyesuaian_gaji`
--
ALTER TABLE `karyawan_penyesuaian_gaji`
  ADD PRIMARY KEY (`kode_penyesuaian_gaji`) USING BTREE;

--
-- Indexes for table `karyawan_penyesuaian_gaji_detail`
--
ALTER TABLE `karyawan_penyesuaian_gaji_detail`
  ADD KEY `karyawan_penyesuaian_gaji_detail_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `karyawan_penyesuaian_gaji_detail_kode_penyesuaian_gaji_foreign` (`kode_penyesuaian_gaji`) USING BTREE;

--
-- Indexes for table `karyawan_tunjangan`
--
ALTER TABLE `karyawan_tunjangan`
  ADD PRIMARY KEY (`kode_tunjangan`) USING BTREE,
  ADD KEY `karyawan_tunjangan_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_tunjangan_detail`
--
ALTER TABLE `karyawan_tunjangan_detail`
  ADD KEY `karyawan_tunjangan_detail_kode_tunjangan_foreign` (`kode_tunjangan`) USING BTREE,
  ADD KEY `karyawan_tunjangan_detail_kode_jenis_tunjangan_foreign` (`kode_jenis_tunjangan`) USING BTREE;

--
-- Indexes for table `karyawan_wajah`
--
ALTER TABLE `karyawan_wajah`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `karyawan_wajah_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `lembur`
--
ALTER TABLE `lembur`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Indexes for table `pengaturan_umum`
--
ALTER TABLE `pengaturan_umum`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE,
  ADD KEY `permissions_id_permission_group_foreign` (`id_permission_group`) USING BTREE;

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `presensi_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_izinabsen`
--
ALTER TABLE `presensi_izinabsen`
  ADD PRIMARY KEY (`kode_izin`) USING BTREE,
  ADD KEY `presensi_izinabsen_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `presensi_izinabsen_approve`
--
ALTER TABLE `presensi_izinabsen_approve`
  ADD PRIMARY KEY (`id_presensi`) USING BTREE,
  ADD KEY `presensi_izinabsen_approve_kode_izin_foreign` (`kode_izin`) USING BTREE;

--
-- Indexes for table `presensi_izincuti`
--
ALTER TABLE `presensi_izincuti`
  ADD PRIMARY KEY (`kode_izin_cuti`) USING BTREE,
  ADD KEY `presensi_izincuti_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_izincuti_kode_cuti_foreign` (`kode_cuti`) USING BTREE;

--
-- Indexes for table `presensi_izincuti_approve`
--
ALTER TABLE `presensi_izincuti_approve`
  ADD PRIMARY KEY (`id_presensi`) USING BTREE,
  ADD KEY `presensi_izincuti_approve_kode_izin_cuti_foreign` (`kode_izin_cuti`) USING BTREE;

--
-- Indexes for table `presensi_izindinas`
--
ALTER TABLE `presensi_izindinas`
  ADD PRIMARY KEY (`kode_izin_dinas`) USING BTREE,
  ADD KEY `presensi_izindinas_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `presensi_izinsakit`
--
ALTER TABLE `presensi_izinsakit`
  ADD PRIMARY KEY (`kode_izin_sakit`) USING BTREE,
  ADD KEY `presensi_izinsakit_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `presensi_izinsakit_approve`
--
ALTER TABLE `presensi_izinsakit_approve`
  ADD PRIMARY KEY (`id_presensi`) USING BTREE,
  ADD KEY `presensi_izinsakit_approve_kode_izin_sakit_foreign` (`kode_izin_sakit`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja`
--
ALTER TABLE `presensi_jamkerja`
  ADD PRIMARY KEY (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_bydate`
--
ALTER TABLE `presensi_jamkerja_bydate`
  ADD KEY `presensi_jamkerja_bydate_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_jamkerja_bydate_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_byday`
--
ALTER TABLE `presensi_jamkerja_byday`
  ADD KEY `presensi_jamkerja_byday_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_jamkerja_byday_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_bydept`
--
ALTER TABLE `presensi_jamkerja_bydept`
  ADD PRIMARY KEY (`kode_jk_dept`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_bydept_detail`
--
ALTER TABLE `presensi_jamkerja_bydept_detail`
  ADD KEY `presensi_jamkerja_bydate_detail_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE,
  ADD KEY `presensi_jamkerja_bydate_detail_kode_jk_dept_foreign` (`kode_jk_dept`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sessions_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `sessions_last_activity_index` (`last_activity`) USING BTREE;

--
-- Indexes for table `status_kawin`
--
ALTER TABLE `status_kawin`
  ADD PRIMARY KEY (`kode_status_kawin`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Indexes for table `users_karyawan`
--
ALTER TABLE `users_karyawan`
  ADD KEY `users_karyawan_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `wamessages`
--
ALTER TABLE `wamessages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `denda`
--
ALTER TABLE `denda`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detailtunjangans`
--
ALTER TABLE `detailtunjangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `karyawan_wajah`
--
ALTER TABLE `karyawan_wajah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `lembur`
--
ALTER TABLE `lembur`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `pengaturan_umum`
--
ALTER TABLE `pengaturan_umum`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `presensi_izinabsen_approve`
--
ALTER TABLE `presensi_izinabsen_approve`
  MODIFY `id_presensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `presensi_izincuti_approve`
--
ALTER TABLE `presensi_izincuti_approve`
  MODIFY `id_presensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `presensi_izinsakit_approve`
--
ALTER TABLE `presensi_izinsakit_approve`
  MODIFY `id_presensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `wamessages`
--
ALTER TABLE `wamessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hari_libur`
--
ALTER TABLE `hari_libur`
  ADD CONSTRAINT `hari_libur_kode_cabang_foreign` FOREIGN KEY (`kode_cabang`) REFERENCES `cabang` (`kode_cabang`) ON UPDATE CASCADE;

--
-- Constraints for table `hari_libur_detail`
--
ALTER TABLE `hari_libur_detail`
  ADD CONSTRAINT `hari_libur_detail_kode_libur_foreign` FOREIGN KEY (`kode_libur`) REFERENCES `hari_libur` (`kode_libur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hari_libur_detail_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_kode_dept_foreign` FOREIGN KEY (`kode_dept`) REFERENCES `departemen` (`kode_dept`) ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_kode_jabatan_foreign` FOREIGN KEY (`kode_jabatan`) REFERENCES `jabatan` (`kode_jabatan`) ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_bpjskesehatan`
--
ALTER TABLE `karyawan_bpjskesehatan`
  ADD CONSTRAINT `karyawan_bpjskesehatan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_bpjstenagakerja`
--
ALTER TABLE `karyawan_bpjstenagakerja`
  ADD CONSTRAINT `karyawan_bpjstenagakerja_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_gaji_pokok`
--
ALTER TABLE `karyawan_gaji_pokok`
  ADD CONSTRAINT `karyawan_gaji_pokok_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_penyesuaian_gaji_detail`
--
ALTER TABLE `karyawan_penyesuaian_gaji_detail`
  ADD CONSTRAINT `karyawan_penyesuaian_gaji_detail_kode_penyesuaian_gaji_foreign` FOREIGN KEY (`kode_penyesuaian_gaji`) REFERENCES `karyawan_penyesuaian_gaji` (`kode_penyesuaian_gaji`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_penyesuaian_gaji_detail_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_tunjangan`
--
ALTER TABLE `karyawan_tunjangan`
  ADD CONSTRAINT `karyawan_tunjangan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_tunjangan_detail`
--
ALTER TABLE `karyawan_tunjangan_detail`
  ADD CONSTRAINT `karyawan_tunjangan_detail_kode_jenis_tunjangan_foreign` FOREIGN KEY (`kode_jenis_tunjangan`) REFERENCES `jenis_tunjangan` (`kode_jenis_tunjangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_tunjangan_detail_kode_tunjangan_foreign` FOREIGN KEY (`kode_tunjangan`) REFERENCES `karyawan_tunjangan` (`kode_tunjangan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_wajah`
--
ALTER TABLE `karyawan_wajah`
  ADD CONSTRAINT `karyawan_wajah_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_id_permission_group_foreign` FOREIGN KEY (`id_permission_group`) REFERENCES `permission_groups` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinabsen`
--
ALTER TABLE `presensi_izinabsen`
  ADD CONSTRAINT `presensi_izinabsen_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinabsen_approve`
--
ALTER TABLE `presensi_izinabsen_approve`
  ADD CONSTRAINT `presensi_izinabsen_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izinabsen_approve_kode_izin_foreign` FOREIGN KEY (`kode_izin`) REFERENCES `presensi_izinabsen` (`kode_izin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izincuti`
--
ALTER TABLE `presensi_izincuti`
  ADD CONSTRAINT `presensi_izincuti_kode_cuti_foreign` FOREIGN KEY (`kode_cuti`) REFERENCES `cuti` (`kode_cuti`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izincuti_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izincuti_approve`
--
ALTER TABLE `presensi_izincuti_approve`
  ADD CONSTRAINT `presensi_izincuti_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izincuti_approve_kode_izin_cuti_foreign` FOREIGN KEY (`kode_izin_cuti`) REFERENCES `presensi_izincuti` (`kode_izin_cuti`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izindinas`
--
ALTER TABLE `presensi_izindinas`
  ADD CONSTRAINT `presensi_izindinas_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinsakit`
--
ALTER TABLE `presensi_izinsakit`
  ADD CONSTRAINT `presensi_izinsakit_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinsakit_approve`
--
ALTER TABLE `presensi_izinsakit_approve`
  ADD CONSTRAINT `presensi_izinsakit_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izinsakit_approve_kode_izin_sakit_foreign` FOREIGN KEY (`kode_izin_sakit`) REFERENCES `presensi_izinsakit` (`kode_izin_sakit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_jamkerja_bydate`
--
ALTER TABLE `presensi_jamkerja_bydate`
  ADD CONSTRAINT `presensi_jamkerja_bydate_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_jamkerja_bydate_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_jamkerja_byday`
--
ALTER TABLE `presensi_jamkerja_byday`
  ADD CONSTRAINT `presensi_jamkerja_byday_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_jamkerja_byday_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_jamkerja_bydept_detail`
--
ALTER TABLE `presensi_jamkerja_bydept_detail`
  ADD CONSTRAINT `presensi_jamkerja_bydate_detail_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_jamkerja_bydate_detail_kode_jk_dept_foreign` FOREIGN KEY (`kode_jk_dept`) REFERENCES `presensi_jamkerja_bydept` (`kode_jk_dept`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_karyawan`
--
ALTER TABLE `users_karyawan`
  ADD CONSTRAINT `users_karyawan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
