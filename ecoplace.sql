-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2022 a las 10:24:28
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecoplace`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `cart_name` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `cart_name`, `user_id`) VALUES
(1, 'cart-804-2QM', 1),
(2, 'cart-471-MMF', 2),
(3, 'cart-126-3PK', 3),
(4, 'cart-433-VFR', 4),
(5, 'cart-467-M08', 5),
(6, 'cart-347-ZUO', 6),
(7, 'cart-576-HT5', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'floraYJardin'),
(2, 'organicos'),
(3, 'cuidadoPersonal'),
(4, 'hogar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `order`
--

INSERT INTO `order` (`id`, `product_id`, `cart_id`, `product_quantity`) VALUES
(1, 12, 7, 5),
(2, 15, 6, 3),
(3, 13, 1, 7),
(4, 13, 4, 4),
(5, 14, 3, 0),
(6, 17, 1, 8),
(7, 12, 7, 3),
(8, 13, 6, 6),
(9, 13, 3, 0),
(10, 12, 6, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_description` varchar(30) NOT NULL,
  `product_technical_description` varchar(120) DEFAULT NULL,
  `product_other_description` varchar(120) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_image` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_technical_description`, `product_other_description`, `category_id`, `product_price`, `product_image`) VALUES
(12, 'Mangostein', 'Squash - Pattypan, Yellow', 'Cut Wakame - Hanawakaba', 'Cumin - Ground', 1, 551.71, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW'),
(13, 'Peas Snow', 'Wine - White, Concha Y Toro', 'Vinegar - Balsamic', 'Cookie Choc', 2, 628.89, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW'),
(14, 'Pork - Hock And Feet Attached', 'French Pastry - Mini Chocolate', 'Energy Drink - Franks Pineapple', 'Sugar - Invert', 3, 81.17, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW'),
(15, 'Garlic Powder', 'Wine - White, Antinore Orvieto', 'Lotus Leaves', 'Cheese - Brie', 4, 764.74, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW'),
(16, 'Garbage Bag - Clear', 'Yams', 'Sprouts - Pea', 'Chinese Foods - Plain Fried Rice', 2, 46.74, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW'),
(17, 'Grapes - Black', 'Versatainer Nc - 8288', 'Oil - Olive, Extra Virgin', 'Potatoes - Pei 10 Oz', 3, 297.13, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW'),
(18, 'Gatorade - Fruit Punch', 'Bread - Wheat Baguette', 'Kumquat', 'Muffin - Mix - Bran And Maple 15l', 4, 552.41, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW'),
(19, 'Crab - Imitation Flakes', 'Rice - Sushi', 'Vacuum Bags 12x16', 'Pie Shell - 5', 1, 657.32, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW'),
(20, 'Chocolate Bar - Coffee Crisp', 'Bag - Regular Kraft 20 Lb', 'Beef - Striploin', 'Olives - Stuffed', 2, 188.08, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW'),
(21, 'Cookies Almond Hazelnut', 'Pepsi - 600ml', 'Bagel - 12 Grain Preslice', 'Wine - Niagara Peninsula Vqa', 4, 178.38, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW'),
(29, 'PAN INTEGRAL', 'PAN INTEGRAL', 'PAN INTEGRAL', 'PAN INTEGRAL', 2, 22.89, 'product_image_productimg_1647482730866.PNG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(120) NOT NULL,
  `user_image` varchar(120) NOT NULL,
  `createdAt` varchar(30) NOT NULL,
  `updatedAt` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_email`, `user_password`, `user_image`, `createdAt`, `updatedAt`) VALUES
(1, 'rpannett0', 'doswick0@cbslocal.com', 'wlSekd', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW', '', ''),
(2, 'jgladdifh1', 'wfrenzel1@privacy.gov.au', 'df2k4VbAKCI', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW', '', ''),
(3, 'cbradberry2', 'dchamberlayne2@jalbum.net', '5Pb189ko0d', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW', '', ''),
(4, 'mdorber3', 'bkaufman3@businessweek.com', 'rAPKjPv', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW', '', ''),
(5, 'ndurek4', 'bmanagh4@ameblo.jp', 'V6ZEKfh9CZs', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW', '', ''),
(6, 'todonovan5', 'fraylton5@webeden.co.uk', 'dlV3BecQND', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW', '', ''),
(7, 'mrichardsson6', 'ksiddeley6@mapy.cz', 'fG0dgYy', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW', '', ''),
(8, 'gcline7', 'ebeauly7@etsy.com', 'eqecff', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW', '', ''),
(9, 'kharold8', 'jshellibeer8@cocolog-nifty.com', 'SOsnwF766', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW', '', ''),
(10, 'wpersse9', 'rfarn9@apple.com', 'hxYfC9', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW', '', ''),
(11, 'Guillermo', 'guiarango@hotmail.com', '$2a$10$unm1XjjaYgDjvNiyGW0byuU', 'avatar-1647122340930.PNG', '2022-03-12 21:59:01', '2022-03-12 21:59:01'),
(12, 'williams', 'willy123@gmail.com', '$2a$10$vU33cNhRbwiE4MjJVsYkCO6', 'avatar-1647122962913.PNG', '2022-03-12 22:09:23', '2022-03-12 22:09:23'),
(14, 'prueba', 'prueba345@gmail.com', '$2a$10$O605Hz7kphc/gEQuvBWcCO4NaTR1Jguce8YODLBIWya', 'avatar-1647124800898.PNG', '2022-03-12 22:40:00', '2022-03-12 22:40:00'),
(15, 'Guillermo', 'guiarango1@hotmail.com', '$2a$10$6KWfMXYQRX.jH6YE7oA8XOXrYsmHrJOLvkIp0Hf.Yl/YY6ZF6P.qm', 'avatar-1647124886418.PNG', '2022-03-12 22:41:26', '2022-03-12 22:41:26'),
(16, 'Taylor12', 'taylorswift@gmail.com', '$2a$10$cK9S3szPwNLsgqzomk8j3uH8AhSYHsPgPvxCINGg00yKzVNl.XSc.', 'avatar-1647766329180.jpg', '2022-03-20 08:52:09', '2022-03-20 08:52:09'),
(17, 'adamsandler12', 'adamsan12@gmail.com', '$2a$10$xltEPwARHTZXWBdXCOxOJeK05YAsR8/vPr.mcZIErpejV15UrAWQm', 'avatar-1647766374050.jpg', '2022-03-20 08:52:54', '2022-03-20 08:52:54'),
(18, 'liomessi30', 'lio30messi@gmail.com', '$2a$10$CXRVGPzDeOr0TH4z0XoAx.cCDIiKFM/yd0dOUW1gJabJVGw4Aa3Km', 'avatar-1647766402317.jpg', '2022-03-20 08:53:22', '2022-03-20 08:53:22'),
(19, 'elonmusk2022', 'elon20musk22@gmail.com', '$2a$10$EN5I5xHQtKxBaJtXCoymNe.dfA.XBwWtwrsI5A6IG3Fvj.Vtps1dy', 'avatar-1647766448817.jpg', '2022-03-20 08:54:08', '2022-03-20 08:54:08'),
(20, 'jenniferanis', 'jenniferfriends@gmail.com', '$2a$10$lrpBY.HRIcHesfRFh9gSmea9EeXDvusMkQ796PGJ8tx5TNjdjrQiW', 'avatar-1647766503123.jpg', '2022-03-20 08:55:03', '2022-03-20 08:55:03'),
(21, 'charlizeRF', 'charlizeRF@gmail.com', '$2a$10$r4wrFswdZEBGuJvar0Y5quScFK87hoFUiVB2leXCJiYIy2S10a65i', 'avatar-1647766570321.jpg', '2022-03-20 08:56:10', '2022-03-20 08:56:10'),
(22, 'arturovid', 'arturito12@gmail.com', '$2a$10$pfwU1kvJVnkNz8Bx.DvQ2.p7z6GASl4NX0b7UQty6HdbYfp38vURu', 'avatar-1647766595779.jpg', '2022-03-20 08:56:35', '2022-03-20 08:56:35'),
(23, 'cristronal', 'cristianopenaldo@gmail.com', '$2a$10$FCyosQcfU3e6QSGdEH.tCuqnOQQrxMmg3C/Sg2dJCVgRWGPJN20KK', 'avatar-1647766623486.jpg', '2022-03-20 08:57:03', '2022-03-20 08:57:03'),
(24, 'natalieport', 'natyport@gmail.com', '$2a$10$MbSV3dK3e.Jonb/95Zqqd.P1PvJmfEk0L.4MmFDbggAAsND0G/.6i', 'avatar-1647766652584.jpg', '2022-03-20 08:57:32', '2022-03-20 08:57:32'),
(25, 'connorMc', 'connorboxe@gmail.com', '$2a$10$Cid8iZ/zDFu1P8vTqHWJAuCAu2Ner1ehRaC/H/MLPpzGPGeSueGHC', 'avatar-1647766687264.jpg', '2022-03-20 08:58:07', '2022-03-20 08:58:07'),
(26, 'justinb', 'justinbaby@gmail.com', '$2a$10$HPpoW2KyDX/t.yn29RCMreZriT14N10CB8T2SjU8Oj8AWRx7RXekS', 'avatar-1647766713089.jpg', '2022-03-20 08:58:33', '2022-03-20 08:58:33'),
(27, 'adamlavi', 'adamsuggar@gmail.com', '$2a$10$trOdGD.dCL./un4ZBZykpuNgP7h3av54/.7d3yFoZMR415LHguapm', 'avatar-1647766739134.jpg', '2022-03-20 08:58:59', '2022-03-20 08:58:59'),
(28, 'jaimesRodri', 'jaimitorod@gmail.com', '$2a$10$YZ6f72k3R21g.ZfuzN2p6eztp0JUQ4k0h3zK0l3LTTHihwxAprJTK', 'avatar-1647766794282.jpg', '2022-03-20 08:59:54', '2022-03-20 08:59:54'),
(29, 'lavanega', 'julivanegas@gmail.com', '$2a$10$61R2yWIFsnFxDMq78SgoAeFZCu4iYPZ83F63sSqKjBEYMlCqP3Tl2', 'avatar-1647766823604.jpg', '2022-03-20 09:00:23', '2022-03-20 09:00:23'),
(30, 'davidbeck', 'davidsecret@gmail.com', '$2a$10$tY1PXafoOVFyYknutmFJhO/CEychNXZevfSt2WlGDRVi2xJzEMubu', 'avatar-1647766862557.jpg', '2022-03-20 09:01:02', '2022-03-20 09:01:02'),
(31, 'shakiraaa', 'shakirapique@gmail.com', '$2a$10$HtWk.3BaUA9KwyZcRn0EoeKlzUGSTBZGxTxm2rf0gUTb5Z4P6obIW', 'avatar-1647767125944.jpg', '2022-03-20 09:05:26', '2022-03-20 09:05:26'),
(32, 'eldinhooo', 'ronhaldino@gmail.com', '$2a$10$kk7NRkL0jZralx6FY/Pt9el20kXhyP0oYPz.yG2L5Z63Pd8ZoJSQu', 'avatar-1647767149329.jpg', '2022-03-20 09:05:49', '2022-03-20 09:05:49'),
(33, 'hammilf1', 'lewishamm@gmail.com', '$2a$10$7DuvKzMxtV1EvW.U9QjtKe6I6VtDDxfhoX4v3/xlwmLQSl0NGUKfi', 'avatar-1647767174346.jpg', '2022-03-20 09:06:14', '2022-03-20 09:06:14'),
(34, 'michaelPhel', 'michaelswim@gmail.com', '$2a$10$6rU0Mu.HmnpyAFZajgMsse3fQ4POZRDUMW7Ss93LHhGOj2L42xIJy', 'avatar-1647767202623.jpg', '2022-03-20 09:06:42', '2022-03-20 09:06:42'),
(35, 'tigerGolf', 'woodsGolf19@gmail.com', '$2a$10$sPwmLtaLugWazo9raHmSReAh2BZFxjYddDJ0bgB2XDxQ5bkHeENiW', 'avatar-1647767243949.jpg', '2022-03-20 09:07:24', '2022-03-20 09:07:24'),
(36, 'carlitosbox', 'carlitosbox@gmail.com', '$2a$10$GD8LaTwh/nWWHJyzTLsamumWmxN8eThGruD1g64SG6IlMVVaiW5Gi', 'avatar-1647767890681.jpg', '2022-03-20 09:18:10', '2022-03-20 09:18:10'),
(37, 'billpuertas', 'billpuertas@gmail.com', '$2a$10$jQQ7h2jTqfnhttOvxBC64uE7AEcrsSTQJO18rXftFN1Q/osP5A5QK', 'avatar-1647767916409.jpg', '2022-03-20 09:18:36', '2022-03-20 09:18:36'),
(38, 'billieSad', 'billieSad@gmail.com', '$2a$10$ycJSTaAL4HM7gUWLlJIpL.IuXCzLGBbF6R/Rq1U0gsZ1/.EsEilYi', 'avatar-1647767944052.jpg', '2022-03-20 09:19:04', '2022-03-20 09:19:04'),
(39, 'itsbritney', 'britneyBit@gmail.com', '$2a$10$p/LDqaotiVlg3odfD9R0wezf8C1UzrrKvIhQFczIWOVrpslIgNdh.', 'avatar-1647767970311.jpg', '2022-03-20 09:19:30', '2022-03-20 09:19:30'),
(40, 'AndrewSpider', 'bestspiderman@gmail.com', '$2a$10$6qY4lVU7QAChQQiuTXaGbOfmigCBLG3gs2PydN2tgkfRMCT7ENTia', 'avatar-1647768000409.jpg', '2022-03-20 09:20:00', '2022-03-20 09:20:00'),
(41, 'princesswife', 'meghanprincess@gmail.com', '$2a$10$KnETOGoLVEe6hzxHrilxJe2H7pU9oxzimUSKhS6phF64XXmBHp9Xm', 'avatar-1647768033785.jpg', '2022-03-20 09:20:33', '2022-03-20 09:20:33'),
(42, 'badConejo', 'malobunny@gmail.com', '$2a$10$l8G7K0MeUY1N4ajtGHtVDuBsXC77Wnl/loihtjKBAUdqXIrY9QMsu', 'avatar-1647768066944.jpg', '2022-03-20 09:21:07', '2022-03-20 09:21:07'),
(43, 'scarletteher', 'scarlette@gmail.com', '$2a$10$i3pkCPHABSFB/nXft6m3/OYaPKIwiibHirizTYxt58SFavHQYZ39O', 'avatar-1647768104106.jpg', '2022-03-20 09:21:44', '2022-03-20 09:21:44'),
(44, 'jassonpai', 'jasson22@gmail.com', '$2a$10$8MYWTrGYeZRq8Xg7/5h.pOjE7wt2xXH3S7mVlw.iplf4VWNZnL5qG', 'avatar-1647768124480.jpg', '2022-03-20 09:22:04', '2022-03-20 09:22:04'),
(45, 'Franciahilton', 'parishilton@gmail.com', '$2a$10$dtGfIXA3dc7iN2OI8A8WheFuRBk13Ar3mUtZLy378YVmr7RbuyZBS', 'avatar-1647768159816.jpg', '2022-03-20 09:22:39', '2022-03-20 09:22:39');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_id_2` (`category_id`),
  ADD KEY `category_id_3` (`category_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
