
CREATE VIEW ViewKategoriMenu AS
SELECT m.MenuID, m.Nama AS NamaMenu, k.NamaKategori, m.Harga
FROM Menu m
JOIN KategoriMenu k ON m.KategoriID = k.KategoriID;


-- View 1: Daftar pelanggan dan jumlah pesanan mereka
CREATE VIEW View_Pelanggan_Pesanan AS
SELECT 
    p.PelangganID,
    p.Nama AS NamaPelanggan,
    COUNT(ps.PesananID) AS JumlahPesanan
FROM 
    Pelanggan p
LEFT JOIN 
    Pesanan ps ON p.PelangganID = ps.PelangganID
GROUP BY 
    p.PelangganID, p.Nama;

-- View 4: Menu berdasarkan kategori
CREATE VIEW View_Menu_Kategori AS
SELECT 
    m.MenuID,
    m.Nama AS NamaMenu,
    km.NamaKategori,
    m.Harga
FROM 
    Menu m
JOIN 
    KategoriMenu km ON m.KategoriID = km.KategoriID;


-- View 7: Daftar menu dengan harga lebih dari Rp50.000
CREATE VIEW View_Menu_Mahal AS
SELECT 
    m.MenuID,
    m.Nama AS NamaMenu,
    km.NamaKategori,
    m.Harga
FROM 
    Menu m
JOIN 
    KategoriMenu km ON m.KategoriID = km.KategoriID
WHERE 
    m.Harga > 50000;




