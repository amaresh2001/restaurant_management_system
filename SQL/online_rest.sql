-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2021 at 09:35 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'seethu', 'admin@gmail.com', '', '2021-04-07 08:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(4, 1, 'Floor Cheese Cake', 'Cottage cheese cooked with fresh ground spinach, onion, garlic and indian herbs.', '390.00', 'cheese cake.jpg'),
(2, 1, 'Lap Lasagna', 'Dahi, achar, tomatoes, mustard oil, fennel seeds', '250.00', 'lasagna.jpg'),
(3, 1, 'Thanksgiving Turkey', 'Chicken Tikka Biryani Recipe is the famous Indian delicacy of Punjabi Cuisine. Boneless Chicken is marinated in spicy mix of Yogurt and Spices.', '470.00', 'thanksgiving-turkey.jpg'),
(1, 1, 'Murgh Zafrani Kabab', 'Murgh Zafrani Kabab. A plateful of succulent pieces of meat, straight out of tandoor, is tough to resist.', '380.00', '606d73d2d37f4.jpg'),
(5, 2, 'Sandwich', 'Spaghetti pasta, grilled shrimps, parmesan cheese, with our homemade pink sauce,', '380.00', 'sandwich.jpg'),
(6, 2, 'Pizza', 'Covered with mozzarella cheese.', '250.00', 'pizza.jpg'),
(7, 2, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', '460.00', '606d74f6ecbbb.jpg'),
(8, 2, 'Warm Up Chips', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', '380.00', 'chips.jpg'),
(9, 3, 'Margaritas', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', '350.00', 'Margaritas.jpg'),
(10, 3, 'Sad spaghetti', '12 pieces deep-fried prawn crackers', '120.00', 'spaghetti.jpg'),
(11, 3, 'Sushi', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', '470.00', 'sushi.jpg'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', '500.00', '606d7600dc54c.jpg'),
(13, 4, 'Pasta', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', '450.00', 'pasta.jpg'),
(14, 4, 'Lobster', 'Served with our traditional spicy queso and marinara sauce.', '350.00', 'lobster.jpg'),
(15, 4, 'Mockolate', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', '320.00', 'mockolate.jpg'),
(16, 4, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', '350.00', '606d768a1b2a1.jpg'),
(17, 5, 'Muffins', 'Served with our traditional spicy queso and marinara sauce.', '150.00', 'muffins.jpg'),
(18, 5, 'Triffle', 'Served with our traditional spicy queso and marinara sauce.', '200.00', 'triffle.jpg'),
(19, 5, 'Scones', 'Served with our traditional spicy queso and marinara sauce.', '100.00', 'scones.jpg'),
(20, 6, 'Spaghetti and Salad', 'Served with our traditional spicy queso and marinara sauce.', '210.00', 'spaghetti_salad.jpg'),
(21, 6, 'Meat filled Sandwiches', 'Served with our traditional spicy queso and marinara sauce.', '280.00', 'sandwich.jpg'),
(22, 6, 'Grandma Cookies', 'Served with our traditional spicy queso and marinara sauce.', '200.00', 'cookies.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `image` text NOT NULL,
  `address` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `image`,`address`) VALUES
(1, 1, 'Chandler','chandler.png','“I have no idea what’s going on, but I am excited.”'),
(2, 2, 'Joey','joey.jpg', '“Joey doesn’t share food!”'),
(3, 3, 'Ross','ross.jpg', '“What’s not to like? Custard? Good. Jam? Good. Meat? Good.”'),
(4, 4, 'Monica','monica.jpg', '“Welcome to the real world. It sucks. You’re gonna love it.”'),
(5, 5, 'Rachel','rachel.jpg', '“We are dessert stealers. We are living outside the law.”'),
(6, 6, 'Phoebe','phoebe.jpg', '“They don’t know that we know they know we know.”');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Indian', '2021-04-07 08:45:20'),
(2, 'Italian', '2021-04-07 08:45:23'),
(3, 'Chinese', '2021-04-07 08:45:25'),
(6, 'Chinese', '2021-04-07 08:45:25'),
(5, 'American', '2021-04-07 08:45:28'),
(4, 'American', '2021-04-07 08:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'SAL', 'Salman', 'Ansari', 'salman@gmail.com', '1324325445', 'a32de55ffd7a9c4101a0c5c8788b38ed', 'Mira Road', 1, '2021-04-07 08:43:49'),
(2, 'PAR', 'Parth', 'Desai', 'parth@gmail.com', '4325345332', 'bc28715006af20d0e961afd053a984d9', 'Vasai', 1, '2021-04-07 08:44:35'),
(3, 'HIT', 'Hitesh', 'Gosavi', 'hitesh@gmail.com', '4325345332', '58b2318af54435138065ee13dd8bea16', 'Malad', 1, '2021-04-07 08:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;