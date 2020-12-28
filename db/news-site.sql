-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 06:19 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(1, 'Fashion', 0),
(2, 'Food', 1),
(3, 'Sports', 2),
(4, 'Travel', 0),
(5, 'Lifestyle', 1),
(6, 'Parenting', 0),
(7, 'Gaming', 0),
(8, 'B2B/Marketing', 0),
(9, 'Health and Fitness', 2),
(10, 'Newborn', 0),
(11, 'Home Decor', 0),
(12, 'Sewing', 0),
(15, 'Frugal Living', 0),
(16, 'Politics', 0),
(17, 'Latest News', 3),
(18, 'Entertainment', 1),
(19, 'Youth', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(7, 'Two cops suspended for ‘possessing seized yaba, letting drug peddler go’', 'A sub-inspector (SI) and a constable at Sitakunda police station were suspended on Thursday for “possessing seized yaba pills and letting an arrested drug peddler go,” reports news agency UNB.\r\n\r\nThe suspended policemen are SI Saiful Islam and constable Saiful.\r\n\r\nSuperintendent of Police in Chattogram SM Rashidul Haque confirmed this saying: “A case is being filed against the two policemen. They have also been suspended. No one will get away with crimes.”\r\n\r\nSI Saiful Islam recently detained a drug peddler with yaba tablets from Sitakunda municipality bus stand area, sources said.\r\n\r\nLater, he released the drug trader, keeping the seized contraband tablets to him. The SI did not submit the synthetic drug to the police station.', '17', '25 Dec, 2020', 1, 'yaba-1-1526965573856.jpg'),
(5, 'India make four changes, Australia look to turn screw', 'India made four changes in their bid to bounce back from their shellacking in Adelaide but they face an uphill battle as Australia captain Tim Paine wants the hosts to continue their ruthless streak in the second test in Melbourne from Saturday.\r\n\r\nThe tourists were shot out for a record low innings total of 36 in Adelaide where Australia triumphed inside three days to go 1-0 up in the four-test series.\r\n\r\nA combination of poor form, injury and regular skipper Virat Kohli\'s paternity leave forced the changes, which would see top order batsman Shubman Gill and quick Mohammed Siraj making their debut in the Boxing Day test.\r\n\r\nFit-again all-rounder Ravindra Jadeja and wicketkeeper Rishabh Pant returned to the side to be led by Ajinkya Rahane in Kohli\'s absence.\r\n\r\nOut-of-form opener Prithvi Shaw and stumper Wriddhiman Saha were dropped while Siraj owes his inclusion to the hand injury Mohammed Shami suffered while batting in Adelaide.\r\n\r\n\"Each and every individual in this team is really capable of doing well, so it\'s really a challenge for the captain and management to select the 11,\" Rahane told a video conference on Friday', '3', '25 Dec, 2020', 2, 'IND_AUS_393894_01_02.jpg'),
(6, 'Rakul Preet Singh tests COVID-19 positive', 'Bollywood actress Rakul Preet Singh on Tuesday tweeted on her verified account that she has tested positive for COVID-19. She added that she has quarantined herself.\r\n\r\nRakul Preet wrote: “I’d like to inform everyone that I have tested positive for Covid-19. I have quarantined myself. I am feeling fine and will rest up well so that I can be back at shoot soon. Request everyone who met me kindly get yourself tested. Thank you and please stay safe.” The actress had just started shooting for the film “Mayday”. She stars alongside Amitabh Bachchan and Ajay Devgn in the thriller drama. The film is directed and produced by Ajay Devgn.\r\n\r\nThe actress will be seen in the role of a pilot. This is her second film with Ajay after “De De Pyaar De”.', '18', '25 Dec, 2020', 1, 'Rahul_WUYAAHIb4.jpg'),
(8, 'Pigeons and Doves - Feeding', 'Our knowledge of bird nutrition is constantly evolving. This is due both to heightened awareness of the importance of nutrition and to increased research into birds different needs. As with all other animals, birds need a proper balance of carbohydrates, proteins, fat, vitamins, minerals and water. Different species of birds often require different foods. Nutrition is commonly neglected with pet birds. You should discuss the nutrition of your pet pigeon or dove with your veterinarian! Too often owners assume they are feeding a proper diet to their pigeon or dove when in fact they are not! This is a common reason for many health problems. It is important to continually strive to improve your bird\'s diet. This involves constantly educating yourself and a certain degree of common sense. It is not sufficient to feed a pigeon or dove just to maintain life; instead, your goal should be to help it thrive and flourish. Your bird\'s health depends on how well it is fed.', '9', '25 Dec, 2020', 12, 'dove-2718955.jpg'),
(9, 'FIFA U-17 and U-20 World Cups cancelled due to COVID-19', 'The FIFA under-17 and under 20 World Cups have been cancelled due to the COVID-19 pandemic, football\'s global governing body said on Thursday.\r\n\r\nIndonesia and Peru were due to the host the two tournaments, but now they have been awarded the 2023 editions.\r\n\r\n\"...it became clear that the global situation has failed to normalise to a sufficient level to address the challenges associated with hosting both tournaments, including the feasibility of the relevant qualification pathways,\" said FIFA in a statement.\r\n\r\nEarlier, the 2021 U-17 Women\'s World Cup, scheduled to be held in India in February, was cancelled.\r\n\r\nThe tournament, initially set to be the 2020 U-17 Women\'s World Cup, was initially postponed to February from November before being cancelled altogether. India will instead host the next edition of the tournament in 2022.', '3', '25 Dec, 2020', 1, 'fifa_480765_FIFA.jpg'),
(10, 'Hike in rice price: Import duty could be relaxed', 'A huge number of poor, lower middle class and even middle class people feel the heat of economic pressure if the market of rice, the staple food of Bangladeshis, becomes unstable. This time, it has begun going against all the expectations. This is not the time of price hike as the Aman crop has just been harvested. Generally, this is the time when the rice price comes down, albeit a little. But this year the trend has altered. According to the Trading Corporation of Bangladesh (TCB), a wing of the commerce ministry, the rice price is up by 17-48 per cent compared to the corresponding period of last year. This is abnormal and worrisome especially because the COVID-19 pandemic and because the income of a huge number of people has been severely affected or stopped.\r\n\r\nWhat could be the reason of this price hike during the peak season of Aman crop? Our experience says when the stock of crops in government warehouses decreases, the price increases. This year, the food ministry could not fulfill its procurement target of paddy and rice in the boro season. Its procurement target had been  200,000 tonnes of paddy and 600,000 tonnes of rice in the Aman season but it could procure only 13,000 tonnes of rice. The stock in government warehouses now is only around 550,000 tonnes, which was over 1 million tonnes at this time last year.\r\n\r\nThe question is why has the food department been failing to fulfill the target? Firstly, the millers and businessmen did not agree to sell paddy and rice to the food department at the price the government fixed. They said the price is too low and they would incur losses  at that price. That’s why they demanded that the government increase the price. But the government did not. In liberal economy, the government cannot force any businessman to sell any product at the price the government fixes. \r\n\r\nAnother way of procuring paddy and rice is to buy from the farmers directly. But the government has made some rules according to which the farmers cannot sell their products directly to the food department. Instead, they incur losses, selling to the millers.\r\n\r\nThis year, the paddy production in Boro season declined considerably due to the floods. The expectation to mitigate the loss to some extent through the Aman crop was also not fulfilled as the production of Aman crop saw 1.5 million tonnes less than expected. Still, the stock in comparison to the demand has not declined that much that the price could increase up to 48 per cent. Partly, this is due to dwindling stock in government warehouses, which is almost half than the last year. The government should increase the stock both from local and foreign sources. The rice import duty could be relaxed to do that.', '17', '25 Dec, 2020', 1, 'price_hike_899890.png'),
(11, 'Poultry farming', 'People sometimes raise chickens themselves because they want access to fresh eggs. Over time, however, they bond with these animals, give them names, and interact with them like they would any other pet.\r\n\r\nIf you’re familiar with poultry farming, however, you know that billions of chickens are denied such healthy relationships. Whether they’re raised to lay eggs or for their meat, chickens in factory farming operations suffer needless cruelty and death.\r\n\r\nYou might not be familiar with the poultry farming industry, but this guide will take you deep into the bowels of operations that treat chickens as nothing more than commodities.\r\n\r\nChickens Are the Most-Killed Land Animal for Food\r\nPETA calls chickens “the most abused animals on the planet.” Not only are they the most-killed animals for the purposes of feeding humans, but more chickens are killed for food every year than all other land animals put together.\r\n\r\nPoultry farming disrupts the family unit among chickens, denies these animals their needs for social interactions and good nutrition, and otherwise forces them into cruel conditions until they’re inhumanely slaughtered.\r\n\r\nThis is all because people can’t get enough eggs, fried chicken, baked chicken, chicken casserole, and chicken salad. If we all gave up those foods and replaced them with plant-based substitutes, these chickens wouldn’t have to face the cruel realities of poultry farming.\r\nPoultry farming is the agricultural practice of breeding and raising birds (typically chickens, turkeys, ducks, and geese) for the purpose of harvesting their meat or eggs for human consumption. Poultry farmers are responsible for the slaughter of tens of billions of birds per year.\r\n\r\nIn the poultry farming industry, disease runs rampant and chickens are regularly abused. Just recently, animal rights group Compassion Over Killing sent a member undercover at a Maryland poultry farming operation. The employee caught raw, graphic footage of employees intentionally abusing chickens.\r\n\r\nAlso called chicken farms, poultry farms are designed for maximum efficiency. As you’ll learn later in this article, the speed with which these operations “process” chickens often results in extremely painful deaths for the birds. Worse, the Washington Post reports that the allowed “processing” speed might increase from 140 to 175 chickens per minute.', '2', '25 Dec, 2020', 12, 'poultry-farm.jpg'),
(12, 'From waste to wealth, plastic to prosperity', 'Habibur Rahman Jewel completed his Masters in history from Dhaka University in 2010, after which he has made a bit of history on his own. He has created a business out of discarded plastic bottles.\r\n\r\nFollowing 10 years of trial and error, Jewel finally established his company, Moonlight PET Flakes. He produces PET flakes and plastic straps from these flakes. Flakes are used in manufacturing synthetic fabrics and household ware.\r\n\r\nJewel now earns revenue of around Tk 400 million a year through his business based on discarded plastic. He even employees two Chinese nationals at his factory.\r\n\r\nThis innovative entrepreneur\'s father had a construction business. After completing studies, most of his friends were joining government service or bank jobs and such, but Jewel was determined to go into business. He would wander around Old Dhaka where he saw the \'bhangari\' (waste and discarded items) shops. He would watch them crush old plastic bottles to pieces and export these. He met up with an agent of this business and learnt more. He then took Tk 5 million from his father and invested it in this business. He started out with some local machinery and three workers.\r\n\r\n\"You have to get up close and personal with the \'bhangari\' people if you are to do business with them,\" said Jewel. \"I would go around town looking for these junk shops. I would get the bottles crushed. Then I would work on preparing my export papers. I would spend 16 to 18 hours working every day.\"\r\nHe picked up experience while working hard and by 2016 Jewel became one of the major PET Flakes exporters of the country. He said, \"This was a very basic business and hardly any educated persons were involved in it. The agents would exploit the traders. So I contacted the buyers directly and would supply them according to demand. And it didn\'t take long for my business to flourish.\"\r\n\r\nThen in 2016 business crashed. China took a decision not to import PET flakes from outside. Habibur Rahman Jewel was in deep trouble. But suddenly things took an almost miraculous change. The Chinese company which would buy flakes from him, would manufacture plastic straps. An employee of the company contacted him, suggesting that since he had the raw material, he could make the straps locally. Jewel said, \"I had been long in this business and knew it well. So if I couldn\'t sell flakes, I could go into production myself.\"\r\n\r\nHe followed the advice of that Chinese friend and imported new machinery and also brought in two Chinese technicians. Their work was to make international standard straps. He set up a new factory in Sonargaon, Dhaka.\r\n\r\nThe Moonlight Flakes and Strap Industry now stands on a two katha plot of land in Sonargaon. At one end of the factory, the plastic is rendered into tiny beads. These beads are melted down and made into straps.\r\n\r\nDiscarded bottles are collected piled up in a field. The bottles are broken and the flakes are initially produced in a factory in Meradia, Dhaka.\r\n\r\nWhile starting up the strap business, Habibur Rahman hasn\'t given up the flake business. \"After the China market closed its doors, I started scouting for markets elsewhere. I found there was a demand for flakes in India. I even got orders from Vietnam. Now India has also stopped import of flakes, but Vietnam is a big market for us. And there is, of course, local demand.\"\r\n\r\nThe year 2020 has been a bad year for business in general and Moonlight has suffered too. Habibur Rahman says export orders have dropped to half and so have prices. It has also been difficult to gather raw material and run the factory during the pandemic. However, his determination to carry out remains strong.\r\n\r\n\"I believe that one can succeed despite all odds. We have a steady supply of raw material. Many will fall to one side during this coronavirus time, but those who manage to survive will be able to control the market in the future. I am working towards that future,\" says Jewel.\r\n\r\n*This piece, originally published in Prothom Alo print edition, has been rewritten in English by Ayesha Kabir', '5', '25 Dec, 2020', 3, '113efc50a522_plastic.jpg'),
(13, 'Bangladesh transgender people to gain inheritance rights', 'Transgender people will soon be able to inherit property from their families, Bangladesh’s law minister said Sunday, the latest effort to give the minority group more rights in the conservative Muslim-majority nation.\r\n\r\nWhile the country of 168 million people is officially secular, property legislation still follows religious laws, with transgender people mostly barred from inheriting estates when parents die.\r\n\r\nPrime minister Sheikh Hasina told a cabinet meeting this week that new inheritance laws for the group, known as hijra -- an umbrella term referring to someone who is born male but does not refer to themselves as a man or woman -- were being drafted.\r\n\r\n“We’re trying to frame a legislation in accordance with the Islamic sharia law and our constitution which will ensure the property rights for a transgender family member,” law minister Anisul Huq told AFP.\r\n\r\nThe bill has yet to be proposed in parliament but is expected to comfortably pass the legislative body.\r\nBangladesh has allowed transgender people, who number around 1.5 million, to identify as a separate gender since 2013.\r\n\r\nLast year they were allowed to register to vote as a third gender. Earlier this month, the South Asian country opened its first Islamic school for transgender Muslims.\r\n\r\nBut the LGBTQI community still faces widespread discrimination, with a colonial-era law in place that punishes gay sex by prison terms, though enforcement is rare.', '17', '25 Dec, 2020', 1, 'dc0eb4a38d1a_Transgender.jpg'),
(14, 'This is actually my second peace prize', 'On 13 November this year, Sadat Rahman of Bangladesh won the International Children\'s Peace Prize. Sadat is a student of Class 12 at Narail Abdul Hye City College. The international organisation, Kids\' Rights Foundation, awarded him this prize for the mobile app, Cyber Teens, which he developed to prevent cyber bullying. Sadat is now in the Netherlands where he has received the award. On 14 November morning he spoke in an interview with Prothom Alo over Whatsapp from the Netherlands.\r\nIt\'s probably not morning yet in the Netherlands. Were you sleeping or too excited to sleep?\r\n\r\nIt\'s 6:30am here, but I\'ve been waking up at 3:00am every morning because of the time difference with Bangladesh. And tonight I\'ve hardly slept even an hour. The prize is on my bedside and I keep opening my eyes to check if it\'s still there! Last year Greta Thunberg won this prize. I can\'t believe I won it this year. I never thought that I would come all the way here from the banks of the river Chitra in Narail. I thought I would get nominated at the most and that would help me spread my work to the districts outside of Narail as well. I was quite happy with that much.\r\nYou delivered your speech in English but ended in Bangla, \"Shobai bhalo thakben\", \"Stay well everyone\". Was that planned?\r\n\r\nNo, that wasn\'t in the script. I always end my talks with that phrase and I did so here too. Everyone appreciated it. It was a small programme because of coronavirus. It is so cold here, I was shivering even in my suit. I like talking in public, but am not too comfortable in front of the camera.\r\n\r\nHow did you come up with the idea of an app for cyber bullying?\r\n\r\nIn Bangladesh, 49 per cent of the children and teens are victims of cyber bullying in one way or the other, but the problem isn\'t addressed. When we are bullied, we do not tell anyone. From childhood our parents use \'threats\' like, \"Hurry up and finish your food or the police will come to get you.\" \"Go to sleep or the police will catch you.\" So from our childhood we have been programmed not to consider the police as our friend. With nowhere to go for help, young people get distressed, some fall mentally ill and some even commit suicide.\r\n\r\nOnly recently a girl called Beauty Mondal committed suicide. Someone had edited her photograph and uploaded it on Facebook. The girl had done nothing wrong. Her parents even hadn\'t wanted to marry her off early. She was studying in school and everything was fine. Just this one incident turned her life upside down. That is why I came up with the Cyber Teens app, so even if they don\'t want to go to the police, girls like Beauty can make their complaints here.', '19', '25 Dec, 2020', 2, '22a3f34f5e_nobel.jpg'),
(15, 'It has ‘winning formula’ for efficacy: CEO', 'The Covid-19 vaccine developed by the British drugs group AstraZeneca and the University of Oxford has achieved a winning formula for efficacy, the company chief executive said yesterday.', '9', '28 Dec, 2020', 1, '1609130443-astrazeneca.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`websitename`, `logo`, `footerdesc`) VALUES
('News Flash', 'logo-news-flash.png', '© Copyright 2020 News Flash | Powered by <a href=\"https://www.github.com/tanvir1418\">Tanvir Ahmed</a>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(1, 'Tanvir', 'Ahmed', 'tanvir1418', '5db85fe4d7c285f5b49749b7a411daf6', 1),
(2, 'Muntasir', 'Ahmed', 'roxy21', '3eae54601f0d6d2e8f9635fd38c0031f', 0),
(3, 'Nazmul', 'Shohag', 'shohag10', 'dab361e2a8619df7ea6846aa28120c5a', 0),
(4, 'Hamayat', 'Hossain', 'kakon45', '30b4740c6e7d2e43094a6a79b5282c9a', 0),
(5, 'Suriya', 'Akter', 'riya31', '6211bea727c3402b81a2368df32d3120', 0),
(6, 'Kaniz', 'Fatema', 'suchona32', '141888b8afeb7a0b3cff141a689172de', 0),
(7, 'Jannatul', 'Ferdousi', 'rochona33', 'ea2e6920817cf54740289040d27e572a', 0),
(8, 'Surovy', 'Akter', 'kushi34', '2b174318d11dc66790e747d289b640b8', 0),
(9, 'Tanzim', 'Islam', 'sourov35', '619e9dbcff6c3ee4cfc3954d32490f40', 0),
(10, 'Rifat', 'Islam', 'noyon36', 'f857b83976fe4bdf2a33c81e1e563f90', 0),
(11, 'Rihab', 'Rahman', 'rihab37', '0097202b3f4f846620f04b140738215b', 0),
(12, 'Nure', 'Al-Amin', 'utsho38', 'a724150c554a24f611be90ac9ba78b29', 0),
(13, 'Sabit', 'Rahman', 'sabit39', 'c5c560066045dee0a8727c4409ae2f22', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
