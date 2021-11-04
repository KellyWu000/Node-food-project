-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-04 09:37:07
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 7.3.31

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
  `Total_Price` int(11) NOT NULL COMMENT '訂單總價',
  `Order_Status` varchar(255) NOT NULL COMMENT '訂單狀態',
  `Created_At` varchar(255) NOT NULL COMMENT '訂單成立時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_list`
--

INSERT INTO `order_list` (`Sid`, `Order_Sid`, `Member_id`, `Total_Price`, `Order_Status`, `Created_At`) VALUES
(1, 'order20211104151303', '5', 245, '訂單成立', '2021-11-04T07:18:38.000Z');

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
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
