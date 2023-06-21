-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2023 pada 17.36
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
  `title` varchar(10000) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`uuid`, `gambar`, `judul`, `title`, `userId`, `createdAt`, `updatedAt`) VALUES
('34d4dffd-96c6-459d-aa0f-27d46791615b', 'menkes-budi-gunadi-sadikin_169.jpeg', 'Menkes Beberkan \'Biang Kerok\' Obat di RI Mahal Bukan gegara Pajak', 'Menteri Kesehatan Budi Gunadi Sadikin menekankan persoalan obat di Indonesia relatif mahal bukan karena pajak. Menurutnya, itu terlihat dari perbedaan harga yang bisa mencapai tiga hingga empat kali lipat, dibandingkan negara tetangga.\nLantaran mahal, Menkes menyebut tidak sedikit di antara mereka yang akhirnya memilih jasa titip obat, termasuk paling banyak adalah obat kanker. Yayasan Kanker Anak Indonesia menurut Menkes bahkan sempat mengeluhkan beberapa obat yang tidak tersedia di Tanah Air, hingga harganya jauh berbeda dengan Malaysia.\n\n\"Kalau beda pajak, kan bedanya persen dong, 20 persen, 30 persen, kalau di sana seribu di sini 4 ribu? Itu kali kan, bukan persen. Empat kali, tiga kali, itu nggak mungkin persoalan pajak, aku kan perbankan, ngerti, kalau pajak tuh bedanya 30 persen 40 persen, kalau bedanya 400 persen, 500 persen, itu pasti bukan pajak,\" tegas Menkes dalam Public Hearing RUU Kesehatan Rabu.\nBudi meyakini persoalan harga obat mahal di Indonesia adalah imbas biaya penjualan dan pemasaran. Hal itu juga disebutnya berkaitan dengan biaya pendidikan dokter saat memperoleh Surat Tanda Registrasi (STR) hingga Surat Izin Praktik (SIP).\n\nMenkes mengutip laporan Wakil Menteri Kesehatan Dante Saksono Harbuwono soal besaran biaya penerbitan STR/SIP berkisar Rp 6 juta per orang. Sementara, setiap tahun rata-rata ada 77 ribu sertifikat penerbitan STR untuk dokter spesialis.\n', '6908b944-28e8-4780-8c5f-cb2fffaa5538', '2023-06-21 15:13:05', '2023-06-21 15:13:05'),
('6af6a563-efba-4902-83e8-ad54a8db361b', 'gambar1.jpg', 'Skandal Penyalahgunaan Obat Epilepsi untuk Turunkan Berat Badan Secara Instan di Korea Selatan', 'Sebuah program televisi yang ditayangkan di KBS, Straightforward Current Affairs, menyoroti penyalahgunaan obat di Korea Selatan. Obat yang semestinya untuk pasien epilepsi malah dimanfaatkan untuk menurunkan berat badan secara instan.\nIsu itu dilatarbelakangi kasus seorang perempuan berusia 20an yang menabrak enam mobil di Seoul saat dirinya sedang berhalusinasi. Belakangan diketahui bahwa dia mengonsumsi psikotropika selama setahun untuk menekan Sebuah program televisi yang ditayangkan di KBS, Straightforward Current Affairs, menyoroti penyalahgunaan obat di Korea Selatan. Obat yang semestinya untuk pasien epilepsi malah dimanfaatkan untuk menurunkan berat badan secara instan.\n Isu itu dilatarbelakangi kasus seorang perempuan berusia 20an yang menabrak enam mobil di Seoul saat dirinya sedang berhalusinasi. Belakangan diketahui bahwa dia mengonsumsi psikotropika selama setahun untuk menekan nafsu makannya. Kasus tersebut bak kotak pandora, mengejutkan orang-orang betapa mudahnya mereka terpapar dengan obat-obatan berbahaya dan menjadi korban akibat efek samping obat itu.\nkenyataannya banyak rumah sakit di Seoul \'membuka layanan\' untuk meresepkan \'obat-obatan tertentu yang diiklankan sebagai penekan nafsu makan. Menurut data statistik dari Kementerian Keamanan Pangan dan Obat-obatan dan Institut Keamanan dan Manajemen Obat-obatan Korea pada Juli 2022, resep untuk menekan nafsu makan telah melewati 200 juta pil dalam tiga tahun berturut-turut.\n Untuk melawan maraknya peredaran obat-obatan ini, Kementerian Keamanan Pangan dan Obat-obatan menetapkan standar keamanan khusus, yang mencakup tingkat BMI 30 ke atas, resep jangka pendek hingga empat minggu saja, dan larangan untuk remaja. Namun, jika dokter gagal mematuhi standar tersebut, mereka hanya menerima peringatan tertulis tanpa sanksi tambahan.. Kasus tersebut bak kotak pandora, mengejutkan orang-orang betapa mudahnya mereka terpapar dengan obat-obatan berbahaya dan menjadi korban akibat efek samping obat itu. \nkenyataannya banyak rumah sakit di Seoul \'membuka layanan\' untuk meresepkan \'obat-obatan tertentu yang diiklankan sebagai penekan nafsu makan. Menurut data statistik dari Kementerian Keamanan Pangan dan Obat-obatan dan Institut Keamanan dan Manajemen Obat-obatan Korea pada Juli 2022, resep untuk menekan nafsu makan telah melewati 200 juta pil dalam tiga tahun berturut-turut.\nUntuk melawan maraknya peredaran obat-obatan ini, Kementerian Keamanan Pangan dan Obat-obatan menetapkan standar keamanan khusus, yang mencakup tingkat BMI 30 ke atas, resep jangka pendek hingga empat minggu saja, dan larangan untuk remaja. Namun, jika dokter gagal mematuhi standar tersebut, mereka hanya menerima peringatan tertulis tanpa sanksi tambahan.\n\n', '6908b944-28e8-4780-8c5f-cb2fffaa5538', '2023-06-21 14:44:08', '2023-06-21 14:44:08'),
('d0d2f517-66b1-407b-a599-df225aec49d9', 'gambar2.jpeg', 'Menkes Ungkap Pemicu Harga Obat RI 50% Lebih Mahal dari Malaysia', 'Berawal dari laporan banyak anak pejuang kanker kesulitan mendapat obat imbas langka dan mahal hingga memilih \'jastip\' ke luar negeri, Menteri Kesehatan Budi Gunadi Sadikin mencoba menelusuri biang keroknya. Terungkap, bukan pajak yang memicu banyak obat di RI relatif jauh lebih mahal berkali-kali lipat.\nMenkes Budi menjabarkan perbedaan harga salah satu obat misalnya simbriza. Simbriza dijual di apotek Malaysia dengan harga minimum 270 ribu rupiah, sementara industri farmasi di RI menjualnya Rp 344 ribu, setelah di RS harga obat menjadi Rp 392 ribu, dan di apotek relatif jauh lebih tinggi yakni Rp 430 ribu.\n\"Itu kan tinggi bedanya 53 persen,\" kata dia.\nSelanjutnya, rosuvastatin tablet 20 mg.\n\"Harga minimum apotek Malaysia Rp 19.304, industri farmasi kita saja jualnya sudah Rp 29.807, rumah sakit jual Rp 32.817, apotek Rp jual 36 ribu, bedanya 94 persen. Kita ambil data impornya jadi nggak mungkin salah,\" sambung dia.\n\"Nah, pajak itu teman-teman, 13 persenan, you know paling tinggi adalah biaya marketing dan edukasi, itu yang harus diberesin,\" tegasnya.\nBiaya-biaya semacam operasional di dalam negeri menurutnya terlampau tinggi karena marketing dan edukasi yakni sebesar 40 persen.\n', '6908b944-28e8-4780-8c5f-cb2fffaa5538', '2023-06-21 15:09:29', '2023-06-21 15:09:29');

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
(48, '6c477376-cc1e-4cec-8085-8a0226c60252', 'bodrex.jpg', 'Bodrex', 'BODREX merupakan obat dengan kandungan Paracetamol dan Caffeine. Obat ini digunakan untuk meringankan sakit kepala, sakit gigi, dan menurunkan demam.', 'Obat Tablet', 'Caffeine 50 mg dan Paracetamol 600 mg.', 'Obat ini digunakan untuk meringankan sakit kepala, sakit gigi, dan menurunkan demam.', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis.', '6908b944-28e8-4780-8c5f-cb2fffaa5538', '2023-06-21 15:16:58', '2023-06-21 15:16:58'),
(49, '9950478e-f8c3-42db-a765-d20bff6331b9', 'paratusin.png', 'Paratusin', 'Obat batuk tersedia dalam berbagai bentuk, termasuk sirup, tablet hisap, kapsul, atau tablet biasa. Mereka dapat mengandung satu atau lebih bahan aktif, serta bahan tambahan seperti pemanis, perasa, atau zat pengikat.', 'Obat Tablet,  Sirup, Tablet Hisap, Kapsul', 'dextromethorphan, guaifenesin, kodein.', 'Obat batuk bertujuan untuk meredakan batuk. Mereka dapat bekerja dengan berbagai cara, seperti menekan refleks batuk, mengencerkan lendir, atau mengurangi peradangan.', 'Pemakaian obat umumnya memiliki efek samping tertentu dan sesuai dengan masing-masing individu. Jika terjadi efek samping yang berlebih dan berbahaya, harap konsultasikan kepada tenaga medis.', '6908b944-28e8-4780-8c5f-cb2fffaa5538', '2023-06-21 15:28:57', '2023-06-21 15:28:57'),
(50, '7f6743eb-8e33-44f8-b29f-f7a5e7430869', 'Siladex Batuk dan Pilek.jpg', 'Siladex Batuk dan Pilek', 'Siladex Batuk dan Pilek adalah salah satu merek dagang obat yang mengandung bahan aktif dextromethorphan HBr, pseudoephedrine HCl, dan dexchlorpheniramine maleate', 'Sirup', 'Setiap 5 ml (sendok takar) sirup Siladex Batuk dan Pilek mengandung dextromethorphan HBr 10 mg, pseudoephedrine HCl 30 mg, dan dexchlorpheniramine maleate 2 mg sebagai bahan aktif. Selain itu, obat ini juga mengandung bahan tambahan seperti sirup sorbitol', 'Obat Siladex Batuk dan Pilek digunakan untuk meredakan batuk kering yang tidak produktif, mengurangi hidung tersumbat, bersin, dan rinore pada pilek, serta mengurangi gejala-gejala alergi seperti gatal-gatal, bersin, dan mata berair.', 'Efek yang umum terkait dengan penggunaan Siladex Batuk dan Pilek meliputi mengantuk, kantuk, peningkatan tekanan darah, peningkatan denyut jantung, mulut kering, gangguan saluran pencernaan, dan reaksi alergi. Efek samping ini tidak selalu terjadi pada se', '6908b944-28e8-4780-8c5f-cb2fffaa5538', '2023-06-21 15:34:25', '2023-06-21 15:34:25');

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
('g7pe0ziY2sjQ4frQQyehERoH-_Jed_gU', '2023-06-22 15:34:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"6908b944-28e8-4780-8c5f-cb2fffaa5538\"}', '2023-06-21 14:17:53', '2023-06-21 15:34:25'),
('jFloH34TH4o2ek9SnIsWhhDUdni2Dxb5', '2023-06-22 15:14:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"6908b944-28e8-4780-8c5f-cb2fffaa5538\"}', '2023-06-21 14:33:57', '2023-06-21 15:14:22'),
('siU3YLwYi43pKMAK9nAIsZSkt-ZPj26A', '2023-06-22 13:54:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"6908b944-28e8-4780-8c5f-cb2fffaa5538\"}', '2023-06-21 13:54:05', '2023-06-21 13:54:17');

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
(6289519113444, '50e8493e-2b1e-4aca-8d1a-3b8ee9acf4a8', 'apotek', 'apotek143@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$VytMe7y9MQXbMH9dVJoPJA$/rAcMxIPzSy3IZYx9ZGi1TIZ3YxR/mOZRvLcco4at+M', 'apoteker', '2023-06-08 14:49:36', '2023-06-21 15:04:40'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
