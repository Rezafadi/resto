-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Sep 2024 pada 12.39
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_akses`
--

CREATE TABLE `resto_akses` (
  `akses_id` int(2) NOT NULL,
  `user_username` varchar(30) NOT NULL,
  `kategori_id` int(2) NOT NULL,
  `akses_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_akses`
--

INSERT INTO `resto_akses` (`akses_id`, `user_username`, `kategori_id`, `akses_update`) VALUES
(2, 'dapur', 2, '2019-03-22 22:14:32'),
(4, 'dapur', 3, '2019-03-22 22:15:00'),
(5, 'dapur', 1, '2019-03-22 22:15:03'),
(6, 'kasir', 1, '2019-03-23 13:04:54'),
(7, 'kasir', 2, '2019-03-23 13:04:57'),
(8, 'kasir', 3, '2019-03-23 13:05:01'),
(9, 'kasir', 4, '2019-03-23 13:05:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_contact`
--

CREATE TABLE `resto_contact` (
  `contact_id` int(2) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_address` text NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `contact_web` varchar(50) DEFAULT NULL,
  `contact_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_contact`
--

INSERT INTO `resto_contact` (`contact_id`, `contact_name`, `contact_address`, `contact_phone`, `contact_email`, `contact_web`, `contact_update`) VALUES
(1, 'Ruang Kopi Teka', 'Dekat TK Daarul Fikri, Jl. Alfurqon Gg. Wakaf, RT 03/03, Poris Plawad Utara, Kec. Cipondoh, Kota Tangerang.', '0822-1436-6634', '', '', '2024-07-28 00:45:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_kategori`
--

CREATE TABLE `resto_kategori` (
  `kategori_id` int(2) NOT NULL,
  `kategori_nama` varchar(50) NOT NULL,
  `kategori_seo` text NOT NULL,
  `kategori_icon` varchar(50) NOT NULL,
  `kategori_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_kategori`
--

INSERT INTO `resto_kategori` (`kategori_id`, `kategori_nama`, `kategori_seo`, `kategori_icon`, `kategori_update`) VALUES
(1, 'DESSERT', 'dessert', 'po po-salads', '2019-03-10 21:46:29'),
(2, 'MAIN COURSE', 'main-course', 'po po-burger', '2019-03-10 21:50:26'),
(3, 'SNACK', 'snack', 'po po-fries', '2019-03-10 21:47:02'),
(4, 'DRINK', 'drink', 'po po-drinks', '2019-03-10 21:46:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_meja`
--

CREATE TABLE `resto_meja` (
  `meja_id` int(2) NOT NULL,
  `meja_nama` varchar(50) NOT NULL,
  `meja_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_meja`
--

INSERT INTO `resto_meja` (`meja_id`, `meja_nama`, `meja_update`) VALUES
(1, '1', '2019-03-09 21:49:24'),
(2, '2', '2019-03-09 21:49:27'),
(3, '3', '2019-03-09 21:49:31'),
(4, '4', '2019-04-29 21:58:04'),
(5, '5', '2019-04-30 11:11:19'),
(6, '6', '2019-04-30 11:11:28'),
(7, '7', '2019-04-30 11:11:37'),
(8, '8', '2019-04-30 11:11:45'),
(9, '9', '2019-04-30 11:11:53'),
(10, '2', '2019-04-30 11:12:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_menu`
--

CREATE TABLE `resto_menu` (
  `menu_id` int(10) NOT NULL,
  `kategori_id` int(2) NOT NULL,
  `menu_kode` varchar(5) NOT NULL,
  `menu_nama` varchar(50) NOT NULL,
  `menu_seo` text NOT NULL,
  `menu_deskripsi` text NOT NULL,
  `menu_harga` int(10) NOT NULL DEFAULT '0' COMMENT 'Harga',
  `menu_waktu` int(2) NOT NULL DEFAULT '0' COMMENT 'Waktu Masak',
  `menu_foto` varchar(100) DEFAULT NULL COMMENT 'Foto Masakan',
  `menu_jual` int(10) NOT NULL DEFAULT '0',
  `menu_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_menu`
--

INSERT INTO `resto_menu` (`menu_id`, `kategori_id`, `menu_kode`, `menu_nama`, `menu_seo`, `menu_deskripsi`, `menu_harga`, `menu_waktu`, `menu_foto`, `menu_jual`, `menu_update`) VALUES
(1, 1, '00001', 'PANCAKE COKELAT', 'pancake-cokelat', 'Roti Cokelat dengan Topping Cokelat Kental diatasnya', 15000, 6, 'Menu_makanan_pancake-cokelat_1552196777.jpg', 4, '2019-03-10 12:58:33'),
(2, 1, '00002', 'PIE COKELAT', 'pie-cokelat', 'pie cokelat nikmat dan manis', 10000, 8, 'Menu_makanan_pie-cokelat_1552197559.jpg', 2, '2019-03-10 12:59:19'),
(3, 1, '00003', 'STRAWBERRY CAKE', 'strawberry-cake', 'cake dengan taburan dan saus strawberry', 30000, 10, 'Menu_makanan_strawberry-cake_1552200399.jpg', 3, '2019-03-10 13:46:39'),
(4, 1, '00004', 'STRAWBERRY  SOFT', 'strawberry--soft', 'strawbbery', 25000, 10, 'Menu_makanan_strawberry--soft_1552200644.jpg', 0, '2019-03-10 13:50:44'),
(5, 2, '00005', 'NASI GORENG SEAFOOD', 'nasi-goreng-seafood', 'nasi goreng dengan campuran seafood, udang dan sayuran', 15000, 10, 'Menu_makanan_nasi-goreng-seafood_1552200829.jpg', 3, '2019-03-10 13:53:49'),
(6, 2, '00006', 'NASI GORENG TERI GURIH', 'nasi-goreng-teri-gurih', 'nasi goreng dengan tambahan teri gurih dan rempah yang enak', 17000, 10, 'Menu_makanan_masi-goreng-teri-gurih_1552200907.jpg', 0, '2024-07-31 20:58:28'),
(8, 2, '00008', 'MIE GORENG SEAFOOD', 'mie-goreng-seafood', 'Mie goreng dengan tambahan ikan dan udang', 13000, 5, 'Menu_makanan_mie-goreng-seafood_1552201071.jpg', 1, '2019-03-10 13:57:51'),
(9, 4, '00009', 'JUS ALPUKAT', 'jus-alpukat', 'jus alpukat dari buah alpukat pilihan yang segar', 7000, 2, 'Menu_makanan_jus-alpukat_1552201145.jpg', 2, '2019-03-10 13:59:05'),
(10, 4, '00010', 'JUS STRAWBERRY', 'jus-strawberry', 'Jus strawberry segar', 7000, 2, 'Menu_makanan_jus-strawberry_1552202038.jpg', 0, '2019-03-10 14:21:33'),
(11, 4, '00011', 'ES TEH LEMON', 'es-teh-lemon', 'Es Teh Lemon', 5000, 2, 'Menu_makanan_es-teh-lemon_1552202101.jpg', 0, '2019-03-10 14:15:01'),
(12, 4, '00012', 'ES SUSU COKELAT', 'es-susu-cokelat', 'es susu cokelat segar', 10000, 3, 'Menu_makanan_es-susu-cokelat_1552202151.jpg', 1, '2019-03-10 14:15:51'),
(13, 4, '00013', 'ES KOPI CAPPUCINO', 'es-kopi-cappucino', 'Es kopi cappucino', 10000, 4, 'Menu_makanan_es-kopi-cappucino_1552202327.jpg', 1, '2019-03-10 14:18:47'),
(14, 3, '00014', 'FRIENCH FRIES', 'friench-fries', 'kentang goreng dengan potongan jumbo', 5000, 4, 'Menu_makanan_friench-fries_1552202378.jpg', 1, '2019-03-10 14:19:38'),
(15, 3, '00015', 'PISANG GORENG COKELAT KEJU', 'pisang-goreng-cokelat-keju', 'pisang goreng dengan lapisan cokelat dan taburan keju', 15000, 5, 'Menu_makanan_pisang-goreng-cokelat-keju_1552202437.jpg', 0, '2019-03-10 14:20:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_meta`
--

CREATE TABLE `resto_meta` (
  `meta_id` int(2) NOT NULL,
  `meta_name` varchar(50) NOT NULL COMMENT 'Nama Website',
  `meta_desc` text,
  `meta_keyword` text,
  `meta_author` varchar(100) DEFAULT NULL,
  `meta_developer` varchar(50) DEFAULT NULL,
  `meta_robots` varchar(50) DEFAULT NULL,
  `meta_googlebots` varchar(50) DEFAULT NULL,
  `meta_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_meta`
--

INSERT INTO `resto_meta` (`meta_id`, `meta_name`, `meta_desc`, `meta_keyword`, `meta_author`, `meta_developer`, `meta_robots`, `meta_googlebots`, `meta_update`) VALUES
(1, 'Ruang Kopi Teka | Digital Menu', 'Aplikasi Menu Digital', 'resto', 'NOKENCODE', 'NOKENCODE', 'index, follow', 'index, follow', '2024-07-25 22:34:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_order`
--

CREATE TABLE `resto_order` (
  `order_id` int(10) NOT NULL,
  `meja_id` int(2) NOT NULL,
  `order_nama` varchar(50) NOT NULL,
  `order_tanggal` date DEFAULT NULL,
  `order_catatan` text,
  `order_qty` int(5) NOT NULL,
  `order_waktu` int(10) NOT NULL DEFAULT '0',
  `order_diskon` int(10) NOT NULL DEFAULT '0',
  `order_total` int(10) NOT NULL DEFAULT '0',
  `order_bayar` int(10) NOT NULL DEFAULT '0',
  `order_kembali` int(10) DEFAULT '0',
  `order_tgl_bayar` date DEFAULT NULL,
  `order_status` int(1) NOT NULL DEFAULT '1' COMMENT '1=Blm Bayar,2=Bayar',
  `user_username` varchar(30) DEFAULT NULL COMMENT 'User Bayar',
  `order_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_order`
--

INSERT INTO `resto_order` (`order_id`, `meja_id`, `order_nama`, `order_tanggal`, `order_catatan`, `order_qty`, `order_waktu`, `order_diskon`, `order_total`, `order_bayar`, `order_kembali`, `order_tgl_bayar`, `order_status`, `user_username`, `order_update`) VALUES
(2, 2, 'JAMA', '2019-03-20', '', 10, 19, 0, 82000, 0, 0, NULL, 2, NULL, '2019-07-09 20:26:57'),
(3, 3, 'JUJAN RACHMAT', '2019-03-20', 'Cukup Manis', 8, 18, 0, 157000, 160000, 3000, '2019-03-23', 2, 'kasir', '2019-03-23 14:41:02'),
(4, 2, 'HERA OKTAPIA', '2019-03-22', '', 5, 18, 5000, 65000, 60000, 0, '2019-03-23', 2, 'admin', '2019-03-23 14:39:16'),
(5, 3, 'PEBRIYANTI', '2019-03-23', '', 6, 33, 0, 95000, 100000, 5000, '2019-03-23', 2, 'admin', '2019-03-23 14:18:45'),
(6, 1, 'YOSEP ALFATAH', '2019-04-29', 'Saya pesan', 2, 18, 0, 40000, 0, 0, NULL, 2, NULL, '2019-04-29 23:00:29'),
(7, 4, 'AGUS', '2019-04-29', 'beli murah', 3, 16, 0, 30000, 0, 0, NULL, 2, NULL, '2019-04-29 23:00:19'),
(8, 6, 'DAHRI', '2019-07-10', 'Gpl ya?', 1, 3, 0, 10000, 0, 0, NULL, 1, NULL, '2019-07-10 11:13:42'),
(9, 1, 'SAYA', '2020-11-19', '', 1, 2, 0, 5000, 0, 0, NULL, 2, NULL, '2024-07-25 22:58:26'),
(10, 4, 'TOMY', '2024-07-09', 'jangan lama ajg', 2, 14, 0, 25000, 0, 0, NULL, 2, NULL, '2024-07-09 20:53:15'),
(11, 1, 'GYU', '2024-07-09', '', 1, 6, 0, 15000, 0, 0, NULL, 2, NULL, '2024-07-25 22:54:07'),
(12, 3, 'BUWEK', '2024-07-25', 'jangan pake cabe', 6, 8, 0, 65000, 0, 0, NULL, 2, NULL, '2024-07-25 22:57:55'),
(13, 1, 'DEDE', '2024-07-31', '', 1, 3, 0, 10000, 0, 0, NULL, 1, NULL, '2024-07-31 21:20:52'),
(14, 1, 'FIRA', '2024-08-01', '', 2, 10, 0, 60000, 0, 0, NULL, 2, NULL, '2024-08-01 14:43:49'),
(15, 1, '-', '2024-08-01', '', 1, 3, 0, 10000, 0, 0, NULL, 2, NULL, '2024-08-01 14:43:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_order_detail`
--

CREATE TABLE `resto_order_detail` (
  `order_detail_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `menu_id` int(10) NOT NULL,
  `order_detail_harga` int(10) NOT NULL DEFAULT '0',
  `order_detail_waktu` int(5) NOT NULL DEFAULT '0',
  `order_detail_qty` int(5) NOT NULL DEFAULT '0',
  `order_detail_subtotal` int(10) NOT NULL DEFAULT '0',
  `order_detail_status` int(1) NOT NULL DEFAULT '1' COMMENT '1=Baru, 2=Selesai',
  `order_detail_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_order_detail`
--

INSERT INTO `resto_order_detail` (`order_detail_id`, `order_id`, `menu_id`, `order_detail_harga`, `order_detail_waktu`, `order_detail_qty`, `order_detail_subtotal`, `order_detail_status`, `order_detail_update`) VALUES
(4, 2, 6, 17000, 10, 1, 17000, 1, '2019-03-21 21:45:06'),
(5, 2, 8, 13000, 5, 2, 26000, 1, '2019-03-20 09:22:01'),
(6, 2, 10, 7000, 2, 2, 14000, 1, '2019-03-20 09:22:01'),
(7, 2, 11, 5000, 2, 5, 25000, 1, '2019-03-20 09:22:01'),
(8, 3, 1, 15000, 6, 4, 60000, 1, '2019-03-21 21:44:46'),
(10, 3, 3, 30000, 10, 3, 90000, 1, '2019-03-20 10:12:13'),
(11, 3, 9, 7000, 2, 1, 7000, 1, '2019-03-21 21:39:58'),
(12, 4, 2, 10000, 8, 2, 20000, 1, '2019-03-22 20:47:51'),
(13, 4, 5, 15000, 10, 3, 45000, 1, '2019-03-22 20:47:51'),
(14, 5, 12, 10000, 3, 1, 10000, 2, '2019-03-23 14:42:56'),
(15, 5, 9, 7000, 2, 1, 7000, 2, '2019-03-23 14:03:20'),
(16, 5, 13, 10000, 4, 1, 10000, 2, '2019-03-23 14:03:01'),
(17, 5, 8, 13000, 5, 1, 13000, 2, '2019-03-23 14:42:56'),
(19, 5, 14, 5000, 4, 1, 5000, 2, '2019-03-23 14:42:56'),
(20, 6, 2, 10000, 8, 1, 10000, 1, '2019-04-29 20:35:01'),
(21, 6, 3, 30000, 10, 1, 30000, 1, '2019-04-29 20:35:01'),
(22, 7, 11, 5000, 2, 1, 5000, 1, '2019-04-29 22:53:19'),
(23, 7, 13, 10000, 4, 1, 10000, 1, '2019-04-29 22:53:20'),
(24, 7, 5, 15000, 10, 1, 15000, 1, '2019-04-29 22:53:20'),
(25, 8, 12, 10000, 3, 1, 10000, 1, '2019-07-10 11:13:42'),
(26, 9, 11, 5000, 2, 1, 5000, 1, '2020-11-19 10:39:19'),
(27, 10, 13, 10000, 4, 1, 10000, 1, '2024-07-09 20:52:43'),
(28, 10, 5, 15000, 10, 1, 15000, 1, '2024-07-09 20:52:43'),
(29, 11, 1, 15000, 6, 1, 15000, 1, '2024-07-09 21:07:02'),
(30, 12, 15, 15000, 5, 1, 15000, 2, '2024-07-25 22:58:15'),
(31, 12, 12, 10000, 3, 5, 50000, 2, '2024-07-25 22:58:15'),
(32, 13, 12, 10000, 3, 1, 10000, 1, '2024-07-31 21:20:52'),
(33, 14, 3, 30000, 10, 2, 60000, 1, '2024-08-01 14:41:40'),
(34, 15, 12, 10000, 3, 1, 10000, 1, '2024-08-01 14:43:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_slider`
--

CREATE TABLE `resto_slider` (
  `slider_id` int(2) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_slider`
--

INSERT INTO `resto_slider` (`slider_id`, `slider_image`, `slider_update`) VALUES
(2, 'Slider_1552233651.jpg', '2019-03-10 23:00:51'),
(3, 'Slider_1722434451.jpg', '2024-07-31 21:00:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_social`
--

CREATE TABLE `resto_social` (
  `social_id` int(2) NOT NULL,
  `social_name` varchar(50) NOT NULL,
  `social_class` varchar(50) NOT NULL,
  `social_url` varchar(100) NOT NULL,
  `social_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_social`
--

INSERT INTO `resto_social` (`social_id`, `social_name`, `social_class`, `social_url`, `social_update`) VALUES
(3, 'Instagram', 'instagram', 'https://www.instagram.com/ruangkopiteka/', '2024-07-28 00:24:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_users`
--

CREATE TABLE `resto_users` (
  `user_username` varchar(30) NOT NULL,
  `user_password` text NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_avatar` varchar(100) DEFAULT NULL,
  `user_status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif',
  `user_level` enum('Admin','Dapur','Kasir','-') NOT NULL DEFAULT '-',
  `user_date_create` datetime NOT NULL,
  `user_date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_users`
--

INSERT INTO `resto_users` (`user_username`, `user_password`, `user_name`, `user_email`, `user_avatar`, `user_status`, `user_level`, `user_date_create`, `user_date_update`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'ADMINISTRATOR', 'test@gmail.com', 'Avatar_admin_1542355052.jpg', 'Aktif', 'Admin', '0000-00-00 00:00:00', '2024-07-31 02:25:49'),
('dapur', '7c11a6cf40cff2ad6cf71aa10dfc092167320a90', 'DAPUR', 'dapur@gmail.com', NULL, 'Aktif', 'Dapur', '2019-03-09 21:52:27', '2019-07-09 19:24:44'),
('kasir', '8691e4fc53b99da544ce86e22acba62d13352eff', 'KASIR', 'kasir@gmail.com', NULL, 'Aktif', 'Kasir', '2019-03-09 21:52:14', '2019-07-09 19:25:01');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_akses`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_akses` (
`akses_id` int(2)
,`user_username` varchar(30)
,`kategori_id` int(2)
,`akses_update` datetime
,`kategori_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_menu`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_menu` (
`menu_id` int(10)
,`kategori_id` int(2)
,`menu_kode` varchar(5)
,`menu_nama` varchar(50)
,`menu_seo` text
,`menu_deskripsi` text
,`menu_harga` int(10)
,`menu_waktu` int(2)
,`menu_foto` varchar(100)
,`menu_jual` int(10)
,`menu_update` datetime
,`kategori_nama` varchar(50)
,`kategori_seo` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_order`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_order` (
`order_id` int(10)
,`meja_id` int(2)
,`order_nama` varchar(50)
,`order_tanggal` date
,`order_catatan` text
,`order_qty` int(5)
,`order_waktu` int(10)
,`order_diskon` int(10)
,`order_total` int(10)
,`order_bayar` int(10)
,`order_kembali` int(10)
,`order_tgl_bayar` date
,`order_status` int(1)
,`user_username` varchar(30)
,`order_update` datetime
,`meja_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_order_detail`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_order_detail` (
`order_detail_id` int(10)
,`order_id` int(10)
,`menu_id` int(10)
,`order_detail_harga` int(10)
,`order_detail_waktu` int(5)
,`order_detail_qty` int(5)
,`order_detail_subtotal` int(10)
,`order_detail_status` int(1)
,`order_detail_update` datetime
,`menu_kode` varchar(5)
,`menu_nama` varchar(50)
,`menu_seo` text
,`kategori_id` int(2)
,`order_status` int(1)
,`order_tanggal` date
,`meja_id` int(2)
,`meja_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_akses`
--
DROP TABLE IF EXISTS `v_akses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_akses`  AS  (select `a`.`akses_id` AS `akses_id`,`a`.`user_username` AS `user_username`,`a`.`kategori_id` AS `kategori_id`,`a`.`akses_update` AS `akses_update`,`k`.`kategori_nama` AS `kategori_nama` from (`resto_akses` `a` join `resto_kategori` `k` on((`a`.`kategori_id` = `k`.`kategori_id`)))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_menu`
--
DROP TABLE IF EXISTS `v_menu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_menu`  AS  (select `m`.`menu_id` AS `menu_id`,`m`.`kategori_id` AS `kategori_id`,`m`.`menu_kode` AS `menu_kode`,`m`.`menu_nama` AS `menu_nama`,`m`.`menu_seo` AS `menu_seo`,`m`.`menu_deskripsi` AS `menu_deskripsi`,`m`.`menu_harga` AS `menu_harga`,`m`.`menu_waktu` AS `menu_waktu`,`m`.`menu_foto` AS `menu_foto`,`m`.`menu_jual` AS `menu_jual`,`m`.`menu_update` AS `menu_update`,`k`.`kategori_nama` AS `kategori_nama`,`k`.`kategori_seo` AS `kategori_seo` from (`resto_menu` `m` join `resto_kategori` `k` on((`m`.`kategori_id` = `k`.`kategori_id`)))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_order`
--
DROP TABLE IF EXISTS `v_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order`  AS  (select `o`.`order_id` AS `order_id`,`o`.`meja_id` AS `meja_id`,`o`.`order_nama` AS `order_nama`,`o`.`order_tanggal` AS `order_tanggal`,`o`.`order_catatan` AS `order_catatan`,`o`.`order_qty` AS `order_qty`,`o`.`order_waktu` AS `order_waktu`,`o`.`order_diskon` AS `order_diskon`,`o`.`order_total` AS `order_total`,`o`.`order_bayar` AS `order_bayar`,`o`.`order_kembali` AS `order_kembali`,`o`.`order_tgl_bayar` AS `order_tgl_bayar`,`o`.`order_status` AS `order_status`,`o`.`user_username` AS `user_username`,`o`.`order_update` AS `order_update`,`m`.`meja_nama` AS `meja_nama` from (`resto_order` `o` join `resto_meja` `m` on((`o`.`meja_id` = `m`.`meja_id`)))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_order_detail`
--
DROP TABLE IF EXISTS `v_order_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order_detail`  AS  (select `d`.`order_detail_id` AS `order_detail_id`,`d`.`order_id` AS `order_id`,`d`.`menu_id` AS `menu_id`,`d`.`order_detail_harga` AS `order_detail_harga`,`d`.`order_detail_waktu` AS `order_detail_waktu`,`d`.`order_detail_qty` AS `order_detail_qty`,`d`.`order_detail_subtotal` AS `order_detail_subtotal`,`d`.`order_detail_status` AS `order_detail_status`,`d`.`order_detail_update` AS `order_detail_update`,`m`.`menu_kode` AS `menu_kode`,`m`.`menu_nama` AS `menu_nama`,`m`.`menu_seo` AS `menu_seo`,`m`.`kategori_id` AS `kategori_id`,`o`.`order_status` AS `order_status`,`o`.`order_tanggal` AS `order_tanggal`,`o`.`meja_id` AS `meja_id`,`j`.`meja_nama` AS `meja_nama` from (((`resto_order_detail` `d` join `resto_order` `o` on((`d`.`order_id` = `o`.`order_id`))) join `resto_menu` `m` on((`d`.`menu_id` = `m`.`menu_id`))) join `resto_meja` `j` on((`o`.`meja_id` = `j`.`meja_id`)))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `resto_akses`
--
ALTER TABLE `resto_akses`
  ADD PRIMARY KEY (`akses_id`),
  ADD KEY `user_username` (`user_username`);

--
-- Indeks untuk tabel `resto_contact`
--
ALTER TABLE `resto_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indeks untuk tabel `resto_kategori`
--
ALTER TABLE `resto_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `resto_meja`
--
ALTER TABLE `resto_meja`
  ADD PRIMARY KEY (`meja_id`);

--
-- Indeks untuk tabel `resto_menu`
--
ALTER TABLE `resto_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `resto_meta`
--
ALTER TABLE `resto_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indeks untuk tabel `resto_order`
--
ALTER TABLE `resto_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `resto_order_ibfk_1` (`meja_id`);

--
-- Indeks untuk tabel `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `resto_order_detail_ibfk_1` (`order_id`),
  ADD KEY `resto_order_detail_ibfk_2` (`menu_id`);

--
-- Indeks untuk tabel `resto_slider`
--
ALTER TABLE `resto_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indeks untuk tabel `resto_social`
--
ALTER TABLE `resto_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indeks untuk tabel `resto_users`
--
ALTER TABLE `resto_users`
  ADD PRIMARY KEY (`user_username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `resto_akses`
--
ALTER TABLE `resto_akses`
  MODIFY `akses_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `resto_contact`
--
ALTER TABLE `resto_contact`
  MODIFY `contact_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `resto_kategori`
--
ALTER TABLE `resto_kategori`
  MODIFY `kategori_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `resto_meja`
--
ALTER TABLE `resto_meja`
  MODIFY `meja_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `resto_menu`
--
ALTER TABLE `resto_menu`
  MODIFY `menu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `resto_meta`
--
ALTER TABLE `resto_meta`
  MODIFY `meta_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `resto_order`
--
ALTER TABLE `resto_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  MODIFY `order_detail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `resto_slider`
--
ALTER TABLE `resto_slider`
  MODIFY `slider_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `resto_social`
--
ALTER TABLE `resto_social`
  MODIFY `social_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `resto_akses`
--
ALTER TABLE `resto_akses`
  ADD CONSTRAINT `resto_akses_ibfk_1` FOREIGN KEY (`user_username`) REFERENCES `resto_users` (`user_username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `resto_menu`
--
ALTER TABLE `resto_menu`
  ADD CONSTRAINT `resto_menu_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `resto_kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `resto_order`
--
ALTER TABLE `resto_order`
  ADD CONSTRAINT `resto_order_ibfk_1` FOREIGN KEY (`meja_id`) REFERENCES `resto_meja` (`meja_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  ADD CONSTRAINT `resto_order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `resto_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resto_order_detail_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `resto_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
