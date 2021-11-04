-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-03 10:51:11
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
-- 資料表結構 `member_detail`
--

CREATE TABLE `member_detail` (
  `Sid` int(11) NOT NULL,
  `Member_id` varchar(255) NOT NULL COMMENT '會員 id ( Email )',
  `Order_Name` varchar(255) NOT NULL COMMENT '訂購人姓名',
  `Order_Phone` varchar(255) NOT NULL COMMENT '訂購人手機號碼',
  `E_Mail` varchar(255) NOT NULL COMMENT '訂購人 Email',
  `Order_Address` varchar(255) NOT NULL COMMENT '訂購人地址',
  `Invoice_Type` varchar(255) NOT NULL COMMENT '發票形式',
  `Invoice_Number` varchar(255) DEFAULT NULL COMMENT '發票載具/統編號碼',
  `Payment_Type` varchar(255) NOT NULL COMMENT '付款(運送)方式',
  `Order_Remark` varchar(255) DEFAULT NULL COMMENT '訂單備註'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `member_detail`
--
ALTER TABLE `member_detail`
  ADD PRIMARY KEY (`Sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_detail`
--
ALTER TABLE `member_detail`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
