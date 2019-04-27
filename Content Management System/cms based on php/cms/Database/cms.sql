-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2019 at 12:22 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'bootstrap'),
(90, 'java'),
(91, 'javascript'),
(92, 'phyton'),
(93, 'c++'),
(94, 'iuuu'),
(95, 'yhdyfg'),
(96, 'yhdyfg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 10, 'lucky vyapari', 'lvyapari@gmail.com', 'fdsfdsfdf', 'unapproved', '2019-02-01'),
(2, 14, 'lucky', 'asgdsa@gmail.com', 'ffnn', 'approved', '2019-02-27'),
(3, 7, 'lucky', 'asgdsa@gmail.com', 'hgyjhgj', 'unapproved', '2019-03-10'),
(4, 7, 'lucky', 'asgdsa@gmail.com', 'hgyjhgj', 'unapproved', '2019-03-10'),
(5, 7, 'mjh', 'mjhm@g.com', 'jmbm', 'approved', '2019-03-10'),
(6, 7, 'mjh', 'mjhm@g.com', 'jmbm', 'unapproved', '2019-03-10'),
(7, 13, 'lucky', 'asgdsa@gmail.com', 'kjkjj', 'unapproved', '2019-03-13'),
(8, 13, '', '', '', 'unapproved', '2019-03-13'),
(9, 13, 'fd', 'asgdsa@gmail.com', 'fgvdg', 'unapproved', '2019-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(40, 1, 'bootstrap ', 'lucky vyapari ', '2019-04-04', 'boootstap.jpg', 'Bootstrap is a free and open-source front-end web framework. It contains HTML and CSS-based design templates for typography, forms, buttons, navigation and other interface components, as well as optional JavaScript extensions. Unlike many earlier web frameworks, it concerns itself with front-end development only.                           ', 'bootstrap ', 0, 'published'),
(42, 1, 'java', 'lucky vyapari ', '2019-04-04', 'java.png', 'Java is a general-purpose computer-programming language that is concurrent, class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible.                                    ', 'java', 0, 'published'),
(43, 1, 'phyton', 'lucky vyapari ', '2019-04-04', 'phyton.png', 'Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python has a design philosophy that emphasizes code readability, notably using significant whitespace. It provides constructs that enable clear programming on both small and large scales.                                   ', 'phyton', 0, 'published'),
(44, 1, 'c++', 'lucky vyapari ', '2019-04-04', 'c++.png', 'C++ is a general-purpose programming language that was developed by Bjarne Stroustrup as an extension of the C language, or \"C with Classes\". It has imperative, object-oriented and generic programming features, while also providing facilities for low-level memory manipulation.                                    ', 'c++', 0, 'published'),
(46, 1, 'gfdgfdfd', 'lucky vyapari ', '2019-04-04', 'lnct.jpg', '         Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut neque erat, dignissim id metus id, iaculis egestas turpis. Sed auctor pharetra nisl tincidunt fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nisi tortor, condimentum vel tincidunt sed, tristique in velit. Nulla non volutpat lectus, sed viverra orci. Integer facilisis eu augue vel auctor. Suspendisse potenti. Pellentesque dapibus viverra augue quis dapibus. Vivamus consequat nulla et tortor semper, et aliquam tortor tincidunt. Sed porttitor augue sit amet euismod porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer maximus rhoncus nulla, vitae venenatis nibh vulputate elementum. Quisque accumsan consequat leo eu vestibulum. Maecenas eget luctus odio. Cras sit amet sagittis nisi.\r\n\r\nPhasellus pellentesque tellus ac dictum facilisis. Aenean eu vehicula neque, ac fermentum odio. Nam molestie vel ante vel cursus. Donec venenatis commodo porta. Suspendisse potenti. Nam consequat nisi quis mi fermentum, vel fringilla nisl lobortis. Suspendisse eget ligula risus. Etiam ac libero sem. Ut vestibulum vulputate nibh, in condimentum elit interdum et. Aliquam nec massa id quam egestas fermentum interdum ut ipsum.\r\n\r\nPellentesque commodo risus eget faucibus posuere. Integer faucibus, arcu scelerisque scelerisque imperdiet, ante nisi tristique justo, cursus suscipit lorem velit ut lorem. Praesent ornare arcu eu tellus malesuada, vitae dignissim est accumsan. Quisque eget ante diam. Aenean molestie posuere tellus, quis commodo nisl rutrum quis. Nulla tempor ac odio eget tincidunt. Donec pharetra placerat arcu at iaculis.                                    ', 'tagsmaker', 0, 'published'),
(47, 1, 'loremIpsum', 'lucky vyapari ', '2019-04-04', 'example.jpg', '         Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut neque erat, dignissim id metus id, iaculis egestas turpis. Sed auctor pharetra nisl tincidunt fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi nisi tortor, condimentum vel tincidunt sed, tristique in velit. Nulla non volutpat lectus, sed viverra orci. Integer facilisis eu augue vel auctor. Suspendisse potenti. Pellentesque dapibus viverra augue quis dapibus. Vivamus consequat nulla et tortor semper, et aliquam tortor tincidunt. Sed porttitor augue sit amet euismod porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer maximus rhoncus nulla, vitae venenatis nibh vulputate elementum. Quisque accumsan consequat leo eu vestibulum. Maecenas eget luctus odio. Cras sit amet sagittis nisi.\r\n\r\nPhasellus pellentesque tellus ac dictum facilisis. Aenean eu vehicula neque, ac fermentum odio. Nam molestie vel ante vel cursus. Donec venenatis commodo porta. Suspendisse potenti. Nam consequat nisi quis mi fermentum, vel fringilla nisl lobortis. Suspendisse eget ligula risus. Etiam ac libero sem. Ut vestibulum vulputate nibh, in condimentum elit interdum et. Aliquam nec massa id quam egestas fermentum interdum ut ipsum.\r\n\r\nPellentesque commodo risus eget faucibus posuere. Integer faucibus, arcu scelerisque scelerisque imperdiet, ante nisi tristique justo, cursus suscipit lorem velit ut lorem. Praesent ornare arcu eu tellus malesuada, vitae dignissim est accumsan. Quisque eget ante diam. Aenean molestie posuere tellus, quis commodo nisl rutrum quis. Nulla tempor ac odio eget tincidunt. Donec pharetra placerat arcu at iaculis.                  ', 'lorem', 0, 'published'),
(48, 1, 'javascript ', 'lucky vyapari', '2019-04-04', 'javascripts.png', ' JavaScript, often abbreviated as JS, is a high-level, interpreted programming language that conforms to the ECMAScript specification. It is a programming language that is characterized as dynamic, weakly typed, prototype-based and multi-paradigm.                 ', 'javascripts', 0, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randsalt` varchar(255) NOT NULL DEFAULT '$2y$10$iamusewrongpasswordtosafepassword'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randsalt`) VALUES
(32, 'luckyvyapari', '$2y$10$iamusewrongpasswordtoe2KP58/FMc6x4FU9BAhWZY4G7PucFsQ.', '', '', 'luckyvyapari@gmail.com', '', 'admin', '$2y$10$iamusewrongpasswordtosafepassword'),
(33, 'test', '$2y$10$iamusewrongpasswordtoefSlF2ELWtWrmYSUSjr2PHSJLS7rOYc6', '', '', 'test@example.com', '', 'subscriber', '$2y$10$iamusewrongpasswordtosafepassword');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
