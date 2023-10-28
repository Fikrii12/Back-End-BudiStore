-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Okt 2023 pada 17.37
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_pwl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `gambar`, `harga`) VALUES
('2e1f910f-a460-4e3b-9eb7-be1385594308', 'Topi Lapangan Drill', 'https://th.bing.com/th/id/R.d5b4d9312852fc5efbf5514b740682a5?rik=rglKPhetnY6GBQ&riu=http%3a%2f%2fkonveksitopi.com%2fwp-content%2fuploads%2f2016%2f05%2fTopi-Lapangan-Drill.jpg&ehk=UJROO%2f%2b4tEEiaGq1ej8mgE%2fSZwSun1jn2RzgHm2gTkM%3d&risl=&pid=ImgRaw&r=0', 100000),
('67a276d3-59ce-433c-acf1-83007ec81706', 'Harga Baju Uniforms', 'https://d2cmuesa4snpwn.cloudfront.net/public/735491051', 40000),
('7c414638-acf0-4369-905e-ccd0aab41603', 'Topi Rimba', 'https://th.bing.com/th/id/R.9fbee266a5e199585b586d97882cf635?rik=nQ5SZeWLFDFgZQ&riu=http%3a%2f%2f3.bp.blogspot.com%2f-vab6VS_VEp4%2fUBzIw0HVENI%2fAAAAAAAAALA%2fOPTt8tiwTmE%2fs1600%2frimba1.png&ehk=3alJHzjWwUbl0BImX8Gz%2fK7ovkLa2M3nZOYp2XQGhIc%3d&risl=&pid', 50000),
('8c77c157-c85d-434f-9b59-c32c6c3bae78', 'nsa', 'https://i.pinimg.com/originals/6b/32/9b/6b329b600acefe93915daf84f9253a65.jpg', 323556777),
('9eb3984b-9283-496e-941a-0f1e18c50030', 'Topi Bucket ', 'https://cozmeed.com/wp-content/uploads/2019/09/AC_TP_CMZD_BUCKET_2.jpg', 100000),
('d05d9610-ff5b-47c7-aa5f-58fcfb66d5ee', 'Baju Batik Cowok', 'https://i3.wp.com/fasnina.com/wp-content/uploads/2018/10/model-baju-batik-pria-rancangan-ivan-gunawan.jpg', 200000),
('e3fa0f39-a925-486f-9d81-f3269bef21b7', 'Baju Korporat ', 'https://i.pinimg.com/originals/a9/f5/0b/a9f50b123388ada3b9f8b5c531f254d8.jpg', 20000),
('fe14eb7b-dc8a-44a0-8ccc-0fd08161d82c', 'Topi Pria Distro', 'https://cf.shopee.co.id/file/39e85cd4d63565ff1fd2774ba3523e66', 50000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
