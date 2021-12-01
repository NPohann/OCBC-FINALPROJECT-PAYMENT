-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2021 pada 10.30
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paymentdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(95) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(95) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(95) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(95) NOT NULL,
  `RoleId` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(95) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('1d05c0c9-e1c2-4009-adcc-db4466cebe64', 'Pohann', 'POHANN', 'npohan44@gmail.com', 'NPOHAN44@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEK4JLDanxIkwf1PuoB+wj1yvXzM5ceg3EXRft8kC02hTi1t64lo1nFw8nrcqw+wy2g==', 'NQXPGXQOX6BYAAP64TEX5FTNY54VCNGG', 'bb78964a-60c9-4f12-b047-9d8f014df00f', NULL, 0, 0, NULL, 1, 0),
('2c0d2791-b2c9-416c-83ce-632987d5f09d', 'Randy', 'RANDY', 'randy@gmail.com', 'RANDY@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAENGE0ChcPLcuQdbRDVTlX59WjQafBk2YXLV2wiPNdno2ER0FY2S34zfpoRyM3LVfnA==', 'OM6DZPJF4XN3JAUMBD7CU2JTH7NBMMUX', '5483bcfd-dd8a-4465-9643-c44e048a1203', NULL, 0, 0, NULL, 1, 0),
('2ec5c2db-582c-4036-a566-357a26a245c1', 'Firda', 'FIRDA', 'firda@gmail.com', 'FIRDA@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAELlNKdc0hK+W4BYks9UvAKDGts/aMQUMYpUYYlkYyx4qSw7uSnFpF3yOiuyyBsQF/g==', 'UY3HGQT4TB4MHKQOPEESVUPNTD73IWHW', '9da43e99-5751-4cb8-9e10-88b7f89c8f97', NULL, 0, 0, NULL, 1, 0),
('47bd7a09-b75b-45f3-904a-b8753cede1ae', 'Cindya', 'CINDYA', 'cindya@gmail.com', 'CINDYA@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEGui2ox/tdU007dV1OeyQWn9Tph2tbGWaVwOia/XREv+GCmqgBCkxbQkRQ9xpUBLaw==', 'RC5FF2F33F63TJFGSTOPOREHT3VCNJQA', 'ede2dc03-10c4-497d-b5db-95a068c101fd', NULL, 0, 0, NULL, 1, 0),
('8dda9762-7503-46ff-b86c-0de10cc093cb', 'junior', 'JUNIOR', 'junior@gmail.com', 'JUNIOR@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEEO2qmiNiMKEvnSPTmZznlSmsEG82iWuh3/2lp/bhmsmDYGCNCYz8+xZ4E8+21u+LQ==', 'UJNHPJVAS6YY7FSZ55D6S4UXOO7DGPMF', 'eb5b039d-88eb-4a36-8f6f-de46b64d46d0', NULL, 0, 0, NULL, 1, 0),
('f1b1acb9-b559-4b7f-87b1-038514621af5', 'Esa', 'ESA', 'esa@gmail.com', 'ESA@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEPAkwJ1TXMpr9M+qv0Jx/XS6pb8XP0JkK1wrMg/xJmnO1uYVG64gO+cUfqJ65ZrcvQ==', 'YDUPMCFZTMJZH2FQEJMZMZ3A4BDZ2MW4', '99b91116-0428-4494-89bf-eae766978c07', NULL, 0, 0, NULL, 1, 0),
('f486d61d-39a1-40ef-a51f-f8e7fc79bc51', 'Namira', 'NAMIRA', 'namm@gmail.com', 'NAMM@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEK1Gpo/uVALc0pBIvuxEhFTklHCa3EGvH2zmwsYbOGutbBGFMEw7eWfvWBVWqcPA7g==', 'ZQUYH2P7WPFLWYIGUOFOQM6J5LC6P7LB', '875c30fa-cbff-4369-af87-3d2ddcdb071a', NULL, 0, 0, NULL, 1, 0),
('fcedaf0b-a038-4b08-9b2f-2efda340f2a9', 'tantra', 'TANTRA', 'tantra@gmail.com', 'TANTRA@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAENXQVv46eEoxM7F1nNgf13Qs/JE3dqow7lWDplQRTnSi93cHRPN7V8VwTYhV4oZGog==', 'C5SAZK5DMZJLPMR63I2KOEY3SFK5YUWM', '18e8fd1f-ba30-423a-94e0-16b7210605f0', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(95) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `PaymentDetailId` int(11) NOT NULL,
  `CardOwnerName` longtext DEFAULT NULL,
  `CardNumber` longtext DEFAULT NULL,
  `ExpirationDate` longtext DEFAULT NULL,
  `SecurityCode` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`PaymentDetailId`, `CardOwnerName`, `CardNumber`, `ExpirationDate`, `SecurityCode`) VALUES
(1, 'Pohan', '14045', '2022-10-12', '14045'),
(2, 'Namira', '777', '2020-10-12', '777');

-- --------------------------------------------------------

--
-- Struktur dari tabel `refreshtoken`
--

CREATE TABLE `refreshtoken` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(95) DEFAULT NULL,
  `Token` longtext DEFAULT NULL,
  `JwtId` longtext DEFAULT NULL,
  `IsUsed` tinyint(1) NOT NULL,
  `IsRevorked` tinyint(1) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `ExpiryDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `refreshtoken`
--

INSERT INTO `refreshtoken` (`Id`, `UserId`, `Token`, `JwtId`, `IsUsed`, `IsRevorked`, `AddedDate`, `ExpiryDate`) VALUES
(1, '1d05c0c9-e1c2-4009-adcc-db4466cebe64', '9V97V3YC1MUMN5KQYJZ2ATU7AR6BWKC7709cfece5e7-a226-4cb2-bea1-d51f909bc35e', '7c5623cc-a130-404d-b5d5-b0e1bb174840', 0, 0, '2021-12-01 06:37:29', '2021-12-01 06:38:29'),
(2, 'f486d61d-39a1-40ef-a51f-f8e7fc79bc51', 'KYY7HVP2S5RYOWHH2LT7JD6558CUYHGVOYLe2c8db95-21a1-41b3-9f9c-22cbeff26892', '2afff0bd-d4f0-4a44-bbf6-aed542ab8e48', 0, 0, '2021-12-01 06:40:59', '2021-12-01 06:41:59'),
(3, '47bd7a09-b75b-45f3-904a-b8753cede1ae', '1PSTADZMVEMO89JVNTK5GXTNOHQC6J9KBZDdd04938f-a3ac-4465-b466-ba9a08008888', 'a6199c02-e13f-40cf-abb2-b66ee76f2eaf', 0, 0, '2021-12-01 06:44:42', '2021-12-01 06:45:42'),
(4, 'fcedaf0b-a038-4b08-9b2f-2efda340f2a9', '4DHDK73VTW58IKOFX3XL80WU6E4FYZ0C1H5b23a96fe-f49f-4953-906e-a60dee85b7ba', '9870f0ab-3a03-45c2-9667-72e1bf9d5912', 0, 0, '2021-12-01 06:47:44', '2021-12-01 06:48:44'),
(5, '8dda9762-7503-46ff-b86c-0de10cc093cb', 'F14SFICPWZ1LE3O6PSX77JO8AGBMSMKGKTZa552f82c-105b-481d-970c-ee9ad1d16d08', 'c3d95215-579b-43e7-808f-fdfb92bebe77', 0, 0, '2021-12-01 06:51:06', '2021-12-01 06:52:06'),
(6, '1d05c0c9-e1c2-4009-adcc-db4466cebe64', '7ZTATUM31WLF634YHLCYG3JP6136PQJTVJXd48cb50c-fa04-4188-bf21-b14555ea2bc4', '14334270-2613-4c26-b934-4524733e70de', 0, 0, '2021-12-01 06:52:27', '2021-12-01 06:53:27'),
(7, '1d05c0c9-e1c2-4009-adcc-db4466cebe64', 'SYS62VQJOZA13JFU9OXHUCCVBP4DQ4DYCFRe4e2d602-63ec-40d4-8796-22a5d1c0fd4f', '1ed2f1c4-430d-4307-bc67-947a29061fe7', 0, 0, '2021-12-01 06:53:57', '2021-12-01 06:54:57'),
(8, '47bd7a09-b75b-45f3-904a-b8753cede1ae', 'ZXSP914ZFI7QO2L9085WVXTOZXBLQZKWN0Lbcd35b20-d275-4325-a5aa-42927c000bd0', 'db182c05-54b1-4ab8-ab23-b1d811995537', 0, 0, '2021-12-01 06:55:18', '2021-12-01 06:56:18'),
(9, '47bd7a09-b75b-45f3-904a-b8753cede1ae', 'OG2WOL8WJ2TMLJI716FW2Y8E83VEF7DXBNIf3334620-f942-47b7-a1be-5782a46995a5', '30334d2b-4890-432c-ac37-b804d27a453f', 0, 0, '2021-12-01 06:58:35', '2021-12-01 06:59:35'),
(10, '2c0d2791-b2c9-416c-83ce-632987d5f09d', 'C3NMN4MNDBEN3C9I5HBEMK27ZUXPFFL0TJ1efb8b7e0-dd7f-4c1c-90ce-b0a96dc0bb53', '591bd690-7da7-49a6-b9ba-98c2d3f2e659', 0, 0, '2021-12-01 07:02:38', '2021-12-01 07:03:38'),
(11, '2c0d2791-b2c9-416c-83ce-632987d5f09d', 'CZPZMURIJ709MQPTRT7WJSLUX22MUJRD02Gfb4f1285-fc54-4334-a101-98d197ef02d8', 'cfd71e42-6601-4a7b-96ae-462c5271abbe', 0, 0, '2021-12-01 07:12:40', '2021-12-01 07:13:40'),
(12, '2c0d2791-b2c9-416c-83ce-632987d5f09d', 'O8DPEMEXJJ4ZV2UPKJHMYQSWLQW0SNAXT82da5f51b9-0a2e-461e-a442-f9dc94fff82c', '64dd7f1d-801a-46f1-9764-bdb4914410b7', 0, 0, '2021-12-01 07:15:14', '2021-12-01 07:16:14'),
(13, '2c0d2791-b2c9-416c-83ce-632987d5f09d', 'YPIU56EWD7WQMZM5YMN9GISF0ZYJ6IZOTHU5a87a007-f740-4a7d-b135-446527449da2', 'b8f72b50-8184-44c4-b9a4-2bce3f134872', 0, 0, '2021-12-01 07:17:10', '2021-12-01 07:19:10'),
(14, '2c0d2791-b2c9-416c-83ce-632987d5f09d', 'FSXPKO9773EQ8VWD8G8XN64PRNAL7D0ETEC0401e07f-d1f3-4909-88c7-e926e1bc4324', '4f8e2e56-0d5c-4d41-8443-febfbd74167a', 0, 0, '2021-12-01 07:22:37', '2021-12-01 07:24:37'),
(15, '2c0d2791-b2c9-416c-83ce-632987d5f09d', '42YEK3V2QVOGV7V8NUKLEEMXV3SPJ9H5CZL3657273c-00bb-4c3a-9f60-4a40c95189ba', '36eb5d4d-93ab-4386-8e2a-2b15db1970aa', 0, 0, '2021-12-01 07:25:21', '2021-12-01 07:27:21'),
(16, '2c0d2791-b2c9-416c-83ce-632987d5f09d', '9OTF8B5P3IW712FGM0TV9CYHKR75B8E2VSQd2180ea0-facf-4e63-a0f6-53a122ca5551', 'c5bb3d53-37e3-4a49-ae75-53106634766b', 0, 0, '2021-12-01 07:33:08', '2021-12-01 07:35:08'),
(17, '2c0d2791-b2c9-416c-83ce-632987d5f09d', 'Z6OWJ25GBJK3ET86UUTQQHFF7HPPIBA7MCE6c1c4bb8-3006-4ece-b978-8d4fedc5a75e', 'a54695e8-8b20-46ef-a26e-e10cefd4126c', 0, 0, '2021-12-01 07:35:40', '2021-12-01 07:37:40'),
(18, '2c0d2791-b2c9-416c-83ce-632987d5f09d', '5PK5P26TFTU8OSM7B1F73TYQA4U2SPM0R0Kf7976f75-779c-48d5-b319-fe7ab1b82cd1', '74086d20-2577-482a-9ac1-1379bcbcdcd5', 0, 0, '2021-12-01 07:37:44', '2021-12-01 07:39:44'),
(19, '2c0d2791-b2c9-416c-83ce-632987d5f09d', 'SU0IUQBYTVY9DYZLAOBNVH0CILQKWAM7NXDdc96bb7c-6dc7-4405-b6c8-ff577a16b3f0', '98c155ff-752a-4dfe-b772-575c355eba57', 0, 0, '2021-12-01 07:40:29', '2021-12-01 07:42:29'),
(20, '2c0d2791-b2c9-416c-83ce-632987d5f09d', '5QTJ4VAC4DVDRL3R0FZ989JP9V1Q5E30NB837635836-00d1-475e-9efd-a9a2f69fb3be', 'd33fee3a-c1f8-4f6a-9452-236af32a0f1b', 0, 0, '2021-12-01 07:53:04', '2021-12-01 07:55:04'),
(21, '2c0d2791-b2c9-416c-83ce-632987d5f09d', 'DD3UH0GTNC5MOQXD8SF0QXCE069RQSSOENK27114550-85d8-4a9a-9f37-76ac5cbfb4a3', 'ceeea14f-2534-49ec-9e3d-9e7bf5a1f3b9', 0, 0, '2021-12-01 08:49:44', '2021-12-01 08:51:44'),
(22, '2c0d2791-b2c9-416c-83ce-632987d5f09d', 'IE081EWD1KV16CM4WAYJEFPO58HZOU20K6T105012e2-d8bf-4164-b4d9-190ce375ed68', '96c72bbd-fe8f-4c5c-bce9-7a19b5e8d634', 0, 0, '2021-12-01 08:51:01', '2021-12-01 08:53:01'),
(23, '2c0d2791-b2c9-416c-83ce-632987d5f09d', '206EB6BZPSVUHF7RRV93EBGLNEUNGBMVKWAde90d342-debd-40ad-a0d7-10a70e7c9392', '8669db23-265b-427b-a9fb-7e526cceda0d', 0, 0, '2021-12-01 08:55:10', '2021-12-01 08:57:10'),
(24, '2c0d2791-b2c9-416c-83ce-632987d5f09d', 'LYFC1BIWDE84YFZG259VNZZNKVE39M425EI55201849-f9c3-4639-80b4-f5558e5131f1', '9f347a1c-e7c2-467f-b0bd-73f07246e854', 0, 0, '2021-12-01 08:55:41', '2021-12-01 08:57:41'),
(25, '2c0d2791-b2c9-416c-83ce-632987d5f09d', 'IVMWCRW5JXRF2OPE5L9L6V74TNG1QMRQYK2dce29c0a-72c7-42b2-922a-f61099a3bc27', '17c8ee53-4cf2-4199-8d2b-aa4c47dea144', 0, 0, '2021-12-01 08:56:37', '2021-12-01 08:58:37'),
(26, '2ec5c2db-582c-4036-a566-357a26a245c1', 'RDOFTPEMBRAVGZCT80S0MFOKR54NF573MBKddac3387-3c32-4ff0-87c8-adc68d60fcd5', '49c997d3-e136-41dc-8250-3be6512dfe19', 0, 0, '2021-12-01 09:01:41', '2021-12-01 09:06:41'),
(27, '2ec5c2db-582c-4036-a566-357a26a245c1', 'SSL5AE461J0W6QVKRQK3K19GWCCR2GJDF42adbab0e2-1407-4c0c-951a-41d6ef108365', '181cc630-9626-43d9-9e51-3c98dc52e990', 0, 0, '2021-12-01 09:02:09', '2021-12-01 09:07:09'),
(28, '2ec5c2db-582c-4036-a566-357a26a245c1', 'MAK667NGFGDQYSKXWQQ46KX8T1LJXSO3D24588be6ee-02f9-4a5b-96f9-f1c090f7f43d', '41a17b7a-adfc-4a74-9b99-3f300232b781', 0, 0, '2021-12-01 09:18:03', '2021-12-01 09:23:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20211201043421_Initial Migrations', '5.0.11'),
('20211201053835_Adding authentication to our Api', '5.0.11'),
('20211201062845_Added refresh tokens table', '5.0.11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indeks untuk tabel `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indeks untuk tabel `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indeks untuk tabel `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indeks untuk tabel `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indeks untuk tabel `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indeks untuk tabel `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentDetailId`);

--
-- Indeks untuk tabel `refreshtoken`
--
ALTER TABLE `refreshtoken`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_RefreshToken_UserId` (`UserId`);

--
-- Indeks untuk tabel `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `refreshtoken`
--
ALTER TABLE `refreshtoken`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `refreshtoken`
--
ALTER TABLE `refreshtoken`
  ADD CONSTRAINT `FK_RefreshToken_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
