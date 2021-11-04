-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-04 09:37:24
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
  `Order_Sid` varchar(255) NOT NULL,
  `Member_id` varchar(255) NOT NULL COMMENT '會員 id ( Email )',
  `Order_Name` varchar(255) NOT NULL COMMENT '訂購人姓名',
  `Order_Phone` varchar(255) NOT NULL COMMENT '訂購人手機號碼',
  `E_Mail` varchar(255) NOT NULL COMMENT '訂購人 Email',
  `Order_Address` varchar(255) NOT NULL COMMENT '訂購人地址',
  `Invoice_Type` varchar(255) NOT NULL COMMENT '發票形式',
  `Invoice_Number` varchar(255) DEFAULT NULL COMMENT '發票載具/統編號碼',
  `Payment_Type` varchar(255) NOT NULL COMMENT '付款(運送)方式',
  `Order_Remark` varchar(255) DEFAULT NULL COMMENT '訂單備註',
  `Created_At` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `member_detail`
--

INSERT INTO `member_detail` (`Sid`, `Order_Sid`, `Member_id`, `Order_Name`, `Order_Phone`, `E_Mail`, `Order_Address`, `Invoice_Type`, `Invoice_Number`, `Payment_Type`, `Order_Remark`, `Created_At`) VALUES
(1, 'order20211104151303', '5', 'Nicolas', 'st880517@gmail.com', '0912345678', '台北市中正區漢口街1號', '電子發票 - 個人', NULL, '宅配貨到付款', '無', '2021-11-04 15:18:38'),
(2, 'order20211104161787', '5', '123', '123', '132', '永聖門市-宜蘭縣礁溪鄉中山路二段', '電子發票 - 個人', NULL, '7-11取貨付款', '無', '2021-11-04 16:33:18'),
(3, 'order2021110416334', '5', 'Nicolas', 'st880517@gmail.com', '0912345678', '123123123', '電子發票 - 個人', NULL, '宅配貨到付款', '123', '2021-11-04 16:35:37');

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
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
