-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 11 月 09 日 16:21
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
-- 資料庫: `D_Food`
--

-- --------------------------------------------------------

--
-- 資料表結構 `product_food`
--

CREATE TABLE `product_food` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `introduction` text NOT NULL,
  `cate_id` int(11) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `content_cal` int(11) NOT NULL,
  `content_carbon` int(11) NOT NULL,
  `content_fat` int(11) NOT NULL,
  `content_protein` int(11) NOT NULL,
  `detail_img` varchar(255) NOT NULL,
  `detail_title` text NOT NULL,
  `detail_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_food`
--

INSERT INTO `product_food` (`sid`, `name`, `product_id`, `price`, `unit`, `introduction`, `cate_id`, `product_img`, `content_cal`, `content_carbon`, `content_fat`, `content_protein`, `detail_img`, `detail_title`, `detail_content`) VALUES
(1, '冰烤地瓜', 'PM001', 79, '250g', '口感綿密、濃郁香甜，富含高澱粉質、纖維素及各種營養成分。 可連皮一起吃，冰溫熱皆可食用', 3, 'PM001.jpg', 155, 38, 0, 1, 'PM001-1.jpg', '口感綿密、濃郁香甜，富含高澱粉質、纖維素及各種營養成分。 可連皮一起吃，冰溫熱皆可食用。', '自然解凍5-10分鐘即可食用，或使用微波爐、電鍋直接加熱3分鐘。'),
(2, '鮮凍綠花椰菜', 'PM002', 99, '500g', '國家認可的有機標章的農產品，在耕作的過程中，依循大自然法則，堅持不使用化肥和農藥，溫室蔬果栽培', 3, 'PM002.jpg', 21, 5, 0, 1, 'PM002-1.jpg', '急速冷凍，將蔬菜的鮮甜與營養鎖住，使風味與口感留在最佳狀態。青花椰菜維生素C含量豐富，所含維生素B1、B2的含量也比其他蔬菜來得高。', '不須解凍直接烹調即可，也可入鍋快炒或以適當溫度油炸即可。'),
(3, '鮮嫩雞腿丁', 'PM003', 75, '200g', '單純腿肉丁採用新鮮雞肉及嚴謹加工程序。相較於雞胸，雞腿擁有較多油質', 3, 'PM003.jpg', 419, 0, 34, 29, 'PM003-1.jpg', '未經調味的單純雞腿丁，濕潤鮮甜，可多變化料理。 經過加工分切及專業急速冷凍處理，使肉品品質及營養鎖住，料理時不需再花時間切丁，直接退冰料理即可，省時方便。', '將已解凍的雞腿肉丁放入煎鍋、烤箱或氣炸鍋，加熱至熟透即可食用。'),
(4, '原味雞腿排', 'PM004', 70, '200g', '嚴選無動物用藥殘留原塊雞腿肉，急速冷凍保有營養及水分，新鮮柔嫩，可用於多樣料理', 3, 'PM004.jpg', 419, 0, 34, 29, 'PM004-1.jpg', '肉品經過加工分切及專業急速冷凍處理，使肉品品質及營養鎖住，直接退冰料理即可，省時方便。', '將已解凍的雞腿排丁放入煎鍋、烤箱或氣炸鍋，加熱至熟透即可食用。'),
(5, '特選草飼沙朗牛', 'PM005', 80, '100g', '肉質細嫩多汁不油膩，含有些許細筋，口感較為Q彈紮實有嚼勁', 3, 'PM005.jpg', 250, 0, 15, 26, 'PM005-1.jpg', '特選草飼沙朗牛，採用5年內的放牧草飼牛，原塊裁切而成，適合做烤牛肉或香煎小牛。', '拆封後先用餐巾紙將血水壓乾，直接加熱或調味後加熱，可選擇煎或烤烹調，建議熟度三到五分熟。'),
(6, '進口馬鈴薯', 'PM006', 90, '450g', '馬鈴薯含豐富的維生素C與鉀，膳食纖維較細嫩，不會刺激胃腸的黏膜，並產生飽腹感', 3, 'PM006.jpg', 77, 17, 0, 3, 'PM006-1.jpg', '帶皮的馬鈴薯含多種維生素和類黃酮、檞皮素等植化素，有助心臟健康、降血壓、提升免疫力、防癌。', ''),
(7, '進口洋蔥', 'PM007', 100, '500g', '洋蔥強烈的氣味，營養豐富', 3, 'PM007.jpg', 39, 9, 0, 1, 'PM007-1.jpg', '湯裡添加洋蔥會有自然甜味，便可減少使用排骨、調味粉。只要吃的適量，洋蔥還有助於預防骨質的流失。', '洋蔥可以煮湯、製作沙拉、小炒、三明治、製作醬料或直接用作配菜。'),
(8, '鮮凍櫛瓜', 'PM008', 59, '200g', '櫛瓜不只高纖低熱量，其實還富含許多營養價值，包含維生素B、C以及多種身體所需礦物質', 3, 'PM008.jpg', 13, 2, 0, 2, 'PM008-1.jpg', '不須解凍直接烹調即可，也可入鍋快炒或以適當溫度油炸即可。', ''),
(9, '白花椰菜米', 'PM009', 95, '125g', '減醣明星輕鬆料理，零澱粉無麩質', 3, 'PM009.jpg', 20, 4, 0, 1, 'PM009-1.jpg', '白花椰菜米取代白米飯，低熱量，方便減醣時期取代澱粉。', '降低泰水化合物的攝取，均衡飲食更健康、不用退冰即可輕鬆烹調。'),
(10, '鮮凍香魚', 'PM010', 130, '200g', '', 3, 'PM010.jpg', 55, 0, 8, 19, 'PM010-1.jpg', '香魚中的蛋白質含量豐富，屬於一種優質的蛋白質來源，與人體所需蛋白質結構較爲接近，食用後能迅速吸收，有利於爲身體補充所需蛋白質。', '解凍後抹上少許鹽巴，靜置5-10分鐘，烤箱預熱至200度，將香魚放入烤箱，烤約8～10分鐘即可食用。'),
(11, '法式舒肥雞胸', 'PW001', 80, '80g', '玫瑰鹽原味-法式舒肥雞胸肉', 2, 'PW001.jpg', 203, 0, 5, 39, 'PW001-1.jpg', '以精選喜馬拉雅山玫瑰鹽簡單調味，完整保留食材原始風味，讓人品嘗最純粹的雞肉香甜', '退冰後即可拆封直接食用，或是放入鍋內以大火雙面各煎25秒即可食用。也可用電鍋或烤箱加熱，不建議用微波爐加熱。'),
(12, '香蒜雞胸肉', 'PW002', 40, '80g', '低脂高蛋白美味', 2, 'PW002.jpg', 79, 2, 0, 17, 'PW002-1.jpg', '雞胸肉擁有極高的優質蛋白質以及極低的脂肪，對於不管是要增肌或是減重的族群都是非常好的選擇。香蒜雞胸肉採用的烹調方式是採用法國的烹飪概念：舒肥法（Sous-Vide）', '將雞胸肉以及調味料一起放入真空包裝機並且密封。\n閹漬三小時以上。將真空包裝好以及調味好的雞胸肉放入熱水中以低溫70度烹調。'),
(13, '柴魚健身飯', 'PW003', 30, '150g', '低GI澱粉，內含白米、鷹嘴豆、柴魚片、醬油', 2, 'PW003.jpg', 317, 66, 2, 9, 'PW003-1.jpg', '鷹嘴豆是素食著相當優質的蛋白質、碳水化合物來源。鷹嘴豆是富含有蛋白質、不飽和脂肪酸、纖維素、鈣、鋅、鉀、維他命B 群等有益人體營養素的健康豆類食物。其中人體必需的八種胺基酸全部具備，而且含量比燕麥還要高出兩倍以上;魚片配上醬油更是美味。', '317大卡、鷹嘴豆、低GI、柴魚片及醬油增添風味'),
(14, '低卡南瓜濃湯', 'PW004', 70, '300g', '減脂增肌路上必備良品，享受而享瘦', 2, 'PW004.jpg', 97, 20, 1, 3, 'PW004-1.jpg', '選用台灣在地南瓜，所熬煮出的誘人色彩，無添加味精以及人工甘味劑，完全釋放出絲滑香甜的南瓜香氣。', '採用雞骨與新鮮蔬果小火慢煮熬製而成的雞高湯，來添增南瓜湯風味的層次，並非使用濃縮雞湯塊等加工產品。'),
(15, '雞胸肉沙拉', 'PW005', 70, '90g', '含有優質蛋白質卻有極低脂肪的雞胸肉是健身族群最經典的選擇', 2, 'PW005.jpg', 88, 2, 2, 20, 'PW005-1.jpg', '雞胸肉保留了水分，口感柔潤，並且為水煮雞胸肉加了香蒜來提味。', '健身者補充蛋白質必備肉食、低溫烹煮保留原味、雞胸肉鮮美多汁不乾柴、拆封即食，簡單方便。'),
(16, '雞胸肉燉飯', 'PW006', 120, '350g', '陽光、清爽、無負擔的美味', 2, 'PW006.jpg', 431, 62, 10, 24, 'PW006-1.jpg', '番茄與義式香料為基底並搭配鷹嘴豆、雞胸肉的優質蛋白質再加上大量蔬菜，提供高蛋白無負擔的燉飯。', ''),
(17, '堅果地瓜泥', 'PW007', 50, '150g', '健身前/後一小時的能量補給品。', 2, 'PW007.jpg', 190, 40, 2, 2, 'PW007-1.jpg', '地瓜泥給予快速吸收的糖類營養，是健身前效率方便的最佳選擇。', '混合進地瓜泥的綜合堅果除了富含蛋白質以外，還含有豐富的維生素B群、維生素E與礦物質，都是促進生理機能代謝、提升抗氧化能力的最重要元素。'),
(18, '韓式泡菜豬燉飯', 'PT001', 120, '350g', '獨家低鈉低糖韓式風味', 1, 'PT001.jpg', 403, 54, 11, 22, 'PT001-1.jpg', '以新鮮豬後腿肉加上黃豆芽、海帶芽、青花菜，搭配獨家低糖、低鈉的韓式調味，美味無負擔的享用韓式風味料理，混和多種蔬菜達到低GI的效果。', '每份402大卡\n蛋白質21.9克\n140公克大量蔬菜全部放在同一包，營養不縮水'),
(19, '田園蔬菜燉飯', 'PT002', 35, '160g', '田園風味的低GI碳水化合物', 1, 'PT002.jpg', 276, 56, 3, 6, 'PT002-1.jpg', '田園蔬菜燉飯，裡面包含了白米、高麗菜、洋蔥、番茄，並且用健康的醬油、沙拉油、鹽做些許調味，以一比一的蔬菜跟白飯組合，能夠給予易飽足的低GI料理、充足的碳水化合物讓您在健身時能量滿滿！一比一的蔬菜跟白飯組合，能夠給予易飽足的低GI料理。', '適合女性體型、或是少量多餐、抗性澱粉熱量不超標、減脂聰明選擇'),
(20, '花雕醉雞', 'PT003', 50, '80g', '酒香四溢、軟嫩多汁、去皮雞腿肉做好熱量控制', 1, 'PT003.jpg', 126, 6, 2, 15, 'PT003-1.jpg', '嚴選新鮮雞腿肉以花雕酒醃製12小時，並且使用低溫烹調調理製作，雞肉內保留滿滿的雞汁，一口咬下口中充滿花雕酒的香氣與濕潤雞腿口感。', ''),
(21, '慢熬雞丁粥', 'PT004', 225, '2-3人份', '雞骨慢熬16小時精華濃雞湯，加上去骨、去油的原味雞腿丁與CNS一等熟米飯', 1, 'PT004.jpg', 787, 62, 38, 47, 'PT004-1.jpg', '以慢熬16小時雞骨湯為基底，搭配去骨去油的原味雞腿丁，與一等熟米飯，不添加防腐劑、化學調味劑，呈現食材原有的簡單好味道。', ''),
(22, '匈牙利牛肉鍋', 'PT005', 155, '450g', '富含高量蛋白質、肌酸以及B群的豪爽牛肉，一次滿足打造健康肌肉的營養需求', 1, 'PT005.jpg', 239, 15, 10, 22, 'PT005-1.jpg', '搭配大量蔬菜，給你滿滿的膳食纖維，同時加上根莖類的原型澱粉，將碳水控制在20克，在一包溫暖又飽足的鍋裡，全面塞滿一餐所需的充足養分。', ''),
(23, '叻沙蔬菜雞肉鍋', 'PT006', 145, '450g', '獨門調製的南洋風味，帶點微辣的低鈉低卡叻沙湯', 1, 'PT006.jpg', 338, 17, 19, 30, 'PT006-1.jpg', '柔嫩雞胸肉的蛋白質，搭配上蔬菜自然的鮮甜，豐富味蕾的層次感，給你充足飽滿的蛋白質與膳食纖維。', '除去澱粉類食材，以低碳水為導向重新設計整份餐點，用最清爽無負擔的美味，讓你吃飽飽又無負擔。'),
(24, '西西里燉菜', 'PT007', 60, '200g', '燉煮充滿番茄及洋蔥甜味', 1, 'PT007.jpg', 49, 9, 0, 2, 'PT007-1.jpg', ' 番茄在烹煮後會釋出更多抗氧化物茄紅素，西芹味甘含有大量纖維及豐富蛋白質、胡蘿蔔素，鴻喜菇含有多醣體對日常飲食保健。', '對於免疫力的維持，具有價值。再加上洋蔥一起燉煮散發出酸甘甜的南歐美味!'),
(25, '韓式豬里肌', 'PT008', 60, '135g', '微辣口感韓式辣椒醬搭配低脂肪豬里肌', 1, 'PT008.jpg', 141, 10, 5, 15, 'PT008-1.jpg', '韓式辣椒醬內有健康的紅麴，可以幫助降低膽固醇、降血壓。低脂豬里肌搭上這微辣的口感，再加上大白菜及洋蔥，一吃就停不下來!', '141大卡大份量、低脂肪豬里肌、微辣口感韓式辣椒醬、大白菜增添膳食纖維。'),
(26, '日式胡麻菜', 'PT009', 69, '190g', '日式口感蔬菜+大量膳食纖維', 1, 'PT009.jpg', 55, 0, 8, 19, 'PM010-1.jpg', '香魚中的蛋白質含量豐富，屬於一種優質的蛋白質來源，與人體所需蛋白質結構較爲接近，食用後能迅速吸收，有利於爲身體補充所需蛋白質。', '解凍後抹上少許鹽巴，靜置5-10分鐘，烤箱預熱至200度，將香魚放入烤箱，烤約8～10分鐘即可食用。'),
(27, '照燒雞胸肉', 'PW008', 80, '160g', '大包裝的醍醐味健身聖品', 2, 'PW008.jpg', 220, 16, 2, 28, 'PW008-1.jpg', '去皮雞胸肉、味醂、醬油、水、柴魚、糖', '獨特舒肥法製作，減脂增肌路上必備良品'),
(28, '香料鷹嘴豆', 'PW009', 50, '150g', '低碳、低GI主食', 2, 'PW009.jpg', 214, 36, 3, 10, 'PW009-1.jpg', '使用印度經典的Masala綜合香料、洋蔥與番茄為基底，加上蛋白質含量高的鷹嘴豆，一起燉煮，香味迷人口感綿密，鷹嘴豆內的澱粉大部分為抗性澱粉，較不容易形成體脂肪，美味又無負擔的低碳低GI主食。', ''),
(29, '薑黃豬里肌', 'PW010', 65, '100g', '印尼風味的軟嫩豬里肌', 2, 'PW010.jpg', 102, 1, 3, 16, 'PW010-1.jpg', '運用舒肥法(sous-vide)製作的薑黃豬里肌，薑黃等佐料深入每一寸里肌肉，保有營養濕潤的口感。', '薑黃據文獻是具有抗氧化的能力，因此非常適合健身族群食用。'),
(30, '義式雞腿肉', 'PW011', 60, '80g', '去皮雞腿肉，美味不油膩', 2, 'PW011.jpg', 112, 0, 6, 15, 'PW011-1.jpg', '美味且低脂的去皮雞腿肉，搭配義大利風情的佐料完美呈現優質蛋白質。', '義式雞腿肉除了用可以保留營養美味的舒肥法，讓雞肉充滿濃厚的義式美味，更貼心的把雞腿脂肪含量最多的皮去掉；不用擔心熱量太高，又可以享受美味營養！');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product_food`
--
ALTER TABLE `product_food`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_food`
--
ALTER TABLE `product_food`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
