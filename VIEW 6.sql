CREATE TABLE Pelanggan (
	PelangganID INT IDENTITY(1, 1) PRIMARY KEY,
	Nama VARCHAR (50) NOT NULL,
	Telepon VARCHAR(12) NOT NULL,
    Alamat VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE KategoriMenu(
	KategoriID INT IDENTITY(1, 1) PRIMARY KEY,
	NamaKategori VARCHAR (50) NOT NULL
)

CREATE TABLE Menu (
	MenuID INT IDENTITY(1, 1) PRIMARY KEY,
	Nama VARCHAR(50) NOT NULL,
	KategoriID INT
		FOREIGN KEY (KategoriID) REFERENCES KategoriMenu(KategoriID)
		ON UPDATE CASCADE ON DELETE CASCADE,
	Harga DECIMAL(10, 2) NOT NULL
)

CREATE TABLE Pesanan (
	PesananID INT IDENTITY (1,1) PRIMARY KEY,
	PelangganID INT
		FOREIGN KEY (PelangganID) REFERENCES Pelanggan(PelangganID)
		ON UPDATE CASCADE ON DELETE CASCADE,
	TotalHarga DECIMAL(10, 2) NOT NULL,
    TanggalPesanan DATE NOT NULL
)

CREATE TABLE Pembayaran (
    PembayaranID INT IDENTITY (1,1) PRIMARY KEY,
    PesananID INT
		FOREIGN KEY (PesananID) REFERENCES Pesanan(PesananID)
		ON UPDATE CASCADE ON DELETE CASCADE,
    MetodePembayaran VARCHAR(15) NOT NULL,
    JumlahBayar DECIMAL(10, 2) NOT NULL CHECK (JumlahBayar > 0),
    TanggalPembayaran DATE NOT NULL
);



INSERT INTO [dbo].[Pelanggan] ([Nama],[Telepon],[Alamat],[Email])
VALUES
('Sufi', '081953156184', 'Sukabumi', 'sufi@gmail.com'),
('Nur', '08998742136', 'Bandung', 'nur@gmail.com'),
('fauzi', '083820744806', 'Bandung', 'fauzi@gmail.com'),
('chalida', '085722089475', 'Bandung', 'chalida@gmail.com'),
('Kresna', '085797385431', 'Cianjur', 'kresna@gmail.com'),
('Jhosua', '089123115768', 'Bandung', 'jhosua@gmail.com'),
('Moreno', '081277239811', 'Sukabumi', 'moreno@gmail.com'),
('Tyezar', '086690123798', 'Bandung', 'ityezar@gmail.com'),
('Sachrul', '085789136420', 'Cianjur', 'sachrul@gmail.com.com'),
('Aqillah', '089147892366', 'Belitung', 'aqil@gmail.com'),
('Andre', '089156229014', 'Batam', 'andre@gmail.com'),
('Riyadu', '081226981209', 'Bandung', 'charlotte.riyadu@gmail.com'),
('Ade', '085762149925', 'Kuningan', 'ade@gmail.com'),
('Dhiaul', '081299765314', 'Ambon', 'dhiaul@gmail.com'),
('Reza', '081287206531', 'Bandung', 'reza@gmail.com'),
('Arya', '085789091546', 'Belitung', 'arya@gmail.com'),
('Bryan', '081267981524', 'Cianjur', 'bryan@gmail.com'),
('Alya', '081219096723', 'Padang', 'alya@gmail.com'),
('Dara', '081212678790', 'Cianjur', 'dara@gmail.com'),
('Rival', '081217890925', 'Indramayu', 'rival@gmail.com'),
('Valdric', '081212347895', 'Bandung', 'valdric@gmail.com'),
('Eva', '081267091298', 'Cirebon', 'eva@gmail.com'),
('Samuel', '081289167809', 'Yogya', 'samuel@gmail.com'),
('Noel', '081212435725', 'Jakarta', 'noel@gmail.com'),
('Rere', '085765148877', 'Cilacap', 'rere@gmail.com'),
('Ella', '081265879901', 'Cimahi', 'ella@gmail.com'),
('Hilman', '085766123390', 'Kuningan', 'hilman@gmail.com'),
('Zefanya', '085712549901', 'Jakarta', 'zefanya@gmail.com'),
('Hansen', '081267142098', 'Cianjur', 'hansen@gmail.com'),
('Reva', '081290871656', 'Jakarta', 'reva@gmail.com');

INSERT INTO [dbo].[KategoriMenu] ([NamaKategori])
VALUES 
('makanan'),
('minuman'),
('dessert');

INSERT INTO [dbo].[Menu] ([Nama],[KategoriID],[Harga])
VALUES
('Burger', 1, 35.000),
('Pizza', 1, 120.000),
('Pasta', 1, 30.000),
('Salad', 1, 25.000),
('Steak', 1, 150.000),
('Fries', 1, 30.000),
('Sandwich', 1, 25.000),
('Sushi', 1, 70.000),
('Tacos', 1, 40.000),
('Soup', 1, 28.000),
('Noodles', 1, 20.000),
('Curry', 1, 35.000),
('Ice Cream', 3, 25.000),
('Brownie', 3, 28.000),
('Cheesecake', 3, 35.000),
('Pancake', 3, 30.000),
('Pie', 3, 32.000),
('Donut', 3, 18.000),
('Coffee', 2, 20.000),
('Tea', 2, 10.000),
('Juice', 2, 12.000),
('Milkshake', 2, 25.000),
('Smoothie', 2, 28.000),
('Water', 2, 5.000),
('Soda', 2, 10.000),
('Latte', 2, 20.000),
('Espresso', 2, 18.000),
('Mojito', 2, 35.000),
('Cocktail', 2, 40.000),
('Wine', 2, 90.000);

INSERT INTO [dbo].[Pesanan]([PelangganID], [TotalHarga], [TanggalPesanan])
VALUES
(1, 30.000, '2019-07-26'),
(2, 40.000, '2024-12-01'),
(3, 50.000, '2021-02-01'),
(4, 90.000, '2024-06-27'),
(5, 65.000, '2022-04-16'),
(6, 22.000, '2024-07-22'),
(7, 20.000, '2023-11-15'),
(8, 120.000, '2024-08-21'),
(9, 40.000, '2022-11-23'),
(10, 70.000, '2024-12-19'),
(11, 80.000, '2017-07-15'),
(12, 50.000, '2019-11-04'),
(13, 50.000, '2023-12-15'),
(14, 35.000, '2024-08-25'),
(15, 35.000, '2022-05-23'),
(16, 15.000, '2021-01-27'),
(17, 60.000, '2018-02-19'),
(18, 75.000, '2019-11-11'),
(19, 150.000, '2023-09-12'),
(20, 40.000, '2022-05-08'),
(21, 60.000, '2024-01-08'),
(22, 30.000, '2022-08-13'),
(23, 20.000, '2023-04-26'),
(24, 25.000, '2019-03-21'),
(25, 70.000, '2017-11-19'),
(26, 45.000, '2022-12-22'),
(27, 55.000, '2024-05-21'),
(28, 80.000, '2023-07-09'),
(29, 40.000, '2022-12-18'),
(30, 60.000, '2021-11-13');

INSERT INTO [dbo].[Pembayaran] ([PesananID], [MetodePembayaran], [JumlahBayar], [TanggalPembayaran]) 
VALUES 
(1, 'Cash', 30.000, '2019-07-26'),
(2, 'Credit Card', 40.000, '2024-12-01'),
(3, 'Debit Card', 50.000, '2021-02-01'),
(4, 'Cash', 90.000, '2024-06-27'),
(5, 'Credit Card', 65.000, '2022-04-16'),
(6, 'Debit Card', 22.000, '2024-07-22'),
(7, 'Cash', 20.000, '2023-11-15'),
(8, 'Credit Card', 120.000, '2024-08-21'),
(9, 'Debit Card', 40.000, '2022-11-23'),
(10, 'Cash', 70.000, '2024-12-19'),
(11, 'Credit Card', 80.000, '2017-07-15'),
(12, 'Debit Card', 50.000, '2019-11-04'),
(13, 'Cash', 50.000, '2023-12-15'),
(14, 'Credit Card', 35.000, '2024-08-25'),
(15, 'Debit Card', 35.000, '2022-05-23'),
(16, 'Cash', 15.000, '2021-01-27'),
(17, 'Credit Card', 60.000, '2018-02-19'),
(18, 'Debit Card', 75.000, '2019-11-11'),
(19, 'Cash', 150.000, '2023-09-12'),
(20, 'Credit Card', 40.000, '2022-05-08'),
(21, 'Debit Card', 60.000, '2024-01-08'),
(22, 'Cash', 30.000, '2022-08-13'),
(23, 'Credit Card', 20.000, '2023-04-26'),
(24, 'Debit Card', 25.000, '2019-03-21'),
(25, 'Cash', 70.000, '2017-11-19'),
(26, 'Credit Card', 45.000, '2022-12-22'),
(27, 'Debit Card', 55.000, '2024-05-21'),
(28, 'Cash', 80.000, '2023-07-09'),
(29, 'Credit Card', 40.000, '2022-12-18'),
(30, 'Debit Card', 60.000, '2021-11-13');

SELECT * FROM[dbo].[Pelanggan]
SELECT* FROM [dbo].[Menu]
SELECT*FROM [dbo].[Pesanan]

SELECT a., b.
FROM [dbo].[Pelanggan] AS a
FULL JOIN  [dbo].[Pesanan] AS b ON a.PelangganID = b.PesananID;
