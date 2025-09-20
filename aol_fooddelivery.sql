-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2024 pada 07.51
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aol_fooddelivery`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mscustomer`
--

CREATE TABLE `mscustomer` (
  `customerId` char(5) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `customerAddress` varchar(100) NOT NULL,
  `customerPhone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mscustomer`
--

INSERT INTO `mscustomer` (`customerId`, `customerName`, `customerAddress`, `customerPhone`) VALUES
('CU001', 'Alice', 'Jalan Merdeka 1', '81234567890'),
('CU002', 'Bob', 'Jalan Sejahtera 2', '82345678901'),
('CU003', 'Carol', 'Jalan Raya 3', '83456789012'),
('CU004', 'Dave', 'Jalan Kebangsaan 4', '84567890123'),
('CU005', 'Eva', 'Jalan Cendana 5', '85678901234'),
('CU006', 'Fiona', 'Jalan Sutera 6', '86789012345'),
('CU007', 'George', 'Jalan Merpati 7', '87890123456'),
('CU008', 'Hannah', 'Jalan Taman 8', '88901234567'),
('CU009', 'Isaac', 'Jalan Bahagia 9', '89012345678'),
('CU010', 'Jack', 'Jalan Merdeka 10', '81123456789'),
('CU011', 'Karen', 'Jalan Sejahtera 11', '82234567890'),
('CU012', 'Leo', 'Jalan Raya 12', '83345678901'),
('CU013', 'Mia', 'Jalan Raya 13', '84456789012'),
('CU014', 'Nathan', 'Jalan Cendana 14', '85567890123'),
('CU015', 'Olivia', 'Jalan Sutera 15', '86678901234'),
('CU016', 'Peter', 'Jalan Merpati 16', '87789012345'),
('CU017', 'Quinn', 'Jalan Bahagia 17', '88890123456'),
('CU018', 'Rose', 'Jalan Taman 18', '89901234567'),
('CU019', 'Steve', 'Jalan Raya 19', '81234567890'),
('CU020', 'Tina', 'Jalan Merdeka 20', '82345678901');

-- --------------------------------------------------------

--
-- Struktur dari tabel `msdelivery`
--

CREATE TABLE `msdelivery` (
  `deliveryId` char(5) NOT NULL,
  `deliveryDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `msdelivery`
--

INSERT INTO `msdelivery` (`deliveryId`, `deliveryDate`) VALUES
('D001', '2024-11-01'),
('D002', '2024-11-02'),
('D003', '2024-11-03'),
('D004', '2024-11-04'),
('D005', '2024-11-05'),
('D006', '2024-11-06'),
('D007', '2024-11-07'),
('D008', '2024-11-08'),
('D009', '2024-11-09'),
('D010', '2024-11-10'),
('D011', '2024-11-02'),
('D012', '2024-11-03'),
('D013', '2024-11-04'),
('D014', '2024-11-05'),
('D015', '2024-11-06'),
('D016', '2024-11-07'),
('D017', '2024-11-08'),
('D018', '2024-11-09'),
('D019', '2024-11-10'),
('D020', '2024-11-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `msdriver`
--

CREATE TABLE `msdriver` (
  `driverId` char(5) NOT NULL,
  `driverName` varchar(50) NOT NULL,
  `driverPhone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `msdriver`
--

INSERT INTO `msdriver` (`driverId`, `driverName`, `driverPhone`) VALUES
('DR001', 'Darren Bekti', '81234567892'),
('DR002', 'Kevin Agatha', '82345678903'),
('DR003', 'Marco Makin', '83456789014'),
('DR004', 'Jojo Andrew', '84567890125'),
('DR005', 'Moreno Patrizio', '85678901236');

-- --------------------------------------------------------

--
-- Struktur dari tabel `msfood`
--

CREATE TABLE `msfood` (
  `foodId` char(5) NOT NULL,
  `foodName` varchar(50) NOT NULL,
  `foodPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `msfood`
--

INSERT INTO `msfood` (`foodId`, `foodName`, `foodPrice`) VALUES
('F001', 'Spicy Ramen', 25000),
('F002', 'Chicken Ramen', 30000),
('F003', 'Beef Ramen', 35000),
('F004', 'Seafood Ramen', 40000),
('F005', 'Veggie Ramen', 22000),
('F006', 'Miso Ramen', 26000),
('F007', 'Tofu Ramen', 28000),
('F008', 'Pork Ramen', 33000),
('F009', 'Shrimp Ramen', 37000),
('F010', 'Kimchi Ramen', 24000),
('F011', 'Curry Ramen', 27000),
('F012', 'Spicy Seafood', 38000),
('F013', 'Veggie Soup', 20000),
('F014', 'Chicken Soup', 21000),
('F015', 'Garlic Ramen', 22000),
('F016', 'Shrimp Tempura', 33000),
('F017', 'Spicy Tofu', 27000),
('F018', 'Chicken Tempura', 35000),
('F019', 'Miso Soup', 22000),
('F020', 'Tofu Soup', 23000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mspayment`
--

CREATE TABLE `mspayment` (
  `paymentId` char(5) NOT NULL,
  `paymentMethod` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mspayment`
--

INSERT INTO `mspayment` (`paymentId`, `paymentMethod`) VALUES
('PY001', 'GoPay'),
('PY002', 'Cash'),
('PY003', 'OVO'),
('PY004', 'Credit Card'),
('PY005', 'DANA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `msrestaurant`
--

CREATE TABLE `msrestaurant` (
  `restaurantId` char(5) NOT NULL,
  `restaurantName` varchar(50) NOT NULL,
  `restaurantAddress` varchar(100) NOT NULL,
  `restaurantPhone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `msrestaurant`
--

INSERT INTO `msrestaurant` (`restaurantId`, `restaurantName`, `restaurantAddress`, `restaurantPhone`) VALUES
('R001', 'Cita Rasa', 'Jalan Tengah 30', '89344489381'),
('R002', 'Foodless', 'Jalan Raya 10', '83697452085'),
('R003', 'Tawan', 'Jalan Barat 40', '83752106200'),
('R004', 'Marugame', 'Jalan Utara 50', '88914390820'),
('R005', 'Pendopo', 'Jalan Timur 20', '81296120998');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mscustomer`
--
ALTER TABLE `mscustomer`
  ADD PRIMARY KEY (`customerId`);

--
-- Indeks untuk tabel `msdelivery`
--
ALTER TABLE `msdelivery`
  ADD PRIMARY KEY (`deliveryId`);

--
-- Indeks untuk tabel `msdriver`
--
ALTER TABLE `msdriver`
  ADD PRIMARY KEY (`driverId`);

--
-- Indeks untuk tabel `msfood`
--
ALTER TABLE `msfood`
  ADD PRIMARY KEY (`foodId`);

--
-- Indeks untuk tabel `mspayment`
--
ALTER TABLE `mspayment`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indeks untuk tabel `msrestaurant`
--
ALTER TABLE `msrestaurant`
  ADD PRIMARY KEY (`restaurantId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
