-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-04 09:37:12
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
-- 資料表結構 `order_temp`
--

CREATE TABLE `order_temp` (
  `Sid` int(11) NOT NULL,
  `Member_id` varchar(255) NOT NULL COMMENT '會員 email',
  `Product_id` varchar(255) NOT NULL COMMENT '商城的商品 id',
  `Order_Amount` int(11) NOT NULL COMMENT '商品訂購數量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_temp`
--

INSERT INTO `order_temp` (`Sid`, `Member_id`, `Product_id`, `Order_Amount`) VALUES
(1, '5', 'PT001', 2);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_temp`
--
ALTER TABLE `order_temp`
  ADD PRIMARY KEY (`Sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_temp`
--
ALTER TABLE `order_temp`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
