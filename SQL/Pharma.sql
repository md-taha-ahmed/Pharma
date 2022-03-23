-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 23, 2022 at 10:35 PM
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
-- Database: `Pharma`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_fname` varchar(20) NOT NULL,
  `admin_lname` varchar(20) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_fname`, `admin_lname`, `admin_password`) VALUES
(4, 'admin@gmail.com', 'Mohammed', 'Taha', 'admin'),
(6, 'admin1@gmail.com', 'MD', 'Faisal', 'admin'),
(8, 'admin2@gmail.com', 'NITISH', 'SINGH', 'admin'),
(9, 'admin3@gmail.com', 'NAVEEN', 'RAJ', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(5) NOT NULL,
  `item_title` varchar(250) NOT NULL,
  `item_brand` varchar(250) NOT NULL,
  `item_cat` varchar(15) NOT NULL,
  `item_details` text NOT NULL,
  `item_tags` varchar(250) NOT NULL,
  `item_image` varchar(250) NOT NULL,
  `item_quantity` int(3) NOT NULL,
  `item_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_title`, `item_brand`, `item_cat`, `item_details`, `item_tags`, `item_image`, `item_quantity`, `item_price`) VALUES
(15, 'Accu-Chek Active Glucometer Test Strips Box Of 50', 'Accu-Chek', 'machine', 'The blood sugar levels in your body can be easily checked with Accu-Chek Active Strips. These are tested for accuracy, are easy to use daily and no manual coding is required. You can simply insert a test strip, collect a small blood sample on it, allow it to get absorbed and read your blood glucose result from the display. Accu-Chek Glucometer Test Strips can be used by patients suffering from Type 1 and Type 2 diabetes.  You must not use the Accu-Chek Instant Glucometer Strips beyond the expiry date given on the pack. Accu-Chek Active allows you to double-check and verify the displayed result after your test.', 'Accu-Chek Active Glucometer Test Strips Box Of 50 , machine ,blood glucose test strips', 'Strips.jpg', 50, 800),
(18, 'Omron Blood Pressure Monitor HEM-7121J', 'Omron', 'machine', 'Omran B.P Monitor Hem-7121J is an automatic Blood Pressure monitoring device that is made with IntelliSense Technology for the comfortability of patient’s use. It indicates OK when the user wraps the cuff, ensuring that the right amount of pressure is applied to generate accurate and faster results. Now get precise and consistent measurements at your home so you can keep a track of your health easily.', 'Omron Blood Pressure Monitor HEM-7121J , check', 'Blood Pressure.jpg', 49, 1759),
(19, 'Omron Compressor Nebulizer Ne-C106', 'Omron', 'machine', 'Now breathe freely and comfortably with Omron Compressor Nebulizer Ne-C106 that helps you to inhale your medications. It is specially designed so you can use it easily and is suitable for both adults and kids.', 'Omron Compressor Nebulizer Ne-C106', 'Omron Compressor Nebulizer Ne-C106.jpeg', 50, 1492),
(20, 'OneTouch Select Plus Simple Glucometer (FREE 10 strips + lancing device + 10 lancets)', 'OneTouch', 'machine', 'OneTouch Select Plus Simple is a blood glucose monitoring system. OneTouch® Select Plus Simple® meter system. Simple to use, Accurate and virtually pain free.   OneTouch® is the #1 recommended brand by diabetologists in India* (*In a survey conducted in India in 2020 with 150 diabetologists).', 'OneTouch Select Plus Simple Glucometer (FREE 10 strips + lancing device + 10 lancets), 1 Kit', 'OneTouch Select Plus Simple Glucometer (FREE 10 strips + lancing device + 10 lancets).jpeg', 48, 871),
(21, 'Accu-Chek Active Blood Glucose Monitoring System With 10 Free Test Strips', 'Accu-Chek', 'machine', 'Accu-Chek Active Blood Glucose Monitoring System allows accurate glucose measurement at home without any hassle. It is a self-testing device that is portable and easier to operate. Get the test results quicker that is easy to understand with this personalized glucose monitoring device.', 'Accu-Chek Active Blood Glucose Monitoring System With 10 Free Test Strips', 'Accu-Chek Active Blood Glucose Monitoring System With 10 Free Test Strips.jpeg', 50, 1321),
(22, 'Apollo Pharmacy Digital Flexible Thermometer', 'Apollo', 'machine', 'The fast response Apollo Digital Thermometer has a high accuracy rate (+- .20 F), has an easy to read LCD display and comes with an long battery life of up to 200 hours Features  High Accuracy (+- .2 degree F) Liquid Crystal Display Memory for storing the last measured value Battery Life: Approx 200 hours Fast Response time ( 10-20 sec approx) Alarm Signal on measurement of temperature. Auto Shut-off.', 'Apollo Pharmacy Digital Flexible Thermometer', 'Apollo Pharmacy Digital Flexible Thermometer.jpeg', 50, 100),
(23, 'Romsons Respirometer SH-6082', 'ROMSONS', 'machine', 'Let your lungs do healthy and efficient exercising with Romsons Respirometer SH-6082. It has a tri-ball setup that enables patients to perform breathing exercises on a step-up basis. Its light design is easy to handle and comes with a transparent body so you can keep checking your respiration performance. Now bring home this innovative breathing and lung apparatus and get started with your efficient breathing exercises.', 'Romsons Respirometer SH-6082', 'Romsons Respirometer SH-6082.jpeg', 50, 275),
(24, 'Prega News Pregnancy Test Card', 'Prega', 'machine', 'Get pregnancy results in just 5 minutes with Prega News Pregnancy Test Card. It is specially designed for assessing pregnancy results at the comfort of your home with 3 drops of the urine sample. It comes with a sample well and result window that makes it easy for using and reading the results so you can detect whether or not you are pregnant super quick.', 'Prega News Pregnancy Test Card', 'Prega News Pregnancy Test Card.jpeg', 48, 55),
(26, 'Polymed Pulse Oximeter CMS50C', 'Polymed', 'machine', 'Bring home the Polymed Pulse Oximeter CMS50C and experience the comfort of keeping track of your oxygen saturation levels. It is designed to let you conveniently monitor the SpO2 and pulse rate at the same time.', 'Polymed Pulse Oximeter CMS50C', 'Polymed Pulse Oximeter CMS50C.jpeg', 49, 750),
(27, 'Freestyle Libre Reader - Flash Glucose Monitoring System', 'ABBOTT', 'machine', 'FreeStyle Libre Reader Glucose Monitoring System - The FreeStyle Libre system allows you to check your glucose with a painless one-second scan, instead of a finger prick.', 'Freestyle Libre Reader - Flash Glucose Monitoring System', 'Freestyle Libre Reader - Flash Glucose Monitoring System.jpeg', 48, 4999),
(28, 'Seni Air Classic Breathable Adult Diapers Medium', 'Seni Air', 'self-care', 'Seni is the European brand of absorbent products and skin care solutions that won the trust of millions of incontinent patients as well as caregivers worldwide. Profound knowledge and a wealth of experience ensures maximum comfort of use and a specialist protection against skin disorders such as bedsores.', 'Seni Air Classic Breathable Adult Diapers Medium', 'Seni Air Classic Breathable Adult Diapers Medium.jpeg', 48, 550),
(29, 'Cipla Saslic DS Foaming Face Wash, 60 ml', 'Cipla', 'self-care', 'Saslic DS Face Wash is a foaming face wash that contains the goodness of salicylic acid, encourages skin- cell replacement cycle', 'Cipla Saslic DS Foaming Face Wash, 60 ml', 'Cipla Saslic DS Foaming Face Wash, 60 ml.jpg', 50, 435),
(30, 'Cetaphil Gentle Skin Cleanser, 250 ml', 'Cetaphil', 'self-care', 'Cetaphil Gentle Skin Cleanser is a mild, soap-free formulation that cleanses without irritation; leaves your skin soft and smooth', 'Cetaphil Gentle Skin Cleanser, 250 ml', 'Cetaphil Gentle Skin Cleanser, 250 ml.jpeg', 50, 563),
(31, 'Colgate Sensitive Plus Anticavity Toothpaste, 70 gm', 'Colgate', 'self-care', 'hat is tooth sensitivity? Tooth sensitivity occurs when the enamel that protects our teeth gets thinner or when gum recession occurs, exposing the underlying surface, the dentin, thus reducing the protection to the root and nerves. When such teeth come in contact with something hot, cold, or sweet, sensations are carried directly to the nerves causing painful sensitivity.  Causes for enamel wear and tear: Aggressive brushing, Tooth grinding, Teeth erosion  Causes for gum erosion: Aggressive brushing, aging, gum disease Colgate sensitive plus toothpaste, with its exclusive Pro-Argin™ technology provides INSTANT and LASTING RELIEF from tooth sensitivity with regular use. It WORKS FROM THE FIRST USE* by helping block open tubules to protect sensitive teeth which build LONG-LASTING PROTECTION against sudden shocks of pain. Use it by applying the toothpaste directly on the sensitive teeth for INSTANT RELIEF.', 'Colgate Sensitive Plus Anticavity Toothpaste, 70 gm', 'Colgate Sensitive Plus Anticavity Toothpaste, 70 gm.png', 46, 65),
(32, 'Patanjali Haldi Chandan Kanti Body Cleanser Soap, 75 gm', 'Patanjali', 'self-care', 'Pantajali haldi chandan kanti soap is intended for the face and body, comes with the goodness of natural ingredients such as haldi, chandan which helps in rejuvenating, nourishing and providing glow to skin.', 'Patanjali Haldi Chandan Kanti Body Cleanser Soap, 75 gm', 'Patanjali Haldi Chandan Kanti Body Cleanser Soap, 75 gm.jpeg', 50, 18),
(33, 'Sri Sri Tattva Body Oil, 200 ml', 'Sri Sri', 'self-care', 'Enrich your skin with the benefit of natural ingredients and essential oils that help repair and nourish the damaged skin. Sri Sri Tattva Body Oil is formulated using ingredients that make the skin healthy and glowing. The unique blend of oil and herbs improve skin conditions and effectively remove aging signs. Regular massaging gives multiple benefits to the skin. With the touch of nature that is gentle and nourishing, this body oil helps soothe your skin.', 'Sri Sri Tattva Body Oil, 200 ml', 'Sri Sri Tattva Body Oil, 200 ml.jpeg', 48, 130),
(34, 'Jiva Amla Shampoo, 200 ml', 'Jiva Amla ', 'self-care', 'Jiva Amla Shampoo is the right shampoo if you are looking to keep your scalp fresh and cool throughout the entire day. It prevents hair loss, premature graying and dandruff. Amla (Emblica officinalis) is a wonder herb that has innate Ayurvedic properties that balances Pitta dosha. Jatamansi, Bhringraj, Shikakai are some of the many beneficial herbs in Jiva Alma Shampoo that keep your hair healthy and beautiful.', 'Jiva Amla Shampoo, 200 ml', 'Jiva Amla Shampoo, 200 ml.jpeg', 100, 175),
(35, 'Sri Sri Tattva Neem & Lemon Flavoured Kleanup Handwash, 300 ml Pump Bottle', 'Sri Sri', 'self-care', 'Sri Sri Tattva Neem & Lemon Flavoured Kleanup Hand Wash is designed to kill germs and provide gentle care and moisturization to the hands. It contains the extracts of Neem, Lemon and Ushira which protect your skin and leaves a refreshing fragrance after use. Neem is known to possess antibacterial and anti-inflammatory properties that helps keep away germs and infections away from the skin. Lemon adds freshness and promotes hydration of the skin, while Ushira has a calming effect with a soothing aroma. Maintain personal hygiene and stay protected with the triple power of natural ingredients that are mild on the skin and harsh on germs.', 'Sri Sri Tattva Neem & Lemon Flavoured Kleanup Handwash, 300 ml Pump Bottle', 'Sri Sri Tattva Neem & Lemon Flavoured Kleanup Handwash, 300 ml Pump Bottle.jpeg', 50, 121),
(36, 'Sri Sri Tattva Swaccha Rose Flavoured Hand Sanitizer, 130 ml', 'Sri Sri', 'self-care', 'Get protected from germs and microbes effectively with nature’s touch that keeps your hands soft and moisturized. Sri Sri Tattva Swaccha Rose Flavoured Hand Sanitiser is formulated with natural ingredients -Neem, Aloe Vera, and Ushira- that are soft on your hands and tough on the germs. Keep your hands germ-free with the nourishing and fragrant herbs. ', 'Sri Sri Tattva Swaccha Rose Flavoured Hand Sanitizer, 130 ml', 'Sri Sri Tattva Swaccha Rose Flavoured Hand Sanitizer, 130 ml.jpeg', 48, 65),
(37, 'Kamasutra Urge Men Deodorant Spray, 150 ml', 'Kamasutra', 'self-care', 'Kamasutra Deodorant comes with an irresistible formula making you stand out in the crowd', 'Kamasutra Urge Men Deodorant Spray, 150 ml', 'Kamasutra Urge Men Deodorant Spray, 150 ml.jpeg', 49, 105),
(38, 'Himalaya Geriforte Syrup 200 ml', 'Himalaya', 'medicine', 'The natural ingredients in Geriforte work synergistically to prevent free radical-induced oxidative damage to various organs.', 'Himalaya Geriforte Syrup 200 ml', 'Himalaya Geriforte Syrup 200 ml.jpeg', 50, 125),
(43, 'Eno Regular Flavoured Powder, 5 gm', 'Eno', 'medicine', 'Eno helps in neutralizing the acid in your stomach. It gets to work in 6 seconds.', 'Eno Regular Flavoured Powder, 5 gm', 'Eno Regular Flavoured Powder, 5 gm.jpeg', 48, 19),
(44, 'Benadryl Cough Formula Syrup 150 ml', 'Benadryl', 'medicine', 'Benadryl Syrup is used in the treatment of cough, and also, relieves allergy symptoms such as runny nose, stuffy nose, sneezing, watery eyes and congestion or stuffiness', 'Benadryl Cough Formula Syrup 150 ml', 'Benadryl Cough Formula Syrup 150 ml.jpeg', 50, 115),
(45, 'Zinda Tilismath Unani Medicine, 5 ml', 'Zinda', 'medicine', 'Zinda Tilismath is a 100% herbal medicine, used to treat many common ailments like cold, cough, and more .', 'Zinda Tilismath Unani Medicine, 5 ml', 'Zinda Tilismath Unani Medicine, 5 ml.jpeg', 50, 119),
(46, 'Dee Snor Anti Snoring Syrup 100 ml', 'Dee Snor', 'medicine', 'Dee Snor is the best Anti - Snoring Syrup which not only controls snoring but also gives relief from Asthma. It contains 100% Natural and Herbal ingredients like Kantakari, Vasa, Honey, Triphala, Aswagandha and Sankabhasma etc. A Product with zero side effects. Directions For use: Take 10ml daily (with out diluting with water) 30 minutes before going to bed for 60 days.', 'Dee Snor Anti Snoring Syrup 100 ml', 'Dee Snor Anti Snoring Syrup 100 ml.jpeg', 49, 174),
(47, 'Himalaya Himplasia, 30 Tablets', 'Himalaya', 'medicine', 'Himalaya Himplasia Tablet is a formulation that promotes optimum prostate health, urogenital function, bladder function, and reproductive function. Himplasia is a non-hormonal herbal blend that helps maintain a healthy prostate and an effective reproductive function.', 'Himalaya Himplasia, 30 Tablets', 'Himalaya Himplasia, 30 Tablets.jpeg', 47, 160),
(48, 'Himalaya Punarnava, 60 Capsules', 'Himalaya', 'medicine', 'It is an ayurvedic medicine, containing punarnava as an active ingredient that helps to support the urinary system, protect the kidney, soothe and calm the urinary tract.', 'Himalaya Punarnava, 60 Capsules', 'Himalaya Punarnava, 60 Capsules.jpeg', 50, 152),
(49, 'Himalaya Diabecon DS ,60 Tablets', 'Himalaya', 'medicine', 'Himalaya diabecon DS tablet helps in the management of diabetes. It is a formulation of an ayurvedic medicine, which has antidiabetic properties. Gymnema, Indian kino tree, shilajeet plays a vital role.', 'Himalaya Diabecon DS ,60 Tablets', 'Himalaya Diabecon DS ,60 Tablets.jpeg', 48, 152),
(50, 'Mylab CoviSelf COVID-19 Rapid Antigen Self Test Kit', 'Mylab', 'machine', 'Mylab CoviSelf COVID-19 Rapid Antigen Self Test Kit is designed to assist you in taking a safe rapid antigen test easily at the comfort of your home. Get your and your family’s immediate COVID-19-19 Rapid Antigen test done quickly and hassle-free with this self-assessing kit. Now you can get tested for COVID-19 in just 15 minutes with this test kit.', 'Mylab CoviSelf COVID-19 Rapid Antigen Self Test Kit', 'Mylab CoviSelf COVID-19 Rapid Antigen Self Test Kit.jpeg', 50, 452),
(51, 'Limcee Vitamin C 500 mg Orange Flavour Chewable, 15 Tablets', 'ABBOTT', 'medicine', 'Limcee Vitamin C 500 mg Orange Flavour Chewable, 15 Tablets belongs to a class of medicines called nutritional supplements used to prevent and treat nutritional deficiencies and vitamin C deficiency. A nutritional deficiency occurs when the body does not absorb or get enough nutrients from food. Vitamins and minerals are necessary for body development and the prevention of diseases.', 'Limcee Vitamin C 500 mg Orange Flavour Chewable, 15 Tablets', 'Limcee Vitamin C 500 mg Orange Flavour Chewable, 15 Tablets.jpeg', 49, 20),
(52, 'GNC PRO Performance L-Carnitine 500 mg, 60 Capsules', 'PRO', 'medicine', 'GNC PRO Performance L-Carnitine delivers 500 mg of important nutrients in each serving which helps in weight loss and facilitates muscle recovery. L-carnitine is a non-essential amino acid that can be synthesized in the body. Now get your daily dose of this essential nutrient and improve muscle growth and recovery as you consume these capsules.', 'GNC PRO Performance L-Carnitine 500 mg, 60 Capsules', 'GNC PRO Performance L-Carnitine 500 mg, 60 Capsules.jpeg', 60, 1049);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_quantity` int(3) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `item_id`, `user_id`, `order_quantity`, `order_date`, `order_status`) VALUES
(210, 27, 85, 1, '2022-03-18', 1),
(211, 18, 85, 1, '2022-03-18', 1),
(212, 28, 85, 1, '2022-03-18', 0),
(213, 33, 55, 2, '2022-03-19', 0),
(214, 20, 55, 2, '2022-03-19', 0),
(215, 37, 55, 1, '2022-03-19', 0),
(216, 31, 55, 4, '2022-03-19', 0),
(217, 43, 55, 2, '2022-03-23', 0),
(218, 24, 55, 2, '2022-03-23', 0),
(219, 49, 55, 2, '2022-03-23', 0),
(220, 28, 55, 1, '2022-03-23', 0),
(221, 27, 55, 1, '2022-03-23', 0),
(222, 51, 55, 1, '2022-03-23', 0),
(223, 46, 55, 1, '2022-03-24', 0),
(224, 26, 55, 1, '2022-03-24', 0),
(225, 47, 55, 3, '2022-03-24', 0),
(226, 36, 55, 2, '2022-03-24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_Lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_id` int(3) NOT NULL,
  `user_fname` varchar(20) NOT NULL,
  `user_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_Lname`, `email`, `user_password`, `user_id`, `user_fname`, `user_address`) VALUES
('user', 'user@gmail.com', 'user', 55, 'user', 'NO.18, 1ST FLOOR, 3RD MAIN, MUNIYELLAPPA LAYOUT, VINAYAKANAGAR, J.P NAGAR, 5TH PHASE BANGALURU, KARNATAKA, INDIA - 560078'),
('Banik', 'kalinda@gmail.com', '5Kalinda', 62, 'Kalinda', '4, Charmuni Compd, Link Road, Malad(w)  Mumbai, Maharashtra, 400064'),
('Krish', 'rani@gmail.com', '1RaniKrish', 63, 'Rani', 'C 50, Opp Mansarover Garden, Sharda Puri  Delhi, Delhi, 110015'),
('Banik', 'shakti@gmail.com', 'Shakti1221', 64, 'Shakti', '3887/1, Military Road Chowk, Anand Parbat  Delhi, Delhi, 110005'),
('Peri', 'mehul@gmail.com', 'DXGDZ6DtkY', 66, 'Mehul', '3887/1, Military Road Chowk, Anand Parbat  Delhi, Delhi, 110005'),
('Goda', 'rajni@gmail.com', 'cp3c2SGrSc', 67, 'Rajni', '1, Basement, Gujarath Indl Estate, Vishweshwar Nagar, Off Aarey Road, Goregaon (e)  Mumbai, Maharashtra, 400063'),
('Raj', 'kashika@gmail.com', 'sjBL6cPhkr', 68, 'Kashika', '115, Tj Complex, Pankaja Mill Road, Ramanathapuram  Coimbatore, Tamil Nadu, 641045'),
('Dubey', 'sahima@gmail.com', 'BvM7pmPxeY', 69, 'Sahima', 'Porbunder Castle, 3rd Pasta Lane, Colaba  Mumbai, Maharashtra, 400005'),
('Iyengar', 'rachana@gmail.com', '52H88tNA7C', 70, 'Rachana', 'E/13, Midc Indl Area, Taloja, Navi Mumbai  Mumbai, Maharashtra, 410208'),
('Luthra', 'viti@gmail.com', 'YtnjB5Uw7n', 71, 'Viti', '128, Venkatranganpillai Street Tripli  Chennai, Tamil Nadu, 600005'),
('Mitra', 'minali@gmail.com', '6qECNmtCXx', 72, 'Minali', 'S-8, Divine Home, Ic Colony, Next To Mary Girls School Bo, Mandapeshwar  Mumbai, Maharashtra, 400103'),
('Vala', 'arjun@gmail.com', 'vLqxtB39DA', 75, 'Arjun', '3887/1, Military Road Chowk, Anand Parbat  Delhi, Delhi, 110005'),
('Iyengar', 'ritika@gmail.com', 'Y89jnWsKNR', 76, 'Ritika', 'F 154, Main Road, Jagat Puri  Delhi, Delhi, 110051'),
('Raju', 'drishya@gmail.com', 'ZDMHs6CYS6', 78, 'Drishya', '1/2, Naaz Complex, 3 Nr, N R Road  Bangalore, Karnataka, 560002'),
('Narasimhan', 'puja@gmail.com', 'wxFuAK3Gxt', 79, 'Puja', 'Shop No.14, Janata Mkt, Nr Rly Stn, Chembur  Mumbai, Maharashtra, 400071'),
('Rajagopal', 'vasu@gmail.com', 'C5UFaSsBdB', 80, 'Vasu', '458/2a, Hanuman Road  Delhi, Delhi, 110017'),
('Goyal', 'jyotsna@gmail.com', 'Rr7dnSuCuM', 81, 'Jyotsna', '33 Dahanukar Bldg, 480 Kalbadevi Road, Kalbadevi  Mumbai, Maharashtra, 400002'),
('Saxena', 'yash@gmail.com', 'HMFRn2RnTv', 82, 'Yash', '14, 50 Rd, Muneshwara Block  Bangalore, Karnataka, 560026'),
('Setty', 'subhash@gmail.com', '5L4xSHcWEu', 83, 'Subhash', 'R No 15 1st Flr, No 23, Bhupat Bhavan, Vaju Kotak Marg, Ballard Estate  Mumbai, Maharashtra, 400038'),
('Sankar', 'narendra@gmail.com', 'YrkMMgsg84', 84, 'Narendra', '194/1/7, G. T. Road, Salkia  Kolkata, West Bengal, 711106'),
('Vala', 'kalind3a@gmail.com', '5Kalinda', 85, 'Arjun', '3887/1, Military Road Chowk, Anand Parbat  Delhi, Delhi, 110005');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
