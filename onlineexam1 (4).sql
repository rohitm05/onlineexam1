-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 10, 2018 at 04:41 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.31-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineexam1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `password` varchar(100) NOT NULL COMMENT 'admin123'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `mobile`, `password`) VALUES
(1, 'admin', 'admin@email.com', 123456789, 'f865b53623b121fd34ee5426c792e5c33af8c227');

-- --------------------------------------------------------

--
-- Table structure for table `category1`
--

CREATE TABLE `category1` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_des` text NOT NULL,
  `post` varchar(50) NOT NULL,
  `exper` text NOT NULL,
  `time` decimal(3,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `category1`
--

INSERT INTO `category1` (`id`, `category_name`, `category_des`, `post`, `exper`, `time`, `created_at`, `updated_at`) VALUES
(12, 'English Aptitude', 'English improves your vocabulary', '1', '1', '0.30', '2018-09-01 05:34:18', '2018-09-04 09:14:41'),
(13, 'PHP', 'Question paper of php', '2', '2', '0.25', '2018-09-01 06:22:30', '2018-09-01 06:22:30'),
(14, 'PHP Fresher', 'This is PHP Fresher question paper', '2', '1', '0.50', '2018-09-01 07:38:14', '2018-09-01 07:38:14'),
(16, 'PHP Advance', 'PHP all Questions	', '2', '3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22', '0.30', '2018-09-01 08:41:24', '2018-09-04 05:46:30'),
(17, 'General Knowledge', 'general knowledge paper', '1,2,3,4,5,6,7,8,10,11', '1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22', '0.30', '2018-09-01 10:09:56', '2018-09-04 11:10:50'),
(18, 'Logical Reasoning Aptitude', 'Logical Reasoning Aptitude	', '1,2,3,4,5,6,7,8,10,11', '1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22', '0.30', '2018-09-01 11:13:17', '2018-09-04 11:10:32'),
(19, 'My Sql', 'Paper of My Sql	', '1,2', '1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22', '0.25', '2018-09-01 11:33:51', '2018-09-04 11:10:38'),
(20, 'qwe', 'zxc', '3,10', '1,2', '0.30', '2018-09-10 08:47:19', '2018-09-10 08:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `value` varchar(10) NOT NULL,
  `experience` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `value`, `experience`) VALUES
(1, '0', 'Fresher'),
(2, '0.5', '0.5 Yrs'),
(3, '1', '1.0 Yrs'),
(4, '1.5', '1.5 Yrs'),
(5, '2', '2.0 Yrs'),
(6, '2.5', '2.5 Yrs'),
(7, '3', '3.0 Yrs'),
(8, '3.5', '3.5 Yrs'),
(9, '4', '4.0 Yrs'),
(10, '4.5', '4.5 Yrs'),
(11, '5', '5.0 Yrs'),
(12, '5.5', '5.5 Yrs'),
(13, '6', '6.0 Yrs'),
(14, '6.5', '6.5 Yrs'),
(15, '7', '7.0 Yrs'),
(16, '7.5', '7.5 Yrs'),
(17, '8', '8.0 Yrs'),
(18, '8.5', '8.5 Yrs'),
(19, '9', '9.0 Yrs'),
(20, '9.5', '9.5 Yrs'),
(21, '10', '10 Yrs'),
(22, 'more_then', 'Above 10 Yrs');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post`, `created_at`, `updated_at`) VALUES
(1, 'Fresher', '2018-08-21 09:26:52', '2018-08-21 09:26:52'),
(2, 'PHP Developer', '2018-08-21 09:27:32', '2018-08-21 09:27:32'),
(3, 'IOS Developer', '2018-08-21 09:27:32', '2018-08-21 09:27:32'),
(4, 'Python Developer', '2018-08-21 09:28:18', '2018-08-21 09:28:18'),
(5, 'Business Analyst', '2018-08-21 09:28:18', '2018-08-21 09:28:18'),
(6, 'Quality Assurance', '2018-08-21 09:29:15', '2018-08-21 09:36:50'),
(7, 'Sales', '2018-08-21 09:29:15', '2018-08-21 09:29:15'),
(8, 'Digital Marketing', '2018-08-21 09:29:33', '2018-08-21 09:29:33'),
(10, 'Android Developer', '2018-08-24 10:51:50', '2018-08-24 10:51:50'),
(11, 'UI/UX Developer', '2018-08-24 13:10:34', '2018-08-24 13:10:34'),
(12, 'asd', '2018-09-10 08:46:33', '2018-09-10 08:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `question1`
--

CREATE TABLE `question1` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `answer1` longtext NOT NULL,
  `answer2` longtext NOT NULL,
  `answer3` longtext NOT NULL,
  `answer4` longtext NOT NULL,
  `correct_ans` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `question1`
--

INSERT INTO `question1` (`id`, `category_id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_ans`, `create_at`, `update_at`) VALUES
(121, 12, 'His means _______ ample', 'Is', 'Am', 'Are', 'Have', 3, '2018-09-01 05:40:11', '2018-09-01 05:40:11'),
(122, 12, 'A few hours ago he was in good health _______ I was shocked to see the changes in a few hours.', 'And', 'But', 'So', 'Because', 1, '2018-09-01 05:43:15', '2018-09-01 05:43:15'),
(123, 12, 'Of late he ________ the habit of postponing things.', 'Has developed', 'Developed', 'Had developed', 'Is developing', 1, '2018-09-01 05:45:19', '2018-09-01 05:45:19'),
(124, 12, 'She has been learning English ______ 1987.', 'From', 'Since', 'For', 'None', 2, '2018-09-01 05:50:30', '2018-09-01 05:50:30'),
(125, 12, 'His face _______ as hen pale.', 'Turned', 'Color', 'Became', 'Change', 1, '2018-09-01 05:53:34', '2018-09-01 05:53:34'),
(126, 12, 'He is married _______ (Preposition) my cousin.', 'To', 'With', 'By', 'In', 1, '2018-09-01 05:54:25', '2018-09-01 05:54:25'),
(127, 12, 'I usually go to school ______ bus.', 'On', 'By', 'In', 'With', 2, '2018-09-01 05:56:25', '2018-09-01 05:56:25'),
(128, 12, 'He took care of her _________ she was restored to health.', 'When', 'After', 'Before', 'Till', 4, '2018-09-01 05:57:30', '2018-09-01 05:57:30'),
(129, 12, 'The year 1763 is memorable to me ______ had the pleasure of meeting Johnson that year.', 'And', 'But', 'So', 'Because', 4, '2018-09-01 05:59:03', '2018-09-01 05:59:03'),
(130, 12, '________ (Article) calf was limping.', 'A', 'An', 'The', 'None', 1, '2018-09-01 06:01:52', '2018-09-01 06:01:52'),
(131, 12, 'This cat _____ to me', 'Belong', 'Own', 'Belongs', 'Owns', 3, '2018-09-01 06:04:22', '2018-09-01 06:04:22'),
(132, 12, 'Choose the correct word the correctly matches the meaning of the given word -	Which word means to deter: to discourage', 'Empathize', 'Diminish', 'Appreciate', 'Daunt', 4, '2018-09-01 06:05:30', '2018-09-01 06:05:30'),
(133, 12, 'Which word does not have similar meaning to Comprise', 'Compose', 'Cover', 'Contain', 'Encompass', 2, '2018-09-01 06:08:33', '2018-09-01 06:08:33'),
(134, 12, 'Choose the word most nearly opposite in meaning to : turbid', 'Pretentious', 'Dull', 'Clear', 'Opaque', 3, '2018-09-01 06:10:04', '2018-09-01 06:10:04'),
(135, 12, 'Which word means - continuous; eternal; never ceasing', 'Indistinct', 'Perpetual', 'Vigilant', 'Imperturbable', 2, '2018-09-01 06:10:58', '2018-09-01 06:10:58'),
(136, 12, 'Which word does not have a similar meaning to - outcome', 'Affect', 'Result', 'Upshot', 'Effect', 1, '2018-09-01 06:12:03', '2018-09-01 06:12:03'),
(137, 12, 'Which word means-with passionate or intense feeling', 'Temperamental', 'Transitory', 'Ardent', 'Disconsolate', 3, '2018-09-01 06:15:37', '2018-09-01 06:15:37'),
(138, 12, 'Solve the jumbled up sentences and choose the correct option. When he - P: did not know Q: he was nervous and R: heard the hue and cry at midnight S: what to do, The proper sequence should be:', 'RQPS', 'QSPR', 'SQPR', 'PQRS', 1, '2018-09-01 06:17:03', '2018-09-01 06:17:03'),
(139, 12, 'since the beginning of history P: have managed to catch Q: the Eskimos and Red Indians R: by a very difficulty method S: a few specimens of this aquatic animal The proper sequence should be:', 'QRPS', 'SQPR', 'SQRP', 'QPSR', 4, '2018-09-01 06:19:17', '2018-09-01 06:19:17'),
(140, 12, 'A French woman P: committed suicide Q: where she had put up R: who had come to Calcutta S: by jumping from the first floor balcony of the hotel The proper sequence should be:', 'PRQS', 'QSRP', 'RPSQ', 'SRQP', 3, '2018-09-01 06:20:13', '2018-09-01 06:20:13'),
(141, 13, '&lt;?php $x=array(&quot;aaa&quot;,&quot;ttt&quot;,&quot;www&quot;,&quot;ttt&quot;,&quot;yyy&quot;,&quot;tttt&quot;); $y=array_count_values($x); echo $y[ttt]; ?&gt;', '2', '3', '1', '4', 1, '2018-09-01 06:23:24', '2018-09-01 06:23:24'),
(142, 13, 'How do you get information from a form that is submitted using the &quot;get&quot; method?', '$_GET[];', 'Request.Form;', 'Request.QueryString;', '$_POST[];', 1, '2018-09-01 06:24:17', '2018-09-01 06:24:17'),
(143, 13, 'PHP code is embedded directly into XHTML document?', 'False', 'True', '-', '-', 2, '2018-09-01 06:25:11', '2018-09-01 06:25:11'),
(144, 13, 'Is it possible to submit a form with out a submit button?', 'Yes', 'No', '-', '-', 1, '2018-09-01 06:25:56', '2018-09-01 06:25:56'),
(145, 13, 'Full form of PHP', 'PreHypertextProcessor', 'HypertextPreprocessor', 'Hypertext Postprocessor', 'PostHypertextProcessor', 2, '2018-09-01 06:26:38', '2018-09-01 06:26:38'),
(146, 13, 'Which of the following function is used to pick one or more random values from PHP Array?', 'array_rand()', 'array_random()', 'Random_array()', 'Rand_array()', 1, '2018-09-01 06:40:55', '2018-09-01 06:40:55'),
(147, 13, 'Assume that your php file &#039;index.php&#039; in location c:/apache/htdocs/phptutor/index.php. If you used $_SERVER[&#039;PHP_SELF&#039;] function in your page, then what is the return value of this function ?', 'phptutor/index.php', '/phptutor/index.php();', 'c:/apache/htdocs/phptutor/index.php', 'index.php', 2, '2018-09-01 06:41:49', '2018-09-01 06:41:49'),
(148, 13, 'Which operator is used to concatenate two strings in php?', 'dot operator (.)', 'plus operator (+)', '-', '-', 1, '2018-09-01 06:42:29', '2018-09-01 06:42:29'),
(149, 13, 'In PHP, which of the following function is used to insert content of one php file into another php file before server executes it', 'include[]', '#include()', 'include()', '#include{}', 3, '2018-09-01 06:43:17', '2018-09-01 06:43:17'),
(150, 13, 'what will be the ouput of below code ? Assume that today is 2009-5-19:2:45:32 pm &lt;?php $today = date(&quot;F j, Y, g:i a&quot;); ?&gt;', 'may 19,09,2:45:32 PM', 'May 19, 2009, 2:45 pm', 'May 19,2009,14:45:32 pm', 'May 19,2009,14:45:32 PM', 2, '2018-09-01 06:44:02', '2018-09-01 06:44:02'),
(151, 13, 'Which of the following function is used for terminate the script execution in PHP?', 'break()', 'quit()', 'die()', '-', 3, '2018-09-01 06:45:15', '2018-09-01 06:45:15'),
(152, 13, 'What function used to print statement in PHP?', 'echo();', 'printf', '&quot; &quot;', '-', 1, '2018-09-01 06:46:58', '2018-09-01 06:46:58'),
(153, 13, 'PHP variables are', 'Multitype variables', 'Double type variables', 'Single type variable', 'Trible type variables', 1, '2018-09-01 06:47:54', '2018-09-01 06:47:54'),
(154, 13, 'How would you add 1 to the variable $count?', 'incr count;', '$count++;', '$count =+1', 'incr $count;', 2, '2018-09-01 06:48:41', '2018-09-01 06:48:41'),
(155, 13, 'what is the return value of this substr function? &lt;?php $rest = substr(&quot;abcdef&quot;, -1); $rest = substr(&quot;abcdef&quot;, 0, -1); ?&gt;', 'f,abcde', 'a,fedcb', 'b,abcdef', 'a,abcde', 1, '2018-09-01 06:49:41', '2018-09-01 06:49:41'),
(156, 13, 'Father of PHP?', 'Larry Wall', 'Rasmus Lerdorf', 'James Gosling', 'Guido Van Rossum', 2, '2018-09-01 06:50:33', '2018-09-01 06:50:33'),
(157, 13, 'In PHP the error control operator is_______', '.', '*', '@', '&amp;', 3, '2018-09-01 06:51:36', '2018-09-01 06:51:36'),
(158, 13, '$str=&quot;3dollars&quot;; $a=20; $a+=$str; print($a); ?&gt; Output ?', '23dollars', '203dollars', '320dollars', '23', 4, '2018-09-01 06:52:56', '2018-09-01 06:52:56'),
(159, 13, '&lt;?php echo $_SERVER[&#039;REMOTE_ADDR&#039;]; ?&gt;', 'shows the IP address of the local system', 'shows the IP address of the visitor', 'shows the IP address of the webserver', 'None of the above', 2, '2018-09-01 06:54:19', '2018-09-01 06:54:19'),
(160, 13, 'PEAR stands for?', 'PHP Extension and Application Record', 'PHP Extended and Application Repository', 'PHP Extension and Application Repository', 'PHP Extension and Applicable Repository', 3, '2018-09-01 06:55:41', '2018-09-01 06:55:41'),
(161, 13, 'How does the identity operator === compare two values?', 'It converts both to a common compatible data type and then compares the values', 'It returns True only if they are both of the same type and value', 'It converts both values to strings and compares them', 'If the two values are strings, it performs a syntax comparison', 2, '2018-09-01 06:58:40', '2018-09-01 06:58:40'),
(162, 13, 'In which circumstance it is not possible to assign default value to a parameter while declaring a function?', 'When the parameter is Boolean', 'When the function is being declared as a member of a class', 'When the parameter is being declared as passed by reference', 'When the function contains only one parameter', 3, '2018-09-01 06:59:39', '2018-09-01 06:59:39'),
(163, 13, 'Which of the following tags is not a valid way t o begin and end a PHP code block?', '&lt;% %&gt;', '&lt;! !&gt;', '&lt;? ?&gt;', '&lt;?= ?&gt;', 2, '2018-09-01 07:00:36', '2018-09-01 07:00:36'),
(164, 13, 'What is x+ mode in fopen() used for?', 'Read/Write. Creates a new file. Returns FALSE and an error if file already exists', 'Write only. Creates a new file. Returns TRUE and an error if file already exists', 'Read/Write. Opens and clears the contents of file', 'Write. Opens and clears the contents of file', 1, '2018-09-01 07:01:39', '2018-09-01 07:01:39'),
(165, 13, 'What option should be enable to allow php short tags in php.ini?', 'short_tag', 'short_open_tag', 'asp_tag', 'allow_all_tag', 2, '2018-09-01 07:02:53', '2018-09-01 07:02:53'),
(166, 13, 'On failure of which statement the script execution stops displaying error/warning message?', 'rinclude ()', 'require ()', 'both of above', 'None of above', 2, '2018-09-01 07:03:57', '2018-09-01 07:03:57'),
(167, 13, '$somerar=15; function ad it () { GLOBAL $somevar; $somerar++ ; echo &quot;somerar is $somerar&quot;; } addit ();', 'somerar is 15', 'somerar is 16', 'somerar is 1', 'somerar is $ somerar', 2, '2018-09-01 07:04:57', '2018-09-01 07:04:57'),
(168, 13, 'Which of the following functions do not return a timestamp?', 'time()', 'date()', 'strtotime()', 'localtime()', 2, '2018-09-01 07:06:00', '2018-09-01 07:06:00'),
(169, 13, '................Checks a date for numeric validity.', 'check_date', 'verifydate', 'Verify_date', 'checkdate', 4, '2018-09-01 07:06:43', '2018-09-01 07:06:43'),
(170, 13, 'What function can you use to create your own streams using the PHP stream wrappers and register them within PHP?', 'wrapper_register', 'stream_wrapper', 'stream_wrapper_register', 'stream_wrapper_reg', 3, '2018-09-01 07:08:13', '2018-09-01 07:08:13'),
(171, 13, 'Which of the following network transports doesn&#039;t PHP support?', 'tcp', 'udp', 'udg', 'pdc', 4, '2018-09-01 07:09:06', '2018-09-01 07:09:06'),
(172, 13, 'The ___________ function can be used to compare two strings using a case-insensitive binary algorithm', 'strcmp()', 'stricmp()', 'strcasecmp()', 'stristr()', 3, '2018-09-01 07:10:14', '2018-09-01 07:10:14'),
(173, 13, 'What is the best all-purpose way of comparing two strings?', 'Using the strpos function', 'Using the == operator', 'Using strcasecmp()', 'Using strcmp()', 3, '2018-09-01 07:11:34', '2018-09-01 07:11:34'),
(174, 13, 'Which of the following is not an SQL aggregate function?', 'AVG', 'SUM', 'MIN', 'CURRENT_DATE()', 4, '2018-09-01 07:12:27', '2018-09-01 07:12:27'),
(175, 13, 'Use the .............. to delete the data inside the table, and not the table itself?', 'DROP TABLE', 'DELETE TABLE', 'TRUNCATE TABLE', 'REMOVE TABLE', 3, '2018-09-01 07:13:38', '2018-09-01 07:13:38'),
(176, 13, 'What does the DESC keyword do in the following query? SELECT * FROM MY_TABLE WHERE ID &gt; 0 ORDER BY ID, NAME DESC', 'It causes the dataset returned by the query to be sorted in descending order', 'It causes rows with the same ID to be sorted by NAME in ascending order', 'It causes rows with the same ID to be sorted by NAME in descending order', 'It causes rows to be sorted by NAME first and then by ID', 3, '2018-09-01 07:14:29', '2018-09-01 07:14:29'),
(177, 13, 'What does the DESC keyword do in the following query? SELECT * FROM MY_TABLE WHERE ID &gt; 0 ORDER BY ID, NAME DESC', 'It causes the dataset returned by the query to be sorted in descending order', 'It causes rows with the same ID to be sorted by NAME in ascending order', 'It causes rows with the same ID to be sorted by NAME in descending order', 'It causes rows to be sorted by NAME first and then by ID', 3, '2018-09-01 07:25:42', '2018-09-01 07:25:42'),
(178, 13, 'What array will you get if you convert an object to an array?', 'An array with properties of that object as the array&#039;s elements.', 'An array with properties of that array as the object&#039;s elements.', 'An array with properties of that object as the Key elements.', 'An array with keys of that object as the array\'s elements.', 1, '2018-09-01 07:27:26', '2018-09-01 07:27:26'),
(179, 13, 'Which of the following functions reads the entire contents of a file?', 'fgets()', 'file_get_contents()', 'fread()', 'readfile()', 2, '2018-09-01 07:29:50', '2018-09-01 07:29:50'),
(180, 14, 'Which of the following tags is not a valid way t o begin and end a PHP code block?', '&lt;% %&gt;', '&lt;?= ?&gt;', '&lt;! !&gt;', '&lt;? ?&gt;', 3, '2018-09-01 07:39:23', '2018-09-01 07:39:23'),
(181, 14, 'In PHP, which of the following function is used to insert content of one php file into another php file before server executes it?', 'include[]', '#include()', 'include()', '#include{}', 3, '2018-09-01 07:43:00', '2018-09-01 07:43:00'),
(182, 14, 'What is the full form of PHP?', 'PreHypertextProcessor', 'HypertextPreprocessor', 'Hypertext Postprocessor', 'PostHypertextProcessor', 2, '2018-09-01 07:47:06', '2018-09-01 07:47:06'),
(183, 14, '&lt;?php $x=array(&quot;aaa&quot;,&quot;ttt&quot;,&quot;www&quot;,&quot;ttt&quot;,&quot;yyy&quot;,&quot;tttt&quot;); $y=array_count_values($x); echo $y[ttt]; ?&gt;', '2', '3', '1', '4', 1, '2018-09-01 07:48:19', '2018-09-01 07:48:19'),
(184, 14, 'How do you get information from a form that is submitted using the &quot;get&quot; method?', '$_GET[];', 'Request.Form;', 'Request.QueryString;', '$_POST[];', 1, '2018-09-01 07:49:55', '2018-09-01 07:49:55'),
(185, 14, 'Who was the father of PHP?', 'Larry Wall', 'Rasmus Lerdorf', 'James Gosling', 'Guido Van Rossum', 2, '2018-09-01 07:51:06', '2018-09-01 07:51:06'),
(186, 14, 'Which of the following function is used to terminate the script execution in PHP?', 'break()', 'quit()', 'die()', '-', 3, '2018-09-01 07:51:55', '2018-09-01 07:51:55'),
(187, 14, 'What function used to print statement in PHP?', 'echo();', 'printf', '&quot; &quot;', '-', 1, '2018-09-01 07:52:50', '2018-09-01 07:52:50'),
(188, 14, 'Which operator is used to concatenate two strings in php?', 'dot operator (.)', 'plus operator (+)', '-', '-', 1, '2018-09-01 07:53:25', '2018-09-01 07:53:25'),
(189, 14, 'In PHP the error control operator is_______', '.', '*', '@', '&amp;', 3, '2018-09-01 07:54:23', '2018-09-01 07:54:23'),
(190, 14, '$str=&quot;3dollars&quot;; $a=20; $a+=$str; print($a); ?&gt; Output ?', '23dollars', '203dollars', '320dollars', '23', 4, '2018-09-01 07:56:17', '2018-09-01 07:56:17'),
(191, 14, '&lt;?php echo $_SERVER[&#039;REMOTE_ADDR&#039;]; ?&gt;', 'shows the IP address of the local system', 'shows the IP address of the visitor', 'shows the IP address of the webserver', 'None of the above', 2, '2018-09-01 08:22:09', '2018-09-01 08:22:09'),
(192, 14, 'During what circumstances it is not possible to assign default value to a parameter while declaring a function?', 'When the parameter is Boolean', 'When the function is being declared as a member of a class', 'When the parameter is being declared as passed by reference', 'When the function contains only one parameter', 3, '2018-09-01 08:22:53', '2018-09-01 08:22:53'),
(193, 14, 'PHP variables are', 'Multitype variables', 'Double type variables', 'Single type variable', 'Trible type variables', 1, '2018-09-01 08:23:57', '2018-09-01 08:23:57'),
(194, 14, 'How would you add 1 to the variable $count?', 'incr count;', '$count++;', '$count =+1', 'incr $count;', 2, '2018-09-01 08:24:45', '2018-09-01 08:24:45'),
(195, 14, 'What is the return value of this substr function? &lt;?php $rest = substr(', 'f,abcde', 'a,fedcb', 'b,abcdef', 'a,abcde', 1, '2018-09-01 08:25:31', '2018-09-01 08:25:31'),
(196, 14, 'What is x+ mode in fopen() used for?', 'Read/Write. Creates a new file. Returns FALSE and an error if file already exists', 'Write only. Creates a new file. Returns TRUE and an error if file already exists', 'Read/Write. Opens and clears the contents of file', 'Write. Opens and clears the contents of file', 1, '2018-09-01 08:26:43', '2018-09-01 08:26:43'),
(197, 14, 'On failure of which statement the script execution stops displaying error/warning message?', 'rinclude ()', 'require ()', 'both of above', 'None of above', 2, '2018-09-01 08:27:29', '2018-09-01 08:27:29'),
(198, 14, '$somerar=15; function ad it () { GLOBAL $somevar; $somerar++ ; echo &quot;somerar is $somerar&quot;; } addit ();', 'somerar is 15', 'somerar is 16', 'somerar is 1', 'somerar is $ somerar', 2, '2018-09-01 08:28:34', '2018-09-01 08:28:34'),
(199, 14, 'Which of the following functions do not return a timestamp?', 'time()', 'date()', 'strtotime()', 'localtime()', 2, '2018-09-01 08:29:40', '2018-09-01 08:29:40'),
(200, 14, 'The ___________ function can be used to compare two strings using a case-insensitive binary algorithm', 'strcmp()', 'stricmp()', 'strcasecmp()', 'stristr()', 3, '2018-09-01 08:30:45', '2018-09-01 08:30:45'),
(201, 14, 'Which of the following is not an SQL aggregate function?', 'AVG', 'SUM', 'MIN', 'CURRENT_DATE()', 4, '2018-09-01 08:31:29', '2018-09-01 08:31:29'),
(202, 14, 'Use the .............. to delete the data inside the table, and not the table itself', 'DROP TABLE', 'DELETE TABLE', 'TRUNCATE TABLE', 'REMOVE TABLE', 3, '2018-09-01 08:32:13', '2018-09-01 08:32:13'),
(203, 14, 'What does the DESC keyword do in the following query? SELECT * FROM MY_TABLE WHERE ID &gt; 0 ORDER BY ID, NAME DESC', 'It causes the dataset returned by the query to be sorted in descending order', 'It causes rows with the same ID to be sorted by NAME in ascending order', 'It causes rows with the same ID to be sorted by NAME in descending order', 'It causes rows to be sorted by NAME first and then by ID', 3, '2018-09-01 08:33:28', '2018-09-01 08:33:28'),
(204, 14, 'What is the difference between print() and echo()?', 'print() can be used as part of an expression, while echo() can&#039;t', 'echo() can be used in the CLI version of PHP, while print() can&#039;t', 'print() can be used in the CLI version of PHP, while echo() can&#039;t', 'There\'s no difference: both functions print out some text!', 1, '2018-09-01 08:34:49', '2018-09-01 08:34:49'),
(205, 14, 'Which of the following functions reads the entire contents of a file?', 'fgets()', 'file_get_contents()', 'fread()', 'readfile()', 2, '2018-09-01 08:35:38', '2018-09-01 08:35:38'),
(206, 16, '&quot;Which of the following statements are always correct? a. Primary Key is a key which can not have duplicates and NULL b. Primaty Key is a unique Key c. Primary Key = Non duplicate key + autoincrement d. Primaty Key = Unique Key which can not be NULL&quot;', 'only a', 'a &amp; b', 'only c', 'a &amp; d', 4, '2018-09-01 08:42:47', '2018-09-01 08:42:47'),
(207, 16, '&quot;Which one is true? a. Foreign key is always a primary key somewhere b. Foreign key is always unique c. Table can have multiple foreign keys d. Foreign key is not required for join&quot;', 'only a', 'a,b,c,d', 'a &amp; c', 'a &amp; b', 3, '2018-09-01 08:45:43', '2018-09-01 08:45:43'),
(208, 16, '&quot;Which of the following can be always referred as foreign key a. Unique Key b. Identity Key c. Primary Key d. Row Id&quot;', 'only b &amp; c', 'only c', 'only a &amp; b', 'only b', 2, '2018-09-01 08:46:24', '2018-09-01 08:46:24'),
(209, 16, '&quot;If i want all records from two table sharing a join; following will be fastest a. UNION b. UNION ALL c. LEFT JOIN d. RIGHT JOIN&quot;', 'only a &amp; c', 'a &amp; c &amp; d', 'only b', 'only c', 3, '2018-09-01 08:47:28', '2018-09-01 08:47:39'),
(210, 16, '&quot;Which of the following always gives SORTED results for non numeric columns without order by clause a. JOIN b. SELECT c. UNION d. all 3 above &quot;', 'only b', 'only a', 'only c', 'd', 3, '2018-09-01 08:49:27', '2018-09-01 08:49:27'),
(211, 16, '&quot;What will be output of following code? $a = &quot;&quot;php&quot;&quot;; $a++; echo $a; A) php B) error C) NULL D) php&quot;', 'A', 'C', 'D', 'B', 3, '2018-09-01 08:50:15', '2018-09-01 08:50:15'),
(212, 16, '&quot;$a=5; if($a&lt;10){ header(&quot;&quot;http://www.gmail.com&quot;&quot;); }else{ header(&quot;&quot;http://letsnurture.com&quot;&quot;); } header(&quot;&quot;http://yahoo.com&quot;&quot;); What will happen? A) it will redirect to gmail.com B) it will redirect to letsnurture.com C) it will redirect to yahoo.com D) do nothing&quot;', 'C', 'A', 'B', 'D', 1, '2018-09-01 08:50:53', '2018-09-01 08:50:53'),
(213, 16, '&quot;What is output of below? (ignore E_notice) echo â€œ3â€.print(4)+3; A) 343 B) 37 C)373 D) 731&quot;', 'B', 'C', 'D', 'A', 3, '2018-09-01 08:51:40', '2018-09-01 08:51:40'),
(214, 16, '&quot;Following is not part of REQUEST object a. GET b. POST c. FILE d. SERVER&quot;', 'all 4', 'c &amp; b', 'c &amp; d', 'a,b, &amp; d', 3, '2018-09-01 08:52:27', '2018-09-01 08:52:27'),
(215, 16, '&quot;changing the value in $_POST will change $_REQUEST too? a. True b. False c. Request object is container of Post object d. None&quot;', 'a', 'a, b, &amp; c', 'b &amp; c', 'd', 3, '2018-09-01 08:53:26', '2018-09-01 08:53:26'),
(216, 16, '&quot;$a =&quot;&quot;test&quot;&quot;; function test(){ echo &quot;&quot;omg&quot;&quot;;} $a(); What will be the output of above code?&quot;', 'test', 'error', 'omg', 'notice', 3, '2018-09-01 08:54:25', '2018-09-01 08:54:25'),
(217, 16, '&quot;Which will help improving page load a. &lt;link rel=&quot;&quot;stylesheet&quot;&quot; href=&quot;&quot;print.css&quot;&quot; media=&quot;&quot;print&quot;&quot;&gt; b. @media print { //Some css } @import url(print.css) print;&quot;', 'a', 'both are same', 'b', 'none', 3, '2018-09-01 08:55:14', '2018-09-01 08:55:14'),
(218, 16, '&quot;Which is better a. div.fullWidth { width: 100%; } b. div.fullWidth { width: 360px; margin-left:auto; margin-right:auto; }&quot;', 'a', 'none', 'b', 'both are same', 1, '2018-09-01 08:57:33', '2018-09-01 08:57:33'),
(219, 16, '&quot;&lt;?php function string() { echo strstr(&quot;&quot;Go Away!&quot;&quot;, 111); } string();?&gt;&quot;', 'o Away!', 'Go Away!', '111', 'Error', 1, '2018-09-01 08:58:47', '2018-09-01 08:58:47'),
(220, 16, '&quot; &lt;?php function mine($num) { $num = 2 + $num; echo &quot;&quot;$num&quot;&quot;; } mine(3); ?&gt;&quot;', '5', '3', '$num', 'None', 3, '2018-09-01 09:02:26', '2018-09-01 09:02:26'),
(221, 16, '&quot; &lt;?php function _func() { echo &quot;&quot;Hello World&quot;&quot;; } _func(); ?&gt;&quot;', 'Hello World', 'Null', '1', 'Empty String', 1, '2018-09-01 09:03:30', '2018-09-01 09:03:30'),
(222, 16, '&quot; &lt;?php $a = &quot;&quot;1&quot;&quot;; switch ($a) { case 1: print &quot;&quot;hi&quot;&quot;; case 2: print &quot;&quot;hello&quot;&quot;; default: print &quot;&quot;hi1&quot;&quot;; } ?&gt;&quot;', 'hihellohi1', 'hi', 'hihi1', 'hi1', 1, '2018-09-01 09:04:21', '2018-09-01 09:04:21'),
(223, 16, '&quot; &lt;?php $a = &quot;&quot;1&quot;&quot;; $a = 1; $b = 1; switch($a) { case $a * $b: print &quot;&quot;hi&quot;&quot;; break; case $a / $b: print &quot;&quot;hello&quot;&quot;; break; default: print &quot;&quot;hi1&quot;&quot;; } ?&gt;&quot;', 'hihellohi1', 'hi', 'hihello', 'hi1', 2, '2018-09-01 09:05:35', '2018-09-01 09:05:35'),
(224, 16, '&quot; &lt;?php $face = array (&quot;&quot;A&quot;&quot;, &quot;&quot;J&quot;&quot;, &quot;&quot;Q&quot;&quot;, &quot;&quot;K&quot;&quot;); $number = array (&quot;&quot;2&quot;&quot;,&quot;&quot;3&quot;&quot;,&quot;&quot;4&quot;&quot;, &quot;&quot;5&quot;&quot;, &quot;&quot;6&quot;&quot;, &quot;&quot;7&quot;&quot;, &quot;&quot;8&quot;&quot;, &quot;&quot;9&quot;&quot;, &quot;&quot;10&quot;&quot;); $cards = array_merge ($face, $number); print_r ($cards); ?&gt;&quot;', 'Array ( [0] =&gt; A [1] =&gt; J [2] =&gt; Q [3] =&gt; K [4] =&gt; 2 [5] =&gt; 3 [6] =&gt; 4 [7] =&gt; 5 [8] =&gt; 6 [9] =&gt; 7 [10] =&gt; 8 [11] =&gt; 9 [12] =&gt; 10 )', 'Array ( [0] =&gt; A [1] =&gt; 2 [2] =&gt; J [3] =&gt; 3 [4] =&gt; Q [5] =&gt; 4 [6] =&gt; K [7] =&gt; 5 [8] =&gt; 6 [9] =&gt; 7 [10] =&gt; 8 [11] =&gt; 9 [12] =&gt; 10 )', 'Error', 'Array ( [0] =&gt; 2 [1] =&gt; 3 [2] =&gt; 4 [3] =&gt; 5 [4] =&gt; 6 [5] =&gt; 7 [6] =&gt; 8 [7] =&gt; 9 [8] =&gt; 10 [9] =&gt; A [10] =&gt; J [11] =&gt; Q [12] =&gt; K )', 1, '2018-09-01 09:07:02', '2018-09-01 09:07:02'),
(225, 16, '&lt;?php $fruits = array (&quot;&quot;apple&quot;&quot;, &quot;&quot;mango&quot;&quot;, &quot;&quot;peach&quot;&quot;, &quot;&quot;pear&quot;&quot;, &quot;&quot;orange&quot;&quot;); $subset = array_splice ($fruits, 2); print_r ($fruits); ?&gt;', 'Error', 'Array ( [0] =&gt; apple [1] =&gt; mango [2] =&gt; peach )', 'Array ( [0] =&gt; apple [1] =&gt; mango )', 'Array ( [0] =&gt; pear [1] =&gt; orange )', 3, '2018-09-01 09:07:47', '2018-09-01 09:07:47'),
(226, 16, '&lt;?php for ($count = 1; $count &lt; 20; $count++); print $count; ?&gt;', '20', '19', '12345678910â€¦.19', '12345678910â€¦.1920', 1, '2018-09-01 09:08:40', '2018-09-01 09:08:40'),
(227, 17, 'Grand Central Terminal, Park Avenue, New York is the world&#039;s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of this', 1, '2018-09-01 10:11:01', '2018-09-01 10:11:01'),
(228, 17, 'The state which leads in agricultural production is :', 'Tamil Nadu', 'Karnataka', 'Punjab', 'Odisha', 3, '2018-09-01 10:11:42', '2018-09-01 10:11:42'),
(229, 17, 'The Indian currency notes are printed in :', 'New Delhi', 'Nasik', 'Nagpur', 'Mumbai', 2, '2018-09-01 10:12:23', '2018-09-01 10:12:23'),
(230, 17, 'India has largest deposits of ........ in the world?', 'gold', 'copper', 'mica', 'none of this', 3, '2018-09-01 10:13:14', '2018-09-01 10:13:14'),
(231, 17, '&#039;.TMP&#039; extension refers usually to what kind of file?', 'Image file', 'Audio file', 'Archive file', 'Temporary file', 4, '2018-09-01 10:58:48', '2018-09-01 10:58:48'),
(233, 17, 'Galileo was an Italian astronomer who', 'developed the telescope', 'discovered four satellites of Jupiter', 'discovered that the movement of pendulum produces a regular time measurement', 'All of the above', 4, '2018-09-01 11:00:11', '2018-09-01 11:00:11'),
(234, 17, 'Who are the guardians of Fundamental rights?', 'Supreme Court and High Court', 'Parliament', 'The Prime Minister', 'The President', 1, '2018-09-01 11:01:12', '2018-09-01 11:01:12'),
(235, 17, 'IDA stands for', 'Indian Development Agency', 'International Development Association', 'Industrial Development Association', 'None of the above', 2, '2018-09-01 11:02:03', '2018-09-01 11:02:03'),
(236, 17, 'Indira Gandhi was assassinated in', '1974', '1984', '1994', '2001', 2, '2018-09-01 11:02:56', '2018-09-01 11:02:56'),
(237, 17, 'In which of the following pairs, the two substances forming the pair are chemically most dissimilar?', 'Sugar and paper', 'Butter and paraffin wax', 'Chalk and marble', 'Charcoal and diamond', 2, '2018-09-01 11:03:39', '2018-09-01 11:03:39'),
(238, 17, 'In which world cup cricket final, Australia beat England?', '1983, Lord&#039;s - England', '1987, Kolkata - India', '1992, Melbourne - Australia', '1996, Lahore - Pakistan', 2, '2018-09-01 11:04:54', '2018-09-01 11:04:54'),
(239, 17, 'India&#039;s first atomic power station was set up at', 'Tarapur (Maharashtra)', 'Surat', 'Bangalore', 'Bhelpur', 1, '2018-09-01 11:05:53', '2018-09-01 11:05:53'),
(240, 17, 'In 1943, Franklin D. Roosevelt, Winston Churchill and Joseph Stalin met at Teheran primarily', 'to discuss the strategy to be adopted by the Allies to invade Germany', 'to consider a common plan of action by the Allies forces against the axis powers', 'for creating an effective instrument for maintaining international peace', 'to work out a common line of action against Japan', 3, '2018-09-01 11:06:36', '2018-09-01 11:06:36'),
(241, 17, 'Which Indian Bollywood actress was appointed as International Goodwill Ambassador for the United Nation programme on HIV/AIDS (UNAIDS)?', 'Aishwarya Rai', 'Priyanka chopra', 'Kareena Kapoor', 'Vidya Balan', 1, '2018-09-01 11:07:18', '2018-09-01 11:07:18'),
(242, 17, 'Who was known as Iron man of India?', 'Sardar vallabhbhai patel', 'Gandhiji', 'Jawaharlal Nehru', 'Subhas Chandra Bose', 1, '2018-09-01 11:08:41', '2018-09-01 11:08:41'),
(243, 17, 'Who is the father of Geometry?', 'Aristotle', 'Euclid', 'Pythagoras', 'Kepler', 2, '2018-09-01 11:09:19', '2018-09-01 11:09:19'),
(244, 17, 'Arrange the following devices in ascending order of the speed: A. RAM B. Hard disk C. Cache D. Floppy', 'ABDC', 'BDAC', 'DBAC', 'BADC', 3, '2018-09-01 11:10:03', '2018-09-01 11:10:03'),
(245, 17, 'One byte consists of', 'four bits', 'one bit', 'ten bit', 'eight bits', 4, '2018-09-01 11:10:43', '2018-09-01 11:10:43'),
(246, 17, 'Which of the following is an example of an optical disk?', 'Magnetic disks', 'Memory disks', 'Data bus disks', 'Digital versatile disks', 4, '2018-09-01 11:11:35', '2018-09-01 11:11:35'),
(247, 17, 'Which of the following is an example of storage devices?', 'Magnetic disks', 'Tapes', 'DVDs', 'All of these', 4, '2018-09-01 11:12:12', '2018-09-01 11:12:12'),
(248, 18, 'During monsoon clearance sale, Rahul buys a shirt at double discount of 20% and 10%. At what price he bought the shirt if marked price was Rs. 1000?  ', '750', '720', '800', '850', 2, '2018-09-01 11:13:59', '2018-09-01 11:13:59'),
(249, 18, 'Look at this series: 2, 6, 18, 54,... what number should come next?', '108', '148', '162', '216', 3, '2018-09-01 11:14:41', '2018-09-01 11:14:41'),
(250, 18, 'Look at this series: 36, 34, 30, 28, 24, ... What number should come next?', '20', '22', '23', '26', 2, '2018-09-01 11:15:34', '2018-09-01 11:15:34'),
(251, 18, 'Look at this series: 8, 6, 9, 23, 87 , ... What number should come next?', '128', '226', '324', '429', 4, '2018-09-01 11:16:11', '2018-09-01 11:16:11'),
(252, 18, 'The average of 20 numbers is zero. Of them, at the most, how many may be greater than zero?', '0', '1', '10', '19', 4, '2018-09-01 11:17:04', '2018-09-01 11:17:04'),
(253, 18, 'Choose the correct relation based on the description provided in question. Pointing to a photograph Lata says, &quot;he is the son of the only son of my grandfather.&quot; How is the man in the photograph related to Lata?', 'Brother', 'Uncle', 'Cousin', 'Data is inadequate', 1, '2018-09-01 11:18:09', '2018-09-01 11:18:09'),
(254, 18, 'Pointing to Manju, Raju said, â€œThe son of her only brother is the brother of my wifeâ€. How is Manju related to Raju?', 'Maternal Aunt', 'Grandmother', 'Sister of father-in-law', 'Mother\'s sister', 3, '2018-09-01 11:18:54', '2018-09-01 11:18:54'),
(255, 18, 'If A + B means A is the brother of B; A - B means A is the sister of B and A x B means A is the father of B. Which of the following means that C is the son of M?  ', 'M - N x C + F', 'F - C + N x M', 'N + M - F x C', 'M x N - C + F', 4, '2018-09-01 11:19:48', '2018-09-01 11:19:48'),
(256, 18, 'If A + B means A is the mother of B; A - B means A is the brother of B; A% B means A is the father of B and A x B means A is the sister of B, Which of the following shows that P is the maternal uncle of Q?', 'Q - N + M x P', 'P + S x N - Q', 'P - M + N x Q', 'Q - S % p', 3, '2018-09-01 11:20:38', '2018-09-01 11:20:38'),
(257, 18, 'A and B are children of D. who is the father of A? To answer this question of the statements (1) and (2) is necessary? 1. C is the brother of A and the son of E. 2.	F is the mother B. a.	Only (1) b.	Only (2) c.	Either (1) or (2) d.	(1) and (2) both', 'If only (1) conclusion follows', 'If sonly (2) conclusion follows', 'If either (1) or (2) follows', 'If neither (1) nor (2) follows', 2, '2018-09-01 11:21:25', '2018-09-01 11:21:25'),
(258, 18, 'If in a certain language, MADRAS is coded as NBESBT, how is BOMBAY coded in that code ?', 'CQOCBZ', 'CPOCBZ', 'CPNCBZ', 'CPNCBX', 3, '2018-09-01 11:22:16', '2018-09-01 11:22:16'),
(259, 18, 'Statements: All the harmoniums are instruments. All the instruments are flutes. Conclusions: 1.	All the flutes are instruments. 2.	All the harmoniums are flutes.', 'Only (1) conclusion follows', 'Only (2) conclusion follows', 'Either (1) or (2) follows', 'Neither (1) or (2) follows', 2, '2018-09-01 11:22:58', '2018-09-01 11:22:58'),
(260, 18, 'Statements: Some dogs are bats. Some bats are cats. Conclusions: 1.	Some dogs are cats. 2.	Some cats are dogs.', 'Only (1) conclusion follows', 'Only (2) conclusion follows', 'Either (1) or (2) follows', 'Neither (1) or (2) follows', 4, '2018-09-01 11:23:50', '2018-09-01 11:23:50'),
(261, 18, 'Statements: All cars are cats. All fans are cats. Conclusions: 1.	All cars are fans. 2.	Some fans are cars.', 'Only (1) conclusion follows', 'Only (2) conclusion follows', 'Either (1) or (2) follows', 'Neither (1) or (2) follows', 4, '2018-09-01 11:24:52', '2018-09-01 11:24:52'),
(262, 18, 'Statements: All buildings are chalks. No chalk is toffee. Conclusions: 1.	No building is toffee 2.	All chalks are buildings.', 'Only (1) conclusion follows', 'Only (2) conclusion follows', 'Either (1) or (2) follows', 'Neither (1) or (2) follows', 1, '2018-09-01 11:25:36', '2018-09-01 11:25:36'),
(263, 18, 'Based on the first two statements, the third statement may be true, false, or uncertain. Tanya is older than Eric. Cliff is older than Tanya. Eric is older than Cliff. IF the first two statements are true, the third statement is:', 'True', 'False', 'Uncertain', '-', 2, '2018-09-01 11:26:24', '2018-09-01 11:27:02'),
(264, 18, 'In a certain code, 15789 is written as EGKPT and 2346 is written ALUR. How is 23549 written in that code ?', 'ALEUT', 'ALGUT', 'ALGTU', 'ALGRT', 2, '2018-09-01 11:27:52', '2018-09-01 11:27:52'),
(265, 18, 'All the tulips in Zoe&#039;s garden are white. All the pansies in Zoe&#039;s garden are yellow. All the flowers in Zoe&#039;s garden are either white or yellow If the first two statements are true, the third statement is:', 'True', 'False', 'Uncertain', '-', 3, '2018-09-01 11:28:32', '2018-09-01 11:28:32'),
(266, 18, 'An Informal Gathering occurs when a group of people get together in a casual, relaxed manner. Which situation below is the best example of an Informal Gathering?', 'The book club meets on the first Thursday evening of every month', 'After finding out about his promotion, Jeremy and a few coworkers decide to go out for a quick drink after work', 'Mary sends out 25 invitations for the bridal shower she is giving for her sister', 'Whenever she eats at the Mexican restaurant, Clara seems to run into Peter', 2, '2018-09-01 11:29:28', '2018-09-01 11:29:28'),
(267, 18, 'Blueberries cost more than strawberries. Blueberries cost less than raspberries. Raspberries cost more than both strawberries and blueberries. If the first two statements are true, the third statement is:', 'True', 'False', 'Uncertain', '-', 1, '2018-09-01 11:32:53', '2018-09-01 11:32:53'),
(268, 19, 'The &quot;father&quot; of MySQL is | MySQL', 'Michael Widenius', 'Bill Joy', 'Bill Gates', 'Stephanie Wall', 1, '2018-09-01 11:34:34', '2018-09-01 11:34:34'),
(269, 19, 'The main MySQL program that does all the data handling is called. | My SQL', 'mysql', 'mysqld', 'mysql.exe', 'httpd', 2, '2018-09-01 11:35:14', '2018-09-01 11:35:14'),
(270, 19, 'To use MySQL on your computer, you&#039;ll need.', 'Perl, PHP or Java', 'Some sort of client program to access the databases', 'A Browser', 'FTP and Telnet', 2, '2018-09-01 11:35:54', '2018-09-01 11:35:54'),
(271, 19, 'MySQL comes with as standard with client libraries for:', 'C only', 'Java and C', 'Java only', 'Perl, PHP and C', 1, '2018-09-01 11:36:34', '2018-09-01 11:36:34'),
(272, 19, 'Which of these field types would be best to hold a .jpg image?', 'char binary', 'nchar binary', 'text', 'blob', 4, '2018-09-01 11:37:12', '2018-09-01 11:37:12'),
(273, 19, 'A SELECT command without a WHERE clause returns?', 'All the records from a table that match the previous WHERE clause', 'All the records from a table, or information about all the records', 'SELECT is invalid without a WHERE clause', 'None of the this', 2, '2018-09-01 11:38:02', '2018-09-01 11:38:02'),
(274, 20, 'zxczxczxczx', 'zxczxczx czx c', 'zxc zx czx', ' czxc ', 'ad wasdas', 3, '2018-09-10 08:48:01', '2018-09-10 08:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE `users1` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0)active 1)inactive',
  `post` int(11) NOT NULL,
  `city` text NOT NULL,
  `experience` varchar(5) NOT NULL,
  `notice` int(11) NOT NULL,
  `score` text,
  `tscore` text,
  `result` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`id`, `name`, `dob`, `email`, `mobile`, `password`, `status`, `post`, `city`, `experience`, `notice`, `score`, `tscore`, `result`, `total`, `create_at`, `update_at`) VALUES
(12, 'Rohit', '02/09/1982', 'rohitm@gmail.com', 12345744444, '7c222fb2927d828af22f592134e8932480637c0d', '1', 2, 'Jamshedpur', '2', 1, NULL, NULL, 4, 39, '2018-09-04 06:09:10', '2018-09-05 05:29:13'),
(28, 'Rohit', '05/09/1995', 'rohitm0505@gmail.com', 1234567890, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '1', 2, 'Jamshedpur', '3', 1, '{"16":1,"17":5,"18":5,"19":1}', '{"16":"21","17":"20","18":"20","19":"6"}', 12, 67, '2018-09-05 10:33:17', '2018-09-10 07:23:43'),
(31, 'krunalsojitra', '02/07/1989', 'krunal.letsnurture@gmail.com', 7600962527, '20eabe5d64b0e216796e834f52d61fd0b70332fc', '1', 2, 'admin', '2', 1, NULL, NULL, 4, 39, '2018-09-07 13:09:05', '2018-09-07 13:10:07'),
(32, 'Mashroor', '08/05/1995', 'mashroor.alam851995@gmail.com', 7873313278, '20eabe5d64b0e216796e834f52d61fd0b70332fc', '1', 1, 'Barbil', '1', 1, NULL, NULL, 10, 66, '2018-09-07 13:10:16', '2018-09-07 13:14:45'),
(33, 'krunalsojitra', '11/01/1972', 'binal.letsnurture@gmail.com', 7600962527, '20eabe5d64b0e216796e834f52d61fd0b70332fc', '1', 2, 'admin', '9', 1, NULL, NULL, 12, 67, '2018-09-07 13:10:55', '2018-09-07 13:11:44'),
(34, 'pratyush', '06/01/1972', 'pratyushkumar.chakra@letsnurture.com', 7205763936, '20eabe5d64b0e216796e834f52d61fd0b70332fc', '0', 1, 'Bhubaneswar', '1', 1, NULL, NULL, NULL, NULL, '2018-09-07 13:10:59', '2018-09-07 13:10:59'),
(35, 'Ajarudin Gunga', '01/01/1972', 'ajarudin.letsnurture@gmail.com', 9904132640, '7c222fb2927d828af22f592134e8932480637c0d', '1', 2, 'Ahmedabad', '5', 1, NULL, NULL, 0, 67, '2018-09-07 13:11:08', '2018-09-07 13:17:29'),
(36, 'Jinal', '02/07/1988', 'jinal.dabhi@letsnurture.com', 9979791336, '88ea39439e74fa27c09a4fc0bc8ebe6d00978392', '1', 2, '  ', '1', 2, NULL, NULL, 39, 72, '2018-09-07 13:12:20', '2018-09-07 13:47:00'),
(37, 'yash sampat', '02/01/1972', 'yashs.letsnurture@gmail.com', 1234567897, 'bab791e157462ccf081f4d7b85ca026b3a1940cd', '1', 2, '     ', '22', 12, NULL, NULL, 12, 67, '2018-09-07 13:16:03', '2018-09-07 13:24:10'),
(39, 'dfhajfh ', '06/01/1973', 'kaushal@mailinator.com', 65456456456, '20eabe5d64b0e216796e834f52d61fd0b70332fc', '1', 1, 'ahmedabad', '1', 1, NULL, NULL, 0, 66, '2018-09-07 13:18:26', '2018-09-07 13:31:07'),
(40, 'Nikita', '29/06/1996', 'nikita.maru296@gmail.com', 474874474984, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '1', 1, 'dsfrfdgh', '1', 1, NULL, NULL, 15, 66, '2018-09-08 08:23:50', '2018-09-08 08:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer1`
--

CREATE TABLE `user_answer1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `user_answer1`
--

INSERT INTO `user_answer1` (`id`, `user_id`, `question_id`, `answer`, `create_at`, `updated_at`) VALUES
(1605, 18, 222, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1606, 18, 208, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1607, 18, 218, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1608, 18, 221, 2, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1609, 18, 225, 2, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1610, 18, 216, 2, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1611, 18, 212, 2, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1612, 18, 214, 2, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1613, 18, 209, 4, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1614, 18, 211, 2, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1615, 18, 215, 2, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1616, 18, 213, 4, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1617, 18, 207, 2, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1618, 18, 206, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1619, 18, 217, 3, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1620, 18, 223, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1621, 18, 220, 2, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1622, 18, 226, 4, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1623, 18, 224, 4, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1624, 18, 210, 4, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1625, 18, 219, 2, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1626, 18, 239, 3, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1627, 18, 235, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1628, 18, 233, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1629, 18, 247, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1630, 18, 231, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1631, 18, 246, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1632, 18, 242, 3, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1633, 18, 237, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1634, 18, 234, 3, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1635, 18, 229, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1636, 18, 245, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1637, 18, 230, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1638, 18, 243, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1639, 18, 228, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1640, 18, 238, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1641, 18, 240, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1642, 18, 227, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1643, 18, 241, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1644, 18, 244, 3, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1645, 18, 249, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1646, 18, 263, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1647, 18, 250, 2, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1648, 18, 265, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1649, 18, 258, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1650, 18, 253, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1651, 18, 262, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1652, 18, 254, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1653, 18, 267, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1654, 18, 266, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1655, 18, 248, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1656, 18, 257, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1657, 18, 251, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1658, 18, 261, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1659, 18, 264, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1660, 18, 256, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1661, 18, 259, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1662, 18, 260, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1663, 18, 255, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1664, 18, 252, 1, '2018-09-04 11:45:30', '2018-09-04 11:45:30'),
(1729, 20, 240, 1, '2018-09-04 11:55:32', '2018-09-04 11:55:32'),
(1730, 20, 234, 1, '2018-09-04 11:55:32', '2018-09-04 11:55:32'),
(1731, 20, 256, 2, '2018-09-04 11:55:32', '2018-09-04 11:55:32'),
(1732, 20, 248, 4, '2018-09-04 11:55:32', '2018-09-04 11:55:32'),
(1800, 21, 128, 4, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1801, 21, 140, 1, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1802, 21, 130, 3, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1803, 21, 126, 1, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1804, 21, 123, 3, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1805, 21, 127, 2, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1806, 21, 125, 1, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1807, 21, 136, 1, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1808, 21, 121, 3, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1809, 21, 132, 4, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1810, 21, 139, 4, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1811, 21, 135, 2, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1812, 21, 133, 2, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1813, 21, 137, 3, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1814, 21, 134, 3, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1815, 21, 138, 1, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1816, 21, 129, 4, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1817, 21, 124, 2, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1818, 21, 131, 3, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1819, 21, 122, 3, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1820, 21, 231, 4, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1821, 21, 247, 4, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1822, 21, 240, 3, '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(1823, 26, 192, 1, '2018-09-04 13:36:03', '2018-09-04 13:36:03'),
(1824, 26, 194, 1, '2018-09-04 13:36:03', '2018-09-04 13:36:03'),
(1825, 26, 191, 2, '2018-09-04 13:36:03', '2018-09-04 13:36:03'),
(1826, 26, 182, 2, '2018-09-04 13:36:03', '2018-09-04 13:36:03'),
(1827, 26, 244, 3, '2018-09-04 13:36:03', '2018-09-04 13:36:03'),
(1828, 26, 238, 1, '2018-09-04 13:36:03', '2018-09-04 13:36:03'),
(1829, 12, 147, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1830, 12, 146, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1831, 12, 168, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1832, 12, 169, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1833, 12, 148, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1834, 12, 172, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1835, 12, 153, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1836, 12, 170, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1837, 12, 154, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1838, 12, 142, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1839, 12, 163, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1840, 12, 176, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1841, 12, 177, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1842, 12, 149, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1843, 12, 150, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1844, 12, 161, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1845, 12, 179, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1846, 12, 167, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1847, 12, 145, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1848, 12, 173, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1849, 12, 155, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1850, 12, 157, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1851, 12, 178, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1852, 12, 165, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1853, 12, 166, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1854, 12, 143, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1855, 12, 144, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1856, 12, 171, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1857, 12, 175, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1858, 12, 158, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1859, 12, 151, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1860, 12, 174, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1861, 12, 156, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1862, 12, 159, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1863, 12, 162, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1864, 12, 141, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1865, 12, 152, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1866, 12, 164, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(1867, 12, 160, 4, '2018-09-05 05:29:13', '2018-09-05 05:29:13'),
(2282, 24, 268, 1, '2018-09-07 08:28:05', '2018-09-07 08:28:05'),
(2350, 30, 217, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2351, 30, 226, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2352, 30, 207, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2353, 30, 210, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2354, 30, 223, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2355, 30, 225, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2356, 30, 213, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2357, 30, 208, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2358, 30, 211, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2359, 30, 224, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2360, 30, 220, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2361, 30, 209, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2362, 30, 212, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2363, 30, 221, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2364, 30, 218, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2365, 30, 222, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2366, 30, 206, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2367, 30, 215, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2368, 30, 219, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2369, 30, 216, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2370, 30, 214, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2371, 30, 237, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2372, 30, 231, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2373, 30, 239, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2374, 30, 242, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2375, 30, 240, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2376, 30, 245, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2377, 30, 247, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2378, 30, 236, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2379, 30, 234, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2380, 30, 246, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2381, 30, 235, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2382, 30, 238, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2383, 30, 243, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2384, 30, 228, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2385, 30, 227, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2386, 30, 233, 4, '2018-09-07 10:00:28', '2018-09-07 10:00:28'),
(2387, 30, 241, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2388, 30, 229, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2389, 30, 244, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2390, 30, 230, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2391, 30, 264, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2392, 30, 252, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2393, 30, 258, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2394, 30, 267, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2395, 30, 249, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2396, 30, 248, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2397, 30, 253, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2398, 30, 259, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2399, 30, 255, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2400, 30, 256, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2401, 30, 250, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2402, 30, 251, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2403, 30, 262, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2404, 30, 266, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2405, 30, 263, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2406, 30, 260, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2407, 30, 254, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2408, 30, 257, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2409, 30, 265, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2410, 30, 261, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2411, 30, 273, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2412, 30, 272, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2413, 30, 268, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2414, 30, 269, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2415, 30, 271, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2416, 30, 270, 4, '2018-09-07 10:00:29', '2018-09-07 10:00:29'),
(2752, 31, 170, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2753, 31, 172, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2754, 31, 169, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2755, 31, 165, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2756, 31, 179, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2757, 31, 174, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2758, 31, 158, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2759, 31, 168, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2760, 31, 160, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2761, 31, 151, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2762, 31, 162, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2763, 31, 144, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2764, 31, 175, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2765, 31, 167, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2766, 31, 178, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2767, 31, 164, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2768, 31, 154, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2769, 31, 143, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2770, 31, 141, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2771, 31, 177, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2772, 31, 148, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2773, 31, 152, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2774, 31, 147, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2775, 31, 176, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2776, 31, 149, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2777, 31, 157, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2778, 31, 166, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2779, 31, 159, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2780, 31, 161, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2781, 31, 155, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2782, 31, 163, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2783, 31, 156, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2784, 31, 171, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2785, 31, 150, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2786, 31, 146, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2787, 31, 173, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2788, 31, 145, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2789, 31, 142, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2790, 31, 153, 4, '2018-09-07 13:10:07', '2018-09-07 13:10:07'),
(2791, 33, 209, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2792, 33, 221, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2793, 33, 226, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2794, 33, 207, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2795, 33, 206, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2796, 33, 225, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2797, 33, 216, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2798, 33, 218, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2799, 33, 212, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2800, 33, 211, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2801, 33, 223, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2802, 33, 210, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2803, 33, 214, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2804, 33, 222, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2805, 33, 215, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2806, 33, 217, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2807, 33, 220, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2808, 33, 219, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2809, 33, 213, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2810, 33, 224, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2811, 33, 208, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2812, 33, 245, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2813, 33, 231, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2814, 33, 237, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2815, 33, 229, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2816, 33, 240, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2817, 33, 242, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2818, 33, 228, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2819, 33, 241, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2820, 33, 234, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2821, 33, 230, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2822, 33, 227, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2823, 33, 238, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2824, 33, 235, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2825, 33, 247, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2826, 33, 233, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2827, 33, 246, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2828, 33, 243, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2829, 33, 236, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2830, 33, 239, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2831, 33, 244, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2832, 33, 251, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2833, 33, 260, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2834, 33, 265, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2835, 33, 250, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2836, 33, 264, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2837, 33, 255, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2838, 33, 258, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2839, 33, 262, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2840, 33, 248, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2841, 33, 263, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2842, 33, 249, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2843, 33, 256, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2844, 33, 253, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2845, 33, 261, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2846, 33, 267, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2847, 33, 257, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2848, 33, 266, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2849, 33, 259, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2850, 33, 254, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2851, 33, 252, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2852, 33, 270, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2853, 33, 273, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2854, 33, 271, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2855, 33, 272, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2856, 33, 268, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2857, 33, 269, 4, '2018-09-07 13:11:44', '2018-09-07 13:11:44'),
(2858, 32, 138, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2859, 32, 131, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2860, 32, 128, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2861, 32, 129, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2862, 32, 122, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2863, 32, 137, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2864, 32, 125, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2865, 32, 127, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2866, 32, 130, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2867, 32, 133, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2868, 32, 134, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2869, 32, 132, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2870, 32, 136, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2871, 32, 135, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2872, 32, 139, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2873, 32, 126, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2874, 32, 140, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2875, 32, 124, 3, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2876, 32, 121, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2877, 32, 123, 1, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2878, 32, 235, 2, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2879, 32, 230, 2, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2880, 32, 243, 2, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2881, 32, 244, 2, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2882, 32, 228, 2, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2883, 32, 245, 2, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2884, 32, 271, 4, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2885, 32, 270, 2, '2018-09-07 13:14:45', '2018-09-07 13:14:45'),
(2891, 35, 210, 1, '2018-09-07 13:17:29', '2018-09-07 13:17:29'),
(2892, 37, 223, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2893, 37, 218, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2894, 37, 209, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2895, 37, 221, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2896, 37, 214, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2897, 37, 224, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2898, 37, 219, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2899, 37, 207, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2900, 37, 210, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2901, 37, 208, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2902, 37, 220, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2903, 37, 225, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2904, 37, 212, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2905, 37, 217, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2906, 37, 211, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2907, 37, 226, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2908, 37, 206, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2909, 37, 213, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2910, 37, 216, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2911, 37, 215, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2912, 37, 222, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2913, 37, 233, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2914, 37, 241, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2915, 37, 237, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2916, 37, 242, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2917, 37, 234, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2918, 37, 238, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2919, 37, 246, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2920, 37, 229, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2921, 37, 245, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2922, 37, 227, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2923, 37, 243, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2924, 37, 231, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2925, 37, 236, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2926, 37, 240, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2927, 37, 228, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2928, 37, 230, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2929, 37, 235, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2930, 37, 247, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2931, 37, 239, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2932, 37, 244, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2933, 37, 259, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2934, 37, 265, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2935, 37, 263, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2936, 37, 260, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2937, 37, 252, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2938, 37, 267, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2939, 37, 254, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2940, 37, 261, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2941, 37, 256, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2942, 37, 264, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2943, 37, 255, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2944, 37, 250, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2945, 37, 262, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2946, 37, 257, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2947, 37, 248, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2948, 37, 253, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2949, 37, 266, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2950, 37, 249, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2951, 37, 251, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2952, 37, 258, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2953, 37, 270, 4, '2018-09-07 13:24:09', '2018-09-07 13:24:09'),
(2954, 37, 273, 4, '2018-09-07 13:24:10', '2018-09-07 13:24:10'),
(2955, 37, 269, 4, '2018-09-07 13:24:10', '2018-09-07 13:24:10'),
(2956, 37, 271, 4, '2018-09-07 13:24:10', '2018-09-07 13:24:10'),
(2957, 37, 272, 4, '2018-09-07 13:24:10', '2018-09-07 13:24:10'),
(2958, 37, 268, 4, '2018-09-07 13:24:10', '2018-09-07 13:24:10'),
(2959, 36, 203, 4, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2960, 36, 189, 3, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2961, 36, 181, 3, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2962, 36, 202, 2, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2963, 36, 195, 1, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2964, 36, 196, 4, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2965, 36, 198, 4, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2966, 36, 190, 4, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2967, 36, 191, 1, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2968, 36, 197, 2, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2969, 36, 183, 3, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2970, 36, 201, 4, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2971, 36, 193, 1, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2972, 36, 194, 2, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2973, 36, 187, 2, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2974, 36, 192, 2, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2975, 36, 186, 3, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2976, 36, 184, 1, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2977, 36, 204, 4, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2978, 36, 200, 4, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2979, 36, 180, 3, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2980, 36, 199, 2, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2981, 36, 205, 2, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2982, 36, 182, 2, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2983, 36, 185, 2, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2984, 36, 188, 1, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2985, 36, 245, 4, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2986, 36, 238, 2, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2987, 36, 243, 3, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2988, 36, 234, 4, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2989, 36, 241, 1, '2018-09-07 13:46:59', '2018-09-07 13:46:59'),
(2990, 36, 229, 3, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(2991, 36, 236, 2, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(2992, 36, 230, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(2993, 36, 227, 4, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(2994, 36, 233, 3, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(2995, 36, 240, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(2996, 36, 244, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(2997, 36, 235, 4, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(2998, 36, 247, 4, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(2999, 36, 237, 2, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3000, 36, 228, 3, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3001, 36, 231, 4, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3002, 36, 242, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3003, 36, 239, 2, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3004, 36, 246, 4, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3005, 36, 261, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3006, 36, 267, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3007, 36, 266, 3, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3008, 36, 253, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3009, 36, 256, 4, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3010, 36, 263, 2, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3011, 36, 259, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3012, 36, 251, 3, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3013, 36, 265, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3014, 36, 249, 3, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3015, 36, 254, 3, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3016, 36, 257, 3, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3017, 36, 260, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3018, 36, 248, 2, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3019, 36, 264, 2, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3020, 36, 252, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3021, 36, 262, 1, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3022, 36, 255, 4, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3023, 36, 258, 3, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3024, 36, 250, 2, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3025, 36, 268, 4, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3026, 36, 272, 3, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3027, 36, 270, 2, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3028, 36, 273, 2, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3029, 36, 271, 4, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3030, 36, 269, 3, '2018-09-07 13:47:00', '2018-09-07 13:47:00'),
(3031, 40, 129, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3032, 40, 124, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3033, 40, 134, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3034, 40, 137, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3035, 40, 135, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3036, 40, 127, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3037, 40, 136, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3038, 40, 139, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3039, 40, 133, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3040, 40, 122, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3041, 40, 138, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3042, 40, 128, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3043, 40, 125, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3044, 40, 130, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3045, 40, 132, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3046, 40, 121, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3047, 40, 126, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3048, 40, 123, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3049, 40, 140, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3050, 40, 131, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3051, 40, 247, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3052, 40, 238, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3053, 40, 230, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3054, 40, 244, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3055, 40, 243, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3056, 40, 245, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3057, 40, 228, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3058, 40, 242, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3059, 40, 241, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3060, 40, 237, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3061, 40, 240, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3062, 40, 246, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3063, 40, 233, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3064, 40, 234, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3065, 40, 227, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3066, 40, 236, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3067, 40, 239, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3068, 40, 231, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3069, 40, 229, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3070, 40, 235, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3071, 40, 254, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3072, 40, 258, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3073, 40, 253, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3074, 40, 250, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3075, 40, 267, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3076, 40, 262, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3077, 40, 251, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3078, 40, 260, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3079, 40, 259, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3080, 40, 248, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3081, 40, 261, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3082, 40, 249, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3083, 40, 257, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3084, 40, 266, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3085, 40, 263, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3086, 40, 256, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3087, 40, 265, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3088, 40, 252, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3089, 40, 255, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3090, 40, 264, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3091, 40, 271, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3092, 40, 269, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3093, 40, 270, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3094, 40, 273, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3095, 40, 268, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3096, 40, 272, 4, '2018-09-08 08:24:23', '2018-09-08 08:24:23'),
(3298, 28, 226, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3299, 28, 209, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3300, 28, 219, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3301, 28, 224, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3302, 28, 218, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3303, 28, 214, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3304, 28, 222, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3305, 28, 206, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3306, 28, 210, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3307, 28, 212, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3308, 28, 223, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3309, 28, 217, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3310, 28, 208, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3311, 28, 225, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3312, 28, 216, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3313, 28, 211, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3314, 28, 221, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3315, 28, 207, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3316, 28, 220, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3317, 28, 213, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3318, 28, 215, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3319, 28, 242, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3320, 28, 238, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3321, 28, 231, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3322, 28, 236, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3323, 28, 227, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3324, 28, 230, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3325, 28, 247, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3326, 28, 233, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3327, 28, 241, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3328, 28, 243, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3329, 28, 229, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3330, 28, 240, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3331, 28, 244, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3332, 28, 239, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3333, 28, 245, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3334, 28, 228, 4, '2018-09-10 07:23:42', '2018-09-10 07:23:42'),
(3335, 28, 234, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3336, 28, 237, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3337, 28, 235, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3338, 28, 246, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3339, 28, 264, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3340, 28, 259, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3341, 28, 248, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3342, 28, 255, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3343, 28, 260, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3344, 28, 257, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3345, 28, 251, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3346, 28, 266, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3347, 28, 249, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3348, 28, 262, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3349, 28, 263, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3350, 28, 256, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3351, 28, 261, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3352, 28, 265, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3353, 28, 254, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3354, 28, 250, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3355, 28, 258, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3356, 28, 252, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3357, 28, 253, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3358, 28, 267, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3359, 28, 270, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3360, 28, 272, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3361, 28, 273, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3362, 28, 269, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3363, 28, 271, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43'),
(3364, 28, 268, 4, '2018-09-10 07:23:43', '2018-09-10 07:23:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category1`
--
ALTER TABLE `category1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question1`
--
ALTER TABLE `question1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users1`
--
ALTER TABLE `users1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_answer1`
--
ALTER TABLE `user_answer1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category1`
--
ALTER TABLE `category1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `question1`
--
ALTER TABLE `question1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;
--
-- AUTO_INCREMENT for table `users1`
--
ALTER TABLE `users1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `user_answer1`
--
ALTER TABLE `user_answer1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3365;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
