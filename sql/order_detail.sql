-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-08 16:12:54
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
-- 資料表結構 `order_detail`
--

CREATE TABLE `order_detail` (
  `Sid` int(11) NOT NULL,
  `Order_sid` varchar(255) NOT NULL COMMENT '訂單編號格式: order+timestamp',
  `Order_Name` varchar(255) NOT NULL COMMENT '訂購人姓名',
  `Product_id` varchar(255) NOT NULL COMMENT '商城的商品 id',
  `Order_Amount` int(11) NOT NULL COMMENT '商品的訂購數量',
  `Promotion_Amount` int(11) DEFAULT NULL COMMENT '使用的會員點數',
  `Order_Total` int(11) NOT NULL COMMENT '商品小計',
  `Review_Level` int(1) DEFAULT 0 COMMENT '客戶評價等級',
  `Review_Description` varchar(255) NOT NULL COMMENT '客戶評價內容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`Sid`, `Order_sid`, `Order_Name`, `Product_id`, `Order_Amount`, `Promotion_Amount`, `Order_Total`, `Review_Level`, `Review_Description`) VALUES
(3, 'order20211108158', 'Nicolas', 'PW002', 1, 0, 40, 0, ''),
(4, 'order202111081584', 'Nicolas', 'PW002', 1, 0, 185, 0, ''),
(5, 'order202111081584', 'Nicolas', 'PT006', 1, 0, 185, 0, ''),
(6, 'order20211108169', 'Nicolas', 'PW002', 1, 0, 40, 0, ''),
(7, 'order202111081685', 'PW004', '1', 0, 120, 0, 0, ''),
(8, 'order202111081685', 'PT003', '1', 0, 120, 0, 0, ''),
(9, 'order202111081624', 'PW006', '1', 0, 120, 0, 0, ''),
(10, 'order202111081614', 'Nicolas', 'PW007', 1, 0, 50, 0, '');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`Sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
