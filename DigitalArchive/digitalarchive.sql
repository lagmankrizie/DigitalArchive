-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 08:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitalarchive`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `summary` varchar(254) NOT NULL,
  `content` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `summary`, `content`, `created`, `category_id`, `member_id`, `image_id`, `published`) VALUES
(1, 'Business Brochure', 'A business brochure is a printed marketing material used to promote a company’s products, services, or brand.', 'A business brochure provides essential information about a company in a clear and visually appealing format. It typically includes an introduction to the business, its services or products, key benefits, contact details, and strong visuals. Designed to attract potential clients, brochures help communicate professionalism, build trust, and support marketing efforts.', '2026-02-28 04:21:03', 1, 2, 1, 1),
(2, 'Business Card', 'A business card is a small printed material that shares essential contact and brand information.', 'A business card includes key details such as the company name, logo, contact number, email, and address. It serves as a professional introduction during meetings and networking events. Compact yet impactful, a well-designed business card strengthens brand identity and leaves a lasting impression.', '2026-02-28 11:44:03', 3, 2, 2, 1),
(3, 'Mcdo Big Beef Burger', 'The ad poster highlights the delicious and juicy Big Beef Burger of McDonalds.', 'It focuses on the thick beef patty, fresh ingredients, and satisfying flavor to attract hungry customers.Sink your teeth into the NEW Big Beef Burger! Made with a thick, juicy beef patty, fresh lettuce, creamy sauce, and soft toasted buns — every bite is packed with flavor.', '2026-02-28 01:45:52', 4, 1, 3, 1),
(4, 'Vogue Magazine', 'Vogue featured Billie Eilish in a bold and transformative photoshoot.', 'In her Vogue feature, Billie Eilish embraced a more classic and feminine style, wearing corsets and high-fashion pieces.The magazine highlighted her confidence, growth, and control over her image, proving that fashion can be a powerful form of personal expression.', '2026-02-28 03:05:35', 3, 3, 4, 1),
(5, 'The Summer I Turned Pretty', 'The Summer I Turned Pretty by Jenny Han is a coming-of-age romance novel about first love, friendship, and growing up.', 'The story follows Belly, who spends every summer at Cousins Beach with her family and family friends. This summer is different — she’s no longer the little girl everyone remembers. As she grows closer to brothers Conrad and Jeremiah, she finds herself caught in a love triangle. The novel explores young love, heartbreak, and the bittersweet feeling of growing up.', '2026-02-28 07:31:16', 3, 3, NULL, 1),
(6, 'Coronavirus:Now it’s getting serious', 'This front page of News Letter highlights the growing seriousness of the coronavirus outbreak. The main headline, “Coronavirus: Now it’s getting serious,” emphasizes the rising concern and major disruptions happening in Belfast and across Northern Ireland.', 'The newspaper reports that public events like the St. Patrick’s Day parade were cancelled, schools were closed for deep cleaning, and local cases of COVID-19 were confirmed. The bold headline and large images show the urgency of the situation, informing readers that the pandemic was beginning to seriously affect daily life, health services, and the community.', '2026-02-28 13:02:47', 4, 1, 6, 1),
(7, 'Fitness App Design', 'The Fitness App UI Design is a modern digital interface created to help users track workouts, monitor progress, and maintain a healthy lifestyle.', 'The fitness app UI design features a user-friendly dashboard showing daily activity, calories burned, workout plans, and progress charts. The design prioritizes accessibility and smooth interaction, making it easy for users to set goals, track performance, and stay consistent with their fitness journey.', '2026-02-28 02:16:22', 2, 1, 7, 1),
(8, 'GlobalTranz', 'The image presents the partnership between GlobalTranz and Worldwide Express. It highlights their merger to strengthen logistics and freight services through technology-driven solutions and a wide transportation network.', 'The image displays multiple devices (desktop, laptop, tablet, and phone) showing the companies’ website pages. It features the announcement that Worldwide Express and GlobalTranz are joining forces. The content emphasizes logistics solutions, freight services, and transportation management.', '2026-02-28 06:45:49', 2, 2, 8, 1),
(9, 'Valorant', 'Valorant is a free-to-play tactical first-person shooter developed by Riot Games. The game combines precise gunplay with unique character abilities, creating a strategic and competitive team-based experience.', 'Valorant is a 5v5 multiplayer game where two teams compete as attackers and defenders. Each player selects an “Agent,” and every Agent has special abilities that support the team in different ways, such as healing, scouting, blocking vision, or dealing damage.', '2026-02-28 09:09:40', 4, 1, 9, 1),
(10, 'Stranger Things Season 3', 'Stranger Things Season 3 takes place during the summer of 1985 in Hawkins, where the group faces a new threat from the Upside Down while dealing with growing friendships, relationships, and personal changes.', 'In Season 3, a new shopping mall called Starcourt Mall opens in Hawkins, becoming a central location in the story. Strange events begin happening again, and the Mind Flayer returns, possessing people and creating a terrifying monster.', '2026-02-28 06:14:40', 3, 1, 10, 1),
(11, 'Money Heist', 'Money Heist (La Casa de Papel) is a Spanish crime drama series about a group of robbers led by a mastermind called the Professor. The series focuses on their carefully planned heists, intense action scenes, and the emotional struggles of each character.', 'Money Heist follows a criminal mastermind known as the Professor, who recruits eight individuals with unique skills to carry out ambitious robberies. Their first major plan is to rob the Royal Mint of Spain, where they aim to print billions of euros. Instead of stealing existing money, they plan to create their own.', '2026-02-28 10:01:19', 2, 3, 11, 1),
(12, 'Prison Break', 'Prison Break is an American action-drama series about a man who deliberately gets himself imprisoned to help his wrongly accused brother escape from death row.', 'Prison Break centers on Michael Scofield, a brilliant structural engineer who believes his brother, Lincoln Burrows, was falsely convicted of murder. To save him from execution, Michael carefully plans a prison escape and tattoos the prison’s blueprint on his body as part of his strategy.', '2026-02-28 03:24:52', 1, 2, 12, 1),
(13, 'A Fine Dessert', 'A Fine Dessert: Four Centuries, Four Families, One Delicious Treat tells the story of four families from different time periods who all make the same dessert, blackberry fool.', 'The book follows families from the 1700s to modern times as they prepare blackberry fool using the tools and ingredients of their era. The final scene shows a present-day family enjoying the dessert together. The detailed illustrations by Sophie Blackall add depth and realism to each historical setting.', '2026-02-28 00:44:01', 2, 2, 13, 1),
(14, 'Dave the Potter', 'Dave the Potter: Artist, Poet, Slave tells the true story of David Drake, an enslaved African American ceramic artist and poet known for his skilled pottery and powerful engraved verses.', 'The book is brought to life through vivid illustrations by Bryan Collier. Collier’s artwork features bright colors, detailed facial expressions, and collage-style backgrounds. His illustrations include symbolic elements, such as patterns in the land and faces hidden in tree bark, adding emotional depth and meaning to Dave’s story.', '2026-02-28 05:15:20', 1, 1, 14, 1),
(15, 'Islandborn', 'Leo Espinosa’s illustrations use simple figures and detailed backgrounds to highlight warmth and personality, with objects that convey Lola’s family life and culture.', 'Leo Espinosa’s illustrations feature simply rendered figures with complex backgrounds, a slightly skewed perspective that adds visual interest, and surrounding objects that reveal Lola’s life, emphasizing family and cultural context.
', '2026-02-28 12:36:08', 4, 2, 15, 1),
(16, 'The First Drawing', 'Mordicai Gerstein’s illustration of a cave mammoth uses detailed colors and textures to reflect firelight, highlighting the divide between the illuminated artist and shadowed onlookers.', 'Mordicai Gerstein’s “first drawing” shows a mammoth on a textured cave wall, with flickering firelight, separating the illuminated artist from the shadowed onlookers, while rich colors and paint strokes add depth and charm.', '2026-02-28 03:21:44', 2, 1, 16, 1),
(17, 'Summer Break', 'John Lee’s illustration captures realistic details while evoking a romantic, nostalgic summer atmosphere, blending authenticity with a warm, dreamy glow.', 'John Lee’s artwork combines authentic details, like rough pavement and scattered ice cream displays, with the romantic glow of a summertime sunset, creating a nostalgic and dreamy scene.', '2026-02-28 01:46:31', 3, 3, 17, 1),
(18, 'A House That Once Was', 'This pointillism-inspired illustration uses bright, sponge-like colors over dark lines to create a joyful contrast with the more serious text, making it visually striking.', 'The illustration’s vibrant, pointillism-inspired patterns not only catch the eye but also bring the story to life, creating a joyful, dynamic energy that contrasts with the seriousness of the text, showing how visuals can add emotion and depth to a children’s book.
s', '2026-02-28 10:05:19', 2, 1, 18, 1),
(19, 'The Moonlanding', 'The iconic photograph known as The Moonlanding was taken by astronaut Neil Armstrong during the historic Apollo 11 mission to the moon.', 'Early space exploration began with unmanned balloons in the 1900s. Over time, research led to Apollo 11, when Neil Armstrong became the first person to walk on the Moon in 1969, marking the result of many years of scientific effort and teamwork.', '2025-04-11 03:52:02', 4, 2, 19, 1),
(20, 'The Tetons and the Snake River', 'one of the most famous photographs in American history. Taken in 1942 by Ansel Adams, it captures the rugged beauty of the Grand Teton mountain range.', 'The photograph highlights the dramatic landscape of the Grand Tetons rising above the Snake River, showcasing the power and beauty of nature.Ansel Adams’ skillful use of lighting and composition emphasizes the textures of the mountains, clouds, and water. Beyond its artistic value, the image plays an important role in promoting environmental awareness.', '2025-04-15 02:04:39', 1, 2, 20, 1),
(21, 'The Burning Monk', 'The Burning Monk, taken by Malcolm Browne, shows Vietnamese monk Thích Quảng Đức self-immolating on June 11, 1963, in protest against the South Vietnamese government.', 'The photograph captures the monk sitting calmly in flames, symbolizing extreme sacrifice and protest. It became a powerful visual statement against injustice and remains an enduring icon of courage and activism.', '2025-04-19 11:08:11', 3, 3, 21, 1),
(22, 'First successful heart transplant in Poland', 'The photograph shows Dr. Zbigniew Religa monitoring his patient after Poland’s first heart transplant in 1985, highlighting dedication, resilience, and the power of photography to capture profound human stories.', 'The image captures a moment of care and determination, illustrating the impact of medical achievement and human compassion. It stands as a timeless example of how photography can tell powerful, emotional stories.', '2025-04-22 00:49:27', 1, 1, 22, 1),
(23, 'Lunch atop a skyscraper', 'Lunch atop a Skyscraper shows workers resting on a beam high above New York City’s Rockefeller Center.', 'Taken by Charles C. Ebbets in 1932, the photograph captures construction workers casually eating lunch while sitting on a steel beam 69 floors above the streets of Manhattan. It highlights both the incredible risk and bravery of these men and the grandeur of the growing New York skyline during the height of the skyscraper boom.', '2025-04-25 05:51:19', 4, 3, 23, 1),
(24, 'Mushroom Cloud Over Nagasaki', 'The photograph of the mushroom cloud over Nagasaki symbolizes the devastating power of nuclear weapons and the tragedy of war.', 'On August 9, 1945, the atomic bomb Fat Man was dropped on Nagasaki, causing massive destruction and loss of life. The famous image of the mushroom cloud was taken by Charles Levy during the mission. Over time, the photograph became a powerful symbol of the horrors of nuclear warfare and the importance of peace.', '2025-04-25 12:11:42', 1, 1, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `description` varchar(254) NOT NULL,
  `navigation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `navigation`) VALUES
(1, 'Print', 'Creative graphic design', 1),
(2, 'Digital', 'Dynamic visuals designs', 1),
(3, 'Illustration', 'Expressive visuals that bring ideas to life', 1),
(4, 'Photography', 'Visual storytelling through captured images', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `file` varchar(254) NOT NULL,
  `alt` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `file`, `alt`) VALUES
(1, 'business-brochure.jpg', 'Corporate brochure layout'),
(2, 'business-cards.jpg', 'Minimalist business card design'),
(3, 'Mcdo.jpg', 'Mcdo Burger Promo Poster'),
(4, 'magazine.jpg', 'Billie Eillish Vogue'),
(5, 'TSITP.jpg', 'TSITP book '),
(6, 'covid-newspaper.jpg', 'Pandemic news cover'),
(7, 'fitness.png', 'Fitness mobile app UI'),
(8, 'Globaltranz.jpg', 'Globaltranz branding design'),
(9, 'valorant.jpg', 'Valorant game'),
(10, 'stranger-things.jpg', 'Stranger Things S3 poster'),
(11, 'money-heist.jpg', 'Money Heist poster'),
(12, 'prison-break.avif', 'Psidon Break poster'),
(13, 'fine-dessert.jpg', 'Fine Dessert book cover'),
(14, 'dave-potter.jpg', 'Dave Potter book cover'),
(15, 'islandborn.jpg', 'Islandborn book cover'),
(16, 'first-drawing.jpg', 'First Drawing book cover'),
(17, 'summer-break.jpg', 'Summer Break book cover'),
(18, 'house-once.jpg', 'House Once book cover'),
(19, 'moonlanding.jpg', 'Historic moon landing photograph'),
(20, 'river.jpg', 'Landscape nature photograph'),
(21, 'burning-monk.jpg', 'Historic protest photograph'),
(22, 'heart-transplant.jpg', 'Historic medical photograph'),
(23, 'skyscraper.jpg', 'Workers on skyscraper photograph'),
(24, 'mushroom-cloud.jpg', 'Atomic bomb mushroom cloud photograph');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `forename` varchar(254) NOT NULL,
  `surname` varchar(254) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `joined` timestamp NOT NULL DEFAULT current_timestamp(),
  `picture` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `forename`, `surname`, `email`, `password`, `joined`, `picture`) VALUES
(1, 'Sara', 'Ludy', 'saraludy@gmail.com', 'sara01', '2026-02-26 04:04:23', 'sara.jpg'),
(2, 'Mike', 'Winkelmann', 'mikewinkelmann@gmail.com', 'mike02', '2026-02-27 04:15:18', 'mike.jpg'),
(3, 'Refik', 'Anadol', 'refikanadol@gmail.com', 'refik03', '2026-02-28 02:53:47', 'refik.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `author_id` (`member_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `category_exists` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `image_exists` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `member_exists` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
