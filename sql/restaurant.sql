-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-11-10 10:04:14
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- 資料庫: `d-food`
--

-- --------------------------------------------------------

--
-- 資料表結構 `restaurant`
--

CREATE TABLE `restaurant` (
  `res_id` int(11) NOT NULL,
  `res_name` varchar(255) NOT NULL,
  `res_introduce` varchar(255) NOT NULL,
  `res_tel` varchar(255) NOT NULL,
  `res_starttime` varchar(255) NOT NULL,
  `res_endtime` varchar(255) NOT NULL,
  `res_address` varchar(255) NOT NULL,
  `res_aveprice` int(11) NOT NULL,
  `res_rate` float NOT NULL,
  `res_lat` double NOT NULL,
  `res_lng` double NOT NULL,
  `res_img` varchar(255) DEFAULT NULL,
  `res_introduce_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `restaurant`
--

INSERT INTO `restaurant` (`res_id`, `res_name`, `res_introduce`, `res_tel`, `res_starttime`, `res_endtime`, `res_address`, `res_aveprice`, `res_rate`, `res_lat`, `res_lng`, `res_img`, `res_introduce_img`) VALUES
(1, '生活倉廚', ' 生活倉廚總是站在每位食用者的立場來料理每一個食材，現點現做，手工修清所有嚴選原肉品。', '02-2732-8101', '10:30', '19:30', '臺北市大安區大安路一段51巷17號1樓', 300, 4.9, 25.043384586925278, 121.54695832619886, 'rp001.jpg', 'res.png'),
(2, 'BodyFit ', '嚴選上等食材，全肉品低溫殺菌烹調，少油鹽低熱量，挑選當季在地新鮮蔬菜。新鮮又健康。', '02-2737-1212', '11:00', '22:00', '台北市信義區嘉興街129號1F', 200, 4.8, 25.028964640038968, 121.5575422820192, 'rp007.jpeg', 'rp007.jpeg'),
(3, '舒食季', '嚴選上等食材，全肉品低溫殺菌烹調，少油鹽低熱量，挑選當季在地新鮮蔬菜。新鮮又健康。', '0913103633', '11:30', '19:30', '台北市大安區泰順街60巷29號', 170, 4.7, 25.022767276952187, 121.52937966852673, 'rp015.jpeg', 'rp015.jpeg'),
(4, '小飯桌', '感受創新主打獨特健康料理，頂級食材選用，餐盒的口味獨一無二。', '02-2571-2779', '10:30', '22:00', '台北市大安區復興南路一段152號', 150, 4.7, 25.042451327208024, 121.54353133969119, 'rp019.jpg', 'rp019.jpg'),
(5, '小食光', '	\r\n主打少油鹽低熱量、每日新鮮製作，挑選當季在地新鮮蔬菜。', '0911-218-310', '11:30', '20:00', '台北市大安區泰順街60巷29號E室', 150, 4.7, 25.022757845941854, 121.52936955503446, 'rp025.jpeg', 'rp025.jpeg'),
(6, '常常好食 ', '嚴選上等食材，全肉品低溫殺菌烹調，用心的料理，做出美味又健康的食物。', '02-2358-2356', '11:00', '20:00', '台北市大安區信義路二段130號', 240, 4.8, 25.03391364009711, 121.52815291085528, 'rp031.jpeg', 'rp031.jpeg'),
(7, 'Fresh Me ', '感受創新主打獨特健康料理，頂級食材選用，餐盒的口味獨一無二。', '02-2755-2068', '11:00', '23:00', '台北市大安區延吉街272號', 165, 4.3, 25.033883082054754, 121.55682595318332, 'rp037.jpeg', 'rp037.jpeg'),
(8, '菜之日', '以好油、少鹽、多風味的烹調手法，用最天然的當季食材，用少量的香料和食材本身的味道。', '02-2542-2179', '11:45', '13:00', '台北市中山區南京東路二段115巷3弄1號', 215, 4.8, 25.053530491260343, 121.53376879736332, 'rp043.jpeg', 'rp043.jpeg'),
(9, 'Miss Green', '嚴選良好的在地小農食材再透過最天然的烹調手法，去呈現出食物最原始的風味。', '02-2703-9026', '11:00', '21:00', '台北市大安區敦化南路二段63巷28號', 320, 4.3, 25.031031965163592, 121.55055599736276, 'rp049.jpeg', 'rp049.jpeg'),
(10, '禾雅餐廚', '用天然且熱量極低的香料提味，善用蒸、煮、悶等手法，用心的料理，做出美味又健康的食物。', '02-2738-0208', '10:30', '20:00', '台北市大安區安和路二段171巷19號1樓', 160, 4.8, 25.02835519037877, 121.55067952619858, 'rp055.jpeg', 'rp055.jpeg'),
(11, '防空洞', '嚴選上等食材，全肉品低溫殺菌烹調，用心的料理，做出美味又健康的食物。', '02-2731-0882', '11:00', '20:00', '台北市大安區延吉街137巷26號', 250, 4.8, 25.042151611745677, 121.55531386852718, 'rp061.jpeg', 'rp061.jpeg'),
(12, 'Uncle Joe ', '嚴選良好的在地小農食材再透過最天然的烹調手法，去呈現出食物最原始的風味。', '02-2704-0178', '11:00', '20:30', '台北市大安區仁愛路四段48巷30-1號', 190, 4.8, 25.03637073299378, 121.54697963969103, 'rp067.jpeg', 'rp067.jpeg'),
(13, 'Flow & Row Café', '嚴選上等食材，全肉品低溫殺菌烹調，用心的料理，做出美味又健康的食物。', '02-2775-5220', '11:00', '19:00', '台北市大安區仁愛路四段345巷15弄3號', 170, 4.8, 25.039220656166105, 121.55419901085524, 'rp073.jpeg', 'rp073.jpeg'),
(14, '肌肉補給 ', '以好油、少鹽、多風味的烹調手法，用最天然的當季食材，用少量的香料和食材本身的味道。', '02-8789-0083', '6:30', '17:00', '110台北市信義區吳興街281巷70號', 130, 4, 25.02663575914316, 121.56578723598852, 'rp079.jpeg', 'rp079.jpeg'),
(15, '佬外好食', '嚴選上等食材，全肉品低溫殺菌烹調，用心的料理，做出美味又健康的食物。', '02-8785-0600', '11:00', '21:20', '台北市大安區師大路105巷8號', 290, 4.8, 25.022598455340994, 121.52877729736258, 'rp085.jpeg', 'rp085.jpeg'),
(16, '營養工事', '食材有一半以上是自種自產的有機蔬菜，口味上也訴求天然清淡，不會有過多調味，而且少油低負擔。', '02-8780-8111', '11:00', '22:00', '台北市信義區松壽路12號', 130, 4.6, 25.036150082193203, 121.56618104545862, 'rp091.jpeg', 'rp091.jpeg'),
(17, 'Musée Kitchen', '嚴選上等食材，全肉品低溫殺菌烹調，用心的料理，做出美味又健康的食物。', '02-2345-0100', '12:00', '21:00', '台北市信義區莊敬路178巷15號', 180, 4.7, 25.03126358599944, 121.56056553969103, 'rp097.jpeg', 'rp102.jpg'),
(18, ' 給力盒子 ', '致力於推廣健康的飲食文化，以高纖、低脂、低 GI 和高蛋白的準則下，推出一個個健康餐點。', '02-2709-2222', '10:30', '19:50', '台北市大安區和平東路二段311巷6號', 160, 4.9, 25.025137643678878, 121.54496708201916, 'rp103.jpeg', 'rp103.jpeg'),
(19, '少點鹽', '感受創新主打獨特健康料理，頂級食材選用，強調低卡、低油、營養均衡又新鮮的菜色。', '02-2756-8006', '10:00', '20:00', '台北市信義區永吉路278巷30號', 120, 4.8, 25.044731726014938, 121.57404498201952, 'rp109.jpeg', 'rp109.jpeg'),
(20, 'Johnny Bro ', '致力於推廣健康的飲食文化，以高纖、低脂、低 GI 和高蛋白的準則下，推出一個個健康餐點。', '02-8786-0859', '11:00', '20:00', '台北市信義區忠孝東路五段448號', 140, 4.8, 25.04094543261919, 121.5762074550348, 'rp115.jpeg', 'rp115.jpeg'),
(21, 'D卡食驗室-輕食', '致力於推廣健康的飲食文化，以高纖、低脂、低 GI 和高蛋白的準則下，推出一個個健康餐點。', '0976-019-967', '11:00', '19:30', '台北市信義區松山路531號', 130, 4.7, 25.038303740291152, 121.57825929736308, 'rp121.jpeg', 'rp121.jpeg'),
(22, 'PeetaTake', '嚴選良好的在地小農食材再透過最天然的烹調手法，去呈現出食物最原始的風味。', '02-2749-5929', '11:00', '19:30', '台北市信義區永吉路64號', 170, 4.9, 25.04563838437555, 121.56979991270677, 'rp127.jpeg', 'rp127.jpeg'),
(23, '春日庭', '致力於推廣健康的飲食文化，以高纖、低脂、低 GI 和高蛋白的準則下，推出一個個健康餐點。', '02-2704-0571', '10:30', '21:00', '台北市大安區光復南路620-1號', 120, 4.7, 25.032159821366676, 121.55730705688582, 'rp133.jpeg', 'rp133.jpeg'),
(24, '舒飯健康盒', '好油、少鹽、多風味的烹調手法，用最天然的當季食材新鮮又健康。', '02-2775-5755', '11:00', '21:00', '台北市大安區忠孝東路四段289號B1', 175, 4.8, 25.041895390311186, 121.5546818108553, 'rp139.jpeg', 'rp141.jpeg'),
(25, 'Healthy Box ', '嚴選良好的在地小農食材再透過最天然的烹調手法，去呈現出食物最原始的風味', '02-2757-3345', '10:15', '21:30', '台北市大安區通安街84號', 160, 4.7, 25.030383602385715, 121.55306736869115, 'rp145.jpeg', 'rp145.jpeg'),
(26, '瀞天使雲端廚房', '	\r\n主打少油鹽低熱量、每日新鮮製作，挑選當季在地新鮮蔬菜。', '02-2346-8977', '10:30', '22:00', '台北市信義區忠孝東路五段524巷1弄2號', 200, 4.8, 25.04120862839065, 121.57962191270657, 'rp151.jpeg', 'rp151.jpeg'),
(27, 'The Good Rice Bowls ', '嚴選上等食材，全肉品低溫殺菌烹調，新鮮又健康。', '02-2745-6637', '11:00', '20:00', '台北市信義區永吉路278巷30號', 200, 4.8, 25.044634525130387, 121.57406643985576, 'rp157.jpeg', 'rp157.jpeg'),
(28, 'GREENBIRD', '嚴選良好的在地小農食材再透過最天然的烹調手法，去呈現出食物最原始的風味，而且像是豬肉也都是選用台灣溫體豬肉。', '0-2733-5685', '11:00', '20:00', '台北市信義區永吉路278巷30號', 140, 4.8, 25.04467340549342, 121.5741093551993, 'rp163.jpeg', 'rp163.jpeg');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`res_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;
