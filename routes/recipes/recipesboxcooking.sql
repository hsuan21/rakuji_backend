-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-14 12:23:05
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `rakuji`
--

-- --------------------------------------------------------

--
-- 資料表結構 `recipesboxcooking`
--

CREATE TABLE `recipesboxcooking` (
  `RecipesBoxCooking1_ID` int(11) NOT NULL,
  `RecipesBoxCooking` int(11) NOT NULL,
  `RecipesBoxCooking_text` varchar(1000) NOT NULL,
  `Recipes_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `recipesboxcooking`
--

INSERT INTO `recipesboxcooking` (`RecipesBoxCooking1_ID`, `RecipesBoxCooking`, `RecipesBoxCooking_text`, `Recipes_ID`) VALUES
(1, 1, '將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 1),
(2, 2, '先將油倒進炒菜鍋內，再將沾滿蛋汁的白飯與其他食材倒入鍋中，轉中火快炒5分鐘，期間須不斷翻炒，避免食材燒焦。', 1),
(3, 1, '砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 2),
(4, 2, '將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 2),
(5, 1, 'TEST72將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 3),
(6, 1, 'TEST19將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 4),
(7, 1, 'TEST27將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 5),
(8, 1, 'TEST96將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 6),
(9, 1, 'TEST18將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 7),
(10, 1, 'TEST73將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 8),
(11, 1, 'TEST21將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 9),
(12, 1, 'TEST40將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 10),
(13, 1, 'TEST72將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 11),
(14, 1, 'TEST8將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 12),
(15, 1, 'TEST15將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 13),
(16, 1, 'TEST47將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 14),
(17, 1, 'TEST100將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 15),
(18, 1, 'TEST86將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 16),
(19, 2, 'TEST37砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 3),
(20, 2, 'TEST92砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 4),
(21, 2, 'TEST38砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 5),
(22, 2, 'TEST30砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 6),
(23, 2, 'TEST72砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 7),
(24, 2, 'TEST59砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 8),
(25, 2, 'TEST29砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 9),
(26, 2, 'TEST82砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 10),
(27, 2, 'TEST50砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 11),
(28, 2, 'TEST24砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 12),
(29, 2, 'TEST17砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 13),
(30, 2, 'TEST77砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 14),
(31, 2, 'TEST3砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 15),
(32, 2, 'TEST95砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 16),
(33, 3, 'TEST7將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 9),
(34, 3, 'TEST72將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 10),
(35, 3, 'TEST66將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 11),
(36, 3, 'TEST3將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 12),
(37, 3, 'TEST88將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 13),
(38, 3, 'TEST90將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 14),
(39, 3, 'TEST3將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 15),
(40, 3, 'TEST72將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 16),
(41, 4, 'TEST51將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 13),
(42, 4, 'TEST87將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 14),
(43, 4, 'TEST84將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 15),
(44, 4, 'TEST38將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 16);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `recipesboxcooking`
--
ALTER TABLE `recipesboxcooking`
  ADD PRIMARY KEY (`RecipesBoxCooking1_ID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipesboxcooking`
--
ALTER TABLE `recipesboxcooking`
  MODIFY `RecipesBoxCooking1_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
