-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-09 14:30:41
-- 伺服器版本： 10.4.20-MariaDB
-- PHP 版本： 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `d-food`
--

-- --------------------------------------------------------

--
-- 資料表結構 `order_list`
--

CREATE TABLE `order_list` (
  `Sid` int(11) NOT NULL,
  `Order_Sid` varchar(255) NOT NULL COMMENT '訂單編號',
  `Member_id` varchar(255) NOT NULL COMMENT '會員 id (Email)',
  `Promotion_Amount` int(11) DEFAULT 0 COMMENT '會員使用的點數',
  `Delivery_Fee` int(11) NOT NULL COMMENT '運費',
  `Total_Price` int(11) NOT NULL COMMENT '訂單總價',
  `Order_Status` varchar(255) NOT NULL COMMENT '訂單狀態',
  `Created_At` varchar(255) NOT NULL COMMENT '訂單成立時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_list`
--

INSERT INTO `order_list` (`Sid`, `Order_Sid`, `Member_id`, `Promotion_Amount`, `Delivery_Fee`, `Total_Price`, `Order_Status`, `Created_At`) VALUES
(1, 'order20211108158', '6', 0, 0, 120, '訂單成立', '2021-11-08T15:44:39+08:00'),
(2, 'order202111081584', '6', 0, 0, 265, '訂單成立', '2021-11-08T15:55:42+08:00'),
(3, 'order20211108169', '6', 0, 0, 40, '訂單成立', '2021-11-08T16:03:26+08:00'),
(4, 'order202111081685', '6', 0, 0, 120, '訂單成立', '2021-11-08T16:06:26+08:00'),
(5, 'order202111081624', '6', 0, 0, 120, '訂單成立', '2021-11-08T16:08:03+08:00'),
(6, 'order202111081614', '6', 0, 0, 50, '訂單成立', '2021-11-08T16:09:10+08:00'),
(7, 'order20211108166710', '6', 0, 0, 120, '訂單成立', '2021-11-08T16:27:58+08:00'),
(8, 'order20211108163710', '6', 0, 0, 315, '訂單成立', '2021-11-08T16:30:19+08:00'),
(9, 'order20211108164310', '6', 0, 0, 160, '訂單成立', '2021-11-08T16:35:16+08:00'),
(10, 'order20211108185210', '6', 0, 0, 140, '訂單成立', '2021-11-08T18:12:21+08:00'),
(11, 'order2021110818610', '6', 0, 0, 1205, '訂單成立', '2021-11-08T18:13:52+08:00'),
(12, 'order20211108232610', '6', 0, 0, 150, '訂單成立', '2021-11-08T23:43:04+08:00'),
(13, 'order20211109133610', '6', 0, 0, 500, '訂單成立', '2021-11-09T13:44:13+08:00'),
(14, 'order20211109143810', '6', 30, 60, 860, '訂單成立', '2021-11-09T14:21:15+08:00'),
(15, 'order20211109141310', '6', 10, 80, 270, '訂單成立', '2021-11-09T14:29:34+08:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`Sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_list`
--
ALTER TABLE `order_list`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
