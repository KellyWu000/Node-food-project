-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 11 月 09 日 21:53
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
-- 資料表結構 `ArtRecipe`
--

CREATE TABLE `ArtRecipe` (
  `sid` int(11) NOT NULL,
  `ar_cate` int(11) NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `ar_pic` varchar(255) NOT NULL,
  `ar_date` date NOT NULL,
  `ar_read` int(11) NOT NULL,
  `ar_rec_ingredient` text NOT NULL,
  `ar_rec_ingredient2` text NOT NULL,
  `ar_rec_quan` text NOT NULL,
  `ar_rec_cookTime` text NOT NULL,
  `ar_rec_process` text NOT NULL,
  `ar_relatingPro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `ArtRecipe`
--

INSERT INTO `ArtRecipe` (`sid`, `ar_cate`, `ar_title`, `ar_pic`, `ar_date`, `ar_read`, `ar_rec_ingredient`, `ar_rec_ingredient2`, `ar_rec_quan`, `ar_rec_cookTime`, `ar_rec_process`, `ar_relatingPro`) VALUES
(1, 3, '蒜蓉嫩蒸雞胸', 'ar_recipe1.jpeg', '2021-06-28', 1, '[\r\n    {\r\n        \"name\": \"去皮雞胸肉\",\r\n        \"quantity\": 400,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n\r\n {\r\n        \"name\": \"蒜頭\",\r\n        \"quantity\": 8,\r\n        \"unit\": \"瓣\",\r\n        \"main\": true\r\n    },\r\n\r\n   {\r\n        \"name\": \"蔥花\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n   \r\n \r\n    {\r\n        \"name\": \"白胡椒\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"小匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"醬油露\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    }\r\n\r\n    \r\n]', '[{\r\n    \"name\": \"麻油\",\r\n    \"quantity\": 1,\r\n    \"unit\": \"小匙\",\r\n    \"main\": true\r\n},\r\n\r\n{\r\n    \"name\": \"鹽\",\r\n    \"quantity\": 0.25,\r\n    \"unit\": \"小匙\",\r\n    \"main\": true\r\n},\r\n\r\n{\r\n    \"name\": \"米酒\",\r\n    \"quantity\": 1,\r\n    \"unit\": \"大匙\",\r\n    \"main\": true\r\n},\r\n{\r\n    \"name\": \"太白粉\",\r\n    \"quantity\": 1.5,\r\n    \"unit\": \"小匙\",\r\n    \"main\": true\r\n}\r\n]', '2', '15', '[\"雞胸肉的兩面逆紋橫向斜切3-4刀，不用切太深。\", \"然後縱切成厚約1.5公分片狀。\", \"雞胸肉放入密封袋(或塑膠袋)中，加入除太白粉的醃料，搖晃讓醃料沾附均勻，儘量排出空氣後封好放入冰箱冷藏30分。(更久也可以)\", \"鍋中加入1大匙油，小火將蒜末炒香。\", \"炒成金黃色的狀態即可盛出。\", \"將平底鍋倒入2碗水，放入蒸盤，大火將水滾開。雞肉從冰箱取出，下太白粉抓勻。\", \"雞肉要平均的舖在盤中，不要交疊，容易造成有些部位不熟的情況，然後灑上爆香後的蒜末。\", \"水滾後放入鍋中，蓋上鍋蓋「大火」蒸7-8分，關火燜5分鐘，開蓋加入蔥花再燜1分鐘，即可享用囉～\", \"清甜的湯汁用來拌飯或麵都好好吃～\" ]', '[\"3\", \"4\", \"11\"]'),
(2, 3, '馬鈴薯燉肉', 'ar_recipe2.jpeg', '2021-10-26', 0, '[\r\n    {\r\n        \"name\": \"牛肋條\",\r\n        \"quantity\": 350,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"洋蔥\",\r\n        \"quantity\": 100,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"馬鈴薯\",\r\n        \"quantity\": 180,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"紅蘿蔔\",\r\n        \"quantity\": 100,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    }\r\n\r\n   \r\n\r\n]', '[\r\n    {\r\n        \"name\": \"日式鰹魚醬油\",\r\n        \"quantity\": 6,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"米酒\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"黑糖\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    }\r\n]', '3', '90', '[\"備好所有食材。牛肋條切4cm長段，洋蔥順紋切粗絲。馬鈴薯削皮切成滾刀狀，用水沖洗3-4次去除澱粉質後，暫泡水防氧化變色。紅蘿蔔削皮，切成略小於馬鈴薯的滾刀狀。\", \"起鍋(不放油)，放上牛肉，(中大火)將表面略煎焦香後，先放進(內鍋)裡。\", \"取出[電鍋]，(內鍋)放入所有食材，並加入0.8米杯清水。\", \"接著，(外鍋)加進2米杯水，蓋上鍋蓋開始燉煮。第一次開關跳起時，將內鍋食材翻拌一次後，(外鍋)再加進2米杯水燉煮，開關再次跳起即完成。\", \"起鍋前，撈除湯面浮油(較清爽不油膩)，一道甜甜醬汁的日式燉牛肉就完成囉♪\"]', '[\"5\", \"6\", \"7\"]'),
(3, 3, '西班牙海鮮麵', 'ar_recipe3.jpeg', '2010-01-20', 1, '[\r\n    {\r\n        \"name\": \"月見雞蛋麵\",\r\n        \"quantity\": 0.3,\r\n        \"unit\": \"包\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"蝦\",\r\n        \"quantity\": 7,\r\n        \"unit\": \"隻\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"蛤蠣\",\r\n        \"quantity\": 6,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"花枝\",\r\n        \"quantity\": 100,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    }\r\n\r\n  \r\n\r\n]', '[\r\n    {\r\n        \"name\": \"番茄\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"顆\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"蒜末\",\r\n        \"quantity\": 20,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"蕃紅花\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"小匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"雞湯\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"罐\",\r\n        \"main\": true\r\n    }\r\n]', '1', '10', '[\"番茄與洋蔥切丁\", \"將橄欖油一小匙，炒香洋蔥、蒜\", \"加入番茄、蕃紅花、雞湯，煮開後放入海鮮，再次煮開撈起熄火，酌加鹽與黑胡椒\", \"將麵投入一大鍋滾水中，煮約五分鐘後撈起，徹底瀝乾\", \"將海鮮排放在麵上，放入煮好的湯料中即可食用\"]', '[\"2\", \"6\", \"10\"]'),
(4, 3, '摩洛哥小米沙拉', 'ar_recipe4.jpeg', '2021-10-28', 1, '\r\n[\r\n    {\r\n        \"name\": \"小黃瓜\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"根\",\r\n        \"main\": true\r\n    },    {\r\n        \"name\": \"紅甜椒\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"顆\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"黃甜椒\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"顆\",\r\n        \"main\": true\r\n    },\r\n\r\n        {\r\n        \"name\": \"櫻桃番茄\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"紫洋蔥\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"北非小米\",\r\n        \"quantity\": 150,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    }\r\n\r\n]', '[\r\n    {\r\n        \"name\": \"檸檬汁\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"高達（Gouda）起司\",\r\n        \"quantity\": 100,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"羅勒葉\",\r\n        \"quantity\": 5,\r\n        \"unit\": \"片\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"鹽、胡椒\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"小匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"冷壓初榨橄欖油\",\r\n        \"quantity\": 600,\r\n        \"unit\": \"ml\",\r\n        \"main\": true\r\n    }\r\n]', '2', '30', '[\"小黃瓜、紅甜椒、黃甜椒切大塊後放入小碗中，以小刀片按3次瞬轉按扭打成大顆粒。\", \"紫洋蔥放入中碗，以刨片刀盤切成絲狀；櫻桃番茄切對半備用。\", \"小黃瓜、紅甜椒、黃甜椒、紫洋蔥和30 ML橄欖油、鹽、胡椒拌勻，放入預熱200℃的烤箱中烤約20分鐘，待蔬菜呈微焦黃時取出。\", \"北非小米以200ml滾燙開水拌勻，加入30 ML的橄欖油，加蓋燜5分鐘後攪拌至小米呈鬆軟狀，再蓋上蓋子等待冷卻備用。\", \"冷卻好的北非小米加入檸檬汁調味，續加入步驟3拌勻，再加入高達起司和羅勒葉即可。\"]', '[\"7\", \"8\", \"9\"]'),
(5, 3, '青醬紙包魚', 'ar_recipe5.jpeg', '2011-08-05', 1, '[\r\n    {\r\n        \"name\": \"西洋芹\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"根\",\r\n        \"main\": true\r\n    },    \r\n\r\n    {\r\n        \"name\": \"洋蔥\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"小番茄\",\r\n        \"quantity\": 4,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    }\r\n\r\n]\r\n', '[\r\n    {\r\n        \"name\": \"青醬\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"香魚\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"條\",\r\n        \"main\": true\r\n    }\r\n]', '2', '30', '[\r\n    \"先將魚清洗乾淨後灑上少許海鹽與胡椒醃漬片刻。\", \r\n\"將所有食材混勻，都均勻的沾到青醬。\", \r\n\"取一張錫箔紙，紙上放上蔬菜，再放上魚。\", \r\n\"不須包起，直接放入烤箱以200C烤約10-15分鐘至魚表面金黃即可。\"\r\n\r\n\r\n]', '[\"10\", \"14\", \"24\"]'),
(6, 3, '迷迭香烤雞腿佐馬鈴薯', 'ar_recipe6.jpeg', '2020-07-08', 1, '[\r\n    {\r\n        \"name\": \"洋蔥\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"馬鈴薯\",\r\n        \"quantity\": 4,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"雞腿肉\",\r\n        \"quantity\": 5,\r\n        \"unit\": \"片\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"義式香料粉\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"小匙\",\r\n        \"main\": true\r\n    }\r\n\r\n]', '[\r\n    {\r\n        \"name\": \"橄欖油\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"鹽\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"茶匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"黑胡椒\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"茶匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"橄欖油\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    }\r\n]', '5', '75', '[\r\n    \"烤箱（烤箱架在低位）加熱到425°F（218.3°C\", \r\n\"洋蔥切薄片、馬鈴薯切厚片、雞肉用香料粉、鹽與胡椒粉醃製按摩。\", \r\n\"烤盤依序鋪上洋蔥、馬鈴薯與雞肉。淋上油，並在馬鈴薯上撒上香料粉、鹽和胡椒粉。\", \r\n\"烤製1小時，雞肉裡面不是粉紅色、馬鈴薯可用筷子輕鬆刺穿即可。\"\r\n\r\n\r\n]', '[\"15\", \"16\", \"19\"]'),
(7, 3, '鮭魚蔬菜沙拉', 'ar_recipe7.jpeg', '2020-04-20', 1, '[\r\n    {\r\n        \"name\": \"花椰菜\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"顆\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"蘆筍\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"束\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"鮭魚片\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"片\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"Dijon芥末\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"茶匙\",\r\n        \"main\": true\r\n    }\r\n\r\n  \r\n]', '[\r\n    {\r\n        \"name\": \"鮮榨檸檬汁\",\r\n        \"quantity\": 3,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"橄欖油\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"鹽\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"茶匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"黑胡椒\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"茶匙\",\r\n        \"main\": true\r\n    }\r\n]', '2', '30', '[\r\n    \"花椰菜與蘆筍切成小塊，蒸熟備用。\", \r\n    \"煎炸鮭魚片5-7分鐘，翻面再煎1-2分鐘，備用。\", \r\n    \"醬汁：把芥末和檸檬汁加在一起，並分次倒入橄欖油攪拌，直到混和均勻。\", \r\n    \"將蔬菜擺盤並淋上醬汁，保留約三湯匙醬汁，將鮭魚切成薄片後放在蔬菜上，再將剩下的醬汁淋上。\"\r\n]', '[\"13\", \"14\", \"15\"]');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `ArtRecipe`
--
ALTER TABLE `ArtRecipe`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ArtRecipe`
--
ALTER TABLE `ArtRecipe`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
