-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2024 at 03:54 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `created_at`, `description`, `modified_at`, `name`, `status`, `thumbnail`) VALUES
(1, '2021-08-22 13:49:38.447000', NULL, '2023-06-18 13:46:26.890000', 'VANS', 1, '/media/static/5b6b4764-4930-4e88-8d2c-53893b2285db.jpg'),
(2, '2021-08-22 13:49:47.368000', NULL, '2023-06-18 13:45:11.835000', 'CONVERSE', 1, '/media/static/dc9f3049-4b4e-4587-906a-50421c825e29.jpg'),
(3, '2021-08-22 13:49:56.351000', NULL, '2023-06-18 13:44:24.926000', 'ADIDAS', 1, '/media/static/46345342-cf2a-469d-bf28-87d0e76a0529.jpg'),
(4, '2021-08-22 13:50:05.440000', NULL, '2023-06-18 13:43:31.590000', 'NIKE', 1, '/media/static/272a5780-bd07-4e8d-8222-cfbb8e34dad2.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  `orders` int DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `created_at`, `modified_at`, `name`, `orders`, `slug`, `status`) VALUES
(1, '2021-08-22 13:48:57.568000', NULL, 'Giày Nam', 0, 'giay-nam', 1),
(2, '2021-08-22 13:49:02.889000', NULL, 'Giày Nữ', 0, 'giay-nu', 1),
(3, '2021-08-22 13:49:06.955000', NULL, 'Giày Trẻ em', 0, 'giay-tre-em', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint NOT NULL,
  `content` text,
  `created_at` datetime(6) DEFAULT NULL,
  `post_id` bigint DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `content`, `created_at`, `post_id`, `product_id`, `user_id`) VALUES
(1, 'Sản phẩm chất lượng, sẽ ủng hộ shop dài dài', '2021-08-22 14:10:18.348000', NULL, 'u2aJZe', 2),
(2, 'Good', '2024-03-12 08:09:54.286000', NULL, '4iKReQ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `created_at`, `link`, `name`, `size`, `type`, `created_by`) VALUES
('0b4785c8-4aef-45fe-95a2-519b5ae63281', '2021-08-22 13:54:59.371000', '/media/static/0b4785c8-4aef-45fe-95a2-519b5ae63281.jpg', 'file', 2352, 'jpg', 1),
('1196c3f5-55fd-4ca3-8a9a-f815e59068c7', '2021-08-22 13:56:04.033000', '/media/static/1196c3f5-55fd-4ca3-8a9a-f815e59068c7.jpg', 'file', 1664, 'jpg', 1),
('1da9ec1b-dce8-4cf5-a2db-569e8a35c895', '2021-08-22 13:55:55.661000', '/media/static/1da9ec1b-dce8-4cf5-a2db-569e8a35c895.jpg', 'file', 3050, 'jpg', 1),
('23846b4d-4790-4b04-b3ab-9b4e05f58ad8', '2021-08-22 13:59:35.146000', '/media/static/23846b4d-4790-4b04-b3ab-9b4e05f58ad8.jpg', 'file', 523580, 'jpg', 1),
('272a5780-bd07-4e8d-8222-cfbb8e34dad2', '2023-06-18 13:43:19.409000', '/media/static/272a5780-bd07-4e8d-8222-cfbb8e34dad2.png', 'file', 19168, 'png', 1),
('282930fb-ef57-407e-89b7-2cfdb5cf43a0', '2021-08-22 13:49:34.935000', '/media/static/282930fb-ef57-407e-89b7-2cfdb5cf43a0.jpg', 'file', 37903, 'jpg', 1),
('3192cffa-d1af-4b88-aa96-fb4654d2db2c', '2021-08-22 13:51:19.755000', '/media/static/3192cffa-d1af-4b88-aa96-fb4654d2db2c.jpg', 'file', 1784, 'jpg', 1),
('32f3a8bf-278b-4947-a4d3-5242ce398092', '2023-06-18 13:31:41.224000', '/media/static/32f3a8bf-278b-4947-a4d3-5242ce398092.jpg', 'file', 46992, 'jpg', 1),
('3bfe4266-cb35-4997-9cd1-b616a646f06d', '2021-08-22 13:53:50.844000', '/media/static/3bfe4266-cb35-4997-9cd1-b616a646f06d.jpg', 'file', 2564, 'jpg', 1),
('4585df0a-91bc-4099-9bb5-1e907a4694f0', '2023-06-18 13:41:22.047000', '/media/static/4585df0a-91bc-4099-9bb5-1e907a4694f0.jpg', 'file', 153141, 'jpg', 1),
('46345342-cf2a-469d-bf28-87d0e76a0529', '2023-06-18 13:44:03.107000', '/media/static/46345342-cf2a-469d-bf28-87d0e76a0529.jpg', 'file', 36424, 'jpg', 1),
('4c48ecde-7f9d-43ff-8e4a-33775902dbd9', '2021-08-22 13:57:32.889000', '/media/static/4c48ecde-7f9d-43ff-8e4a-33775902dbd9.jpg', 'file', 278809, 'jpg', 1),
('53282ecc-1391-401c-87ee-b8ae9c2c5087', '2023-06-18 13:46:00.493000', '/media/static/53282ecc-1391-401c-87ee-b8ae9c2c5087.jpg', 'file', 91707, 'jpg', 1),
('5666f43f-1b9d-4dfd-aaf0-d61e83d04929', '2021-08-22 13:56:01.626000', '/media/static/5666f43f-1b9d-4dfd-aaf0-d61e83d04929.jpg', 'file', 3274, 'jpg', 1),
('57a9735c-805d-4e5d-ac02-36a2e6f1760d', '2023-06-18 13:32:29.551000', '/media/static/57a9735c-805d-4e5d-ac02-36a2e6f1760d.jpg', 'file', 198424, 'jpg', 1),
('59adbfdf-3072-4243-92ea-14077f9eb03d', '2023-06-18 13:33:26.275000', '/media/static/59adbfdf-3072-4243-92ea-14077f9eb03d.jpg', 'file', 441279, 'jpg', 1),
('5a5e7864-7789-41a5-a7d7-2d91722fcd70', '2023-06-18 13:32:20.819000', '/media/static/5a5e7864-7789-41a5-a7d7-2d91722fcd70.jpg', 'file', 120138, 'jpg', 1),
('5b6b4764-4930-4e88-8d2c-53893b2285db', '2023-06-18 13:45:50.987000', '/media/static/5b6b4764-4930-4e88-8d2c-53893b2285db.jpg', 'file', 360312, 'jpg', 1),
('5bbb5b9c-aac9-4cf6-b415-bdfcbdb62a3c', '2023-06-18 13:31:16.038000', '/media/static/5bbb5b9c-aac9-4cf6-b415-bdfcbdb62a3c.jpg', 'file', 153141, 'jpg', 1),
('5d72dcda-30cf-4931-b7ab-5157fb04fb09', '2021-08-22 13:53:48.030000', '/media/static/5d72dcda-30cf-4931-b7ab-5157fb04fb09.jpg', 'file', 2570, 'jpg', 1),
('6dd08508-c0d8-439b-901f-4cb2fb81b1fd', '2023-06-18 13:32:25.650000', '/media/static/6dd08508-c0d8-439b-901f-4cb2fb81b1fd.jpg', 'file', 234667, 'jpg', 1),
('6f1de8cc-84cd-4da8-9e73-1b27bbf0058d', '2021-08-22 13:49:26.663000', '/media/static/6f1de8cc-84cd-4da8-9e73-1b27bbf0058d.jpg', 'file', 40297, 'jpg', 1),
('88c9783f-3bb0-4206-83a9-361f65d72fd1', '2021-08-22 13:52:34.938000', '/media/static/88c9783f-3bb0-4206-83a9-361f65d72fd1.jpg', 'file', 1872, 'jpg', 1),
('8b28fb59-6135-4edd-a9e9-62f2f489f041', '2021-08-22 13:55:06.200000', '/media/static/8b28fb59-6135-4edd-a9e9-62f2f489f041.jpg', 'file', 1290, 'jpg', 1),
('8dfa42c1-fdb4-4f4e-a53a-d45d62dbc936', '2021-08-22 13:53:44.995000', '/media/static/8dfa42c1-fdb4-4f4e-a53a-d45d62dbc936.jpg', 'file', 2478, 'jpg', 1),
('8dfb68ba-0dbd-4aed-b715-702bfb82496d', '2023-06-19 01:18:46.925000', '/media/static/8dfb68ba-0dbd-4aed-b715-702bfb82496d.jpg', 'file', 203083, 'jpg', 1),
('94456086-7bd6-4983-b473-4bfdc1b53d84', '2023-06-18 13:33:19.675000', '/media/static/94456086-7bd6-4983-b473-4bfdc1b53d84.jpg', 'file', 153141, 'jpg', 1),
('95024d25-0d4a-422c-b07e-e7cf12548279', '2021-08-22 13:51:25.374000', '/media/static/95024d25-0d4a-422c-b07e-e7cf12548279.jpg', 'file', 2044, 'jpg', 1),
('963f9593-a6d2-4a5d-ae07-87b7b9feab45', '2021-08-22 13:55:59.070000', '/media/static/963f9593-a6d2-4a5d-ae07-87b7b9feab45.jpg', 'file', 3340, 'jpg', 1),
('96589612-c96b-411e-835e-db1a55b335b2', '2023-06-18 13:46:05.250000', '/media/static/96589612-c96b-411e-835e-db1a55b335b2.jpg', 'file', 124114, 'jpg', 1),
('97a9dfb5-a163-4e80-991c-531fd6279c71', '2023-06-18 13:45:57.121000', '/media/static/97a9dfb5-a163-4e80-991c-531fd6279c71.jpg', 'file', 167591, 'jpg', 1),
('988dd7b0-5e8b-4707-a910-b9877970c071', '2021-08-22 13:49:29.829000', '/media/static/988dd7b0-5e8b-4707-a910-b9877970c071.png', 'file', 87469, 'png', 1),
('9bd945cf-51d5-4a83-8237-515a10418a2e', '2023-06-18 13:41:15.997000', '/media/static/9bd945cf-51d5-4a83-8237-515a10418a2e.jpg', 'file', 523354, 'jpg', 1),
('a1617322-8bc9-49d4-a6f7-b79c0fe4d30f', '2021-08-22 13:52:41.328000', '/media/static/a1617322-8bc9-49d4-a6f7-b79c0fe4d30f.jpg', 'file', 1914, 'jpg', 1),
('a28b084b-74e9-4204-9484-f47b9a7cb859', '2023-06-18 13:40:47.590000', '/media/static/a28b084b-74e9-4204-9484-f47b9a7cb859.jpg', 'file', 360312, 'jpg', 1),
('a397f931-80e9-4b0b-9fab-f7698a710cd5', '2023-06-18 13:32:17.152000', '/media/static/a397f931-80e9-4b0b-9fab-f7698a710cd5.jpg', 'file', 203083, 'jpg', 1),
('ae82ded7-7339-4747-922d-05c82e269548', '2023-06-18 13:44:09.852000', '/media/static/ae82ded7-7339-4747-922d-05c82e269548.jpg', 'file', 523354, 'jpg', 1),
('b3d2aa88-746a-4170-9381-32ce629bb8cb', '2023-06-18 13:30:20.249000', '/media/static/b3d2aa88-746a-4170-9381-32ce629bb8cb.jpg', 'file', 523354, 'jpg', 1),
('b5075993-78c4-4470-aa5e-99a0ba229162', '2021-08-22 13:55:03.356000', '/media/static/b5075993-78c4-4470-aa5e-99a0ba229162.jpg', 'file', 2214, 'jpg', 1),
('b8cbd1b2-8bb7-4148-9057-4aeb0dbcfd18', '2023-06-18 13:29:09.764000', '/media/static/b8cbd1b2-8bb7-4148-9057-4aeb0dbcfd18.jpg', 'file', 360312, 'jpg', 1),
('b915dbe3-1aaa-4d3f-b14f-f716a3bad457', '2021-08-22 13:49:32.293000', '/media/static/b915dbe3-1aaa-4d3f-b14f-f716a3bad457.png', 'file', 3690, 'png', 1),
('bc5007fc-0c0c-4c1e-b4c8-6ccf8b2acebe', '2023-06-18 13:31:25.353000', '/media/static/bc5007fc-0c0c-4c1e-b4c8-6ccf8b2acebe.png', 'file', 19168, 'png', 1),
('bc5a2552-8e9c-4f97-8e29-b6c28a7fd5ec', '2023-06-18 13:46:08.858000', '/media/static/bc5a2552-8e9c-4f97-8e29-b6c28a7fd5ec.jpg', 'file', 355667, 'jpg', 1),
('bcaddf44-f79e-4983-95b2-89105923ca1e', '2023-06-18 13:44:41.038000', '/media/static/bcaddf44-f79e-4983-95b2-89105923ca1e.jpg', 'file', 120138, 'jpg', 1),
('bedc7a79-05b9-40ac-ba26-ba312c5da2dd', '2021-08-22 13:51:22.766000', '/media/static/bedc7a79-05b9-40ac-ba26-ba312c5da2dd.jpg', 'file', 1614, 'jpg', 1),
('d357e4e2-3ffe-455e-89ba-7c5521403345', '2023-06-18 13:44:54.627000', '/media/static/d357e4e2-3ffe-455e-89ba-7c5521403345.jpg', 'file', 198424, 'jpg', 1),
('dc9f3049-4b4e-4587-906a-50421c825e29', '2023-06-18 13:44:46.435000', '/media/static/dc9f3049-4b4e-4587-906a-50421c825e29.jpg', 'file', 234667, 'jpg', 1),
('de05b0a9-86e6-468d-9cc8-ae397b364345', '2023-06-18 13:29:32.033000', '/media/static/de05b0a9-86e6-468d-9cc8-ae397b364345.jpg', 'file', 91707, 'jpg', 1),
('df6964c1-4a16-43f5-b20e-12ad66d36a2f', '2023-06-18 13:44:37.266000', '/media/static/df6964c1-4a16-43f5-b20e-12ad66d36a2f.jpg', 'file', 203083, 'jpg', 1),
('f31cfad6-07c9-48fc-a1ca-cfbba534e01b', '2021-08-22 13:54:54.752000', '/media/static/f31cfad6-07c9-48fc-a1ca-cfbba534e01b.jpg', 'file', 2532, 'jpg', 1),
('fa7c350d-3da0-4f96-bd4f-01bc8b1cd83d', '2023-06-18 13:33:09.315000', '/media/static/fa7c350d-3da0-4f96-bd4f-01bc8b1cd83d.jpg', 'file', 243599, 'jpg', 1),
('fd7ea8d3-a15b-4320-a0c4-227902fd700c', '2021-08-22 13:52:38.364000', '/media/static/fd7ea8d3-a15b-4320-a0c4-227902fd700c.jpg', 'file', 2138, 'jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `promotion` json DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `receiver_address` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `total_price` bigint DEFAULT NULL,
  `buyer` bigint DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `modified_at`, `note`, `price`, `promotion`, `quantity`, `receiver_address`, `receiver_name`, `receiver_phone`, `size`, `status`, `total_price`, `buyer`, `created_by`, `modified_by`, `product_id`) VALUES
(1, '2021-08-22 14:05:06.764000', '2021-08-22 14:17:17.498000', 'Giao hàng trong giờ hành chính', 1750000, NULL, 1, 'Vĩnh Hưng Hoàng Mai Hà Nội', 'user', '0969708715', 35, 5, 1600000, 2, 2, 1, 'u2aJZe'),
(2, '2021-08-22 14:14:17.135000', '2021-08-22 14:17:03.103000', '', 1450000, NULL, 1, 'Hải Dương', 'Thảo Trang', '0378246453', 39, 2, 1300000, 3, 3, 1, 'Eq1H5L'),
(3, '2021-08-22 14:15:06.950000', NULL, '', 1750000, NULL, 1, 'Hd', 'Phương', '0378246453', 40, 1, 1600000, 4, 4, NULL, 'u2aJZe'),
(4, '2021-08-22 14:15:57.784000', '2021-08-22 14:16:48.662000', '', 1450000, NULL, 1, 'HN', 'Linh', '0378246453', 39, 3, 1300000, 5, 5, 1, 'Eq1H5L'),
(5, '2021-08-22 14:18:04.242000', '2021-08-22 14:18:43.548000', '', 1750000, NULL, 1, 'HN', 'admin', '0969708715', 35, 4, 1600000, 1, 1, 1, 'u2aJZe'),
(6, '2023-06-18 13:52:55.277000', NULL, '', 1350000, NULL, 1, 'tphcm', 'admin', '0969708715', 42, 5, 1350000, 1, 1, NULL, '4iKReQ'),
(7, '2024-01-19 15:30:37.569000', NULL, '', 1350000, NULL, 1, 'go vp', 'admin', '0969708715', 42, 5, 1350000, 1, 1, NULL, '4iKReQ'),
(8, '2024-03-12 04:48:13.223000', NULL, '', 1750000, NULL, 1, 'Go Vap', 'vuthanhtrung', '0528592362', 35, 5, 1750000, 6, 6, NULL, 'FJWheJ'),
(9, '2024-03-12 04:49:40.578000', NULL, '', 1350000, NULL, 1, 'Ho Chi Minh', 'vuthanhtrung', '0528592362', 42, 5, 1350000, 6, 6, NULL, '4iKReQ'),
(10, '2024-03-12 08:10:50.399000', NULL, '', 1350000, NULL, 1, 'Ho Chi Minh City', 'admin', '0969708715', 42, 1, 1350000, 1, 1, NULL, '4iKReQ');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint NOT NULL,
  `content` text,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `modified_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `slug` varchar(600) NOT NULL,
  `status` int DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(300) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `content`, `created_at`, `description`, `modified_at`, `published_at`, `slug`, `status`, `thumbnail`, `title`, `created_by`, `modified_by`) VALUES
(1, '<p>&nbsp;</p>', '2021-08-22 13:58:02.150000', '<p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Chào các bạn. Mình là Tú admin Tu Shoes và hôm nay mình sẽ giải thích cho các bạn hiểu ntn là rep 1:1 và những vấn đề liên quan đến các chất lượng giày hiện nay. Cá nhân mình đã làm trong ngành này cũng 2 năm rồi và cũng hơn chục lần đi tham quan rất nhiều xưởng sản xuất và cũng đã trải nghiệm quá nhiều hàng real và rep 1:1 lẫn rất nhiều chất lượng khác rồi nên hôm nay mình sẽ giải thích rõ ràng nhất về chất lượng rep 1:1 cho các bạn hiểu.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\">&nbsp;</p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\"><strong>Thứ 1: Rep 1:1 là gì ?&nbsp;</strong></span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Rep 1:1 là từ viết tắt của Replica 1:1 ám chỉ hàng fake được sản xuất cao cấp nhất, chất lượng tốt nhất và giống với real nhất. Nó có thể giống đến&nbsp;<strong>98%-99%</strong>&nbsp;hay có những bạn đánh giá nếu real được 10 điểm thì rep 1:1 sẽ được 9 điểm - 9,5 điểm.&nbsp;</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Về&nbsp;<strong>so sánh Rep 1:1 với Real</strong>&nbsp;thì khi mà các bạn không cầm trên tay 2 mẫu thì cực kì rất khó để so sánh hay nhận biết được nó là hàng rep 1:1 hay real. Phải những bạn chuyên gia kiểu cầm lên check thì mới biết được. Còn nếu bạn đi rep 1:1 ngoài đường thì không ai nói bạn đang đi 1 đôi giày fake cả. Kể cả những người tìm hiểu về giày và tiếp xúc thường xuyên như mình đây cảm giác nhìn nhìn 1 đôi rep 1:1 trên chân cũng khó có thể biết được đó là rep 1:1 hay real [ Mình nhắc lại là đã 2 năm và ngày nào mình cũng tìm hiểu về giày và tiếp xúc với giày ]</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Tùy vào mẫu thì các chất lượng rep 1:1 sẽ khác với chính hãng 1 số vấn đề sau [ form dáng , chi tiết tem, màu sắc ] Và lưu ý là các điểm khác này là rất nhỏ, hầu như nguyên liệu làm 1 chiếc giày rep 1:1 với real là giống nhau. Về màu sắc thì khác nhau rất ít chỉ có đậm hơn 1 chút hoặc nhạt hơn 1 chút rất khó để kiểm tra nếu bạn không có 2 đôi rep 1:1 và real để so sánh.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Chính vì rep 1:1 rất khó check với real nên có rất&nbsp;<strong>nhiều cửa hàng mang tiếng bán giày chính hãng</strong>&nbsp;nhưng thực chất là đang bán rep 1:1 với giá giày real. Cụ thể các bạn tìm kiếm trên google từ khóa như những cửa hàng bán giày chính hãng lừa đảo sẽ ra 1 danh sách rất nhiều luôn nhé.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Bên cạnh đó cũng có&nbsp;<strong>rất nhiều cửa hàng bán hàng kém chất lượng</strong>&nbsp;như những chất lượng fake 1, super fake tự nhận mình đang bán hàng rep 1:1 vì họ muốn lừa những khách hàng của họ là tôi là cửa hàng bán rep 1:1 rẻ nhất nhưng thực chất những thứ bạn nhận được chỉ là chất lượng kém. Về chất lượng kém chỉ cần mình nhìn lướt qua là có thể biết được chứ không phải giống với những sản phẩm rep 1:1 cao cấp rất khó để nhận biết đến nỗi có thể trộn rep 1:1 với real để bán.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Vậy với những đặc điểm như vậy. Rep 1:1 so sánh với real sẽ đạt được 98% thì&nbsp;<strong>mức giá&nbsp;</strong>bán rep 1:1 sẽ rơi vào 1/2 cho đến 1/3 so với giá real. Vì chất liệu và độ tỉ mỉ rep 1:1 mang lại sẽ không hề có mức giá quá thấp. Và đặc điểm là rep 1:1 chỉ sản xuất những đôi giày giống real. Có nghĩa là khi real có phiên bản nào thì rep 1:1 sẽ mua sản phẩm đấy về và sản xuất phối màu và chất liệu chât lượng tương tự. Xưởng rep 1:1 sẽ không tự ý sản xuất ra những đôi giày mà không có hàng chính hãng để so sánh.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\"><strong>Thứ 2: Những ai sẽ lựa chọn rep 1:1 ?</strong></span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Mình có tham khảo khá nhiều khách hàng lựa chọn rep 1:1 thành viên Tu Shoes thì mình nhận được rất nhiều những ý kiến về khách hàng tìm đến cửa hàng mình đa số về tiết kiệm chi phí cũng như là họ không thể tìm thấy những đôi giày real đó bán ở Việt Nam.&nbsp;</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Ví dụ như những đôi giày&nbsp;<strong>Yeezy&nbsp;</strong>được sản xuất số lượng hạn chế [&nbsp;<strong>limited</strong>&nbsp;] khó có thể mua được ở Việt Nam cũng như là % cao mua được giày rep 1:1 với giá 8-15tr là rất cao nên họ quyết định chọn đến rep 1:1 real boost với giá bằng 1/3 với ~3tr . Hay những dòng&nbsp;<strong>Vans vault&nbsp;</strong>cứ được&nbsp;<strong>Restock&nbsp;</strong>[ Làm lại ] bán chính hãng ở Việt Nam thì không thể mua được nên khách hàng sẽ lựa chọn rep 1:1 với giá = 1/3 khoảng ~800k - 900k. Vì Vans Vault cực kì khó mua và có mức giá từ 2tr4-3tr5 tùy phiên bản nên những cửa hàng mang rep 1:1 bán giá real sẽ rơi vào giá hơn 1tr để lừa khách hàng thì các bạn nên cẩn thận và check kĩ cũng như là nên tránh những cửa hàng đã từng bị phốt.&nbsp;</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Tiếp đến khi mình quyết định chỉ mang&nbsp;<strong>chất lượng tốt nhất</strong>&nbsp;đến với khách hàng cũng là lúc nhiều cửa hàng bán hàng Super fake cũ cũng như bán hàng fake 1 cũ với mức giá 300k - 1tr / 1 sản phẩm cũng đã nói đó là hàng rep 1:1 dẫn đến việc có quá nhiều người loạn về hàng hóa không biết và hiểu rõ rep 1:1 là gì? Các bạn có thể để ý đến cách đây 2 năm mình đưa rep 1:1 lên và kể từ lúc đó rep 1:1 thành trào lưu của tất cả mọi người :\"&gt;.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\"><strong>Thực tế bán hàng chuẩn rep 1:1 ở Việt Nam</strong>&nbsp;theo mình được biết còn chưa có đến 5 cửa hàng. Vì đơn giản người Việt Nam chỉ thích những hàng rẻ và không quan tâm về chất lượng. Chỉ để ý 2 mẫu giống nhau nhưng không biết thực chất là 2 sản phẩm chất lượng khác nhau và khách hàng sẽ lựa chọn rẻ hơn. Và thực tế thì cửa hàng mình đã bị rất nhiều cửa hàng khác ăn trộm ảnh, chỉnh sửa ảnh và xóa toàn bộ logo của Tu Shoes trên hình ảnh và chèn vào đó là icon.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\"><strong>Kết Luận:</strong></span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Trên đây thì mình không có khuyên bạn phải sử dụng hàng này hay hàng kia. Tùy vào mục đích sử dụng của các bạn thì các bạn sẽ chọn những sản phẩm phù hợp. Các bạn là khách hàng và các bạn xứng đáng nhận được những gì tốt nhất cho sự lựa chọn của các bạn. Mình chỉ nhắc các bạn là chất lượng đi kèm với giá cả và đừng để người khác lừa bạn vì họ là những người không đủ để các bạn tin tưởng gửi gắm.&nbsp;</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Chân thành cảm ơn các bạn đã xem bài viết đánh giá của mình. Có góp ý gì hay hỏi đáp gì các bạn cứ cmt bên dưới mình sẽ trả lời cho các bạn bằng tất cả khả năng kinh nghiệm của mình. Đừng quên mình cũng nhận check giày giúp các bạn nha. &lt;3</span></p>', '2023-06-18 13:41:27.921000', '2021-08-22 13:58:02.150000', 'giay-rep-1-1-la-gi-co-nen-chon-giay-rep-1-1-giay-replica-va-replica-1-1-va-lua-ao-ban-giay-replica', 1, '/media/static/4585df0a-91bc-4099-9bb5-1e907a4694f0.jpg', 'Giày Rep 1:1 là gì? Có nên chọn giày rep 1:1? Giày replica và replica 1:1 và lừa đảo bán giày replica ?', 1, 1),
(2, '<p>&nbsp;</p>', '2021-08-22 13:59:40.506000', '<p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"font-size: 18px;\"><u><strong><span style=\"color: rgb(0, 0, 0);\">Vì Sao Giày Chuẩn Rep 1:1 Tu Shoes Lại Rẻ Nhất ?</span></strong></u></span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\"><strong>1. Nhập hàng trực tiếp từ nhà máy.</strong></span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Toàn bộ sản phẩm Tu Shoes đều được nhập trực tiếp từ nhà máy. Không thông qua trung gian cũng như là kiểm tra về chất lượng sản phẩm nghiêm ngặt qua nhiều bước nên Tu Shoes luôn cam kết mang đến chất lượng tốt nhất với giá tốt nhất.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\"><strong>2. Đúng Giá Đúng Chất Lượng [ Nói Không Với Lừa Đảo, Bán Hàng Rác , Trộn Hàng Hoặc Đôn Hàng ]</strong></span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Mọi người hay so sánh đặt câu hỏi là vì sao cửa hàng này đắt hơn cửa hàng khác 200k, 300k hay thậm chí là 500k ? Đơn giản vì&nbsp;<strong>chất lượng hoàn toàn khác nhau</strong>&nbsp;. Tu Shoes đã làm việc trong ngành giày hơn 3 năm và hiểu rõ điều này. Nếu cửa hàng khác bán chất lượng tương tự mà giá rẻ hơn rất nhiều vậy tại sao Tu Shoes không sang bên cửa hàng đó nhập hết hàng bên đó về và bán giá cao để kiếm lời ? Chỉ đơn giản là&nbsp;<strong>chất lượng hoàn toàn khác nhau cho nên giá tiền cũng hoàn toàn khác nhau&nbsp;</strong>và những cửa hàng bán hàng rẻ tiền quảng cáo chất lượng Rep 1:1 chuẩn là đang&nbsp;<strong>lừa đảo khách hàng.</strong></span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\">&nbsp;</p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\"><strong>Ví Dụ:&nbsp;</strong>Khách hàng đặt 1 sản phẩm A của Tu Shoes thì shop sẽ mất thời gian khoảng 7-10 ngày để sản phẩm đó có thể vận chuyển từ&nbsp;<b>Nhà Máy&nbsp;</b>về đến shop để giao hàng hóa hay sản phẩm chất lượng cho bạn khách hàng.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Nếu những cửa hàng khác&nbsp;cũng bán hàng rep 1:1 chất lượng tốt mà giá rẻ tại sao bên shop không qua đó lấy hàng chất lượng tốt giá rẻ như quảng cáo để trả hàng cho khách, không phải bắt khách đợi 7-10 ngày nữa&nbsp;?&nbsp;<strong>Chỉ đơn giản là những cửa hàng đó đang lừa đảo khách hàng và hàng hóa đó không đủ tiêu chuẩn Rep 1:1 như đã quảng cáo để mang đến cho khách hàng những chất lượng tốt nhất.</strong></span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\"><strong><u>Vì thế đúng giá rẻ nhất và đúng chất lượng tốt nhất chỉ có tại Tu Shoes</u></strong></span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\">&nbsp;</p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\"><strong>3. Cửa hàng Uy Tín.</strong></span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">&nbsp;Với 1 cửa hàng uy tín thì thực hiện đầy đủ cam kết với khách hàng từ bảo hành hàng hóa, đổi trả hàng hóa cũng như việc nâng cao chất lượng phục vụ là điều quan trọng nhất.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Với TuShoes bạn có thể:</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">&nbsp;-&nbsp;<b>Đổi Hoặc Trả</b>&nbsp;sản phẩm trong 7 ngày [ Với giày chưa sử dụng không kể lí do&nbsp;]</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Bạn sẽ có 7 ngày để kiểm tra chất lượng sản phẩm, bạn có thể mang giày đi mọi cửa hàng khác để có thể so sánh về chất lượng, so sánh về giá và nếu bạn thấy bên cửa hàng Tu Shoes sai về cam kết chất lượng tốt nhất giá tốt nhất thì bạn cứ mang trả lại cho Tu Shoes.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">-&nbsp;<strong>Bảo hành 1 đổi 1 t</strong>rong 3 tháng với lỗi từ nhà sản xuất</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Với bất kì lỗi nào từ nhà máy như chất lượng không đảm bảo dẫn đến việc bung keo thì bên mình hỗ trợ nhận lại giày và đổi cho khách hàng sản phẩm mới.</span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">-&nbsp;<strong>Hỗ trợ bảo hành và sửa chữa miễn phí</strong></span></p><p style=\"margin-bottom: 10px; color: rgb(125, 125, 125); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0);\">Với những sản phẩm sau 3 tháng mà gặp lỗi từ giày thì bên shop vẫn sẽ nhận về và hỗ trợ sửa lại giày miễn phí cho khách hàng.</span></p>', '2023-06-19 01:18:56.544000', '2021-08-22 13:59:40.506000', 'giay-rep-1-1-chuan-gia-re-nhat-tu-shoes', 1, '/media/static/8dfb68ba-0dbd-4aed-b715-702bfb82496d.jpg', 'Giày Rep 1:1 Chuẩn Giá Rẻ Nhất - Tu Shoes', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `image_feedback` json DEFAULT NULL,
  `images` json DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  `price` bigint DEFAULT NULL,
  `sale_price` bigint DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int DEFAULT NULL,
  `total_sold` bigint DEFAULT NULL,
  `product_view` int DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `created_at`, `description`, `image_feedback`, `images`, `modified_at`, `name`, `price`, `sale_price`, `slug`, `status`, `total_sold`, `product_view`, `brand_id`) VALUES
('4iKReQ', NULL, '<p style=\"margin-bottom: 10px; color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Chất lượng Rep 1:1&nbsp;</p><p style=\"margin-bottom: 10px; color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Nên mang lên 1 size so với tiêu chuẩn<br>- Vận chuyển toàn quốc&nbsp;[ Kiểm Tra Hàng Trước Khi Thanh Toán ]&nbsp;<br>- 100% Ảnh chụp trực tiếp tại Tu Shoes&nbsp;<br>- Bảo Hành Trọn Đời Sản Phẩm&nbsp;<br>- Đổi Trả 7 Ngày Không Kể Lí Do</p>', NULL, '[\"/media/static/b8cbd1b2-8bb7-4148-9057-4aeb0dbcfd18.jpg\", \"/media/static/de05b0a9-86e6-468d-9cc8-ae397b364345.jpg\"]', '2024-03-12 04:40:56.113000', 'VANS VAULT STYLE 36 BLACK', 550000, 1350000, 'vans-vault-style-36-black', 1, 0, 9, 1),
('Eq1H5L', NULL, '<p><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">&nbsp;Chất lượng Rep 1:1 Tốt Nhất</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Đi lùi 1 size</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Vận chuyển toàn quốc&nbsp;[ Kiểm Tra Hàng Trước Khi Thanh Toán ]&nbsp;</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- 100% Ảnh chụp trực tiếp tại Tu Shoes&nbsp;</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Bảo Hành Trọn Đời Sản Phẩm&nbsp;</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Đổi Trả 7 Ngày Không Kể Lí Do&nbsp;</span><br></p>', NULL, '[\"/media/static/6dd08508-c0d8-439b-901f-4cb2fb81b1fd.jpg\", \"/media/static/5a5e7864-7789-41a5-a7d7-2d91722fcd70.jpg\", \"/media/static/a397f931-80e9-4b0b-9fab-f7698a710cd5.jpg\", \"/media/static/57a9735c-805d-4e5d-ac02-36a2e6f1760d.jpg\"]', '2023-06-18 13:32:46.709000', 'FEAR OF GOD CHUCK 70 HI \"BLACK\"', 550000, 1450000, 'fear-of-god-chuck-70-hi-black', 1, 0, 3, 2),
('eWtkD1', NULL, '<p><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Chất lượng chuẩn&nbsp;Rep 1:1&nbsp;</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Vận chuyển toàn quốc&nbsp;[ Kiểm Tra Hàng Trước Khi Thanh Toán ]&nbsp;</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- 100% Ảnh chụp trực tiếp tại Tu Shoes&nbsp;</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Bảo Hành Trọn Đời Sản Phẩm&nbsp;</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Đổi Trả 7 Ngày Không Kể Lí Do&nbsp;</span><br></p>', NULL, '[\"/media/static/bc5007fc-0c0c-4c1e-b4c8-6ccf8b2acebe.png\", \"/media/static/5bbb5b9c-aac9-4cf6-b415-bdfcbdb62a3c.jpg\", \"/media/static/32f3a8bf-278b-4947-a4d3-5242ce398092.jpg\"]', '2023-06-18 13:49:25.225000', 'AIR MAX 270 REACT \'WHITE SMOKE GREY\'', 550000, 1350000, 'air-max-270-react-white-smoke-grey', 1, 0, 1, 4),
('FJWheJ', NULL, '<p style=\"margin-bottom: 10px; color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Chất lượng Rep 1:1&nbsp;</p><p style=\"margin-bottom: 10px; color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Nên mang lên 1 size so với tiêu chuẩn<br>- Vận chuyển toàn quốc&nbsp;[ Kiểm Tra Hàng Trước Khi Thanh Toán ]&nbsp;<br>- 100% Ảnh chụp trực tiếp tại Tu Shoes&nbsp;<br>- Bảo Hành Trọn Đời Sản Phẩm&nbsp;<br>- Đổi Trả 7 Ngày Không Kể Lí Do</p>', NULL, '[\"/media/static/b3d2aa88-746a-4170-9381-32ce629bb8cb.jpg\"]', '2023-06-18 13:30:43.178000', 'SUPERSTAR BLACK WHITE GOLD', 650000, 1750000, 'superstar-black-white-gold', 1, 0, 4, 3),
('u2aJZe', NULL, '<p><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Chất lượng Rep 1:1&nbsp;</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Đi lùi&nbsp;1 size so với tiêu chuẩn</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Vận chuyển toàn quốc&nbsp;[ Kiểm Tra Hàng Trước Khi Thanh Toán ]&nbsp;</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- 100% Ảnh chụp trực tiếp tại Tu Shoes&nbsp;</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Bảo Hành Trọn Đời Sản Phẩm&nbsp;</span><br style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\"><span style=\"color: rgb(137, 137, 137); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 15px; text-align: center;\">- Đổi Trả 7 Ngày Không Kể Lí Do&nbsp;</span><br></p>', NULL, '[\"/media/static/32f3a8bf-278b-4947-a4d3-5242ce398092.jpg\", \"/media/static/59adbfdf-3072-4243-92ea-14077f9eb03d.jpg\", \"/media/static/94456086-7bd6-4983-b473-4bfdc1b53d84.jpg\", \"/media/static/fa7c350d-3da0-4f96-bd4f-01bc8b1cd83d.jpg\"]', '2023-06-18 13:33:40.663000', 'WMNS AIR FORCE 1 SHADOW \'MYSTIC NAVY\'', 650000, 1750000, 'wmns-air-force-1-shadow-mystic-navy', 1, 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_id` varchar(255) NOT NULL,
  `category_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
('FJWheJ', 1),
('FJWheJ', 2),
('Eq1H5L', 1),
('Eq1H5L', 2),
('u2aJZe', 1),
('u2aJZe', 2),
('eWtkD1', 1),
('4iKReQ', 1),
('4iKReQ', 2),
('4iKReQ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `product_id` varchar(255) NOT NULL,
  `size` int NOT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`product_id`, `size`, `quantity`) VALUES
('4iKReQ', 35, 50),
('4iKReQ', 36, 15),
('4iKReQ', 37, 15),
('4iKReQ', 38, 15),
('4iKReQ', 39, 15),
('4iKReQ', 40, 15),
('4iKReQ', 41, 15),
('4iKReQ', 42, 100),
('Eq1H5L', 35, 15),
('Eq1H5L', 36, 15),
('Eq1H5L', 37, 15),
('Eq1H5L', 38, 15),
('Eq1H5L', 39, 3),
('Eq1H5L', 40, 15),
('Eq1H5L', 41, 35),
('Eq1H5L', 42, 15),
('eWtkD1', 35, 15),
('eWtkD1', 36, 15),
('eWtkD1', 37, 15),
('eWtkD1', 38, 15),
('eWtkD1', 39, 15),
('eWtkD1', 40, 15),
('eWtkD1', 41, 15),
('eWtkD1', 42, 15),
('FJWheJ', 35, 15),
('FJWheJ', 36, 15),
('FJWheJ', 37, 15),
('FJWheJ', 38, 15),
('FJWheJ', 39, 15),
('FJWheJ', 40, 15),
('FJWheJ', 41, 15),
('FJWheJ', 42, 15),
('u2aJZe', 35, 10),
('u2aJZe', 36, 15),
('u2aJZe', 37, 10),
('u2aJZe', 38, 15),
('u2aJZe', 39, 15),
('u2aJZe', 40, 30),
('u2aJZe', 41, 25),
('u2aJZe', 42, 15);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` bigint NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `discount_type` int DEFAULT NULL,
  `discount_value` bigint DEFAULT NULL,
  `expired_at` datetime(6) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `maximum_discount_value` bigint DEFAULT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `coupon_code`, `created_at`, `discount_type`, `discount_value`, `expired_at`, `is_active`, `is_public`, `maximum_discount_value`, `name`) VALUES
(1, 'KH123', '2021-08-22 13:57:01.646000', 1, 30, '2021-09-06 00:00:00.000000', 1, 1, 150000, '2/9');

-- --------------------------------------------------------

--
-- Table structure for table `statistic`
--

CREATE TABLE `statistic` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `profit` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sales` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `statistic`
--

INSERT INTO `statistic` (`id`, `created_at`, `profit`, `quantity`, `sales`, `order_id`) VALUES
(1, '2021-08-22 14:16:48.648000', 650000, 1, 1300000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `roles` json NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `address`, `avatar`, `created_at`, `email`, `full_name`, `modified_at`, `password`, `phone`, `roles`, `status`) VALUES
(1, 'Ho Chi Minh', NULL, '2021-08-22 13:43:08.676000', 'admin@gmail.com', 'admin', NULL, '$2a$12$6vOrz9fOe1OFg5/9jzP8KeJEAIS4zjZe5RyuuPe6.pprqua3J/AUu', '0969708715', '[\"ADMIN\", \"USER\"]', 1),
(2, 'Vĩnh Hưng Hoàng Mai Hà Nội', NULL, '2021-08-22 13:44:11.392000', 'user@gmail.com', 'user', NULL, '$2a$12$4d0o3IvSxvJ1VhIisqfMt.2GsBAhQsxjqeFI8T7CC749qJ.F4Ynae', '0969708715', '[\"USER\"]', 1),
(3, NULL, NULL, '2021-08-22 14:13:47.852000', 'thaotrang@gmail.com', 'Thảo Trang', NULL, '$2a$12$xAgcACYzUTMsT2q4v93MUeHTWI1DN13i9.tN6kpK.CiazKhsRsb0y', '0378246453', '[\"USER\"]', 1),
(4, NULL, NULL, '2021-08-22 14:14:40.837000', 'phuong@gmail.com', 'Phương', NULL, '$2a$12$.bH4k6xySdmmPDJYkXbQjOKqig4VpCl08uHY11WQRe/fIkno83cXm', '0378246453', '[\"USER\"]', 1),
(5, NULL, NULL, '2021-08-22 14:15:37.844000', 'linh@gmail.com', 'Linh', NULL, '$2a$12$mtLAES4vlQ5vXFpLtADAI.aqvVjzNMeCuc8cRnr8FbWxY1vmJZDyy', '0378246453', '[\"USER\"]', 1),
(6, 'Go Vap', NULL, '2024-03-12 04:46:02.299000', 'vuthanhtrung385@gmail.com', 'vuthanhtrung', NULL, '$2a$12$IycKHHVyq/hmoywsPapa7O9WX.Y6wCWIA6Ei/anz0t0/8ijssa3wK', '0528592362', '[\"USER\"]', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_rdxh7tq2xs66r485cc8dkxt77` (`name`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs1slvnkuemjsq2kj4h3vhx7i1` (`post_id`),
  ADD KEY `FKm1rmnfcvq5mk26li4lit88pc5` (`product_id`),
  ADD KEY `FKqm52p1v3o13hy268he0wcngr5` (`user_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_4mgw71qgyeud96uf8kgiu9fsw` (`link`),
  ADD KEY `FKp1m9f9rm7xy8nk7a820dvh6c4` (`created_by`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKljvc97l19m7cnlopv8535hijx` (`buyer`),
  ADD KEY `FKtjwuphstqm46uffgc7l1r27a9` (`created_by`),
  ADD KEY `FKe0abpy849bl2ynw3468ksavvl` (`modified_by`),
  ADD KEY `FK787ibr3guwp6xobrpbofnv7le` (`product_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3b6cq7u0x3fdxeh4sq95mia29` (`created_by`),
  ADD KEY `FKl2q2idcap1gt3qhh87ebirpnc` (`modified_by`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs6cydsualtsrprvlf2bb3lcam` (`brand_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD KEY `FKkud35ls1d40wpjb5htpp14q4e` (`category_id`),
  ADD KEY `FK2k3smhbruedlcrvu6clued06x` (`product_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`product_id`,`size`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_acld676f1gyc04nofpb7t2ecn` (`coupon_code`);

--
-- Indexes for table `statistic`
--
ALTER TABLE `statistic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKok7jp7mh6y9tghumc2do51ieq` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statistic`
--
ALTER TABLE `statistic`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FKm1rmnfcvq5mk26li4lit88pc5` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKqm52p1v3o13hy268he0wcngr5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKs1slvnkuemjsq2kj4h3vhx7i1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FKp1m9f9rm7xy8nk7a820dvh6c4` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK787ibr3guwp6xobrpbofnv7le` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKe0abpy849bl2ynw3468ksavvl` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKljvc97l19m7cnlopv8535hijx` FOREIGN KEY (`buyer`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKtjwuphstqm46uffgc7l1r27a9` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK3b6cq7u0x3fdxeh4sq95mia29` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKl2q2idcap1gt3qhh87ebirpnc` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKs6cydsualtsrprvlf2bb3lcam` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `FK2k3smhbruedlcrvu6clued06x` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKkud35ls1d40wpjb5htpp14q4e` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `statistic`
--
ALTER TABLE `statistic`
  ADD CONSTRAINT `FKok7jp7mh6y9tghumc2do51ieq` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
