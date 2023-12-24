-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 21, 2023 lúc 03:42 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanly_nhansu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_cap`
--

CREATE TABLE `bang_cap` (
  `id` int(11) NOT NULL,
  `ma_bang_cap` varchar(50) NOT NULL,
  `ten_bang_cap` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bang_cap`
--

INSERT INTO `bang_cap` (`id`, `ma_bang_cap`, `ten_bang_cap`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(0, 'MBC1569664716', 'Không', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(1, 'MBC1569651987', 'Bằng cử nhân', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(2, 'MBC1569652012', 'Bằng thạc sĩ', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(3, 'MBC1569652035', 'Bằng tiến sĩ', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(4, 'MBC1569652169', 'Cử nhân khoa học xã hội', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(5, 'MBC1569652180', 'Cử nhân khoa học tự nhiên', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(8, 'MBC1569652431', 'Cử nhân quản trị kinh doanh', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(9, 'MBC1569652436', 'Cử nhân thương mại và quản trị', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(10, 'MBC1569652441', 'Cử nhân kế toán', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(11, 'MBC1569652448', 'Cử nhân luật', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(12, 'MBC1569652456', 'Cử nhân ngành quản trị và chính sách công', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(13, 'MBC1569652463', 'Thạc sĩ khoa học xã hội', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(14, 'MBC1569652469', 'Thạc sĩ khoa học tự nhiên', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(15, 'MBC1569652475', 'Thạc sĩ quản trị kinh doanh', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(16, 'MBC1569652481', 'Thạc sĩ kế toán', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinh_luong`
--

CREATE TABLE `chinh_luong` (
  `id` int(11) NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `so_qd` varchar(50) NOT NULL,
  `ngay_ky_ket` datetime NOT NULL,
  `ngay_dieu_chinh` datetime NOT NULL,
  `heso_luong_cu` double NOT NULL,
  `heso_luong_moi` double NOT NULL,
  `nguoi_tao_id` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua_id` int(11) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_nhom`
--

CREATE TABLE `chi_tiet_nhom` (
  `id` int(11) NOT NULL,
  `ma_nhom` varchar(50) NOT NULL,
  `nhan_vien_id` int(11) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_nhom`
--

INSERT INTO `chi_tiet_nhom` (`id`, `ma_nhom`, `nhan_vien_id`, `nguoi_tao`, `ngay_tao`) VALUES
(25, 'GRP1571110790', 13, 'AccountAdmin', '2023-11-19 10:52:37'),
(26, 'GRP1571110790', 11, 'AccountAdmin', '2023-11-19 10:52:43'),
(27, 'GRP1571110790', 8, 'AccountAdmin', '2023-11-19 10:52:47'),
(28, 'GRP1571110790', 3, 'AccountAdmin', '2023-11-19 10:52:54'),
(29, 'GRP1700457373', 3, 'KhoaPhan Dương Sỹ ', '2023-11-20 12:16:39'),
(30, 'GRP1700457373', 13, 'KhoaPhan Dương Sỹ ', '2023-11-20 12:16:55'),
(31, 'GRP1700457373', 11, 'KhoaPhan Dương Sỹ ', '2023-11-20 12:17:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuc_vu`
--

CREATE TABLE `chuc_vu` (
  `id` int(11) NOT NULL,
  `ma_chuc_vu` varchar(50) NOT NULL,
  `ten_chuc_vu` varchar(255) NOT NULL,
  `luong_ngay` double NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuc_vu`
--

INSERT INTO `chuc_vu` (`id`, `ma_chuc_vu`, `ten_chuc_vu`, `luong_ngay`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(16, 'MCV1569203762', 'Phó giám đốc', 560000, '', 'Phan Dương Sỹ Khoa', '2023-10-20 10:26:51', 'Phan Dương Sỹ Khoa', '2019-10-20 10:26:51'),
(17, 'MCV1569203773', 'Giám đốc', 600000, '', 'Phan Dương Sỹ Khoa', '2023-11-10 07:02:00', 'Phan Dương Sỹ Khoa', '2023-11-10 07:02:00'),
(33, 'MCV1569204007', 'Nhân viên', 230000, '', 'Phan Dương Sỹ Khoa', '2023-09-23 10:26:51', 'Phan Dương Sỹ Khoa', '2023-09-23 10:26:51'),
(37, 'MCV1569985216', 'Trưởng phòng', 310000, '', 'Phan Dương Sỹ Khoa', '2023-01-23 09:06:59', 'Phan Dương Sỹ Khoa', '2023-01-23 09:06:59'),
(38, 'MCV1569985261', 'Phó phòng', 280000, '', 'Phan Dương Sỹ Khoa', '2023-10-03 10:59:12', 'Phan Dương Sỹ Khoa', '2023-10-03 10:59:12'),
(39, 'MCV1571105797', 'Marketing', 285000, '<p>Quảng b&aacute;,c&aacute;c trang mạng x&atilde; hội.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-09-10 07:02:00', 'Phan  Dương Sỹ Khoa', '2023-11-22 18:13:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyen_mon`
--

CREATE TABLE `chuyen_mon` (
  `id` int(11) NOT NULL,
  `ma_chuyen_mon` varchar(50) NOT NULL,
  `ten_chuyen_mon` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyen_mon`
--

INSERT INTO `chuyen_mon` (`id`, `ma_chuyen_mon`, `ten_chuyen_mon`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(2, 'MCM1569208526', 'Kế toán', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(3, 'MCM1569208539', 'Công nghệ thông tin', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(4, 'MCM1569208553', 'Quản trị nhà hàng - khách sạn', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(5, 'MCM1569208562', 'Tiếp tân', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(6, 'MCM1569208577', 'Sale', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(7, 'MCM1569208618', 'Hành chính văn phòng', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(8, 'MCM1569208631', 'Quản lý chất lượng', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(9, 'MCM1569208648', 'Thương mại điện tử', '', 'Phan Dương Sỹ Khoa', '0000-00-00 00:00:00', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(10, 'MCM1569208673', 'Tài chính', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(11, 'MCM1569208680', 'Quản lý', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(12, 'MCM1569208698', 'Maketing', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(13, 'MCM1569208705', 'Khởi nghiệp', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(14, 'MCM1569208731', 'Quản lý nguồn nhân lực', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(15, 'MCM1569208740', 'Kinh doanh', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(16, 'MCM1569208758', 'Vận tải và hậu cần', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(17, 'MCM1569208771', 'Kinh doanh', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(18, 'MCM1569208782', 'Bán lẻ', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cong_tac`
--

CREATE TABLE `cong_tac` (
  `id` int(11) NOT NULL,
  `ma_cong_tac` varchar(255) NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL,
  `dia_diem` varchar(255) NOT NULL,
  `muc_dich` varchar(500) NOT NULL,
  `ghi_chu` varchar(500) NOT NULL,
  `nguoi_tao` varchar(255) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(255) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cong_tac`
--

INSERT INTO `cong_tac` (`id`, `ma_cong_tac`, `nhanvien_id`, `ngay_bat_dau`, `ngay_ket_thuc`, `dia_diem`, `muc_dich`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(1, 'MCT1570351884', 3, '2023-11-13', '2023-11-24', 'Cần Thơ', '<p>Đi khảo s&aacute;t t&igrave;nh h&igrave;nh c&aacute;c c&ocirc;ng ty lớn</p>\r\n', '', 'Đào Thanh Huy', '2019-10-06 15:51:24', 'Account Admin', '2023-11-19 10:02:51'),
(3, 'MCT1570352254', 4, '2023-07-31', '2023-08-04', 'Phú Quốc', '<p>Đi chơi</p>\r\n', '', 'Đào Thanh Huy', '2019-10-06 15:57:34', 'Account Admin', '2023-11-19 10:01:59'),
(5, 'MCT1570353978', 5, '2023-11-19', '2023-11-24', 'Cần Thơ', '<p>Đi chơi</p>\r\n', '', 'Đào Thanh Huy', '2019-10-06 16:26:18', 'Account Admin', '2023-11-19 10:00:44'),
(6, 'MCT1571039527', 10, '2023-10-16', '2023-10-20', 'Phú Quốc', '<p>Đi chơi Vinpearl Land để t&igrave;m hiểu t&igrave;nh h&igrave;nh</p>\r\n', '', 'Đào Thanh Huy', '2019-10-14 14:52:07', 'Khoa Phan Dương Sỹ ', '2023-11-20 12:11:12'),
(7, 'MCT1571106674', 11, '2023-09-15', '2023-09-24', 'Hà Nội', '<p>Gặp đối t&aacute;c</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Đào Thanh Huy', '2019-10-15 09:31:14', 'Account Admin', '2023-11-19 09:57:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dan_toc`
--

CREATE TABLE `dan_toc` (
  `id` int(11) NOT NULL,
  `ten_dan_toc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dan_toc`
--

INSERT INTO `dan_toc` (`id`, `ten_dan_toc`) VALUES
(1, 'Kinh'),
(2, 'Khơ-me'),
(3, 'Mường'),
(4, 'Thổ'),
(5, 'H\'Mông'),
(6, 'Ê-đê'),
(7, 'Bố Y'),
(8, 'Lào'),
(9, 'Tày'),
(10, 'Thái'),
(11, 'Nùng'),
(12, 'Khơ-mú'),
(13, 'M\'Nông'),
(14, 'Xơ Đăng'),
(15, 'Chăm'),
(16, 'Gia Rai'),
(17, 'Hoa'),
(18, 'Lô Lô'),
(19, 'Phù Lá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khen_thuong_ky_luat`
--

CREATE TABLE `khen_thuong_ky_luat` (
  `id` int(11) NOT NULL,
  `ma_kt` varchar(50) NOT NULL,
  `so_qd` varchar(50) NOT NULL,
  `ngay_qd` date NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `ten_khen_thuong` varchar(255) NOT NULL,
  `loai_kt_id` int(11) NOT NULL,
  `hinh_thuc` tinyint(1) NOT NULL,
  `so_tien` double NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `ghi_chu` varchar(500) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khen_thuong_ky_luat`
--

INSERT INTO `khen_thuong_ky_luat` (`id`, `ma_kt`, `so_qd`, `ngay_qd`, `nhanvien_id`, `ten_khen_thuong`, `loai_kt_id`, `hinh_thuc`, `so_tien`, `flag`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(1, 'MKT1571286726', 'DHK/1209', '2023-10-17', 5, 'Khen thưởng nhân viên nhanh nhạy', 6, 0, 240000, 1, '<p>Thưởng trong th&aacute;ng</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-09-23 10:26:51', 'Phan Dương Sỹ Khoa', '2023-09-23 10:26:51'),
(2, 'MKT1571286771', 'DHK/1223', '2023-10-10', 4, 'Khen thưởng nhân viên chăm chỉ', 7, 0, 700000, 1, '', 'Phan Dương Sỹ Khoa', '2023-10-10 11:32:51', 'Phan Dương Sỹ Khoa', '2023-10-10 10:33:31'),
(7, 'MKT1571365640', 'DHK/1412', '2023-10-07', 5, 'Khen thưởng nhân viên ', 7, 1, 360000, 1, '<p>Thưởng cho th&agrave;nh phần hiếu động</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-07 09:27:20', 'Phan Dương Sỹ Khoa', '2023-10-07 10:32:44'),
(11, 'MKL1571369398', 'DKT/4421', '2023-11-12', 2, 'Nghỉ việc không báo', 15, 1, 123000, 0, '', 'Phan Dương Sỹ Khoa', '2023-11-12 10:29:58', 'Phan Dương Sỹ Khoa', '2023-11-12 10:40:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_khen_thuong_ky_luat`
--

CREATE TABLE `loai_khen_thuong_ky_luat` (
  `id` int(11) NOT NULL,
  `ma_loai` varchar(50) NOT NULL,
  `ten_loai` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_khen_thuong_ky_luat`
--

INSERT INTO `loai_khen_thuong_ky_luat` (`id`, `ma_loai`, `ten_loai`, `ghi_chu`, `flag`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(5, 'LKT1571280354', 'Nhân viên đồng', '', 1, 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54', 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54'),
(6, 'LKT1571280364', 'Nhân viên bạc', '', 1, 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54', 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54'),
(7, 'LKT1571280370', 'Nhân viên vàng', '', 1, 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54', 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54'),
(8, 'LKT1571280376', 'Nhân viên kim cương', '', 1, 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54', 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54'),
(14, 'LKL1571366769', 'Nhân viên đi trễ', '<p>Nh&acirc;n vi&ecirc;n thường xuy&ecirc;n đi trễ</p>\r\n', 0, 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54', 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54'),
(15, 'LKL1571366807', 'Nhân viên nghỉ quá ngày cho phép', '<p>Nh&acirc;n vi&ecirc;n nghỉ tr&ecirc;n 20 ng&agrave;y/th&aacute;ng.</p>\r\n', 0, 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54', 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_nv`
--

CREATE TABLE `loai_nv` (
  `id` int(11) NOT NULL,
  `ma_loai_nv` varchar(50) NOT NULL,
  `ten_loai_nv` varchar(50) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_nv`
--

INSERT INTO `loai_nv` (`id`, `ma_loai_nv`, `ten_loai_nv`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(2, 'LNV1569654834', 'Nhân viên chính thức', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(3, 'LNV1569654844', 'Nhân viên thực tập', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(4, 'LNV1569654850', 'Nhân viên thời vụ', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luong`
--

CREATE TABLE `luong` (
  `id` int(11) NOT NULL,
  `ma_luong` varchar(50) NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `luong_thang` double NOT NULL,
  `ngay_cong` int(11) NOT NULL,
  `phu_cap` double NOT NULL,
  `khoan_nop` double NOT NULL,
  `tam_ung` double NOT NULL,
  `thuc_lanh` double NOT NULL,
  `ngay_cham` date NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao_id` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua_id` int(11) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `luong`
--

INSERT INTO `luong` (`id`, `ma_luong`, `nhanvien_id`, `luong_thang`, `ngay_cong`, `phu_cap`, `khoan_nop`, `tam_ung`, `thuc_lanh`, `ngay_cham`, `ghi_chu`, `nguoi_tao_id`, `ngay_tao`, `nguoi_sua_id`, `ngay_sua`) VALUES
(3, 'ML1570075152', 10, 18600000, 28, 2260000, 1953000, 1500000, 17407000, '2023-10-03', '', 4, '2023-10-03 10:59:12', 4, '2023-10-03 10:59:12'),
(16, 'ML1700362108', 3, 8050000, 30, 1, 845250, 0, 7204751, '2023-11-19', '', 1, '2023-11-19 09:48:28', 1, '2023-11-19 09:48:28'),
(18, 'ML1700362223', 8, 10360000, 31, 0, 1087800, 0, 9272200, '2023-11-19', '', 1, '2023-11-19 09:50:23', 1, '2023-11-19 09:50:23'),
(19, 'ML1700362443', 13, 5750000, 25, 0, 603750, 0, 5146250, '2023-11-19', '', 1, '2023-11-19 09:54:03', 1, '2023-11-19 09:54:03'),
(20, 'ML1700362499', 4, 16240000, 27, 1, 1705200, 0, 14534801, '2023-11-19', '', 1, '2023-11-19 09:54:59', 1, '2023-11-19 09:54:59'),
(21, 'ML1700362550', 11, 9610000, 28, 3, 1009050, 2700, 8598253, '2023-11-19', '', 1, '2023-11-19 09:55:50', 1, '2023-11-19 09:55:50'),
(23, 'ML1700456643', 5, 5750000, 25, 0, 603750, 0, 5146250, '2023-11-20', '', 1, '2023-11-20 12:04:03', 1, '2023-11-20 12:04:03'),
(25, 'ML1700918063', 3, 8050000, 30, 1650000, 845250, 0, 8854750, '2023-11-25', '', 1, '2023-11-25 20:14:23', 1, '2023-11-25 20:14:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `ma_nv` varchar(50) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `ten_nv` varchar(255) NOT NULL,
  `biet_danh` varchar(255) NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `noi_sinh` varchar(255) NOT NULL,
  `hon_nhan_id` int(11) NOT NULL,
  `so_cmnd` varchar(50) NOT NULL,
  `noi_cap_cmnd` varchar(255) NOT NULL,
  `ngay_cap_cmnd` date NOT NULL,
  `nguyen_quan` varchar(255) NOT NULL,
  `quoc_tich_id` int(11) NOT NULL,
  `ton_giao_id` int(11) NOT NULL,
  `dan_toc_id` int(11) NOT NULL,
  `ho_khau` varchar(255) NOT NULL,
  `tam_tru` varchar(255) NOT NULL,
  `loai_nv_id` int(11) NOT NULL,
  `trinh_do_id` int(11) NOT NULL,
  `chuyen_mon_id` int(11) NOT NULL,
  `bang_cap_id` int(11) NOT NULL,
  `phong_ban_id` int(11) NOT NULL,
  `chuc_vu_id` int(11) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `nguoi_tao_id` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua_id` int(11) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `ma_nv`, `hinh_anh`, `ten_nv`, `biet_danh`, `gioi_tinh`, `ngay_sinh`, `noi_sinh`, `hon_nhan_id`, `so_cmnd`, `noi_cap_cmnd`, `ngay_cap_cmnd`, `nguyen_quan`, `quoc_tich_id`, `ton_giao_id`, `dan_toc_id`, `ho_khau`, `tam_tru`, `loai_nv_id`, `trinh_do_id`, `chuyen_mon_id`, `bang_cap_id`, `phong_ban_id`, `chuc_vu_id`, `trang_thai`, `nguoi_tao_id`, `ngay_tao`, `nguoi_sua_id`, `ngay_sua`) VALUES
(2, 'MNV1569830976', '1700361774.png', 'Trần Ngô Hồng Vinh', 'Vinh đá', 1, '2003-08-16', 'Đà Nẵng', 2, '371843242', 'Đà Nẵng', '2016-09-30', 'Đà Nẵng', 24, 0, 1, 'Đà Nẵng', 'Đà Nẵng', 2, 18, 2, 2, 22, 33, 0, 4, '2019-09-30 15:09:36', 1, '2023-11-19 09:42:54'),
(3, 'MNV1569831824', '1700361689.png', 'Dương Hải Nhi', '', 0, '2001-06-06', 'Đà Nẵng', 1, '3718087785', 'Đà Nẵng', '2015-09-08', 'Đà Nẵng', 24, 1, 1, 'Đà Nẵng', 'Đà Nẵng', 2, 17, 11, 1, 22, 33, 1, 4, '2019-09-30 15:23:44', 1, '2023-11-19 09:41:39'),
(4, 'MNV1569833913', '1700361542.png', 'Nguyễn Phước Thanh', '', 1, '1988-10-17', 'Phú Quốc - Kiên Giang', 3, '567423431', 'Kiên Giang', '2002-04-23', 'Phú Quốc - Kiên Giang', 24, 0, 1, 'Phú Quốc - Kiên Giang', 'Phú Quốc - Kiên Giang', 2, 18, 15, 2, 20, 16, 1, 4, '2019-09-30 15:58:33', 1, '2023-11-21 15:36:47'),
(5, 'MNV1569834099', '1700361353.png', 'Nguyễn Phước An', 'Anne', 0, '2002-01-07', 'Đà Nẵng ', 1, '378623143', 'Đà Nẵng ', '2020-01-07', 'Đà Nẵng ', 24, 1, 1, 'Đà Nẵng ', 'Đà Nẵng ', 4, 17, 5, 1, 21, 33, 1, 4, '2019-09-30 16:01:39', 1, '2023-11-19 09:35:53'),
(8, 'MNV1569835233', '1700361237.png', 'Võ Thị Ngọc Trâm', 'Phương Kòi', 0, '2002-01-25', 'Hồ Chí Minh', 2, '3718087777', 'Hồ Chí Minh', '2012-09-30', 'Hồ Chí Minh', 24, 0, 1, 'Cà Mau', 'Đồng Nai', 3, 17, 5, 2, 20, 38, 1, 4, '2019-09-30 16:20:33', 1, '2023-11-19 09:33:57'),
(10, 'MNV1569905940', '1700361066.jpg', 'Nguyễn Minh Thông', 'Thông thái', 1, '1990-10-16', 'Đà Nẵng', 3, '3718087744', 'Đà Nẵng', '1997-04-02', 'Đà Nẵng', 24, 1, 1, 'Đà Nẵng', 'Đà Nẵng', 2, 18, 14, 4, 20, 17, 1, 4, '2019-10-01 11:59:00', 1, '2023-11-19 09:31:06'),
(11, 'MNV1569906116', '1700359734.png', 'Nguyễn Đinh Thiện', 'Mason', 1, '2000-02-01', 'Đà Nẵng', 2, '343214564', 'Đà Nẵng', '2020-08-11', 'Đà Nẵng', 24, 0, 1, 'Đà Nẵng', 'Đà Nẵng', 2, 18, 7, 11, 23, 37, 1, 4, '2019-10-01 12:01:56', 1, '2023-11-19 09:29:01'),
(13, 'MNV1571124772', '1700359496.png', 'Phan Dương Sỹ Khoa', 'Lele', 1, '2003-09-16', 'Đà Nẵng', 1, '1234567', 'Đà Nẵng', '2020-12-05', 'Đà Nẵng', 24, 0, 1, 'Đà Nẵng', 'Đà Nẵng', 2, 17, 3, 1, 21, 33, 1, 12, '2019-10-15 14:32:52', 1, '2023-11-20 08:37:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom`
--

CREATE TABLE `nhom` (
  `id` int(11) NOT NULL,
  `ma_nhom` varchar(50) NOT NULL,
  `ten_nhom` varchar(255) NOT NULL,
  `mo_ta` varchar(255) NOT NULL,
  `nguoi_tao` varchar(255) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(255) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhom`
--

INSERT INTO `nhom` (`id`, `ma_nhom`, `ten_nhom`, `mo_ta`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(5, 'GRP1571110790', 'Nhóm tổ chức sự kiện', '', 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54', 'Phan Dương Sỹ Khoa', '2023-11-19 09:45:54'),
(9, 'GRP1700457373', 'Nhóm truyền thông ', '', 'KhoaPhan Dương Sỹ ', '2023-11-20 12:16:27', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_ban`
--

CREATE TABLE `phong_ban` (
  `id` int(11) NOT NULL,
  `ma_phong_ban` varchar(255) NOT NULL,
  `ten_phong_ban` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) DEFAULT NULL,
  `ngay_sua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phong_ban`
--

INSERT INTO `phong_ban` (`id`, `ma_phong_ban`, `ten_phong_ban`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(20, 'MBP1569204111', 'Phòng tổ chức - hành chính', '', 'Phan Dương Sỹ Khoa', '2023-09-23 10:26:51', 'Phan Dương Sỹ Khoa', '2023-09-23 10:26:51'),
(21, 'MBP1569204120', 'Phòng kinh doanh', '', 'Phan Dương Sỹ Khoa', '2023-11-10 07:02:00', 'Phan Dương Sỹ Khoa', '2023-11-10 07:02:00'),
(22, 'MBP1569204129', 'Phòng tài chính - kế toán', '', 'Phan Dương Sỹ Khoa', '2023-01-23 09:06:59', 'Phan Dương Sỹ Khoa', '2023-01-23 09:06:59'),
(23, 'MBP1569204142', 'Văn phòng đại diện', '', 'Phan Dương Sỹ Khoa', '2023-11-10 07:02:00', 'Phan Dương Sỹ Khoa', '2023-11-10 07:02:00'),
(24, 'MBP1569204214', 'Phòng kinh tế - kỹ thuật', '', 'Phan Dương Sỹ Khoa', '2023-09-23 10:26:51', 'Phan Dương Sỹ Khoa', '2023-09-23 10:26:51'),
(25, 'MBP1569204303', 'Phòng kế hoạch - kinh doanh', '', 'Phan Dương Sỹ Khoa', '2023-09-23 10:26:51', 'Phan Dương Sỹ Khoa', '2023-09-23 10:26:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quoc_tich`
--

CREATE TABLE `quoc_tich` (
  `id` int(11) NOT NULL,
  `ten_quoc_tich` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quoc_tich`
--

INSERT INTO `quoc_tich` (`id`, `ten_quoc_tich`) VALUES
(3, 'British / English'),
(4, 'Anh'),
(7, 'Finnish'),
(16, 'Na Uy'),
(21, 'Séc'),
(22, 'Ba Lan'),
(23, 'Mỹ'),
(24, 'Việt Nam'),
(26, 'Trung Quốc'),
(27, 'Mông Cổ'),
(28, 'Triều Tiên'),
(29, 'Đài Loan'),
(30, 'Campuchia'),
(31, 'Indonesia'),
(32, 'Lào'),
(33, 'Philipin'),
(34, 'Thái Lan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(11) NOT NULL,
  `ho` varchar(50) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `hinh_anh` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `so_dt` varchar(50) NOT NULL,
  `quyen` tinyint(1) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `truy_cap` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `ho`, `ten`, `hinh_anh`, `email`, `mat_khau`, `so_dt`, `quyen`, `trang_thai`, `truy_cap`, `ngay_tao`, `ngay_sua`) VALUES
(1, 'Khoa', 'Phan Dương Sỹ ', 'admin.png', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', '1234567899', 1, 1, 66, '2023-10-31 09:41:20', '2023-11-21 15:40:12'),
(11, 'Võ ', 'Trâm', '1700363088.png', 'tram25012002@gmail.com', '123456', '1234567890', 0, 1, 5, '2023-09-22 08:09:19', '2023-09-22 08:09:19'),
(12, 'Phan ', 'Dương Sỹ Khoa', 'admin.png', 'khoa05670@gmail.com', '202cb962ac59075b964b07152d234b70', '1234567890', 1, 1, 16, '2019-10-06 00:00:00', '2023-11-19 08:44:46'),
(13, 'ab', 'c', 'admin.png', 'abc@gmail.com', '202cb962ac59075b964b07152d234b70', '122345679', 0, 1, 3, '2023-11-23 17:51:39', '2023-11-23 17:51:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh_trang_hon_nhan`
--

CREATE TABLE `tinh_trang_hon_nhan` (
  `id` int(11) NOT NULL,
  `ten_tinh_trang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinh_trang_hon_nhan`
--

INSERT INTO `tinh_trang_hon_nhan` (`id`, `ten_tinh_trang`) VALUES
(1, 'Độc thân'),
(2, 'Đính hôn'),
(3, 'Có gia đình'),
(4, 'Ly thân'),
(5, 'Ly hôn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ton_giao`
--

CREATE TABLE `ton_giao` (
  `id` int(11) NOT NULL,
  `ten_ton_giao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ton_giao`
--

INSERT INTO `ton_giao` (`id`, `ten_ton_giao`) VALUES
(0, 'Không'),
(1, 'Phật giáo'),
(2, 'Thiên chúa giáo'),
(3, 'Đạo tin lành'),
(4, 'Hồi giáo'),
(5, 'Do Thái giáo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trinh_do`
--

CREATE TABLE `trinh_do` (
  `id` int(11) NOT NULL,
  `ma_trinh_do` varchar(50) NOT NULL,
  `ten_trinh_do` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  `nguoi_tao` varchar(50) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trinh_do`
--

INSERT INTO `trinh_do` (`id`, `ma_trinh_do`, `ten_trinh_do`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`) VALUES
(1, 'MTD1569206480', '1/12', '<p>Tr&igrave;nh độ lớp 1/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(2, 'MTD1569206546', '2/12', '<p>Tr&igrave;nh độ lớp 2/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(3, 'MTD1569206555', '3/12', '<p>Tr&igrave;nh độ lớp 3/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(4, 'MTD1569206570', '4/12', '<p>Tr&igrave;nh độ lớp 4/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(5, 'MTD1569206579', '5/12', '<p>Tr&igrave;nh độ lớp 5/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(6, 'MTD1569206590', '6/12', '<p>Tr&igrave;nh độ lớp 6/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(7, 'MTD1569206604', '7/12', '<p>Tr&igrave;nh độ lớp 7/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(8, 'MTD1569206616', '8/12', '<p>Tr&igrave;nh độ lớp 8/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(9, 'MTD1569206628', '9/12', '<p>Tr&igrave;nh độ lớp 9/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(10, 'MTD1569206638', '10/12', '<p>Tr&igrave;nh độ lớp 10/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(11, 'MTD1569206649', '11/12', '<p>Tr&igrave;nh độ lớp 11/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(12, 'MTD1569206662', '12/12', '<p>Tr&igrave;nh độ lớp 12/12</p>\r\n', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(15, 'MTD1569651298', 'Trung cấp', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(16, 'MTD1569651304', 'Cao đẳng', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(17, 'MTD1569651310', 'Đại học', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20'),
(18, 'MTD1569651317', 'Cao học', '', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20', 'Phan Dương Sỹ Khoa', '2023-10-31 09:41:20');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bang_cap`
--
ALTER TABLE `bang_cap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chinh_luong`
--
ALTER TABLE `chinh_luong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`);

--
-- Chỉ mục cho bảng `chi_tiet_nhom`
--
ALTER TABLE `chi_tiet_nhom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chuc_vu`
--
ALTER TABLE `chuc_vu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chuyen_mon`
--
ALTER TABLE `chuyen_mon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cong_tac`
--
ALTER TABLE `cong_tac`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`);

--
-- Chỉ mục cho bảng `dan_toc`
--
ALTER TABLE `dan_toc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khen_thuong_ky_luat`
--
ALTER TABLE `khen_thuong_ky_luat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loai_kt_id` (`loai_kt_id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`);

--
-- Chỉ mục cho bảng `loai_khen_thuong_ky_luat`
--
ALTER TABLE `loai_khen_thuong_ky_luat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_nv`
--
ALTER TABLE `loai_nv`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `luong`
--
ALTER TABLE `luong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quoc_tich_id` (`quoc_tich_id`),
  ADD KEY `ton_giao_id` (`ton_giao_id`),
  ADD KEY `dan_toc_id` (`dan_toc_id`),
  ADD KEY `loai_nv_id` (`loai_nv_id`),
  ADD KEY `chuyen_mon_id` (`chuyen_mon_id`),
  ADD KEY `trinh_do_id` (`trinh_do_id`),
  ADD KEY `bang_cap_id` (`bang_cap_id`),
  ADD KEY `phong_ban_id` (`phong_ban_id`),
  ADD KEY `chuc_vu_id` (`chuc_vu_id`),
  ADD KEY `nguoi_tao_id` (`nguoi_tao_id`),
  ADD KEY `nguoi_sua_id` (`nguoi_sua_id`);

--
-- Chỉ mục cho bảng `nhom`
--
ALTER TABLE `nhom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phong_ban`
--
ALTER TABLE `phong_ban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quoc_tich`
--
ALTER TABLE `quoc_tich`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tinh_trang_hon_nhan`
--
ALTER TABLE `tinh_trang_hon_nhan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ton_giao`
--
ALTER TABLE `ton_giao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trinh_do`
--
ALTER TABLE `trinh_do`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bang_cap`
--
ALTER TABLE `bang_cap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `chinh_luong`
--
ALTER TABLE `chinh_luong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_nhom`
--
ALTER TABLE `chi_tiet_nhom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `chuc_vu`
--
ALTER TABLE `chuc_vu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `chuyen_mon`
--
ALTER TABLE `chuyen_mon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `cong_tac`
--
ALTER TABLE `cong_tac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dan_toc`
--
ALTER TABLE `dan_toc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `khen_thuong_ky_luat`
--
ALTER TABLE `khen_thuong_ky_luat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `loai_khen_thuong_ky_luat`
--
ALTER TABLE `loai_khen_thuong_ky_luat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `loai_nv`
--
ALTER TABLE `loai_nv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `luong`
--
ALTER TABLE `luong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `nhom`
--
ALTER TABLE `nhom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `phong_ban`
--
ALTER TABLE `phong_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `quoc_tich`
--
ALTER TABLE `quoc_tich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tinh_trang_hon_nhan`
--
ALTER TABLE `tinh_trang_hon_nhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `ton_giao`
--
ALTER TABLE `ton_giao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `trinh_do`
--
ALTER TABLE `trinh_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chinh_luong`
--
ALTER TABLE `chinh_luong`
  ADD CONSTRAINT `chinh_luong_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cong_tac`
--
ALTER TABLE `cong_tac`
  ADD CONSTRAINT `cong_tac_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `khen_thuong_ky_luat`
--
ALTER TABLE `khen_thuong_ky_luat`
  ADD CONSTRAINT `khen_thuong_ky_luat_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `khen_thuong_ky_luat_ibfk_2` FOREIGN KEY (`loai_kt_id`) REFERENCES `loai_khen_thuong_ky_luat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `luong`
--
ALTER TABLE `luong`
  ADD CONSTRAINT `luong_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`quoc_tich_id`) REFERENCES `quoc_tich` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`ton_giao_id`) REFERENCES `ton_giao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`dan_toc_id`) REFERENCES `dan_toc` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_4` FOREIGN KEY (`loai_nv_id`) REFERENCES `loai_nv` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_5` FOREIGN KEY (`trinh_do_id`) REFERENCES `trinh_do` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_6` FOREIGN KEY (`chuyen_mon_id`) REFERENCES `chuyen_mon` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_7` FOREIGN KEY (`bang_cap_id`) REFERENCES `bang_cap` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_8` FOREIGN KEY (`phong_ban_id`) REFERENCES `phong_ban` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_9` FOREIGN KEY (`chuc_vu_id`) REFERENCES `chuc_vu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
