-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 19, 2020 at 12:53 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `melody_mate`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_num` int(11) NOT NULL,
  `album_name` varchar(50) DEFAULT NULL,
  `album_desc` varchar(255) DEFAULT NULL,
  `album_genre` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `page_name` varchar(25) DEFAULT NULL,
  `album_art` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `album_location` text NOT NULL,
  `numoftracks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_num`, `album_name`, `album_desc`, `album_genre`, `username`, `page_name`, `album_art`, `timestamp`, `album_location`, `numoftracks`) VALUES
(6, 'Yeah uh', 'Hot beat from middletown CT', 'Rap', 'JoeLiquor', NULL, 26, '2020-08-12 21:29:19', '/var/www/html/melodymate/media/JoeLiquor/Yeah uhAug1220202129/', 1),
(12, 'dog', 'this is from toby foxâ€™s â€œUndertaleâ€ titled, uhh..\r\nsomething about dogs', 'indie', 'sirrman', NULL, 41, '2020-08-13 03:41:21', '/var/www/html/melodymate/media/sirrman/dogAug132020341/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_num` int(11) NOT NULL,
  `sender` varchar(25) DEFAULT NULL,
  `recipient` varchar(25) DEFAULT NULL,
  `message_datetime` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `post_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_num`, `sender`, `recipient`, `message_datetime`, `message`, `post_num`) VALUES
(1, 'lincolnwilson', 'test', '2020-08-11 06:37:29', 'First test response', 1),
(2, 'lincolnwilson', 'test', '2020-08-11 06:41:00', '2nd test response', 1),
(3, 'lincolnwilson', 'test', '2020-08-11 18:47:57', 'reply\r\n', 1),
(4, 'lincolnwilson', 'lincolnwilsonsr', '2020-08-11 21:35:20', 'Thanks!', 4),
(5, 'lincolnwilsonsr', 'lincolnwilsonsr', '2020-08-11 21:36:23', 'No problem', 4),
(6, 'toenailcity', 'lincolnwilson', '2020-08-12 21:29:14', 'great content dude', 5),
(7, 'toenailcity', 'JoeLiquor', '2020-08-12 21:32:09', 'whatâ€™s for dinner', 7),
(8, 'lincolnwilson', 'toenailcity', '2020-08-12 21:45:52', 'Uhhhhhhh yeeeaaaahhhhhhh im mike mchill', 9),
(10, 'lincolnwilson', 'JoeLiquor', '2020-08-12 21:47:31', 'I will be adding this feature soon!!', 6),
(16, 'sirrman', 'lincolnwilsonsr', '2020-08-13 03:18:44', 'hell yea!', 4),
(18, 'lincolnwilson', 'Gandalfâ€™s Nutsack', '2020-08-13 03:23:28', 'Hi', 12),
(19, 'toenailcity', 'Gandalfâ€™s Nutsack', '2020-08-13 03:23:50', 'toenails', 12),
(20, 'toenailcity', 'Gandalfâ€™s Nutsack', '2020-08-13 03:23:56', 'yeah', 13),
(29, 'toenailcity', 'JoeLiquor', '2020-08-13 03:34:28', 'can i suc camel uter ', 7),
(32, 'toenailcity', 'lincolnwilson', '2020-08-13 03:42:45', 'sarah palin', 10),
(34, 'toenailcity', 'JoeLiquor', '2020-08-13 03:43:38', 'uwu', 7),
(35, 'lincolnwilson', 'Gandalfâ€™s Nutsack', '2020-08-13 08:30:51', 'ðŸ˜‚ðŸ˜‚', 17),
(36, 'lincolnwilson', 'Gandalfâ€™s Nutsack', '2020-08-13 08:33:50', 'You can blame apple for that for making the least universal device.', 17),
(37, 'lincolnwilson', 'music shin23', '2020-08-13 23:12:58', 'who dis?', 19),
(38, 'lincolnwilson', 'Elithegotoguy', '2020-08-14 19:37:49', 'My man!', 21),
(39, 'lincolnwilson', 'JoeLiquor', '2020-08-14 20:12:18', 'Now you can!!', 6),
(40, 'lincolnwilson', 'Elithegotoguy', '2020-08-17 21:58:38', 'new reply test', 21);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `contend_id` int(11) NOT NULL,
  `content` varchar(25) DEFAULT NULL,
  `list_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`contend_id`, `content`, `list_id`) VALUES
(1, 'test', 1),
(2, 'lincolnwilson', 4),
(3, 'lincolnwilson', 3),
(4, 'test', 2),
(5, 'lincolnwilson', 5),
(6, 'lincolnwilsonsr', 2),
(7, 'lincolnwilsonsr', 1),
(8, 'lincolnwilson', 6),
(9, 'Kathleen', 1),
(10, 'lincolnwilson', 10),
(11, 'lincolnwilson', 9),
(12, 'Kathleen', 2),
(13, 'toenailcity', 1),
(14, 'lincolnwilson', 12),
(15, 'toenailcity', 13),
(16, 'JoeLiquor', 12),
(17, 'lincolnwilson', 11),
(18, 'toenailcity', 2),
(19, 'JoeLiquor', 11),
(20, 'toenailcity', 14),
(21, 'JoeLiquor', 1),
(22, 'lincolnwilson', 14),
(23, 'lincolnwilson', 15),
(26, 'lincolnwilson', 16),
(27, 'toenailcity', 15),
(28, 'Gandalfâ€™s Nutsack', 12),
(29, 'lincolnwilson', 17),
(30, 'sirrman', 2),
(31, 'toenailcity', 17),
(32, 'sirrman', 12),
(33, 'Gandalfâ€™s Nutsack', 17),
(34, 'sirrman', 16),
(35, 'JoeLiquor', 17),
(36, 'sirrman', 14),
(37, 'JoeLiquor', 15),
(38, 'Gandalfâ€™s Nutsack', 14),
(39, 'lincolnwilsonsr', 17),
(40, 'sirrman', 6),
(41, 'sirrman', 1),
(42, 'lincolnwilson', 18),
(43, 'sirrman', 15),
(44, 'Gandalfâ€™s Nutsack', 18),
(45, 'Gandalfâ€™s Nutsack', 11),
(46, 'toenailcity', 16),
(47, 'toenailcity', 19),
(48, 'asshole', 12),
(60, 'music shin23', 11),
(61, 'toenailcity', 22),
(62, 'music shin23', 1),
(63, 'lincolnwilson', 22),
(65, 'lincolnwilson', 20),
(66, 'Elithegotoguy', 1),
(67, 'lincolnwilson', 24);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `identity` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `username`, `identity`) VALUES
(1, 'pictureofme.jpg', 'lincolnwilson', 'profilepic'),
(2, 'turquoise.jpg', 'lincolnwilson', 'headerpic'),
(10, 'guitar.jpg', 'lincolnwilson', 'album_art'),
(11, 'Reimprove+Yourself+(Lincoln+Mix).wav', 'lincolnwilson', 'album_track'),
(12, 'Insomniac Spirit (Lincoln Mix).wav', 'lincolnwilson', 'album_track'),
(13, 'duane.jpg', 'test', 'profilepic'),
(14, 'allman brothers.jpg', 'test', 'headerpic'),
(15, '15971811139038290859551488353507.jpg', 'lincolnwilsonsr', 'profilepic'),
(16, 'Tsunami_by_hokusai_19th_century.jpg', 'lincolnwilsonsr', 'headerpic'),
(17, '15972659036842859926143599967797.jpg', 'Kathleen1864', 'profilepic'),
(18, '15972659036842859926143599967797.jpg', 'Kathleen1864', 'profilepic'),
(19, '20200705_150554.jpg', 'Kathleen1864', 'headerpic'),
(20, '1597266189112537265347137534892.jpg', 'Kathleen', 'profilepic'),
(21, '20200705_150554.jpg', 'Kathleen', 'headerpic'),
(22, '774BC56B-5D97-46E0-8893-26B684C6E41F.jpeg', 'toenailcity', 'profilepic'),
(23, '65E02221-DDEE-495F-B2C2-7F9301815124.jpeg', 'toenailcity', 'headerpic'),
(24, '61A2EEED-2F82-4EF0-9CC9-8D4BC6891385.jpeg', 'JoeLiquor', 'profilepic'),
(25, '197A9DB4-8949-4A6C-B367-9AE8F71DE4C3.jpeg', 'JoeLiquor', 'headerpic'),
(26, '1F500FDA-2B48-44AF-A540-AA555DB15780.jpeg', 'JoeLiquor', 'album_art'),
(29, 'E4F15E1D-5D02-4503-9B17-D762F361E2DE.jpeg', 'sirrman', 'profilepic'),
(30, 'E665BC23-925A-4D60-8CB0-E52837878C89.jpeg', 'sirrman', 'headerpic'),
(32, '0D60EC47-7BC3-4258-8596-FF925C39E5C3.jpeg', 'sirrman', 'track_art'),
(33, 'The Binding of Dan.band.zip', 'sirrman', 'track'),
(34, '52C529BF-2C7E-411A-ABCF-260E000516B0.jpeg', 'sirrman', 'album_art'),
(35, '52C529BF-2C7E-411A-ABCF-260E000516B0.jpeg', 'sirrman', 'album_art'),
(36, '3AB7EEA7-740E-43EF-A29E-4A0DA3400959.jpeg', 'sirrman', 'album_art'),
(37, '3AB7EEA7-740E-43EF-A29E-4A0DA3400959.jpeg', 'sirrman', 'album_art'),
(38, '4246E8D1-2801-4F40-8EFC-FAD832DFDC97.jpeg', 'a', 'profilepic'),
(39, '5D6B9A77-171B-43B7-A746-2DC5BDD7C4AA.jpeg', 'asshole', 'profilepic'),
(40, '8B821529-3D82-4242-8B04-F667DD19CA90.jpeg', 'asshole', 'headerpic'),
(41, '3AB7EEA7-740E-43EF-A29E-4A0DA3400959.jpeg', 'sirrman', 'album_art'),
(42, 'The Binding of Dan.wav', 'sirrman', 'album_track'),
(43, 'rolling-stones-tongue-logo.jpg', 'lincolnwilson', 'album_art'),
(44, 'Paint it Black.mp3', 'lincolnwilson', 'album_track'),
(45, '4BBC700B-8B0F-4FA5-A40E-AA51DF6F7D16.jpeg', 'music shin23', 'profilepic'),
(46, 'A98EA7B6-4380-4CF9-BB82-487626AAE630.jpeg', 'music shin23', 'headerpic'),
(47, 'Screenshot_20200813-205401.png', 'Elithegotoguy', 'profilepic'),
(48, '15974302226891120906845988057323.jpg', 'Elithegotoguy', 'headerpic');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `list_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_id`, `name`) VALUES
(1, 'lincolnwilson_following'),
(2, 'lincolnwilson_followers'),
(3, 'test_following'),
(4, 'test_followers'),
(5, 'lincolnwilsonsr_following'),
(6, 'lincolnwilsonsr_followers'),
(7, 'Kathleen1864_following'),
(8, 'Kathleen1864_followers'),
(9, 'Kathleen_following'),
(10, 'Kathleen_followers'),
(11, 'toenailcity_following'),
(12, 'toenailcity_followers'),
(13, 'JoeLiquor_following'),
(14, 'JoeLiquor_followers'),
(17, 'sirrman_following'),
(18, 'sirrman_followers'),
(21, 'music shin23_following'),
(22, 'music shin23_followers'),
(23, 'Elithegotoguy_following'),
(24, 'Elithegotoguy_followers');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_num` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `page_name` varchar(25) DEFAULT NULL,
  `media_type` varchar(25) DEFAULT NULL,
  `media_file` int(11) DEFAULT NULL,
  `media_img` int(11) DEFAULT NULL,
  `album_num` int(11) DEFAULT NULL,
  `track_num` int(11) DEFAULT NULL,
  `media_name` varchar(50) DEFAULT NULL,
  `media_desc` varchar(255) DEFAULT NULL,
  `media_genre` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_num`, `username`, `page_name`, `media_type`, `media_file`, `media_img`, `album_num`, `track_num`, `media_name`, `media_desc`, `media_genre`) VALUES
(2, 'lincolnwilson', NULL, 'album_track', 11, NULL, 5, 1, 'Reimprove Yourself', 'A couple of original songs I made while in my previous band.', 'Rock'),
(3, 'lincolnwilson', NULL, 'album_track', 12, NULL, 5, 2, 'Insomniac Spirit', 'A couple of original songs I made while in my previous band.', 'Rock'),
(4, 'sirrman', NULL, 'track', 33, 32, NULL, NULL, 'ye', 'just an idea', 'arcade'),
(5, 'sirrman', NULL, 'album_track', 42, NULL, 12, 1, 'ðŸ¶', 'this is from toby foxâ€™s â€œUndertaleâ€ titled, uhh..\r\nsomething about dogs', 'indie'),
(6, 'lincolnwilson', NULL, 'album_track', 44, NULL, 13, 1, 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_name` varchar(25) NOT NULL,
  `admins` int(11) DEFAULT NULL,
  `editors` int(11) DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `following` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pm`
--

CREATE TABLE `pm` (
  `pm_num` int(11) NOT NULL,
  `message` text NOT NULL,
  `message_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sender` varchar(25) NOT NULL,
  `recipient` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pm`
--

INSERT INTO `pm` (`pm_num`, `message`, `message_ts`, `sender`, `recipient`) VALUES
(1, 'test', '2020-08-11 06:17:47', 'lincolnwilson', 'test'),
(2, 'test', '2020-08-11 06:17:54', 'lincolnwilson', 'test'),
(3, 'test', '2020-08-11 06:21:12', 'lincolnwilson', 'test'),
(4, 'test', '2020-08-11 06:22:15', 'lincolnwilson', 'test'),
(5, 'Hi', '2020-08-11 06:37:05', 'test', 'lincolnwilson'),
(6, 'message', '2020-08-11 18:48:32', 'lincolnwilson', 'test'),
(7, '', '2020-08-11 21:29:39', 'lincolnwilsonsr', 'lincolnwilson'),
(8, 'Looks like your really getting it to work.', '2020-08-11 21:30:51', 'lincolnwilsonsr', 'lincolnwilson'),
(9, 'Thank you dad!', '2020-08-11 21:35:47', 'lincolnwilson', 'lincolnwilsonsr'),
(10, 'Hey mom!', '2020-08-12 21:07:44', 'lincolnwilson', 'Kathleen'),
(11, 'Hey son. Love the new suit', '2020-08-12 21:08:32', 'Kathleen', 'lincolnwilson'),
(12, 'Thank you mom', '2020-08-12 21:08:56', 'lincolnwilson', 'Kathleen'),
(13, 'Uuuuu im mike mchill', '2020-08-12 21:25:02', 'lincolnwilson', 'toenailcity'),
(16, 'test', '2020-08-14 17:40:35', 'lincolnwilson', 'lincolnwilsonsr'),
(17, 'test', '2020-08-14 17:57:16', 'lincolnwilson', 'test'),
(18, 'hi', '2020-08-14 17:57:19', 'test', 'lincolnwilson'),
(19, 'testtesttest', '2020-08-17 21:59:34', 'lincolnwilson', 'test'),
(20, 'testtesttesttest', '2020-08-17 21:59:44', 'test', 'lincolnwilson');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_num` int(11) NOT NULL,
  `post_content` varchar(255) DEFAULT NULL,
  `media_num` int(11) DEFAULT NULL,
  `post_datetime` datetime DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `page_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_num`, `post_content`, `media_num`, `post_datetime`, `username`, `page_name`) VALUES
(1, 'First test post.', NULL, '2020-08-11 06:07:20', 'test', NULL),
(2, '2nd test post', NULL, '2020-08-11 06:40:19', 'test', NULL),
(3, '3rd test post', NULL, '2020-08-11 06:40:46', 'test', NULL),
(4, 'Finally got the wheels put on Melody Mate websight. Nice!!!\r\n', NULL, '2020-08-11 21:32:47', 'lincolnwilsonsr', NULL),
(5, 'Testing out this website, hope my friends and family enjoy!', NULL, '2020-08-12 21:06:34', 'lincolnwilson', NULL),
(6, 'Well you canâ€™t change your profile picture or header after creating it. ', NULL, '2020-08-12 21:25:28', 'JoeLiquor', NULL),
(7, 'Eating soon lol', NULL, '2020-08-12 21:29:38', 'JoeLiquor', NULL),
(8, 'yea', NULL, '2020-08-12 21:33:16', 'toenailcity', NULL),
(9, 'yyyyyyyyyea', NULL, '2020-08-12 21:33:29', 'toenailcity', NULL),
(10, 'A fix to the bio bug has been implemented.', NULL, '2020-08-12 22:48:58', 'lincolnwilson', NULL),
(11, 'h', NULL, '2020-08-13 01:00:27', 'toenailcity', NULL),
(12, 'Toenails ', NULL, '2020-08-13 03:20:58', 'Gandalfâ€™s Nutsack', NULL),
(13, '', NULL, '2020-08-13 03:23:17', 'Gandalfâ€™s Nutsack', NULL),
(14, 'I canâ€™t upload albums \r\nI canâ€™t upload videos or anything besides MP3\r\n', NULL, '2020-08-13 03:30:44', 'Gandalfâ€™s Nutsack', NULL),
(16, 'follow my sound cloud \r\n@XxX_PÃ¨Ã‘Ä†iÅ_XxX', NULL, '2020-08-13 03:36:17', 'Gandalfâ€™s Nutsack', NULL),
(18, 'A new formatting for album viewing has been implemented as well as proper ordering of posts on home page, and your own posts in your feed. More to come!', NULL, '2020-08-13 11:50:02', 'lincolnwilson', NULL),
(19, 'i hate music', NULL, '2020-08-13 18:11:59', 'music shin23', NULL),
(20, 'testtest', NULL, '2020-08-14 17:54:39', 'lincolnwilson', NULL),
(21, 'Herro ', NULL, '2020-08-14 19:26:53', 'Elithegotoguy', NULL),
(22, 'test', NULL, '2020-08-17 21:58:10', 'lincolnwilson', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) DEFAULT NULL,
  `highlighted_media` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `security_q` varchar(100) DEFAULT NULL,
  `security_a` varchar(50) DEFAULT NULL,
  `profile_pic` int(11) DEFAULT NULL,
  `header_pic` int(11) DEFAULT NULL,
  `profile_bio` text,
  `following` int(11) DEFAULT NULL,
  `followers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `highlighted_media`, `email`, `security_q`, `security_a`, `profile_pic`, `header_pic`, `profile_bio`, `following`, `followers`) VALUES
('Elithegotoguy', 'EJF10136884414', 'album', 'farlandboy@gmail.com', 'Mothers maiden name', 'Bruno', 47, 48, 'I\'m the drummer you be needin', NULL, NULL),
('JoeLiquor', 'test123', 'album', 'JLiquori1999@gmail.com', 'Dogâ€™s name', 'Jagger', 24, 25, 'Test test yâ€™all, who got the vibes its the Tribe yâ€™all (Tribe yâ€™all)', NULL, NULL),
('Kathleen', 'Fullerstreet1', 'album', 'Kathleen1864@outlook.com', 'Mother maiden name', 'Graves', 20, 21, 'I am testing this out for my son\'s website', NULL, NULL),
('lincolnwilson', 'chaotic12', 'album', 'lincolnwilson16@gmail.com', 'My first cats name', 'smokey', 1, 2, 'Creator and sole developer of MelodyMate.<br />\r\nSinger / Songwriter in the band Naked Air.', NULL, NULL),
('lincolnwilsonsr', 'tunes', 'album', 'lincolnwilson29@gmail.com', 'First car', 'Impala', 15, 16, '', NULL, NULL),
('music shin23', 'HsvkR+Q4u89w', 'album', 'bandeaux11@icloud.com', 'security questions are shit. the answer is A', 'A', 45, 46, 'i hate music', NULL, NULL),
('sirrman', 'thatsagoodquestion', 'album', 'sethdotsotolongo@gmail.com', 'good food?', 'eggroles', 29, 30, '(ðŸŽ¼ðŸŽ¹)<(^~^<)\r\nelp, rick wakeman, gorillaz, black sabbath, later beatles\r\n\r\nyea man', NULL, NULL),
('test', 'password', 'album', 'fakeemail@gmail.com', 'test', 'test', 13, 14, 'test', NULL, NULL),
('toenailcity', 'Squeegulls7', 'album', 'chrisweenx@gmail.com', 'Poop?', 'Butt', 22, 23, 'yeah iâ€™m mike mchill iâ€™m from middletown ct my boss rich is an asshole', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_num`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_num`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`contend_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_num`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_name`);

--
-- Indexes for table `pm`
--
ALTER TABLE `pm`
  ADD PRIMARY KEY (`pm_num`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_num`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `contend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pm`
--
ALTER TABLE `pm`
  MODIFY `pm_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
