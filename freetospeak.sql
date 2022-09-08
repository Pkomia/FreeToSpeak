

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

 
--
-- Database: `freetospeak`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_pass` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Admin Kumar', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL,
  `course_desc` text COLLATE utf8_bin NOT NULL,
  `course_author` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_img` text COLLATE utf8_bin NOT NULL,
  `course_duration` text COLLATE utf8_bin NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(8, 'Learn English for kids', 'This course is your \"Free Pass\" to learning English. It is the most direct and to the point complete online English course.', 'Ad raj', '../image/courseimg/kids2.jpg', '3 Hours', 1655, 1800),
(9, 'How to Speak English', 'This course will help you get all the topic to improving your Speaking ability.', 'Raj Kumar', '../image/courseimg/spk1.jpg', '3 Months', 700, 1700),
(10, 'Improve Personality', 'This is the most comprehensive, yet straight-forward, course for the improving your Personality.', 'Rajat Kumar', '../image/courseimg/comm1.jpg', '4 Months', 800, 1800);
 
-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_bin NOT NULL,
  `respmsg` text COLLATE utf8_bin NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`) VALUES
(3, 'ORDS98956453', 'ant@example.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-12'),
(7, 'ORDS57717951', 'jay@gmail.com', 9, 'TXN_SUCCESS', 'Txn Success', 400, '2019-09-13'),
(8, 'ORDS22968322', 'mario@gmail.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-13'),
(9, 'ORDS78666589', 'ignou@gmail.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-19'),
(10, 'ORDS59885531', 'sonam@gmail.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2020-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text COLLATE utf8_bin NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(3, 'My life at FreeToSpeak made me stronger and took me a step ahead for being an independent women. I am thankful to all the teachers who supported us and corrected us throughout our career. I am very grateful to the FreeToSpeak for providing us the best course.', 171),
(8, 'I am grateful to FreeToSpeak .', 172),
(9, 'FreeToSpeak is a place of learning, English Spoken, culture, literature and many such life preaching activities. Studying at the FreeToSpeak brought an added value to my life.', 173),
(10, 'Think Magical, that is one thing that FreeToSpeak urges in and to far extent succeed in teaching to its students which invariably helps to achieve what you need.', 174),
(12, 'Knowledge is power. Information is liberating. Education is the premise of progress, in every society, in every family.', 180),
(13, 'This is Awesome Platform Jindabaad', 182);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text COLLATE utf8_bin NOT NULL,
  `lesson_desc` text COLLATE utf8_bin NOT NULL,
  `lesson_link` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(32, 'Introduction to Alphabet ', 'Introduction to Alphabet Desc', '../lessonvid/video2.mp4', 8, 'Learn English for kids'),
(33, 'How Alphabet Learn', 'How Alphabet Learn Descc', '../lessonvid/video3.mp4', 8, 'Learn English for kids'),
(34, 'Why English is necessary', 'Why English is necessary Desc', '../lessonvid/ video9.mp4', 8, 'Learn English for kids'),
(35, 'Everyone should learn English', 'Everyone should learn English  Desccc', '../lessonvid/video1.mp4', 8, 'Learn English for kids'),
(36, 'How to speak English fast', 'How to speak English fast Desc', '../lessonvid/ video4.mp4', 9, 'How to Speak English'),
(37, 'English Conversation-1', 'English Conversation-1', '../lessonvid/video5.mp4', 9, 'How to Speak English'),
(38, 'English Conversation-2', 'English Conversation desc', '../lessonvid/video6.mp4', 9, 'How to Speak English'),
(39, 'Importance of PD', 'Importance of PD desc1', '../lessonvid/ video7.mp4', 10, 'Improve Personality'),
(40, 'How Improve PD', 'Beat Way to Improve PD Desc2', '../lessonvid/ video8.mp4', 10, 'Improve Personality'),
(41, 'Lec-1', 'You need to follow each step desc', '../lessonvid/ video10.mp4', 10, 'Improve Personality');
 

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_pass` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_occ` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(171, 'Captain Marvel', 'cap@example.com', '123456', ' Web Designer', '../image/stu/student2.jpg'),
(172, 'Ant Man', 'ant@example.com', '123456', '  Student', '../image/stu/student4.jpg'),
(173, ' Dr Strange', 'doc@example.com', '123456', '  Student', '../image/stu/student1.jpg'),
(174, 'Scarlet Witch', 'witch@example.com', '123456', ' Designer', '../image/stu/student3.jpg'),
(176, ' Shaktiman', 'shaktiman@gmail.com', '123456', 'Software ENgg', '../image/stu/shaktiman.jpg'),
(178, ' Mario', 'mario@gmail.com', '1234567', ' Student', '../image/stu/super-mario-2690254_1280.jpg'),
(182, ' sonam', 'sonam@gmail.com', '123456', ' Student', '../image/stu/student2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
COMMIT;
 
