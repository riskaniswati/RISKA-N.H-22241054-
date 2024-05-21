-- Nama : Riska Niswati Hasanah
-- NIM : 22241054
-- Modul 1

-- Menggunakan Database
use mart_undikma;

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
