-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2024 pada 08.36
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rizkiku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `email_admin` varchar(100) NOT NULL,
  `password_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `email_admin`, `password_admin`) VALUES
(1, 'M. Rizki Simanullang', 'rizki@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ajuan`
--

CREATE TABLE `ajuan` (
  `id_ajuan` int(11) NOT NULL,
  `id_umkm` int(11) DEFAULT NULL,
  `id_konsultan` int(11) DEFAULT NULL,
  `tanggal_ajuan` date DEFAULT NULL,
  `status_ajuan` enum('menunggu','diterima','ditolak','dibatalkan') DEFAULT NULL,
  `detail_ajuan` text DEFAULT NULL,
  `tanggal_konsultasi` date DEFAULT NULL,
  `jam_konsultasi` time DEFAULT NULL,
  `topik_konsultasi` varchar(100) DEFAULT NULL,
  `durasi_konsultasi` int(11) DEFAULT NULL,
  `alasan_penolakan` text DEFAULT NULL,
  `tempat_konsultasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ajuan`
--

INSERT INTO `ajuan` (`id_ajuan`, `id_umkm`, `id_konsultan`, `tanggal_ajuan`, `status_ajuan`, `detail_ajuan`, `tanggal_konsultasi`, `jam_konsultasi`, `topik_konsultasi`, `durasi_konsultasi`, `alasan_penolakan`, `tempat_konsultasi`) VALUES
(27, 8, 12, '2023-07-05', 'menunggu', 'Kami adalah sebuah UMKM yang bergerak di bidang produksi dan penjualan produk kecantikan. Selama beberapa tahun terakhir, bisnis kami telah berkembang pesat, namun kami menghadapi tantangan dalam mengelola keuangan bisnis kami dengan efisien. Kami ingin mendapatkan konsultasi dari seorang ahli keuangan untuk membantu kami dalam perencanaan keuangan bisnis yang lebih baik dan strategi investasi yang tepat.\r\nBeberapa permasalahan yang ingin kami bahas adalah:\r\n1. Pengelolaan kas dan arus kas perusahaan.\r\n2. Analisis dan peningkatan profitabilitas bisnis.\r\n3. Penyusunan anggaran dan proyeksi keuangan jangka panjang.\r\n4. Penilaian risiko dan cara mengurangi risiko keuangan.\r\n5. Saran tentang rencana investasi yang menguntungkan untuk pertumbuhan bisnis.\r\n', '2023-07-21', '15:57:00', 'Pengelolaan Keuangan dan Perencanaan Investasi', 120, 'ffff', 'SEASONS Cafe Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(40, 8, 12, '2023-07-07', 'diterima', 'Lorem ipsum dolor sit amet', '2023-07-27', '21:32:00', 'Teknologi', 2, NULL, 'SEASONS Cafe Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(41, 8, 12, '2023-07-09', 'diterima', 'Lorem ipsum dolor sit amet', '2023-07-18', '02:19:00', 'Pengelolaan Keuangan dan Perencanaan Investasi', 2, NULL, 'SEASONS Cafe Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(42, 8, 25, '2023-07-10', 'ditolak', 'Lorem ipsum dolor sit amet', '2023-07-15', '12:04:00', 'Marketing', 3, 'ub', 'Jln Suka Maju'),
(43, 8, 12, '2023-07-10', 'menunggu', 'Lorem ipsum dolor sit amet', '2023-07-20', '00:10:00', 'Hukum Bisnis', 3, NULL, 'Jln Suka Maju'),
(44, 8, 13, '2023-07-10', 'diterima', 'Lorem ipsum dolor sit amet', '2023-07-05', '15:07:00', 'Sumber Daya Manusia', 3, NULL, 'Jln Suka Maju'),
(45, 8, 27, '2023-07-10', 'ditolak', 'Lorem ipsum dolor sit amet', '2023-07-14', '16:08:00', 'Marketing', 2, 'asmnsmnsmnsm', 'Jln Suka Maju'),
(46, 8, 27, '2023-07-10', 'diterima', 'Lorem ipsum dolor sit amet', '2023-07-11', '16:10:00', 'keungan', 2, NULL, 'Jln Suka Maju'),
(47, 8, 12, '2023-07-11', 'diterima', 'Halo ini ajuan 2', '2023-07-12', '13:22:00', 'Keuangan', 2, NULL, 'ini adalah tempat'),
(48, 8, 12, '2023-07-11', 'menunggu', 'Lorem ipsum dolor sit amet', '2023-07-27', '17:37:00', 'Pengelolaan Keuangan dan Perencanaan Investasi', 4, NULL, 'SEASONS Cafe Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(49, 8, 13, '2023-07-11', 'menunggu', 'Saya adalah seorang pengusaha catering kecil yang telah menjalankan bisnis ini selama beberapa tahun. Saat ini, saya ingin mengembangkan bisnis saya lebih lanjut dengan membuka cabang baru. Namun, saya mengalami kendala dalam mengelola keuangan cabang baru tersebut. Saya merasa bingung tentang bagaimana cara yang tepat untuk mengatur keuangan dalam bisnis saya. Oleh karena itu, dengan ini saya ingin mengajukan permohonan konsultasi kepada Anda. Saya berharap Anda dapat membantu saya dalam menyusun rencana keuangan yang baik untuk cabang bisnis baru saya. Saya membutuhkan panduan dan saran dari seorang ahli dalam mengelola keuangan bisnis agar saya dapat menjalankan cabang baru ini dengan sukses.Terima kasih atas perhatian dan bantuannya. Saya anda dapat mempertimbangkan ajuan saya.', '2023-07-18', '13:00:00', 'Perencanaan Keuangan', 2, NULL, 'SEASONS Cafe - Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(50, 8, 12, '2023-07-11', 'diterima', 'Saya adalah seorang pengusaha catering kecil yang telah menjalankan bisnis ini selama beberapa tahun. Saat ini, saya ingin mengembangkan bisnis saya lebih lanjut dengan membuka cabang baru. Namun, saya mengalami kendala dalam mengelola keuangan cabang baru tersebut. Saya merasa bingung tentang bagaimana cara yang tepat untuk mengatur keuangan dalam bisnis saya. Oleh karena itu, dengan ini saya ingin mengajukan permohonan konsultasi kepada Anda. Saya berharap Anda dapat membantu saya dalam menyusun rencana keuangan yang baik untuk cabang bisnis baru saya. Saya membutuhkan panduan dan saran dari seorang ahli dalam mengelola keuangan bisnis agar saya dapat menjalankan cabang baru ini dengan sukses.Terima kasih atas perhatian dan bantuannya. Saya anda dapat mempertimbangkan ajuan saya.', '2023-07-14', '01:00:00', 'Pengelolaan Keuangan dan Perencanaan Investasi', 2, NULL, 'SEASONS Cafe - Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(51, 8, 25, '2023-07-11', 'menunggu', 'Saya adalah seorang pengusaha catering kecil yang telah menjalankan bisnis ini selama beberapa tahun. Saat ini, saya ingin mengembangkan bisnis saya lebih lanjut dengan membuka cabang baru. Namun, saya mengalami kendala dalam mengelola keuangan cabang baru tersebut. Saya merasa bingung tentang bagaimana cara yang tepat untuk mengatur keuangan dalam bisnis saya. Oleh karena itu, dengan ini saya ingin mengajukan permohonan konsultasi kepada Anda. Saya berharap Anda dapat membantu saya dalam menyusun rencana keuangan yang baik untuk cabang bisnis baru saya. Saya membutuhkan panduan dan saran dari seorang ahli dalam mengelola keuangan bisnis agar saya dapat menjalankan cabang baru ini dengan sukses.Terima kasih atas perhatian dan bantuannya. Saya anda dapat mempertimbangkan ajuan saya.', '2023-07-17', '14:01:00', 'Keuangan', 2, NULL, 'SEASONS Cafe - Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(52, 8, 25, '2023-07-12', 'diterima', 'Lorem Ipsum Dolor Sit Amet', '2023-07-12', '07:00:00', 'Marketing', 3, NULL, 'Cafe Lore, Jln Lorem'),
(53, 8, 25, '2023-07-12', 'menunggu', 'Saya adalah seorang pengusaha catering kecil yang telah menjalankan bisnis ini selama beberapa tahun. Saat ini, saya ingin mengembangkan bisnis saya lebih lanjut dengan membuka cabang baru. Namun, saya mengalami kendala dalam mengelola keuangan cabang baru tersebut. Saya merasa bingung tentang bagaimana cara yang tepat untuk mengatur keuangan dalam bisnis saya. Oleh karena itu, dengan ini saya ingin mengajukan permohonan konsultasi kepada Anda. Saya berharap Anda dapat membantu saya dalam menyusun rencana keuangan yang baik untuk cabang bisnis baru saya. Saya membutuhkan panduan dan saran dari seorang ahli dalam mengelola keuangan bisnis agar saya dapat menjalankan cabang baru ini dengan sukses.Terima kasih atas perhatian dan bantuannya. Saya anda dapat mempertimbangkan ajuan saya.', '2023-07-27', '08:49:00', 'Keuangan', 2, NULL, 'Surya Cafe -  Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(54, 8, 12, '2023-07-12', 'diterima', 'halo ini ajuan terakhir', '2023-07-13', '15:30:00', 'Keuangan', 2, NULL, 'SEASONS Cafe Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(55, 15, 28, '2024-05-15', 'diterima', '', '2024-05-30', '01:30:00', 'keungan', 2, NULL, 'Kantor Pusat Qohary Craft, Jl. Melati No. 23, Surabaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `isi_artikel` text NOT NULL,
  `tanggal_artikel` date NOT NULL,
  `id_admin` int(11) NOT NULL,
  `kategori_artikel` varchar(50) DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `tanggal_artikel`, `id_admin`, `kategori_artikel`, `thumbnail`) VALUES
(11, 'Tips Mengembangkan Startup Tahap Awal Hingga Sukses', '<div class=\"prose\">\n  <p class=\"mb-4\">Sebelum mulai menjalankan suatu bisnis, ada beberapa poin penting yang perlu dipikirkan terlebih dahulu. Untuk memudahkan Anda, berikut ini Business Model Canvas yang diciptakan oleh Alexander Osterwalder &amp; Yves Pigneur yang menjelaskan model bisnis melalui 9 blok. Kesembilan blok tersebut menunjukkan logika cara menghasilkan keuntungan dari bisnis yang akan Anda jalankan. Untuk mengetahui lebih lengkap mengenai 9 blok atau kategori di dalamnya, simak poin-poin berikut ini:</p>\n  <ol class=\"list-decimal ml-8 mb-4\">\n    <li>Customer Segments, untuk mengetahui siapa yang akan menjadi konsumen, bagaimana karakteristik sosial dan bagaimana demografisnya.</li>\n    <li>Value Propositions, untuk mengetahui apa nilai lebih dari produk atau jasa yang akan Anda jual.</li>\n    <li>Channels, menjelaskan bagaimana agar produk atau jasa yang Anda jual bisa sampai atau digunakan langsung oleh pelanggan.</li>\n    <li>Customer Relationships, untuk mengetahui bagaimana agar bisa mendapat, menjaga, dan meningkatkan konsumen.</li>\n    <li>Revenue Streams, untuk mengetahui dari mana saja sumber keuntungan yang bisa didapatkan, serta langkah apa yang harus dilakukan untuk menambah penjualan.</li>\n    <li>Key Resources, adalah aset-aset yang diperlukan agar bisnis dapat berjalan dengan baik dan lancar. Sumber daya ini dapat dilihat (tangible) atau tidak terlihat (intangible).</li>\n    <li>Key Activities, menjelaskan hal-hal paling penting yang harus dilakukan agar model bisnis dapat berjalan.</li>\n    <li>Key Partnerships, untuk mengetahui kira-kira pihak mana saja yang bisa menjadi mitra dalam membangun produk atau jasa yang Anda jual.</li>\n    <li>Cost Structure, menjelaskan semua biaya yang dikeluarkan dalam menjalankan bisnis.</li>\n  </ol>\n  <h2 class=\"text-2xl font-semibold mb-4\">Memulai Bisnis Startup Tahap Awal</h2>\n  <p class=\"mb-4\">Banyak bisnis startup yang lahir dengan suatu ide brilian yang muncul dari masalah sosial yang ditemukan para pendirinya. Mereka memiliki visi untuk memberikan solusi atas masalah tersebut. Di awal berdirinya, ada bisnis startup yang belum memiliki rencana bisnis yang matang. Bisnis startup seperti itu biasanya dimotori oleh anak-anak muda yang memiliki idealisme yang tinggi namun belum banyak pengalaman dari sisi pengelolaan bisnis. Oleh karena itu, seringkali peran pendamping sangat dibutuhkan. Hal tadi membuka peluang banyak inkubator bermunculan untuk mencoba membantu arah pengembangan startup tersebut. Mereka biasanya akan mendukung dari sisi pembiayaan sekaligus mentorship.</p>\n  <p class=\"mb-4\">Hal yang paling penting dalam suatu bisnis startup adalah tim yang solid. Dengan adanya tim yang solid maka akan memunculkan ide-ide baru yang kreatif dan inovatif. Dengan ide kreatif dan inovatif yang dieksekusi dengan tepat, tentunya para pendiri startup tidak akan kesulitan dalam menarik minat masyarakat bahkan mencari investor. Dalam membuat keputusan untuk pendanaan suatu bisnis startup, biasanya investor akan menilai solidalitas tim dengan kekuatan ide dan kemampuan eksekusinya. Setelah itu, para investor akan menilai model bisnis startup tersebut.</p>\n  <h2 class=\"text-2xl font-semibold mb-4\">Tips Mengembangkan Startup</h2>\n  <p class=\"mb-4\">Untuk bisnis startup yang masih berada pada early stage, akan menjadi penting untuk membangun bisnis sejak awal dengan tepat. Hal tersebut akan menjadi acuan ke mana arah bisnis startup akan dibawa nantinya. Berikut ini adalah tips mengembangkan startup yang sebaiknya dicermati oleh pemilik bisnis startup:</p>\n  <ol class=\"list-decimal ml-8 mb-4\">\n    <li>Memahami, menjadikan acuan, dan mendapatkan Minimum Viable Product (MVP) yang sempurna sejak awal.</li>\n    <li>Langkah selanjutnya adalah, ketika MVP sudah didapatkan maka segeralah untuk membuat produk tersebut dalam versi beta untuk kalangan terbatas.</li>\n    <li>Ketika Anda sudah mulai membuat produk, maka sudah waktunya untuk mempekerjakan tenaga ahli yang dapat membantu proses menjadi lebih cepat.</li>\n    <li>Setelah uji coba dilakukan, langkah berikutnya adalah mengoreksi kekurangan atau kesalahan dari produk hingga desain yang ada.</li>\n    <li>Setelah versi beta untuk kalangan terbatas dicoba, dikoreksi, dan dilakukan perbaikan produk, langkah selanjutnya adalah meluncurkan versi beta untuk publik.</li>\n    <li>Setelah versi beta diluncurkan kepada publik, secara organik bisnis startup akan mulai menunjukkan fitur seperti apa yang berfungsi dengan baik dan berpotensi untuk dijual.</li>\n    <li>Tahap yang satu ini merupakan proses akhir dari tips mengembangkan startup di tahap awal. Yaitu meyakinkan kepada investor untuk memberikan investasi berdasarkan produk yang ada pada bisnis startup.</li>\n  </ol>\n  <p class=\"mb-4\">Dunia startup memang sedang menjadi suatu tren di Indonesia akhir-akhir ini. Berbagai kisah sukses dan tips mengembangkan startup menjadi pemicu semangat munculnya startup-startup baru. Potensi pengguna internet di Indonesia yang semakin meningkat dari tahun ke tahun juga menjadi katalis untuk mendirikan sebuah bisnis startup. Agar Anda lebih fokus untuk mengembangkan bisnis, untuk urusan manajemen pengelolaan keuangan, Anda dapat mempercayakannya pada software accounting Mekari Jurnal. Jurnal hadir untuk membantu Anda dalam menyelesaikan tugas-tugas yang berhubungan dengan akuntansi dan keuangan dengan mudah dan praktis.</p>\n</div>\n', '2023-06-26', 1, 'Marketing', 'https://freedesignfile.com/upload/2018/05/Startup-3d-business-words-illustration-vector.jpg'),
(12, 'Strategi Pemasaran Online Efektif untuk Meningkatan Bisnis Anda', 'Dalam bagian ini, kita akan membahas secara lebih mendalam tentang pemasaran online, termasuk perbedaannya dengan pemasaran tradisional, keuntungan yang ditawarkannya, dan manfaat yang dapat diperoleh dari pemasaran online.\r\n\r\nDefinisi Pemasaran Online\r\nMenjelaskan secara singkat apa yang dimaksud dengan pemasaran online.\r\nMenyebutkan berbagai saluran dan platform yang digunakan dalam pemasaran online, seperti website, media sosial, email, dan lainnya.\r\n\r\nPerbedaan antara Pemasaran Online dan Pemasaran Tradisional\r\nMembandingkan karakteristik pemasaran online dengan pemasaran tradisional.\r\nMenyoroti fleksibilitas, target pasar yang lebih spesifik, interaksi yang lebih besar, dan pengukuran yang lebih akurat sebagai perbedaan utama.\r\n\r\nKeuntungan dan Manfaat Pemasaran Online\r\nMenguraikan manfaat utama pemasaran online bagi bisnis.\r\nMembahas kemampuan untuk menjangkau audiens global, target pasar yang lebih spesifik, biaya yang lebih rendah, pengukuran dan pelacakan yang lebih akurat, dan keterlibatan yang lebih besar dengan konsumen.\r\nDengan pemahaman yang mendalam tentang pemasaran online dan keuntungannya, Anda akan dapat menghargai nilai strategi pemasaran online yang efektif untuk bisnis Anda.\r\n', '2023-07-12', 1, 'Pemasaran', 'https://img.freepik.com/free-vector/business-team-discussing-ideas-startup_74855-4380.jpg'),
(13, '5 Ide Peluang Bisnis Ini Buat Anda yang Hobi Makan\r\n', 'Makanan memang merupakan kebutuhan primer manusia. Tapi, ada beberapa orang yang memang sangat suka makan dan mencicipi berbagai kuliner yang ada lho. Nah, untuk Anda yang hobi makan, berikut ini ada beberapa peluang usaha yang bisa dipertimbangkan! \r\n\r\n1. Membuka Warung Makan, Kafe, Food Truck, atau Restoran Jika Anda punya modal yang besar dan ingin membuka bisnis di bidang kuliner, membuka restoran bisa jadi pilihan tepat. Anda bisa memilih restoran dengan tema yang unik dan menarik atau dengan menu yang berbeda dari restoran-restoran lain. Dalam membuka restoran, pastikan lokasi yang dipilih strategis ya dan punya potensi pasar yang besar. Selain itu, pastikan juga bahan-bahan yang digunakan berkualitas. Untuk harga tiap menunya, bisa disesuaikan dengan target konsumen yang ingin dicapai. Gaya hidup modern dari masyarakat kebanyakan yang suka hal-hal praktis, termasuk makan di restoran menjadikan peluang usaha ini makin menjanjikan. Untuk membuka restoran tentunya diperlukan karyawan yang banyak dan manajemen pengelolaan yang bagus. Sebagai alternatif, Anda juga bisa memulai bisnis kafe yang menawarkan berbagai jenis minuman atau makanan ringan yang lezat. Bisnis ini cocok untuk orang yang suka nongkrong di kafe dan menikmati hidangan ringan sambal bersantai. Baik keduanya, kafe dan restoran tentu butuh modal awal yang besar. Jika modal yang dimiliki masih terbatas, coba deh pilih jenis usaha sejenis yang bisa dimulai dengan budget minim. Contohnya saja membuka warung makan, food court minimalis, atau bisa juga buka food truck supaya lebih fleksibel. Modal yang dibutuhkan lebih minim dari membuka restoran ataupun kafe. Anda bisa merintisnya dari awal terlebih dahulu, lalu pelan-pelan mengembangkannya jadi bisnis besar. \r\n\r\n2. Bisnis Katering Makanan Rekomendasi peluang usaha kedua bagi orang-orang yang kebetulan suka makan adalah membuka bisnis katering. Hal ini merupakan peluang usaha yang bagus untuk seseorang yang memiliki kemampuan memasak dan memiliki resep-resep yang lezat. Usaha ini bisa dimulai dengan membuat menu makanan yang akan disediakan, baik untuk acara pribadi atau acara perusahaan. Untuk target konsumennya adalah pihak-pihak yang butuh layanan katering, mulai dari perusahaan untuk makanan karyawannya hingga konsumen individual. Tawarkan juga layanan tersebut pada beberapa mitra yang kerap butuh jasa katering, contohnya ke Event atau Wedding Organizer. Mereka biasanya butuh mitra untuk menyediakan layanan catering di acara-acara yang digelar. Belakangan ini bisnis katering sehat juga mulai populer seiring dengan peningkatan kesadaran masyarakat akan pentingnya makanan yang sehat dan bergizi. Anda bisa menjadikannya sebagai peluang bisnis yang menjanjikan. \r\n', '2023-07-12', 1, 'Ide Bisnis', 'https://media.istockphoto.com/id/1264379078/vector/lightbulb-idea-concept-vector-illustration-cartoon-flat-tiny-man-woman-characters-hold-lamp.jpg?b=1&s=170667a&w=0&k=20&c=tNPLWh4H9il9UG9AiAPKV5gX5MFcXg5FFSeCuUl4qhU='),
(15, ' Cara Mudah Mendapatkan Modal untuk Membangun Bisnis ', 'Memulai sebuah bisnis baru mungkin saja sudah terlintas di benakmu sejak lama, namun sayangnya masih terganjal dengan modal. Kondisi seperti ini sering kali menjadi alasan banyak orang untuk menunda bisnis mereka, meskipun sebenarnya sudah memiliki rencana yang matang. Sementara di lain sisi, jika kamu menunda untuk memulai bisnis ini, maka kamu tentu akan menunda kesuksesan itu datang.\r\nModal memang menjadi salah satu komponen penting dalam membangun bisnis, apalagi jika ini baru akan menjadi bisnis pertama. Namun jangan jadikan hal ini sebagai hambatan untuk segera memulai bisnis yang sudah kamu rencanakan. Kamu tetap bisa mengupayakannya dengan banyak cara.\r\n1. Gunakan Dana Jaminan Hari Tua (JHT) \r\nCara pertama ini akan cocok untuk kamu yang pernah bekerja atau masih aktif bekerja hingga saat ini. Sebagai pekerja, kamu tentu menjadi peserta program JHT yang diberikan oleh pemerintah. Di dalam layanan ini, kamu telah menabungkan sejumlah dana sebagai persiapan masa pensiun nanti. Iuran JHT pada umumnya dipungut oleh perusahaan secara rutin.\r\nJumlah saldo JHT tentu akan sangat tergantung pada masa kerja yang sudah kamu habiskan di perusahaan. Jika saat ini masih aktif bekerja, maka kamu bisa mencairkan 10% atau 30% dari saldo JHT tersebut (sesuai syarat dan ketentuan yang berlaku). Namun jika saat ini sudah tidak bekerja, maka kamu bisa mencairkan seluruh saldo JHTmu. Cairkan saldo JHT dan manfaatkan sebagai modal untuk membangun bisnis.', '2023-07-12', 1, 'Tips dan Tricks', 'https://i.pinimg.com/originals/52/be/81/52be81d0cb86b072eca6ab9bd8b85d94.jpg'),
(16, 'Affiliate Marketing: Pengertian, Manfaat, Tips dan Peluang Karirnya\r\n', 'Affiliate Marketing menjadi salah satu metode pemasaran yang populer selama beberapa waktu belakangan ini. Bukan hanya di dalam bisnis skala besar saja, tetapi kalangan pelaku bisnis kecil juga sudah banyak yang menerapkan metode pemasaran yang satu ini.\r\nPerkembangan seperti ini menjadi angin segar tersendiri sehingga karir sebagai affiliate marketer juga makin menjanjikan dan diincar oleh banyak orang. Sebut saja affiliate marketing Shopee yang diminati oleh banyak pebisnis di platform ternama tersebut, sebab dianggap bisa membuat bisnis menjadi lebih stabil atau bahkan berkembang dengan baik.\r\nCara menjadi affiliate marketing yang terbilang mudah tentu menjadi salah satu alasan di balik hal tersebut. Dalam beberapa tahun ke depan, peluang karir di bidang yang satu ini bahkan diprediksi akan makin luas, sebab ketersediaan internet juga sudah makin merata dan mudah untuk diakses.\r\n', '2023-07-20', 1, 'Marketing', 'https://assets.materialup.com/uploads/e78b1f43-1345-4a6e-b09c-f871b1b1c02b/preview.jpg'),
(17, 'Go Digital! Go Success! Persiapkan Bisnismu untuk Era Kekinian', 'Di era digital yang terus berkembang ini, perubahan cara berbisnis menjadi semakin tak terhindarkan. Terutama bagi UMKM (Usaha Mikro, Kecil, dan Menengah) yang ingin bertahan dan bersaing dalam pasar yang semakin kompetitif. Digitalisasi menjadi kata kunci yang tak boleh diabaikan. \r\nDalam artikel ini, kita akan mengulas mengapa UMKM harus go digital dan manfaat besar apa yang dapat mereka raih dengan langkah tersebut. Siap-siap untuk merajut kesuksesan di jagad digital!\r\n', '2023-07-12', 1, 'Info', 'https://t4.ftcdn.net/jpg/05/06/35/75/360_F_506357599_bjrjWJ36i3UNb7zlqUnEB13jOdXtZ4kl.jpg'),
(18, 'Transformasi Digital Marketing sebagai Kunci Sukses UMKM', 'Dalam zaman digital yang terus berkembang, UMKM perlu melakukan transformasi digital agar bisa tetap eksis dan sukses di tengah persaingan yang ketat. Untuk menghadapi tantangan globalisasi dan perkembangan teknologi, UMKM membutuhkan strategi digital yang efektif guna memperluas pangsa pasar, meningkatkan efisiensi operasional, dan memperkuat posisi bersaingnya.\r\nDigitalisasi memberikan kesempatan kepada UMKM untuk mengubah operasi tradisional mereka menjadi bisnis yang lebih efisien dan inovatif. Dengan menerapkan teknologi digital, UMKM dapat mengotomatisasi proses bisnis, mengurangi biaya operasional, meningkatkan produktivitas, dan mengambil keputusan berdasarkan data yang akurat.\r\nSalah satu aspek penting dalam transformasi digital adalah menggunakan platform e-commerce. Dengan menjual produk secara online, UMKM dapat memperluas pasar mereka dari lokal menjadi global. Melalui platform e-commerce, produk UMKM dapat diakses oleh pelanggan potensial di seluruh dunia, membuka peluang baru untuk meningkatkan penjualan dan pertumbuhan bisnis.\r\n', '2023-07-12', 1, 'Info', 'https://miro.medium.com/max/875/1*Lh9GwVcWCVLwFkmuLMd0Gg.png'),
(19, 'Digitalisasi dan Manfaatnya Bagi Pelaku UMKM', 'Dalam zaman digital yang terus berkembang, UMKM perlu melakukan transformasi digital agar bisa tetap eksis dan sukses di tengah persaingan yang ketat. Untuk menghadapi tantangan globalisasi dan perkembangan teknologi, UMKM membutuhkan strategi digital yang efektif guna memperluas pangsa pasar, meningkatkan efisiensi operasional, dan memperkuat posisi bersaingnya.\r\nDigitalisasi memberikan kesempatan kepada UMKM untuk mengubah operasi tradisional mereka menjadi bisnis yang lebih efisien dan inovatif. Dengan menerapkan teknologi digital, UMKM dapat mengotomatisasi proses bisnis, mengurangi biaya operasional, meningkatkan produktivitas, dan mengambil keputusan berdasarkan data yang akurat.\r\nSalah satu aspek penting dalam transformasi digital adalah menggunakan platform e-commerce. Dengan menjual produk secara online, UMKM dapat memperluas pasar mereka dari lokal menjadi global. Melalui platform e-commerce, produk UMKM dapat diakses oleh pelanggan potensial di seluruh dunia, membuka peluang baru untuk meningkatkan penjualan dan pertumbuhan bisnis.\r\n', '2023-07-20', 1, 'Info', 'https://img.freepik.com/premium-vector/vector-illustration-brilliant-idea-solve-problem-by-thinking-new-innovative-ideas_675567-2251.jpg?w=2000'),
(20, 'Judul Artikelss', '<p>6hhk8k8k8k8k8k8.p.p.p</p>', '2023-07-04', 1, 'kategori1', 'Judul Artikel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultan`
--

CREATE TABLE `konsultan` (
  `ID_Konsultan` int(11) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `Kontak` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `pw_konsultan` varchar(255) NOT NULL,
  `Riwayat_Pendidikan` text DEFAULT NULL,
  `Pengalaman` text DEFAULT NULL,
  `Rating` decimal(3,2) DEFAULT NULL,
  `Biaya_Konsultasi` decimal(10,2) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `ID_Spesialisasi` int(11) DEFAULT 1,
  `konsultan_poto` varchar(100) NOT NULL,
  `kota_konsultan` varchar(255) NOT NULL,
  `Deskripsi` text NOT NULL,
  `status_akun_konsultan` enum('Belum Diverifikasi','Menunggu Verifikasi','Sudah Diverifikasi','') NOT NULL DEFAULT 'Belum Diverifikasi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `konsultan`
--

INSERT INTO `konsultan` (`ID_Konsultan`, `Nama`, `Alamat`, `Kontak`, `Email`, `pw_konsultan`, `Riwayat_Pendidikan`, `Pengalaman`, `Rating`, `Biaya_Konsultasi`, `Status`, `ID_Spesialisasi`, `konsultan_poto`, `kota_konsultan`, `Deskripsi`, `status_akun_konsultan`) VALUES
(12, 'Dr. Putri Oktavianti, s.e.', 'Jl. Suka maju', '+6285476058330', 'putriokt@gmail.com', '$2y$10$CD0I/uv7GvYj83WY1wmXuOFkLDBOHWKukNv2WGqiT..keTph/A3v2', 'Universitas Lambung Mangkurat', 'Dalam pengalaman saya di bidang marketing, saya telah menggabungkan pengetahuan tentang strategi pemasaran, analisis data, dan pemahaman tentang konsumen untuk membantu perusahaan mencapai tujuan pemasaran mereka. Saya senang bekerja dalam tim yang kreatif dan dinamis, serta menggunakan teknik pemasaran terbaru untuk membangun merek dan meningkatkan kehadiran perusahaan di pasar', '4.20', '100000.00', 'Available', 1, '64ab78a2ae303.jpg', 'Solo', 'Ahli keuangan dengan pengetahuan mendalam dalam analisis investasi dan manajemen portofolio. Berpengalaman dalam membantu klien mengoptimalkan investasi mereka', 'Sudah Diverifikasi'),
(13, 'M. Khaliq Teuqi Anshari, S.E.', 'Jl. A. Yani No. 9', '32323', 'khaliq@gmail.com', '$2y$10$0Sk.qKbf1KdrVZwj9MO7FOFzNVjV5eajl.mhejZSsb1OXZJCkcQie', 'S1 Manajemen Bisnis, Universitas ABC', 'Saya memiliki pengalaman dalam melakukan penelitian pasar untuk memahami preferensi dan perilaku konsumen. Dengan menggunakan metode penelitian yang tepat, saya dapat memberikan wawasan berharga untuk membantu mengarahkan upaya pemasaran dan mengambil keputusan yang lebih baik.', '3.00', '20000.00', 'Available', 1, '64ae39d47e16b.jpg', 'Banjarmasin', 'Sebagai seorang konsultan pemasaran, saya memiliki pengalaman luas dalam membantu bisnis mengembangkan strategi pemasaran yang efektif dan meningkatkan kinerja mereka di pasar. Saya memiliki pengetahuan yang mendalam tentang berbagai aspek pemasaran, termasuk strategi pemasaran, penelitian pasar, pengembangan merek, pemasaran digital, dan analisis kinerja.', 'Sudah Diverifikasi'),
(17, 'Budi Santoso, S.E', 'Jln. Suka Maju, GG Sejahtera', '+62 8123 4567 890', 'budisantoso@gmail.com', '$2y$10$Q3XtfbbvHj3.tPeQ/8bHfO.VzYJlZqZg3Y6KPshlBzcAopZAnHJzy', 'Sarjana Ekonomi, Universitas Indonesia', '5 tahun di bidang konsultasi keuangan dan investasi', '4.30', '50000.00', 'Available', 1, '64ab2f6d3521d.jpg', 'Banjarmasin', ' konsultan keuangan yang berpengalaman dalam memberikan layanan konsultasi keuangan dan investasi kepada klien-klien perusahaan dan individu. Dengan latar belakang pendidikan di bidang ekonomi dari Universitas Indonesia, Saya memiliki pengetahuan dan keterampilan yang mendalam dalam analisis keuangan serta strategi investasi yang efektif.\r\n', 'Sudah Diverifikasi'),
(18, 'Rina Setiawati, M.M.Si.', 'Jl. Maju Mundur No. 10', '+62 123 4567 890', 'rinasetiawati@example.com', '$2y$10$rf7AmaFz7qS1HM8pDi2hWeTKfAuTW86QXPfSBDQmYxdcmkqiVjCkK', '- Sarjana Manajemen Sumber Daya Manusia\r\nMagister Manajemen Sumber Daya Manusia,\r\n- Universitas Padjajaran \r\n', '8 tahun di bidang konsultasi SDM', '4.90', '80000.00', 'Not Available', 1, '64ab328a16293.jpg', 'Surabaya', ' konsultan SDM yang berpengalaman membantu perusahaan dalam mengelola sumber daya manusia mereka. Memiliki pemahaman mendalam tentang praktik terbaik dalam pengelolaan karyawan, pengembangan organisasi, dan pemenuhan kebutuhan SDM perusahaan.\r\n', 'Sudah Diverifikasi'),
(19, 'Prof. qalby, M.B.A.', 'Jl. Thamrin No. 17', '+62 813 5678 901', 'qalby@gmail.com', '$2y$10$rO105eJAXk3lSrJxqHOm..G1D46cL2UmIVMlhwHuotZ2tFktHoAQi', 'Magister Manajemen Bisnis Universitas Trisakti.\r\nProfesor bidang Manajemen Bisnis Universitas Atma Jaya.\r\n', 'Selama beberapa tahun terakhir, saya telah bekerja sebagai konsultan bisnis di cabang teknologi. Saya memiliki keahlian dan pemahaman yang mendalam tentang industri teknologi dan bagaimana teknologi dapat diterapkan dalam konteks bisnis.', NULL, NULL, 'Available', 5, '64ab35a46f81d.jpg', 'Palembang', 'Ahli keuangan dengan pengetahuan mendalam dalam analisis investasi dan manajemen portofolio. Berpengalaman dalam membantu klien mengoptimalkan investasi mereka', 'Sudah Diverifikasi'),
(20, 'Iwan Prasetyo, S.T.', 'Jl. Raya Sidoarjo No. 56', '+62 819 3456 789', 'iwanprasetyo@gmail.com', '$2y$10$bH1tGx8YzlxhHwHZdS0B..qY2CRO8le2c5vPsb/dDf1OKIZmYdHs6', 'Sarjana Teknik Elektro, Universitas Diponegoro', '6 tahun di bidang konsultasi teknologi informasi', '3.80', '50000.00', 'Not Available', 7, '64ab392cbfdad.jpg', 'Sidoarjo', 'konsultan teknologi informasi yang ahli dalam membantu perusahaan mengoptimalkan infrastruktur TI mereka', 'Sudah Diverifikasi'),
(21, 'Siska Wijaya, M.Psi', 'Jl. Sudirman No. 25', '+62 813 5678 901', 'siskawijaya@gmail.com', '$2y$10$.pCzZzPdwOS41ufdi4c4U.AnNLwHJTbFmMlWmrz0YGCG5wxmXbOyu', '- Fakultas Psikologi, Universitas Sumatera Utara, Medan.\r\n- Magister Psikologi Organisasi, Universitas Sumatera Utara\r\n', '9 tahun di bidang konsultasi pengembangan ', '4.20', '70000.00', 'Not Available', 6, '64ab3dc32dd4e.jpg', 'Makassar', 'konsultan pengembangan organisasi dengan keahlian dalam membantu perusahaan dalam mengelola perubahan, meningkatkan budaya organisasi, dan mengembangkan kepemimpinan.', 'Sudah Diverifikasi'),
(22, 'Desi Pratiwi, M.A.B.', 'Jl. Diponegoro No. 321', '+62 813 5678 901', 'desipratiwi@gmail.com', '$2y$10$xwK6Fqpy0XJTkRvCN.uz8uAcUuAZhAAzCkcgw6g9JS4ZNsEqqkg2S', 'Sarjana Administrasi Bisnis  Fakultas Ekonomika dan Bisnis, - --------Universitas Gadjah Mada, Yogyakarta. \r\n- Magister Administrasi Bisnis, Universitas Gadjah Mada\r\n', 'Dalam pengalaman saya di bidang marketing, saya telah menggabungkan pengetahuan tentang strategi pemasaran, analisis data, dan pemahaman tentang konsumen untuk membantu perusahaan mencapai tujuan pemasaran mereka. Saya senang bekerja dalam tim yang kreatif dan dinamis, serta menggunakan teknik pemasaran terbaru untuk membangun merek dan meningkatkan kehadiran perusahaan di pasar', '4.40', '50000.00', 'Available', 1, '64ab420bcc665.jpg', 'Yogyakarta', 'Konsultan strategi bisnis yang berfokus pada membantu mengembangkan rencana strategis dan meraih keunggulan kompetitif.\r\n', 'Sudah Diverifikasi'),
(23, 'Farisa Adelia Ph.d. ', 'Jln. Kartunu, No 100', '+62 813 5678 901', 'farisa@gmail.com', '$2y$10$AiWpvG5.4xFecrQcypH62utfWSRF8ub/ZdK.0c8CQFLnidJsqpfeC', 'Program Pascasarjana dalam Pemasaran, Universitas XYZ (2017-2018)', 'Saya telah membantu berbagai perusahaan dalam merancang dan mengimplementasikan strategi pemasaran yang efektif. Ini melibatkan identifikasi target pasar, analisis pesaing, penentuan positioning, serta pengembangan rencana pemasaran yang komprehensif.', '4.70', '50000.00', 'Not Available', 4, '64ab6909a7fb8.jpg', 'Buntok', 'Ahli keuangan dengan pengetahuan mendalam dalam analisis investasi dan manajemen portofolio. Berpengalaman dalam membantu klien mengoptimalkan investasi mereka.', 'Sudah Diverifikasi'),
(24, 'Ahmad Maulana, S.E., M.M.', 'Jl. Lambung Mangkurat', '+62 819 3456 789', 'ahmadm@gmail.com', '$2y$10$MARvzYdbmO1q4yASdsXa6O8e57KSPSZw8KJny.8xDtx.ViXZuq4kq', 'Universitas Gadjah Mada \r\nUniversitas Indonesia ', 'Saya bekerja sebagai konsultan keuangan independen, memberikan layanan konsultasi kepada klien perorangan dan perusahaan dalam hal perencanaan keuangan, manajemen investasi, pengelolaan risiko, dan strategi keuangan jangka panjang. Saya membantu klien dalam mengoptimalkan keuangan mereka, mengidentifikasi peluang investasi yang menguntungkan, serta mengelola portofolio investasi dengan baik.', '4.80', '50000.00', 'Available', 3, '64ab9845ce3e0.png', 'Banjarmasin', 'Saya adalah seorang konsultan keuangan dengan keahlian di bidang manajemen keuangan dan perencanaan keuangan. Dengan pengalaman kerja selama 10 tahun di industri keuangan, saya memiliki pengetahuan yang luas dan pemahaman yang mendalam tentang berbagai aspek keuangan, termasuk investasi, pengelolaan risiko, perencanaan pajak, dan analisis keuangan.', 'Belum Diverifikasi'),
(25, 'Dr. muhammad rizki simanullang, s.e.', 'Jl. Rajawalli', '+628347657889', 'riskisimanulang@gmail.com', '$2y$10$nubBriIcUUfA8om2EkRrxOWJNnYYKpm2oB8xdTZLFP0jyQiqQl2AO', '<ul>\n  <li>S1 - Sarjana Ekonomi, Universitas ABC</li>\n  <li>S2 - Magister Manajemen, Universitas XYZ</li>\n  <li>S3 - Doktor Ilmu Ekonomi, Universitas PQR</li>\n</ul>\n', 'Dalam pengalaman saya di bidang marketing, saya telah menggabungkan pengetahuan tentang strategi pemasaran, analisis data, dan pemahaman tentang konsumen untuk membantu perusahaan mencapai tujuan pemasaran mereka. Saya senang bekerja dalam tim yang kreatif dan dinamis, serta menggunakan teknik pemasaran terbaru untuk membangun merek dan meningkatkan kehadiran perusahaan di pasar', NULL, '100000.00', 'Available', 3, '64ab7b40d384e.jpg', 'Banjarmasin', 'Ahli keuangan dengan pengetahuan mendalam dalam analisis investasi dan manajemen portofolio. Berpengalaman dalam membantu klien mengoptimalkan investasi mereka', 'Sudah Diverifikasi'),
(26, 'acafitria', 'Jl. Purnama', '+6289345689', 'acafit@gmail.com', '$2y$10$HTGnKQ7UWfRXuHS6oWrJLucAQN.y3XxtY4Cvho7eKrFP6m7amLoVq', 'Manajemen Bisnis, Universitas Indonesia\r\nProgram Eksekutif dalam Keuangan Perusahaan, Harvard Business School', 'rategis perusahaan. Selama periode ini, Ahmad Raihan memantau kemajuan proyek, melaporkannya kepada manajemen senior, dan memastikan pencapaian target dan tenggat waktu.', NULL, '30000.00', 'Available', 4, '64ab7f3a5efb4.jpg', 'Bandung', ' seorang profesional yang berdedikasi, memiliki keahlian dalam manajemen proyek, analisis keuangan, konsultasi bisnis, dan pemasaran. Ia terus berusaha untuk meningkatkan pengetahuan dan keterampilannya dalam bidang bisnis untuk mencapai kesuksesan yang lebih besar.', 'Sudah Diverifikasi'),
(27, 'rizki simanullang', 'wsdwsdsw', '+6289345689', 'rizki@gmail.com', '$2y$10$U9g1m1zrnn5NS.qDttS49u9n9n4RytYQQ/KeDFsvMMZ4EohorqUi2', 'dddddsds', 'ddsd', NULL, '50000.00', 'Available', 1, '64abade01486a.png', 'dwsdd', 'fdscscscsc', 'Sudah Diverifikasi'),
(28, 'Dr. Andri Rahmadani', 'Jl. Mawar No. 45', '+62 812 3456 7890', 'andri123@gmail.com', '$2y$10$rR.5HgucV.6u.9EnPgJXKuMPkkXILJtuPJm2j72zLUJf08pTggSWW', 'S1 - Sarjana Ekonomi, Universitas ABC\r\nS2 - Magister Manajemen, Universitas XYZ\r\nS3 - Doktor Ilmu Ekonomi, Universitas PQR', 'Dalam pengalaman saya di bidang marketing, saya telah menggabungkan pengetahuan tentang strategi pemasaran, analisis data, dan pemahaman tentang konsumen untuk membantu perusahaan mencapai tujuan pemasaran mereka. Saya senang bekerja dalam tim yang kreatif dan dinamis, serta menggunakan teknik pemasaran terbaru untuk membangun merek dan meningkatkan kehadiran perusahaan di pasar', NULL, '50000.00', 'Available', 3, '664455bd24956.jpg', 'Jakarta', 'Ahli keuangan dengan pengetahuan mendalam dalam analisis investasi dan manajemen portofolio. Berpengalaman dalam membantu klien mengoptimalkan investasi mereka', 'Sudah Diverifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(11) NOT NULL,
  `id_konsultan` int(11) DEFAULT NULL,
  `id_umkm` int(11) DEFAULT NULL,
  `tanggal_konsultasi` date DEFAULT NULL,
  `topik_konsultasi` varchar(255) DEFAULT NULL,
  `durasi_konsultasi` time DEFAULT NULL,
  `hasil_konsultasi` text DEFAULT NULL,
  `status_konsultasi` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `tanggal_rating` date DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `jam_konsultasi` time NOT NULL,
  `tempat_konsultasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsultasi`, `id_konsultan`, `id_umkm`, `tanggal_konsultasi`, `topik_konsultasi`, `durasi_konsultasi`, `hasil_konsultasi`, `status_konsultasi`, `catatan`, `rating`, `tanggal_rating`, `komentar`, `jam_konsultasi`, `tempat_konsultasi`) VALUES
(6, 12, 8, '2023-07-21', 'Pengelolaan Keuangan dan Perencanaan Investasi', '00:01:20', NULL, 'akan berlangsung', NULL, NULL, NULL, NULL, '15:57:00', 'SEASONS Cafe Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(7, 12, 8, '2023-07-27', 'Keuangan', '00:00:02', NULL, 'akan berlangsung', NULL, NULL, NULL, NULL, '21:32:00', 'SEASONS Cafe Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(8, 12, 8, '2023-07-21', 'Pengelolaan Keuangan dan Perencanaan Investasi', '00:01:20', NULL, 'Telah Berlangsung', NULL, NULL, NULL, NULL, '15:57:00', 'SEASONS Cafe Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(9, 13, 8, '2023-07-05', 'keungan', '00:00:03', NULL, 'akan berlangsung', NULL, NULL, NULL, NULL, '15:07:00', 'Jln sutoyo S'),
(10, 13, 8, '2023-07-05', 'keungan', '00:00:03', NULL, 'Telah Berlangsung', NULL, '1.0', NULL, 'Waaah bagus banget', '15:07:00', 'Jln sutoyo S'),
(11, 27, 8, '2023-07-11', 'Sumber Daya Manusia', '00:00:02', NULL, 'Telah Berlangsung', NULL, '5.0', NULL, 'rffrfrfrf', '16:10:00', 'Jln. Suka Maju'),
(12, 12, 8, '2023-07-14', 'Pengelolaan Keuangan dan Perencanaan Investasi', '00:00:02', NULL, 'akan berlangsung', NULL, NULL, NULL, NULL, '01:00:00', 'SEASONS Cafe - Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(13, 25, 8, '2023-07-17', 'Marketing', '00:00:02', NULL, 'Telah Berlangsung', NULL, '5.0', NULL, 'Konsultannya sangat hebat', '14:01:00', 'SEASONS Cafe - Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(14, 25, 8, '2023-07-12', 'Marketing', '00:00:03', NULL, 'akan berlangsung', NULL, NULL, NULL, NULL, '07:00:00', 'Cafe Lore, Jln Lorem'),
(15, 12, 8, '2023-07-13', 'Keuangan', '00:00:02', NULL, 'akan berlangsung', NULL, '2.0', NULL, 'hyu', '15:30:00', 'SEASONS Cafe Jalan Mayjen S. Parman, Belitung Selatan, Banjarmasin Tengah'),
(16, 28, 15, '2024-05-30', 'keungan', '00:00:02', NULL, 'akan berlangsung', NULL, NULL, NULL, NULL, '01:30:00', 'Kantor Pusat Qohary Craft, Jl. Melati No. 23, Surabaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `metode_pembayaran` varchar(255) DEFAULT NULL,
  `jumlah_pembayaran` decimal(10,2) DEFAULT NULL,
  `tanggal_pembayaran` date DEFAULT NULL,
  `status_pembayaran` varchar(20) DEFAULT NULL,
  `bukti_pembayaran` varchar(255) NOT NULL,
  `id_ajuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `metode_pembayaran`, `jumlah_pembayaran`, `tanggal_pembayaran`, `status_pembayaran`, `bukti_pembayaran`, `id_ajuan`) VALUES
(52, 'transfer', '1000000.00', '2023-07-05', 'disetujui', '64a5407a3b3bf.png', 27),
(77, 'transfer', '100000.00', '2023-07-07', 'Menunggu', '64a823429b226.png', 40),
(78, 'transfer', '100000.00', '2023-07-07', 'disetujui', '64a82391ab8ca.png', 40),
(79, 'transfer', '200000.00', '2023-07-09', 'Menunggu', '64aa35a95d3c8.png', 41),
(80, 'transfer', '60000.00', '2023-07-10', 'disetujui', '64ab9277be7e1.jpg', 44),
(81, 'transfer', '100000.00', '2023-07-10', 'disetujui', '64abaf4add3cb.png', 46),
(82, 'transfer', '200000.00', '2023-07-11', 'disetujui', '64ad06cd1c92f.png', 50),
(83, 'transfer', '200000.00', '2023-07-11', 'disetujui', '64ad562013b4f.jpg', 51),
(84, 'transfer', '200000.00', '2023-07-11', 'Menunggu', '64ad81001deb6.jpg', 47),
(85, 'transfer', '300000.00', '2023-07-12', 'disetujui', '64adfd567046a.png', 52),
(86, 'transfer', '200000.00', '2023-07-12', 'disetujui', '64ae3aa7671ac.png', 54),
(87, 'transfer', '100000.00', '2024-05-15', 'disetujui', '', 55);

-- --------------------------------------------------------

--
-- Struktur dari tabel `spesialisasi`
--

CREATE TABLE `spesialisasi` (
  `ID_Spesialisasi` int(11) NOT NULL,
  `Nama_Spesialisasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `spesialisasi`
--

INSERT INTO `spesialisasi` (`ID_Spesialisasi`, `Nama_Spesialisasi`) VALUES
(1, 'Generalist'),
(2, 'Marketing'),
(3, 'Keuangan'),
(4, 'Manajemen'),
(5, 'Hukum Bisnis'),
(6, 'Sumber Daya Manusia'),
(7, 'Teknologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `umkm`
--

CREATE TABLE `umkm` (
  `id_umkm` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kontak` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `informasi_bisnis` text DEFAULT NULL,
  `pw_umkm` varchar(255) DEFAULT NULL,
  `foto_profil` varchar(255) DEFAULT NULL,
  `kota_umkm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `umkm`
--

INSERT INTO `umkm` (`id_umkm`, `nama`, `alamat`, `kontak`, `email`, `informasi_bisnis`, `pw_umkm`, `foto_profil`, `kota_umkm`) VALUES
(8, 'Annisa Fitria', 'Jln Sutoyo S, GG Rahayu 3', '+62 896 9267 9862', 'aca123@gmail.com', 'Catering Makanan', '$2y$10$BKrbLkCfD8t8gfefi1KgSetu7hDt4whY5OqdiAmVkQeQuBrkeYt16', '64ab95eae2849.jpg', 'Banjarmasin'),
(15, 'Muhammad Qohary', 'Jl. Melati No. 23', '+62 813 9876 5432', 'qohary123@gmail.com', 'Deskripsi Bisnis: Qohary Craft adalah usaha mikro kecil menengah yang bergerak di bidang pembuatan kerajinan tangan berbasis bahan daur ulang. Kami menciptakan produk-produk unik seperti tas, dompet, dan dekorasi rumah dari bahan-bahan bekas yang diolah menjadi barang bernilai seni tinggi.', '$2y$10$LJ5ZBn/JHDtzqAu3tX8oBuTB/YViWXMfJ21iSFn13GO6YkS94lxsm', '6644567379bec.jpg', 'Surabaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id_video` int(11) NOT NULL,
  `judul_video` varchar(100) NOT NULL,
  `deskripsi_video` text DEFAULT NULL,
  `lokasi_video` varchar(255) NOT NULL,
  `durasi_video` time DEFAULT NULL,
  `tanggal_upload_video` date DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `kategori_video` varchar(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `thumbnail_video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `videos`
--

INSERT INTO `videos` (`id_video`, `judul_video`, `deskripsi_video`, `lokasi_video`, `durasi_video`, `tanggal_upload_video`, `views`, `kategori_video`, `id_admin`, `thumbnail_video`) VALUES
(1, 'Ini judul', 'judulll', 'https://', '00:23:41', '2023-07-12', 0, 'KEunaganb', 1, 'ggg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `ajuan`
--
ALTER TABLE `ajuan`
  ADD PRIMARY KEY (`id_ajuan`),
  ADD KEY `id_umkm` (`id_umkm`),
  ADD KEY `id_konsultan` (`id_konsultan`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `konsultan`
--
ALTER TABLE `konsultan`
  ADD PRIMARY KEY (`ID_Konsultan`),
  ADD KEY `ID_Spesialisasi` (`ID_Spesialisasi`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`),
  ADD KEY `id_konsultan` (`id_konsultan`),
  ADD KEY `id_umkm` (`id_umkm`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_ajuan` (`id_ajuan`);

--
-- Indeks untuk tabel `spesialisasi`
--
ALTER TABLE `spesialisasi`
  ADD PRIMARY KEY (`ID_Spesialisasi`);

--
-- Indeks untuk tabel `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`id_umkm`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id_video`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ajuan`
--
ALTER TABLE `ajuan`
  MODIFY `id_ajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `konsultan`
--
ALTER TABLE `konsultan`
  MODIFY `ID_Konsultan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `umkm`
--
ALTER TABLE `umkm`
  MODIFY `id_umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ajuan`
--
ALTER TABLE `ajuan`
  ADD CONSTRAINT `ajuan_ibfk_1` FOREIGN KEY (`id_umkm`) REFERENCES `umkm` (`id_umkm`),
  ADD CONSTRAINT `ajuan_ibfk_2` FOREIGN KEY (`id_konsultan`) REFERENCES `konsultan` (`ID_Konsultan`);

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Ketidakleluasaan untuk tabel `konsultan`
--
ALTER TABLE `konsultan`
  ADD CONSTRAINT `konsultan_ibfk_1` FOREIGN KEY (`ID_Spesialisasi`) REFERENCES `spesialisasi` (`ID_Spesialisasi`);

--
-- Ketidakleluasaan untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD CONSTRAINT `konsultasi_ibfk_1` FOREIGN KEY (`id_konsultan`) REFERENCES `konsultan` (`ID_Konsultan`),
  ADD CONSTRAINT `konsultasi_ibfk_2` FOREIGN KEY (`id_umkm`) REFERENCES `umkm` (`id_umkm`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `FK_ajuan` FOREIGN KEY (`id_ajuan`) REFERENCES `ajuan` (`id_ajuan`);

--
-- Ketidakleluasaan untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `FK_Admin` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
