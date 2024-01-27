-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jan 2024 pada 12.16
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentalku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `kode_booking` varchar(255) NOT NULL,
  `id_login` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `lama_sewa` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `konfirmasi_pembayaran` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id_booking`, `kode_booking`, `id_login`, `id_mobil`, `ktp`, `nama`, `alamat`, `no_tlp`, `tanggal`, `lama_sewa`, `total_harga`, `konfirmasi_pembayaran`, `tgl_input`) VALUES
(1, '1576329294', 3, 5, '231423123', 'Krisna', 'Bekasi', '08132312321', '2019-12-28', 2, 400000, 'Pembayaran di terima', '2019-12-14'),
(2, '1576671989', 3, 5, '231423', 'Krisna Waskita', 'Bekasi Ujung Harapan', '082391273127', '2019-12-20', 2, 400525, 'Pembayaran di terima', '2019-12-18'),
(3, '1642998828', 3, 5, '1283821832813', 'Krisna', 'Bekasi', '089618173609', '2022-01-26', 4, 800743, 'Pembayaran di terima', '2022-01-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `infoweb`
--

CREATE TABLE `infoweb` (
  `id` int(11) NOT NULL,
  `nama_rental` varchar(255) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_rek` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `infoweb`
--

INSERT INTO `infoweb` (`id`, `nama_rental`, `telp`, `alamat`, `email`, `no_rek`, `updated_at`) VALUES
(1, 'Rental Mobil Komplit', '089698038686', 'Perumahan BCM 2', 'samsulhamambakri30@gmail.com', 'BRI A/N SAMSUL 123123213123', '2022-01-24 04:57:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'Samsul', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(3, 'samsul', 'demo', '21232f297a57a5a743894a0e4a801fc3', 'pengguna');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `no_plat` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga` int(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `no_plat`, `merk`, `harga`, `deskripsi`, `status`, `gambar`) VALUES
(7, '67455', 'hon', 3000000, 'halus', 'Tersedia', '1706353961.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_booking` int(255) NOT NULL,
  `no_rekening` int(255) NOT NULL,
  `nama_rekening` varchar(255) NOT NULL,
  `nominal` int(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_booking`, `no_rekening`, `nama_rekening`, `nominal`, `tanggal`) VALUES
(3, 1, 2131241, 'Krisna Aldi Waskito', 400000, '2019-12-14'),
(4, 2, 2131241, 'Krisna Aldi Waskito', 400525, '2019-12-18'),
(5, 3, 13213, 'Fauzan Falah', 800743, '2022-01-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `kode_booking` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `denda` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
