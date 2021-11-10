-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 11 月 10 日 15:40
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
  `Order_Total` int(11) NOT NULL COMMENT '商品小計',
  `Review_Level` int(1) DEFAULT 0 COMMENT '客戶評價等級',
  `Review_Description` varchar(255) DEFAULT ' ' COMMENT '客戶評價內容',
  `Review_Timestamp` datetime DEFAULT NULL COMMENT ' 客戶評價時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`Sid`, `Order_sid`, `Order_Name`, `Product_id`, `Order_Amount`, `Order_Total`, `Review_Level`, `Review_Description`, `Review_Timestamp`) VALUES
(13, 'order20211009203910', 'Doris', 'PW002', 1, 40, 4, 'good', '2021-11-03 18:00:11'),
(14, 'order20211009203910', 'Abby', 'PW001', 1, 80, 3, '健身好夥伴', '2021-11-09 00:00:00'),
(15, 'order20211009203910', 'Emily', 'PW002', 1, 40, 4, '好吃', '2021-11-01 00:00:00'),
(16, 'order20211009203910', 'Peter', 'PW003', 1, 30, 5, '醬油味很夠', '2021-11-02 00:00:00'),
(17, 'order20211009203910', 'John', 'PW004', 1, 70, 3, '很有飽足感', '2021-11-03 00:00:00'),
(18, 'order20211009203910', 'Jason', 'PW005', 1, 70, 4, '清爽', '2021-11-04 00:00:00'),
(19, 'order20211009203910', 'Kelly', 'PW006', 1, 120, 5, 'good', '2021-11-05 00:00:00'),
(20, 'order20211009203910', 'Doris', 'PW007', 1, 50, 3, 'good', '2021-11-06 00:00:00'),
(21, 'order20211110187310', 'Kelly', 'PM001', 1, 79, 5, '不錯吃', '2021-11-10 18:13:20'),
(22, 'order20211009203910', 'Joanne', 'PT001', 1, 120, 4, 'good', '2021-11-02 00:00:00'),
(23, 'order20211009203910', 'Vic', 'PT002', 1, 35, 5, '好吃', '2021-11-03 00:00:00'),
(24, 'order20211009203910', 'Chia', 'PT003', 1, 50, 4, '便宜好吃', '2021-11-04 00:00:00'),
(25, 'order20211009203910', 'Una', 'PT004', 1, 225, 5, '很有飽足感', '2021-11-05 00:00:00'),
(26, 'order20211009203910', 'Benson', 'PT005', 1, 155, 3, '不油膩好吃', '2021-11-06 00:00:00'),
(27, 'order20211009203910', 'Ben', 'PT006', 1, 145, 4, 'good', '2021-11-07 00:00:00'),
(28, 'order20211009203910', 'Joy', 'PT007', 1, 60, 5, '很有飽足感', '2021-11-08 00:00:00'),
(29, 'order20211009203910', 'Chris', 'PM001', 1, 79, 4, 'good', '2021-11-02 00:00:00'),
(30, 'order20211009203910', 'Ada', 'PM002', 1, 99, 5, '好吃', '2021-11-03 00:00:00'),
(31, 'order20211009203910', 'Alex', 'PM003', 1, 75, 4, '包裝完整', '2021-11-04 00:00:00'),
(32, 'order20211009203910', 'Bella', 'PM004', 1, 70, 5, '出貨快速', '2021-11-05 00:00:00'),
(33, 'order20211009203910', 'Allen', 'PM005', 1, 80, 3, '新鮮', '2021-11-06 00:00:00'),
(34, 'order20211009203910', 'Nicloe', 'PM006', 1, 90, 4, 'CP值高', '2021-11-07 00:00:00'),
(35, 'order20211009203910', 'Chloe', 'PM007', 1, 100, 5, '出貨快速', '2021-11-08 00:00:00'),
(36, 'order20211009203910', 'Emma', 'PM008', 1, 59, 5, '新鮮好吃', '2021-11-09 00:00:00'),
(37, 'order20211009203910', 'Sophia', 'PM009', 1, 95, 4, '營養好吃', '2021-11-10 00:00:00'),
(38, 'order20211009203910', 'Ivy', 'PM010', 1, 130, 4, '新鮮好吃', '2021-11-11 00:00:00'),
(39, 'order20211009203910', 'Chris', 'PW001', 1, 80, 5, '清爽好吃', '2021-11-02 00:00:00'),
(40, 'order20211009203910', 'Ada', 'PW011', 1, 60, 4, '清爽好吃', '2021-11-03 00:00:00'),
(41, 'order20211009203910', 'Alex', 'PW003', 1, 30, 5, '包裝完整', '2021-11-04 00:00:00'),
(42, 'order20211009203910', 'Bella', 'PW004', 1, 70, 4, '出貨快速', '2021-11-05 00:00:00'),
(43, 'order20211009203910', 'Allen', 'PW005', 1, 70, 5, '新鮮', '2021-11-06 00:00:00'),
(44, 'order20211009203910', 'Nicloe', 'PW006', 1, 120, 4, 'CP值高', '2021-11-07 00:00:00'),
(45, 'order20211009203910', 'Chloe', 'PW007', 1, 50, 4, '出貨快速', '2021-11-08 00:00:00'),
(46, 'order20211009203910', 'Emma', 'PW008', 1, 80, 5, '新鮮好吃', '2021-11-09 00:00:00'),
(47, 'order20211009203910', 'Sophia', 'PW009', 1, 50, 4, '營養好吃', '2021-11-10 00:00:00'),
(48, 'order20211009203910', 'Ivy', 'PW010', 1, 65, 4, '新鮮好吃', '2021-11-11 00:00:00'),
(49, 'order20211009203910', 'Kelly', 'PW001', 1, 80, 5, '雞肉很嫩', '2021-11-06 00:00:00'),
(50, 'order20211009203910', 'Vida', 'PW002', 1, 40, 4, '蒜味很濃', '2021-11-07 00:00:00'),
(51, 'order20211009203910', 'Joyce', 'PW003', 1, 30, 5, '簡單料理', '2021-11-08 00:00:00'),
(52, 'order20211009203910', 'Gina', 'PW004', 1, 70, 4, '好喝', '2021-11-09 00:00:00');

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
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
