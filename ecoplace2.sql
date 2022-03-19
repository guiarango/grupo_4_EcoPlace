-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-03-2022 a las 03:07:07
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
  `product_price` float DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `order`
--

INSERT INTO `order` (`id`, `product_id`, `cart_id`, `product_price`, `product_quantity`) VALUES
(1, 12, 7, 30.67, 5),
(2, 15, 6, 927.65, 3),
(3, 13, 1, 945.29, 7),
(4, 13, 4, 93.88, 4),
(5, 14, 3, 860.95, 0),
(6, 17, 1, 933.26, 8),
(7, 12, 7, 401.02, 3),
(8, 13, 6, 305.75, 6),
(9, 13, 3, 697.49, 0),
(10, 12, 6, 450.46, 9);

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
(15, 'Guillermo', 'guiarango1@hotmail.com', '$2a$10$6KWfMXYQRX.jH6YE7oA8XOXrYsmHrJOLvkIp0Hf.Yl/YY6ZF6P.qm', 'avatar-1647124886418.PNG', '2022-03-12 22:41:26', '2022-03-12 22:41:26');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
