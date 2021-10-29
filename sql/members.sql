-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 10 月 27 日 08:36
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
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `sid` int(11) NOT NULL,
  `avatar` varchar(255) DEFAULT '',
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`sid`, `avatar`, `email`, `password`, `mobile`, `address`, `birthday`, `name`) VALUES
(1, '1.jpeg.jpg', '1@gmail.com', '$2y$10$sj44tWqFLueXHRHlvYbfpOHGcZPx64bxO.6Av/GvDMDLKw25/OPoe', '0911111111', '真新鎮', '2021-10-26', '皮卡丘'),
(2, '2.jpeg.jpg', '2@gmail.com', '$2y$10$x6o/1ZBIull5yXKNQmo/2Oakp8sVI3s7.p53HK4ddCi1Jq6kWarmC', '0922222222', '真新鎮', '2021-10-26', '小火龍'),
(3, '3.jpeg.jpg', '3@gmail.com', '$2y$10$0fX2gNIeblyHbwaffk8C/unxY84GQbHPaOsI5/yywWwuMdDbH3dmC', '0933333333', '真新鎮', '2021-10-26', '妙蛙種子'),
(4, '0.jpeg.jpg', 'a@gmail.com', '$2y$10$62dy5TKFNZDGg.E97IT/gOmXYIue3FI62yMmjkkUq5nqGIx4yAeti', '0900000000', '真新鎮', '2021-10-26', '小智');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
