-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 15, 2024 lúc 08:31 AM
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
-- Cơ sở dữ liệu: `db_qldsv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangnhap`
--

CREATE TABLE `tbl_dangnhap` (
  `email` varchar(50) NOT NULL,
  `mat_khau` varchar(50) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangnhap`
--

INSERT INTO `tbl_dangnhap` (`email`, `mat_khau`, `id`) VALUES
('duonghoangdinh0804@gmail.com', '115493674d69a7d9733346085744c5b6', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_diemhocphan`
--

CREATE TABLE `tbl_diemhocphan` (
  `ma_sv` varchar(10) DEFAULT NULL,
  `ma_hoc_phan` varchar(15) DEFAULT NULL,
  `A` tinyint(4) DEFAULT NULL,
  `B` tinyint(4) DEFAULT NULL,
  `C` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_diemhocphan`
--

INSERT INTO `tbl_diemhocphan` (`ma_sv`, `ma_hoc_phan`, `A`, `B`, `C`) VALUES
('2021050852', '7080116', 0, 0, 6),
('2121051196', '7080116', 0, 7, 6),
('2121050769', '7080116', 6, 7, 6),
('1921050080', '7080116', 8, 8, 8),
('2121051137', '7080116', 7, 7, 6),
('2021050113', '7080116', 6, 7, 6),
('1921050114', '7080116', 5, 7, 6),
('2121051416', '7080116', 5, 8, 8),
('2021050151', '7080116', 6, 8, 8),
('2021050153', '7080116', 7, 8, 8),
('2021050160', '7080116', 8, 8, 9),
('2121051087', '7080116', 6, 8, 9),
('2021050181', '7080116', 0, 0, 6),
('2121051410', '7080116', 0, 7, 6),
('1821050942', '7080116', 7, 8, 8),
('1821051099', '7080116', 6, 9, 10),
('2021050206', '7080116', 5, 9, 10),
('2121051194', '7080116', 0, 7, 6),
('1921050195', '7080116', 5, 7, 6),
('1921050206', '7080116', 8, 8, 8),
('2021050222', '7080116', 5, 9, 10),
('2121050151', '7080116', 0, 0, 6),
('2021050233', '7080116', 8, 9, 10),
('2121050152', '7080116', 0, 8, 9),
('2021050246', '7080116', 8, 8, 9),
('1921050245', '7080116', 0, 0, 6),
('2021050266', '7080116', 5, 7, 6),
('2021050270', '7080116', 8, 9, 10),
('2021050312', '7080116', 8, 8, 9),
('2021050319', '7080116', 6, 8, 9),
('2021050326', '7080116', 8, 9, 10),
('2121050169', '7080116', 6, 7, 6),
('2021050343', '7080116', 8, 9, 10),
('2021050344', '7080116', 8, 8, 8),
('2021050352', '7080116', 7, 7, 6),
('2021050362', '7080116', 7, 7, 6),
('2021050363', '7080116', 0, 0, 6),
('2021050367', '7080116', 6, 8, 9),
('2021050372', '7080116', 8, 9, 10),
('2021050373', '7080116', 5, 7, 6),
('1921050346', '7080116', 8, 9, 10),
('2021050377', '7080116', 8, 8, 8),
('1821050160', '7080116', 8, 9, 10),
('2021050406', '7080116', 8, 8, 9),
('1821050161', '7080116', 0, 0, 8),
('2021050437', '7080116', 0, 0, 6),
('2121050765', '7080116', 6, 8, 9),
('2121051437', '7080116', 0, 7, 6),
('2021050482', '7080116', 7, 9, 10),
('2021050483', '7080116', 0, 7, 6),
('2021050855', '7080116', 0, 0, 6),
('1721050409', '7080116', 0, 0, 6),
('2121051472', '7080116', 0, 0, 9),
('2121051293', '7080116', 6, 8, 8),
('1721050251', '7080116', 7, 8, 8),
('2021050545', '7080116', 8, 8, 9),
('2021050548', '7080116', 9, 7, 9),
('2024011376', '7080116', 7, 7, 9),
('1921050563', '7080116', 8, 6, 10),
('1821050709', '7080116', 8, 7, 10),
('2021050633', '7080116', 8, 6, 10),
('1921050769', '7080116', 6, 8, 7),
('2121050405', '7080116', 5, 8, 6),
('2121050190', '7080116', 6, 7, 7),
('2121050140', '7080116', 6, 7, 8),
('1921050700', '7080116', 8, 7, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hocphan`
--

CREATE TABLE `tbl_hocphan` (
  `ma_hoc_phan` varchar(15) DEFAULT NULL,
  `ten_hoc_phan` varchar(30) DEFAULT NULL,
  `tin_chi` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_hocphan`
--

INSERT INTO `tbl_hocphan` (`ma_hoc_phan`, `ten_hoc_phan`, `tin_chi`) VALUES
('7080116', 'Phát triển ứng dụng web + BTL', 4),
('7080118', 'Thiết kế website', 2),
('7080206', 'Cấu trúc dữ liệu&Giải thuật', 3),
('7080323', 'Dịch vụ dựa trên địa điểm', 3),
('7080410', 'Nhập môn nghành Khoa học Dữ li', 3),
('7080112', 'Trí tuệ nhân tạo', 3),
('7080319', 'Trực quan hóa dữ liệu', 3),
('7080512', 'Lập trình hướng đối tượng với ', 3),
('7080403', 'Đồ án CNTT Địa học', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khoa`
--

CREATE TABLE `tbl_khoa` (
  `ma_khoa` smallint(6) DEFAULT NULL,
  `ten_khoa` varchar(50) DEFAULT NULL,
  `sdt` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_khoa`
--

INSERT INTO `tbl_khoa` (`ma_khoa`, `ten_khoa`, `sdt`) VALUES
(7080, 'Công nghệ Thông tin', '(84-24) 3838-75'),
(8070, 'Kinh tế & QTKD', '(84-43) 8387-56'),
(8050, 'Trắc địa - Bản đồ và quản lý đất đai', '(84-43) 8387-56'),
(7100, 'Xây dựng', '(84-24) 8767-54'),
(7060, 'Dầu khí', '(84-26) 7678-52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lopchuyennganh`
--

CREATE TABLE `tbl_lopchuyennganh` (
  `ma_lop` varchar(15) DEFAULT NULL,
  `ten_lop` varchar(50) DEFAULT NULL,
  `nien_khoa` varchar(5) DEFAULT NULL,
  `si_so` smallint(6) DEFAULT NULL,
  `ma_khoa` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lopchuyennganh`
--

INSERT INTO `tbl_lopchuyennganh` (`ma_lop`, `ten_lop`, `nien_khoa`, `si_so`, `ma_khoa`) VALUES
('DCCTCT66A1', 'Đại học_Công nghệ thông tin_K66A1', 'K66', 67, 7080),
('DCCTCT66B1', 'Đại học_Công nghệ thông tin_K66B1', 'K66', 62, 7080),
('DCCTCT66D1', 'Đại học_Công nghệ thông tin_K66D1', 'K66', 64, 7080),
('DCCTCT66H1', 'Đại học_Công nghệ thông tin_K66H1', 'K66', 61, 7080),
('DCCTCT66I1', 'Đại học_Công nghệ thông tin_K66I1', 'K66', 68, 7080),
('DCCTCT66K1', 'Đại học_Công nghệ thông tin_K66K1', 'K66', 60, 7080),
('DCCTCT66L1', 'Đại học_Công nghệ thông tin_K66L1', 'K66', 62, 7080),
('DCCTCT66M1', 'Đại học_Công nghệ thông tin_K66M1', 'K66', 65, 7080),
('DCCTDH63A', 'Đại học - Công nghệ thông tin địa học A - K63', 'K63', 25, 7080),
('DCCTDH64', 'Đại học - Công ngệ thông tin địa học - K64', 'K64', 28, 7080),
('DCCTDH65A', 'Đại học - Công nghệ thông tin địa học A - K65', 'K65', 27, 7080),
('DCCTHT63B', 'Đại học - Hệ thống thông tin B - K63', 'K63', 40, 7080),
('DCCTHT65A', 'Đại học - Hệ thông thông tin A- K65', 'K65', 35, 7080),
('DCCTHT65B', 'Đại học - Hệ thông thông tin B- K65', 'K65', 30, 7080),
('DCCTKH64A', 'Đại học - Khoa học máy tính ứng dụng A- K64', 'K64', 39, 7080),
('DCCTKH64B', 'Đại học - Khoa học máy tính ứng dụng B- K64', 'K64', 36, 7080),
('DCCTKH65A', 'Đại học - Khoa học máy tính ứng dụng A- K65', 'K65', 38, 7080),
('DCCTKH65B', 'Đại học - Khoa học máy tính ứng dụng B- K65', 'K65', 34, 7080),
('DCCTKT62', 'Đại học - Tin học Kinh tế - K62', 'K62', 40, 7080),
('DCCTKT63A', 'Đại học - Tin học kinh tế A - K63', 'K63', 42, 7080),
('DCCTKT64A', 'Đại học - Tin học kinh tế A- K64', 'K64', 46, 7080),
('DCCTKT65A', 'Đại học - Tin học kinh tế A- K65', 'K65', 41, 7080),
('DCCTKT65B', 'Đại học - Tin học kinh tế B- K65', 'K65', 40, 7080),
('DCCTMM63C', 'Đại học - Mạng máy tính C - K63', 'K63', 36, 7080),
('DCCTMM65A', 'Đại học - Mạng máy tính A- K65', 'K65', 38, 7080),
('DCCTMM65B', 'Đại học - Mạng máy tính B- K65', 'K65', 37, 7080),
('DCCTPM62A', 'Đại học - Công nghệ phần mềm A - K62', 'K62', 42, 7080),
('DCCTPM63A', 'Đại học - Công nghệ phần mềm A - K63', 'K63', 45, 7080),
('DCCTPM64A', 'Đại học - Công nghệ phần mềm A- K64', 'K64', 48, 7080),
('DCCTPM65C', 'Đại học - Công nghệ phần mềm C- K65', 'K65', 52, 7080),
('DCCTCT63', 'Đại học - Công nghệ thông tin_K63', 'K63', 26, 7080),
('DCCTCT65B1', 'Đại học_Công nghệ thông tin B1_K65', 'K65', 30, 7080),
('DCCTCT66C2', 'Đại học_Công nghệ thông tin_K66C2', 'K66', 36, 7080),
('DCCTDH65B', 'Đại học - Công nghệ thông tin địa học B - K65', 'K65', 32, 7080),
('DCCTPM65A', 'Đại học - Công nghệ phần mềm A- K65', 'K65', 48, 7080),
('DCCTPM65B', 'Đại học - Công nghệ phần mềm B- K65', 'K65', 50, 7080);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lophocphan`
--

CREATE TABLE `tbl_lophocphan` (
  `ma_lop` varchar(15) DEFAULT NULL,
  `ma_hoc_phan` varchar(15) DEFAULT NULL,
  `nhom` int(4) DEFAULT NULL,
  `hoc_ki` int(4) DEFAULT NULL,
  `nam_hoc` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lophocphan`
--

INSERT INTO `tbl_lophocphan` (`ma_lop`, `ma_hoc_phan`, `nhom`, `hoc_ki`, `nam_hoc`) VALUES
('DCCTCT66A1', '7080116', 1, 3, '2022-2023'),
('DCCTCT66B1', '7080116', 1, 3, '2022-2024'),
('DCCTCT66D1', '7080116', 1, 3, '2022-2025'),
('DCCTCT66H1', '7080116', 1, 3, '2022-2026'),
('DCCTCT66I1', '7080116', 1, 3, '2022-2027'),
('DCCTCT66K1', '7080116', 1, 3, '2022-2028'),
('DCCTCT66L1', '7080116', 1, 3, '2022-2029'),
('DCCTCT66M1', '7080116', 1, 3, '2022-2030'),
('DCCTDH63A', '7080116', 1, 3, '2022-2031'),
('DCCTDH64', '7080116', 1, 3, '2022-2032'),
('DCCTDH65A', '7080116', 1, 3, '2022-2033'),
('DCCTHT63B', '7080116', 1, 3, '2022-2034'),
('DCCTHT65A', '7080116', 1, 3, '2022-2035'),
('DCCTHT65B', '7080116', 1, 3, '2022-2036'),
('DCCTKH64A', '7080116', 1, 3, '2022-2037'),
('DCCTKH64B', '7080116', 1, 3, '2022-2038'),
('DCCTKH65A', '7080116', 1, 3, '2022-2039'),
('DCCTKH65B', '7080116', 1, 3, '2022-2040'),
('DCCTKT62', '7080116', 1, 3, '2022-2041'),
('DCCTKT63A', '7080116', 1, 3, '2022-2042'),
('DCCTKT64A', '7080116', 1, 3, '2022-2043'),
('DCCTKT65A', '7080116', 1, 3, '2022-2044'),
('DCCTKT65B', '7080116', 1, 3, '2022-2045'),
('DCCTMM63C', '7080116', 1, 3, '2022-2046'),
('DCCTMM65A', '7080116', 1, 3, '2022-2047'),
('DCCTMM65B', '7080116', 1, 3, '2022-2048'),
('DCCTPM62A', '7080116', 1, 3, '2022-2049'),
('DCCTPM63A', '7080116', 1, 3, '2022-2050'),
('DCCTPM64A', '7080116', 1, 3, '2022-2051'),
('DCCTPM65C', '7080116', 1, 3, '2022-2052');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sinhvien`
--

CREATE TABLE `tbl_sinhvien` (
  `ma_sv` varchar(10) DEFAULT NULL,
  `ho_lot` varchar(20) DEFAULT NULL,
  `ten` varchar(10) DEFAULT NULL,
  `ma_lop` varchar(15) DEFAULT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sinhvien`
--

INSERT INTO `tbl_sinhvien` (`ma_sv`, `ho_lot`, `ten`, `ma_lop`, `sdt`, `email`) VALUES
('2021050852', 'Cao Thế', 'Anh', 'DCCTPM65C', '702275926', '2021050852@student.humg.edu.vn'),
('2121051196', 'Hồ Duy', 'Anh', 'DCCTCT66K1', '339762136', '2121051196@student.humg.edu.vn'),
('2121050769', 'Tô Việt', 'Anh', 'DCCTCT66H1', '835118142', '2121050769@student.humg.edu.vn'),
('1921050080', 'Trần Phú', 'Anh', 'DCCTKH64A', '383173158', '1921050080@student.humg.edu.vn'),
('2121051137', 'Lý Ngọc', 'Bách', 'DCCTCT66K1', '865351633', '2121051137@student.humg.edu.vn'),
('2021050113', 'Trần Hải', 'Châu', 'DCCTMM65B', '865510928', '2021050113@student.humg.edu.vn'),
('1921050114', 'Nguyễn Duyên', 'Cường', 'DCCTKT64A', '367976335', '1921050114@student.humg.edu.vn'),
('2121051416', 'Nguyễn Mạnh', 'Dũng', 'DCCTCT66M1', '347215326', '2121051416@student.humg.edu.vn'),
('2021050151', 'Lê Minh', 'Duy', 'DCCTHT65B', '965155701', '2021050151@student.humg.edu.vn'),
('2021050153', 'Nguyễn Hải', 'Duy', 'DCCTHT65A', '354959566', '2021050153@student.humg.edu.vn'),
('2021050160', 'Hà Hoàng Đức', 'Dương', 'DCCTHT65A', '386936806', '2021050160@student.humg.edu.vn'),
('2121051087', 'Hoàng Đình', 'Dương', 'DCCTCT66I1', '332290626', '2121051087@student.humg.edu.vn'),
('2021050181', 'Nguyễn Tiến', 'Đạt', 'DCCTMM65A', '367936202', '2021050181@student.humg.edu.vn'),
('2121051410', 'Vũ Ngọc', 'Đạt', 'DCCTCT66M1', '868336018', '2121051410@student.humg.edu.vn'),
('1821050942', 'Cao Văn', 'Đức', 'DCCTDH63A', '1638811658', '1821050942@student.humg.edu.vn'),
('1821051099', 'Lâm Minh', 'Đức', 'DCCTHT63B', '989966325', '1821051099@student.humg.edu.vn'),
('2021050206', 'Ngô Văn', 'Đức', 'DCCTKT65A', '355899098', '2021050206@student.humg.edu.vn'),
('2121051194', 'Nguyễn Đình', 'Đức', 'DCCTCT66K1', '967388003', '2121051194@student.humg.edu.vn'),
('1921050195', 'Nguyễn Tài', 'Đức', 'DCCTKT64A', '333427252', '1921050195@student.humg.edu.vn'),
('1921050206', 'Nguyễn Trường', 'Giang', 'DCCTKH64A', '354117902', '1921050206@student.humg.edu.vn'),
('2021050222', 'Nguyễn Trường', 'Giang', 'DCCTKH65B', '702020831', '2021050222@student.humg.edu.vn'),
('2121050151', 'Nguyễn Trường', 'Giang', 'DCCTCT66B1', '357161432', '2121050151@student.humg.edu.vn'),
('2021050233', 'Bùi Phúc', 'Hải', 'DCCTKH65B', '928478620', 'kichirango2742@gmail.com'),
('2121050152', 'Đinh Tiến', 'Hải', 'DCCTCT66B1', '862695123', '2121050152@student.humg.edu.vn'),
('2021050246', 'Vũ Trung', 'Hậu', 'DCCTKT65B', '971786693', '2021050246@student.humg.edu.vn'),
('1921050245', 'Nguyễn Văn', 'Hiếu', 'DCCTKH64A', '366387512', '1921050245@student.humg.edu.vn'),
('2021050266', 'Phạm Công', 'Hiếu', 'DCCTMM65A', '906243117', '2021050266@student.humg.edu.vn'),
('2021050270', 'Vũ Đức', 'Hiếu', 'DCCTMM65B', '337483956', '2021050270@student.humg.edu.vn'),
('2021050312', 'Nguyễn Quang', 'Huy', 'DCCTKH65A', '399570205', '2021050312@student.humg.edu.vn'),
('2021050319', 'Ninh Quang', 'Huy', 'DCCTKH65B', '972950629', '2021050319@student.humg.edu.vn'),
('2021050326', 'Nguyễn Thị', 'Huyền', 'DCCTHT65B', '342694913', '2021050326@student.humg.edu.vn'),
('2121050169', 'Nguyễn Tuấn', 'Hưng', 'DCCTCT66B1', '585827635', '2121050169@student.humg.edu.vn'),
('2021050343', 'Trần Văn', 'Khá', 'DCCTKH65B', '362871914', '2021050343@student.humg.edu.vn'),
('2021050344', 'Nguyễn Thiện', 'Khải', 'DCCTKH65A', '914097128', '2021050344@student.humg.edu.vn'),
('2021050352', 'Nguyễn Văn', 'Khánh', 'DCCTHT65A', '943568008', '2021050352@student.humg.edu.vn'),
('2021050362', 'Nguyễn Ngọc', 'Kiên', 'DCCTKH65A', '972562320', '2021050362@student.humg.edu.vn'),
('2021050363', 'Nguyễn Trung', 'Kiên', 'DCCTKT65B', '382917017', '2021050363@student.humg.edu.vn'),
('2021050367', 'Vũ Văn', 'Kiên', 'DCCTKH65B', '963527160', '2021050367@student.humg.edu.vn'),
('2021050372', 'Bùi Duy', 'Lâm', 'DCCTMM65A', '356448298', '2021050372@student.humg.edu.vn'),
('2021050373', 'Bùi Đức', 'Lâm', 'DCCTPM65C', '354810133', '2021050373@student.humg.edu.vn'),
('1921050346', 'Dương Xuân', 'Lâm', 'DCCTKH64B', '973216132', '1921050346@student.humg.edu.vn'),
('2021050377', 'Nguyễn Trọng', 'Lâm', 'DCCTPM65C', '377382374', '2021050377@student.humg.edu.vn'),
('1821050160', 'Đinh Tiến', 'Long', 'DCCTKT63A', '964654781', '1821050160@student.humg.edu.vn'),
('2021050406', 'Nguyễn Đình', 'Long', 'DCCTMM65B', '971063820', '2021050406@student.humg.edu.vn'),
('1821050161', 'Chử Thành', 'Luân', 'DCCTPM63A', '966828454', '1821050161@student.humg.edu.vn'),
('2021050437', 'Nguyễn Đức', 'Mạnh', 'DCCTMM65A', '384584911', '2021050437@student.humg.edu.vn'),
('2121050765', 'Vũ Trọng', 'Nghĩa', 'DCCTCT66H1', '977753965', '2121050765@student.humg.edu.vn'),
('2121051437', 'Lê Đức', 'Ngọc', 'DCCTCT66M1', '374301581', '2121051437@student.humg.edu.vn'),
('2021050482', 'Lê Huy', 'Nguyên', 'DCCTMM65B', '587392619', '2021050482@student.humg.edu.vn'),
('2021050483', 'Lưu Ngọc', 'Nguyên', 'DCCTHT65A', '839016636', '2021050483@student.humg.edu.vn'),
('2021050855', 'Đinh Mạnh', 'Phong', 'DCCTKT65A', '904857210', '2021050855@student.humg.edu.vn'),
('1721050409', 'Lại Hồng', 'Phong', 'DCCTKT62', '977015622', '1721050409@student.humg.edu.vn'),
('2121051472', 'Vũ Tiến', 'Phúc', 'DCCTCT66A1', '902062909', '2121051472@student.humg.edu.vn'),
('2121051293', 'Nguyễn Tùng', 'Phương', 'DCCTCT66L1', '934331652', '2121051293@student.humg.edu.vn'),
('1721050251', 'Hoàng Minh', 'Quang', 'DCCTPM62A', '1636365887', '1721050251@student.humg.edu.vn'),
('2021050545', 'Nguyễn Minh', 'Quân', 'DCCTDH65A', '963418764', '2021050545@student.humg.edu.vn'),
('2021050548', 'Trần Ngọc', 'Quân', 'DCCTPM65C', '924023211', '2021050548@student.humg.edu.vn'),
('2024011376', 'Trần Tiến', 'Thành', 'DCCTMM65A', '975258802', '2024011376@student.humg.edu.vn'),
('1921050563', 'Nguyễn Văn', 'Thắng', 'DCCTPM64A', '344484165', '1921050563@student.humg.edu.vn'),
('1821050709', 'Hoàng Văn', 'Thịnh', 'DCCTMM63C', '868779612', '1821050709@student.humg.edu.vn'),
('2021050633', 'Nguyễn Đức', 'Tiến', 'DCCTHT65A', '969009287', '2021050633@student.humg.edu.vn'),
('1921050769', 'Nguyễn Xuân', 'Trường', 'DCCTDH64', '961340778', '1921050769@student.humg.edu.vn'),
('2121050405', 'Vũ Hà Huy', 'Tuấn', 'DCCTCT66D1', '337693183', '2121050405@student.humg.edu.vn'),
('2121050190', 'Đỗ Đức', 'Tuệ', 'DCCTCT66B1', '353355472', '2121050190@student.humg.edu.vn'),
('2121050140', 'Đặng Ngọc', 'Tường', 'DCCTCT66B1', '965019276', '2121050140@student.humg.edu.vn'),
('1921050700', 'Võ Tuấn', 'Vũ', 'DCCTPM64A', '934428104', '1921050700@student.humg.edu.vn');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_dangnhap`
--
ALTER TABLE `tbl_dangnhap`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
