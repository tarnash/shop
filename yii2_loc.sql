-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.43 - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных yii2_loc
CREATE DATABASE IF NOT EXISTS `yii2_loc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `yii2_loc`;

-- Дамп структуры для таблица yii2_loc.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii2_loc.category: ~31 rows (приблизительно)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT IGNORE INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
	(1, 0, 'Sportswear', 'Sportswear', 'Sportswear ...'),
	(2, 0, 'Mens', 'Mens', 'Mens ...'),
	(3, 0, 'Womens', 'Womens', 'Womens ......'),
	(4, 1, 'Nike', NULL, NULL),
	(5, 1, 'Under Armour', NULL, NULL),
	(6, 1, 'Adidas', NULL, NULL),
	(7, 1, 'Puma', NULL, NULL),
	(8, 1, 'ASICS', NULL, NULL),
	(9, 2, 'Fendi', NULL, NULL),
	(10, 2, 'Guess', 'Guess', 'Gues описание ....'),
	(11, 2, 'Valentino', NULL, NULL),
	(12, 2, 'Dior', 'dior', 'dior...'),
	(13, 2, 'Versace', NULL, NULL),
	(14, 2, 'Armani', NULL, NULL),
	(15, 2, 'Prada', NULL, NULL),
	(16, 2, 'Dolce and Gabbana', NULL, NULL),
	(17, 2, 'Chanel', NULL, NULL),
	(18, 2, 'Gucci', NULL, NULL),
	(19, 3, 'Fendi', NULL, NULL),
	(20, 3, 'Guess', NULL, NULL),
	(21, 3, 'Valentino', NULL, NULL),
	(22, 3, 'Dior', NULL, NULL),
	(23, 3, 'Versace', NULL, NULL),
	(24, 0, 'Kids', NULL, NULL),
	(25, 0, 'Fashion', NULL, NULL),
	(26, 0, 'Households', NULL, NULL),
	(27, 0, 'Interiors', NULL, NULL),
	(28, 0, 'Clothing', NULL, NULL),
	(29, 0, 'Bags', 'сумки ключевики...', 'сумки описание...'),
	(30, 0, 'Shoes', NULL, NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Дамп структуры для таблица yii2_loc.image
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii2_loc.image: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT IGNORE INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
	(1, 'Products/Product11/e96612.jpg', 11, 1, 'Product', 'de5b193d5b-1', ''),
	(2, 'Products/Product11/5c659d.jpg', 11, NULL, 'Product', 'ea2a710a87-2', ''),
	(3, 'Products/Product11/d559e0.jpg', 11, NULL, 'Product', 'c3a72c7cca-3', ''),
	(4, 'Products/Product2/581cce.jpg', 2, 0, 'Product', 'cbed0df75c-3', ''),
	(5, 'Products/Product2/83a8c2.jpg', 2, 0, 'Product', 'f6bf31748c-4', ''),
	(6, 'Products/Product7/f2ec6a.jpg', 7, 1, 'Product', 'a83983080f-1', ''),
	(7, 'Products/Product7/490d11.jpg', 7, NULL, 'Product', 'd73d573159-2', ''),
	(8, 'Products/Product7/8ab560.jpg', 7, NULL, 'Product', 'ca62d1be0d-3', ''),
	(9, 'Products/Product7/d6f574.jpg', 7, NULL, 'Product', 'f4e3f2516f-4', ''),
	(10, 'Products/Product9/871e0e.jpg', 9, 0, 'Product', '66e26954b0-2', ''),
	(11, 'Products/Product12/70d752.jpg', 12, 0, 'Product', '7851cb41f0-2', ''),
	(12, 'Products/Product3/b35af8.jpg', 3, 0, 'Product', 'fe2078d8b0-2', ''),
	(13, 'Products/Product1/bf883c.jpg', 1, 0, 'Product', 'b4ab8da449-3', ''),
	(14, 'Products/Product1/6b35fd.jpg', 1, 0, 'Product', '8c82084ac2-4', ''),
	(15, 'Products/Product1/b80b0e.jpg', 1, 0, 'Product', 'fb00610c94-5', ''),
	(16, 'Products/Product1/e5c56a.jpg', 1, 0, 'Product', '54a40c9a92-6', ''),
	(17, 'Products/Product1/c279b8.jpg', 1, 0, 'Product', 'a2abae3c84-2', ''),
	(18, 'Products/Product1/9705e3.jpg', 1, 1, 'Product', '013ae14547-1', ''),
	(19, 'Products/Product2/d42e88.jpg', 2, 0, 'Product', '1e01e61715-2', ''),
	(20, 'Products/Product3/320f2c.jpg', 3, 1, 'Product', 'ec741293ec-1', ''),
	(21, 'Products/Product9/09bdea.jpg', 9, 1, 'Product', '7631dc5b8d-1', ''),
	(22, 'Products/Product13/863af7.jpg', 13, 1, 'Product', 'd08d47984b-1', ''),
	(23, 'Products/Product13/531e92.jpg', 13, NULL, 'Product', '7db1161b5b-2', ''),
	(24, 'Products/Product13/6d53e8.jpg', 13, NULL, 'Product', '30bccb7eb3-3', ''),
	(25, 'Products/Product13/10e036.jpg', 13, NULL, 'Product', 'a90e495a93-4', ''),
	(26, 'Products/Product2/7034c0.jpg', 2, 1, 'Product', '6744854fad-1', ''),
	(27, 'Products/Product1/6da95e.jpg', 1, NULL, 'Product', '07b8aa9f60-7', ''),
	(28, 'Products/Product1/e706d7.jpg', 1, NULL, 'Product', '371114aeff-8', ''),
	(29, 'Products/Product1/1553e1.jpg', 1, NULL, 'Product', '1d0e3bea07-9', ''),
	(30, 'Products/Product1/fbef0b.jpg', 1, NULL, 'Product', '77ce88d50a-10', ''),
	(31, 'Products/Product4/4647d6.jpg', 4, 1, 'Product', '80d16cf0d6-1', ''),
	(32, 'Products/Product4/743230.jpg', 4, NULL, 'Product', 'aa2372e065-2', ''),
	(33, 'Products/Product4/5e5918.jpg', 4, NULL, 'Product', '72ca779dcd-3', ''),
	(34, 'Products/Product4/60c3ce.jpg', 4, NULL, 'Product', 'f18c3d135f-4', ''),
	(35, 'Products/Product12/ee2eea.jpg', 12, 1, 'Product', '4c8262aae5-1', ''),
	(36, 'Products/Product12/0216f9.jpg', 12, NULL, 'Product', '8d46e8f98d-3', ''),
	(37, 'Products/Product12/40fb61.jpg', 12, NULL, 'Product', 'a7873ea4ef-4', ''),
	(38, 'Products/Product12/e69ce4.jpg', 12, NULL, 'Product', 'c3b3291d20-5', ''),
	(39, 'Products/Product12/8688d2.png', 12, NULL, 'Product', 'b11ff2e99d-6', '');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;

-- Дамп структуры для таблица yii2_loc.migration
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii2_loc.migration: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT IGNORE INTO `migration` (`version`, `apply_time`) VALUES
	('m000000_000000_base', 1565702623),
	('m140622_111540_create_image_table', 1566252327),
	('m140622_111545_add_name_to_image_table', 1566252327),
	('m190813_122710_create_category_table', 1565702625),
	('m190813_124947_create_product_table', 1565702625),
	('m190815_050702_create_order_table', 1565846083),
	('m190815_051153_create_order_items_table', 1565846084),
	('m190815_093124_create_user_table', 1565861620);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;

-- Дамп структуры для таблица yii2_loc.order
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(11) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii2_loc.order: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT IGNORE INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `adress`) VALUES
	(1, '2019-08-15 10:39:52', '2019-08-17 02:32:58', 8, 340, '0', 'Денис', '1@1.com', '111', '222'),
	(3, '2019-08-15 10:44:54', '2019-08-15 10:44:54', 11, 544, '1', 'Денис', '1@1.com', '2222222222', 'www'),
	(4, '2019-08-15 11:10:24', '2019-08-15 11:10:24', 1, 56, '1', 'Денис', '1@1.com', '2222222222', 'www.net'),
	(5, '2019-08-15 11:14:48', '2019-08-19 20:53:05', 3, 146, '0', 'Денис', '1@1.com', '2222222222', 'www'),
	(6, '2019-08-16 01:13:13', '2019-08-16 06:12:32', 6, 292, '1', 'Денис', '1@1.com', '2222222222', 'www'),
	(7, '2019-08-16 01:15:39', '2019-08-16 04:12:27', 6, 292, '1', 'Денис', '1@1.com', '2222222222', 'www'),
	(9, '2019-08-16 21:16:40', '2019-08-17 00:04:01', 2, 156, '1', 'Денис', '1@1.com', '333333333333', 'www.net');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- Дамп структуры для таблица yii2_loc.order_items
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii2_loc.order_items: ~19 rows (приблизительно)
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT IGNORE INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
	(1, 1, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 5, 280),
	(2, 1, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 3, 60),
	(3, 2, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 5, 280),
	(4, 2, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 3, 60),
	(5, 3, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 9, 504),
	(6, 3, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 2, 40),
	(7, 4, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
	(8, 5, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
	(9, 5, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
	(10, 5, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
	(11, 6, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 2, 112),
	(12, 6, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 2, 40),
	(13, 6, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 2, 140),
	(14, 7, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 2, 112),
	(15, 7, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 2, 40),
	(16, 7, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 2, 140),
	(17, 8, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
	(18, 8, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
	(19, 9, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
	(20, 9, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;

-- Дамп структуры для таблица yii2_loc.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0',
  `in_stock` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii2_loc.product: ~14 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT IGNORE INTO `product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `hit`, `new`, `sale`, `in_stock`) VALUES
	(1, 4, 'Джинсы Garcia 244/32/856 28-32 р Серо-синие', '<p>Великолепные джинсы винтажно-голубого цвета. Настоящая находка для любителей качественного денима. Особенности: Зауженные к низу Пять карманов Высококачественный деним Высокая посадка (high fit) Выгодно подчеркивают фигуру</p>\r\n', 10, '', '', 'product1.jpg', '1', '0', '0', '1'),
	(2, 4, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', '<p>MR520 &ndash; амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом. Женские джинсы фасона boyfriend fit (в переводе с англ. &ndash; &quot;джинсы моего парня&quot;). Модель с зауженными штанинами. Застегивается на пуговицы. Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади. Изделие декорировано эффектом потертости, вареным эффектом и необычными швами.</p>\r\n', 56, '', '', 'product2.jpg', '1', '0', '0', '0'),
	(3, 9, 'Блуза Mango 53005681-05 M Бежевая', '<p>Испанский бренд модной одежды &quot;Mango&quot; родился в 1984 году в Барселоне, где и по сей день находится штаб-квартира компании. В том же городе появился и первый магазин &mdash; на улице Пасео де Грасия (Paseo de Gracia). Компания, основанная братьями Исааком и Нахманом Андиком (Isaac &amp; Nahman Andic), очень быстро набрала популярность &mdash; всего лишь годом позднее был открыт магазин в другом городе, на этот раз в Валенсии. Одежда &quot;Mango&quot; отличается высоким качеством, приемлемой ценой, современным дизайном и неповторимым стилем.</p>\r\n', 20, '', '', 'product3.jpg', '1', '0', '1', '1'),
	(4, 21, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', '<p>Tom Tailor Group &mdash; один из ведущих и быстро развивающихся Fashion холдингов германии и европы, продукция которого ориентирована на целевую аудиторию в возрасте от 0 до 60 лет. Tom Tailor известен на рынке текстиля с 1962 года и до сих пор сохраняет стандарты немецкого качества. Tom Tailor предлагает повседневную одежду и аксессуары высокого качества для женщин, мужчин и детей. Одежда от Tom Tailor поможет создать активный повседневный образ с нотками элегантности.</p>\r\n', 70, '', '', 'product4.jpg', '1', '0', '1', '0'),
	(5, 25, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', '', 0, '', '', 'product5.jpg', '1', '1', '0', '1'),
	(6, 28, 'Кардиган Levi\'s Icy Grey Heather M', NULL, 100, NULL, NULL, 'product6.jpg', '1', '1', '0', '0'),
	(7, 28, 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', '<p>Casual марка молодежной женской одежды ONLY является частью датской компании Bestseller AS. Изначально Bestseller занимался производством детской одежды, а в 1995 году появилась на свет марка ONLY. Популярность этой марки возрастала быстрыми темпами и теперь ONLY владеет 770 магазинами в более чем 40 странах мира. ONLY &mdash; бренд стильной молодежной одежды. Это бренд для тех, кто любит добиваться успеха и быть не таким, как все. Демократичные цены, модные модели, экологически чистые ткани делают одежду от ONLY сверхпопулярной.</p>\r\n', 0, '', '', 'no-image.png', '1', '0', '1', '1'),
	(8, 26, 'Брюки SK House 2211-1972кор L Коричневые', '\r\n\r\nКомпания SK House — это украинский производитель модной женской одежды с безупречной репутацией и тысячами поклонников по всему СНГ. SK House изготавливает качественный и долговечный товар, созданный из высококачественных тканей. Компания использует современные методы пошива и, изучая текущие мировые тенденции и локальные требования покупателей, создает модели, которые не задерживаются на полках длительное время и быстро раскупаются во всех странах.', 99, NULL, NULL, 'no-image.png', '0', '0', '1', '0'),
	(9, 26, 'Брюки Kira Plastinina 17-07-17418-FL-58 L', '', 0, '', '', 'product1.jpg', '0', '1', '0', '1'),
	(10, 29, 'Сумка GUSSACI TUGUS13A060-3-10', 'Простота, инновационный стиль бренда, высококачественные требования к продукции, благодаря этому GUSSACI Italy пользуется высокой репутацией во многих странах Европы. Превосходное качество, отличный дизайн, соответствующие цены делают "Гуссачи" модным и популярным!\r\n\r\nОсобенности:\r\n\r\nКоличество основных отделений: 1. Сумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на "молнии". На тыльной стороне модели есть прорезной карман на "молнии". Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии. Сумка имеет 2 ручки для переноса на локте или в руке. Их длина не регулируется и составляет 45 см, а высота от крайней точки ручки до сумки — 16 см. В комплект к изделию прилагается съемный плечевой ремень. Его длина может регулироваться при помощи металлической пряжки от 78 до 137.5 см. Сумка закрывается при помощи застежки-молнии.\r\n\r\nМатериал подкладки: плотная ткань.\r\nМатериал сумки: кожезаменитель.\r\nЦвет фурнитуры: золото.\r\nРазмеры сумки: 26 х 25 х 10.5 см', 15, NULL, NULL, 'product3.jpg', '0', '1', '0', '0'),
	(11, 29, 'Cумка Michael Kors Jet Set Travel Нежно-розовая', '<p>Особенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом. Модели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.</p>\r\n', 200, '', '', 'no-image.png', '0', '0', '1', '0'),
	(12, 29, 'Cумка Michael Kors Selma Золотистая', '<p>Особенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом. Модели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.</p>\r\n', 205, '', '', 'product5.jpg', '0', '1', '0', '1'),
	(13, 29, 'Cумка Michael Kors Bedford Красная', '<p>Особенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом. Модели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.</p>\r\n', 100, 'ключевые слова ...', 'описание...', 'no-image.png', '1', '1', '0', '1'),
	(14, 29, 'Cумка Michael Kors JS Travel Светло-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 0, NULL, NULL, 'no-image.png', '0', '1', '0', '0');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Дамп структуры для таблица yii2_loc.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы yii2_loc.user: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT IGNORE INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
	(1, 'admin', '$2y$13$BHA8vrVFqPuVEeJUSh0h3eex4S8wJrNPb2eHtE3H3FBVOmU1rK7NS', 'p6fFk3sIH5pIOkurDcG6mloxtkAo9bEm');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
