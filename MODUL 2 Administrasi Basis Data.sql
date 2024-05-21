-- Nama : Riska Niswati Hasanah
-- NIM : 22241054
-- Modul 1

-- Menggunakan Database
use undikma_mart;

-- Nilai Literial Angka
SELECT 77;
SELECT 77 as angka;

-- Menampilkan beberapa nilai literial dengan tipe data berbeda
SELECT 77 as angka,
true as nilai_logika,
'UNDIKMA' as teks;

-- NULL
-- Menampilkan NULL
SELECT NULL as kosong;

-- Operator Matematika 
-- Kalkulasi ekspresi matematika
SELECT 5%2 as Sisa_bagi,
5/2 as hasil_bagi_1,
5 DIV 2 hasil_bagi_2;

-- Perhitungan matematika
SELECT 4*2 "(4 dikali 2)",
(4*8) %7,
(4*8) MOD 7;

-- Menampilkan total belanja
SELECT qty*harga AS total_belanja
FROM tr_penjualan_dqlab;
 
 -- OPERATOR PERBANDINGAN
 -- melakukan operator perbandigan
 SELECT 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;
 
 -- Latihan Mandiri
 SELECT 1=true,
 1=false,
 5>=5,
 5.2=5.20000,
 NULL = 1,
 NULL = NULL;
 
 
 -- FUNGSI  
 SELECT pow(3,2),
round(3.14), round(3.54),
round(3.155, 1), round(3.155, 2),
floor(4.28), floor(4.78),
ceiling(4.39), ceiling(4.55);


SELECT now(), year(now()),
datediff(now(), '2003-07-27'), day('2003-07-27');

-- Latihan 
SELECT DATEDIFF('2003-07-27', NOW()),
YEAR('2003-07-27'),
MONTH('2003-07-27'),
DAY('2003-07-27'),
YEAR(NOW());

-- selisih hari antara tgl penjual hari terakhir dengan hari ini
SELECT datediff(now(), tgl_transaksi FROM tr_penjualan_dqlab;

-- Filtering with WHERE
SELECT nama_produk, qty
FROM tr_penjualan_dqlab
WHERE qty > 3;
