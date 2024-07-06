-- Nama : Riska Niswati Hasanah
-- NIM : 22241054
-- LAPORAN UAS

use undikma_mart;
-- No 1
-- Tampilkan hanya 5 nama produk yang memiliki pendapatan(revenue) penjualan terkecil
SELECT nama_produk, SUM(qty * (harga - (diskon_persen / 100) * harga)) AS total_revenue
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY total_revenue ASC
limit 5;

-- Soal 1 
/* Tampilkan hanya 5 nama produk yang memiliki pendapatan (Revenue) penjualan paling kecil.*/

SELECT nama_produk, 
SUM(qty*(harga-(diskon_persen/100)*harga)) as total_revenue
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY total_revenue DESC
LIMIT 5;

-- No 1
-- Tampilkan hanya 5 nama produk yang memiliki pendapatan(revenue) penjualan terkecil
SELECT nama_produk, qty, harga,
diskon_persen,(diskon_persen/100)*harga AS diskon,
qty*(harga - (diskon_persen/100)*harga) AS total_bayar
FROM tr_penjualan_dqlab
ORDER BY total_bayar asc
limit 5;




-- No 2
/*tampilkan hanya 3 kategori produk, dan total pendapatan(revenue) yang berstatus follow up dengan ketentuan:
jika revenue >=900000 = target Achived
jika revenue <900000 = less perfomance
jika tidak keduanya = follow update

NB: pakai case, dan join
*/

SELECT kode_pelanggan, COUNT(kode_transaksi) AS total_order, SUM(qty) AS total_quantity, SUM(harga * qty) AS revenue,
CASE 
WHEN SUM(harga * qty) THEN 'follow update'
ELSE 'follow update'
END AS remark
FROM tr_penjualan_dqlab
HAVING kode_pelanggan
limit 3;

SELECT kode_pelanggan, COUNT(kode_transaksi) AS total_order, SUM(qty) AS total_quantity, SUM(harga * qty) AS revenue,
CASE 
WHEN SUM(harga * qty) THEN 'follow update'
ELSE 'follow update'
END AS remark
FROM tr_penjualan_dqlab
GROUP BY kode_pelanggan
limit 3;


SELECT pr.kategori_produk,SUM(t.qty * (t.harga - (t.diskon_persen / 100) * t.harga)) AS total_revenue
FROM tr_penjualan_dqlab t
LEFT JOIN ms_produk_dqlab pr 
ON t.kode_produk = pr.kode_produk
GROUP BY pr.kategori_produk
HAVING CASE 
WHEN SUM(t.qty * (t.harga - (t.diskon_persen / 100) * t.harga)) >= 90000 THEN 'Target Achieved'
WHEN SUM(t.qty * (t.harga - (t.diskon_persen / 100) * t.harga)) < 90000 THEN 'Less Performance'
ELSE 'Follow Update'
END = 'Follow Update'
ORDER BY total_revenue LIMIT 3;

SELECT pr.kategori_produk,SUM(t.qty * (t.harga - (t.diskon_persen / 100) * t.harga)) AS total_revenue
FROM tr_penjualan_dqlab t
LEFT JOIN ms_produk_dqlab pr 
ON t.kode_produk = pr.kode_produk
GROUP BY pr.kategori_produk
HAVING CASE 
WHEN SUM(t.qty * (t.harga - (t.diskon_persen / 100) * t.harga)) >= 90000 THEN 'Target Achieved'
WHEN SUM(t.qty * (t.harga - (t.diskon_persen / 100) * t.harga)) < 90000 THEN 'Less Performance'
ELSE 'Follow Update'
END = 'Follow Update'
ORDER BY total_revenue DESC LIMIT 3;

-- NO 3
-- Tampilkan semua nama pelanggan, alamat pelanggan yang tidak pernah belanja wajib menggunakan join
SELECT mpd.nama_pelanggan, mpd.alamat
FROM ms_pelanggan_dqlab AS mpd LEFT JOIN tr_penjualan_dqlab AS tp
ON mpd.nama_pelanggan = mpd.alamat
WHERE tp.qty IS NULL;