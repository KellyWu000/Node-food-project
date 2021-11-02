-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 10 月 28 日 15:43
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
-- 資料庫: `D-food`
--

-- --------------------------------------------------------

--
-- 資料表結構 `ArtExercise`
--

CREATE TABLE `ArtExercise` (
  `sid` int(11) NOT NULL,
  `ar_cate` int(11) NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `ar_pic` varchar(255) NOT NULL,
  `ar_date` date NOT NULL,
  `ar_read` int(11) NOT NULL,
  `ar_author` varchar(255) NOT NULL,
  `ar_preface` text NOT NULL,
  `ar_index_title1` text NOT NULL,
  `ar_index1` text NOT NULL,
  `ar_index_pic1` varchar(255) NOT NULL,
  `ar_index_title2` text NOT NULL,
  `ar_index2` text NOT NULL,
  `ar_index_pic2` varchar(255) NOT NULL,
  `ar_index_title3` text NOT NULL,
  `ar_index3` text NOT NULL,
  `ar_index_pic3` varchar(255) NOT NULL,
  `ar_relatingAr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `ArtExercise`
--

INSERT INTO `ArtExercise` (`sid`, `ar_cate`, `ar_title`, `ar_pic`, `ar_date`, `ar_read`, `ar_author`, `ar_preface`, `ar_index_title1`, `ar_index1`, `ar_index_pic1`, `ar_index_title2`, `ar_index2`, `ar_index_pic2`, `ar_index_title3`, `ar_index3`, `ar_index_pic3`, `ar_relatingAr`) VALUES
(1, 2, '徹底告別失眠！3個睡前「舒眠伸展運動」讓你睡得安穩香甜', 'ar_ex1.jpeg', '2021-06-25', 0, 'Hearst Magazines Taiwan', '想要一夜好眠，睡前別吃太多、注意咖啡因的攝取量，都是關鍵！ 渴望酣然入睡，一覺到天亮，你也可以嘗試在睡覺前做這5招簡單的伸展運動，幫助你釋放壓力、疲勞，更能快快入睡。而且透過這樣的無汗運動，也有助於在睡眠中，保持新陳代謝，燃燒更多熱量。\r\n', '第一招：肩頸拉筋', '1. 雙腳盤腿坐姿，右手放在右腳踝底下，或是大腿和小腿之間。\r\n2. 左手放到右邊的耳朵，維持骨盆與脊柱在良好曲線，感覺脊椎拉長延伸。\r\n3. 讓左邊的耳朵去到左邊的肩膀，眼睛看到下方的膝蓋，讓右邊的耳朵與右邊的肩膀遠離。\r\n4. 最後回復起始位置，並交互換邊動作。', 'ar_ex1_index1.jpeg', '第二招：上犬式', '伸展部位：腹部肌群。\r\n\r\n1. 呈俯臥姿，雙腿與髖同寬向後伸展，腳趾貼地，手肘90度在身側打彎，手指張開、指尖朝前，頸部兩側拉長而肩膀放鬆。\r\n2. 手心往下推，同時一節一節提起頭、胸、腹部，手肘微彎貼近身側，開展前胸，雙腿有力，背後腰部不需太凹。\r\n3. 回復至起始位置，重複動作。', 'ar_ex1_index2.jpeg', '第三招：腿部肌群拉筋', '伸展部位：腿後側肌群。\r\n\r\n1. 先右腳屈曲，左腳伸直。再把手捉著腳尖，腳趾指向身體方向，維持骨盆與脊柱在良好曲線。\r\n2. 左腳完全伸直，不要讓腳屈曲，可用手將腳按下地下。\r\n3. 穩定好體線，上身自然前傾。回復至起始位置，交互換邊動作。', 'ar_ex1_index3.jpeg', 1),
(2, 2, '快速燃脂減重，居家有氧運動推薦:跳耀篇！', 'ar_ex2.jpeg', '2021-09-29', 0, 'Hearst Magazines Taiwan', '有氧運動能快速提升心率，像是游泳、跑步、跳舞，甚至爬樓梯都算是有氧運動。平時適度的有氧運動除了能夠燃燒脂肪，還可以幫助保持良好的心肺狀態，十分有益身體健康。保持身材七分靠吃、三分靠動，沒有運動的時候也可以隨時計算吃進去的熱量，不能吃太多也不能吃太少，才可以瘦得更健康、更有效率！\r\n本篇介紹3個在家就能完成的簡單有氧運動動作，每個動作做30-40秒，組間休息10-20秒，總共做個4-5組。相信做完後一定會大汗淋漓、超爽快！', '招式#1：開合跳', '「開合跳」動作看似簡單，其實別有一番學問！在雙腳回到地面時一定要記得保持膝蓋微彎來減緩衝擊力，才能避免膝蓋受傷。正確的「開合跳」不僅能燃脂瘦身，還可以降低骨質疏鬆的可能和維持心肺功能！\r\n\r\n＊一組約做 20～30 下，建議做 2～3 組，組間可休息1分鐘。', 'ar_ex2_index1.jpeg', '招式#2：波比跳', '波比跳是一種高強度的有氧運動，可以同時鍛練到幾乎全身的肌肉，而且做這個動作時不僅能提高心率，也可以訓練肌肉的爆發力與敏捷度。持續深蹲、伏地挺身、下蹲、跳耀這樣的循環，動作簡單又不需要器材，徒手就能大爆汗了！\r\n\r\n要注意全程需保持核心收緊出力，雙腳著地時也要避免腳尖著地哦！\r\n\r\n＊一組約做 10～20 下，建議做 2～3 組，組間可休息1分鐘。', 'ar_ex2_index2.jpeg', '招式#3：深蹲跳', '深蹲跳可以訓練到更多下半身的肌群跟爆發力，它可以提升心律以及消耗大量熱量。要將臀部重心往後方坐下，膝蓋自然就會跟著彎曲。跳耀落地後所要維持的平衡才是此一動作的要點，初次嘗試者，建議可先在原地練習深蹲即可，待核心更穩定後再加入跳耀之動作。\r\n\r\n＊一組約做 10～20 下，建議做 2～3 組，組間可休息1分鐘。\r\n', 'ar_ex2_index3.jpeg', 1),
(3, 2, '自己的骨盆自己救！每天花30秒就能讓骨盆歸位，一週腰圍減4公分！', 'ar_ex3.jpeg', '2020-05-14', 0, 'Heho健康', '日本名醫福辻銳記，同時也是ASUKA針灸治療院院長，身為日本骨盆治療的先驅的他強調：「矯正骨盆就可以達到改善人體的效果！除了矯正體態，讓骨骼、肌肉、脂肪都能歸位，使身體循環代謝變正常運作，有助健康。」\r\n\r\n調整骨盆不僅改善便秘和月經疼痛，恢復正確的體態後而輕鬆瘦身，連帶精神也變更好。福辻銳記醫師在他的著作中《一週腰瘦10公分的神奇骨盤枕》及電視節目中均指出：「利用兩條浴巾與一條橡皮筋輔助，只要一天躺5分鐘，就可以矯正骨盆，讓內臟重新歸位，身體肌肉也回到原本正確的位置，內臟與肌肉機能同時提升，由內而外年輕10歲。 」同時，因為鍛鍊骨盆開合的肌肉，也有效能達到收緊腰部線條的效果。\r\n\r\n＊準備工具：浴巾、橡皮筋、瑜珈墊（可有可無）', '步驟一：', '首先先找一條較長的浴巾，然後折成一半，然後再折一半，也就是一共4折。折好之後人躺在瑜珈墊或是地板上，將骨盆枕放在腰部下方，雙腳伸直。', 'ar_ex3_index1.jpeg', '步驟二：', '雙腳伸直的同時，要將腳趾頭併在一起，大拇趾趾尖倒向內側，雙腳姿勢呈現八字形。', 'ar_ex3_index2.jpeg', '步驟三：', '然後伸展你的雙臂至頭上，手心向下，且兩手的小指貼緊在一起平躺。\r\n維持此仰躺姿勢躺5分鐘，可以閉眼休息。', 'ar_ex3_index3.jpeg', 1),
(4, 2, '懶人在家徒手健身大作戰，每天十分鐘，還你好身材！', 'ar_ex4.jpeg', '2020-03-10', 0, 'The World Gym Taiwan Blog', '就算花錢加入健身房會員，還是會懶得出門運動，如果你是屬於這種人，就需要徒手健身大法來拯救你的懶癌末期，今天傳授的3大動作，在房間就能做，而且只需要簡單的道具喔！\r\n\r\n其實，健身運動最重要的就是持之以恆，最好盡可能地在一個星期內運動5 ~ 6次。每一次的訓練，都能有效地用到全身主要肌群。若是不想出門，在家健身也可以，只要你能遵照以下的健身動作指示，並循序漸進地從一組10 ~ 30下，慢慢增加到3 ~ 5組。有規律的運動，更能打擊內臟脂肪，維持五臟六腑，例如：心臟、肝臟的健康，讓你身體勇、身材更好。', '第一式 椅子撐體', '1. 先坐在一張堅固的椅子上，腿併攏膝蓋微彎曲，腳放在地上。\r\n2. 將雙手距離約6英吋放在椅子的邊緣，臀部移到椅子前方，保持腹肌伸展並讓頭在椅子中央的位置。\r\n3. 手肘開始彎曲到低於身體位置，並成一直線。\r\n4. 當你的手臂與地板平行後，把身體向上推回去。\r\n\r\n*主要訓練部位 : 三頭肌、核心肌群。', 'ar_ex4_index1.jpeg', '第二式 伏地挺身', '1. 首先將兩手打直，手掌貼地，下半身以腳尖支撐，做好預備姿勢。此時的雙手寬度大約與肩同寬，肩膀放鬆，背部挺直，屁股下壓(類似屁股夾緊的動作)，保持身體軀幹呈一條斜斜向上的直線。\r\n2. 開始做伏地挺身的時候，保持剛剛準備好的身體軀幹直線，手肘彎曲，上半身直直往下，直到手肘比背部還要高的位置，再回到原點。\r\n3. 過程中屁股不可以往上翹(這是大多數人有可能忽略的要點)，要想像身體是一塊平平的板子，全程都必須維持這塊板子的水平。\r\n\r\n*主要訓練部位 : 胸肌、肩膀、三頭肌、背部、腹肌。', 'https://www.youtube.com/embed/gF0RzzO_TCU', '第三式 深蹲', '1. 雙腳與肩同寬，雙手平握於胸口高度。\r\n2. 彎曲膝蓋、臀部，保持胸部抬起，脊柱保持直立。\r\n3. 盡可能讓大腿與地面平衡，膝蓋不可超出腳趾。\r\n4. 保持核心肌群收縮，重心在腳後跟上。\r\n5. 蹲下時彷彿坐在椅子上，保持重心在腳後跟。\r\n6. 維持姿勢一分鐘。\r\n\r\n*主要訓練部位 : 背部、腿筋、大腿。', 'https://www.youtube.com/embed/EzDxwv3wASY', 1),
(5, 3, '「棒式」姿勢正確15秒瘦全身！3招基礎棒式全身熱起來', 'ar_ex5.jpeg', '2021-09-06', 1, 'Women\'s Health', '棒式是有效鍛鍊生深層核心與全身的好運動，觸及到的核心包括腹橫肌，多裂肌，橫隔膜和骨盆底肌，這些專門在控制脊椎與骨盆的肌群，只要棒式動作做對，是一個很棒的全身性動作。同時可以訓練到臀大肌、手臂、股四頭等部位。以因為棒式可以訓練到許多群的好處，一但棒式的姿勢正確並定期訓練，可以感受到身體逐漸平衡，幫助改善姿勢不良，駝背問題。', '招式#1：側平板/側棒式', '登山者式過程中會鍛鍊到全身動作的肌肉，可以在短時間內，激發身體的爆發力，也能夠有效燃脂並鍛鍊全身核心肌群。訓練過程肩膀、手臂、核心都要出力保持平衡，上身不晃動才是正確的動作哦。\r\n\r\n＊一組約做 10～20 下，建議做 2～3 組，組間可休息1分鐘。', 'ar_ex5_index1.mp4', '招式#1：毛毛蟲式', '作法： 雙腳分開與臀部同寬站立。慢慢彎曲並用雙手觸摸腳前的地板。保持雙腿盡可能的筆直和緊繃，向前走，不要讓臀部掉落，直到達到高木板位置為止。暫停，然後慢慢將腳移向手。那是一個代表。完成10次。', 'ar_ex5_index2.mp4', '招式#1：棒式＋膝蓋碰地', '作法：肘部疊在肩膀下，置於前臂位置。緩慢並有控制地放低兩個膝蓋，直到它們輕輕地輕拍地面。然後回到您的木板。那是一個代表。在40秒內完成盡可能多的重複，然後休息20秒。', 'ar_ex5_index3.mp4', 1),
(6, 3, '三招入門拳擊有氧，讓你全身動起來！', 'ar_ex6.jpeg', '2020-11-17', 1, 'Hearst Magazines Taiwan', '有氧拳擊可以使拳者在短時間內提高心跳率及鍛鍊肌耐力，達到高效燃脂的效果，也會同步訓練到手臂、背部、胸部肌肉、核心、臀部及腿部，屬於全身性的運動的一種，能鍛鍊全身的協調性，而這個過程也有助於雕塑身體曲線。', '基本拳法1：直拳（Jab cross）', '步驟1—基本站姿：左腳前，右腳後， 膝蓋保持微彎；左手放置於身前約兩個拳頭的距離，右手夾緊腋下放置於右臉頰旁。\r\n\r\n步驟2—右直拳：右手直手出拳並以同軌道快速收回到基本站姿，保持膝蓋微彎，重心穩定。\r\n\r\n步驟3—左直拳：左手出拳同時身體及雙腳微微轉向正面，右腳踮，接著快速收回到基本站姿。', 'https://www.youtube.com/embed/7S-FSrHUN1A', '基本拳法2：勾拳（Hook）', '步驟1—基本站姿：左腳前，右腳後， 膝蓋保持微彎；左手放置於身前約兩個拳頭的距離，右手夾緊腋下放置於右臉頰旁。\r\n\r\n步驟2—左勾拳：左手肘水平抬起（保持彎曲），接著側面出拳，同時左腳順著出拳將腳尖往內踮，再站回基本站姿。\r\n\r\n步驟3—右勾拳：右手肘水平抬起（保持彎曲），接著側面出拳，同時右腳順著出拳將腳尖往內踮，再站回基本站姿。', 'https://www.youtube.com/embed/sPkF-Oj3FBU', '基本拳法3：上勾拳（Upper）', '步驟1—基本站姿：左腳前，右腳後， 膝蓋保持微彎；左手放置於身前約兩個拳頭的距離，右手夾緊腋下放置於右臉頰旁。\r\n\r\n步驟2—：左勾拳：左手向下彎曲（放置於肚臍高度），接著以「由下往上」勾的姿態出拳（擊中沙包的位置勿超過上腰部），左腳尖微微往左測踮，接著回到基本站姿。\r\n\r\n步驟3—：右勾拳：右手向下彎曲（放置於肚臍高度），接著以「由下往上」勾的姿態出拳（擊中沙包的位置勿超過上腰部），右腳尖微微往踮起，接著回到基本站姿。', 'https://www.youtube.com/embed/7GOP39RfHfE', 1),
(7, 3, '高強度居家徒手訓練：棒式變化篇！', 'ar_ex7.jpeg', '2021-09-06', 1, 'Women\'s Health', '當你的棒式可以開始穩定的每次做1-2分鐘時，就不用執意要再往上加了！畢竟我們是為了身形好看，或是你想要追隨虎德的步伐！可以開始嘗試棒式變化式，以下棒式動作每個可以做3-4組，每組間休息60秒，一週訓練約2-3次。', '招式#1：登山者', '作法：從棒式開始，手腕位於肩膀正下方，保持核心收緊骨盆下壓。將右膝抬向大約胸部的位置，然後再回到棒式位置，再重複左邊。左右各一是一個代表。完成10次。', 'ar_ex7_index1.mp4', '招式#2：臀部動態棒式', '作法： 從前臂位置開始。確保您的腹肌緊繃，並且正在擠壓臀部。慢慢將右臀部向右傾斜，直到離地面約一英寸。返回中心，然後在另一側重複。那是一個代表。做15次。', 'ar_ex7_index2.mp4', '招式#3：側棒式＋手穿引', '作法： 雙腿伸直躺在左側，右腿疊放在左側。擺好姿勢，使自己的重量靠在左前臂和左腳的外側邊緣上。肘部應直接位於肩膀下方，上臂應垂直於地板。調整身體，使其從頭到腳踝形成一條直線，然後將右手懸空。接合您的核心，然後慢慢向左扭曲您的胸部，直到與地面平行為止。執行此操作時，將右臂穿過身體和地板之間的空間。返回開始。那是一個代表。每側做15次。', 'ar_ex7_index3.mp4', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `ArtFood`
--

CREATE TABLE `ArtFood` (
  `sid` int(11) NOT NULL,
  `ar_cate` int(11) NOT NULL,
  `ar_title` varchar(255) NOT NULL,
  `ar_pic` varchar(255) NOT NULL,
  `ar_date` date NOT NULL,
  `ar_read` int(11) NOT NULL,
  `ar_inter` int(11) NOT NULL,
  `ar_author` varchar(255) NOT NULL,
  `ar_highlight` text NOT NULL,
  `ar_index_title1` text NOT NULL,
  `ar_index1` text NOT NULL,
  `ar_index_title2` text NOT NULL,
  `ar_index2` text NOT NULL,
  `ar_index_title3` text NOT NULL,
  `ar_index3` text NOT NULL,
  `ar_question` text NOT NULL,
  `ar_answers` text NOT NULL,
  `ar_correct_answer` text NOT NULL,
  `ar_relatingAr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `ArtFood`
--

INSERT INTO `ArtFood` (`sid`, `ar_cate`, `ar_title`, `ar_pic`, `ar_date`, `ar_read`, `ar_inter`, `ar_author`, `ar_highlight`, `ar_index_title1`, `ar_index1`, `ar_index_title2`, `ar_index2`, `ar_index_title3`, `ar_index3`, `ar_question`, `ar_answers`, `ar_correct_answer`, `ar_relatingAr`) VALUES
(1, 1, '高蛋白食用5大原則 避免吃錯時間和份量', 'ar_food1.jpeg', '2021-06-28', 0, 0, 'worldgy專欄', '高蛋白的好，在於「長肌肉」，幫忙燃脂、降血壓、降血糖，但，再好的營養補充品，也要適量食用。因為乳清蛋白吃太多、吃錯時間，可是會造成腎臟負擔！', '低熱量 易被消化吸收', '相較於其他蛋白質食物來源，高蛋白內含有多種免疫球蛋白及其他活性成分，有益於人體保健，因此被視為是人體所需的優質蛋白質來源之一。\r\n高蛋白的高營養價值，能提供人體所需的胺基酸和蛋白質，是幫助人體生長、發育、抗衰老的優質蛋白質。加上乳清蛋白較易被消化吸收，能促進體液免疫和細胞免疫，刺激人體免疫系統，是一種非常好的增強免疫力的蛋白。\r\n同時，高蛋白的蛋白質成分，能夠增加飽足感，對於飲食控制和熱量攝取，是會有幫助的。', '降血壓血脂 減少發炎\r\n', '服用乳製品，具有降血壓的功效，有效抑制使血管收縮，達到擴張血管、降血壓的功效，而高蛋白，便有這樣的功效；而不只高血壓患者適合，糖尿病患者，也適合適量服用，因為乳清蛋白，具有改善胰島素敏感度及穩定飯後血糖的功效，許多醫師會建議糖尿病患，可藉由乳清蛋白，做為飲食控制時的重要補充品，但份量、因人而異，且必須經過專業醫師評估才行。另外，有心血管疾病或高血脂症狀的族群，也能透過適量服用乳清蛋白，降低因為肥胖所造成的高膽固醇病徵。\r\n在醫學臨床研究上，證實高蛋白能降低身體的發炎指數，幫助調節身體的發炎反應。', '高蛋白實用禁忌', '在運動後30到40分鐘內飲用，會讓吸收更好。而另一個飲用時間點，就是在餐後吃，「切忌空腹食用」，因為空腹食用乳清蛋白，會被身體當成普通的食物消化了，無法產生保健作用。\r\n高蛋白怕熱、怕高溫，千萬不要泡熱水或是泡熱飲，建議泡製乳清蛋白粉時，水溫或是液體溫度選擇在40度以下的飲品或食物中溶解，才不會降低蛋白的活性、降低營養價值。\r\n有肝臟、腎臟病變的患者，食用高蛋白前，一定要詢問過專業醫師，包括份量、時間點，都應該了解。畢竟攝取高蛋白中過多的蛋白質，會造成內臟的負擔。\r\n\r\n因為乳清蛋白即便是粉狀物、方便成人飲用吸收，但其分子結構大小，還是不利於幼童消化吸收，3歲以下應禁吃。\r\n\r\n', '沖泡高蛋白的水溫，應在幾度以下？', '[\"40\", \"60\", \"100\", \"80\"]', '\"40\"', 0),
(2, 1, '連好萊塢明星都被俘虜的「康普茶」發酵茶飲，到底有什麼健康價值？', 'ar_food2.jpeg', '2021-08-11', 0, 0, '食力傳媒', '康普茶是將紅茶加糖作為基底，添加天然的茶母在室溫下進行發酵的一種發酵飲料，因其宣稱的眾多健康功效而受到歡迎，其中較可信的功效包括腸道保健、抗氧化、調整新陳代謝、肝臟代謝解毒。', '來自東方的發酵茶飲「康普茶」讓許多好萊塢巨星趨之若鶩', '康普茶一說源流自喝茶的發明地中國，甚至有人說秦始皇求到的不老仙丹就是康普茶，也有人說是源流自愛好喝加入各種糖、蜂蜜、果醬的甜膩紅茶的俄羅斯。總之，康普茶源自東方是不爭的共識，只是康普茶近年來興起風潮的是西方，而這股健康風潮又漸漸地回捲東方，變成新興的全球保健焦點，近年來讓東西方的健康實踐家共同著迷。', '康普茶4大保健預防功效', '康普茶讓好萊塢巨星們趨之若鶩的原因不外乎是康普茶被塑造傳說的多種功效，據說康普茶可以美白、減肥、排毒以及降血壓、降血糖、預防癌症、調節免疫、甚至抗病毒等等的效果。這些說法有其理論根據，不過很多科學實證尚未完整，需要更多研究證明，大家不能太過期待醫療效果，但是在許多保健預防效果上，我相信是有其道理的。\r\n\r\n1、腸道健康\r\n\r\n康普茶是一種發酵食品，所以富含醋酸、乳酸等有機酸成分，以及很多發酵代謝物，也富含許多活的益生菌，所以對幫助消化、調整腸道菌相是有幫助的。\r\n\r\n2、抗氧化\r\n\r\n康普茶因為是茶發酵來的，所以本身就具有茶多酚、兒茶素、茶黃素等等抗氧化成分。有學者研究指出，康普茶有很高的DPPH抗自由基能力與FRAP抗氧化能力，尤其以綠茶康普茶抗氧化力普遍高於其他茶種。\r\n\r\n3、調整新陳代謝\r\n\r\n中華民國肥胖研究學會理事長蕭敦仁接受採訪就曾指出，康普茶所含的益生菌，可能有助提升免疫力，茶中的兒茶素則能促進代謝。再加上康普茶含有的醋酸具有抗菌能力，所以康普茶有很好的調節新陳代謝作用。\r\n\r\n4、肝臟代謝解毒\r\n\r\n再加上在發酵過程中，活菌會分泌許多酵素，尤其康普茶根據研究可以測得SOD-like enzymes的酵素活性, 對於幫助肝臟代謝解毒，也是很有幫助的。而康普茶豐富的葡萄醣醛酸，在藥理上高劑量的情況下，是可以結合肝臟內的有毒物質或幫助藥物代謝，並進入血液通過腎臟排出體外，所以對肝臟代謝也有益。', '康普茶製作與飲用注意事項', '飲用康普茶要有健康的觀念，不要當成仙丹，而要享受它的天然保健效果，也不要過量，因為康普茶仍具有咖啡因，也可能有微量的酒精，所以孕婦、兒童得注意。\r\n自製康普茶時，最好確保菌種來源安全、沒受到汙染。自製康普茶時，特別要注意有沒有不小心發黴，發黴的食物可能有肉眼看不見的黃麴毒素，有強烈的傷肝與致癌性。也不要以為茶母上長黴刮掉就好，很多黴菌菌絲可能已經深入，刮不掉的，所以為了安全，還是最好丟棄。因此如果不是很有經驗的人，建議還是不要DIY，買市售做好的康普茶應該是更保險的一種方式。', '請問康普茶最被推崇的營養價值主要來自於何處？', '[\"發酵後的產物\", \"茶葉\", \"砂糖\", \"天然香料\"]\r\n', '\"發酵後的產物\"', 0),
(3, 1, '冷凍蔬菜比較沒營養？事實可能超乎你想像！', 'ar_food3.jpeg', '2019-03-13', 0, 0, '食力傳媒', '冷凍蔬菜透過殺菁及急速冷凍技術，可以使營養成分有效被保留下來，其營養價值可能不遜於不新鮮或是市售冷藏的蔬菜。', '冷凍蔬菜 營養價值可能更高', '一般市售冷凍蔬菜，在蔬果採收進廠後便會經過選別、清洗等加工處理，而其中最為關鍵的加工技術便是「殺菁」。\r\n\r\n蔬果本身存在天然的酵素，例如：多酚氧化酶（使蔬果氧化褐變）、果膠酶（使蔬果組織軟化）等，這些酵素在蔬果冷凍或冷藏的過程中仍然會持續作用，進而導致蔬果中營養流失與色澤質地的改變。而「殺菁」的原理便是透過加熱的方式破壞酵素的活性，以達到保存的效果。在殺菁完成後配合「急速冷凍」，更能使得蔬果中營養成分能被有效保留下來。\r\n\r\n然而，相較部分市售蔬果可能因為儲運時間較長或賣相等因素考量，會在蔬果未完全成熟前就提前採收，雖然蔬果在採摘後仍會繼續熟成，但還是很難達到在枝幹上完整成熟的營養價值。更不用説從市場採買回家冷藏到軟腐的不新鮮蔬果，與急速冷凍的成熟蔬果相比，其營養價值可能還不如冷凍的更好。', '在家也能輕鬆做冷凍蔬菜', '隨著加工技術的進展，讓這些冷凍蔬菜能在保有食材口感質地的同時，也將應有的營養價值有效的保留下來。但在家中又要如何簡單的加工保存這些蔬菜呢？\r\n\r\n其實一般透過滾水川燙或簡單清炒的方式便可以輕鬆達到「殺菁」的基本效果，但要注意的是在密封冷凍前要盡可能瀝乾水份，因為殘留過多的水份在冷凍時候會產生冰晶，而冰晶就會破壞蔬菜的組織，進而導致這些蔬菜在退冰烹飪的時候口感不良或是變得軟爛。\r\n\r\n不過即使學會了簡易的殺菁技術來保存蔬菜，還是要提醒各位這並不會讓蔬菜的賞味期限變成「永遠」，都將蔬菜冷凍處理也不會讓你冰箱裡的蔬菜消失，儘早趁新鮮吃掉它才會！', '不是所有蔬菜都適合冷凍處理', '但目前市售的冷凍蔬菜種類並不多，最常見的就是常用在濃湯或炒飯的三色蔬菜（豌豆、玉米、紅蘿蔔），無法迎合所有消費者口味喜好，主要原因是因為並非所有的蔬菜都適合用來做冷凍蔬菜。一般以口感質地較為堅硬、不易水分流失，且需要長時間烹煮才能熟透的蔬菜為主要加工對象。故可以知道若想透過殺菁的方式來保存蔬菜，選擇適合的蔬菜也是重要的關鍵！', '一般冷凍蔬菜的加工製程中，用下列何種技術避免蔬果中酵素導致的營養流失與色澤質地的改變？', '[\"微膠囊技術\", \"熱風乾燥\", \"噴霧乾燥\", \"殺菁\"]', '\"殺菁\"', 0),
(4, 1, '吃「太健康」對腸道有害？壞心情、刻苦生活害你自律神經失調', 'ar_food4.jpeg', '2021-10-19', 0, 0, '食力傳媒', '儘管「有益健康」的食物通常能為人體帶來較少的負擔，然而只要吃的人不覺得好吃，就會造成心理壓力，進而惡化腸道環境，進一步影響自律神經', '腸道身為「第二個大腦」完全反映我們的心情', '常言道，腸道是「第二個大腦」，可見腸道是非常容易受到心理影響的臟器，哪怕只是稍微緊張，就有可能會引起肚子痛，來自職場與人際關係的壓力，也會引起便祕或下痢，腸道就是如此敏感，會隨著心情的變化而有不同的反應。刻苦的生活肯定不輕鬆，我們很常在事與願違時，否定自己、討厭自己，這時候壓力就會不斷升高，腸道也會因為這些壓力而惡化，自律神經也因此紊亂，進而陷入惡性循環。', '遠離刻苦生活，腸道也會happy happy', '許多人會為了減重而避免攝取脂質與碳水化合物，但只要覺得這些餐點很難吃，就會承受多餘的壓力，熱量也會因此轉換成脂肪。反之，若能快樂地享受美味的餐點，腸道的蠕動就會變得頻繁，自律神經也會跟著穩定，血液循環也會變好，代謝也會加速，如此一來，就算不減重，也能避免體重增加了。\r\n\r\n1、壓力\r\n\r\n逼自己吃難吃的食物會造成壓力，腸道會因此惡化，血液循環會變糟，自律神經也會跟著失調。\r\n\r\n2、釋放壓力\r\n開心地吃愛吃的食物可促進腸道蠕動，穩定自律神經。\r\n\r\n若是逼自己吃不愛吃的食物，被譽為「第二大腦」的腸道就會受到影響，自律神經也會失調。雖然營養均衡很重要，但也要吃得開心與美味。一直提醒自己這也不行吃，那也不行吃，會讓自律神經失調。開心地享用美食吧。', ' ', ' ', '下列何者非快樂享受餐點所帶來的結果？', '[\"腸道蠕動頻繁\", \"血液循環好\", \"自律神經穩定\", \"褪黑激素開始分泌\"]', '\"褪黑激素開始分泌\"', 1),
(5, 1, '越吃越累？碳水化合物為主菜一天不超過一餐，這餐吃最優', 'ar_food5.jpeg', '2021-10-18', 0, 0, '食力傳媒', '若早、中、晚三餐都大量攝取碳水化合物不僅難維持體重，還會讓交感神經與副交感神經劇烈切換，使身體感到倦怠與疲勞。因此日本順天堂大學醫學系教授建議，早餐盡可能攝取足夠碳水化合物，而午餐與晚餐應攝入少量碳水化合物。', '過度攝取碳水化合物容易疲累，適量即可', '碳水化合物是很美味的食物，所以不需要逼自己避開這些食物，但當然也不能過度攝取，如果早、中、晚三餐都大量攝取碳水化合物，就很難維持體重，而且還會讓交感神經變得太活躍，用餐結束後，則換成副交感神經因此占據優勢。當交感神經與副交感神經如此劇烈地切換，我們就會覺得倦怠與疲勞，也會變得很想睡。', '早餐最適合吃碳水化合物', '三餐之中，有一餐以碳水化合物為主是最理想的。早餐多吃麵包與白飯，午餐選擇碳水化合物較少的餐點是最理想的安排，如此一來，下午就不會想睡，工作也能有所進展。', '切勿跳過任何一餐，午餐想吃碳水化合物盡量減半', '話說回來，有時候中午就是想吃咖哩或烏龍麵，此時若逼自己忌口，反而會造成壓力，所以可試著將飯量或麵量減半，滿足口腹之慾就好。唯一要注意的是，絕對不能跳過任何一餐。如果跳過午餐，直接吃晚餐，血糖會急速上升，從晚餐攝取的熱量都會變成脂肪，無法轉換成能量。過度攝取碳水化合物固然不好，但至少要吃一個飯糰加味噌湯的量填飽肚子。\r\n\r\n如果3餐都是以碳水化合物為主的菜色，會攝取太多糖分，午餐之後也會特別想睡。就整體而言，早餐是最適合攝取碳水化合物的一餐。', '如果3餐都是以碳水化合物為主的菜色，則下列何項物質會攝取過量？', '[\"糖分\", \"脂質\", \"維生素\", \"微量元素\"]', '\"糖分\"', 1),
(6, 1, '紫米飯糰、蛋餅誰更罪惡？中式早餐小心澱粉、西式遠離加工肉', 'ar_food6.jpeg', '2021-10-21', 0, 0, '食力傳媒', '早餐吃飽很重要，但如果長期攝取油煎或油炸澱粉及加工肉品類等食物，很難不發胖。因此營養師建議食用飯糰時可替換油條來提高營養價值，或將加工肉品換成原形食物，來確保早餐攝取的熱量在安全範圍內。', '中式早餐小心油煎、油炸澱粉類', '早餐吃飽很重要，但如果長期吃油煎、油炸的澱粉類食物，你很難不發胖。例如油條、酥餅、燒餅、蘿蔔糕、鐵板麵等皆為澱粉類，澱粉的吸油率很高，像油條原本一條細細的麵糰放到油鍋去炸，吸飽了油之後，脹大成兩倍大的吸油麵糰，油條基本上就是油加上麵粉，沒有高價值的營養素如蛋白質或纖維，至於酥餅或燒餅則是在麵糰裡揉進大量油脂，才能有香酥脆的口感。單純一份燒餅是250大卡，油條是230至280大卡，再搭配500cc奶茶一杯，一個早餐熱量超過700大卡，而且營養成分全是澱粉加油脂，熱量非常驚人。', '西式早餐：小心火腿、培根等加工肉品', '漢堡、三明治是西式早餐常見的品項，只要選擇正確的搭配，還是能吃到健康的西式早餐。例如避免火腿、培根、肉鬆等加工品，不要選炸雞或炸豬排，選烤豬里肌、烤雞等原型食物熱量就會減少許多。\r\n像是烤雞生菜三明治通常是去邊吐司兩片加上生菜或大番茄、烤雞肉，這一份熱量約360至400大卡，但有肉、有蔬菜、有澱粉，算是很均衡的一餐，若能請老闆不要加沙拉醬更好。漢堡的熱量會較三明治高一些，同樣的烤雞生菜等配料，換上漢堡皮則變成430至470大卡，所以減脂期選三明治比漢堡好。由於一份三明治已有400大卡的熱量，因此飲料部分就要選無糖飲料，免得增加負擔。', '缺乏蛋白質且，醣與脂肪較高的食品也需避免', '至於厚片吐司、丹麥土司的醣類與脂肪較高，且缺乏蛋白質與纖維，因此較不推薦，其他炸物如麥克雞塊、薯條、薯餅等炸物在減脂期也要避免。\r\n\r\n餐廳的早午餐也屬於西式早餐的一種，比較好的是有生菜沙拉，生菜的醬選擇少油的和風醬比凱薩醬好，飲料部分請老闆做成無糖更健康。如果去餐廳吃早午餐，一樣要避免炸物、減少麵包類攝取並增加蔬菜類，如此一來出門享用早午餐也沒問題。', '下列何項之早餐內容物替換方式不被營養師認為是健康的形式？', '[\"飯糰內的油條換蛋\", \"蛋餅內餡選擇豆芽\", \"培根換成烤雞\", \"燒餅內餡選擇油條\"]', '\"燒餅內餡選擇油條\"', 1),
(7, 1, '冬天必吃3種當季水果，降低30％心臟病風險！', 'ar_food7.jpeg', '2017-12-06', 0, 0, '早安健康編輯部', '想要有健康的心臟，降低體內發炎、保持血液清澈與血管柔軟，非得餐餐清淡無味不可？其實不然！色彩繽紛、口感與滋味多樣的新鮮食材，風味獨特的好油脂，酸甘辛香的天然調味料，都是隨手可得的「護心全餐」好幫手。', '冬季最盛產！3水果逆轉心臟健康\r\n#1 葡萄', '葡萄皮含有能預防心肌梗塞的類黃酮，而且研究發現紫葡萄的效果比綠葡萄更好，只要徹底清洗乾淨就能連皮吃，預防心肌梗塞效果更明顯。家醫科醫師何一成曾撰文引述研究指出，患有心臟缺血心絞痛的人每天喝500毫升紫葡萄汁，兩周後就能顯著改善心臟血液循環。', '#2 草莓', '冬季盛產的草莓是許多女性的最愛，而草莓、藍莓等莓果都含有花青素，更能提升好膽固醇、降低壞膽固醇，保護血管並減輕發炎。一項英國研究就發現，年輕女性及中年女性每周吃3 份草莓及藍莓，罹患心臟病風險可降低30％，心臟病發作風險也同樣減低。', '#3 石榴', '石榴汁、石榴種子都含有強大的抗氧化能力， 能夠改善高密度膽固醇機能，研究發現能減少動脈粥狀硬化，達到逆轉冠狀動脈疾病的效果。', '下列水果中，哪項非冬季時令水果？', '[\"葡萄\", \"西瓜\", \"石榴\", \"草莓\"]', '\"西瓜\"', 1),
(8, 1, '吃炸雞會性早熟、速食店養6條腿的雞？那些年關於雞的謠言，信了你就輸了', 'ar_food8.jpeg', '2021-08-19', 1, 1, '食力傳媒', '愛吃炸雞會性早熟？雞脖子吃多會致癌？甚至還有網路流傳速食店炸雞來自6條腿的雞！根據《食力》調查，仍有16.7%的民眾對於「傳聞雞肉有生長激素」有很大的擔心。就讓《食力》帶你從雞隻育種技術、動物用藥、飲食營養等面向回應雞隻施打生長激素的不實謠言。', '長得快是育種、飼料、飼養環境的進步！真的不是生長激素', '連鎖速食店的各種雞肉產品，一直是暢銷產品，但這些大量產出的雞肉產品，也讓很多民眾質疑速食業雞肉需求如此龐大，要怎麼才能滿足？也因此一直有謠傳指出是因為雞隻打了生長激素，才能夠成長速度這麼快，讓供應源源不絕。\r\n\r\n早年引進白肉雞的時候，當時雞隻需要飼養50幾天才能達到能夠上市的體重，而現今只要35天就能達成，而這其實都歸功於「育種」技術的進步！根據台灣主要雞肉供應商「台灣卜蜂企業股份有限公司」南投事業處副總經理張維岳指出，「全世界主要目前是3大品種體系：愛拔益加（Arbor Acres）、樂斯（ROSS）、科寶（Cobb），這幾年從早期45～50天、40～45天、35～40天，到現在的32～35天，育種技術的進步，讓這些白肉雞能夠在短時間內快速成長。」透過這些國際育種公司，持續摒除不好的雞隻基因，以及避免基因相近的雞隻交配導致基因缺陷，才能夠提供客戶品質優良的雞種。\r\n\r\n張維岳也補充道「除了雞隻改良的品種已經打好基礎，現在飼料中的營養成分已經算到非常精細，一隻雞從剛出生到屠宰前要吃什麼飼料，要多少熱能、蛋白質含量等等的營養成分，都已經設定好了」。因此，飼料配方的進步也是讓白肉雞長得頭好壯壯的原因之一。\r\n\r\n而因為市場競爭的緣故，飼養環境其實也越來越好，「在競爭的環境下，大家一定會認為要飼養得比別人好，雞住的環境還有溫度、溼度的控制。」張維岳也直言，一隻雞從小養到大可能賣不到100元，一個月如果有2000多萬隻雞產生，難道要打2000多萬隻針劑嗎？一針生長激素的成本就近千元，「從成本、人力來思考，是絕對不可能這麼做的！」\r\n\r\n因為育種技術的發達，以及飼料、環境的加乘下，白肉雞無論是生長速度或肉質，根本不用、也不會仰賴生長激素，就能夠符合現代社會的飲食需求！', '吃炸雞讓兒童性早熟？6條腿的雞？都是謠言啦！', '而因為生長激素的誤解，也因此衍生出喜歡吃速食店炸雞的兒童會性早熟，還有速食店會使用長了6條腿的雞，但這些完全是謬論！\r\n\r\n性早熟是指性徵提早出現，伴隨著身高快速長高，有很多人會歸因於是吃了可能有使用生長激素的炸雞所導致。但近年來的研究報告顯示，長期攝取高油脂、高蛋白的飲食，以及提早發育是與兒童的體脂肪比例有關係。因此，性早熟別怪雞肉有打生長激素，而是小孩可能長期食用高油脂、高蛋白的炸雞，飲食不均衡的緣故！\r\n\r\n網路流傳速食店使用的炸雞是使用6腳雞製成，但以目前的育種技術來說，要創造出多腳的雞是絕對不可能的！育種方式讓雞隻能夠穩定的繁殖，若是真有畸形的雞隻出現，在繁殖初期就會被淘汰，而無法大量地繁殖，也因此不可能被做為炸雞腿、雞翅的原料，施打生長激素也不可能促進雞隻長成多腳雞。', '人會生病，雞也會！動物用藥不怕不怕', '為了預防、治療疾病，醫生會開立抗生素給病人使用，而人會生病，雞當然也會！當確定雞群生病，經過獸醫師確診後，會開立處方籤以進行即便的治療。那雞肉會不會殘留超標的動物用藥呢？很多人害怕吃了含有動物用藥的雞肉會危害人體，但屠宰前必須有一段時間的停藥期，讓雞隻有時間將藥物代謝。動物用藥、抗生素並不可怕，只要選擇合格的屠宰場的雞肉產品，都會送驗檢查是否動物用藥超標，因此可不必太過擔心！\r\n\r\n一直以來，也很多人擔心雞脖子、雞屁股、雞皮，會有大量毒素、動物用藥累積而不敢吃，但這樣的說法是錯誤的！現代化飼養方式以及優良的雞隻品種選擇，讓雞隻不需要過度用藥，也沒有在脖子打抗生素或生長激素的狀況，而目前也沒有科學證據顯示吃這些部位會造成致癌的可能，如有打針，是進行皮下注射疫苗。\r\n\r\n白肉雞的飼養、屠宰其實已經是一個相當成熟、進步的產業，選擇合格飼養場以及屠宰場的雞肉，就可以安心食用！每出現一次這些謠言，就會傷害到產業界，下次看到這些雞肉謠言，千萬不要再被影響而搞得連雞肉都不敢吃了！', '因育種技術的改良，使養雞場能迅速讓剛孵化的小雞（白肉雞品種）在平均生長＿＿天後屠宰？', '[\"35\", \"25\", \"21\", \"19\"]', '\"35\"', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `article_cate`
--

CREATE TABLE `article_cate` (
  `sid` int(11) NOT NULL,
  `article_cate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `article_cate`
--

INSERT INTO `article_cate` (`sid`, `article_cate`) VALUES
(1, '聰明飲食'),
(2, '食物謠言'),
(3, '美味食譜');

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
  `ar_rec_quan` text NOT NULL,
  `ar_rec_cookTime` text NOT NULL,
  `ar_rec_process` text NOT NULL,
  `ar_relatingPro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `ArtRecipe`
--

INSERT INTO `ArtRecipe` (`sid`, `ar_cate`, `ar_title`, `ar_pic`, `ar_date`, `ar_read`, `ar_rec_ingredient`, `ar_rec_quan`, `ar_rec_cookTime`, `ar_rec_process`, `ar_relatingPro`) VALUES
(1, 3, '蒜蓉嫩蒸雞胸', 'ar_recipe1.jpeg', '2021-06-28', 1, '[\r\n    {\r\n        \"name\": \"去皮雞胸肉\",\r\n        \"quantity\": 400,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"蒜頭\",\r\n        \"quantity\": 8,\r\n        \"unit\": \"瓣\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"蔥花\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"白胡椒\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"小匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"醬油露\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"麻油\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"小匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"鹽\",\r\n        \"quantity\": 0.25,\r\n        \"unit\": \"小匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"米酒\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"鈦白粉\",\r\n        \"quantity\": 1.5,\r\n        \"unit\": \"小匙\",\r\n        \"main\": true\r\n    }\r\n\r\n]', '2', '15', '[\"雞胸肉的兩面逆紋橫向斜切3-4刀，不用切太深。\", \"然後縱切成厚約1.5公分片狀。\", \"雞胸肉放入密封袋(或塑膠袋)中，加入除太白粉的醃料，搖晃讓醃料沾附均勻，儘量排出空氣後封好放入冰箱冷藏30分。(更久也可以)\", \"鍋中加入1大匙油，小火將蒜末炒香。\", \"炒成金黃色的狀態即可盛出。\", \"將平底鍋倒入2碗水，放入蒸盤，大火將水滾開。雞肉從冰箱取出，下太白粉抓勻。\", \"雞肉要平均的舖在盤中，不要交疊，容易造成有些部位不熟的情況，然後灑上爆香後的蒜末。\", \"水滾後放入鍋中，蓋上鍋蓋「大火」蒸7-8分，關火燜5分鐘，開蓋加入蔥花再燜1分鐘，即可享用囉～\", \"清甜的湯汁用來拌飯或麵都好好吃～\" ]', 1),
(2, 3, '馬鈴薯燉肉_電鍋料理', 'ar_recipe2.jpeg', '2021-10-26', 0, '[\r\n    {\r\n        \"name\": \"牛肋條\",\r\n        \"quantity\": 350,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"洋蔥\",\r\n        \"quantity\": 100,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"馬鈴薯\",\r\n        \"quantity\": 180,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"紅蘿蔔\",\r\n        \"quantity\": 100,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"日式鰹魚醬油\",\r\n        \"quantity\": 6,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"米酒\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"黑糖\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    }\r\n\r\n]', '3', '90', '[\"備好所有食材。牛肋條切4cm長段，洋蔥順紋切粗絲。馬鈴薯削皮切成滾刀狀，用水沖洗3-4次去除澱粉質後，暫泡水防氧化變色。紅蘿蔔削皮，切成略小於馬鈴薯的滾刀狀。\", \"起鍋(不放油)，放上牛肉，(中大火)將表面略煎焦香後，先放進(內鍋)裡。\", \"取出[電鍋]，(內鍋)放入所有食材，並加入0.8米杯清水。\", \"接著，(外鍋)加進2米杯水，蓋上鍋蓋開始燉煮。第一次開關跳起時，將內鍋食材翻拌一次後，(外鍋)再加進2米杯水燉煮，開關再次跳起即完成。\", \"起鍋前，撈除湯面浮油(較清爽不油膩)，一道甜甜醬汁的日式燉牛肉就完成囉♪\"]', 1),
(3, 3, '西班牙海鮮湯麵_快速版', 'ar_recipe3.jpeg', '2010-01-20', 1, '[\r\n    {\r\n        \"name\": \"月見雞蛋麵\",\r\n        \"quantity\": 0.3,\r\n        \"unit\": \"包\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"蝦\",\r\n        \"quantity\": 7,\r\n        \"unit\": \"隻\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"蛤蠣\",\r\n        \"quantity\": 6,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"花枝\",\r\n        \"quantity\": 100,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"番茄\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"顆\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"蒜末\",\r\n        \"quantity\": 20,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"蕃紅花\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"小匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"雞湯\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"罐\",\r\n        \"main\": true\r\n    }\r\n\r\n]', '1', '10', '[\"番茄與洋蔥切丁\", \"將橄欖油一小匙，炒香洋蔥、蒜\", \"加入番茄、蕃紅花、雞湯，煮開後放入海鮮，再次煮開撈起熄火，酌加鹽與黑胡椒\", \"將麵投入一大鍋滾水中，煮約五分鐘後撈起，徹底瀝乾\", \"將海鮮排放在麵上，放入煮好的湯料中即可食用\"]', 1),
(4, 3, '摩洛哥小米沙拉', 'ar_recipe4.jpeg', '2021-10-28', 1, '\r\n[\r\n    {\r\n        \"name\": \"小黃瓜\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"根\",\r\n        \"main\": true\r\n    },    {\r\n        \"name\": \"紅甜椒\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"顆\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"黃甜椒\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"顆\",\r\n        \"main\": true\r\n    },\r\n\r\n        {\r\n        \"name\": \"櫻桃番茄\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"紫洋蔥\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"北非小米\",\r\n        \"quantity\": 150,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"檸檬汁\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"高達（Gouda）起司\",\r\n        \"quantity\": 100,\r\n        \"unit\": \"g\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"羅勒葉\",\r\n        \"quantity\": 5,\r\n        \"unit\": \"片\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"鹽、胡椒\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"小匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"冷壓初榨橄欖油\",\r\n        \"quantity\": 600,\r\n        \"unit\": \"ml\",\r\n        \"main\": true\r\n    }\r\n]', '2', '30', '[\"小黃瓜、紅甜椒、黃甜椒切大塊後放入小碗中，以小刀片按3次瞬轉按扭打成大顆粒。\", \"紫洋蔥放入中碗，以刨片刀盤切成絲狀；櫻桃番茄切對半備用。\", \"小黃瓜、紅甜椒、黃甜椒、紫洋蔥和30 ML橄欖油、鹽、胡椒拌勻，放入預熱200℃的烤箱中烤約20分鐘，待蔬菜呈微焦黃時取出。\", \"北非小米以200ml滾燙開水拌勻，加入30 ML的橄欖油，加蓋燜5分鐘後攪拌至小米呈鬆軟狀，再蓋上蓋子等待冷卻備用。\", \"冷卻好的北非小米加入檸檬汁調味，續加入步驟3拌勻，再加入高達起司和羅勒葉即可。\"]', 1),
(5, 3, '青醬紙包香魚', 'ar_recipe5.jpeg', '2011-08-05', 1, '[\r\n    {\r\n        \"name\": \"西洋芹\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"根\",\r\n        \"main\": true\r\n    },    \r\n\r\n    {\r\n        \"name\": \"洋蔥\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"小番茄\",\r\n        \"quantity\": 4,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"青醬\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"香魚\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"條\",\r\n        \"main\": true\r\n    }\r\n]\r\n', '2', '30', '[\r\n    \"先將魚清洗乾淨後灑上少許海鹽與胡椒醃漬片刻。\", \r\n\"將所有食材混勻，都均勻的沾到青醬。\", \r\n\"取一張錫箔紙，紙上放上蔬菜，再放上魚。\", \r\n\"不須包起，直接放入烤箱以200C烤約10-15分鐘至魚表面金黃即可。\"\r\n\r\n\r\n]', 1),
(6, 3, '迷迭香烤雞腿佐馬鈴薯', 'ar_recipe6.jpeg', '2020-07-08', 1, '[\r\n    {\r\n        \"name\": \"洋蔥\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"馬鈴薯\",\r\n        \"quantity\": 4,\r\n        \"unit\": \"個\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"雞腿肉\",\r\n        \"quantity\": 5,\r\n        \"unit\": \"片\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"義式香料粉\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"小匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"橄欖油\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"鹽\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"茶匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"黑胡椒\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"茶匙\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"橄欖油\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    }\r\n]', '5', '75', '[\r\n    \"烤箱（烤箱架在低位）加熱到425°F（218.3°C\", \r\n\"洋蔥切薄片、馬鈴薯切厚片、雞肉用香料粉、鹽與胡椒粉醃製按摩。\", \r\n\"烤盤依序鋪上洋蔥、馬鈴薯與雞肉。淋上油，並在馬鈴薯上撒上香料粉、鹽和胡椒粉。\", \r\n\"烤製1小時，雞肉裡面不是粉紅色、馬鈴薯可用筷子輕鬆刺穿即可。\"\r\n\r\n\r\n]', 1),
(7, 3, '鮭魚蔬菜沙拉', 'ar_recipe7.jpeg', '2020-04-20', 1, '[\r\n    {\r\n        \"name\": \"花椰菜\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"顆\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"蘆筍\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"束\",\r\n        \"main\": true\r\n    },\r\n    {\r\n        \"name\": \"鮭魚片\",\r\n        \"quantity\": 2,\r\n        \"unit\": \"片\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"Dijon芥末\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"茶匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"鮮榨檸檬汁\",\r\n        \"quantity\": 3,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"橄欖油\",\r\n        \"quantity\": 1,\r\n        \"unit\": \"大匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"鹽\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"茶匙\",\r\n        \"main\": true\r\n    },\r\n\r\n    {\r\n        \"name\": \"黑胡椒\",\r\n        \"quantity\": 0.5,\r\n        \"unit\": \"茶匙\",\r\n        \"main\": true\r\n    }\r\n]', '2', '30', '[\r\n    \"花椰菜與蘆筍切成小塊，蒸熟備用。\", \r\n    \"煎炸鮭魚片5-7分鐘，翻面再煎1-2分鐘，備用。\", \r\n    \"醬汁：把芥末和檸檬汁加在一起，並分次倒入橄欖油攪拌，直到混和均勻。\", \r\n    \"將蔬菜擺盤並淋上醬汁，保留約三湯匙醬汁，將鮭魚切成薄片後放在蔬菜上，再將剩下的醬汁淋上。\"\r\n]', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `ArtExercise`
--
ALTER TABLE `ArtExercise`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `ArtFood`
--
ALTER TABLE `ArtFood`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `article_cate`
--
ALTER TABLE `article_cate`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `ArtRecipe`
--
ALTER TABLE `ArtRecipe`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ArtExercise`
--
ALTER TABLE `ArtExercise`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ArtFood`
--
ALTER TABLE `ArtFood`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ArtRecipe`
--
ALTER TABLE `ArtRecipe`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;