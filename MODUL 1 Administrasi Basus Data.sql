-- Nama : Riska Niswati Hasanah
-- NIM : 22241054
-- Modul 1

-- Menggunakan database undikma_mart;
use undikma_mart;

-- Menggambil data nama_produk dari tabel ms_produk_dqlab
SELECT nama_produk FROM ms_produk_dqlab;

-- Mengambil lebih dari satu kolom
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- Mengambil seluruh kolom tabel
SELECT * FROM ms_produk_dqlab;

-- Latihan
-- 1. Mengambil kolom kode_produk, nama_produk dari tabel ms_produk
SELECT kode_produk, nama_produk FROM ms_produk_dqlab;

-- 2. Mengambil seluruh kolom dari tabel tr_penjualan
SELECT * FROM tr_penjualan_dqlab;

-- ALIAS & PREFIX
-- Contoh PREFIX
SELECT ms_produk_dqlab_.nama_produk FROM ms_produk_dqlab;

SELECT undikma_mart.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- Contoh ALIAS didalan kolom
SELECT nama_produk as np FROM ms_produk_dqlab;
SELECT nama_produk np FROM ms_produk_dqlab;

-- Contoh ALIAS didalam tabel
SELECT nama_produk FROM ms_produk_dqlab as mpl;

-- Contoh penggunaan ALIAS di dalam PREFIX
SELECT mpl.nama_produk FROM ms_produk_dqlab as mpl;

-- Case 1
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;

-- Case 2
SELECT nama_produk, harga FROM ms_produk_dqlab;