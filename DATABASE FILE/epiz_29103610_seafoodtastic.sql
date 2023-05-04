-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql203.epizy.com
-- Generation Time: Aug 24, 2021 at 11:54 AM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_29103610_seafoodtastic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$mI/hpZ59vGgjs/lPTQWLJu.I82O93AEJ3gwFycAjuibOjAGi9dcTm', 'admin123@gmail.com', '2021-02-26 16:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` varchar(999) NOT NULL,
  `img` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `img`) VALUES
(1, 'Fishes', 'One of about 34,000 vertebrate animal species found worldwide in the fresh and salt waters. The cold-blooded majority of fish species. A range of vertebrates of different evolutionary lines are referred to by the term fish. Instead of a taxonomic group he described it as a way of life. Fish share certain features with other vertebrates as a members of the Phylum Chordata.', 'pexels-photo-3731945.jpeg'),
(2, 'Clams', 'Is a common bivalve mollusc name for several types. The word applies frequently only to people who are edible and live as fauna, living half way into the sand of the seabed and the riverbeds of their lives. Clam\'s are connected by two adductor muscles to two shells of equal size and have a strong burrowing foot. They live in both the fresh water and the sea. They prefer to burst into the mud in the salt water, and the water turbidity required varies with species and location.', 'pexels-kindel-media-8352388.jpg'),
(3, 'Shrimps', 'They are elongated-body decapod crustaceans and are mainly swimmers – mostly caridea and dendrobranchiata. Shrimps may also be synonymous with prawns covering long narrow, narrow muscles (abdomens). Shrimps may be synonymous with long, stalk-eyed swimming crustaceans with slim legs. They swim forward with swimmers on the base of their abdomen, although their reaction to escape is typically repeated spikes, and the tail leads them back very fast. Shrimps are common and abundant. Thousands of species are tailored to a broad range of environments.', 'pexels-kindel-media-8351657.jpg'),
(4, 'Crabs', 'Crabs are decapodic crustaceans of the Brachyura architecture, which typically have a very short, usually entirely hidden under the thorax. Their living space in the whole world is covered by a thick exoskeleton in fresh water and on land and has a single pair of pincers.', 'pexels-mark-stebnicki-2252617.jpg'),
(5, 'Seaweeds', '\"Seaweeds\" are the most common names in the ocean and in rivers, lakes and other water bodies of countless marine plant and algal species. Some sea algae are microscopic, like the phytoplankton suspended in the water column, which forms the foundation to many marine food chains. Some are enormous, such as the giant kelp, which grows from the ground of the sea, in abundant \'forests,\' and towers like red woods. They come in red, green, brown, and black colours, and are almost all washed out randomly on beaches and shores.', 'Seaweed-Salad-1.jpg'),
(14, 'Cephalopods', 'Any molluscan Cephalopod member, such as a squid, octopus, tailfish, or nautilus, is a cephalopod. The bilateral body symmetry, prominent heads and a set of weapons or tentacles modified from the primitive molluscan foot are characteristic for these marine animals.', 'OIP.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `name`, `about`, `price`, `img`) VALUES
(1, 1, 'Bangus Boneless', 'The absence of the numerous bones is one of the most popular food products in the Philippines because of the convenience that comes with eating. The boneless fish may be cooked (fried) with or without adding any spice, dried, smoked or frozen.', 260, 'bangus_boneless.jpg'),
(27, 4, 'Talangka', 'It is also called as “river crab”. It is the smallest among blue crabs and mud crabs. It weights around 65 grams each. The mud crab is smaller than these river crabs. The super thick and hard shell that the mud crab does, however, does not develop. These ', 280, 'talangka.jpg'),
(28, 5, 'Lato', 'Some of the names given to lentillifera are Lato, Sea Grapes, Latok and Green Caviar. The Philippines and nearby countries have a common type of edible seaweed. The main component of a famous Filipino salad known as \"Ensaladang Lato\" is the seaweed variet', 200, 'lato.jpg'),
(29, 2, 'Halaan', 'For several kinds of bivalve molluscs, Clam is a common name. The word often only applies to those who are edible and living as wildlife and live halfway in the sand on the sea floor or riverbeds.', 160, 'halaan.jpg'),
(30, 1, 'Bangus Dagupan', 'Bangus is the Philippines\' national fish known in English as milkfish. It is an adaptive, hard, and sturdy fish that can be grown in confined areas, which is the reason it is commonly grown in fish farms in the Philippines.', 240, 'bangus_dagupan.jpg'),
(31, 1, 'Tilapia', 'It is one of fisheries and aquaculture\'s most commercially important commodities. In almost all the major rivers and lakes of the country, including Laguna de Bay, Taal Lake and Lake Buhi, Tilapia fish styles are a common feature. Tilapia are locally also', 160, 'tilapia.jpg'),
(32, 1, 'Salmon Belly', 'Is the common name in the Salmonidae family for a number of species of ray-finned fish. Salmon come from the North Atlantic and Pacific Ocean tributaries. Salmon are typically anadromatic: snapping in freshwater, migrating into the sea, then re-emerging i', 400, 'salmon_belly.jpg'),
(33, 2, 'Tahong', 'Tahong is the common name used in saltwater and fresh-water habitats by members of several families of bivalve molluscs. The shells of these groups are elongated and asymmetrically compared to other food-rich clams, often more or less rounded or oval.', 140, 'tahong.jpg'),
(34, 3, 'Hipon', 'Shrimp are type of seafood consumed throughout the world. Shrimps belong to various Decapoda subordinates, they appear very similar and often interchangeably in commercial agriculture and wild fishing terms.', 520, 'hipon.jpg'),
(35, 1, 'Galunggong', 'In the Philippines Galunggong or Mackerel Scad is common but this fish is indeed very abundant and can be found mostly on subtropical islands, which are seen as game fish but are widely used as a bait because big groupers and snappers feeder. they are oft', 280, 'galunggong.jpg'),
(36, 1, 'Dalagang Bukid', 'Because of its unique red colour, this fish has its name. In the description of Filipina girls who wear a red round skirt, the color red is often used.', 340, 'dalagang_bukid.jpg'),
(37, 1, 'Yellowfin Tuna', 'It is a tuna species found in tropical and subtropical ocean pelagic waters throughout the world. Yellowfin is often marketed as ahi, Hawaiian bisahi, which is a name used there for the bigeye tuna, which is also very closely connected.', 440, 'yellow_fin.jpg'),
(38, 4, 'Alimango', 'Alimango, with thick hard shells and wide claws, is larder than the alimasag.\r\nThese are vigorous crabs with large gray to brown shells and strong pinchers. These crabs can grow up to 3 kilograms heavily! But those on the market usually weigh approximatel', 750, 'alimango.jpg'),
(39, 14, 'Squid', 'Squid is eaten in many cuisines.   Calamari is often used for squid dishes with said culinary name. In a number of other ways Squid can be prepared for consumption. Sometimes it is served raw in Korea, while other places like sushi, sashimi and tempura, g', 440, 'pusit.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(34, 'aileen', 'Aileen', 'Ballares', 'aileen@gmail.com', '99551323521', '$2y$10$FvSDmYTKWLh9CWuhRUHsfuWqALfXwzR7jIC00y0ZSvTihaFCSnWeG', '4957 Pearcy Avenue'),
(35, 'jamieaguilar', 'Jamie', 'Aguilar', 'jamieaguilar@gmail.com', '0929247125', '$2y$10$LAXMuHCIyh8yrVVy4JmYjuHls8QNXZf.uZPA/9ZjA8vJHhnsoWozu', 'Taguig City'),
(36, 'ryanarciaga24', 'Ryan', 'Arciaga', 'ryanarciaga1124@gmail.com', '9612507060', '$2y$10$ypQ4XYR4wgN9GlZeCMk/6u2Qza7QwZxciWdCpm8GINcNbANt8UpPu', '132 Quezon Street, Poblacion, Muntinlupa City'),
(37, 'aileen21', 'Aileen', 'Ballares', 'aileenballares21@gmail.com', '0912345678', '$2y$10$I2JcwhDmYsLJwIQtjkCTBOqHSo27be5wR4tpvgydmswsPzhrWyRBa', '3852, General Macabulos St., Brgy. Bangkal, Makati City'),
(39, 'kian25', 'Kian', 'Reyes', 'kianreyes2527@gmail.com', '9451691868', '$2y$10$h1ws1EpOkK9yz9pe1VkjA.YxU5R96.DKljXmQGCYb0ySjjhG/.UDm', 'Barangay BF Paranaque City'),
(40, 'france09', 'France Lhauren', 'Barangay', 'francebarangay@gmail.com', '9978135458', '$2y$10$UUeSF.YO.Q0qKvU3brl0WeyB7UCvPB3WeLEL2z02BP5hTiw0Z8wEm', 'Taguig');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `success-date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`o_id`, `u_id`, `product_id`, `product_name`, `quantity`, `price`, `status`, `date`, `success-date`, `category_id`) VALUES
(53, 40, 1, 'Bangus Boneless', 1, 260, 'closed', '2021-08-17 22:23:34', '2021-08-18 02:27:43', 1),
(42, 34, 1, 'Bangus Boneless', 1, 260, 'closed', '2021-08-06 11:28:28', '2021-08-06 15:29:20', 1),
(43, 39, 31, 'Tilapia', 1, 160, 'closed', '2021-08-06 12:49:11', '2021-08-06 16:51:41', 1),
(44, 39, 38, 'Alimango', 1, 750, 'closed', '2021-08-06 12:49:11', '2021-08-06 16:51:34', 4),
(45, 39, 39, 'Squid', 1, 440, 'closed', '2021-08-06 12:49:11', '2021-08-06 16:51:23', 14),
(49, 36, 29, 'Halaan', 1, 160, NULL, '2021-08-15 06:33:08', '2021-08-15 10:33:08', 2),
(50, 36, 27, 'Talangka', 1, 280, NULL, '2021-08-15 06:33:08', '2021-08-15 10:33:08', 4),
(51, 36, 1, 'Bangus Boneless', 1, 260, NULL, '2021-08-15 06:33:08', '2021-08-15 10:33:08', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
