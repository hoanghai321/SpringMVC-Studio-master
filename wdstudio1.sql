-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 08, 2022 lúc 10:05 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wdstudio1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhcuoi`
--

CREATE TABLE `anhcuoi` (
  `AnhCuoiId` int(11) NOT NULL,
  `AnhCuoiName` varchar(255) NOT NULL,
  `AnhCuoiBan` double NOT NULL,
  `AnhCuoiImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `anhcuoi`
--

INSERT INTO `anhcuoi` (`AnhCuoiId`, `AnhCuoiName`, `AnhCuoiBan`, `AnhCuoiImage`) VALUES
(1, 'ALBUM ẢNH CƯỚI TẠI PHIM TRƯỜNG L\'AMOUR', 789, '/assets/user/images/AnhCuoi/1.jpg'),
(2, 'ALBUM ẢNH CƯỚI TẠI PHIM TRƯỜNG ALIBABA', 690, '/assets/user/images/AnhCuoi/2.jpg'),
(3, 'ALBUM ẢNH CƯỚI TẠI PHIM TRƯỜNG PARIS', 590, '/assets/user/images/AnhCuoi/3.jpg'),
(4, 'ALBUM ẢNH CƯỚI  TẠI PHIM TRƯỜNG ENDEE', 670, '/assets/user/images/AnhCuoi/4.jpg'),
(5, 'ALBUM ẢNH CƯỚI CHỤP TRONG NỘI THÀNH SÀI GÒN', 740, '/assets/user/images/AnhCuoi/5.jpg'),
(6, 'ALBUM ẢNH CƯỚI CHỤP TRONG PHIM TRƯỜNG CABIN', 760, '/assets/user/images/AnhCuoi/6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhcuoiimages`
--

CREATE TABLE `anhcuoiimages` (
  `ImageAnhCuoiId` int(11) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `anhcuoi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `anhcuoiimages`
--

INSERT INTO `anhcuoiimages` (`ImageAnhCuoiId`, `image1`, `image2`, `image3`, `anhcuoi_id`) VALUES
(1, '/assets/user/images/AnhCuoi/1.jpg', '/assets/user/images/AlbumAnhCuoi/1-1.jpg', '/assets/user/images/AlbumAnhCuoi/1-2.jpg', 1),
(2, '/assets/user/images/AlbumAnhCuoi/2-1.jpg', '/assets/user/images/AlbumAnhCuoi/2-2.jpg', '/assets/user/images/AlbumAnhCuoi/2-3.jpg', 2),
(3, '/assets/user/images/AnhCuoi/3.jpg', '/assets/user/images/AlbumAnhCuoi/3-1.jpg', '/assets/user/images/AlbumAnhCuoi/3-2.jpg', 3),
(4, '/assets/user/images/AnhCuoi/4.jpg', '/assets/user/images/AlbumAnhCuoi/4-1.jpg', '/assets/user/images/AlbumAnhCuoi/4-2.jpg', 4),
(5, '/assets/user/images/AnhCuoi/5.jpg', '/assets/user/images/AlbumAnhCuoi/5-1.jpg', '/assets/user/images/AlbumAnhCuoi/5-2.jpg', 5),
(6, '/assets/user/images/AlbumAnhCuoi/6-1.jpg', '/assets/user/images/AlbumAnhCuoi/6-2.jpg', '/assets/user/images/AlbumAnhCuoi/6-3.jpg', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aocuoi`
--

CREATE TABLE `aocuoi` (
  `AoCuoiId` int(11) NOT NULL,
  `AoCuoiName` varchar(255) NOT NULL,
  `AoCuoiBan` double NOT NULL,
  `AoCuoiImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `aocuoi`
--

INSERT INTO `aocuoi` (`AoCuoiId`, `AoCuoiName`, `AoCuoiBan`, `AoCuoiImage`) VALUES
(1, 'SELENA - VLITX-479 LIMITED BALL GOWN IVORY ROYAL CATHEDRAL', 1100, '/assets/user/images/AoCuoi/1.jpg'),
(2, 'HERA - VLTX-480 LUXURY BALL GOWN LONG SLEEVE 3D LACE CATHEDRAL ', 1300, '/assets/user/images/AoCuoi/2.jpg'),
(3, 'FREYJA - VLTX-481 BALL GOWN ROYAL CATHEDRAL TRAIN LONG SLEEVE HIGH ', 1200, '/assets/user/images/AoCuoi/3.jpg'),
(4, 'ATHENA-VLTX-482 BALL GOWN FLOOR LENGTH WEDDING DRESS', 1529, '/assets/user/images/AoCuoi/4.jpg'),
(5, 'VMDC - 395 MERMAID IVORY PRINCESS FLOOR LENGTH V NECK SATIN ', 1430, '/assets/user/images/AoCuoi/5.jpg'),
(6, 'VLTX-394 LUXURY BALL GOWN HIGH NECK LONG 3D LACE WEDDING DRESS', 1230, '/assets/user/images/AoCuoi/6.jpg'),
(7, 'VMDC-408 MERMAID IVORY MINIMALIST FLOOR LENGTH 3D FLORAL ', 1390, '/assets/user/images/AoCuoi/7.jpg'),
(8, 'VLTX - 406 LUXURY BALL GOWN CATHEDRAL TRAIN STRAPLESS', 1690, '/assets/user/images/AoCuoi/8.jpg'),
(9, 'VMDC-408 MINIMALIST FLOOR LENGTH WITH LONG CAP 2D FLORAL ', 1403, '/assets/user/images/AoCuoi/9.jpg'),
(10, 'SELENA - VLITX-479 LIMITED BALL GOWN IVORY ROYAL CATHEDRAL', 1290, '/assets/user/images/AlbumAoCuoi/0.jpg'),
(11, 'HERA - VLTX-480 LUXURY BALL GOWN LONG SLEEVE 3D LACE CATHEDRAL ', 1390, '/assets/user/images/AlbumAoCuoi/0-1.jpg'),
(12, 'FREYJA - VLTX-481 BALL GOWN ROYAL CATHEDRAL TRAIN LONG SLEEVE HIGH ', 1190, '/assets/user/images/AlbumAoCuoi/0-2.jpg'),
(13, 'ATHENA-VLTX-482 BALL GOWN FLOOR LENGTH WEDDING DRESS', 1490, '/assets/user/images/AlbumAoCuoi/6-1.jpg'),
(14, 'VMDC - 395 MERMAID IVORY PRINCESS FLOOR LENGTH V NECK SATIN ', 1250, '/assets/user/images/AlbumAoCuoi/6-2.jpg'),
(15, 'VLTX-394 LUXURY BALL GOWN HIGH NECK LONG 3D LACE WEDDING DRESS', 1550, '/assets/user/images/AlbumAoCuoi/9-2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aocuoiimages`
--

CREATE TABLE `aocuoiimages` (
  `ImageAoCuoiId` int(11) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `aocuoi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `aocuoiimages`
--

INSERT INTO `aocuoiimages` (`ImageAoCuoiId`, `image1`, `image2`, `image3`, `aocuoi_id`) VALUES
(1, '/assets/user/images/AoCuoi/1.jpg', '/assets/user/images/AlbumAoCuoi/1-1.jpg', '/assets/user/images/AlbumAoCuoi/1-2.jpg', 1),
(2, '/assets/user/images/AoCuoi/2.jpg', '/assets/user/images/AlbumAoCuoi/2-1.jpg', '/assets/user/images/AlbumAoCuoi/2-2.jpg', 2),
(3, '/assets/user/images/AoCuoi/3.jpg', '/assets/user/images/AlbumAoCuoi/3-1.jpg', '/assets/user/images/AlbumAoCuoi/3-2.jpg', 3),
(4, '/assets/user/images/AoCuoi/4.jpg', '/assets/user/images/AlbumAoCuoi/4-1.jpg', '/assets/user/images/AlbumAoCuoi/4-2.jpg', 4),
(5, '/assets/user/images/AoCuoi/5.jpg', '/assets/user/images/AlbumAoCuoi/5-1.jpg', '/assets/user/images/AlbumAoCuoi/5-2.jpg', 5),
(6, '/assets/user/images/AoCuoi/6.jpg', '/assets/user/images/AlbumAoCuoi/6-1.jpg', '/assets/user/images/AlbumAoCuoi/6-2.jpg', 6),
(7, '/assets/user/images/AoCuoi/7.jpg', '/assets/user/images/AlbumAoCuoi/7-1.jpg', '/assets/user/images/AlbumAoCuoi/7-2.jpg', 7),
(8, '/assets/user/images/AoCuoi/8.jpg', '/assets/user/images/AlbumAoCuoi/8-1.jpg', '/assets/user/images/AlbumAoCuoi/8-2.jpg', 8),
(9, '/assets/user/images/AoCuoi/9.jpg', '/assets/user/images/AoCuoi/9-1.jpg', '/assets/user/images/AoCuoi/9-2.jpg', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `id` int(11) NOT NULL,
  `id_aocuoi` int(11) NOT NULL,
  `id_bills` int(11) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `billdetail`
--

INSERT INTO `billdetail` (`id`, `id_aocuoi`, `id_bills`, `quanty`, `total`) VALUES
(1, 1, 1, 2200, 2),
(3, 3, 1, 1200, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail2`
--

CREATE TABLE `billdetail2` (
  `id` int(11) NOT NULL,
  `id_anhcuoi` int(11) NOT NULL,
  `id_bills2` int(11) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `billdetail2`
--

INSERT INTO `billdetail2` (`id`, `id_anhcuoi`, `id_bills2`, `quanty`, `total`) VALUES
(1, 4, 1, 1340, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`) VALUES
(1, 'nhuhoanghai1900@gmail.com', '0933037293', 'Nhữ Hoàng Hải', 'Viet Nam', 4700, 4, 'không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills2`
--

CREATE TABLE `bills2` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bills2`
--

INSERT INTO `bills2` (`id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`) VALUES
(1, 'phuongnam@gmail.com', '0933037293', 'Đặng Ngọc Hùng', 'Việt Nam', 2080, 3, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `display_name`, `address`, `id_role`) VALUES
(1, 'nhuhoanghai1900@gmail.com', '$2a$12$KrOmBsGdfOCeUvs5VXX9r.Tbe4l0X90v1r.hsHizr/4strepO3OOK', 'Nhữ Hoàng Hải', 'Viet Nam', 2),
(2, 'ngochung@gmail.com', '$2a$12$1p1XcExZrc4QEwU7J28L/uGYwOzQkTpL5ZiPrwWMrAWj.No6HQFAS', 'Đặng Ngọc Hùng', 'Viet Nam', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhcuoi`
--
ALTER TABLE `anhcuoi`
  ADD PRIMARY KEY (`AnhCuoiId`),
  ADD KEY `AnhCuoiId` (`AnhCuoiId`);

--
-- Chỉ mục cho bảng `anhcuoiimages`
--
ALTER TABLE `anhcuoiimages`
  ADD PRIMARY KEY (`ImageAnhCuoiId`),
  ADD KEY `anhcuoi_id` (`anhcuoi_id`);

--
-- Chỉ mục cho bảng `aocuoi`
--
ALTER TABLE `aocuoi`
  ADD PRIMARY KEY (`AoCuoiId`),
  ADD KEY `AoCuoiId` (`AoCuoiId`);

--
-- Chỉ mục cho bảng `aocuoiimages`
--
ALTER TABLE `aocuoiimages`
  ADD PRIMARY KEY (`ImageAoCuoiId`),
  ADD KEY `aocuoi_id` (`aocuoi_id`);

--
-- Chỉ mục cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `billdetail2`
--
ALTER TABLE `billdetail2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills2`
--
ALTER TABLE `bills2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhcuoi`
--
ALTER TABLE `anhcuoi`
  MODIFY `AnhCuoiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `anhcuoiimages`
--
ALTER TABLE `anhcuoiimages`
  MODIFY `ImageAnhCuoiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `aocuoi`
--
ALTER TABLE `aocuoi`
  MODIFY `AoCuoiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `aocuoiimages`
--
ALTER TABLE `aocuoiimages`
  MODIFY `ImageAoCuoiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `billdetail2`
--
ALTER TABLE `billdetail2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `bills2`
--
ALTER TABLE `bills2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anhcuoiimages`
--
ALTER TABLE `anhcuoiimages`
  ADD CONSTRAINT `anhcuoiimages_ibfk_1` FOREIGN KEY (`anhcuoi_id`) REFERENCES `anhcuoi` (`AnhCuoiId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `aocuoiimages`
--
ALTER TABLE `aocuoiimages`
  ADD CONSTRAINT `aocuoiimages_ibfk_1` FOREIGN KEY (`aocuoi_id`) REFERENCES `aocuoi` (`AoCuoiId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
