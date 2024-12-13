--Daftar Pelanggan, alamat, dan tanggal pesanannya
CREATE VIEW ViewPesananPelanggan AS
SELECT pl.Nama
FROM [dbo].[Pelanggan] AS pl
JOIN[dbo].[Pesanan] AS ps ON pl.PelangganID = ps.PelangganID
GROUP BY pl.Nama;

ALTER VIEW ViewPesananPelanggan AS
SELECT pl.Nama, pl.Alamat, ps.TanggalPesanan
FROM [dbo].[Pelanggan] AS pl
JOIN[dbo].[Pesanan] AS ps ON pl.PelangganID = ps.PelangganID
GROUP BY pl.Nama, pl.Alamat, ps.TanggalPesanan;

SELECT*FROM [dbo].[ViewPesananPelanggan];

-- Daftar Nama Pelanggan, jumlah pesanan, jumlah bayar, dan metode pembayarannya
CREATE VIEW ViewPembayaranPesananPelanggan AS
SELECT pl.Nama, ps.Jumlah, pb.JumlahBayar, pb.MetodePembayaran
FROM [dbo].[Pelanggan] AS pl
JOIN [dbo].[Pesanan] AS ps ON pl.PelangganID = ps.PelangganID
JOIN [dbo].[Pembayaran] AS pb ON pb.PesananID = ps.PesananID

SELECT*FROM [dbo].[ViewPembayaranPesananPelanggan];

--Daftar Nama Pelanggan Yang Metode Pembayarannya Cash
CREATE VIEW ViewPembayaranCash AS
SELECT pl.Nama, pb.MetodePembayaran
FROM [dbo].[Pelanggan] AS pl
JOIN [dbo].[Pesanan] AS ps ON pl.PelangganID = ps.PelangganID
JOIN [dbo].[Pembayaran] AS pb ON pb.PesananID = ps.PesananID
WHERE pb.MetodePembayaran = 'Cash';

SELECT*FROM [dbo].[ViewPembayaranCash];


