-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-09 19:24:16
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
-- 資料表結構 `member_point`
--

CREATE TABLE `member_point` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `change_point` int(11) NOT NULL,
  `change_type` varchar(255) NOT NULL,
  `left_point` int(6) NOT NULL,
  `change_reason` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `member_point`
--

INSERT INTO `member_point` (`sid`, `member_sid`, `change_point`, `change_type`, `left_point`, `change_reason`, `create_at`) VALUES
(2, 5, 50, 'GET', 50, '新進會員贈點', '2021-11-02 23:27:23'),
(17, 5, 20, 'USE', 30, '會員使用點數', '2021-11-09 11:59:46'),
(18, 7, 50, 'GET', 50, '新進會員贈點', '2021-11-09 13:39:25'),
(19, 7, 30, 'USE', 20, '會員使用點數', '2021-11-09 14:17:05'),
(20, 7, 10, 'USE', 10, '會員使用點數', '2021-11-09 14:17:05'),
(21, 8, 50, 'GET', 50, '新進會員贈點', '2021-11-09 17:20:28'),
(22, 8, 20, 'USE', 30, '會員使用點數', '2021-11-09 19:19:56');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `member_point`
--
ALTER TABLE `member_point`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_point`
--
ALTER TABLE `member_point`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
