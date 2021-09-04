-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Sep 2021 pada 15.38
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `rangkuman` varchar(255) NOT NULL,
  `data_bersih` varchar(255) NOT NULL,
  `similaritas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `judul`, `kategori`, `rangkuman`, `data_bersih`, `similaritas`) VALUES
(1, 'Update Corona 3 September 2021: 4.116.890 Positif, 3.813.643 Sembuh, 134.930 Meninggal', 'nasional', 'Kasus positif COVID-19 di Indonesia hari ini bertambah 7.797. Jika diakumulasikan, maka totalnya...', 'update corona 3 september 2021 4 116 890 positif 3 813 643 sembuh 134 930 tinggal kasus positif covid-19 indonesia hari tambah 7 797 akumulasi total', 0),
(2, 'Satgas Minta Pemda Fokus Turunkan Angka Kematian Akibat Corona', 'nasional', 'Perkembangan baik penanganan pandemi Covid-19 (virus Corona) di Agustus 2021 jangan disikapi dengan lengah oleh semua pemerintah daerah (Pemda). Pemda wajib mencari tahu penyebab utama kasus kematian...', 'satgas minta pemda fokus turun angka mati akibat corona kembang baik tangan pandemi covid-19 virus corona agustus 2021 jangan sikap lengah semua perintah daerah pemda pemda wajib cari tahu utama kasus mati', 0),
(3, 'Sejumlah Antisipasi Satgas Hadapi Lonjakan Corona Saat PON dan Libur Panjang', 'nasional', 'Juru Bicara Pemerintah untuk Penanganan Covid-19 Wiku Adisasmito mengatakan, pemerintah terus melakukan berbagai upaya untuk menekan penularan virus Corona...', 'jumlah antisipasi satgas hadap lonjak corona pon libur panjang juru bicara perintah tangan covid-19 wiku adisasmito kata perintah terus laku bagai upaya tekan tular virus corona', 0),
(4, 'Eksistensi Satgas Lawan Pandemi DPR Dinilai Efektif Tekan Corona', 'nasional', 'Kinerja Satuan Tugas (Satgas) Lawan Covid-19 DPR RI diapresiasi oleh Pengurus Besar Serikat Mahasiswa Muslimin Indonesia (PB...', 'eksistensi satgas lawan pandemi dpr nilai efektif tekan corona kerja satu tugas satgas lawan covid-19 dpr ri apresiasi urus besar serikat mahasiswa muslimin indonesia pb', 0),
(5, 'Tren Kasus Corona Turun, Satgas Ingatkan Jangan Lengah', 'nasional', 'Juru Bicara Pemerintah untuk Penanganan Covid-19 Wiku Adisasmito mengatakan, bahwa tren kasus konfirmasi positif virus Corona (Covid-19)...', 'tren kasus corona turun satgas ingat jangan lengah juru bicara perintah tangan covid-19 wiku adisasmito kata tren kasus konfirmasi positif virus corona covid-19', 0),
(6, 'Bantu Penanganan Corona, Balitbang Golkar Bagikan Paket Sembako di Wilayah Jabodetabek', 'metro', 'Balitbang Golkar membagikan 1.000 paket sembako bagi warga yang tengah menjalani isolasi mandiri dan warga kurang mampu di wilayah Jabodetabek.', 'bantu tangan corona balitbang golkar paket sembako wilayah jabodetabek balitbang golkar 1 000 paket sembako warga tengah jalan isolasi mandiri warga kurang mampu wilayah jabodetabek', 0),
(7, 'Angka Kasus Corona Terus Turun, Demokrat Soroti Penyalahgunaan Data', 'nasional', 'Wakil Ketua MPR dari Fraksi Partai Demokrat, Syarief Hasan mendorong Pemerintah meningkatkan testing Covid-19 (virus Corona) serta total positivity rate PCR.', 'angka kasus corona terus turun demokrat sorot penyalahgunaan data wakil ketua mpr fraksi partai demokrat syarief hasan dorong perintah tingkat testing covid-19 virus corona total positivity rate pcr', 0),
(8, 'Update Corona: Positif 4.079.267 Orang, 3.743.716 Sembuh & 132.491 Meninggal', 'nasional', 'Kasus positif Covid-19 di Tanah Air kembali bertambah. Tercatat pada 30 Agustus 2021 bertambah 5.436 kasus. Sehingga akumulasi positif Covid-19 saat ini lebih dari 4 juta kasus atau sebanyak 4.073.831 kasus.', 'update corona positif 4 079 267 orang 3 743 716 sembuh 132 491 tinggal kasus positif covid-19 tanah air tambah catat 30 agustus 2021 tambah 5 436 kasus akumulasi positif covid-19 lebih 4 juta kasus banyak 4 073 831 kasus', 0),
(9, 'Kasus Corona di Tanah Air Mulai Membaik, PPKM Masih Berlanjutkah?', 'nasional', 'PPKM berlevel yang terus dilaksanakan di dan luar Jawa-Bali dalam sebulan terakhir berdampak positif bagi penanganan pandemi Covid-19 (virus Corona).', 'kasus corona tanah air mulai baik ppkm lanjut ppkm level terus laksana luar jawa-bali bulan akhir dampak positif tangan pandemi covid-19 virus corona', 0),
(10, 'Bila Siswa atau Guru Terpapar Corona pada PTM Terbatas, Sekolah Ditutup 3 Hari', 'metro', 'Pemprov DKI Jakarta mulai mengadakan pembelajaran tatap muka (PTM) terbatas di 610 sekolah mulai besok Senin (30/8/2021). Bila dalam perjalanannya ada warga sekolah baik siswa atau guru terpapar Corona, maka satuan pendidikan tersebut ditutup selama 3 har', 'bila siswa guru papar corona ptm batas sekolah tutup 3 hari pemprov dki jakarta mulai ajar tatap muka ptm batas 610 sekolah mulai besok senin 30 8 2021 bila jalan warga sekolah baik siswa guru papar corona satu didik sebut tutup lama 3 hari', 0),
(11, 'Ketika Gaming Bertemu Fashion, Ini Air Jordan ASUS ROG X Nevertoolavish', 'tekno', 'Kolaborasi antara gaming dan fashion belakangan semakin ngetren. Ini dilakukan ASUS ROG Phone 5 yang berkolaborasi dengan street artist Indonesia, Nevertoolavish, lewat koleksi Nike Air Jordan monokrom hitam-putih.', 'gaming temu fashion air jordan asus rog x nevertoolavish kolaborasi gaming fashion belakang makin ngetren laku asus rog phone 5 kolaborasi street artist indonesia nevertoolavish lewat koleksi nike air jordan monokrom hitam-putih', 0),
(12, 'Logitech G Rilis Headset Gaming G Pro X Tanpa Kabel, Harga Rp2 Jutaan', 'tekno', 'Logitech G, merek dari Logitech yang menyasar gaming, sudah memiliki headset Logitech G Pro X. Nah, yang terbaru, mereka akan membawa versi nirkabel headset tersebut ke Indonesia.', 'logitech g rilis headset gaming g pro x kabel harga rp2 juta logitech g merek logitech sasar gaming milik headset logitech g pro x nah baru bawa versi nirkabel headset sebut indonesia', 0),
(13, 'BenQ Mobiuz Luncurkan Monitor Gaming Terbaru', 'tekno', 'PT BenQ Teknologi Indonesia.resmi meluncurkan Monitor Gaming MOBIUZ yang dirancang khusus untuk membawa pengalaman gaming imajinasi Anda ke realita.', 'benq mobiuz luncur monitor gaming baru pt benq teknologi indonesia resmi luncur monitor gaming mobiuz rancang khusus bawa alam gaming imajinasi realita', 0),
(14, 'XL Mulai Demo Layanan 5G, Ada 4K, VR, dan Cloud Gaming', 'tekno', 'Setelah Telkomsel dan Indosat, kini giliran XL Axiata yang mulai mengakselerasi jaringan 5G.', 'xl mulai demo layan 5g 4k vr cloud gaming telkomsel indosat kini gilir xl axiata mulai akselerasi jaring 5g', 0),
(15, 'Gandeng Baim Wong, MPL Siap Kembangkan Industri Gaming Indonesia', 'ekbis', 'Kolaborasi dengan Baim Wong memperkuat komitmen jangka panjang MPL untuk mengedukasi pengguna dan mendorong perkembangan mobile eSport di Indonesia.', 'gandeng baim wong mpl siap kembang industri gaming indonesia kolaborasi baim wong kuat komitmen jangka panjang mpl edukasi dorong kembang mobile esport indonesia', 0),
(16, 'Streamer Facebook Gaming Singapura JEFF TV Taklukkan Industri Game Indonesia', 'tekno', 'Menjadi content creator serta streamer di platform Facebook Gaming membutuhkan perjuangan yang tinggi. Jika tidak, maka keberhasilan akan jauh dari genggaman.', 'streamer facebook gaming singapura jeff tv takluk industri game indonesia jadi content creator streamer platform facebook gaming butuh juang tinggi hasil jauh genggam', 0),
(17, 'Kriteria Ponsel Gaming yang Memuaskan Menurut Gamer PokoPow', 'tekno', 'Ponsel yang ideal untuk bermain game biasanya memiliki prosesor kencang, sehingga bisa melibas game-game berat. Tapi, kriteria ponsel gaming tidak hanya itu saja.', 'kriteria ponsel gaming muas turut gamer pokopow ponsel ideal main game biasa milik prosesor kencang libas game-game berat kriteria ponsel gaming', 0),
(18, 'Targetkan Remaja dan Wanita, Wired Gaming Headset Logitech G335 Paling Ringan di Pasaran', 'tekno', 'Logitech G, sub brand Logitech untuk gaming mengenalkan headset gaming terbaru dengan desain ramping, cantik, dan ringan. Ada dua warna tersedia, hitam dan putih, dan banderolnya cukup terjangkau, yakni Rp839,000.', 'target remaja wanita wired gaming headset logitech g335 paling ringan pasar logitech g sub brand logitech gaming kenal headset gaming baru desain ramping cantik ringan warna sedia hitam putih banderol cukup jangkau rp839 000', 0),
(19, 'Rp16 Juta Sampai Rp60 Juta, Harga ASUS ROG dan TUF Gaming Terbaru, Ini Speknya!', 'tekno', 'ASUS memperkenalkan jajaran laptop gaming terbarunya, yang terdiri dari lini ROG dan TUF Gaming.', 'rp16 juta rp60 juta harga asus rog tuf gaming baru speknya asus kenal jajar laptop gaming baru diri lini rog tuf gaming', 0),
(20, 'Logitech G Hadirkan G335 Wired Gaming Headset', 'tekno', 'Logitech G, sebuah merek dari Logitech (SIX: LOGN) (NASDAQ: LOGI) dan inovator terkemuka dalam teknologi dan perlengkapan gaming', 'logitech g hadir g335 wired gaming headset logitech g buah merek logitech six logn nasdaq log inovator muka teknologi lengkap gaming', 0),
(21, 'Coki Pardede Pakai Sabu, Tretan Muslim Curiga Sejak Lama', 'lifestyle', 'Coki Pardede terbukti menggunakan narkoba...', 'cok pardede pakai sabu tretan muslim curiga sejak lama cok pardede bukti narkoba', 0),
(22, 'Coki Pardede Minta Penggemar Sabar Usai Ditetapkan Jadi Tersangka', 'lifestyle', 'Coki Pardede meminta para penggemarnya untuk bersabar usai dirinya ditetapkan jadi tersangka...', 'cok pardede minta gemar sabar usai tetap jadi sangka cok pardede minta gemar sabar usai diri tetap jadi sangka', 0),
(23, 'Coki Pardede Suntik Sabu Lewat Dubur, Berisiko HIV', 'lifestyle', 'Coki Pardede menggunakan sabu dengan cara', 'cok pardede suntik sabu lewat dubur risiko hiv cok pardede sabu cara', 0),
(24, 'Penangkapan Coki Pardede Bermula dari Ocehan Wanita Kurir Narkoba', 'metro', 'Penangkapan Komika Coki Pardede dalam kasus penyalahgunaan narkoba bermula dari tertangkap seorang wanita yang merupakan...', 'tangkap cok pardede mula oceh wanita kurir narkoba tangkap komika cok pardede kasus penyalahgunaan narkoba mula tangkap orang wanita rupa', 0),
(25, 'Ditetapkan Tersangka Penyalahgunaan Narkoba, Coki Pardede Minta Maaf ke Orang Tua', 'metro', 'Penyidik Polres Tangerang menetapkan komika Coki Pardede sebagai tersangka atas kasus penyalahgunaan narkoba....', 'tetap sangka penyalahgunaan narkoba cok pardede minta maaf orang tua sidik polres tangerang tetap komika cok pardede bagai sangka atas kasus penyalahgunaan narkoba', 0),
(26, 'Coki Pardede Ditangkap Saat Sedang Menonton Video Gay, Polisi Sebut Ada Kelainan Seksual', 'lifestyle', 'Polisi mengungkap fakta terbaru yang mengejutkan terkait Coki Pardede. Selain mengkonsumsi sabu,...', 'cok pardede tangkap sedang tonton video gay polisi sebut seksual polisi ungkap fakta baru kejut kait cok pardede konsumsi sabu', 0),
(27, 'Dalami Kasus Sabu Coki Pardede, Polisi Selidiki Kemungkinan Jaringan Komika', 'metro', 'Komika Coki Pardede diringkus polisi terkait kasus penyalahgunaan...', 'kasus sabu cok pardede polisi selidik mungkin jaring komika komika cok pardede ringkus polisi kait kasus penyalahgunaan', 0),
(28, 'Sejak Kuliah Kenal Sabu, Polisi: Coki Tiap Kali Pakai 1 Gram', 'metro', 'Komika Coki Pardede diketahui menggunakan sabu...', 'sejak kuliah kenal sabu polisi cok tiap kali pakai 1 gram komika cok pardede tahu sabu', 0),
(29, 'Ini Alasan Komika Coki Pardede Pakai Narkoba Jenis Sabu', 'lifestyle', 'Kapolres Metro Tangerang Kota Kombes Deonijiu de Fatima mengungkap alasan Coki Pardede mengkonsumsi narkoba jenis', 'alas komika cok pardede pakai narkoba jenis sabu kapolres metro tangerang kota kombes deonijiu de fatima ungkap alas cok pardede konsumsi narkoba jenis', 0),
(30, 'Coki Pardede Menggunakan Sabu dengan Tiga Cara, Semuanya Sangat Berbahaya', 'metro', 'Kasat Resnarkoba Polrestro Tangerang Kota AKBP Pratomo Widodo mengungkapkan ada tiga cara yang dilakukan&nbsp Coki Pardede...', 'cok pardede sabu tiga cara semua sangat bahaya kasat resnarkoba polrestro tangerang kota akbp pratomo widodo ungkap tiga cara laku nbsp cok pardede', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
