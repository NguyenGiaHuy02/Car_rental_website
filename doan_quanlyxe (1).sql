-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 25, 2022 lúc 11:54 AM
-- Phiên bản máy phục vụ: 8.0.23
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan_quanlyxe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_Admin` varchar(10) NOT NULL,
  `Ten_Admin` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add danhmucxe', 7, 'add_danhmucxe'),
(26, 'Can change danhmucxe', 7, 'change_danhmucxe'),
(27, 'Can delete danhmucxe', 7, 'delete_danhmucxe'),
(28, 'Can view danhmucxe', 7, 'view_danhmucxe'),
(29, 'Can add hangxe', 8, 'add_hangxe'),
(30, 'Can change hangxe', 8, 'change_hangxe'),
(31, 'Can delete hangxe', 8, 'delete_hangxe'),
(32, 'Can view hangxe', 8, 'view_hangxe'),
(33, 'Can add dieukhoan', 9, 'add_dieukhoan'),
(34, 'Can change dieukhoan', 9, 'change_dieukhoan'),
(35, 'Can delete dieukhoan', 9, 'delete_dieukhoan'),
(36, 'Can view dieukhoan', 9, 'view_dieukhoan'),
(37, 'Can add hinhthucthue', 10, 'add_hinhthucthue'),
(38, 'Can change hinhthucthue', 10, 'change_hinhthucthue'),
(39, 'Can delete hinhthucthue', 10, 'delete_hinhthucthue'),
(40, 'Can view hinhthucthue', 10, 'view_hinhthucthue'),
(41, 'Can add taikhoan', 11, 'add_taikhoan'),
(42, 'Can change taikhoan', 11, 'change_taikhoan'),
(43, 'Can delete taikhoan', 11, 'delete_taikhoan'),
(44, 'Can view taikhoan', 11, 'view_taikhoan'),
(45, 'Can add thanhtoan', 12, 'add_thanhtoan'),
(46, 'Can change thanhtoan', 12, 'change_thanhtoan'),
(47, 'Can delete thanhtoan', 12, 'delete_thanhtoan'),
(48, 'Can view thanhtoan', 12, 'view_thanhtoan'),
(49, 'Can add taixe', 13, 'add_taixe'),
(50, 'Can change taixe', 13, 'change_taixe'),
(51, 'Can delete taixe', 13, 'delete_taixe'),
(52, 'Can view taixe', 13, 'view_taixe'),
(53, 'Can add model', 14, 'add_model'),
(54, 'Can change model', 14, 'change_model'),
(55, 'Can delete model', 14, 'delete_model'),
(56, 'Can view model', 14, 'view_model'),
(57, 'Can add nguoithue', 15, 'add_nguoithue'),
(58, 'Can change nguoithue', 15, 'change_nguoithue'),
(59, 'Can delete nguoithue', 15, 'delete_nguoithue'),
(60, 'Can view nguoithue', 15, 'view_nguoithue'),
(61, 'Can add admin', 16, 'add_admin'),
(62, 'Can change admin', 16, 'change_admin'),
(63, 'Can delete admin', 16, 'delete_admin'),
(64, 'Can view admin', 16, 'view_admin'),
(65, 'Can add xe', 17, 'add_xe'),
(66, 'Can change xe', 17, 'change_xe'),
(67, 'Can delete xe', 17, 'delete_xe'),
(68, 'Can view xe', 17, 'view_xe'),
(69, 'Can add hopdong', 18, 'add_hopdong'),
(70, 'Can change hopdong', 18, 'change_hopdong'),
(71, 'Can delete hopdong', 18, 'delete_hopdong'),
(72, 'Can view hopdong', 18, 'view_hopdong'),
(73, 'Can add PayPal IPN', 19, 'add_paypalipn'),
(74, 'Can change PayPal IPN', 19, 'change_paypalipn'),
(75, 'Can delete PayPal IPN', 19, 'delete_paypalipn'),
(76, 'Can view PayPal IPN', 19, 'view_paypalipn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$2yjGsX1MMXs9T1bfm7KkKd$8RU/M27OXZrjOeNu1Qi8k3QBXByHCTmXe2Frev8O9v4=', '2022-12-20 02:17:19.321553', 1, 'Admin1', '', '', 'Orekiyamino21@gmail.com', 1, 1, '2022-10-01 06:50:56.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 5),
(2, 1, 6),
(3, 1, 7),
(4, 1, 8),
(5, 1, 9),
(6, 1, 10),
(7, 1, 11),
(8, 1, 12),
(9, 1, 13),
(10, 1, 14),
(11, 1, 15),
(12, 1, 16),
(13, 1, 21),
(14, 1, 22),
(15, 1, 23),
(16, 1, 24),
(17, 1, 25),
(18, 1, 26),
(19, 1, 27),
(20, 1, 28),
(21, 1, 29),
(22, 1, 30),
(23, 1, 31),
(24, 1, 32),
(25, 1, 33),
(26, 1, 34),
(27, 1, 35),
(28, 1, 36),
(29, 1, 37),
(30, 1, 38),
(31, 1, 39),
(32, 1, 40),
(33, 1, 42),
(34, 1, 43),
(35, 1, 44),
(36, 1, 45),
(37, 1, 46),
(38, 1, 47),
(39, 1, 48),
(40, 1, 49),
(41, 1, 50),
(42, 1, 51),
(43, 1, 52);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucxe`
--

CREATE TABLE `danhmucxe` (
  `id_DanhMucXe` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Ten_DanhMucXe` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmucxe`
--

INSERT INTO `danhmucxe` (`id_DanhMucXe`, `Ten_DanhMucXe`) VALUES
('OT', 'Ôto'),
('XM', 'Xe máy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dieukhoan`
--

CREATE TABLE `dieukhoan` (
  `id_DieuKhoan` varchar(10) NOT NULL,
  `DieuKhoanChung` varchar(255) NOT NULL,
  `DieuKhoanBoiThuong` varchar(255) NOT NULL,
  `DieuKhoanPhatSinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dieukhoan`
--

INSERT INTO `dieukhoan` (`id_DieuKhoan`, `DieuKhoanChung`, `DieuKhoanBoiThuong`, `DieuKhoanPhatSinh`) VALUES
('DK', 'Trong quá trình thực hiện hợp đồng, nếu có đề nghị điều chỉnh thì phải thông báo cho nhau bằng văn bản để cùng bàn bạc giải quyết.\r\n', 'Hai bên cam kết thi hành đúng các điều khoản của hợp đồng, không bên nào tự ý đơn phương sửa đổi, đình chỉ hoặc hủy bỏ hợp đồng. Mọi sự vi phạm phải được xử lý theo pháp luật và phải bồi thường cho bên bị hại', 'Trong quá trình thực hiện hợp đồng, nếu có đề nghị phát sinh thì phải thông báo cho nhau bằng văn bản để cùng bàn bạc giải quyết.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-10-01 07:00:54.998220', '1', 'Admin1', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(2, '2022-10-30 07:03:43.426617', 'FD_EV_E', 'FD_EV_E', 2, '[{\"changed\": {\"fields\": [\"Trangthai\"]}}]', 17, 1),
(3, '2022-10-30 07:06:27.887852', 'FD_EV_E', 'FD_EV_E', 2, '[{\"changed\": {\"fields\": [\"Trangthai\"]}}]', 17, 1),
(4, '2022-10-30 07:08:03.943777', 'FD_EV_E', 'FD_EV_E', 2, '[{\"changed\": {\"fields\": [\"Trangthai\"]}}]', 17, 1),
(5, '2022-10-30 07:09:29.061091', 'FD_EV_E', 'FD_EV_E', 2, '[{\"changed\": {\"fields\": [\"Trangthai\"]}}]', 17, 1),
(6, '2022-11-01 03:36:41.776024', 'TX_00', 'TX_00', 1, '[{\"added\": {}}]', 13, 1),
(7, '2022-12-20 02:19:15.285804', 'TX_05', 'TX_05', 1, '[{\"added\": {}}]', 13, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'danhmucxe', 'danhmucxe'),
(9, 'dieukhoan', 'dieukhoan'),
(8, 'hangxe', 'hangxe'),
(10, 'hinhthucthue', 'hinhthucthue'),
(18, 'hopdong', 'hopdong'),
(19, 'ipn', 'paypalipn'),
(14, 'model', 'model'),
(15, 'nguoithue', 'nguoithue'),
(16, 'quanly', 'admin'),
(6, 'sessions', 'session'),
(11, 'taikhoan', 'taikhoan'),
(13, 'taixe', 'taixe'),
(12, 'thanhtoan', 'thanhtoan'),
(17, 'xe', 'xe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-09-30 09:16:17.562506'),
(2, 'auth', '0001_initial', '2022-09-30 09:16:18.126472'),
(3, 'admin', '0001_initial', '2022-09-30 09:16:18.278847'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-30 09:16:18.287726'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-30 09:16:18.297736'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-30 09:16:18.395591'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-30 09:16:18.473898'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-09-30 09:16:18.574017'),
(9, 'auth', '0004_alter_user_username_opts', '2022-09-30 09:16:18.584115'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-09-30 09:16:18.664570'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-09-30 09:16:18.667997'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-30 09:16:18.678009'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-09-30 09:16:18.743386'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-30 09:16:18.817783'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-09-30 09:16:18.879588'),
(16, 'auth', '0011_update_proxy_permissions', '2022-09-30 09:16:18.888590'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-30 09:16:18.961318'),
(18, 'sessions', '0001_initial', '2022-09-30 09:16:18.993477'),
(19, 'danhmucxe', '0001_initial', '2022-09-30 10:12:24.954860'),
(20, 'hangxe', '0001_initial', '2022-09-30 10:18:45.142107'),
(21, 'dieukhoan', '0001_initial', '2022-09-30 10:24:22.992182'),
(22, 'dieukhoan', '0002_alter_dieukhoan_options', '2022-09-30 10:24:40.539344'),
(23, 'hangxe', '0002_alter_hangxe_options', '2022-09-30 10:24:53.467881'),
(24, 'hinhthucthue', '0001_initial', '2022-10-01 02:45:56.828835'),
(25, 'taikhoan', '0001_initial', '2022-10-01 02:47:19.114852'),
(26, 'thanhtoan', '0001_initial', '2022-10-01 02:48:17.998929'),
(27, 'taixe', '0001_initial', '2022-10-01 02:49:43.293913'),
(28, 'model', '0001_initial', '2022-10-02 08:32:30.461959'),
(29, 'nguoithue', '0001_initial', '2022-10-02 08:32:42.153200'),
(30, 'quanly', '0001_initial', '2022-10-02 08:33:16.611998'),
(31, 'xe', '0001_initial', '2022-10-02 08:33:23.120651'),
(32, 'hopdong', '0001_initial', '2022-10-02 08:34:38.756271'),
(33, 'hinhthucthue', '0002_alter_hinhthucthue_uudai', '2022-10-18 09:22:04.025830'),
(34, 'model', '0002_alter_model_hinhanh', '2022-10-24 08:45:40.070343'),
(35, 'model', '0003_alter_model_hinhanh', '2022-10-24 09:52:21.623684'),
(36, 'xe', '0002_alter_xe_cameralui_alter_xe_sacdienthoai', '2022-10-24 09:52:21.758944'),
(37, 'model', '0004_remove_model_hinhanh', '2022-10-25 12:40:02.409756'),
(38, 'xe', '0003_xe_hinhanh_xe_ten_xe', '2022-10-25 12:40:02.486158'),
(39, 'xe', '0004_xe_giatien', '2022-10-25 12:42:40.251936'),
(40, 'xe', '0005_alter_xe_giatien', '2022-10-25 12:43:03.259869'),
(41, 'model', '0005_remove_model_dongia', '2022-10-25 12:43:44.911512'),
(42, 'nguoithue', '0002_alter_nguoithue_email', '2022-10-28 09:10:23.634581'),
(43, 'hopdong', '0002_remove_hopdong_chiphiphatsinh', '2022-10-30 04:56:09.647366'),
(44, 'nguoithue', '0003_remove_nguoithue_id_taikhoan', '2022-10-30 05:13:55.723699'),
(45, 'quanly', '0002_remove_admin_id_taikhoan', '2022-10-30 05:13:55.774112'),
(46, 'taixe', '0002_taixe_tinhtrang', '2022-10-30 07:37:49.585009'),
(47, 'taixe', '0003_alter_taixe_tinhtrang', '2022-10-30 07:37:49.591843'),
(48, 'xe', '0006_alter_xe_giatien', '2022-10-30 09:41:55.625265'),
(49, 'hopdong', '0003_hopdong_tinhtrang', '2022-11-01 02:37:12.133331'),
(50, 'hopdong', '0004_alter_hopdong_ten_hopdong', '2022-11-01 02:56:31.591191'),
(51, 'ipn', '0001_initial', '2022-11-03 06:57:46.019105'),
(52, 'ipn', '0002_paypalipn_mp_id', '2022-11-03 06:57:46.060979'),
(53, 'ipn', '0003_auto_20141117_1647', '2022-11-03 06:57:46.218752'),
(54, 'ipn', '0004_auto_20150612_1826', '2022-11-03 06:57:48.048920'),
(55, 'ipn', '0005_auto_20151217_0948', '2022-11-03 06:57:48.115260'),
(56, 'ipn', '0006_auto_20160108_1112', '2022-11-03 06:57:48.229093'),
(57, 'ipn', '0007_auto_20160219_1135', '2022-11-03 06:57:48.241113'),
(58, 'ipn', '0008_auto_20181128_1032', '2022-11-03 06:57:48.253913'),
(59, 'ipn', '0009_alter_paypalipn_id', '2022-11-03 07:17:41.344305');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8pjzyiopbhlqyuigy6oxgyh12ho7i5v4', '.eJxVkM1OwzAQhF-lyhml_klwwwlKD0hQ0UOPlaK1vYlNGrtKYokK8e7YTUH05vlmvKPdr6yGMJk6jDjUVmcPGc3u_jMJqkOXDP0BrvW58m4arMxTJL-6Y771Go_ra_ZmgIHRxN-EyKbhwCW5FwIKAqxAKWgpxKoiyFQlSKWRKrEqV6osSMEEL5EiKSqIvIlDG6s_MY562dRP66Qd9Envh0OgCMItduYQCJUkaS3VYm_SS0lnUhx7sMeYfx-ws2forfOMPraJxq36FAGtBxzHVPK8TWDUUxSMU84op4zxS28LZwmThpDuRZeULBlh7NfqcJpMULPH-J9nrDNXY_9GLugE5x5dqtjt5g21xdAZDy6yzevMjD9p79p5dc6y7x-0Todc:1ot1ql:afoQHbVR6idzGVbS7u9Z7x3sd0IrcO8JGKbKbU1EzIk', '2022-11-24 07:19:47.849289'),
('9dn7fyukvbjonpn9uxz7x9mpez8kn45m', '.eJxVkMtOwzAQRX-lyhqlYzupG1YIukCiFZHogkWlaGxPYpPGqfKQqBD_jk0Lgp3n3Os7j4-kwnmy1TzSUDmT3CYsufnLFOqWfBTMG_qmT3Xvp8GpNFrSqzqmu97Q8f7q_RdgcbThN4Cqa4FCwUpKzAB5RkqyXMp1AcR1IaEwxLRc52udZ5BxKXJiBFmBgdchtHbmnULU9rVaAbxE4rGLZD8cZkYo_aK0hxmYglgbpRd7G19aeRvt1KE7Bv_zQK07Y-d8z9ldE2nYq4sWNGagcQymx4ddBKOZQsEFE5wJxrn47tvgWeFkcI4XY0uQSw6c_0gtTZOd9UVj2a9mnbdXYb-FeOn6hOeOfGxRlpcdjaO5tT36wDZPF2b7k-l9E6faVBkkn1-qPIfe:1p0diH:l3UB-_pM0RZ0Fk5fbiajZQD8MrkYh8VGuQ28SFThgbY', '2022-12-15 07:10:29.759692'),
('gtiudqxq0vgceh0kn74zc9hthmureq7n', '.eJw1jL0KwjAURt8ls9gkXayTYIeCggXd5dqkzaVNKm0CBvHdzQ06nvP9vFmP6qXZnjX1_dqwDesd2MwhEmkLOCW8LHrECBbdLMVhILvtZksVUGrR60qbYxar8gl4VVY7WebLAeIDvIKQvBCF4IXkUv6jUXtvQkcbUXBJWZ4ZdOYX3M5ckHpCtNrRfdsSo1Kow2hmcMnVJ_b5AkQ_PwQ:1p0dTV:lz5Lgko4DUfxv8m7-sQyczonMBrmdQG4uZ6dHY3zc9o', '2022-12-15 06:55:13.983752'),
('n84gw91mnaeopeou9g9cpksga0okp0de', '.eJxVj9FKwzAUhl9l9Fq6JG2X1ivRTgQd7mJ4NSgnyWkTuyajbcAhvrvJNoXd5f--P-ck30lr1Bcm98lz3aw_mnVyl7QWhkh2495TBG4XW733hAoSsxJysdPxJIXVsY4DmEPov4_YmxMMxjpGH7pIU-mGWAGlRpymUHp52kQwqTkEVrGyyrLzzg5OAmYFPnBKl5QsGWHsT_U4z9rLi2Plv9PG6qvYvZEzOsJpQBvHb7cxG6UM-l47sIHVrxem3VE528UX1U22CrABP-vGTzg2RsVFt0yA7NFGoT7Bdi58zc6jEWmspFc7pRun8PB47d4M0DDpcJsQ0bYZZIKsOIecAMtRcFpwXlYEmaw4qRRSycuilEVOcsazAimSvILA2-TnF-uJh2w:1ot2NW:qX03Sea9ikLQ0jQQqJZOmVznrLUq4OMlwVPoI4YvCHo', '2022-11-24 07:53:38.251096'),
('th2y216y9brghtzhov39ubw4a1jfnair', '.eJxVjDsOwjAQBe_iGlnrH2tT0nOGaG1vcADZUpxUiLuTSCmgnZn33mKgdSnD2nkepiwuQonTL4uUnlx3kR9U702mVpd5inJP5GG7vLXMr-vR_h0U6mVbA8RxNGQinBHJAmnLEZVD9AFYp4AQMquE3vnkLFiNxrFisIE2PorPF8xNNz0:1oeWL8:VOP4bGRU005chL3d9nD_Oa226TbaWgEoMPNrKT9AiAI', '2022-10-15 06:51:10.516773'),
('ugv8i0x9pbn1a35ysp6n5fd8ot6e3afx', '.eJxVj0FPhDAQhf8LZ8O2BSx4MroHE924yRqvZKADrWzbDZREYvzvdgSNJr3M917fzPtIapiDrucJx9qo5CbhydVf1kA7oCNBvYHrfdp6F0bTpGRJN3VKD17h-W7z_gvQMOn4m7Gm6zLIGnYtJeQMRI6N5IWUZcVQtJVklULeyrIo2yJnuZBZgRxZXkHkXQztjHrHGPWwr19PNDuwNJ-8Re-QCFow54ieRxzMAtY4L_htTzQebskCSo04TZRzfyAwqUC1Rba97-QelgaCgplO5zsmdoKJ7EcaMAQ9t5uW_WraOL0JL09MELrAYtHRhuNx7aAMzoP24CLbP65M-4vyrl_L5SL5_AL4cX3n:1p7oD9:rnp83mLPi25_ic19wBxj7xEesOyPOP8vv8ea0GahZwg', '2023-01-04 01:47:59.419637'),
('zl1iqtvct5cywukigm3ox7os10expqiu', '.eJw9j7EKwjAQQP8ls9ikLuok2EFQsYPoKGcvbUJNUtoEDOK_m2uly8F7L3eQD6s1viXbskPxuN_YgtUWzMghEkkD-pXw0stWRzDaulzsGrLLyhl6Aoi9HAba2Z9JDOgT5Dzf8DTGmw3EJ3iEkIIQmeBZKnNqpfcqVFPL13NT2qp_uJ64INVBNNLS_bIk1ohahlY5sMkVx8kp16GzzfStFWffH-SdRXs:1ot1Zc:Tlx6fkimrKBIVe8qQz7CtbqCbMjdkRhq2zYZddZv3Qs', '2022-11-24 07:02:04.423889');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangxe`
--

CREATE TABLE `hangxe` (
  `id_HangXe` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Ten_HangXe` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hangxe`
--

INSERT INTO `hangxe` (`id_HangXe`, `Ten_HangXe`) VALUES
('FD', 'Ford'),
('HD', 'Honda'),
('LX', 'Lexus'),
('MCD', 'Mercedes'),
('MD', 'MazDa'),
('TYT', 'Toyota');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhthucthue`
--

CREATE TABLE `hinhthucthue` (
  `id_HinhThuc` varchar(10) NOT NULL,
  `Ten_HinhThuc` varchar(30) NOT NULL,
  `UuDai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hinhthucthue`
--

INSERT INTO `hinhthucthue` (`id_HinhThuc`, `Ten_HinhThuc`, `UuDai`) VALUES
('TL01', 'Tự lái theo ngày', 1),
('TL02', 'Tự lái theo tuần', 0.85),
('TL03', 'Tự lái theo tháng', 0.75),
('TX01', 'Thuê có tài xế theo ngày', 1.8),
('TX02', 'Thuê có tài xế theo tuần', 1.65),
('TX03', 'Thuê có tài xế theo tháng', 1.5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdong`
--

CREATE TABLE `hopdong` (
  `id_HopDong` varchar(10) NOT NULL,
  `Ten_HopDong` varchar(70) NOT NULL,
  `SoNgayThue` int NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayKetThuc` date NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `TienHoaHong` decimal(10,0) NOT NULL,
  `id_Xe` varchar(10) NOT NULL,
  `id_DieuKhoan` varchar(10) NOT NULL,
  `id_ThanhToan` varchar(10) NOT NULL,
  `id_TaiXe` varchar(10) NOT NULL,
  `id_NguoiThue` varchar(10) NOT NULL,
  `id_HinhThucThue` varchar(10) NOT NULL,
  `TinhTrang` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hopdong`
--

INSERT INTO `hopdong` (`id_HopDong`, `Ten_HopDong`, `SoNgayThue`, `NgayBatDau`, `NgayKetThuc`, `TongTien`, `TienHoaHong`, `id_Xe`, `id_DieuKhoan`, `id_ThanhToan`, `id_TaiXe`, `id_NguoiThue`, `id_HinhThucThue`, `TinhTrang`) VALUES
('HD_1', 'Hợp đồng thuê xe F_SportTự lái theo ngày', 4, '2022-11-01', '2022-11-05', '1452', '0', 'LX_600S', 'DK', 'CK', 'TX_00', 'NT_2', 'TL01', 0),
('HD_10', 'Hợp đồng thuê xe G63Thuê có tài xế theo tuần', 21, '2022-11-07', '2022-11-28', '16497', '2475', 'MCD_G', 'DK', 'CK', 'TX_04', 'NT_11', 'TX02', 0),
('HD_11', 'Hợp đồng thuê xe G63Tự lái theo ngày', 7, '2022-11-06', '2022-11-13', '3333', '0', 'MCD_G', 'DK', 'TT', 'TX_00', 'NT_12', 'TL01', 0),
('HD_12', 'Hợp đồng thuê xe Lexus UrbanTự lái theo tuần', 10, '2022-11-30', '2022-12-10', '3075', '0', 'LX_600U', 'DK', 'PP', 'TX_00', 'NT_13', 'TL02', 0),
('HD_13', 'Hợp đồng thuê xe Lexus UrbanTự lái theo tuần', 10, '2022-11-30', '2022-12-10', '3075', '0', 'LX_600U', 'DK', 'PP', 'TX_00', 'NT_14', 'TL02', 0),
('HD_14', 'Hợp đồng thuê xe Lexus UrbanTự lái theo tuần', 10, '2022-11-30', '2022-12-10', '3075', '0', 'LX_600U', 'DK', 'PP', 'TX_00', 'NT_15', 'TL02', 0),
('HD_15', 'Hợp đồng thuê xe Lexus UrbanTự lái theo tuần', 10, '2022-11-30', '2022-12-10', '3075', '0', 'LX_600U', 'DK', 'PP', 'TX_00', 'NT_16', 'TL02', 0),
('HD_16', 'Hợp đồng thuê xe Lexus UrbanTự lái theo ngày', 23, '2022-11-05', '2022-11-28', '8321', '0', 'LX_600U', 'DK', 'PP', 'TX_00', 'NT_17', 'TL01', 0),
('HD_17', 'Hợp đồng thuê xe Everest TitaniumTự lái theo ngày', 17, '2022-11-05', '2022-11-22', '918', '0', 'FD_EV_T', 'DK', 'PP', 'TX_00', 'NT_18', 'TL01', 0),
('HD_18', 'Hợp đồng thuê xe Everest TitaniumTự lái theo ngày', 17, '2022-11-05', '2022-11-22', '918', '0', 'FD_EV_T', 'DK', 'PP', 'TX_00', 'NT_19', 'TL01', 0),
('HD_19', 'Hợp đồng thuê xe Everest TitaniumTự lái theo ngày', 17, '2022-11-05', '2022-11-22', '918', '0', 'FD_EV_T', 'DK', 'CK', 'TX_00', 'NT_20', 'TL01', 0),
('HD_2', 'Hợp đồng thuê xe F_SportTự lái theo ngày', 4, '2022-11-01', '2022-11-05', '1452', '0', 'LX_600S', 'DK', 'CK', 'TX_00', 'NT_3', 'TL01', 0),
('HD_20', 'Hợp đồng thuê xe Everest ExplorerTự lái theo ngày', 9, '2022-11-05', '2022-11-14', '936', '0', 'FD_EV_E', 'DK', 'CK', 'TX_00', 'NT_21', 'TL01', 0),
('HD_21', 'Hợp đồng thuê xe F_SportTự lái theo ngày', 16, '2022-11-05', '2022-11-21', '5810', '0', 'LX_600S', 'DK', 'CK', 'TX_00', 'NT_22', 'TL01', 0),
('HD_22', 'Hợp đồng thuê xe Lexus VIPTự lái theo ngày', 16, '2022-11-05', '2022-11-21', '6408', '0', 'LX_600V', 'DK', 'CK', 'TX_00', 'NT_23', 'TL01', 0),
('HD_23', 'Hợp đồng thuê xe Lexus VIPTự lái theo ngày', 16, '2022-11-05', '2022-11-21', '6408', '0', 'LX_600V', 'DK', 'PP', 'TX_00', 'NT_24', 'TL01', 0),
('HD_24', 'Hợp đồng thuê xe F_SportTự lái theo ngày', 16, '2022-11-05', '2022-11-21', '5810', '0', 'LX_600S', 'DK', 'PP', 'TX_00', 'NT_25', 'TL01', 0),
('HD_25', 'Hợp đồng thuê xe F_SportTự lái theo ngày', 1, '2022-11-06', '2022-11-07', '363', '0', 'LX_600S', 'DK', 'PP', 'TX_00', 'NT_26', 'TL01', 0),
('HD_26', 'Hợp đồng thuê xe Lexus UrbanTự lái theo ngày', 4, '2022-11-10', '2022-11-14', '1447', '0', 'LX_600U', 'DK', 'PP', 'TX_00', 'NT_27', 'TL01', 0),
('HD_27', 'Hợp đồng thuê xe Everest SportTự lái theo ngày', 11, '2022-11-10', '2022-11-21', '550', '0', 'FD_EV_S', 'DK', 'PP', 'TX_00', 'NT_28', 'TL01', 0),
('HD_28', 'Hợp đồng thuê xe Everest ExplorerTự lái theo ngày', 12, '2022-11-10', '2022-11-22', '1248', '0', 'FD_EV_E', 'DK', 'PP', 'TX_00', 'NT_29', 'TL01', 0),
('HD_29', 'Hợp đồng thuê xe Everest SportTự lái theo ngày', 22, '2022-11-10', '2022-12-02', '1100', '0', 'FD_EV_S', 'DK', 'PP', 'TX_00', 'NT_30', 'TL01', 0),
('HD_3', 'Hợp đồng thuê xe Everest ExplorerThuê có tài xế theo ngày', 4, '2022-11-02', '2022-11-06', '749', '112', 'FD_EV_E', 'DK', 'PP', 'TX_01', 'NT_4', 'TX01', 0),
('HD_30', 'Hợp đồng thuê xe WaveTự lái theo ngày', 18, '2022-11-10', '2022-11-28', '13', '0', 'HD_WV', 'DK', 'PP', 'TX_00', 'NT_31', 'TL01', 0),
('HD_31', 'Hợp đồng thuê xe Lexus UrbanTự lái theo ngày', 4, '2022-11-10', '2022-11-14', '1447', '0', 'LX_600U', 'DK', 'PP', 'TX_00', 'NT_32', 'TL01', 0),
('HD_32', 'Hợp đồng thuê xe AirbladeTự lái theo tuần', 13, '2022-11-10', '2022-11-23', '19', '0', 'HD_AB', 'DK', 'PP', 'TX_00', 'NT_33', 'TL02', 0),
('HD_33', 'Hợp đồng thuê xe VisionTự lái theo tháng', 18, '2022-11-10', '2022-11-28', '18', '0', 'HD_VS', 'DK', 'PP', 'TX_00', 'NT_34', 'TL03', 0),
('HD_34', 'Hợp đồng thuê xe WaveTự lái theo tháng', 12, '2022-11-10', '2022-11-22', '6', '0', 'HD_WV', 'DK', 'PP', 'TX_00', 'NT_35', 'TL03', 0),
('HD_35', 'Hợp đồng thuê xe VisionTự lái theo tháng', 12, '2022-11-10', '2022-11-22', '12', '0', 'HD_VS', 'DK', 'PP', 'TX_00', 'NT_36', 'TL03', 0),
('HD_36', 'Hợp đồng thuê xe Everest ExplorerTự lái theo tuần', 18, '2022-11-10', '2022-11-28', '1591', '0', 'FD_EV_E', 'DK', 'PP', 'TX_00', 'NT_37', 'TL02', 0),
('HD_37', 'Hợp đồng thuê xe Lexus UrbanTự lái theo tuần', 27, '2022-11-01', '2022-11-28', '8303', '0', 'LX_600U', 'DK', 'PP', 'TX_00', 'NT_38', 'TL02', 0),
('HD_38', 'Hợp đồng thuê xe SH-ModeTự lái theo ngày', 53, '2022-11-10', '2023-01-02', '339', '0', 'HD_SH', 'DK', 'PP', 'TX_00', 'NT_39', 'TL01', 0),
('HD_39', 'Hợp đồng thuê xe F_SportTự lái theo ngày', 7, '2022-11-07', '2022-11-14', '2542', '0', 'LX_600S', 'DK', 'PP', 'TX_00', 'NT_40', 'TL01', 0),
('HD_4', 'Hợp đồng thuê xe Everest ExplorerThuê có tài xế theo ngày', 4, '2022-11-02', '2022-11-06', '749', '112', 'FD_EV_E', 'DK', 'PP', 'TX_02', 'NT_5', 'TX01', 0),
('HD_40', 'Hợp đồng thuê xe F_SportTự lái theo ngày', 7, '2022-11-07', '2022-11-14', '2542', '0', 'LX_600S', 'DK', 'PP', 'TX_00', 'NT_41', 'TL01', 0),
('HD_41', 'Hợp đồng thuê xe Lexus UrbanTự lái theo tháng', 20, '2022-11-01', '2022-11-21', '642', '0', 'LX_600U', 'DK', 'PP', 'TX_00', 'NT_42', 'TL03', 1),
('HD_42', 'Hợp đồng thuê xe VisionTự lái theo tuần', 1, '2023-01-02', '2023-01-03', '1', '0', 'HD_VS', 'DK', 'PP', 'TX_00', 'NT_43', 'TL02', 1),
('HD_5', 'Hợp đồng thuê xe G63Tự lái theo tuần', 20, '2022-11-01', '2022-11-21', '8094', '0', 'MCD_G', 'DK', 'TT', 'TX_00', 'NT_6', 'TL02', 0),
('HD_6', 'Hợp đồng thuê xe CX-8Tự lái theo tuần', 13, '2022-11-01', '2022-11-14', '780', '0', 'MD_CX8', 'DK', 'TT', 'TX_00', 'NT_7', 'TL02', 0),
('HD_7', 'Hợp đồng thuê xe CX-8Tự lái theo tuần', 13, '2022-11-01', '2022-11-14', '780', '0', 'MD_CX8', 'DK', 'TT', 'TX_00', 'NT_8', 'TL02', 0),
('HD_8', 'Hợp đồng thuê xe G63Tự lái theo tháng', 21, '2022-11-07', '2022-11-28', '7499', '0', 'MCD_G', 'DK', 'TT', 'TX_00', 'NT_9', 'TL03', 0),
('HD_9', 'Hợp đồng thuê xe G63Thuê có tài xế theo ngày', 21, '2022-11-07', '2022-11-28', '17997', '2699', 'MCD_G', 'DK', 'TT', 'TX_03', 'NT_10', 'TX01', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model`
--

CREATE TABLE `model` (
  `id_model` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ten_model` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sochongoi` int NOT NULL,
  `id_DanhMucXe` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_HangXe` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `model`
--

INSERT INTO `model` (`id_model`, `ten_model`, `sochongoi`, `id_DanhMucXe`, `id_HangXe`) VALUES
('FD_EV', 'Everes', 7, 'OT', 'FD'),
('HD_BK', 'Honda Motobike', 2, 'XM', 'HD'),
('LX_600', 'Lexus_600', 7, 'OT', 'LX'),
('MCD_G', 'Mercedes G', 7, 'OT', 'MCD'),
('MCD_GL', 'Mercedes GL', 5, 'OT', 'MCD'),
('MD_CX', 'Mazda CX', 5, 'OT', 'MD'),
('TYT_SUV', 'Toyota SUV', 7, 'OT', 'TYT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoithue`
--

CREATE TABLE `nguoithue` (
  `id_NguoiThue` varchar(10) NOT NULL,
  `Ten_NguoiThue` varchar(30) NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoithue`
--

INSERT INTO `nguoithue` (`id_NguoiThue`, `Ten_NguoiThue`, `SDT`, `DiaChi`, `Email`) VALUES
('NT_1', 'Trần Phước Thịnh', '0290293', 'HCM', 'tranphuoctinh2001@gmail.com'),
('NT_10', 'Sơn', '2928933', 'HCM', 'qsccompanycity@gmail.com'),
('NT_11', 'Sơn', '2928933', 'HCM', 'haolang1303@gmail.com'),
('NT_12', 'Thành', '0299483', 'HCM', 'thanhmt@hiu.vn'),
('NT_13', 'Trần Phước Thịnh', '23132131223', 'HCM', 'HelloWorld@gmail.com'),
('NT_14', 'Trần Phước Thịnh', '23132131223', 'HCM', 'HelloWorld@gmail.com'),
('NT_15', 'Trần Phước Thịnh', '23132131223', 'HCM', 'HelloWorld@gmail.com'),
('NT_16', 'Trần Phước Thịnh', '23132131223', 'HCM', 'HelloWorld@gmail.com'),
('NT_17', 'Thịnh', '02029303i', 'HN', 'tranphuocthinh2001@gmail.com'),
('NT_18', 'Huy', '1929292', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_19', 'Huy', '1929292', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_2', 'Trần Phước Thịnh', '0290293', 'HCM', 'tranphuoctinh2001@gmail.com'),
('NT_20', 'Huy', '1929292', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_21', 'Huy', '2928933', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_22', 'Nguyễn Gia HUy', '23132131223', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_23', 'Trần Phước Thịnh', '0939823', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_24', 'Trần Phước Thịnh', '0939823', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_25', 'Trần Phước Thịnh', '0939823', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_26', 'Trần Phước Thịnh', '0939823', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_27', 'Nguyễn Gia HUy', '2928933', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_28', 'Nguyễn Gia HUy', '0939823', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_29', 'Trần Phước Thịnh', '0939823', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_3', 'Trần Phước Thịnh', '0290293', 'HCM', 'tranphuoctinh2001@gmail.com'),
('NT_30', 'Sơn', '1929292', 'HalloCM', 'Orekiyamino21@gmail.com'),
('NT_31', 'Huy', '20290202', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_32', 'God is here', '2928933', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_33', 'Trần Phước Thịnh', '23132131223', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_34', 'Trần Phước Thịnh', '0939823', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_35', 'Huy', '2928933', 'HCm', 'Orekiyamino21@gmail.com'),
('NT_36', 'Trần Phước Thịnh', '0939823', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_37', 'Trần Phước Thịnh', '2928933', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_38', 'Trần Phước Thịnh', '0939823', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_39', 'Huy', '0939823', 'HCm', 'Orekiyamino21@gmail.com'),
('NT_4', 'Nguyễn Gia HUy', '231232123', 'HCM', 'thinhbuivien2001@gmail.com'),
('NT_40', 'Trần Phước Thịnh', '23132131223', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_41', 'Trần Phước Thịnh', '23132131223', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_42', 'Trần Phước Thịnh', '87697978', 'HCm', 'Orekiyamino21@gmail.com'),
('NT_43', 'Someone', '1231231231', 'HCM', 'Orekiyamino21@gmail.com'),
('NT_5', 'Nguyễn Gia HUy', '231232123', 'HCM', 'thinhbuivien2001@gmail.com'),
('NT_6', 'Trần Phước Thịnh', '0929823', 'HCM', 'tranphuocthinh2001@gmail.com'),
('NT_7', 'Trần Phước Thịnh', '0293993', 'HCM', 'tranphuocthinh2001@gmail.com'),
('NT_8', 'Trần Phước Thịnh', '0293993', 'HCM', 'tranphuocthinh2001@gmail.com'),
('NT_9', 'Sơn', '2928933', 'HCM', 'qsccompanycity@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` bigint NOT NULL,
  `business` varchar(127) NOT NULL,
  `charset` varchar(255) NOT NULL,
  `custom` varchar(256) NOT NULL,
  `notify_version` decimal(64,2) DEFAULT NULL,
  `parent_txn_id` varchar(19) NOT NULL,
  `receiver_email` varchar(254) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `residence_country` varchar(2) NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `verify_sign` varchar(255) NOT NULL,
  `address_country` varchar(64) NOT NULL,
  `address_city` varchar(40) NOT NULL,
  `address_country_code` varchar(64) NOT NULL,
  `address_name` varchar(128) NOT NULL,
  `address_state` varchar(40) NOT NULL,
  `address_status` varchar(255) NOT NULL,
  `address_street` varchar(200) NOT NULL,
  `address_zip` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `payer_business_name` varchar(127) NOT NULL,
  `payer_email` varchar(127) NOT NULL,
  `payer_id` varchar(13) NOT NULL,
  `auth_amount` decimal(64,2) DEFAULT NULL,
  `auth_exp` varchar(28) NOT NULL,
  `auth_id` varchar(19) NOT NULL,
  `auth_status` varchar(255) NOT NULL,
  `exchange_rate` decimal(64,16) DEFAULT NULL,
  `invoice` varchar(127) NOT NULL,
  `item_name` varchar(127) NOT NULL,
  `item_number` varchar(127) NOT NULL,
  `mc_currency` varchar(32) NOT NULL,
  `mc_fee` decimal(64,2) DEFAULT NULL,
  `mc_gross` decimal(64,2) DEFAULT NULL,
  `mc_handling` decimal(64,2) DEFAULT NULL,
  `mc_shipping` decimal(64,2) DEFAULT NULL,
  `memo` varchar(255) NOT NULL,
  `num_cart_items` int DEFAULT NULL,
  `option_name1` varchar(64) NOT NULL,
  `option_name2` varchar(64) NOT NULL,
  `payer_status` varchar(255) NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_gross` decimal(64,2) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pending_reason` varchar(255) NOT NULL,
  `protection_eligibility` varchar(255) NOT NULL,
  `quantity` int DEFAULT NULL,
  `reason_code` varchar(255) NOT NULL,
  `remaining_settle` decimal(64,2) DEFAULT NULL,
  `settle_amount` decimal(64,2) DEFAULT NULL,
  `settle_currency` varchar(32) NOT NULL,
  `shipping` decimal(64,2) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `tax` decimal(64,2) DEFAULT NULL,
  `transaction_entity` varchar(255) NOT NULL,
  `auction_buyer_id` varchar(64) NOT NULL,
  `auction_closing_date` datetime(6) DEFAULT NULL,
  `auction_multi_item` int DEFAULT NULL,
  `for_auction` decimal(64,2) DEFAULT NULL,
  `amount` decimal(64,2) DEFAULT NULL,
  `amount_per_cycle` decimal(64,2) DEFAULT NULL,
  `initial_payment_amount` decimal(64,2) DEFAULT NULL,
  `next_payment_date` datetime(6) DEFAULT NULL,
  `outstanding_balance` decimal(64,2) DEFAULT NULL,
  `payment_cycle` varchar(255) NOT NULL,
  `period_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `profile_status` varchar(255) NOT NULL,
  `recurring_payment_id` varchar(255) NOT NULL,
  `rp_invoice_id` varchar(127) NOT NULL,
  `time_created` datetime(6) DEFAULT NULL,
  `amount1` decimal(64,2) DEFAULT NULL,
  `amount2` decimal(64,2) DEFAULT NULL,
  `amount3` decimal(64,2) DEFAULT NULL,
  `mc_amount1` decimal(64,2) DEFAULT NULL,
  `mc_amount2` decimal(64,2) DEFAULT NULL,
  `mc_amount3` decimal(64,2) DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `reattempt` varchar(1) NOT NULL,
  `recur_times` int DEFAULT NULL,
  `recurring` varchar(1) NOT NULL,
  `retry_at` datetime(6) DEFAULT NULL,
  `subscr_date` datetime(6) DEFAULT NULL,
  `subscr_effective` datetime(6) DEFAULT NULL,
  `subscr_id` varchar(19) NOT NULL,
  `username` varchar(64) NOT NULL,
  `case_creation_date` datetime(6) DEFAULT NULL,
  `case_id` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `currency_code` varchar(32) NOT NULL,
  `handling_amount` decimal(64,2) DEFAULT NULL,
  `transaction_subject` varchar(256) NOT NULL,
  `ipaddress` char(39) DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) NOT NULL,
  `flag_info` longtext NOT NULL,
  `query` longtext NOT NULL,
  `response` longtext NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) DEFAULT NULL,
  `mp_id` varchar(128) DEFAULT NULL,
  `option_selection1` varchar(200) NOT NULL,
  `option_selection2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `paypal_ipn`
--

INSERT INTO `paypal_ipn` (`id`, `business`, `charset`, `custom`, `notify_version`, `parent_txn_id`, `receiver_email`, `receiver_id`, `residence_country`, `test_ipn`, `txn_id`, `txn_type`, `verify_sign`, `address_country`, `address_city`, `address_country_code`, `address_name`, `address_state`, `address_status`, `address_street`, `address_zip`, `contact_phone`, `first_name`, `last_name`, `payer_business_name`, `payer_email`, `payer_id`, `auth_amount`, `auth_exp`, `auth_id`, `auth_status`, `exchange_rate`, `invoice`, `item_name`, `item_number`, `mc_currency`, `mc_fee`, `mc_gross`, `mc_handling`, `mc_shipping`, `memo`, `num_cart_items`, `option_name1`, `option_name2`, `payer_status`, `payment_date`, `payment_gross`, `payment_status`, `payment_type`, `pending_reason`, `protection_eligibility`, `quantity`, `reason_code`, `remaining_settle`, `settle_amount`, `settle_currency`, `shipping`, `shipping_method`, `tax`, `transaction_entity`, `auction_buyer_id`, `auction_closing_date`, `auction_multi_item`, `for_auction`, `amount`, `amount_per_cycle`, `initial_payment_amount`, `next_payment_date`, `outstanding_balance`, `payment_cycle`, `period_type`, `product_name`, `product_type`, `profile_status`, `recurring_payment_id`, `rp_invoice_id`, `time_created`, `amount1`, `amount2`, `amount3`, `mc_amount1`, `mc_amount2`, `mc_amount3`, `password`, `period1`, `period2`, `period3`, `reattempt`, `recur_times`, `recurring`, `retry_at`, `subscr_date`, `subscr_effective`, `subscr_id`, `username`, `case_creation_date`, `case_id`, `case_type`, `receipt_id`, `currency_code`, `handling_amount`, `transaction_subject`, `ipaddress`, `flag`, `flag_code`, `flag_info`, `query`, `response`, `created_at`, `updated_at`, `from_view`, `mp_id`, `option_selection1`, `option_selection2`) VALUES
(1, 'Carcompany12@gmail.com', 'UTF-8', '', '3.90', '', 'Carcompany12@gmail.com', 'ZXBL5TKVQBG8A', 'US', 1, '9WD57885BB067984L', 'web_accept', 'A.FzfhWbymoATPR1geMffQzg58DaAnVyxbNzB1n3ipXyAkEAYniA8NIk', '', '', '', '', '', '', '', '', '', 'Trần', 'Thịnh', '', 'customers12@gmail.com', 'FXKSUUG2ZMDMG', '0.00', '', '', '', '0.0000000000000000', 'HD_35', 'Hợp đồng thuê xe VisionTự lái theo tháng', '', 'USD', '0.91', '12.00', '0.00', '0.00', '', 0, '', '', 'verified', '2022-11-10 07:40:25.000000', '12.00', 'Completed', 'instant', '', 'Eligible', 1, '', '0.00', '0.00', '', '0.00', 'Default', '0.00', '', '', NULL, 0, '0.00', '0.00', '0.00', '0.00', NULL, '0.00', '', '', '', '', '', '', '', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', '', 0, '', NULL, NULL, NULL, '', '', NULL, '', '', '', 'USD', '0.00', '', '127.0.0.1', 0, '', '', 'mc_gross=12.00&invoice=HD_35&protection_eligibility=Eligible&payer_id=FXKSUUG2ZMDMG&payment_date=23%3A40%3A25+Nov+09%2C+2022+PST&payment_status=Completed&charset=UTF-8&first_name=Tr%E1%BA%A7n&mc_fee=0.91&notify_version=3.9&custom=&payer_status=verified&business=Carcompany12%40gmail.com&quantity=1&verify_sign=A.FzfhWbymoATPR1geMffQzg58DaAnVyxbNzB1n3ipXyAkEAYniA8NIk&payer_email=customers12%40gmail.com&txn_id=9WD57885BB067984L&payment_type=instant&last_name=Th%E1%BB%8Bnh&receiver_email=Carcompany12%40gmail.com&payment_fee=0.91&shipping_discount=0.00&receiver_id=ZXBL5TKVQBG8A&insurance_amount=0.00&txn_type=web_accept&item_name=H%E1%BB%A3p+%C4%91%E1%BB%93ng+thu%C3%AA+xe+VisionT%E1%BB%B1+l%C3%A1i+theo+th%C3%A1ng&discount=0.00&mc_currency=USD&item_number=&residence_country=US&test_ipn=1&shipping_method=Default&transaction_subject=&payment_gross=12.00&ipn_track_id=b3db322623c23', 'VERIFIED', '2022-11-10 00:40:38.520755', '2022-11-10 07:40:38.527448', NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id_TaiKhoan` varchar(10) NOT NULL,
  `Ten_TaiKhoan` varchar(30) NOT NULL,
  `MatKhau` varchar(30) NOT NULL,
  `Loai_TaiKhoan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taixe`
--

CREATE TABLE `taixe` (
  `id_TaiXe` varchar(10) NOT NULL,
  `Ten_TaiXe` varchar(30) NOT NULL,
  `DiaChi` varchar(60) NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `TinhTrang` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taixe`
--

INSERT INTO `taixe` (`id_TaiXe`, `Ten_TaiXe`, `DiaChi`, `SDT`, `TinhTrang`) VALUES
('TX_00', 'Không', 'Không', 'Không', 0),
('TX_01', 'Nguyễn Văn Lộc', 'HCM', '090920920', 0),
('TX_02', 'Lê Ngọc Hoàng', 'HCM', '090920323', 0),
('TX_03', 'Lê Mạnh Hùng', 'HCM', '0909232323', 0),
('TX_04', 'Võ Kim Nhân', 'HCM', '09092321221', 0),
('TX_05', 'Nguyễn Văn Sang', 'HCM', '0920290391', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `id_ThanhToan` varchar(10) NOT NULL,
  `PhuongThucThanhToan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`id_ThanhToan`, `PhuongThucThanhToan`) VALUES
('CK', 'Chuyển Khoảng'),
('PP', 'PayPal'),
('TT', 'Trực tiếp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xe`
--

CREATE TABLE `xe` (
  `id_Xe` varchar(10) NOT NULL,
  `NhienLieu` varchar(20) NOT NULL,
  `SacDienThoai` int NOT NULL,
  `HopSo` varchar(20) NOT NULL,
  `DieuHoa` varchar(20) NOT NULL,
  `CameraLui` int NOT NULL,
  `id_Model` varchar(10) NOT NULL,
  `MieuTa` varchar(255) NOT NULL,
  `TrangThai` int NOT NULL,
  `HinhAnh` varchar(100) NOT NULL,
  `TenXe` varchar(30) NOT NULL,
  `DonGia` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `xe`
--

INSERT INTO `xe` (`id_Xe`, `NhienLieu`, `SacDienThoai`, `HopSo`, `DieuHoa`, `CameraLui`, `id_Model`, `MieuTa`, `TrangThai`, `HinhAnh`, `TenXe`, `DonGia`) VALUES
('FD_EV_E', 'Dầu', 1, '10 cấp', 'Tự động 3 vùng', 1, 'FD_EV', 'Một chiếc SUV hoàn hảo hội tụ đủ các yếu tố: mạnh mẽ bên ngoài, tinh xảo bên trong, luôn sẵn sàng để bảo vệ bạn và những người thân yêu.', 1, '/img/car-image/Everest_Explorer.jpg', 'Everest Explorer', '30.00'),
('FD_EV_S', 'Dầu', 1, '6 cấp', 'Tự động 2 vùng', 1, 'FD_EV', 'Một chiếc SUV hoàn hảo hội tụ đủ các yếu tố: mạnh mẽ bên ngoài, tinh xảo bên trong, luôn sẵn sàng để bảo vệ bạn và những người thân yêu.\r\n', 1, '/img/car-image/Everest-sport.jpg', 'Everest Sport', '32.00'),
('FD_EV_T', 'Dầu', 1, '6 cấp', 'Tự động 2 vùng', 1, 'FD_EV', 'Một chiếc SUV hoàn hảo hội tụ đủ các yếu tố: mạnh mẽ bên ngoài, tinh xảo bên trong, luôn sẵn sàng để bảo vệ bạn và những người thân yêu.', 1, '/img/car-image/Everest_Titanium.jpg', 'Everest Titanium', '36.00'),
('HD_AB', 'Xăng', 0, 'Vô cấp', 'Không', 0, 'HD_BK', 'Xứng danh mẫu xe tay ga thể thao tầm trung hàng đầu trong suốt hơn một thập kỷ qua, AIR BLADE hoàn toàn mới nay được nâng cấp động cơ eSP+ 4 van độc quyền, tiên tiến nhất giúp mang trong mình mãnh lực tiên phong.', 1, '/img/car-image/Honda-Airblade.jpg', 'Airblade', '1.70'),
('HD_FT', 'Xăng', 0, '4 kỳ, 1 xilanh', 'Không', 0, 'HD_BK', 'Honda Future 125 FI với thiết kế trẻ trung, lịch lãm và hiện đại được bổ sung màu mới, tạo những điểm nhấn ấn tượng, thu hút mọi ánh nhìn. Cùng với vị thế là mẫu xe số cao cấp hàng đầu phân khúc tại Việt Nam', 1, '/img/car-image/Honda-Future.jpg', 'Future', '1.30'),
('HD_SH', 'Xăng', 0, 'Vô cấp', 'Không', 0, 'HD_BK', 'Kế thừa tinh hoa của dòng xe SH với những đường nét thanh lịch, sang trọng mang hơi thở Châu Âu cùng động cơ cải tiến đột phá và công nghệ tiên tiến, SH125i/150i mới bổ sung màu mới ấn tượng và nổi bật.', 1, '/img/car-image/Honda-SH.jpg', 'SH-Mode', '3.20'),
('HD_VS', 'Xăng', 0, 'Vô cấp', 'Không', 0, 'HD_BK', 'Thuộc phân khúc xe tay ga giá thấp, Vision luôn là mẫu xe được ưa chuộng trong giới trẻ và có số lượng bán ra lớn nhất tại thị trường Việt Nam suốt nhiều năm qua nhờ kiểu dáng trẻ trung, thanh lịch và nhỏ gọn', 1, '/img/car-image/Honda-Vision.jpg', 'Vision', '1.30'),
('HD_WV', 'Xăng', 0, '4 kỳ, 1 xilanh', 'Không', 0, 'HD_BK', 'Wave Alpha phiên bản 2023 trẻ trung và năng động với màu đen mờ hoàn toàn mới cùng thiết kế bộ tem mới ấn tượng, thu hút ánh nhìn, cho bạn tự tin thể hiện cá tính của mình trên mọi hành trình.', 1, '/img/car-image/Honda-Wave.jpg', 'Wave', '0.70'),
('LX_600S', 'Dầu', 1, '8AT', 'Tự động 2 vùng', 1, 'LX_600', 'Mẫu NX 350 F SPORT được trang bị động cơ xăng 4 xy lanh turbo tăng áp 2,4 lít cực êm cho công suất 275 mã lực và sở hữu các chi tiết trang trí đậm chất thể thao cùng hệ thống treo và giảm chấn nâng cấp.', 1, '/img/car-image/LexusF-Sport.jpg', 'F_Sport', '40.20'),
('LX_600U', 'Xăng', 1, '10AT', 'Tự động 4 vùng', 1, 'LX_600', 'LX 600 Urban có đủ chỗ ngồi thoải mái lên tới 7 người. Xe được trang bị động cơ xăng turbo tăng áp kép V6 3,5 lít mang tới công suất 409 mã lực và khả năng kiểm soát vượt trội.', 1, '/img/car-image/LexusUrban.jpg', 'Lexus Urban', '42.80'),
('LX_600V', 'Xăng', 1, '10AT', 'Tự động 4 vùng', 1, 'LX_600', 'LX 600 VIP là phiên bản SUV bốn chỗ với không gian khoang lái được kiến tạo lại, đem tới sự thoải mái vượt trội. Mẫu xe đẳng cấp được trang bị động cơ xăng turbo tăng áp kép V6 3,5 lít mang tới công suất 409 mã lực và khả năng kiểm soát tuyệt hảo.', 1, '/img/car-image/LexusVIP.jpg', 'Lexus VIP', '50.00'),
('MCD_G', 'Xăng', 1, '9 cấp tự động', 'Tự động 3 vùng ', 1, 'MCD_G', 'Là một trong những dòng SUV địa hình đến từ Mercedes-Benz, G-Class sở hữu khả năng off-road tuyệt vời. Trong đó,Mercedes-AMG G 63 được nhiều khách hàng ưa chuộng bởi khả năng vận hành mạnh mẽ, hỗ trợ tối đa trong việc chinh phục những địa hình khó\r\n', 1, '/img/car-image/MercG63.jpg', 'G63', '60.00'),
('MCD_GLA', 'Xăng', 1, '7G-DCT ', 'Tự động 4 vùng', 1, 'MCD_GL', 'Giàu cá tính ở mọi góc nhìn là điểm tuyệt vời nhất ở chiếc Mercedes GLA Class. Ngắm nhìn chiếc xe trên mọi nẻo đường, nét đẹp khỏe khoắn và hiện đại trong những đường nét thiết kế chắc chắn sẽ thuyết phục bạn.', 1, '/img/car-image/Merc-GLA.jpg', 'AMG GLA', '42.00'),
('MCD_GLB', 'Xăng', 1, '7 cấp 7G-DCT', 'Tự động 2 vùng', 1, 'MCD_GL', 'Mercedes GLB 200 AMG mẫu xe ra mắt thị trường Việt Nam vào năm 2021, trực tiếp được phân phối chính hãng bởi Mercedes-Benz. ', 1, '/img/car-image/Merc-GLB.jpg', 'GLB SUV', '45.00'),
('MCD_GLC', 'Xăng', 1, '9 cấp', 'Tự động 2 vùng ', 1, 'MCD_GL', 'Mercedes-Benz GLC là dòng sản phẩm compact SUV sang trọng được giới thiệu lần đầu vào năm 2015 để thay thế cho thế hệ tiền nhiệm Mercedes-Benz GLK.', 1, '/img/car-image/Merc-GLC.jpg', 'GLC SUV', '48.00'),
('MD_CX5', 'Xăng', 1, 'Tự động 6 cấp', 'Tự động 2 vùng', 1, 'MD_CX', 'New Mazda CX-5 được thiết kế bằng cảm xúc, trau chuốt thêm phong cách của ngôn ngữ Kodo, ghi dấu ấn mạnh mẽ bằng những đường nét tinh tế và tràn đầy sức sống.\r\n\r\n', 1, '/img/car-image/Mazda-CX5.jpg', 'CX-5', '31.00'),
('MD_CX8', 'Xăng', 1, 'Tự động 6 cấp', 'Tự động 3 vùng ', 1, 'MD_CX', 'Tại Mazda, không có chi tiết nào được xem là chi tiết nhỏ khi đề cập đến quá trình tạo nên một mẫu xe. New Mazda CX-8 là sự kết hợp hoàn hảo từ thiết kế đến tiện nghi, công nghệ, giúp chiếc xe dễ dàng thu hút mọi ánh nhìn.\r\n\r\n', 1, '/img/car-image/Mazda-CX8.jpg', 'CX-8', '37.00'),
('TYT_CC', 'Xăng', 0, 'Tự động vô cấp', 'Tự động', 1, 'TYT_SUV', 'Mới ra mắt thị trường trong năm 2020, mẫu xe này tạo ra địa chấn khi liên tục cháy hàng và được nhiều khách hàng quan tâm dù giá ở mức cao so với phân khúc.', 1, '/img/car-image/Toyota-CorollaC.jpg', 'Corolla Cross', '28.00'),
('TYT_F', 'Dầu', 1, 'Tự động 6 cấp', 'Tự động 2 vùng ', 1, 'TYT_SUV', 'Toyota Fortuner mẫu SUV 7 chỗ chưa bao giờ là hết hot đối với người tiêu dùng Việt. Trong năm 2018, Toyota Việt Nam chính thức đưa về thêm phiên bản máy dầu với những nâng cấp vượt bậc để tiếp tục đưa mẫu xe này giữ vững ngôi vị số 1 trong phân khúc SUV.\r', 1, '/img/car-image/Toyota-Fortuner.jpg', 'Fortuner', '29.70'),
('TYT_HL', 'Dầu', 0, '6MT', 'Cơ', 1, 'TYT_SUV', 'Thiết kế cơ bắp hơn, hệ thống trang bị và công nghệ an toàn hiện đại hơn, khả năng vận hành mạnh mẽ và êm ái hơn.Toyota Hilux đã có một màn ra mắt thế hệ mới đầy ấn tượng.\r\n', 1, '/img/car-image/Toyota-Hilux.jpg', 'Hilux', '24.00'),
('TYT_INV', 'Xăng', 0, '5MT', '2 dàn lạnh', 1, 'TYT_SUV', 'Mẫu MPV thống trị trong phân khúc nhiều năm với kiểu dáng rộng, bền bỉ nhưng bị mất thị phần khi Xpander xuất hiện.', 1, '/img/car-image/Toyota-Innova.jpg', 'Innova', '23.50');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_Admin`);

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `danhmucxe`
--
ALTER TABLE `danhmucxe`
  ADD PRIMARY KEY (`id_DanhMucXe`);

--
-- Chỉ mục cho bảng `dieukhoan`
--
ALTER TABLE `dieukhoan`
  ADD PRIMARY KEY (`id_DieuKhoan`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `hangxe`
--
ALTER TABLE `hangxe`
  ADD PRIMARY KEY (`id_HangXe`);

--
-- Chỉ mục cho bảng `hinhthucthue`
--
ALTER TABLE `hinhthucthue`
  ADD PRIMARY KEY (`id_HinhThuc`);

--
-- Chỉ mục cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`id_HopDong`),
  ADD KEY `RangBuocXe` (`id_Xe`),
  ADD KEY `RangBuocHinhThuc` (`id_HinhThucThue`),
  ADD KEY `RangBuocDieuKhoan` (`id_DieuKhoan`),
  ADD KEY `RangBuocThanhToan` (`id_ThanhToan`),
  ADD KEY `RangBuocTaiXe` (`id_TaiXe`),
  ADD KEY `RangBuocNguoiThue` (`id_NguoiThue`);

--
-- Chỉ mục cho bảng `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id_model`),
  ADD UNIQUE KEY `id_model_UNIQUE` (`id_model`),
  ADD KEY `RangBuocDanhMucXe` (`id_DanhMucXe`),
  ADD KEY `RangBuocHangXe` (`id_HangXe`);

--
-- Chỉ mục cho bảng `nguoithue`
--
ALTER TABLE `nguoithue`
  ADD PRIMARY KEY (`id_NguoiThue`);

--
-- Chỉ mục cho bảng `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paypal_ipn_txn_id_8fa22c44` (`txn_id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id_TaiKhoan`);

--
-- Chỉ mục cho bảng `taixe`
--
ALTER TABLE `taixe`
  ADD PRIMARY KEY (`id_TaiXe`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`id_ThanhToan`);

--
-- Chỉ mục cho bảng `xe`
--
ALTER TABLE `xe`
  ADD PRIMARY KEY (`id_Xe`),
  ADD KEY `RangBuocModelXe` (`id_Model`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD CONSTRAINT `RangBuocDieuKhoan` FOREIGN KEY (`id_DieuKhoan`) REFERENCES `dieukhoan` (`id_DieuKhoan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `RangBuocHinhThuc` FOREIGN KEY (`id_HinhThucThue`) REFERENCES `hinhthucthue` (`id_HinhThuc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `RangBuocNguoiThue` FOREIGN KEY (`id_NguoiThue`) REFERENCES `nguoithue` (`id_NguoiThue`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `RangBuocTaiXe` FOREIGN KEY (`id_TaiXe`) REFERENCES `taixe` (`id_TaiXe`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `RangBuocThanhToan` FOREIGN KEY (`id_ThanhToan`) REFERENCES `thanhtoan` (`id_ThanhToan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `RangBuocXe` FOREIGN KEY (`id_Xe`) REFERENCES `xe` (`id_Xe`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `RangBuocDanhMucXe` FOREIGN KEY (`id_DanhMucXe`) REFERENCES `danhmucxe` (`id_DanhMucXe`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `RangBuocHangXe` FOREIGN KEY (`id_HangXe`) REFERENCES `hangxe` (`id_HangXe`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `xe`
--
ALTER TABLE `xe`
  ADD CONSTRAINT `RangBuocModelXe` FOREIGN KEY (`id_Model`) REFERENCES `model` (`id_model`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
