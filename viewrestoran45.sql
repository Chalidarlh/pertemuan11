 USE TugasKelompok

 -- Daftar Kategori menu, menu
CREATE VIEW ViewKategoriMenuMenu AS
SELECT ps.Nama 
FROM [dbo].[KategoriMenu] AS b
JOIN  [dbo].[Menu] AS ps ON b.KategoriID = ps.KategoriID
GROUP BY ps.Nama;

select * from [dbo].[ViewKategoriMenuMenu];

ALTER VIEW [dbo].[ViewKategoriMenuMenu] AS
SELECT ps.Nama, b.NamaKategori 
FROM [dbo].[KategoriMenu] AS b
JOIN  [dbo].[Menu] AS ps ON b.KategoriID = ps.KategoriID


-- Daftar pembayaran, pesanan
CREATE VIEW ViewPembayaranPesanan AS
SELECT b.JumlahBayar
FROM [dbo].[Pembayaran] AS b
JOIN [dbo].[Pesanan]  AS ps ON b.PembayaranID = ps.PesananID
GROUP BY b.JumlahBayar;

select * from [dbo].[ViewPembayaranPesanan];

ALTER VIEW [dbo].[ViewPembayaranPesanan] AS
SELECT b.JumlahBayar, b.MetodePembayaran, ps.TotalHarga 
FROM [dbo].[Pembayaran] AS b
JOIN [dbo].[Pesanan]  AS ps ON b.PembayaranID = ps.PesananID











