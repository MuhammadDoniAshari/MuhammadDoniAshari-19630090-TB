-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2022 pada 13.33
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_komputer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penyewa`
--

CREATE TABLE `data_penyewa` (
  `NAMA_PENYEWA` varchar(50) NOT NULL,
  `TANGGAL_SEWA` int(50) NOT NULL,
  `ALAMAT_PENYEWA` varchar(50) NOT NULL,
  `LAMA_SEWA` int(20) NOT NULL,
  `HARGA` int(50) NOT NULL,
  `TOTAL` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_penyewa`
--

INSERT INTO `data_penyewa` (`NAMA_PENYEWA`, `TANGGAL_SEWA`, `ALAMAT_PENYEWA`, `LAMA_SEWA`, `HARGA`, `TOTAL`) VALUES
('M.Doni Ashari', 1012022, 'BANJARBARU', 15, 300000, 4500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_produk`
--

CREATE TABLE `data_produk` (
  `id` int(100) NOT NULL,
  `KATEGORI` varchar(100) NOT NULL,
  `HARGA_SEWA` int(50) NOT NULL,
  `STOK` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_produk`
--

INSERT INTO `data_produk` (`id`, `KATEGORI`, `HARGA_SEWA`, `STOK`) VALUES
(12, 'MSI NIGHTBLADE MI3-059ID', 300000, 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_penyewa`
--
ALTER TABLE `data_penyewa`
  ADD PRIMARY KEY (`NAMA_PENYEWA`) USING BTREE;

--
-- Indeks untuk tabel `data_produk`
--
ALTER TABLE `data_produk`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
