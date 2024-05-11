-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 11, 2024 lúc 06:37 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecomm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(10, 14, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'iPhone', 'iPhone'),
(2, 'Samsung', 'Samsung'),
(3, 'Realme', 'Realme'),
(4, 'Vivo', 'Vivo'),
(5, 'Xiaomi', 'Xiaomi'),
(6, 'OPPO', 'OPPO'),
(7, 'Huawei', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(21, 11, 1, 1),
(22, 12, 28, 1),
(23, 13, 35, 1),
(24, 14, 35, 1),
(25, 14, 31, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 2, 'Samsung Galaxy A35 5G 256GB', '<h3>&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Screen: Super AMOLED6.6&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system: Android 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip: Exynos 1380 8 core</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 8 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity: 256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries: 5000 mAh&nbsp;25W</p>\r\n	</li>\r\n</ul>\r\n', 'samsung-galaxy-a35-5g-256gb', 259, 'samsung-galaxy-a35-5g-256gb.jpg', '2024-05-10', 19),
(28, 1, 'iPhone 15 Pro Max 256GB', '<ul>\r\n	<li>\r\n	<p>Screen: OLED6.7&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system: iOS 17</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip: Apple A17 Pro 6 cores</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 8 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity: 256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries: 4422mAh&nbsp;20W</p>\r\n	</li>\r\n</ul>\r\n', 'iphone-15-pro-max-256gb', 1040, 'iphone-15-pro-max-256gb.jpg', '2024-05-10', 5),
(29, 5, 'Xiaomi Redmi Note 13', '<ul>\r\n	<li>\r\n	<p>Screen: AMOLED&nbsp;6.67&quot;&nbsp;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system: Android 13</p>\r\n	</li>\r\n	<li>\r\n	<p>Chips: Snapdragon 685 8 core</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 8GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity: 128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM: 2 Nano SIMs&nbsp;Support 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries: 5000mAh&nbsp;33W</p>\r\n	</li>\r\n</ul>\r\n', 'xiaomi-redmi-note-13', 146, 'xiaomi-redmi-note-13.jpg', '2024-05-10', 2),
(30, 5, 'Xiaomi 13T 5G 12GB', '<ul>\r\n	<li>\r\n	<p>Screen: AMOLED&nbsp;6.67&quot;&nbsp;1.5K</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system: Android 13</p>\r\n	</li>\r\n	<li>\r\n	<p>Chips: MediaTek Dimensity 8200-Ultra</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 12 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity: 256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM: 2 Nano SIM&nbsp;Support 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries:&nbsp;5000mAh&nbsp;67W</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'xiaomi-13t-5g-12gb', 341, 'xiaomi-13t-5g-12gb.jpg', '0000-00-00', 0),
(31, 2, 'Samsung Galaxy A15 256GB', '<ul>\r\n	<li>\r\n	<p>Screen: Super AMOLED&nbsp;6.5&quot;&nbsp;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system: Android 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Chips: MediaTek Helio G99</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 8GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity: 256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM: 2 Nano SIMs&nbsp;Support 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries: 5000mAh&nbsp;25W</p>\r\n	</li>\r\n</ul>\r\n', 'samsung-galaxy-a15-256gb', 144, 'samsung-galaxy-a15-256gb.jpg', '2024-05-10', 4),
(32, 2, 'Samsung Galaxy Z Flip5 5G 256GB', '<ul>\r\n	<li>\r\n	<p>Screen: Main: Dynamic AMOLED 2X, Secondary: Super AMOLED&nbsp;Main 6.7&quot; &amp; Secondary 3.4&quot;&nbsp;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system: Android 13</p>\r\n	</li>\r\n	<li>\r\n	<p>Chips: Snapdragon 8 Gen 2 for Galaxy</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 8GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity: 256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM: 1 Nano SIM &amp; 1 eSIM&nbsp;Support 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries: 3700mAh&nbsp;25W</p>\r\n	</li>\r\n</ul>\r\n', 'samsung-galaxy-z-flip5-5g-256gb', 426, 'samsung-galaxy-z-flip5-5g-256gb.jpg', '2024-05-10', 1),
(33, 1, 'iPhone 14 Pro Max 1TB', '<ul>\r\n	<li>\r\n	<p>Screen: OLED&nbsp;6.7&quot;&nbsp;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system: iOS 16</p>\r\n	</li>\r\n	<li>\r\n	<p>Chips: Apple A16 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 6 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity: 1 TB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM: 1 Nano SIM &amp; 1 eSIM&nbsp;Support 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries: 4323 mAh&nbsp;20 W</p>\r\n	</li>\r\n</ul>\r\n', 'iphone-14-pro-max-1tb', 1650, 'iphone-14-pro-max-1tb.jpg', '2024-05-10', 1),
(34, 6, 'OPPO Find N3 5G', '<ul>\r\n	<li>\r\n	<p>Screen: AMOLED&nbsp;Main 7.82&quot; &amp; Secondary 6.31&quot;&nbsp;Quad HD+ (2K+)</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system: Android 13</p>\r\n	</li>\r\n	<li>\r\n	<p>Chips: Snapdragon 8 Gen 2 8 core</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 16 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity: 512 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM: 2 Nano SIM or 1 Nano SIM + 1 eSIM&nbsp;Support 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries: 4805 mAh&nbsp;67 W</p>\r\n	</li>\r\n</ul>\r\n', 'oppo-find-n3-5g', 1610, 'oppo-find-n3-5g.jpg', '2024-05-10', 3),
(35, 3, 'Realme C51 (6GB/256GB)', '<ul>\r\n	<li>\r\n	<p>Screen: IPS LCD&nbsp;6.74&quot;&nbsp;HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system: Android 13</p>\r\n	</li>\r\n	<li>\r\n	<p>Chips: Unisoc Tiger T612</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 6 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity: 256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM: 2 Nano SIMs&nbsp;Support 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries: 5000mAh&nbsp;33W</p>\r\n	</li>\r\n</ul>\r\n', 'realme-c51-6gb-256gb', 145, 'realme-c51-6gb-256gb.jpg', '2024-05-10', 4),
(36, 4, ' Vivo Y100 256GB', '<ul>\r\n	<li>\r\n	<p>Screen: AMOLED&nbsp;6.67&quot;&nbsp;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system: Android 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Chips: Snapdragon 685 8 core</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 8GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity: 256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:&nbsp;2 Nano SIMs&nbsp;Support 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries:&nbsp;5000mAh&nbsp;80W</p>\r\n	</li>\r\n</ul>\r\n', 'vivo-y100-256gb', 314, 'vivo-y100-256gb.jpg', '2024-05-10', 1),
(37, 4, ' Vivo Y36 256GB', '<ul>\r\n	<li>\r\n	<p>Screen: IPS LCD&nbsp;6.64&quot;&nbsp;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system: Android 13</p>\r\n	</li>\r\n	<li>\r\n	<p>Chips: Snapdragon 680</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM: 8GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity: 256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM: 2 Nano SIMs&nbsp;Support 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries: 5000mAh&nbsp;44W</p>\r\n	</li>\r\n</ul>\r\n', 'vivo-y36-256gb', 298, 'vivo-y36-256gb_1715318481.jpg', '2024-05-10', 3),
(39, 2, 'Samsung s24 ultra', '<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"5px\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\nSPECIFICATIONS\r\nScreen size 6.8&quot;\r\nScan frequency 120 Hz, 2K+ resolution (1440 x 3120 Pixels), Rear resolution camera Main camera: 200MP, Laser AF, OIS Camera: 50MP, PDAF, OIS, 5x optical zoom Telephoto camera: 10MP Super wide-angle camera: 12 MP, f/2.2, 13mm, 120?\r\n12 MP front resolution camera\r\nAndroid operating system 14\r\nSnapdragon 8 gen 3 processor\r\nSim 2 Nano SIM\r\nBattery capacity 5000 mAh\r\nLi-Ion battery type\r\nPhone type SAMSUNG</pre>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'samsung-s24-ultra', 2222222, 'samsung-s24-ultra.jpg', '2024-05-10', 1),
(40, 2, 'Samsung galaxy Zflip', '<p>Samsung Galaxy Z Flip Phone Configuration</p>\r\n\r\n<p>Screen: Main: Dynamic AMOLED, Secondary: Super AMOLED6.7&quot;Quad HD (2K)<br />\r\nOperating system: Android 10<br />\r\nRear camera: 2 12 MP cameras<br />\r\nFront camera: 10 MP<br />\r\nChips: Snapdragon 855+<br />\r\nRAM: 8GB<br />\r\nStorage capacity: 256 GB<br />\r\nSIM: 1 Nano SIM &amp; 1 eSIM Support 4G<br />\r\nRechargeable batteries: 3300 mAh<br />\r\nThe firm: Samsung.</p>\r\n', 'samsung-galaxy-zflip', 2222222, 'samsung-galaxy-zflip.jpg', '2024-05-10', 1),
(41, 3, 'Realme gt5 pro', '<p>Specifications<br />\r\nScreen:<br />\r\nAMOLED, 1 billion colors, 144Hz, HDR10+, 4500 nits (maximum)<br />\r\n6.78 inches, 1.5K (1264 x 2780 pixels)<br />\r\nRatio 20:9, pixel density ~450 ppi<br />\r\nOperating system:<br />\r\nAndroid 14, Realme UI 5.0<br />\r\nRear camera:<br />\r\n50 MP, f/1.7, 23mm (wide angle), omnidirectional PDAF, OIS<br />\r\n50 MP, f/2.6, 65mm (periscope), PDAF, OIS, 2.7x optical zoom<br />\r\n8 MP, f/2.2, 16mm, 112? (ultra wide angle)<br />\r\nVideo recording: 4K@30/60fps, 1080p@30/60fps, gyro-EIS, Dolby Vision Front camera:<br />\r\n32 MPP, f/2.5, 22mm (wide angle)<br />\r\nHDR, panorama<br />\r\nVideo recording: 4K@30fps, 1080p@30fps, gyro-EIS<br />\r\nCPU:<br />\r\nQualcomm SM8650-AB Snapdragon 8 Gen 3 (4 nm)<br />\r\n8 cores (1x3.3 GHz &amp; 5x3.2 GHz &amp; 2x2.3 GHz)<br />\r\nGPU: Adreno 750<br />\r\nRAM:<br />\r\n12-16GB, LPDDR5X<br />\r\nInternal memory:<br />\r\n256GB-1TB, UFS 4.0</p>\r\n\r\n<p><br />\r\nSIM:<br />\r\n2 SIM, Nano SIM<br />\r\nBattery capacity:<br />\r\nLi-Po 5400 mAh<br />\r\nSuper fast charging 100W, 1-50% in 12 minutes (QC)<br />\r\n50W wireless charging<br />\r\nDesign:<br />\r\nCurved aluminum frame<br />\r\nLeather back (Orange, Silver), glass (Black)<br />\r\nWater and dust resistant IP64</p>\r\n', 'realme-gt5-pro', 30000, 'realme-gt5-pro.jpg', '0000-00-00', 0),
(42, 3, 'Realme 10 pro', '<p>TECHNICAL SPECIFICATIONS<br />\r\nSIM card: 2 nano sim, 2 online waves<br />\r\nScreen:<br />\r\n6.7 inches, AMOLED, 1B colors, HDR10+, 120Hz, 800 nits</p>\r\n\r\n<p>Resolution: FullHD+ 1080 x 2412 pixels, 20:9 ratio<br />\r\nCPU:<br />\r\nMediaTek Dimensity 1080 (6 nm)</p>\r\n\r\n<p>RAM: 8GB/ 12GB<br />\r\nMemory/ Memory card: 128GB/ 256GB<br />\r\nRear camera:<br />\r\n108 MP, f/1.8, 24mm (wide), 1/1.67&quot;, 0.64&micro;m, PDAF<br />\r\n8 MP, f/2.2, 16mm, 112? (ultrawide)<br />\r\n2 MP, f/2.4, (macro)</p>\r\n\r\n<p>Front camera:<br />\r\n16 MP, f/2.5, 25mm (wide)</p>\r\n\r\n<p>3.5mm Jack/ Speaker: No/ Dual Stereo Speakers<br />\r\nBattery: Li-Po 5000 mAh, Fast charging up to 67W<br />\r\nColor: Black, Blue, Starlight</p>\r\n', 'realme-10-pro', 2222222, 'realme-10-pro.jpg', '0000-00-00', 0),
(43, 3, 'Realme GT Neo 6 SE 5G', '<p>Specifications</p>\r\n\r\n<p><br />\r\nScreen:<br />\r\nLTPO AMOLED, 1 billion colors, 120Hz, HDR, 1600 nits (HBM), 6000 nits (peak)<br />\r\n6.78 inches, 1.5K (1264 x 2780 pixels)<br />\r\nPixel density 450ppi</p>\r\n\r\n<p><br />\r\nOperating system:<br />\r\nAndroid 14, Realme UI 5.0</p>\r\n\r\n<p><br />\r\nRear camera:<br />\r\n50 MP, IMX882, f/1.9, 26mm (wide), PDAF. OIS<br />\r\n8 MP, f/2.2, 16mm, 112? (ultra wide angle)<br />\r\nVideo recording: 4K@30/60fps, 1080p@30/60/120fps</p>\r\n\r\n<p><br />\r\nFront camera:<br />\r\n32 MP, f/2.5, 22mm (wide)<br />\r\nVideo recording: 4K@30fps, 1080p@30fps</p>\r\n\r\n<p><br />\r\nCPU:<br />\r\nQualcomm Snapdragon 7+ Gen 3 (4 nm)<br />\r\n8 cores (1x2.8 GHz &amp; 4x2.6 GHz &amp; 3x1.9 GHz)<br />\r\nGPU: Adreno 732 (950MHz)<br />\r\nAI?Hexagon Tensor Processor</p>\r\n\r\n<p><br />\r\nRAM:<br />\r\n8-16GB, LPDDR5X</p>\r\n\r\n<p><br />\r\nInternal memory:<br />\r\n256-512GB, UFS 4.0</p>\r\n\r\n<p><br />\r\nSIM:<br />\r\n2 SIM, Nano SIM</p>\r\n\r\n<p><br />\r\nBattery capacity:<br />\r\n5500 mAh<br />\r\nFast charging 100W, 1-50% battery 12 minutes (QC)</p>\r\n\r\n<p><br />\r\nDesign:<br />\r\nFlat plastic frame<br />\r\nCurved plastic surface; curved screen</p>\r\n', 'realme-gt-neo-6-se-5g', 2222222, 'realme-gt-neo-6-se-5g.jpg', '2024-05-10', 1),
(44, 4, 'Vivo V19 Neo', '<p>Vivo V19 Neo Phone Configuration</p>\r\n\r\n<p>Screen:</p>\r\n\r\n<p>Super AMOLED6.44&quot;Full HD+<br />\r\nOperating system:</p>\r\n\r\n<p>Android 10<br />\r\nRear camera:</p>\r\n\r\n<p>Main 48 MP &amp; Secondary 8 MP, 2 MP, 2 MP<br />\r\nFront camera:</p>\r\n\r\n<p>32 MPs<br />\r\nChips:</p>\r\n\r\n<p>Snapdragon 675<br />\r\nRAM:</p>\r\n\r\n<p>8GB<br />\r\nStorage capacity:</p>\r\n\r\n<p>128 GB<br />\r\nSIM:</p>\r\n\r\n<p>2 Nano SIM Support 4G<br />\r\nRechargeable batteries:</p>\r\n\r\n<p>4500mAh18W</p>\r\n', 'vivo-v19-neo', 2222222, 'vivo-v19-neo.jpg', '0000-00-00', 0),
(45, 4, 'Vivo Y20s', '<p>Screen:</p>\r\n\r\n<p>IPS LCD6.51&quot;HD+<br />\r\nOperating system:</p>\r\n\r\n<p>Android 10<br />\r\nRear camera:</p>\r\n\r\n<p>Main 13 MP &amp; Secondary 2 MP, 2 MP<br />\r\nFront camera:</p>\r\n\r\n<p>8 MP<br />\r\nChips:</p>\r\n\r\n<p>Snapdragon 460<br />\r\nRAM:</p>\r\n\r\n<p>6GB<br />\r\nStorage capacity:</p>\r\n\r\n<p>128 GB<br />\r\nSIM:</p>\r\n\r\n<p>2 Nano SIM Support 4G<br />\r\nRechargeable batteries:</p>\r\n\r\n<p>5000mAh18W<br />\r\nThe firm</p>\r\n\r\n<p>vivo</p>\r\n', 'vivo-y20s', 2222222, 'vivo-y20s.jpg', '0000-00-00', 0),
(46, 6, 'Oppo A57 128GB/4GB', '<p><strong>Configuration of OPPO A57 128GB Phone</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Screen:</p>\r\n\r\n	<p>IPS LCD&nbsp;6.56&quot;&nbsp;HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system:</p>\r\n\r\n	<p>Android 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Rear camera:</p>\r\n\r\n	<p>Main 13 MP &amp; Secondary 2 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Front camera:</p>\r\n\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chips:</p>\r\n\r\n	<p>MediaTek Helio G35</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>4 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity:</p>\r\n\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>2 Nano SIMs&nbsp;Support 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries:</p>\r\n\r\n	<p>5000mAh&nbsp;33W</p>\r\n	</li>\r\n	<li>\r\n	<p>The firm</p>\r\n\r\n	<p>OPPO</p>\r\n	</li>\r\n</ul>\r\n', 'oppo-a57-128gb-4gb', 2222222, 'oppo-a57-128gb-4gb.jpg', '2024-05-10', 3),
(47, 6, 'OPPO A92', '<p><strong>Configuration of OPPO A92 Phone</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Screen:</p>\r\n\r\n	<p>TFT LCD&nbsp;6.5&quot;&nbsp;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Operating system:</p>\r\n\r\n	<p>Android 10</p>\r\n	</li>\r\n	<li>\r\n	<p>Rear camera:</p>\r\n\r\n	<p>Main 48 MP &amp; Secondary 8 MP, 2 MP, 2 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Front camera:</p>\r\n\r\n	<p>16 MPs</p>\r\n	</li>\r\n	<li>\r\n	<p>Chips:</p>\r\n\r\n	<p>Snapdragon 665</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>8GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage capacity:</p>\r\n\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>2 Nano SIMs&nbsp;Support 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Rechargeable batteries:</p>\r\n\r\n	<p>5000mAh&nbsp;18W</p>\r\n	</li>\r\n	<li>\r\n	<p>The firm</p>\r\n\r\n	<p>OPPO.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n', 'oppo-a92', 30000, 'oppo-a92.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(11, 14, 'PAYID-MY7C3SA9A083000HU520323S', '2024-05-10'),
(12, 14, 'PAYID-MY7DCQY0GC63298ES815133L', '2024-05-10'),
(13, 14, 'PAYID-MY7EKLA80N183931V378664X', '2024-05-10'),
(14, 14, 'PAYID-MY7FLQY4KL512128A690792J', '2024-05-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$8wY63GX/y9Bq780GBMpxCesV9n1H6WyCqcA2hNy2uhC59hEnOpNaS', 1, 'Test', 'Admin', '', '', 'admin-160x160.jpg', 1, '', '', '2024-04-11'),
(13, 'huyle@gmail.com', '$2y$10$dvDcwhgTEopyY5hIN4vcweD/W/DPk993ph2j3pJtEjsaQ/x7j0eea', 0, 'Huy', 'Le', '', '', '', 1, 'chxJPWdB9X6p', '', '2024-05-09'),
(14, 'troll@gmail.com', '$2y$10$7ewasbOUKMVCaCfMuUmRYOCiTzOsF/fQeoDxxqnflDb.kW1jx3M1G', 0, 'Thien', 'An', '', '', '', 1, 'NkgdzGorMLOw', 'XRzPLUHaKZvT1W6', '2024-05-10'),
(15, 'binthienan167@gmail.com', '$2y$10$wwRCtcZWT9.0g5lgZ2k.qubbuz9REIDEfHAiAJllS.8afd772Xwpe', 0, 'Thien', 'An', '', '', '', 1, '3ovCeykz8HAS', '5sWYKLDykndRE6J', '2024-05-10'),
(16, 'tranan20012004@gmail.com', '$2y$10$ljd93RmcNb2MLN5D1DCM9e3mcpFBDPo18Up.ANfJZRlojd1nSwxDi', 0, 'Thien', 'An', '', '', '', 1, '4cyOvfonQCW3', '', '2024-05-10'),
(17, 'tranthienan200104@gmail.com', '$2y$10$x3w5uqsXHZrEN6W2P6WSkuWAs3k5SDZU3Z7BLszARHRYjv7mzgLEa', 0, 'Thien', 'An', '', '', '', 1, 'okjquh2GILK9', '', '2024-05-10'),
(18, 'testuser@gmail.com', '$2y$10$4qonb.sBtZur4XmJPxO.z.wXD9wjQyzpngORusBy1FDhTKGbzFrCS', 0, 'test', 'user', '', '', '', 1, 'sGxj8N9Mqgtb', '', '2024-05-11');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
