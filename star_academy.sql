-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Nov 2023 pada 09.18
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `star_academy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `#` int(11) NOT NULL,
  `id_user` varchar(9) NOT NULL,
  `username` varchar(256) NOT NULL,
  `id_kelas` varchar(7) NOT NULL,
  `nama_kelas` varchar(256) NOT NULL,
  `mata_pelajaran` varchar(256) NOT NULL,
  `tgl_gabung` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`#`, `id_user`, `username`, `id_kelas`, `nama_kelas`, `mata_pelajaran`, `tgl_gabung`) VALUES
(58, 'bd7262587', 'bintang', '80bb290', 'tester', '12345', '0000-00-00 00:00:00'),
(59, 'ca2f8202c', 'rama', '80bb290', 'tester', '12345', '0000-00-00 00:00:00'),
(61, 'ca2f8202c', 'rama', '8f27afd', 'XI DKV A', 'Agama', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` varchar(7) NOT NULL,
  `id_user` varchar(9) NOT NULL,
  `nama_kelas` varchar(256) NOT NULL,
  `mata_pelajaran` varchar(256) NOT NULL,
  `tgl_buat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `id_user`, `nama_kelas`, `mata_pelajaran`, `tgl_buat`) VALUES
('80bb290', '8b6cb2a4d', 'tester', '12345', '0000-00-00 00:00:00'),
('8f27afd', '053e400ab', 'XI DKV A', 'Agama', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komen`
--

CREATE TABLE `tb_komen` (
  `id_komen` int(11) NOT NULL,
  `id_kelas` varchar(7) NOT NULL,
  `id_user` varchar(9) NOT NULL,
  `username` varchar(256) NOT NULL,
  `komen` text NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_komen`
--

INSERT INTO `tb_komen` (`id_komen`, `id_kelas`, `id_user`, `username`, `komen`, `tanggal`) VALUES
(32, '80bb290', '8b6cb2a4d', 'guruu', '1', '2023-11-23 10:17:13'),
(33, '80bb290', '8b6cb2a4d', 'guruu', '2', '2023-11-23 10:17:16'),
(34, '80bb290', '8b6cb2a4d', 'guruu', '3', '2023-11-23 10:17:19'),
(35, '80bb290', '8b6cb2a4d', 'guruu', '4', '2023-11-23 10:17:21'),
(36, '80bb290', '8b6cb2a4d', 'guruu', '5', '2023-11-23 10:17:23'),
(37, '80bb290', '8b6cb2a4d', 'guruu', '6', '2023-11-23 10:17:26'),
(38, '80bb290', 'ca2f8202c', 'rama', 'fghbvc', '2023-11-24 07:22:45'),
(39, '80bb290', 'ca2f8202c', 'rama', 'dfgh', '2023-11-24 07:22:50'),
(40, '8f27afd', 'ca2f8202c', 'rama', 'assalamu&#039;alaikum pak cholis', '2023-11-24 09:10:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tugas`
--

CREATE TABLE `tb_tugas` (
  `id_tugas` varchar(10) NOT NULL,
  `id_kelas` varchar(7) NOT NULL,
  `judul_tugas` varchar(256) NOT NULL,
  `petunjuk` text NOT NULL,
  `lampiran` varchar(256) NOT NULL,
  `poin` int(3) NOT NULL,
  `tenggat` datetime NOT NULL,
  `tgl_buat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_tugas`
--

INSERT INTO `tb_tugas` (`id_tugas`, `id_kelas`, `judul_tugas`, `petunjuk`, `lampiran`, `poin`, `tenggat`, `tgl_buat`) VALUES
('f825a47234', '80bb290', '4', '3', '61e23b25cdab52bec9578710091db5036.jpg,69b9c9bd31d138985c49dc88be100d382.jpg,SKPL.docx', 3, '2023-11-23 23:48:00', '2023-11-23 23:48:26'),
('f93d1941ca', 'c8c26a5', '1', '1', '3ab412b878104f7b49dbf2d6807b9fb51.jpg,SKPL-01.pdf', 1, '2023-11-24 01:02:00', '2023-11-24 01:02:57'),
('f976e2d99a', '80bb290', '0', '0', 'PTS.pptx', 0, '2023-11-24 01:18:00', '2023-11-24 01:18:22'),
('f978971727', '80bb290', '1', '1', '4c579fdbfb1916207a69caf567c71b241.jpg', 1, '2023-11-24 01:18:00', '2023-11-24 01:18:49'),
('fdb730bab8', '80bb290', '2', '2', '61b261926515b24e21a07372ed91c5472.jpg', 2, '2023-11-24 06:08:00', '2023-11-24 06:08:35'),
('ff31b28e1d', '80bb290', '3', '3', 'lucu.jpeg', 3, '2023-11-24 07:49:00', '2023-11-24 07:49:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(9) NOT NULL,
  `username` varchar(256) NOT NULL,
  `passwd` varchar(256) NOT NULL,
  `status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `passwd`, `status`) VALUES
('053e400ab', 'akmal', '$2y$10$bnN5tk3xeiVV6HtzbxBs2er3TytZF1xbaQo3auk6lUydCtjFb5Ixy', 'Guru'),
('792f20ee6', 'admin', '$2y$10$M5hw3WugIfSbJ1ROwX1K2OpyU1GmvAZbEpxlwsjeFw90IQTCNXm8C', 'Admin'),
('8b4f09d95', 'siswa', '$2y$10$Bsd4wwQl9oewKued59Kjpe7ms6ssIWDF5Fiq8qvzutrPdNEM4ksMi', 'Siswa'),
('8b5cb567e', 'siswa1', '$2y$10$z5GAmOuc7P3id6.Dir66ZupIrUzsJev32RL5wx8P6Qmv8CEfRnize', 'Siswa'),
('8b6cb2a4d', 'guruu', '$2y$10$DYo3dv08R2qMtw6UjGABzukfDV/sXxJEtcTLGp8STSfPFYh42eNKW', 'Guru'),
('bd7262587', 'bintang', '$2y$10$MmCGVrod1ZduAbl8U7C7E.X9dhLEBRbX8lpmPvphBvV4MDhkQGCie', 'Siswa'),
('bd7cb0125', 'samudra', '$2y$10$FJBB0Yd2PK2riJkOGAj.yeGMYE4nlfys2U4MTYSKGOYA1tr/72FvG', 'Siswa'),
('ca2f8202c', 'rama', '$2y$10$Xd0BXyiByBcEA4tUUHpWm.xkcsAs.uCeulVEeypTYf/2BuWWKNh3.', 'Siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_vidbel`
--

CREATE TABLE `tb_vidbel` (
  `id_vidbel` varchar(10) NOT NULL,
  `id_kelas` varchar(7) NOT NULL,
  `judul_vidbel` varchar(256) NOT NULL,
  `lampiran` varchar(256) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_vidbel`
--

INSERT INTO `tb_vidbel` (`id_vidbel`, `id_kelas`, `judul_vidbel`, `lampiran`, `tanggal`) VALUES
('8bdff55d94', '80bb290', '098765432', '', '2023-11-18 20:37:03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`#`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_komen`
--
ALTER TABLE `tb_komen`
  ADD PRIMARY KEY (`id_komen`);

--
-- Indeks untuk tabel `tb_tugas`
--
ALTER TABLE `tb_tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tb_vidbel`
--
ALTER TABLE `tb_vidbel`
  ADD PRIMARY KEY (`id_vidbel`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `tb_komen`
--
ALTER TABLE `tb_komen`
  MODIFY `id_komen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
