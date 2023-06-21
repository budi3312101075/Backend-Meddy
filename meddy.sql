-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2023 pada 16.01
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meddy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `uuid` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`uuid`, `gambar`, `judul`, `title`, `userId`, `createdAt`, `updatedAt`) VALUES
('4895d38e-5cb0-4417-954e-369003055577', '1683543036820.png', 'berita obat terlarang admin dengs fggr', 'obat terlarang ini sangat berbahaya karena dapat mengancam keselamatan yang menggunakannnya', '6908b944-28e8-4780-8c5f-cb2fffaa5538', '2023-06-11 07:17:17', '2023-06-11 07:17:17'),
('c2b007a5-bc22-4a9f-8af5-d967ee2cb989', '1683543036820.png', 'berita obat terlarang admin fggr', 'obat terlarang ini sangat berbahaya karena dapat mengancam keselamatan yang menggunakannnya', '7e8e9c07-7856-4e27-b560-514f164b70d7', '2023-06-11 07:15:58', '2023-06-11 07:15:58'),
('c3fe6f13-b1e5-43b2-aff0-cb29fd507795', '1683543036820.png', 'berita obat terlarang admin fggr', 'obat terlarang ini sangat berbahaya karena dapat mengancam keselamatan yang menggunakannnya', '7e8e9c07-7856-4e27-b560-514f164b70d7', '2023-06-11 07:16:06', '2023-06-11 07:16:06'),
('c4afc8ec-f5f9-4a0e-aaa6-23ed56a23267', '1683543036820.png', 'berita obat terlarang admin dengs fggr', 'obat terlarang ini sangat berbahaya karena dapat mengancam keselamatan yang menggunakannnya', '6908b944-28e8-4780-8c5f-cb2fffaa5538', '2023-06-11 07:17:12', '2023-06-11 07:17:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `komposisi` varchar(255) DEFAULT NULL,
  `kegunaan` varchar(255) DEFAULT NULL,
  `efek` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id`, `uuid`, `gambar`, `name`, `deskripsi`, `jenis`, `komposisi`, `kegunaan`, `efek`, `userId`, `createdAt`, `updatedAt`) VALUES
(47, 'c5194c95-451d-4ee7-ad6c-b281331d6421', 'IL.jpg', 'obat apoteker', 'iniii deskripsii', 'obat pil', 'bodrex tua', 'meredakan sakit kepala', 'ngantuk', '6908b944-28e8-4780-8c5f-cb2fffaa5538', '2023-06-21 13:54:17', '2023-06-21 13:54:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('0LZbTtjsWlWL2p8F4xqLtbq69KwT-5d5', '2023-06-16 01:30:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 01:30:06', '2023-06-15 01:30:24'),
('IyuJtitKMqT13kDMNtNm2ZHIGiCMMPLq', '2023-06-15 06:52:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"6908b944-28e8-4780-8c5f-cb2fffaa5538\"}', '2023-06-14 06:11:34', '2023-06-14 06:52:48'),
('siU3YLwYi43pKMAK9nAIsZSkt-ZPj26A', '2023-06-22 13:54:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"6908b944-28e8-4780-8c5f-cb2fffaa5538\"}', '2023-06-21 13:54:05', '2023-06-21 13:54:17'),
('x44XycXVLAQgBEREFskNsMKa_sszw4SZ', '2023-06-20 14:46:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-17 05:17:39', '2023-06-19 14:46:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(15) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(33121010775, '50e8493e-2b1e-4aca-8d1a-3b8ee9acf4a8', 'apotek143', 'apotek143@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$IPtPz7sNR0N5m+M4Bduahw$vNzI2c7l/1kf/eoKUWEUxXfGbZrAag1fLP/Z5Qtn0eQ', 'apoteker', '2023-06-08 14:49:36', '2023-06-08 14:50:57'),
(33121010733, '6908b944-28e8-4780-8c5f-cb2fffaa5538', 'admin', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$uaz/1DHauop3+v5n1sV5Aw$L08ZwOTSraoOEepOiViSgk0dhNL2a5NtEd3uolrUfMw', 'admin', '2023-06-08 14:49:48', '2023-06-08 14:49:48'),
(331210107, '7e8e9c07-7856-4e27-b560-514f164b70d7', 'apoteker', 'apoteker@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$m9ELiKnU/nQR/+qMtS6n9w$ccIqKDQMoBp8Cmgm+qw4FxaBH55sh2YkKMQMm4lIoiU', 'apoteker', '2023-06-11 05:21:59', '2023-06-11 05:21:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`uuid`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uuid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `obat_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
