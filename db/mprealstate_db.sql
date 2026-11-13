-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-11-2026 a las 17:31:49
-- Versión del servidor: 11.4.13-MariaDB
-- Versión de PHP: 8.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mprealstate_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `about_us`
--

INSERT INTO `about_us` (`id`, `titulo`, `descripcion`, `imagen`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MISION', 'asdasdsad', 'storage/images/imagen/fl85XXUtND_Ima2.png', 0, '2024-08-02 21:33:46', '2025-06-09 18:19:09'),
(2, 'Titulo', 'Descripcion', 'storage/images/imagen/8t0vje5R1Q_MP101001_1.png', 1, '2024-08-02 21:33:56', '2025-06-09 18:18:51'),
(3, 'NUESTRA HISTORIA', 'qweqwdqw', 'storage/images/imagen/0B2yAS5w0E_image 15.png', 0, '2024-08-02 21:34:50', '2025-10-28 15:56:25'),
(4, 'Vision2', 'qqqqq', NULL, 0, '2024-08-02 23:53:17', '2025-06-09 18:19:07'),
(5, 'Cliente Satisfecho', 'un cliente mas, satisfecho con nuestras propiedades, este cliente ya tiene la llave de su nueva propiedad', 'storage/images/imagen/Q3GQOQ2nVf_ventas.webp', 1, '2025-06-09 18:37:27', '2025-06-27 22:25:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `price_id` bigint(20) UNSIGNED NOT NULL,
  `street` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `valores` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_multiple` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `attributes`
--

INSERT INTO `attributes` (`id`, `titulo`, `imagen`, `descripcion`, `valores`, `color`, `type`, `visible`, `status`, `created_at`, `updated_at`, `is_multiple`) VALUES
(1, 'Marcas', NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-04-16 20:53:18', '2025-04-16 20:53:18', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attributes_values`
--

CREATE TABLE `attributes_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `valor` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attribute_product_values`
--

CREATE TABLE `attribute_product_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_id` bigint(20) UNSIGNED NOT NULL,
  `img_atributo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `title_btn` varchar(255) DEFAULT NULL,
  `url_btn` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `potition` varchar(255) DEFAULT NULL,
  `url_page` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `extract` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `name_image` varchar(255) DEFAULT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `extract`, `description`, `url_image`, `name_image`, `url_video`, `meta_title`, `meta_description`, `meta_keywords`, `visible`, `status`, `created_at`, `updated_at`) VALUES
(3, 9, 'Noticias', NULL, '<p>El mercado inmobiliario del pa&iacute;s registrar&iacute;a una expansi&oacute;n de 8% como consecuencia de la reducci&oacute;n de tasas que aplica el Banco Central de Reserva (BCR), proyect&oacute; el gerente comercial de Urbana Per&uacute;, Humberto Mar&iacute;n.</p>\r\n\r\n<p>Precis&oacute; que la disminuci&oacute;n de las tasas de inter&eacute;s ha sido un factor clave en el impulso del sector, con una tasa referencial que ha pasado de 7.75% en el 2023 a 6.25% en la actualidad.</p>\r\n\r\n<p>&ldquo;Esta reducci&oacute;n ha resultado en un mayor acceso al financiamiento para los potenciales compradores, con tasas que oscilan entre 9.5% y 10%, dependiendo del score del cliente&rdquo;, refiri&oacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Iniciativas</strong></p>\r\n\r\n<p>En cuanto a las iniciativas del sector inmobiliario para este a&ntilde;o, Mar&iacute;n mencion&oacute; el incremento de los bonos mediante el subsidio para el Fondo Mivivienda, lo que facilita el acceso a la vivienda para m&aacute;s peruanos.</p>\r\n\r\n<p>&ldquo;Adem&aacute;s, est&aacute; la liberaci&oacute;n de la CTS y el acceso al 25% de la AFP para la primera vivienda, lo que brinda opciones adicionales de financiamiento&rdquo;, sostuvo el ejecutivo.</p>\r\n\r\n<p>Mar&iacute;n tambi&eacute;n destac&oacute; la estabilidad del tipo de cambio y la pr&oacute;xima liberaci&oacute;n de la CTS en mayo, que generar&aacute;n mayor dinamismo en el mercado.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Proyectos</strong></p>\r\n\r\n<p>Lima Centro, La Victoria y Cercado de Lima ganan popularidad debido al apoyo de las municipalidades para desarrollar proyectos de vivienda de inter&eacute;s social (VIS).</p>\r\n\r\n<p>Fuente: El Peruano</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>https://www.elperuano.pe/noticia/238773-mercado-inmobiliario-peruano-creceria-8</p>', 'storage/images/post/', 'mdpE6rlhHQ_blog1.png', NULL, NULL, NULL, NULL, 1, 1, '2025-05-30 23:41:42', '2025-05-31 14:06:19'),
(4, 10, 'Nuestros Clientes', NULL, '<p>Alisson Alva</p>\r\n\r\n<p>&ldquo;Me asesor&oacute; s&uacute;per bien y pude vender mi propiedad s&uacute;per r&aacute;pido&rdquo;</p>', 'storage/images/post/', 'gt2RiB3CE7_blog2.png', NULL, NULL, NULL, NULL, 1, 1, '2025-05-31 00:35:34', '2025-07-11 17:09:29'),
(5, 9, 'Mp Real State', NULL, '<p>Lima, Per&uacute; &ndash; Mayo 2025</p>\r\n\r\n<p>&iexcl;Gran Alianza! MP Real State cierra Acuerdo Estrat&eacute;gico con Edifica para Impulsar la Revalorizaci&oacute;n de Proyectos en Lima</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MP Real State se complace en anunciar el cierre de una importante alianza estrat&eacute;gica con Edifica, una de las constructoras e inmobiliarias m&aacute;s respetadas de Lima, con m&aacute;s de dos d&eacute;cadas de trayectoria en el desarrollo de proyectos de alto valor en los distritos m&aacute;s consolidados de la capital. Este acuerdo representa un hito significativo que permitir&aacute; a MP Real State] potenciar a&uacute;n m&aacute;s la informaci&oacute;n que ofrece a sus clientes, consolidando su posici&oacute;n como referente en proyectos con alta revalorizaci&oacute;n y un s&oacute;lido valor de recompra.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Edifica, reconocida por su vasta experiencia y su profundo conocimiento del mercado inmobiliario peruano, ha sido un actor clave en la transformaci&oacute;n urbana de Lima. Su enfoque en el desarrollo de proyectos en zonas estrat&eacute;gicas le ha permitido generar activos que no solo satisfacen las necesidades de vivienda, sino que tambi&eacute;n ofrecen un potencial de crecimiento de inversi&oacute;n inigualable.</p>\r\n\r\n<p>En los &uacute;ltimos a&ntilde;os, Edifica ha logrado construir un ecosistema de empresas dentro de su grupo que se complementan y potencian mutuamente, ofreciendo un valor agregado excepcional a sus inversionistas. Esta sinergia ha sido fundamental para el &eacute;xito de sus proyectos y se alinea perfectamente con la visi&oacute;n de [Nombre de tu Empresa] de brindar oportunidades de inversi&oacute;n inmobiliaria de primer nivel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Estamos incre&iacute;blemente entusiasmados con esta alianza con Edifica&quot;, afirm&oacute; Jonathan Moreno, gerente general de MP Rael State. &quot;Su experiencia, reputaci&oacute;n y enfoque en la creaci&oacute;n de valor son incomparables. Este acuerdo nos permitir&aacute; ofrecer a nuestros clientes una perspectiva a&uacute;n m&aacute;s profunda sobre el potencial de revalorizaci&oacute;n de los proyectos, asegurando que sus inversiones no solo sean seguras, sino que tambi&eacute;n generen rendimientos significativos a largo plazo.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>La colaboraci&oacute;n entre MP Real State &nbsp;y Edifica promete abrir nuevas oportunidades para inversionistas que buscan proyectos inmobiliarios s&oacute;lidos y con un futuro prometedor en Lima. Ambas empresas comparten el compromiso de la excelencia y la satisfacci&oacute;n del cliente, lo que garantiza que esta alianza beneficiar&aacute; a todos los involucrados.</p>', 'storage/images/post/', 'iXcBij1WQY_blog3.png', NULL, NULL, NULL, NULL, 1, 1, '2025-05-31 00:36:59', '2025-05-31 14:06:50'),
(6, 9, 'Publicacion nueva', 'Pequeño extracto', '<h2><span style=\"font-size:28px\"><strong>What is Lorem Ipsum?</strong></span></h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', 'storage/images/post/', 'pl0o5iQlmM_MP101001_4.png', 'atvJ4gfR0n0', NULL, NULL, NULL, 1, 1, '2025-06-09 18:22:10', '2025-06-09 18:23:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `name_image` varchar(255) DEFAULT NULL,
  `destacar` tinyint(1) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fit` varchar(255) DEFAULT 'contain',
  `is_menu` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `url_image`, `name_image`, `destacar`, `visible`, `status`, `created_at`, `updated_at`, `fit`, `is_menu`) VALUES
(9, 'Casa', 'casa', NULL, NULL, NULL, 0, 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'contain', 0),
(10, 'Departamento', 'departamento', NULL, NULL, NULL, 0, 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'contain', 0),
(11, 'Terreno', 'terreno', NULL, NULL, NULL, 0, 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'contain', 0),
(12, 'Proyecto', 'proyecto', NULL, NULL, NULL, 0, 1, 1, '2025-05-22 17:46:40', '2025-05-27 17:08:50', 'contain', 0),
(13, 'Nueva categoria', NULL, NULL, NULL, NULL, 0, 1, 0, '2025-06-09 17:31:20', '2025-06-30 15:50:27', 'cover', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client_logos`
--

CREATE TABLE `client_logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `url_image2` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `destacar` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `client_logos`
--

INSERT INTO `client_logos` (`id`, `title`, `description`, `url_image`, `url_image2`, `order`, `visible`, `destacar`, `status`, `created_at`, `updated_at`) VALUES
(1, '+30', 'Agentes para ayudarte', NULL, NULL, NULL, 1, 0, 1, '2025-04-16 20:53:19', '2025-07-11 22:49:18'),
(2, '45', 'Días promedio de cierre de ventas', NULL, NULL, NULL, 1, 0, 1, '2025-04-16 20:53:19', '2025-07-11 22:50:02'),
(3, '+300', 'Clientes satisfechos', NULL, NULL, NULL, 1, 0, 1, '2025-04-16 20:53:19', '2025-07-11 22:50:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `constants`
--

CREATE TABLE `constants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `correlative` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'simple',
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cellphone` int(11) DEFAULT NULL,
  `typeservice` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `typecontact` varchar(255) DEFAULT NULL,
  `hourcontact` varchar(255) DEFAULT NULL,
  `typearrival` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` char(2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `description`, `active`) VALUES
('AX', 'AALAND ISLANDS', 1),
('AF', 'AFGHANISTAN', 1),
('AL', 'ALBANIA', 1),
('DZ', 'ALGERIA', 1),
('AS', 'AMERICAN SAMOA', 1),
('AD', 'ANDORRA', 1),
('AO', 'ANGOLA', 1),
('AI', 'ANGUILLA', 1),
('AQ', 'ANTARCTICA', 1),
('AG', 'ANTIGUA AND BARBUDA', 1),
('AR', 'ARGENTINA', 1),
('AM', 'ARMENIA', 1),
('AW', 'ARUBA', 1),
('AU', 'AUSTRALIA', 1),
('AT', 'AUSTRIA', 1),
('AZ', 'AZERBAIJAN', 1),
('BS', 'BAHAMAS', 1),
('BH', 'BAHRAIN', 1),
('BD', 'BANGLADESH', 1),
('BB', 'BARBADOS', 1),
('BY', 'BELARUS', 1),
('BE', 'BELGIUM', 1),
('BZ', 'BELIZE', 1),
('BJ', 'BENIN', 1),
('BM', 'BERMUDA', 1),
('BT', 'BHUTAN', 1),
('BO', 'BOLIVIA', 1),
('BA', 'BOSNIA AND HERZEGOWINA', 1),
('BW', 'BOTSWANA', 1),
('BV', 'BOUVET ISLAND', 1),
('BR', 'BRAZIL', 1),
('IO', 'BRITISH INDIAN OCEAN TERRITORY', 1),
('BN', 'BRUNEI DARUSSALAM', 1),
('BG', 'BULGARIA', 1),
('BF', 'BURKINA FASO', 1),
('BI', 'BURUNDI', 1),
('KH', 'CAMBODIA', 1),
('CM', 'CAMEROON', 1),
('CA', 'CANADA', 1),
('CV', 'CAPE VERDE', 1),
('KY', 'CAYMAN ISLANDS', 1),
('CF', 'CENTRAL AFRICAN REPUBLIC', 1),
('TD', 'CHAD', 1),
('CL', 'CHILE', 1),
('CN', 'CHINA', 1),
('CX', 'CHRISTMAS ISLAND', 1),
('CC', 'COCOS (KEELING) ISLANDS', 1),
('CO', 'COLOMBIA', 1),
('KM', 'COMOROS', 1),
('CD', 'CONGO, Democratic Republic of (was Zaire)', 1),
('CG', 'CONGO, Republic of', 1),
('CK', 'COOK ISLANDS', 1),
('CR', 'COSTA RICA', 1),
('CI', 'COTE D`IVOIRE', 1),
('HR', 'CROATIA (local name: Hrvatska)', 1),
('CU', 'CUBA', 1),
('CY', 'CYPRUS', 1),
('CZ', 'CZECH REPUBLIC', 1),
('DK', 'DENMARK', 1),
('DJ', 'DJIBOUTI', 1),
('DM', 'DOMINICA', 1),
('DO', 'DOMINICAN REPUBLIC', 1),
('EC', 'ECUADOR', 1),
('EG', 'EGYPT', 1),
('SV', 'EL SALVADOR', 1),
('GQ', 'EQUATORIAL GUINEA', 1),
('ER', 'ERITREA', 1),
('EE', 'ESTONIA', 1),
('ET', 'ETHIOPIA', 1),
('FK', 'FALKLAND ISLANDS (MALVINAS)', 1),
('FO', 'FAROE ISLANDS', 1),
('FJ', 'FIJI', 1),
('FI', 'FINLAND', 1),
('FR', 'FRANCE', 1),
('GF', 'FRENCH GUIANA', 1),
('PF', 'FRENCH POLYNESIA', 1),
('TF', 'FRENCH SOUTHERN TERRITORIES', 1),
('GA', 'GABON', 1),
('GM', 'GAMBIA', 1),
('GE', 'GEORGIA', 1),
('DE', 'GERMANY', 1),
('GH', 'GHANA', 1),
('GI', 'GIBRALTAR', 1),
('GR', 'GREECE', 1),
('GL', 'GREENLAND', 1),
('GD', 'GRENADA', 1),
('GP', 'GUADELOUPE', 1),
('GU', 'GUAM', 1),
('GT', 'GUATEMALA', 1),
('GN', 'GUINEA', 1),
('GW', 'GUINEA-BISSAU', 1),
('GY', 'GUYANA', 1),
('HT', 'HAITI', 1),
('HM', 'HEARD AND MC DONALD ISLANDS', 1),
('HN', 'HONDURAS', 1),
('HK', 'HONG KONG', 1),
('HU', 'HUNGARY', 1),
('IS', 'ICELAND', 1),
('IN', 'INDIA', 1),
('ID', 'INDONESIA', 1),
('IR', 'IRAN (ISLAMIC REPUBLIC OF)', 1),
('IQ', 'IRAQ', 1),
('IE', 'IRELAND', 1),
('IL', 'ISRAEL', 1),
('IT', 'ITALY', 1),
('JM', 'JAMAICA', 1),
('JP', 'JAPAN', 1),
('JO', 'JORDAN', 1),
('KZ', 'KAZAKHSTAN', 1),
('KE', 'KENYA', 1),
('KI', 'KIRIBATI', 1),
('KP', 'KOREA, DEMOCRATIC PEOPLE`S REPUBLIC OF', 1),
('KR', 'KOREA, REPUBLIC OF', 1),
('KW', 'KUWAIT', 1),
('KG', 'KYRGYZSTAN', 1),
('LA', 'LAO PEOPLE`S DEMOCRATIC REPUBLIC', 1),
('LV', 'LATVIA', 1),
('LB', 'LEBANON', 1),
('LS', 'LESOTHO', 1),
('LR', 'LIBERIA', 1),
('LY', 'LIBYAN ARAB JAMAHIRIYA', 1),
('LI', 'LIECHTENSTEIN', 1),
('LT', 'LITHUANIA', 1),
('LU', 'LUXEMBOURG', 1),
('MO', 'MACAU', 1),
('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 1),
('MG', 'MADAGASCAR', 1),
('MW', 'MALAWI', 1),
('MY', 'MALAYSIA', 1),
('MV', 'MALDIVES', 1),
('ML', 'MALI', 1),
('MT', 'MALTA', 1),
('MH', 'MARSHALL ISLANDS', 1),
('MQ', 'MARTINIQUE', 1),
('MR', 'MAURITANIA', 1),
('MU', 'MAURITIUS', 1),
('YT', 'MAYOTTE', 1),
('MX', 'MEXICO', 1),
('FM', 'MICRONESIA, FEDERATED STATES OF', 1),
('MD', 'MOLDOVA, REPUBLIC OF', 1),
('MC', 'MONACO', 1),
('MN', 'MONGOLIA', 1),
('MS', 'MONTSERRAT', 1),
('MA', 'MOROCCO', 1),
('MZ', 'MOZAMBIQUE', 1),
('MM', 'MYANMAR', 1),
('NA', 'NAMIBIA', 1),
('NR', 'NAURU', 1),
('NP', 'NEPAL', 1),
('NL', 'NETHERLANDS', 1),
('AN', 'NETHERLANDS ANTILLES', 1),
('NC', 'NEW CALEDONIA', 1),
('NZ', 'NEW ZEALAND', 1),
('NI', 'NICARAGUA', 1),
('NE', 'NIGER', 1),
('NG', 'NIGERIA', 1),
('NU', 'NIUE', 1),
('NF', 'NORFOLK ISLAND', 1),
('MP', 'NORTHERN MARIANA ISLANDS', 1),
('NO', 'NORWAY', 1),
('OM', 'OMAN', 1),
('PK', 'PAKISTAN', 1),
('PW', 'PALAU', 1),
('PS', 'PALESTINIAN TERRITORY, Occupied', 1),
('PA', 'PANAMA', 1),
('PG', 'PAPUA NEW GUINEA', 1),
('PY', 'PARAGUAY', 1),
('PE', 'PERU', 1),
('PH', 'PHILIPPINES', 1),
('PN', 'PITCAIRN', 1),
('PL', 'POLAND', 1),
('PT', 'PORTUGAL', 1),
('PR', 'PUERTO RICO', 1),
('QA', 'QATAR', 1),
('RE', 'REUNION', 1),
('RO', 'ROMANIA', 1),
('RU', 'RUSSIAN FEDERATION', 1),
('RW', 'RWANDA', 1),
('SH', 'SAINT HELENA', 1),
('KN', 'SAINT KITTS AND NEVIS', 1),
('LC', 'SAINT LUCIA', 1),
('PM', 'SAINT PIERRE AND MIQUELON', 1),
('VC', 'SAINT VINCENT AND THE GRENADINES', 1),
('WS', 'SAMOA', 1),
('SM', 'SAN MARINO', 1),
('ST', 'SAO TOME AND PRINCIPE', 1),
('SA', 'SAUDI ARABIA', 1),
('SN', 'SENEGAL', 1),
('CS', 'SERBIA AND MONTENEGRO', 1),
('SC', 'SEYCHELLES', 1),
('SL', 'SIERRA LEONE', 1),
('SG', 'SINGAPORE', 1),
('SK', 'SLOVAKIA', 1),
('SI', 'SLOVENIA', 1),
('SB', 'SOLOMON ISLANDS', 1),
('SO', 'SOMALIA', 1),
('ZA', 'SOUTH AFRICA', 1),
('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 1),
('ES', 'SPAIN', 1),
('LK', 'SRI LANKA', 1),
('SD', 'SUDAN', 1),
('SR', 'SURINAME', 1),
('SJ', 'SVALBARD AND JAN MAYEN ISLANDS', 1),
('SZ', 'SWAZILAND', 1),
('SE', 'SWEDEN', 1),
('CH', 'SWITZERLAND', 1),
('SY', 'SYRIAN ARAB REPUBLIC', 1),
('TW', 'TAIWAN', 1),
('TJ', 'TAJIKISTAN', 1),
('TZ', 'TANZANIA, UNITED REPUBLIC OF', 1),
('TH', 'THAILAND', 1),
('TL', 'TIMOR-LESTE', 1),
('TG', 'TOGO', 1),
('TK', 'TOKELAU', 1),
('TO', 'TONGA', 1),
('TT', 'TRINIDAD AND TOBAGO', 1),
('TN', 'TUNISIA', 1),
('TR', 'TURKEY', 1),
('TM', 'TURKMENISTAN', 1),
('TC', 'TURKS AND CAICOS ISLANDS', 1),
('TV', 'TUVALU', 1),
('UG', 'UGANDA', 1),
('UA', 'UKRAINE', 1),
('AE', 'UNITED ARAB EMIRATES', 1),
('GB', 'UNITED KINGDOM', 1),
('US', 'UNITED STATES', 1),
('UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 1),
('UY', 'URUGUAY', 1),
('UZ', 'UZBEKISTAN', 1),
('VU', 'VANUATU', 1),
('VA', 'VATICAN CITY STATE (HOLY SEE)', 1),
('VE', 'VENEZUELA', 1),
('VN', 'VIET NAM', 1),
('VG', 'VIRGIN ISLANDS (BRITISH)', 1),
('VI', 'VIRGIN ISLANDS (U.S.)', 1),
('WF', 'WALLIS AND FUTUNA ISLANDS', 1),
('EH', 'WESTERN SAHARA', 1),
('YE', 'YEMEN', 1),
('ZM', 'ZAMBIA', 1),
('ZW', 'ZIMBABWE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datafeeds`
--

CREATE TABLE `datafeeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `data` double(10,2) DEFAULT NULL,
  `dataset_name` tinyint(4) DEFAULT NULL,
  `data_type` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` char(2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `description`, `active`) VALUES
('01', 'AMAZONAS', 1),
('02', 'ÁNCASH', 1),
('03', 'APURIMAC', 1),
('04', 'AREQUIPA', 1),
('05', 'AYACUCHO', 1),
('06', 'CAJAMARCA', 1),
('07', 'CALLAO', 1),
('08', 'CUSCO', 1),
('09', 'HUANCAVELICA', 1),
('10', 'HUÁNUCO', 1),
('11', 'ICA', 1),
('12', 'JUNÍN', 1),
('13', 'LA LIBERTAD', 1),
('14', 'LAMBAYEQUE', 1),
('15', 'LIMA', 1),
('16', 'LORETO', 1),
('17', 'MADRE DE DIOS', 1),
('18', 'MOQUEGUA', 1),
('19', 'PASCO', 1),
('20', 'PIURA', 1),
('21', 'PUNO', 1),
('22', 'SAN MARTIN', 1),
('23', 'TACNA', 1),
('24', 'TUMBES', 1),
('25', 'UCAYALI', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `districts`
--

CREATE TABLE `districts` (
  `id` char(6) NOT NULL,
  `province_id` char(4) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `districts`
--

INSERT INTO `districts` (`id`, `province_id`, `description`, `active`) VALUES
('010101', '0101', 'Chachapoyas', 1),
('010102', '0101', 'Asunción', 1),
('010103', '0101', 'Balsas', 1),
('010104', '0101', 'Cheto', 1),
('010105', '0101', 'Chiliquin', 1),
('010106', '0101', 'Chuquibamba', 1),
('010107', '0101', 'Granada', 1),
('010108', '0101', 'Huancas', 1),
('010109', '0101', 'La Jalca', 1),
('010110', '0101', 'Leimebamba', 1),
('010111', '0101', 'Levanto', 1),
('010112', '0101', 'Magdalena', 1),
('010113', '0101', 'Mariscal Castilla', 1),
('010114', '0101', 'Molinopampa', 1),
('010115', '0101', 'Montevideo', 1),
('010116', '0101', 'Olleros', 1),
('010117', '0101', 'Quinjalca', 1),
('010118', '0101', 'San Francisco de Daguas', 1),
('010119', '0101', 'San Isidro de Maino', 1),
('010120', '0101', 'Soloco', 1),
('010121', '0101', 'Sonche', 1),
('010201', '0102', 'Bagua', 1),
('010202', '0102', 'Aramango', 1),
('010203', '0102', 'Copallin', 1),
('010204', '0102', 'El Parco', 1),
('010205', '0102', 'Imaza', 1),
('010206', '0102', 'La Peca', 1),
('010301', '0103', 'Jumbilla', 1),
('010302', '0103', 'Chisquilla', 1),
('010303', '0103', 'Churuja', 1),
('010304', '0103', 'Corosha', 1),
('010305', '0103', 'Cuispes', 1),
('010306', '0103', 'Florida', 1),
('010307', '0103', 'Jazan', 1),
('010308', '0103', 'Recta', 1),
('010309', '0103', 'San Carlos', 1),
('010310', '0103', 'Shipasbamba', 1),
('010311', '0103', 'Valera', 1),
('010312', '0103', 'Yambrasbamba', 1),
('010401', '0104', 'Nieva', 1),
('010402', '0104', 'El Cenepa', 1),
('010403', '0104', 'Río Santiago', 1),
('010501', '0105', 'Lamud', 1),
('010502', '0105', 'Camporredondo', 1),
('010503', '0105', 'Cocabamba', 1),
('010504', '0105', 'Colcamar', 1),
('010505', '0105', 'Conila', 1),
('010506', '0105', 'Inguilpata', 1),
('010507', '0105', 'Longuita', 1),
('010508', '0105', 'Lonya Chico', 1),
('010509', '0105', 'Luya', 1),
('010510', '0105', 'Luya Viejo', 1),
('010511', '0105', 'María', 1),
('010512', '0105', 'Ocalli', 1),
('010513', '0105', 'Ocumal', 1),
('010514', '0105', 'Pisuquia', 1),
('010515', '0105', 'Providencia', 1),
('010516', '0105', 'San Cristóbal', 1),
('010517', '0105', 'San Francisco de Yeso', 1),
('010518', '0105', 'San Jerónimo', 1),
('010519', '0105', 'San Juan de Lopecancha', 1),
('010520', '0105', 'Santa Catalina', 1),
('010521', '0105', 'Santo Tomas', 1),
('010522', '0105', 'Tingo', 1),
('010523', '0105', 'Trita', 1),
('010601', '0106', 'San Nicolás', 1),
('010602', '0106', 'Chirimoto', 1),
('010603', '0106', 'Cochamal', 1),
('010604', '0106', 'Huambo', 1),
('010605', '0106', 'Limabamba', 1),
('010606', '0106', 'Longar', 1),
('010607', '0106', 'Mariscal Benavides', 1),
('010608', '0106', 'Milpuc', 1),
('010609', '0106', 'Omia', 1),
('010610', '0106', 'Santa Rosa', 1),
('010611', '0106', 'Totora', 1),
('010612', '0106', 'Vista Alegre', 1),
('010701', '0107', 'Bagua Grande', 1),
('010702', '0107', 'Cajaruro', 1),
('010703', '0107', 'Cumba', 1),
('010704', '0107', 'El Milagro', 1),
('010705', '0107', 'Jamalca', 1),
('010706', '0107', 'Lonya Grande', 1),
('010707', '0107', 'Yamon', 1),
('020101', '0201', 'Huaraz', 1),
('020102', '0201', 'Cochabamba', 1),
('020103', '0201', 'Colcabamba', 1),
('020104', '0201', 'Huanchay', 1),
('020105', '0201', 'Independencia', 1),
('020106', '0201', 'Jangas', 1),
('020107', '0201', 'La Libertad', 1),
('020108', '0201', 'Olleros', 1),
('020109', '0201', 'Pampas Grande', 1),
('020110', '0201', 'Pariacoto', 1),
('020111', '0201', 'Pira', 1),
('020112', '0201', 'Tarica', 1),
('020201', '0202', 'Aija', 1),
('020202', '0202', 'Coris', 1),
('020203', '0202', 'Huacllan', 1),
('020204', '0202', 'La Merced', 1),
('020205', '0202', 'Succha', 1),
('020301', '0203', 'Llamellin', 1),
('020302', '0203', 'Aczo', 1),
('020303', '0203', 'Chaccho', 1),
('020304', '0203', 'Chingas', 1),
('020305', '0203', 'Mirgas', 1),
('020306', '0203', 'San Juan de Rontoy', 1),
('020401', '0204', 'Chacas', 1),
('020402', '0204', 'Acochaca', 1),
('020501', '0205', 'Chiquian', 1),
('020502', '0205', 'Abelardo Pardo Lezameta', 1),
('020503', '0205', 'Antonio Raymondi', 1),
('020504', '0205', 'Aquia', 1),
('020505', '0205', 'Cajacay', 1),
('020506', '0205', 'Canis', 1),
('020507', '0205', 'Colquioc', 1),
('020508', '0205', 'Huallanca', 1),
('020509', '0205', 'Huasta', 1),
('020510', '0205', 'Huayllacayan', 1),
('020511', '0205', 'La Primavera', 1),
('020512', '0205', 'Mangas', 1),
('020513', '0205', 'Pacllon', 1),
('020514', '0205', 'San Miguel de Corpanqui', 1),
('020515', '0205', 'Ticllos', 1),
('020601', '0206', 'Carhuaz', 1),
('020602', '0206', 'Acopampa', 1),
('020603', '0206', 'Amashca', 1),
('020604', '0206', 'Anta', 1),
('020605', '0206', 'Ataquero', 1),
('020606', '0206', 'Marcara', 1),
('020607', '0206', 'Pariahuanca', 1),
('020608', '0206', 'San Miguel de Aco', 1),
('020609', '0206', 'Shilla', 1),
('020610', '0206', 'Tinco', 1),
('020611', '0206', 'Yungar', 1),
('020701', '0207', 'San Luis', 1),
('020702', '0207', 'San Nicolás', 1),
('020703', '0207', 'Yauya', 1),
('020801', '0208', 'Casma', 1),
('020802', '0208', 'Buena Vista Alta', 1),
('020803', '0208', 'Comandante Noel', 1),
('020804', '0208', 'Yautan', 1),
('020901', '0209', 'Corongo', 1),
('020902', '0209', 'Aco', 1),
('020903', '0209', 'Bambas', 1),
('020904', '0209', 'Cusca', 1),
('020905', '0209', 'La Pampa', 1),
('020906', '0209', 'Yanac', 1),
('020907', '0209', 'Yupan', 1),
('021001', '0210', 'Huari', 1),
('021002', '0210', 'Anra', 1),
('021003', '0210', 'Cajay', 1),
('021004', '0210', 'Chavin de Huantar', 1),
('021005', '0210', 'Huacachi', 1),
('021006', '0210', 'Huacchis', 1),
('021007', '0210', 'Huachis', 1),
('021008', '0210', 'Huantar', 1),
('021009', '0210', 'Masin', 1),
('021010', '0210', 'Paucas', 1),
('021011', '0210', 'Ponto', 1),
('021012', '0210', 'Rahuapampa', 1),
('021013', '0210', 'Rapayan', 1),
('021014', '0210', 'San Marcos', 1),
('021015', '0210', 'San Pedro de Chana', 1),
('021016', '0210', 'Uco', 1),
('021101', '0211', 'Huarmey', 1),
('021102', '0211', 'Cochapeti', 1),
('021103', '0211', 'Culebras', 1),
('021104', '0211', 'Huayan', 1),
('021105', '0211', 'Malvas', 1),
('021201', '0212', 'Caraz', 1),
('021202', '0212', 'Huallanca', 1),
('021203', '0212', 'Huata', 1),
('021204', '0212', 'Huaylas', 1),
('021205', '0212', 'Mato', 1),
('021206', '0212', 'Pamparomas', 1),
('021207', '0212', 'Pueblo Libre', 1),
('021208', '0212', 'Santa Cruz', 1),
('021209', '0212', 'Santo Toribio', 1),
('021210', '0212', 'Yuracmarca', 1),
('021301', '0213', 'Piscobamba', 1),
('021302', '0213', 'Casca', 1),
('021303', '0213', 'Eleazar Guzmán Barron', 1),
('021304', '0213', 'Fidel Olivas Escudero', 1),
('021305', '0213', 'Llama', 1),
('021306', '0213', 'Llumpa', 1),
('021307', '0213', 'Lucma', 1),
('021308', '0213', 'Musga', 1),
('021401', '0214', 'Ocros', 1),
('021402', '0214', 'Acas', 1),
('021403', '0214', 'Cajamarquilla', 1),
('021404', '0214', 'Carhuapampa', 1),
('021405', '0214', 'Cochas', 1),
('021406', '0214', 'Congas', 1),
('021407', '0214', 'Llipa', 1),
('021408', '0214', 'San Cristóbal de Rajan', 1),
('021409', '0214', 'San Pedro', 1),
('021410', '0214', 'Santiago de Chilcas', 1),
('021501', '0215', 'Cabana', 1),
('021502', '0215', 'Bolognesi', 1),
('021503', '0215', 'Conchucos', 1),
('021504', '0215', 'Huacaschuque', 1),
('021505', '0215', 'Huandoval', 1),
('021506', '0215', 'Lacabamba', 1),
('021507', '0215', 'Llapo', 1),
('021508', '0215', 'Pallasca', 1),
('021509', '0215', 'Pampas', 1),
('021510', '0215', 'Santa Rosa', 1),
('021511', '0215', 'Tauca', 1),
('021601', '0216', 'Pomabamba', 1),
('021602', '0216', 'Huayllan', 1),
('021603', '0216', 'Parobamba', 1),
('021604', '0216', 'Quinuabamba', 1),
('021701', '0217', 'Recuay', 1),
('021702', '0217', 'Catac', 1),
('021703', '0217', 'Cotaparaco', 1),
('021704', '0217', 'Huayllapampa', 1),
('021705', '0217', 'Llacllin', 1),
('021706', '0217', 'Marca', 1),
('021707', '0217', 'Pampas Chico', 1),
('021708', '0217', 'Pararin', 1),
('021709', '0217', 'Tapacocha', 1),
('021710', '0217', 'Ticapampa', 1),
('021801', '0218', 'Chimbote', 1),
('021802', '0218', 'Cáceres del Perú', 1),
('021803', '0218', 'Coishco', 1),
('021804', '0218', 'Macate', 1),
('021805', '0218', 'Moro', 1),
('021806', '0218', 'Nepeña', 1),
('021807', '0218', 'Samanco', 1),
('021808', '0218', 'Santa', 1),
('021809', '0218', 'Nuevo Chimbote', 1),
('021901', '0219', 'Sihuas', 1),
('021902', '0219', 'Acobamba', 1),
('021903', '0219', 'Alfonso Ugarte', 1),
('021904', '0219', 'Cashapampa', 1),
('021905', '0219', 'Chingalpo', 1),
('021906', '0219', 'Huayllabamba', 1),
('021907', '0219', 'Quiches', 1),
('021908', '0219', 'Ragash', 1),
('021909', '0219', 'San Juan', 1),
('021910', '0219', 'Sicsibamba', 1),
('022001', '0220', 'Yungay', 1),
('022002', '0220', 'Cascapara', 1),
('022003', '0220', 'Mancos', 1),
('022004', '0220', 'Matacoto', 1),
('022005', '0220', 'Quillo', 1),
('022006', '0220', 'Ranrahirca', 1),
('022007', '0220', 'Shupluy', 1),
('022008', '0220', 'Yanama', 1),
('030101', '0301', 'Abancay', 1),
('030102', '0301', 'Chacoche', 1),
('030103', '0301', 'Circa', 1),
('030104', '0301', 'Curahuasi', 1),
('030105', '0301', 'Huanipaca', 1),
('030106', '0301', 'Lambrama', 1),
('030107', '0301', 'Pichirhua', 1),
('030108', '0301', 'San Pedro de Cachora', 1),
('030109', '0301', 'Tamburco', 1),
('030201', '0302', 'Andahuaylas', 1),
('030202', '0302', 'Andarapa', 1),
('030203', '0302', 'Chiara', 1),
('030204', '0302', 'Huancarama', 1),
('030205', '0302', 'Huancaray', 1),
('030206', '0302', 'Huayana', 1),
('030207', '0302', 'Kishuara', 1),
('030208', '0302', 'Pacobamba', 1),
('030209', '0302', 'Pacucha', 1),
('030210', '0302', 'Pampachiri', 1),
('030211', '0302', 'Pomacocha', 1),
('030212', '0302', 'San Antonio de Cachi', 1),
('030213', '0302', 'San Jerónimo', 1),
('030214', '0302', 'San Miguel de Chaccrampa', 1),
('030215', '0302', 'Santa María de Chicmo', 1),
('030216', '0302', 'Talavera', 1),
('030217', '0302', 'Tumay Huaraca', 1),
('030218', '0302', 'Turpo', 1),
('030219', '0302', 'Kaquiabamba', 1),
('030220', '0302', 'José María Arguedas', 1),
('030301', '0303', 'Antabamba', 1),
('030302', '0303', 'El Oro', 1),
('030303', '0303', 'Huaquirca', 1),
('030304', '0303', 'Juan Espinoza Medrano', 1),
('030305', '0303', 'Oropesa', 1),
('030306', '0303', 'Pachaconas', 1),
('030307', '0303', 'Sabaino', 1),
('030401', '0304', 'Chalhuanca', 1),
('030402', '0304', 'Capaya', 1),
('030403', '0304', 'Caraybamba', 1),
('030404', '0304', 'Chapimarca', 1),
('030405', '0304', 'Colcabamba', 1),
('030406', '0304', 'Cotaruse', 1),
('030407', '0304', 'Ihuayllo', 1),
('030408', '0304', 'Justo Apu Sahuaraura', 1),
('030409', '0304', 'Lucre', 1),
('030410', '0304', 'Pocohuanca', 1),
('030411', '0304', 'San Juan de Chacña', 1),
('030412', '0304', 'Sañayca', 1),
('030413', '0304', 'Soraya', 1),
('030414', '0304', 'Tapairihua', 1),
('030415', '0304', 'Tintay', 1),
('030416', '0304', 'Toraya', 1),
('030417', '0304', 'Yanaca', 1),
('030501', '0305', 'Tambobamba', 1),
('030502', '0305', 'Cotabambas', 1),
('030503', '0305', 'Coyllurqui', 1),
('030504', '0305', 'Haquira', 1),
('030505', '0305', 'Mara', 1),
('030506', '0305', 'Challhuahuacho', 1),
('030601', '0306', 'Chincheros', 1),
('030602', '0306', 'Anco_Huallo', 1),
('030603', '0306', 'Cocharcas', 1),
('030604', '0306', 'Huaccana', 1),
('030605', '0306', 'Ocobamba', 1),
('030606', '0306', 'Ongoy', 1),
('030607', '0306', 'Uranmarca', 1),
('030608', '0306', 'Ranracancha', 1),
('030609', '0306', 'Rocchacc', 1),
('030610', '0306', 'El Porvenir', 1),
('030701', '0307', 'Chuquibambilla', 1),
('030702', '0307', 'Curpahuasi', 1),
('030703', '0307', 'Gamarra', 1),
('030704', '0307', 'Huayllati', 1),
('030705', '0307', 'Mamara', 1),
('030706', '0307', 'Micaela Bastidas', 1),
('030707', '0307', 'Pataypampa', 1),
('030708', '0307', 'Progreso', 1),
('030709', '0307', 'San Antonio', 1),
('030710', '0307', 'Santa Rosa', 1),
('030711', '0307', 'Turpay', 1),
('030712', '0307', 'Vilcabamba', 1),
('030713', '0307', 'Virundo', 1),
('030714', '0307', 'Curasco', 1),
('040101', '0401', 'Arequipa', 1),
('040102', '0401', 'Alto Selva Alegre', 1),
('040103', '0401', 'Cayma', 1),
('040104', '0401', 'Cerro Colorado', 1),
('040105', '0401', 'Characato', 1),
('040106', '0401', 'Chiguata', 1),
('040107', '0401', 'Jacobo Hunter', 1),
('040108', '0401', 'La Joya', 1),
('040109', '0401', 'Mariano Melgar', 1),
('040110', '0401', 'Miraflores', 1),
('040111', '0401', 'Mollebaya', 1),
('040112', '0401', 'Paucarpata', 1),
('040113', '0401', 'Pocsi', 1),
('040114', '0401', 'Polobaya', 1),
('040115', '0401', 'Quequeña', 1),
('040116', '0401', 'Sabandia', 1),
('040117', '0401', 'Sachaca', 1),
('040118', '0401', 'San Juan de Siguas', 1),
('040119', '0401', 'San Juan de Tarucani', 1),
('040120', '0401', 'Santa Isabel de Siguas', 1),
('040121', '0401', 'Santa Rita de Siguas', 1),
('040122', '0401', 'Socabaya', 1),
('040123', '0401', 'Tiabaya', 1),
('040124', '0401', 'Uchumayo', 1),
('040125', '0401', 'Vitor', 1),
('040126', '0401', 'Yanahuara', 1),
('040127', '0401', 'Yarabamba', 1),
('040128', '0401', 'Yura', 1),
('040129', '0401', 'José Luis Bustamante Y Rivero', 1),
('040201', '0402', 'Camaná', 1),
('040202', '0402', 'José María Quimper', 1),
('040203', '0402', 'Mariano Nicolás Valcárcel', 1),
('040204', '0402', 'Mariscal Cáceres', 1),
('040205', '0402', 'Nicolás de Pierola', 1),
('040206', '0402', 'Ocoña', 1),
('040207', '0402', 'Quilca', 1),
('040208', '0402', 'Samuel Pastor', 1),
('040301', '0403', 'Caravelí', 1),
('040302', '0403', 'Acarí', 1),
('040303', '0403', 'Atico', 1),
('040304', '0403', 'Atiquipa', 1),
('040305', '0403', 'Bella Unión', 1),
('040306', '0403', 'Cahuacho', 1),
('040307', '0403', 'Chala', 1),
('040308', '0403', 'Chaparra', 1),
('040309', '0403', 'Huanuhuanu', 1),
('040310', '0403', 'Jaqui', 1),
('040311', '0403', 'Lomas', 1),
('040312', '0403', 'Quicacha', 1),
('040313', '0403', 'Yauca', 1),
('040401', '0404', 'Aplao', 1),
('040402', '0404', 'Andagua', 1),
('040403', '0404', 'Ayo', 1),
('040404', '0404', 'Chachas', 1),
('040405', '0404', 'Chilcaymarca', 1),
('040406', '0404', 'Choco', 1),
('040407', '0404', 'Huancarqui', 1),
('040408', '0404', 'Machaguay', 1),
('040409', '0404', 'Orcopampa', 1),
('040410', '0404', 'Pampacolca', 1),
('040411', '0404', 'Tipan', 1),
('040412', '0404', 'Uñon', 1),
('040413', '0404', 'Uraca', 1),
('040414', '0404', 'Viraco', 1),
('040501', '0405', 'Chivay', 1),
('040502', '0405', 'Achoma', 1),
('040503', '0405', 'Cabanaconde', 1),
('040504', '0405', 'Callalli', 1),
('040505', '0405', 'Caylloma', 1),
('040506', '0405', 'Coporaque', 1),
('040507', '0405', 'Huambo', 1),
('040508', '0405', 'Huanca', 1),
('040509', '0405', 'Ichupampa', 1),
('040510', '0405', 'Lari', 1),
('040511', '0405', 'Lluta', 1),
('040512', '0405', 'Maca', 1),
('040513', '0405', 'Madrigal', 1),
('040514', '0405', 'San Antonio de Chuca', 1),
('040515', '0405', 'Sibayo', 1),
('040516', '0405', 'Tapay', 1),
('040517', '0405', 'Tisco', 1),
('040518', '0405', 'Tuti', 1),
('040519', '0405', 'Yanque', 1),
('040520', '0405', 'Majes', 1),
('040601', '0406', 'Chuquibamba', 1),
('040602', '0406', 'Andaray', 1),
('040603', '0406', 'Cayarani', 1),
('040604', '0406', 'Chichas', 1),
('040605', '0406', 'Iray', 1),
('040606', '0406', 'Río Grande', 1),
('040607', '0406', 'Salamanca', 1),
('040608', '0406', 'Yanaquihua', 1),
('040701', '0407', 'Mollendo', 1),
('040702', '0407', 'Cocachacra', 1),
('040703', '0407', 'Dean Valdivia', 1),
('040704', '0407', 'Islay', 1),
('040705', '0407', 'Mejia', 1),
('040706', '0407', 'Punta de Bombón', 1),
('040801', '0408', 'Cotahuasi', 1),
('040802', '0408', 'Alca', 1),
('040803', '0408', 'Charcana', 1),
('040804', '0408', 'Huaynacotas', 1),
('040805', '0408', 'Pampamarca', 1),
('040806', '0408', 'Puyca', 1),
('040807', '0408', 'Quechualla', 1),
('040808', '0408', 'Sayla', 1),
('040809', '0408', 'Tauria', 1),
('040810', '0408', 'Tomepampa', 1),
('040811', '0408', 'Toro', 1),
('050101', '0501', 'Ayacucho', 1),
('050102', '0501', 'Acocro', 1),
('050103', '0501', 'Acos Vinchos', 1),
('050104', '0501', 'Carmen Alto', 1),
('050105', '0501', 'Chiara', 1),
('050106', '0501', 'Ocros', 1),
('050107', '0501', 'Pacaycasa', 1),
('050108', '0501', 'Quinua', 1),
('050109', '0501', 'San José de Ticllas', 1),
('050110', '0501', 'San Juan Bautista', 1),
('050111', '0501', 'Santiago de Pischa', 1),
('050112', '0501', 'Socos', 1),
('050113', '0501', 'Tambillo', 1),
('050114', '0501', 'Vinchos', 1),
('050115', '0501', 'Jesús Nazareno', 1),
('050116', '0501', 'Andrés Avelino Cáceres Dorregaray', 1),
('050201', '0502', 'Cangallo', 1),
('050202', '0502', 'Chuschi', 1),
('050203', '0502', 'Los Morochucos', 1),
('050204', '0502', 'María Parado de Bellido', 1),
('050205', '0502', 'Paras', 1),
('050206', '0502', 'Totos', 1),
('050301', '0503', 'Sancos', 1),
('050302', '0503', 'Carapo', 1),
('050303', '0503', 'Sacsamarca', 1),
('050304', '0503', 'Santiago de Lucanamarca', 1),
('050401', '0504', 'Huanta', 1),
('050402', '0504', 'Ayahuanco', 1),
('050403', '0504', 'Huamanguilla', 1),
('050404', '0504', 'Iguain', 1),
('050405', '0504', 'Luricocha', 1),
('050406', '0504', 'Santillana', 1),
('050407', '0504', 'Sivia', 1),
('050408', '0504', 'Llochegua', 1),
('050409', '0504', 'Canayre', 1),
('050410', '0504', 'Uchuraccay', 1),
('050411', '0504', 'Pucacolpa', 1),
('050412', '0504', 'Chaca', 1),
('050501', '0505', 'San Miguel', 1),
('050502', '0505', 'Anco', 1),
('050503', '0505', 'Ayna', 1),
('050504', '0505', 'Chilcas', 1),
('050505', '0505', 'Chungui', 1),
('050506', '0505', 'Luis Carranza', 1),
('050507', '0505', 'Santa Rosa', 1),
('050508', '0505', 'Tambo', 1),
('050509', '0505', 'Samugari', 1),
('050510', '0505', 'Anchihuay', 1),
('050601', '0506', 'Puquio', 1),
('050602', '0506', 'Aucara', 1),
('050603', '0506', 'Cabana', 1),
('050604', '0506', 'Carmen Salcedo', 1),
('050605', '0506', 'Chaviña', 1),
('050606', '0506', 'Chipao', 1),
('050607', '0506', 'Huac-Huas', 1),
('050608', '0506', 'Laramate', 1),
('050609', '0506', 'Leoncio Prado', 1),
('050610', '0506', 'Llauta', 1),
('050611', '0506', 'Lucanas', 1),
('050612', '0506', 'Ocaña', 1),
('050613', '0506', 'Otoca', 1),
('050614', '0506', 'Saisa', 1),
('050615', '0506', 'San Cristóbal', 1),
('050616', '0506', 'San Juan', 1),
('050617', '0506', 'San Pedro', 1),
('050618', '0506', 'San Pedro de Palco', 1),
('050619', '0506', 'Sancos', 1),
('050620', '0506', 'Santa Ana de Huaycahuacho', 1),
('050621', '0506', 'Santa Lucia', 1),
('050701', '0507', 'Coracora', 1),
('050702', '0507', 'Chumpi', 1),
('050703', '0507', 'Coronel Castañeda', 1),
('050704', '0507', 'Pacapausa', 1),
('050705', '0507', 'Pullo', 1),
('050706', '0507', 'Puyusca', 1),
('050707', '0507', 'San Francisco de Ravacayco', 1),
('050708', '0507', 'Upahuacho', 1),
('050801', '0508', 'Pausa', 1),
('050802', '0508', 'Colta', 1),
('050803', '0508', 'Corculla', 1),
('050804', '0508', 'Lampa', 1),
('050805', '0508', 'Marcabamba', 1),
('050806', '0508', 'Oyolo', 1),
('050807', '0508', 'Pararca', 1),
('050808', '0508', 'San Javier de Alpabamba', 1),
('050809', '0508', 'San José de Ushua', 1),
('050810', '0508', 'Sara Sara', 1),
('050901', '0509', 'Querobamba', 1),
('050902', '0509', 'Belén', 1),
('050903', '0509', 'Chalcos', 1),
('050904', '0509', 'Chilcayoc', 1),
('050905', '0509', 'Huacaña', 1),
('050906', '0509', 'Morcolla', 1),
('050907', '0509', 'Paico', 1),
('050908', '0509', 'San Pedro de Larcay', 1),
('050909', '0509', 'San Salvador de Quije', 1),
('050910', '0509', 'Santiago de Paucaray', 1),
('050911', '0509', 'Soras', 1),
('051001', '0510', 'Huancapi', 1),
('051002', '0510', 'Alcamenca', 1),
('051003', '0510', 'Apongo', 1),
('051004', '0510', 'Asquipata', 1),
('051005', '0510', 'Canaria', 1),
('051006', '0510', 'Cayara', 1),
('051007', '0510', 'Colca', 1),
('051008', '0510', 'Huamanquiquia', 1),
('051009', '0510', 'Huancaraylla', 1),
('051010', '0510', 'Huaya', 1),
('051011', '0510', 'Sarhua', 1),
('051012', '0510', 'Vilcanchos', 1),
('051101', '0511', 'Vilcas Huaman', 1),
('051102', '0511', 'Accomarca', 1),
('051103', '0511', 'Carhuanca', 1),
('051104', '0511', 'Concepción', 1),
('051105', '0511', 'Huambalpa', 1),
('051106', '0511', 'Independencia', 1),
('051107', '0511', 'Saurama', 1),
('051108', '0511', 'Vischongo', 1),
('060101', '0601', 'Cajamarca', 1),
('060102', '0601', 'Asunción', 1),
('060103', '0601', 'Chetilla', 1),
('060104', '0601', 'Cospan', 1),
('060105', '0601', 'Encañada', 1),
('060106', '0601', 'Jesús', 1),
('060107', '0601', 'Llacanora', 1),
('060108', '0601', 'Los Baños del Inca', 1),
('060109', '0601', 'Magdalena', 1),
('060110', '0601', 'Matara', 1),
('060111', '0601', 'Namora', 1),
('060112', '0601', 'San Juan', 1),
('060201', '0602', 'Cajabamba', 1),
('060202', '0602', 'Cachachi', 1),
('060203', '0602', 'Condebamba', 1),
('060204', '0602', 'Sitacocha', 1),
('060301', '0603', 'Celendín', 1),
('060302', '0603', 'Chumuch', 1),
('060303', '0603', 'Cortegana', 1),
('060304', '0603', 'Huasmin', 1),
('060305', '0603', 'Jorge Chávez', 1),
('060306', '0603', 'José Gálvez', 1),
('060307', '0603', 'Miguel Iglesias', 1),
('060308', '0603', 'Oxamarca', 1),
('060309', '0603', 'Sorochuco', 1),
('060310', '0603', 'Sucre', 1),
('060311', '0603', 'Utco', 1),
('060312', '0603', 'La Libertad de Pallan', 1),
('060401', '0604', 'Chota', 1),
('060402', '0604', 'Anguia', 1),
('060403', '0604', 'Chadin', 1),
('060404', '0604', 'Chiguirip', 1),
('060405', '0604', 'Chimban', 1),
('060406', '0604', 'Choropampa', 1),
('060407', '0604', 'Cochabamba', 1),
('060408', '0604', 'Conchan', 1),
('060409', '0604', 'Huambos', 1),
('060410', '0604', 'Lajas', 1),
('060411', '0604', 'Llama', 1),
('060412', '0604', 'Miracosta', 1),
('060413', '0604', 'Paccha', 1),
('060414', '0604', 'Pion', 1),
('060415', '0604', 'Querocoto', 1),
('060416', '0604', 'San Juan de Licupis', 1),
('060417', '0604', 'Tacabamba', 1),
('060418', '0604', 'Tocmoche', 1),
('060419', '0604', 'Chalamarca', 1),
('060501', '0605', 'Contumaza', 1),
('060502', '0605', 'Chilete', 1),
('060503', '0605', 'Cupisnique', 1),
('060504', '0605', 'Guzmango', 1),
('060505', '0605', 'San Benito', 1),
('060506', '0605', 'Santa Cruz de Toledo', 1),
('060507', '0605', 'Tantarica', 1),
('060508', '0605', 'Yonan', 1),
('060601', '0606', 'Cutervo', 1),
('060602', '0606', 'Callayuc', 1),
('060603', '0606', 'Choros', 1),
('060604', '0606', 'Cujillo', 1),
('060605', '0606', 'La Ramada', 1),
('060606', '0606', 'Pimpingos', 1),
('060607', '0606', 'Querocotillo', 1),
('060608', '0606', 'San Andrés de Cutervo', 1),
('060609', '0606', 'San Juan de Cutervo', 1),
('060610', '0606', 'San Luis de Lucma', 1),
('060611', '0606', 'Santa Cruz', 1),
('060612', '0606', 'Santo Domingo de la Capilla', 1),
('060613', '0606', 'Santo Tomas', 1),
('060614', '0606', 'Socota', 1),
('060615', '0606', 'Toribio Casanova', 1),
('060701', '0607', 'Bambamarca', 1),
('060702', '0607', 'Chugur', 1),
('060703', '0607', 'Hualgayoc', 1),
('060801', '0608', 'Jaén', 1),
('060802', '0608', 'Bellavista', 1),
('060803', '0608', 'Chontali', 1),
('060804', '0608', 'Colasay', 1),
('060805', '0608', 'Huabal', 1),
('060806', '0608', 'Las Pirias', 1),
('060807', '0608', 'Pomahuaca', 1),
('060808', '0608', 'Pucara', 1),
('060809', '0608', 'Sallique', 1),
('060810', '0608', 'San Felipe', 1),
('060811', '0608', 'San José del Alto', 1),
('060812', '0608', 'Santa Rosa', 1),
('060901', '0609', 'San Ignacio', 1),
('060902', '0609', 'Chirinos', 1),
('060903', '0609', 'Huarango', 1),
('060904', '0609', 'La Coipa', 1),
('060905', '0609', 'Namballe', 1),
('060906', '0609', 'San José de Lourdes', 1),
('060907', '0609', 'Tabaconas', 1),
('061001', '0610', 'Pedro Gálvez', 1),
('061002', '0610', 'Chancay', 1),
('061003', '0610', 'Eduardo Villanueva', 1),
('061004', '0610', 'Gregorio Pita', 1),
('061005', '0610', 'Ichocan', 1),
('061006', '0610', 'José Manuel Quiroz', 1),
('061007', '0610', 'José Sabogal', 1),
('061101', '0611', 'San Miguel', 1),
('061102', '0611', 'Bolívar', 1),
('061103', '0611', 'Calquis', 1),
('061104', '0611', 'Catilluc', 1),
('061105', '0611', 'El Prado', 1),
('061106', '0611', 'La Florida', 1),
('061107', '0611', 'Llapa', 1),
('061108', '0611', 'Nanchoc', 1),
('061109', '0611', 'Niepos', 1),
('061110', '0611', 'San Gregorio', 1),
('061111', '0611', 'San Silvestre de Cochan', 1),
('061112', '0611', 'Tongod', 1),
('061113', '0611', 'Unión Agua Blanca', 1),
('061201', '0612', 'San Pablo', 1),
('061202', '0612', 'San Bernardino', 1),
('061203', '0612', 'San Luis', 1),
('061204', '0612', 'Tumbaden', 1),
('061301', '0613', 'Santa Cruz', 1),
('061302', '0613', 'Andabamba', 1),
('061303', '0613', 'Catache', 1),
('061304', '0613', 'Chancaybaños', 1),
('061305', '0613', 'La Esperanza', 1),
('061306', '0613', 'Ninabamba', 1),
('061307', '0613', 'Pulan', 1),
('061308', '0613', 'Saucepampa', 1),
('061309', '0613', 'Sexi', 1),
('061310', '0613', 'Uticyacu', 1),
('061311', '0613', 'Yauyucan', 1),
('070101', '0701', 'Callao', 1),
('070102', '0701', 'Bellavista', 1),
('070103', '0701', 'Carmen de la Legua Reynoso', 1),
('070104', '0701', 'La Perla', 1),
('070105', '0701', 'La Punta', 1),
('070106', '0701', 'Ventanilla', 1),
('070107', '0701', 'Mi Perú', 1),
('080101', '0801', 'Cusco', 1),
('080102', '0801', 'Ccorca', 1),
('080103', '0801', 'Poroy', 1),
('080104', '0801', 'San Jerónimo', 1),
('080105', '0801', 'San Sebastian', 1),
('080106', '0801', 'Santiago', 1),
('080107', '0801', 'Saylla', 1),
('080108', '0801', 'Wanchaq', 1),
('080201', '0802', 'Acomayo', 1),
('080202', '0802', 'Acopia', 1),
('080203', '0802', 'Acos', 1),
('080204', '0802', 'Mosoc Llacta', 1),
('080205', '0802', 'Pomacanchi', 1),
('080206', '0802', 'Rondocan', 1),
('080207', '0802', 'Sangarara', 1),
('080301', '0803', 'Anta', 1),
('080302', '0803', 'Ancahuasi', 1),
('080303', '0803', 'Cachimayo', 1),
('080304', '0803', 'Chinchaypujio', 1),
('080305', '0803', 'Huarocondo', 1),
('080306', '0803', 'Limatambo', 1),
('080307', '0803', 'Mollepata', 1),
('080308', '0803', 'Pucyura', 1),
('080309', '0803', 'Zurite', 1),
('080401', '0804', 'Calca', 1),
('080402', '0804', 'Coya', 1),
('080403', '0804', 'Lamay', 1),
('080404', '0804', 'Lares', 1),
('080405', '0804', 'Pisac', 1),
('080406', '0804', 'San Salvador', 1),
('080407', '0804', 'Taray', 1),
('080408', '0804', 'Yanatile', 1),
('080501', '0805', 'Yanaoca', 1),
('080502', '0805', 'Checca', 1),
('080503', '0805', 'Kunturkanki', 1),
('080504', '0805', 'Langui', 1),
('080505', '0805', 'Layo', 1),
('080506', '0805', 'Pampamarca', 1),
('080507', '0805', 'Quehue', 1),
('080508', '0805', 'Tupac Amaru', 1),
('080601', '0806', 'Sicuani', 1),
('080602', '0806', 'Checacupe', 1),
('080603', '0806', 'Combapata', 1),
('080604', '0806', 'Marangani', 1),
('080605', '0806', 'Pitumarca', 1),
('080606', '0806', 'San Pablo', 1),
('080607', '0806', 'San Pedro', 1),
('080608', '0806', 'Tinta', 1),
('080701', '0807', 'Santo Tomas', 1),
('080702', '0807', 'Capacmarca', 1),
('080703', '0807', 'Chamaca', 1),
('080704', '0807', 'Colquemarca', 1),
('080705', '0807', 'Livitaca', 1),
('080706', '0807', 'Llusco', 1),
('080707', '0807', 'Quiñota', 1),
('080708', '0807', 'Velille', 1),
('080801', '0808', 'Espinar', 1),
('080802', '0808', 'Condoroma', 1),
('080803', '0808', 'Coporaque', 1),
('080804', '0808', 'Ocoruro', 1),
('080805', '0808', 'Pallpata', 1),
('080806', '0808', 'Pichigua', 1),
('080807', '0808', 'Suyckutambo', 1),
('080808', '0808', 'Alto Pichigua', 1),
('080901', '0809', 'Santa Ana', 1),
('080902', '0809', 'Echarate', 1),
('080903', '0809', 'Huayopata', 1),
('080904', '0809', 'Maranura', 1),
('080905', '0809', 'Ocobamba', 1),
('080906', '0809', 'Quellouno', 1),
('080907', '0809', 'Kimbiri', 1),
('080908', '0809', 'Santa Teresa', 1),
('080909', '0809', 'Vilcabamba', 1),
('080910', '0809', 'Pichari', 1),
('080911', '0809', 'Inkawasi', 1),
('080912', '0809', 'Villa Virgen', 1),
('080913', '0809', 'Villa Kintiarina', 1),
('081001', '0810', 'Paruro', 1),
('081002', '0810', 'Accha', 1),
('081003', '0810', 'Ccapi', 1),
('081004', '0810', 'Colcha', 1),
('081005', '0810', 'Huanoquite', 1),
('081006', '0810', 'Omacha', 1),
('081007', '0810', 'Paccaritambo', 1),
('081008', '0810', 'Pillpinto', 1),
('081009', '0810', 'Yaurisque', 1),
('081101', '0811', 'Paucartambo', 1),
('081102', '0811', 'Caicay', 1),
('081103', '0811', 'Challabamba', 1),
('081104', '0811', 'Colquepata', 1),
('081105', '0811', 'Huancarani', 1),
('081106', '0811', 'Kosñipata', 1),
('081201', '0812', 'Urcos', 1),
('081202', '0812', 'Andahuaylillas', 1),
('081203', '0812', 'Camanti', 1),
('081204', '0812', 'Ccarhuayo', 1),
('081205', '0812', 'Ccatca', 1),
('081206', '0812', 'Cusipata', 1),
('081207', '0812', 'Huaro', 1),
('081208', '0812', 'Lucre', 1),
('081209', '0812', 'Marcapata', 1),
('081210', '0812', 'Ocongate', 1),
('081211', '0812', 'Oropesa', 1),
('081212', '0812', 'Quiquijana', 1),
('081301', '0813', 'Urubamba', 1),
('081302', '0813', 'Chinchero', 1),
('081303', '0813', 'Huayllabamba', 1),
('081304', '0813', 'Machupicchu', 1),
('081305', '0813', 'Maras', 1),
('081306', '0813', 'Ollantaytambo', 1),
('081307', '0813', 'Yucay', 1),
('090101', '0901', 'Huancavelica', 1),
('090102', '0901', 'Acobambilla', 1),
('090103', '0901', 'Acoria', 1),
('090104', '0901', 'Conayca', 1),
('090105', '0901', 'Cuenca', 1),
('090106', '0901', 'Huachocolpa', 1),
('090107', '0901', 'Huayllahuara', 1),
('090108', '0901', 'Izcuchaca', 1),
('090109', '0901', 'Laria', 1),
('090110', '0901', 'Manta', 1),
('090111', '0901', 'Mariscal Cáceres', 1),
('090112', '0901', 'Moya', 1),
('090113', '0901', 'Nuevo Occoro', 1),
('090114', '0901', 'Palca', 1),
('090115', '0901', 'Pilchaca', 1),
('090116', '0901', 'Vilca', 1),
('090117', '0901', 'Yauli', 1),
('090118', '0901', 'Ascensión', 1),
('090119', '0901', 'Huando', 1),
('090201', '0902', 'Acobamba', 1),
('090202', '0902', 'Andabamba', 1),
('090203', '0902', 'Anta', 1),
('090204', '0902', 'Caja', 1),
('090205', '0902', 'Marcas', 1),
('090206', '0902', 'Paucara', 1),
('090207', '0902', 'Pomacocha', 1),
('090208', '0902', 'Rosario', 1),
('090301', '0903', 'Lircay', 1),
('090302', '0903', 'Anchonga', 1),
('090303', '0903', 'Callanmarca', 1),
('090304', '0903', 'Ccochaccasa', 1),
('090305', '0903', 'Chincho', 1),
('090306', '0903', 'Congalla', 1),
('090307', '0903', 'Huanca-Huanca', 1),
('090308', '0903', 'Huayllay Grande', 1),
('090309', '0903', 'Julcamarca', 1),
('090310', '0903', 'San Antonio de Antaparco', 1),
('090311', '0903', 'Santo Tomas de Pata', 1),
('090312', '0903', 'Secclla', 1),
('090401', '0904', 'Castrovirreyna', 1),
('090402', '0904', 'Arma', 1),
('090403', '0904', 'Aurahua', 1),
('090404', '0904', 'Capillas', 1),
('090405', '0904', 'Chupamarca', 1),
('090406', '0904', 'Cocas', 1),
('090407', '0904', 'Huachos', 1),
('090408', '0904', 'Huamatambo', 1),
('090409', '0904', 'Mollepampa', 1),
('090410', '0904', 'San Juan', 1),
('090411', '0904', 'Santa Ana', 1),
('090412', '0904', 'Tantara', 1),
('090413', '0904', 'Ticrapo', 1),
('090501', '0905', 'Churcampa', 1),
('090502', '0905', 'Anco', 1),
('090503', '0905', 'Chinchihuasi', 1),
('090504', '0905', 'El Carmen', 1),
('090505', '0905', 'La Merced', 1),
('090506', '0905', 'Locroja', 1),
('090507', '0905', 'Paucarbamba', 1),
('090508', '0905', 'San Miguel de Mayocc', 1),
('090509', '0905', 'San Pedro de Coris', 1),
('090510', '0905', 'Pachamarca', 1),
('090511', '0905', 'Cosme', 1),
('090601', '0906', 'Huaytara', 1),
('090602', '0906', 'Ayavi', 1),
('090603', '0906', 'Córdova', 1),
('090604', '0906', 'Huayacundo Arma', 1),
('090605', '0906', 'Laramarca', 1),
('090606', '0906', 'Ocoyo', 1),
('090607', '0906', 'Pilpichaca', 1),
('090608', '0906', 'Querco', 1),
('090609', '0906', 'Quito-Arma', 1),
('090610', '0906', 'San Antonio de Cusicancha', 1),
('090611', '0906', 'San Francisco de Sangayaico', 1),
('090612', '0906', 'San Isidro', 1),
('090613', '0906', 'Santiago de Chocorvos', 1),
('090614', '0906', 'Santiago de Quirahuara', 1),
('090615', '0906', 'Santo Domingo de Capillas', 1),
('090616', '0906', 'Tambo', 1),
('090701', '0907', 'Pampas', 1),
('090702', '0907', 'Acostambo', 1),
('090703', '0907', 'Acraquia', 1),
('090704', '0907', 'Ahuaycha', 1),
('090705', '0907', 'Colcabamba', 1),
('090706', '0907', 'Daniel Hernández', 1),
('090707', '0907', 'Huachocolpa', 1),
('090709', '0907', 'Huaribamba', 1),
('090710', '0907', 'Ñahuimpuquio', 1),
('090711', '0907', 'Pazos', 1),
('090713', '0907', 'Quishuar', 1),
('090714', '0907', 'Salcabamba', 1),
('090715', '0907', 'Salcahuasi', 1),
('090716', '0907', 'San Marcos de Rocchac', 1),
('090717', '0907', 'Surcubamba', 1),
('090718', '0907', 'Tintay Puncu', 1),
('090719', '0907', 'Quichuas', 1),
('090720', '0907', 'Andaymarca', 1),
('090721', '0907', 'Roble', 1),
('090722', '0907', 'Pichos', 1),
('100101', '1001', 'Huanuco', 1),
('100102', '1001', 'Amarilis', 1),
('100103', '1001', 'Chinchao', 1),
('100104', '1001', 'Churubamba', 1),
('100105', '1001', 'Margos', 1),
('100106', '1001', 'Quisqui (Kichki)', 1),
('100107', '1001', 'San Francisco de Cayran', 1),
('100108', '1001', 'San Pedro de Chaulan', 1),
('100109', '1001', 'Santa María del Valle', 1),
('100110', '1001', 'Yarumayo', 1),
('100111', '1001', 'Pillco Marca', 1),
('100112', '1001', 'Yacus', 1),
('100113', '1001', 'San Pablo de Pillao', 1),
('100201', '1002', 'Ambo', 1),
('100202', '1002', 'Cayna', 1),
('100203', '1002', 'Colpas', 1),
('100204', '1002', 'Conchamarca', 1),
('100205', '1002', 'Huacar', 1),
('100206', '1002', 'San Francisco', 1),
('100207', '1002', 'San Rafael', 1),
('100208', '1002', 'Tomay Kichwa', 1),
('100301', '1003', 'La Unión', 1),
('100307', '1003', 'Chuquis', 1),
('100311', '1003', 'Marías', 1),
('100313', '1003', 'Pachas', 1),
('100316', '1003', 'Quivilla', 1),
('100317', '1003', 'Ripan', 1),
('100321', '1003', 'Shunqui', 1),
('100322', '1003', 'Sillapata', 1),
('100323', '1003', 'Yanas', 1),
('100401', '1004', 'Huacaybamba', 1),
('100402', '1004', 'Canchabamba', 1),
('100403', '1004', 'Cochabamba', 1),
('100404', '1004', 'Pinra', 1),
('100501', '1005', 'Llata', 1),
('100502', '1005', 'Arancay', 1),
('100503', '1005', 'Chavín de Pariarca', 1),
('100504', '1005', 'Jacas Grande', 1),
('100505', '1005', 'Jircan', 1),
('100506', '1005', 'Miraflores', 1),
('100507', '1005', 'Monzón', 1),
('100508', '1005', 'Punchao', 1),
('100509', '1005', 'Puños', 1),
('100510', '1005', 'Singa', 1),
('100511', '1005', 'Tantamayo', 1),
('100601', '1006', 'Rupa-Rupa', 1),
('100602', '1006', 'Daniel Alomía Robles', 1),
('100603', '1006', 'Hermílio Valdizan', 1),
('100604', '1006', 'José Crespo y Castillo', 1),
('100605', '1006', 'Luyando', 1),
('100606', '1006', 'Mariano Damaso Beraun', 1),
('100607', '1006', 'Pucayacu', 1),
('100608', '1006', 'Castillo Grande', 1),
('100701', '1007', 'Huacrachuco', 1),
('100702', '1007', 'Cholon', 1),
('100703', '1007', 'San Buenaventura', 1),
('100704', '1007', 'La Morada', 1),
('100705', '1007', 'Santa Rosa de Alto Yanajanca', 1),
('100801', '1008', 'Panao', 1),
('100802', '1008', 'Chaglla', 1),
('100803', '1008', 'Molino', 1),
('100804', '1008', 'Umari', 1),
('100901', '1009', 'Puerto Inca', 1),
('100902', '1009', 'Codo del Pozuzo', 1),
('100903', '1009', 'Honoria', 1),
('100904', '1009', 'Tournavista', 1),
('100905', '1009', 'Yuyapichis', 1),
('101001', '1010', 'Jesús', 1),
('101002', '1010', 'Baños', 1),
('101003', '1010', 'Jivia', 1),
('101004', '1010', 'Queropalca', 1),
('101005', '1010', 'Rondos', 1),
('101006', '1010', 'San Francisco de Asís', 1),
('101007', '1010', 'San Miguel de Cauri', 1),
('101101', '1011', 'Chavinillo', 1),
('101102', '1011', 'Cahuac', 1),
('101103', '1011', 'Chacabamba', 1),
('101104', '1011', 'Aparicio Pomares', 1),
('101105', '1011', 'Jacas Chico', 1),
('101106', '1011', 'Obas', 1),
('101107', '1011', 'Pampamarca', 1),
('101108', '1011', 'Choras', 1),
('110101', '1101', 'Ica', 1),
('110102', '1101', 'La Tinguiña', 1),
('110103', '1101', 'Los Aquijes', 1),
('110104', '1101', 'Ocucaje', 1),
('110105', '1101', 'Pachacutec', 1),
('110106', '1101', 'Parcona', 1),
('110107', '1101', 'Pueblo Nuevo', 1),
('110108', '1101', 'Salas', 1),
('110109', '1101', 'San José de Los Molinos', 1),
('110110', '1101', 'San Juan Bautista', 1),
('110111', '1101', 'Santiago', 1),
('110112', '1101', 'Subtanjalla', 1),
('110113', '1101', 'Tate', 1),
('110114', '1101', 'Yauca del Rosario', 1),
('110201', '1102', 'Chincha Alta', 1),
('110202', '1102', 'Alto Laran', 1),
('110203', '1102', 'Chavin', 1),
('110204', '1102', 'Chincha Baja', 1),
('110205', '1102', 'El Carmen', 1),
('110206', '1102', 'Grocio Prado', 1),
('110207', '1102', 'Pueblo Nuevo', 1),
('110208', '1102', 'San Juan de Yanac', 1),
('110209', '1102', 'San Pedro de Huacarpana', 1),
('110210', '1102', 'Sunampe', 1),
('110211', '1102', 'Tambo de Mora', 1),
('110301', '1103', 'Nasca', 1),
('110302', '1103', 'Changuillo', 1),
('110303', '1103', 'El Ingenio', 1),
('110304', '1103', 'Marcona', 1),
('110305', '1103', 'Vista Alegre', 1),
('110401', '1104', 'Palpa', 1),
('110402', '1104', 'Llipata', 1),
('110403', '1104', 'Río Grande', 1),
('110404', '1104', 'Santa Cruz', 1),
('110405', '1104', 'Tibillo', 1),
('110501', '1105', 'Pisco', 1),
('110502', '1105', 'Huancano', 1),
('110503', '1105', 'Humay', 1),
('110504', '1105', 'Independencia', 1),
('110505', '1105', 'Paracas', 1),
('110506', '1105', 'San Andrés', 1),
('110507', '1105', 'San Clemente', 1),
('110508', '1105', 'Tupac Amaru Inca', 1),
('120101', '1201', 'Huancayo', 1),
('120104', '1201', 'Carhuacallanga', 1),
('120105', '1201', 'Chacapampa', 1),
('120106', '1201', 'Chicche', 1),
('120107', '1201', 'Chilca', 1),
('120108', '1201', 'Chongos Alto', 1),
('120111', '1201', 'Chupuro', 1),
('120112', '1201', 'Colca', 1),
('120113', '1201', 'Cullhuas', 1),
('120114', '1201', 'El Tambo', 1),
('120116', '1201', 'Huacrapuquio', 1),
('120117', '1201', 'Hualhuas', 1),
('120119', '1201', 'Huancan', 1),
('120120', '1201', 'Huasicancha', 1),
('120121', '1201', 'Huayucachi', 1),
('120122', '1201', 'Ingenio', 1),
('120124', '1201', 'Pariahuanca', 1),
('120125', '1201', 'Pilcomayo', 1),
('120126', '1201', 'Pucara', 1),
('120127', '1201', 'Quichuay', 1),
('120128', '1201', 'Quilcas', 1),
('120129', '1201', 'San Agustín', 1),
('120130', '1201', 'San Jerónimo de Tunan', 1),
('120132', '1201', 'Saño', 1),
('120133', '1201', 'Sapallanga', 1),
('120134', '1201', 'Sicaya', 1),
('120135', '1201', 'Santo Domingo de Acobamba', 1),
('120136', '1201', 'Viques', 1),
('120201', '1202', 'Concepción', 1),
('120202', '1202', 'Aco', 1),
('120203', '1202', 'Andamarca', 1),
('120204', '1202', 'Chambara', 1),
('120205', '1202', 'Cochas', 1),
('120206', '1202', 'Comas', 1),
('120207', '1202', 'Heroínas Toledo', 1),
('120208', '1202', 'Manzanares', 1),
('120209', '1202', 'Mariscal Castilla', 1),
('120210', '1202', 'Matahuasi', 1),
('120211', '1202', 'Mito', 1),
('120212', '1202', 'Nueve de Julio', 1),
('120213', '1202', 'Orcotuna', 1),
('120214', '1202', 'San José de Quero', 1),
('120215', '1202', 'Santa Rosa de Ocopa', 1),
('120301', '1203', 'Chanchamayo', 1),
('120302', '1203', 'Perene', 1),
('120303', '1203', 'Pichanaqui', 1),
('120304', '1203', 'San Luis de Shuaro', 1),
('120305', '1203', 'San Ramón', 1),
('120306', '1203', 'Vitoc', 1),
('120401', '1204', 'Jauja', 1),
('120402', '1204', 'Acolla', 1),
('120403', '1204', 'Apata', 1),
('120404', '1204', 'Ataura', 1),
('120405', '1204', 'Canchayllo', 1),
('120406', '1204', 'Curicaca', 1),
('120407', '1204', 'El Mantaro', 1),
('120408', '1204', 'Huamali', 1),
('120409', '1204', 'Huaripampa', 1),
('120410', '1204', 'Huertas', 1),
('120411', '1204', 'Janjaillo', 1),
('120412', '1204', 'Julcán', 1),
('120413', '1204', 'Leonor Ordóñez', 1),
('120414', '1204', 'Llocllapampa', 1),
('120415', '1204', 'Marco', 1),
('120416', '1204', 'Masma', 1),
('120417', '1204', 'Masma Chicche', 1),
('120418', '1204', 'Molinos', 1),
('120419', '1204', 'Monobamba', 1),
('120420', '1204', 'Muqui', 1),
('120421', '1204', 'Muquiyauyo', 1),
('120422', '1204', 'Paca', 1),
('120423', '1204', 'Paccha', 1),
('120424', '1204', 'Pancan', 1),
('120425', '1204', 'Parco', 1),
('120426', '1204', 'Pomacancha', 1),
('120427', '1204', 'Ricran', 1),
('120428', '1204', 'San Lorenzo', 1),
('120429', '1204', 'San Pedro de Chunan', 1),
('120430', '1204', 'Sausa', 1),
('120431', '1204', 'Sincos', 1),
('120432', '1204', 'Tunan Marca', 1),
('120433', '1204', 'Yauli', 1),
('120434', '1204', 'Yauyos', 1),
('120501', '1205', 'Junin', 1),
('120502', '1205', 'Carhuamayo', 1),
('120503', '1205', 'Ondores', 1),
('120504', '1205', 'Ulcumayo', 1),
('120601', '1206', 'Satipo', 1),
('120602', '1206', 'Coviriali', 1),
('120603', '1206', 'Llaylla', 1),
('120604', '1206', 'Mazamari', 1),
('120605', '1206', 'Pampa Hermosa', 1),
('120606', '1206', 'Pangoa', 1),
('120607', '1206', 'Río Negro', 1),
('120608', '1206', 'Río Tambo', 1),
('120609', '1206', 'Vizcatan del Ene', 1),
('120701', '1207', 'Tarma', 1),
('120702', '1207', 'Acobamba', 1),
('120703', '1207', 'Huaricolca', 1),
('120704', '1207', 'Huasahuasi', 1),
('120705', '1207', 'La Unión', 1),
('120706', '1207', 'Palca', 1),
('120707', '1207', 'Palcamayo', 1),
('120708', '1207', 'San Pedro de Cajas', 1),
('120709', '1207', 'Tapo', 1),
('120801', '1208', 'La Oroya', 1),
('120802', '1208', 'Chacapalpa', 1),
('120803', '1208', 'Huay-Huay', 1),
('120804', '1208', 'Marcapomacocha', 1),
('120805', '1208', 'Morococha', 1),
('120806', '1208', 'Paccha', 1),
('120807', '1208', 'Santa Bárbara de Carhuacayan', 1),
('120808', '1208', 'Santa Rosa de Sacco', 1),
('120809', '1208', 'Suitucancha', 1),
('120810', '1208', 'Yauli', 1),
('120901', '1209', 'Chupaca', 1),
('120902', '1209', 'Ahuac', 1),
('120903', '1209', 'Chongos Bajo', 1),
('120904', '1209', 'Huachac', 1),
('120905', '1209', 'Huamancaca Chico', 1),
('120906', '1209', 'San Juan de Iscos', 1),
('120907', '1209', 'San Juan de Jarpa', 1),
('120908', '1209', 'Tres de Diciembre', 1),
('120909', '1209', 'Yanacancha', 1),
('130101', '1301', 'Trujillo', 1),
('130102', '1301', 'El Porvenir', 1),
('130103', '1301', 'Florencia de Mora', 1),
('130104', '1301', 'Huanchaco', 1),
('130105', '1301', 'La Esperanza', 1),
('130106', '1301', 'Laredo', 1),
('130107', '1301', 'Moche', 1),
('130108', '1301', 'Poroto', 1),
('130109', '1301', 'Salaverry', 1),
('130110', '1301', 'Simbal', 1),
('130111', '1301', 'Victor Larco Herrera', 1),
('130201', '1302', 'Ascope', 1),
('130202', '1302', 'Chicama', 1),
('130203', '1302', 'Chocope', 1),
('130204', '1302', 'Magdalena de Cao', 1),
('130205', '1302', 'Paijan', 1),
('130206', '1302', 'Rázuri', 1),
('130207', '1302', 'Santiago de Cao', 1),
('130208', '1302', 'Casa Grande', 1),
('130301', '1303', 'Bolívar', 1),
('130302', '1303', 'Bambamarca', 1),
('130303', '1303', 'Condormarca', 1),
('130304', '1303', 'Longotea', 1),
('130305', '1303', 'Uchumarca', 1),
('130306', '1303', 'Ucuncha', 1),
('130401', '1304', 'Chepen', 1),
('130402', '1304', 'Pacanga', 1),
('130403', '1304', 'Pueblo Nuevo', 1),
('130501', '1305', 'Julcan', 1),
('130502', '1305', 'Calamarca', 1),
('130503', '1305', 'Carabamba', 1),
('130504', '1305', 'Huaso', 1),
('130601', '1306', 'Otuzco', 1),
('130602', '1306', 'Agallpampa', 1),
('130604', '1306', 'Charat', 1),
('130605', '1306', 'Huaranchal', 1),
('130606', '1306', 'La Cuesta', 1),
('130608', '1306', 'Mache', 1),
('130610', '1306', 'Paranday', 1),
('130611', '1306', 'Salpo', 1),
('130613', '1306', 'Sinsicap', 1),
('130614', '1306', 'Usquil', 1),
('130701', '1307', 'San Pedro de Lloc', 1),
('130702', '1307', 'Guadalupe', 1),
('130703', '1307', 'Jequetepeque', 1),
('130704', '1307', 'Pacasmayo', 1),
('130705', '1307', 'San José', 1),
('130801', '1308', 'Tayabamba', 1),
('130802', '1308', 'Buldibuyo', 1),
('130803', '1308', 'Chillia', 1),
('130804', '1308', 'Huancaspata', 1),
('130805', '1308', 'Huaylillas', 1),
('130806', '1308', 'Huayo', 1),
('130807', '1308', 'Ongon', 1),
('130808', '1308', 'Parcoy', 1),
('130809', '1308', 'Pataz', 1),
('130810', '1308', 'Pias', 1),
('130811', '1308', 'Santiago de Challas', 1),
('130812', '1308', 'Taurija', 1),
('130813', '1308', 'Urpay', 1),
('130901', '1309', 'Huamachuco', 1),
('130902', '1309', 'Chugay', 1),
('130903', '1309', 'Cochorco', 1),
('130904', '1309', 'Curgos', 1),
('130905', '1309', 'Marcabal', 1),
('130906', '1309', 'Sanagoran', 1),
('130907', '1309', 'Sarin', 1),
('130908', '1309', 'Sartimbamba', 1),
('131001', '1310', 'Santiago de Chuco', 1),
('131002', '1310', 'Angasmarca', 1),
('131003', '1310', 'Cachicadan', 1),
('131004', '1310', 'Mollebamba', 1),
('131005', '1310', 'Mollepata', 1),
('131006', '1310', 'Quiruvilca', 1),
('131007', '1310', 'Santa Cruz de Chuca', 1),
('131008', '1310', 'Sitabamba', 1),
('131101', '1311', 'Cascas', 1),
('131102', '1311', 'Lucma', 1),
('131103', '1311', 'Marmot', 1),
('131104', '1311', 'Sayapullo', 1),
('131201', '1312', 'Viru', 1),
('131202', '1312', 'Chao', 1),
('131203', '1312', 'Guadalupito', 1),
('140101', '1401', 'Chiclayo', 1),
('140102', '1401', 'Chongoyape', 1),
('140103', '1401', 'Eten', 1),
('140104', '1401', 'Eten Puerto', 1),
('140105', '1401', 'José Leonardo Ortiz', 1),
('140106', '1401', 'La Victoria', 1),
('140107', '1401', 'Lagunas', 1),
('140108', '1401', 'Monsefu', 1),
('140109', '1401', 'Nueva Arica', 1),
('140110', '1401', 'Oyotun', 1),
('140111', '1401', 'Picsi', 1),
('140112', '1401', 'Pimentel', 1),
('140113', '1401', 'Reque', 1),
('140114', '1401', 'Santa Rosa', 1),
('140115', '1401', 'Saña', 1),
('140116', '1401', 'Cayalti', 1),
('140117', '1401', 'Patapo', 1),
('140118', '1401', 'Pomalca', 1),
('140119', '1401', 'Pucala', 1),
('140120', '1401', 'Tuman', 1),
('140201', '1402', 'Ferreñafe', 1),
('140202', '1402', 'Cañaris', 1),
('140203', '1402', 'Incahuasi', 1),
('140204', '1402', 'Manuel Antonio Mesones Muro', 1),
('140205', '1402', 'Pitipo', 1),
('140206', '1402', 'Pueblo Nuevo', 1),
('140301', '1403', 'Lambayeque', 1),
('140302', '1403', 'Chochope', 1),
('140303', '1403', 'Illimo', 1),
('140304', '1403', 'Jayanca', 1),
('140305', '1403', 'Mochumi', 1),
('140306', '1403', 'Morrope', 1),
('140307', '1403', 'Motupe', 1),
('140308', '1403', 'Olmos', 1),
('140309', '1403', 'Pacora', 1),
('140310', '1403', 'Salas', 1),
('140311', '1403', 'San José', 1),
('140312', '1403', 'Tucume', 1),
('150101', '1501', 'Lima', 1),
('150102', '1501', 'Ancón', 1),
('150103', '1501', 'Ate', 1),
('150104', '1501', 'Barranco', 1),
('150105', '1501', 'Breña', 1),
('150106', '1501', 'Carabayllo', 1),
('150107', '1501', 'Chaclacayo', 1),
('150108', '1501', 'Chorrillos', 1),
('150109', '1501', 'Cieneguilla', 1),
('150110', '1501', 'Comas', 1),
('150111', '1501', 'El Agustino', 1),
('150112', '1501', 'Independencia', 1),
('150113', '1501', 'Jesús María', 1),
('150114', '1501', 'La Molina', 1),
('150115', '1501', 'La Victoria', 1),
('150116', '1501', 'Lince', 1),
('150117', '1501', 'Los Olivos', 1),
('150118', '1501', 'Lurigancho', 1),
('150119', '1501', 'Lurin', 1),
('150120', '1501', 'Magdalena del Mar', 1),
('150121', '1501', 'Pueblo Libre', 1),
('150122', '1501', 'Miraflores', 1),
('150123', '1501', 'Pachacamac', 1),
('150124', '1501', 'Pucusana', 1),
('150125', '1501', 'Puente Piedra', 1),
('150126', '1501', 'Punta Hermosa', 1),
('150127', '1501', 'Punta Negra', 1),
('150128', '1501', 'Rímac', 1),
('150129', '1501', 'San Bartolo', 1),
('150130', '1501', 'San Borja', 1),
('150131', '1501', 'San Isidro', 1),
('150132', '1501', 'San Juan de Lurigancho', 1),
('150133', '1501', 'San Juan de Miraflores', 1),
('150134', '1501', 'San Luis', 1),
('150135', '1501', 'San Martín de Porres', 1),
('150136', '1501', 'San Miguel', 1),
('150137', '1501', 'Santa Anita', 1),
('150138', '1501', 'Santa María del Mar', 1),
('150139', '1501', 'Santa Rosa', 1),
('150140', '1501', 'Santiago de Surco', 1),
('150141', '1501', 'Surquillo', 1),
('150142', '1501', 'Villa El Salvador', 1),
('150143', '1501', 'Villa María del Triunfo', 1),
('150201', '1502', 'Barranca', 1),
('150202', '1502', 'Paramonga', 1),
('150203', '1502', 'Pativilca', 1),
('150204', '1502', 'Supe', 1),
('150205', '1502', 'Supe Puerto', 1),
('150301', '1503', 'Cajatambo', 1),
('150302', '1503', 'Copa', 1),
('150303', '1503', 'Gorgor', 1),
('150304', '1503', 'Huancapon', 1),
('150305', '1503', 'Manas', 1),
('150401', '1504', 'Canta', 1),
('150402', '1504', 'Arahuay', 1),
('150403', '1504', 'Huamantanga', 1),
('150404', '1504', 'Huaros', 1),
('150405', '1504', 'Lachaqui', 1),
('150406', '1504', 'San Buenaventura', 1),
('150407', '1504', 'Santa Rosa de Quives', 1),
('150501', '1505', 'San Vicente de Cañete', 1),
('150502', '1505', 'Asia', 1),
('150503', '1505', 'Calango', 1),
('150504', '1505', 'Cerro Azul', 1),
('150505', '1505', 'Chilca', 1),
('150506', '1505', 'Coayllo', 1),
('150507', '1505', 'Imperial', 1),
('150508', '1505', 'Lunahuana', 1),
('150509', '1505', 'Mala', 1),
('150510', '1505', 'Nuevo Imperial', 1),
('150511', '1505', 'Pacaran', 1),
('150512', '1505', 'Quilmana', 1),
('150513', '1505', 'San Antonio', 1),
('150514', '1505', 'San Luis', 1),
('150515', '1505', 'Santa Cruz de Flores', 1),
('150516', '1505', 'Zúñiga', 1),
('150601', '1506', 'Huaral', 1),
('150602', '1506', 'Atavillos Alto', 1),
('150603', '1506', 'Atavillos Bajo', 1),
('150604', '1506', 'Aucallama', 1),
('150605', '1506', 'Chancay', 1),
('150606', '1506', 'Ihuari', 1),
('150607', '1506', 'Lampian', 1),
('150608', '1506', 'Pacaraos', 1),
('150609', '1506', 'San Miguel de Acos', 1),
('150610', '1506', 'Santa Cruz de Andamarca', 1),
('150611', '1506', 'Sumbilca', 1),
('150612', '1506', 'Veintisiete de Noviembre', 1),
('150701', '1507', 'Matucana', 1),
('150702', '1507', 'Antioquia', 1),
('150703', '1507', 'Callahuanca', 1),
('150704', '1507', 'Carampoma', 1),
('150705', '1507', 'Chicla', 1),
('150706', '1507', 'Cuenca', 1),
('150707', '1507', 'Huachupampa', 1),
('150708', '1507', 'Huanza', 1),
('150709', '1507', 'Huarochiri', 1),
('150710', '1507', 'Lahuaytambo', 1),
('150711', '1507', 'Langa', 1),
('150712', '1507', 'Laraos', 1),
('150713', '1507', 'Mariatana', 1),
('150714', '1507', 'Ricardo Palma', 1),
('150715', '1507', 'San Andrés de Tupicocha', 1),
('150716', '1507', 'San Antonio', 1),
('150717', '1507', 'San Bartolomé', 1),
('150718', '1507', 'San Damian', 1),
('150719', '1507', 'San Juan de Iris', 1),
('150720', '1507', 'San Juan de Tantaranche', 1),
('150721', '1507', 'San Lorenzo de Quinti', 1),
('150722', '1507', 'San Mateo', 1),
('150723', '1507', 'San Mateo de Otao', 1),
('150724', '1507', 'San Pedro de Casta', 1),
('150725', '1507', 'San Pedro de Huancayre', 1),
('150726', '1507', 'Sangallaya', 1),
('150727', '1507', 'Santa Cruz de Cocachacra', 1),
('150728', '1507', 'Santa Eulalia', 1),
('150729', '1507', 'Santiago de Anchucaya', 1),
('150730', '1507', 'Santiago de Tuna', 1),
('150731', '1507', 'Santo Domingo de Los Olleros', 1),
('150732', '1507', 'Surco', 1),
('150801', '1508', 'Huacho', 1),
('150802', '1508', 'Ambar', 1),
('150803', '1508', 'Caleta de Carquin', 1),
('150804', '1508', 'Checras', 1),
('150805', '1508', 'Hualmay', 1),
('150806', '1508', 'Huaura', 1),
('150807', '1508', 'Leoncio Prado', 1),
('150808', '1508', 'Paccho', 1),
('150809', '1508', 'Santa Leonor', 1),
('150810', '1508', 'Santa María', 1),
('150811', '1508', 'Sayan', 1),
('150812', '1508', 'Vegueta', 1),
('150901', '1509', 'Oyon', 1),
('150902', '1509', 'Andajes', 1),
('150903', '1509', 'Caujul', 1),
('150904', '1509', 'Cochamarca', 1),
('150905', '1509', 'Navan', 1),
('150906', '1509', 'Pachangara', 1),
('151001', '1510', 'Yauyos', 1),
('151002', '1510', 'Alis', 1),
('151003', '1510', 'Allauca', 1),
('151004', '1510', 'Ayaviri', 1),
('151005', '1510', 'Azángaro', 1),
('151006', '1510', 'Cacra', 1),
('151007', '1510', 'Carania', 1),
('151008', '1510', 'Catahuasi', 1),
('151009', '1510', 'Chocos', 1),
('151010', '1510', 'Cochas', 1),
('151011', '1510', 'Colonia', 1),
('151012', '1510', 'Hongos', 1),
('151013', '1510', 'Huampara', 1),
('151014', '1510', 'Huancaya', 1),
('151015', '1510', 'Huangascar', 1),
('151016', '1510', 'Huantan', 1),
('151017', '1510', 'Huañec', 1),
('151018', '1510', 'Laraos', 1),
('151019', '1510', 'Lincha', 1),
('151020', '1510', 'Madean', 1),
('151021', '1510', 'Miraflores', 1),
('151022', '1510', 'Omas', 1),
('151023', '1510', 'Putinza', 1),
('151024', '1510', 'Quinches', 1),
('151025', '1510', 'Quinocay', 1),
('151026', '1510', 'San Joaquín', 1),
('151027', '1510', 'San Pedro de Pilas', 1),
('151028', '1510', 'Tanta', 1),
('151029', '1510', 'Tauripampa', 1),
('151030', '1510', 'Tomas', 1),
('151031', '1510', 'Tupe', 1),
('151032', '1510', 'Viñac', 1),
('151033', '1510', 'Vitis', 1),
('160101', '1601', 'Iquitos', 1),
('160102', '1601', 'Alto Nanay', 1),
('160103', '1601', 'Fernando Lores', 1),
('160104', '1601', 'Indiana', 1),
('160105', '1601', 'Las Amazonas', 1),
('160106', '1601', 'Mazan', 1),
('160107', '1601', 'Napo', 1),
('160108', '1601', 'Punchana', 1),
('160110', '1601', 'Torres Causana', 1),
('160112', '1601', 'Belén', 1),
('160113', '1601', 'San Juan Bautista', 1);
INSERT INTO `districts` (`id`, `province_id`, `description`, `active`) VALUES
('160201', '1602', 'Yurimaguas', 1),
('160202', '1602', 'Balsapuerto', 1),
('160205', '1602', 'Jeberos', 1),
('160206', '1602', 'Lagunas', 1),
('160210', '1602', 'Santa Cruz', 1),
('160211', '1602', 'Teniente Cesar López Rojas', 1),
('160301', '1603', 'Nauta', 1),
('160302', '1603', 'Parinari', 1),
('160303', '1603', 'Tigre', 1),
('160304', '1603', 'Trompeteros', 1),
('160305', '1603', 'Urarinas', 1),
('160401', '1604', 'Ramón Castilla', 1),
('160402', '1604', 'Pebas', 1),
('160403', '1604', 'Yavari', 1),
('160404', '1604', 'San Pablo', 1),
('160501', '1605', 'Requena', 1),
('160502', '1605', 'Alto Tapiche', 1),
('160503', '1605', 'Capelo', 1),
('160504', '1605', 'Emilio San Martín', 1),
('160505', '1605', 'Maquia', 1),
('160506', '1605', 'Puinahua', 1),
('160507', '1605', 'Saquena', 1),
('160508', '1605', 'Soplin', 1),
('160509', '1605', 'Tapiche', 1),
('160510', '1605', 'Jenaro Herrera', 1),
('160511', '1605', 'Yaquerana', 1),
('160601', '1606', 'Contamana', 1),
('160602', '1606', 'Inahuaya', 1),
('160603', '1606', 'Padre Márquez', 1),
('160604', '1606', 'Pampa Hermosa', 1),
('160605', '1606', 'Sarayacu', 1),
('160606', '1606', 'Vargas Guerra', 1),
('160701', '1607', 'Barranca', 1),
('160702', '1607', 'Cahuapanas', 1),
('160703', '1607', 'Manseriche', 1),
('160704', '1607', 'Morona', 1),
('160705', '1607', 'Pastaza', 1),
('160706', '1607', 'Andoas', 1),
('160801', '1608', 'Putumayo', 1),
('160802', '1608', 'Rosa Panduro', 1),
('160803', '1608', 'Teniente Manuel Clavero', 1),
('160804', '1608', 'Yaguas', 1),
('170101', '1701', 'Tambopata', 1),
('170102', '1701', 'Inambari', 1),
('170103', '1701', 'Las Piedras', 1),
('170104', '1701', 'Laberinto', 1),
('170201', '1702', 'Manu', 1),
('170202', '1702', 'Fitzcarrald', 1),
('170203', '1702', 'Madre de Dios', 1),
('170204', '1702', 'Huepetuhe', 1),
('170301', '1703', 'Iñapari', 1),
('170302', '1703', 'Iberia', 1),
('170303', '1703', 'Tahuamanu', 1),
('180101', '1801', 'Moquegua', 1),
('180102', '1801', 'Carumas', 1),
('180103', '1801', 'Cuchumbaya', 1),
('180104', '1801', 'Samegua', 1),
('180105', '1801', 'San Cristóbal', 1),
('180106', '1801', 'Torata', 1),
('180201', '1802', 'Omate', 1),
('180202', '1802', 'Chojata', 1),
('180203', '1802', 'Coalaque', 1),
('180204', '1802', 'Ichuña', 1),
('180205', '1802', 'La Capilla', 1),
('180206', '1802', 'Lloque', 1),
('180207', '1802', 'Matalaque', 1),
('180208', '1802', 'Puquina', 1),
('180209', '1802', 'Quinistaquillas', 1),
('180210', '1802', 'Ubinas', 1),
('180211', '1802', 'Yunga', 1),
('180301', '1803', 'Ilo', 1),
('180302', '1803', 'El Algarrobal', 1),
('180303', '1803', 'Pacocha', 1),
('190101', '1901', 'Chaupimarca', 1),
('190102', '1901', 'Huachon', 1),
('190103', '1901', 'Huariaca', 1),
('190104', '1901', 'Huayllay', 1),
('190105', '1901', 'Ninacaca', 1),
('190106', '1901', 'Pallanchacra', 1),
('190107', '1901', 'Paucartambo', 1),
('190108', '1901', 'San Francisco de Asís de Yarusyacan', 1),
('190109', '1901', 'Simon Bolívar', 1),
('190110', '1901', 'Ticlacayan', 1),
('190111', '1901', 'Tinyahuarco', 1),
('190112', '1901', 'Vicco', 1),
('190113', '1901', 'Yanacancha', 1),
('190201', '1902', 'Yanahuanca', 1),
('190202', '1902', 'Chacayan', 1),
('190203', '1902', 'Goyllarisquizga', 1),
('190204', '1902', 'Paucar', 1),
('190205', '1902', 'San Pedro de Pillao', 1),
('190206', '1902', 'Santa Ana de Tusi', 1),
('190207', '1902', 'Tapuc', 1),
('190208', '1902', 'Vilcabamba', 1),
('190301', '1903', 'Oxapampa', 1),
('190302', '1903', 'Chontabamba', 1),
('190303', '1903', 'Huancabamba', 1),
('190304', '1903', 'Palcazu', 1),
('190305', '1903', 'Pozuzo', 1),
('190306', '1903', 'Puerto Bermúdez', 1),
('190307', '1903', 'Villa Rica', 1),
('190308', '1903', 'Constitución', 1),
('200101', '2001', 'Piura', 1),
('200104', '2001', 'Castilla', 1),
('200105', '2001', 'Catacaos', 1),
('200107', '2001', 'Cura Mori', 1),
('200108', '2001', 'El Tallan', 1),
('200109', '2001', 'La Arena', 1),
('200110', '2001', 'La Unión', 1),
('200111', '2001', 'Las Lomas', 1),
('200114', '2001', 'Tambo Grande', 1),
('200115', '2001', 'Veintiseis de Octubre', 1),
('200201', '2002', 'Ayabaca', 1),
('200202', '2002', 'Frias', 1),
('200203', '2002', 'Jilili', 1),
('200204', '2002', 'Lagunas', 1),
('200205', '2002', 'Montero', 1),
('200206', '2002', 'Pacaipampa', 1),
('200207', '2002', 'Paimas', 1),
('200208', '2002', 'Sapillica', 1),
('200209', '2002', 'Sicchez', 1),
('200210', '2002', 'Suyo', 1),
('200301', '2003', 'Huancabamba', 1),
('200302', '2003', 'Canchaque', 1),
('200303', '2003', 'El Carmen de la Frontera', 1),
('200304', '2003', 'Huarmaca', 1),
('200305', '2003', 'Lalaquiz', 1),
('200306', '2003', 'San Miguel de El Faique', 1),
('200307', '2003', 'Sondor', 1),
('200308', '2003', 'Sondorillo', 1),
('200401', '2004', 'Chulucanas', 1),
('200402', '2004', 'Buenos Aires', 1),
('200403', '2004', 'Chalaco', 1),
('200404', '2004', 'La Matanza', 1),
('200405', '2004', 'Morropon', 1),
('200406', '2004', 'Salitral', 1),
('200407', '2004', 'San Juan de Bigote', 1),
('200408', '2004', 'Santa Catalina de Mossa', 1),
('200409', '2004', 'Santo Domingo', 1),
('200410', '2004', 'YAMANGO', 1),
('200501', '2005', 'PAITA', 1),
('200502', '2005', 'AMOTAPE', 1),
('200503', '2005', 'ARENAL', 1),
('200504', '2005', 'COLAN', 1),
('200505', '2005', 'LA HUACA', 1),
('200506', '2005', 'Tamarindo', 1),
('200507', '2005', 'Vichayal', 1),
('200601', '2006', 'SULLANA', 1),
('200602', '2006', 'Bellavista', 1),
('200603', '2006', 'Ignacio Escudero', 1),
('200604', '2006', 'Lancones', 1),
('200605', '2006', 'Marcavelica', 1),
('200606', '2006', 'Miguel Checa', 1),
('200607', '2006', 'Querecotillo', 1),
('200608', '2006', 'Salitral', 1),
('200701', '2007', 'PARIÑAS', 1),
('200702', '2007', 'EL ALTO', 1),
('200703', '2007', 'LA BREA', 1),
('200704', '2007', 'LOBITOS', 1),
('200705', '2007', 'Los Organos', 1),
('200706', '2007', 'MANCORA', 1),
('200801', '2008', 'SECHURA', 1),
('200802', '2008', 'Bellavista de la Unión', 1),
('200803', '2008', 'BERNAL', 1),
('200804', '2008', 'Cristo Nos Valga', 1),
('200805', '2008', 'Vice', 1),
('200806', '2008', 'Rinconada Llicuar', 1),
('210101', '2101', 'Puno', 1),
('210102', '2101', 'Acora', 1),
('210103', '2101', 'Amantani', 1),
('210104', '2101', 'Atuncolla', 1),
('210105', '2101', 'Capachica', 1),
('210106', '2101', 'Chucuito', 1),
('210107', '2101', 'Coata', 1),
('210108', '2101', 'Huata', 1),
('210109', '2101', 'Mañazo', 1),
('210110', '2101', 'Paucarcolla', 1),
('210111', '2101', 'Pichacani', 1),
('210112', '2101', 'Plateria', 1),
('210113', '2101', 'San Antonio', 1),
('210114', '2101', 'Tiquillaca', 1),
('210115', '2101', 'Vilque', 1),
('210201', '2102', 'Azángaro', 1),
('210202', '2102', 'Achaya', 1),
('210203', '2102', 'Arapa', 1),
('210204', '2102', 'Asillo', 1),
('210205', '2102', 'Caminaca', 1),
('210206', '2102', 'Chupa', 1),
('210207', '2102', 'José Domingo Choquehuanca', 1),
('210208', '2102', 'Muñani', 1),
('210209', '2102', 'Potoni', 1),
('210210', '2102', 'Saman', 1),
('210211', '2102', 'San Anton', 1),
('210212', '2102', 'San José', 1),
('210213', '2102', 'San Juan de Salinas', 1),
('210214', '2102', 'Santiago de Pupuja', 1),
('210215', '2102', 'Tirapata', 1),
('210301', '2103', 'Macusani', 1),
('210302', '2103', 'Ajoyani', 1),
('210303', '2103', 'Ayapata', 1),
('210304', '2103', 'Coasa', 1),
('210305', '2103', 'Corani', 1),
('210306', '2103', 'Crucero', 1),
('210307', '2103', 'Ituata', 1),
('210308', '2103', 'Ollachea', 1),
('210309', '2103', 'San Gaban', 1),
('210310', '2103', 'Usicayos', 1),
('210401', '2104', 'Juli', 1),
('210402', '2104', 'Desaguadero', 1),
('210403', '2104', 'Huacullani', 1),
('210404', '2104', 'Kelluyo', 1),
('210405', '2104', 'Pisacoma', 1),
('210406', '2104', 'Pomata', 1),
('210407', '2104', 'Zepita', 1),
('210501', '2105', 'Ilave', 1),
('210502', '2105', 'Capazo', 1),
('210503', '2105', 'Pilcuyo', 1),
('210504', '2105', 'Santa Rosa', 1),
('210505', '2105', 'Conduriri', 1),
('210601', '2106', 'Huancane', 1),
('210602', '2106', 'Cojata', 1),
('210603', '2106', 'Huatasani', 1),
('210604', '2106', 'Inchupalla', 1),
('210605', '2106', 'Pusi', 1),
('210606', '2106', 'Rosaspata', 1),
('210607', '2106', 'Taraco', 1),
('210608', '2106', 'Vilque Chico', 1),
('210701', '2107', 'Lampa', 1),
('210702', '2107', 'Cabanilla', 1),
('210703', '2107', 'Calapuja', 1),
('210704', '2107', 'Nicasio', 1),
('210705', '2107', 'Ocuviri', 1),
('210706', '2107', 'Palca', 1),
('210707', '2107', 'Paratia', 1),
('210708', '2107', 'Pucara', 1),
('210709', '2107', 'Santa Lucia', 1),
('210710', '2107', 'Vilavila', 1),
('210801', '2108', 'Ayaviri', 1),
('210802', '2108', 'Antauta', 1),
('210803', '2108', 'Cupi', 1),
('210804', '2108', 'Llalli', 1),
('210805', '2108', 'Macari', 1),
('210806', '2108', 'Nuñoa', 1),
('210807', '2108', 'Orurillo', 1),
('210808', '2108', 'Santa Rosa', 1),
('210809', '2108', 'Umachiri', 1),
('210901', '2109', 'Moho', 1),
('210902', '2109', 'Conima', 1),
('210903', '2109', 'Huayrapata', 1),
('210904', '2109', 'Tilali', 1),
('211001', '2110', 'Putina', 1),
('211002', '2110', 'Ananea', 1),
('211003', '2110', 'Pedro Vilca Apaza', 1),
('211004', '2110', 'Quilcapuncu', 1),
('211005', '2110', 'Sina', 1),
('211101', '2111', 'Juliaca', 1),
('211102', '2111', 'Cabana', 1),
('211103', '2111', 'Cabanillas', 1),
('211104', '2111', 'Caracoto', 1),
('211105', '2111', 'San Miguel', 1),
('211201', '2112', 'Sandia', 1),
('211202', '2112', 'Cuyocuyo', 1),
('211203', '2112', 'Limbani', 1),
('211204', '2112', 'Patambuco', 1),
('211205', '2112', 'Phara', 1),
('211206', '2112', 'Quiaca', 1),
('211207', '2112', 'San Juan del Oro', 1),
('211208', '2112', 'Yanahuaya', 1),
('211209', '2112', 'Alto Inambari', 1),
('211210', '2112', 'San Pedro de Putina Punco', 1),
('211301', '2113', 'Yunguyo', 1),
('211302', '2113', 'Anapia', 1),
('211303', '2113', 'Copani', 1),
('211304', '2113', 'Cuturapi', 1),
('211305', '2113', 'Ollaraya', 1),
('211306', '2113', 'Tinicachi', 1),
('211307', '2113', 'Unicachi', 1),
('220101', '2201', 'Moyobamba', 1),
('220102', '2201', 'Calzada', 1),
('220103', '2201', 'Habana', 1),
('220104', '2201', 'Jepelacio', 1),
('220105', '2201', 'Soritor', 1),
('220106', '2201', 'Yantalo', 1),
('220201', '2202', 'Bellavista', 1),
('220202', '2202', 'Alto Biavo', 1),
('220203', '2202', 'Bajo Biavo', 1),
('220204', '2202', 'Huallaga', 1),
('220205', '2202', 'San Pablo', 1),
('220206', '2202', 'San Rafael', 1),
('220301', '2203', 'San José de Sisa', 1),
('220302', '2203', 'Agua Blanca', 1),
('220303', '2203', 'San Martín', 1),
('220304', '2203', 'Santa Rosa', 1),
('220305', '2203', 'Shatoja', 1),
('220401', '2204', 'Saposoa', 1),
('220402', '2204', 'Alto Saposoa', 1),
('220403', '2204', 'El Eslabón', 1),
('220404', '2204', 'Piscoyacu', 1),
('220405', '2204', 'Sacanche', 1),
('220406', '2204', 'Tingo de Saposoa', 1),
('220501', '2205', 'Lamas', 1),
('220502', '2205', 'Alonso de Alvarado', 1),
('220503', '2205', 'Barranquita', 1),
('220504', '2205', 'Caynarachi', 1),
('220505', '2205', 'Cuñumbuqui', 1),
('220506', '2205', 'Pinto Recodo', 1),
('220507', '2205', 'Rumisapa', 1),
('220508', '2205', 'San Roque de Cumbaza', 1),
('220509', '2205', 'Shanao', 1),
('220510', '2205', 'Tabalosos', 1),
('220511', '2205', 'Zapatero', 1),
('220601', '2206', 'Juanjuí', 1),
('220602', '2206', 'Campanilla', 1),
('220603', '2206', 'Huicungo', 1),
('220604', '2206', 'Pachiza', 1),
('220605', '2206', 'Pajarillo', 1),
('220701', '2207', 'Picota', 1),
('220702', '2207', 'Buenos Aires', 1),
('220703', '2207', 'Caspisapa', 1),
('220704', '2207', 'Pilluana', 1),
('220705', '2207', 'Pucacaca', 1),
('220706', '2207', 'San Cristóbal', 1),
('220707', '2207', 'San Hilarión', 1),
('220708', '2207', 'Shamboyacu', 1),
('220709', '2207', 'Tingo de Ponasa', 1),
('220710', '2207', 'Tres Unidos', 1),
('220801', '2208', 'Rioja', 1),
('220802', '2208', 'Awajun', 1),
('220803', '2208', 'Elías Soplin Vargas', 1),
('220804', '2208', 'Nueva Cajamarca', 1),
('220805', '2208', 'Pardo Miguel', 1),
('220806', '2208', 'Posic', 1),
('220807', '2208', 'San Fernando', 1),
('220808', '2208', 'Yorongos', 1),
('220809', '2208', 'Yuracyacu', 1),
('220901', '2209', 'Tarapoto', 1),
('220902', '2209', 'Alberto Leveau', 1),
('220903', '2209', 'Cacatachi', 1),
('220904', '2209', 'Chazuta', 1),
('220905', '2209', 'Chipurana', 1),
('220906', '2209', 'El Porvenir', 1),
('220907', '2209', 'Huimbayoc', 1),
('220908', '2209', 'Juan Guerra', 1),
('220909', '2209', 'La Banda de Shilcayo', 1),
('220910', '2209', 'Morales', 1),
('220911', '2209', 'Papaplaya', 1),
('220912', '2209', 'San Antonio', 1),
('220913', '2209', 'Sauce', 1),
('220914', '2209', 'Shapaja', 1),
('221001', '2210', 'Tocache', 1),
('221002', '2210', 'Nuevo Progreso', 1),
('221003', '2210', 'Polvora', 1),
('221004', '2210', 'Shunte', 1),
('221005', '2210', 'Uchiza', 1),
('230101', '2301', 'Tacna', 1),
('230102', '2301', 'Alto de la Alianza', 1),
('230103', '2301', 'Calana', 1),
('230104', '2301', 'Ciudad Nueva', 1),
('230105', '2301', 'Inclan', 1),
('230106', '2301', 'Pachia', 1),
('230107', '2301', 'Palca', 1),
('230108', '2301', 'Pocollay', 1),
('230109', '2301', 'Sama', 1),
('230110', '2301', 'Coronel Gregorio Albarracín Lanchipa', 1),
('230111', '2301', 'La Yarada los Palos', 1),
('230201', '2302', 'Candarave', 1),
('230202', '2302', 'Cairani', 1),
('230203', '2302', 'Camilaca', 1),
('230204', '2302', 'Curibaya', 1),
('230205', '2302', 'Huanuara', 1),
('230206', '2302', 'Quilahuani', 1),
('230301', '2303', 'Locumba', 1),
('230302', '2303', 'Ilabaya', 1),
('230303', '2303', 'Ite', 1),
('230401', '2304', 'Tarata', 1),
('230402', '2304', 'Héroes Albarracín', 1),
('230403', '2304', 'Estique', 1),
('230404', '2304', 'Estique-Pampa', 1),
('230405', '2304', 'Sitajara', 1),
('230406', '2304', 'Susapaya', 1),
('230407', '2304', 'Tarucachi', 1),
('230408', '2304', 'Ticaco', 1),
('240101', '2401', 'Tumbes', 1),
('240102', '2401', 'Corrales', 1),
('240103', '2401', 'La Cruz', 1),
('240104', '2401', 'Pampas de Hospital', 1),
('240105', '2401', 'San Jacinto', 1),
('240106', '2401', 'San Juan de la Virgen', 1),
('240201', '2402', 'Zorritos', 1),
('240202', '2402', 'Casitas', 1),
('240203', '2402', 'Canoas de Punta Sal', 1),
('240301', '2403', 'Zarumilla', 1),
('240302', '2403', 'Aguas Verdes', 1),
('240303', '2403', 'Matapalo', 1),
('240304', '2403', 'Papayal', 1),
('250101', '2501', 'Calleria', 1),
('250102', '2501', 'Campoverde', 1),
('250103', '2501', 'Iparia', 1),
('250104', '2501', 'Masisea', 1),
('250105', '2501', 'Yarinacocha', 1),
('250106', '2501', 'Nueva Requena', 1),
('250107', '2501', 'Manantay', 1),
('250201', '2502', 'Raymondi', 1),
('250202', '2502', 'Sepahua', 1),
('250203', '2502', 'Tahuania', 1),
('250204', '2502', 'Yurua', 1),
('250301', '2503', 'Padre Abad', 1),
('250302', '2503', 'Irazola', 1),
('250303', '2503', 'Curimana', 1),
('250304', '2503', 'Neshuya', 1),
('250305', '2503', 'Alexander Von Humboldt', 1),
('250401', '2504', 'Purus', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_services`
--

CREATE TABLE `extra_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `pregunta` varchar(255) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `faqs`
--

INSERT INTO `faqs` (`id`, `titulo`, `pregunta`, `respuesta`, `visible`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pregunta 1', '¿Por qué comprar en Deco TAB?', NULL, 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(2, 'Pregunta 2', '¿Qué comprar en Deco TAB?', NULL, 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(3, 'Pregunta 3', '¿Cómo realizar una compra en Deco TAB?', NULL, 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(4, 'Pregunta 4', '¿Dónde consultar la disponibilidad del producto?', NULL, 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(5, 'Pregunta 5', '¿Qué promociones ofrece Deco TAB sobre Wall Panel y paneles de piedra cincelada?', NULL, 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(6, 'Pregunta 6', '¿Cuánto mide un Wall Panel?', NULL, 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(7, 'Pregunta 7', '¿Qué comprar en Deco TAB?', NULL, 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(8, 'Pregunta 8', '¿Qué es el UV Mármol y para qué sirve?', NULL, 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeries`
--

CREATE TABLE `galeries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galeries`
--

INSERT INTO `galeries` (`id`, `product_id`, `valor`, `descripcion`, `color`, `imagen`, `visible`, `status`, `created_at`, `updated_at`) VALUES
(589, 37, NULL, NULL, NULL, 'storage/images/productos/MP101001_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(590, 37, NULL, NULL, NULL, 'storage/images/productos/MP101001_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(591, 37, NULL, NULL, NULL, 'storage/images/productos/MP101001_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(592, 37, NULL, NULL, NULL, 'storage/images/productos/MP101001_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(593, 37, NULL, NULL, NULL, 'storage/images/productos/MP101001_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(594, 37, NULL, NULL, NULL, 'storage/images/productos/MP101001_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(595, 37, NULL, NULL, NULL, 'storage/images/productos/MP101001_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(596, 37, NULL, NULL, NULL, 'storage/images/productos/MP101001_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(597, 37, NULL, NULL, NULL, 'storage/images/productos/MP101001_9.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(607, 39, NULL, NULL, NULL, 'storage/images/productos/MP101003_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(608, 39, NULL, NULL, NULL, 'storage/images/productos/MP101003_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(609, 39, NULL, NULL, NULL, 'storage/images/productos/MP101003_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(610, 39, NULL, NULL, NULL, 'storage/images/productos/MP101003_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(611, 39, NULL, NULL, NULL, 'storage/images/productos/MP101003_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(612, 39, NULL, NULL, NULL, 'storage/images/productos/MP101003_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(613, 39, NULL, NULL, NULL, 'storage/images/productos/MP101003_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(614, 39, NULL, NULL, NULL, 'storage/images/productos/MP101003_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(615, 39, NULL, NULL, NULL, 'storage/images/productos/MP101003_9.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(616, 40, NULL, NULL, NULL, 'storage/images/productos/MP101005_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(617, 40, NULL, NULL, NULL, 'storage/images/productos/MP101005_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(618, 40, NULL, NULL, NULL, 'storage/images/productos/MP101005_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(619, 40, NULL, NULL, NULL, 'storage/images/productos/MP101005_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(620, 40, NULL, NULL, NULL, 'storage/images/productos/MP101005_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(621, 40, NULL, NULL, NULL, 'storage/images/productos/MP101005_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(622, 40, NULL, NULL, NULL, 'storage/images/productos/MP101005_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(623, 40, NULL, NULL, NULL, 'storage/images/productos/MP101005_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(624, 40, NULL, NULL, NULL, 'storage/images/productos/MP101005_9.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(625, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(626, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_10.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(627, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_11.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(628, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_12.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(629, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(630, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(631, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(632, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(633, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(634, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(635, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(636, 41, NULL, NULL, NULL, 'storage/images/productos/MP101006_9.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(637, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(638, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_10.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(639, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_11.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(640, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_12.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(641, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_13.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(642, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_14.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(643, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_15.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(644, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(645, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(646, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(647, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(648, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(649, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(650, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(651, 42, NULL, NULL, NULL, 'storage/images/productos/MP101008_9.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(652, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(653, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_10.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(654, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_11.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(655, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_12.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(656, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_13.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(657, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_14.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(658, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_15.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(659, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(660, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(661, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(662, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(663, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(664, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(665, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(666, 43, NULL, NULL, NULL, 'storage/images/productos/MP101009_9.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(667, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(668, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_10.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(669, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_11.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(670, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_12.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(671, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_13.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(672, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_14.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(673, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_15.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(674, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_16.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(675, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_17.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(676, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(677, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(678, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(679, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(680, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(681, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(682, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(683, 44, NULL, NULL, NULL, 'storage/images/productos/MP101010_9.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(684, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(685, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_10.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(686, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_11.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(687, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_12.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(688, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_13.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(689, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_14.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(690, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_15.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(691, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_16.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(692, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_17.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(693, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(694, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(695, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(696, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(697, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(698, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(699, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(700, 45, NULL, NULL, NULL, 'storage/images/productos/MP101011_9.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(701, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(702, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_10.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(703, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_11.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(704, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_12.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(705, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(706, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(707, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(708, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(709, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(710, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(711, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(712, 46, NULL, NULL, NULL, 'storage/images/productos/MP101012_9.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(713, 47, NULL, NULL, NULL, 'storage/images/productos/MP101013_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(714, 47, NULL, NULL, NULL, 'storage/images/productos/MP101013_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(715, 47, NULL, NULL, NULL, 'storage/images/productos/MP101013_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(716, 47, NULL, NULL, NULL, 'storage/images/productos/MP101013_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(717, 47, NULL, NULL, NULL, 'storage/images/productos/MP101013_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(718, 47, NULL, NULL, NULL, 'storage/images/productos/MP101013_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(719, 47, NULL, NULL, NULL, 'storage/images/productos/MP101013_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(720, 47, NULL, NULL, NULL, 'storage/images/productos/MP101013_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(721, 48, NULL, NULL, NULL, 'storage/images/productos/MP101014_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(722, 48, NULL, NULL, NULL, 'storage/images/productos/MP101014_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(723, 48, NULL, NULL, NULL, 'storage/images/productos/MP101014_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(724, 48, NULL, NULL, NULL, 'storage/images/productos/MP101014_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(725, 48, NULL, NULL, NULL, 'storage/images/productos/MP101014_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(726, 48, NULL, NULL, NULL, 'storage/images/productos/MP101014_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(727, 48, NULL, NULL, NULL, 'storage/images/productos/MP101014_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(728, 48, NULL, NULL, NULL, 'storage/images/productos/MP101014_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(737, 50, NULL, NULL, NULL, 'storage/images/productos/MP301001_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(738, 50, NULL, NULL, NULL, 'storage/images/productos/MP301001_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(739, 50, NULL, NULL, NULL, 'storage/images/productos/MP301001_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(760, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(761, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_10.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(762, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_11.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(763, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_12.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(764, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(765, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(766, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(767, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(768, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(769, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(770, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(771, 53, NULL, NULL, NULL, 'storage/images/productos/MP301002_9.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(772, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_1.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(773, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_10.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(774, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_11.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(775, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_12.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(776, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_13.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(777, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_2.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(778, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_3.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(779, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_4.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(780, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_5.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(781, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_6.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(782, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_7.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(783, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_8.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(784, 54, NULL, NULL, NULL, 'storage/images/productos/MP301003_9.png', 1, 1, '2025-05-27 17:08:50', '2025-05-27 17:08:50'),
(785, 52, NULL, NULL, NULL, 'storage/images/productos/MP203001_10.png', 1, 1, '2025-05-30 20:20:22', '2025-05-30 20:20:22'),
(786, 52, NULL, NULL, NULL, 'storage/images/productos/MP203001_2.png', 1, 1, '2025-05-30 20:20:22', '2025-05-30 20:20:22'),
(787, 52, NULL, NULL, NULL, 'storage/images/productos/MP203001_3.png', 1, 1, '2025-05-30 20:20:22', '2025-05-30 20:20:22'),
(788, 52, NULL, NULL, NULL, 'storage/images/productos/MP203001_4.png', 1, 1, '2025-05-30 20:20:22', '2025-05-30 20:20:22'),
(789, 52, NULL, NULL, NULL, 'storage/images/productos/MP203001_5.png', 1, 1, '2025-05-30 20:20:22', '2025-05-30 20:20:22'),
(790, 52, NULL, NULL, NULL, 'storage/images/productos/MP203001_6.png', 1, 1, '2025-05-30 20:20:22', '2025-05-30 20:20:22'),
(791, 52, NULL, NULL, NULL, 'storage/images/productos/MP203001_7.png', 1, 1, '2025-05-30 20:20:22', '2025-05-30 20:20:22'),
(792, 52, NULL, NULL, NULL, 'storage/images/productos/MP203001_8.png', 1, 1, '2025-05-30 20:20:22', '2025-05-30 20:20:22'),
(793, 52, NULL, NULL, NULL, 'storage/images/productos/MP203001_9.png', 1, 1, '2025-05-30 20:20:22', '2025-05-30 20:20:22'),
(794, 51, NULL, NULL, NULL, 'storage/images/productos/MP201001_1.png', 1, 1, '2025-05-30 20:20:49', '2025-05-30 20:20:49'),
(795, 51, NULL, NULL, NULL, 'storage/images/productos/MP201001_10.png', 1, 1, '2025-05-30 20:20:49', '2025-05-30 20:20:49'),
(796, 51, NULL, NULL, NULL, 'storage/images/productos/MP201001_11.png', 1, 1, '2025-05-30 20:20:49', '2025-05-30 20:20:49'),
(797, 51, NULL, NULL, NULL, 'storage/images/productos/MP201001_2.png', 1, 1, '2025-05-30 20:20:49', '2025-05-30 20:20:49'),
(798, 51, NULL, NULL, NULL, 'storage/images/productos/MP201001_3.png', 1, 1, '2025-05-30 20:20:49', '2025-05-30 20:20:49'),
(799, 51, NULL, NULL, NULL, 'storage/images/productos/MP201001_4.png', 1, 1, '2025-05-30 20:20:49', '2025-05-30 20:20:49'),
(800, 51, NULL, NULL, NULL, 'storage/images/productos/MP201001_5.png', 1, 1, '2025-05-30 20:20:49', '2025-05-30 20:20:49'),
(801, 51, NULL, NULL, NULL, 'storage/images/productos/MP201001_6.png', 1, 1, '2025-05-30 20:20:49', '2025-05-30 20:20:49'),
(802, 51, NULL, NULL, NULL, 'storage/images/productos/MP201001_7.png', 1, 1, '2025-05-30 20:20:49', '2025-05-30 20:20:49'),
(803, 51, NULL, NULL, NULL, 'storage/images/productos/MP201001_8.png', 1, 1, '2025-05-30 20:20:49', '2025-05-30 20:20:49'),
(804, 51, NULL, NULL, NULL, 'storage/images/productos/MP201001_9.png', 1, 1, '2025-05-30 20:20:49', '2025-05-30 20:20:49'),
(809, 55, NULL, NULL, NULL, 'storage/images/galery/9283797e-bda8-4c9b-b093-3fa53ccaa647.png', 1, 1, '2025-06-09 18:15:44', '2025-06-09 18:15:44'),
(810, 55, NULL, NULL, NULL, 'storage/images/galery/8aebc903-e4cb-470f-8a31-60f79d74d16c.png', 1, 1, '2025-06-09 18:15:44', '2025-06-09 18:15:44'),
(811, 55, NULL, NULL, NULL, 'storage/images/galery/c442ecf7-0221-4119-bd39-ab528a5d75ba.png', 1, 1, '2025-06-09 18:15:44', '2025-06-09 18:15:44'),
(812, 55, NULL, NULL, NULL, 'storage/images/galery/79b590d9-de25-4d7e-af65-d00efec6b45b.png', 1, 1, '2025-06-09 18:15:44', '2025-06-09 18:15:44'),
(821, 56, NULL, NULL, NULL, 'storage/images/galery/5f2e9a3a-32dc-43d5-b1b1-8278e44bb655.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(822, 56, NULL, NULL, NULL, 'storage/images/galery/d4786412-d772-42f8-b9e4-fa9b5a6b840f.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(823, 56, NULL, NULL, NULL, 'storage/images/galery/a10ee43d-dd9c-4c67-80ec-59fdaab57bd5.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(824, 56, NULL, NULL, NULL, 'storage/images/galery/028eacf5-2730-40cc-ad86-02cb5a940e2a.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(825, 56, NULL, NULL, NULL, 'storage/images/galery/d939d25d-6e73-41c4-8263-2a8691ae5078.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(826, 56, NULL, NULL, NULL, 'storage/images/galery/76d7d0a3-0b06-4e29-8858-05939335c02f.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(827, 56, NULL, NULL, NULL, 'storage/images/galery/1bae97ff-41b7-4f55-92ea-9daa10f00d7b.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(828, 56, NULL, NULL, NULL, 'storage/images/galery/b7113501-cbb1-4c1f-ab2f-5a8462fc98a8.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(829, 56, NULL, NULL, NULL, 'storage/images/galery/495d48a8-fa5c-46d7-8d9f-ef5a915cc793.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(830, 56, NULL, NULL, NULL, 'storage/images/galery/57253d33-662a-49e9-939d-4ccf5e04eff7.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(831, 56, NULL, NULL, NULL, 'storage/images/galery/85dab262-4243-4c22-8a2c-246888c80f9b.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(832, 56, NULL, NULL, NULL, 'storage/images/galery/e73fc429-bbdc-429f-8d38-d5e624592527.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(833, 56, NULL, NULL, NULL, 'storage/images/galery/7cb7e780-f361-4bb8-bb50-68b84dbd4ed2.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(834, 56, NULL, NULL, NULL, 'storage/images/galery/42d13467-42b6-4246-bd32-ead9118fca64.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(835, 56, NULL, NULL, NULL, 'storage/images/galery/b0345874-623d-4487-a4b3-8d8742e9d6e3.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(836, 56, NULL, NULL, NULL, 'storage/images/galery/99b74d14-826d-4600-a43a-cb0d9456af1c.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(837, 56, NULL, NULL, NULL, 'storage/images/galery/04639c43-cae4-4ce4-b353-6d7b774789f5.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(838, 56, NULL, NULL, NULL, 'storage/images/galery/75f89bd9-0315-4878-9048-72a0f60fd0f8.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(839, 56, NULL, NULL, NULL, 'storage/images/galery/0db4d118-5578-41b7-98d9-58c68a8c7f27.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(840, 56, NULL, NULL, NULL, 'storage/images/galery/6234e5aa-e245-4be5-bcc6-a37f5208e9fd.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(841, 56, NULL, NULL, NULL, 'storage/images/galery/f9c484f8-4a3a-4678-9bf7-653762f0e286.png', 1, 1, '2025-06-30 17:35:53', '2025-06-30 17:35:53'),
(863, 58, NULL, NULL, NULL, 'storage/images/galery/603ff04e-e9a2-41dc-9fad-4d29fb0b006f.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(864, 58, NULL, NULL, NULL, 'storage/images/galery/b5ba4650-66a7-4b8e-978f-9df7d6972e71.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(865, 58, NULL, NULL, NULL, 'storage/images/galery/777a140a-6a5a-474b-9567-a564c3abff9a.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(866, 58, NULL, NULL, NULL, 'storage/images/galery/82880dd5-d48d-4f71-8f8a-8fd609fd413e.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(867, 58, NULL, NULL, NULL, 'storage/images/galery/e3f5e177-0ce9-446f-a050-a2f12fb7b764.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(868, 58, NULL, NULL, NULL, 'storage/images/galery/93468e7b-5bec-4c94-bfb5-bc5e5645d85d.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(869, 58, NULL, NULL, NULL, 'storage/images/galery/a3bade3a-89c2-47b3-a55a-f3a8fc6c00cf.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(870, 58, NULL, NULL, NULL, 'storage/images/galery/3509de44-362f-4dc8-8e15-8093138a784d.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(871, 58, NULL, NULL, NULL, 'storage/images/galery/778dfcee-2f2c-4ed8-ae5b-07ea219c5e34.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(872, 58, NULL, NULL, NULL, 'storage/images/galery/f0341e1d-994a-4ed7-ab80-1c612cdb4cec.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(873, 58, NULL, NULL, NULL, 'storage/images/galery/8edfa4c3-6861-45c0-873b-a97184ca5784.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(874, 58, NULL, NULL, NULL, 'storage/images/galery/6f2a8cdf-1622-4fef-b9d7-a7c56046d14f.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(875, 58, NULL, NULL, NULL, 'storage/images/galery/a5d7fd1f-5245-4ea5-b554-8be00025becc.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(876, 58, NULL, NULL, NULL, 'storage/images/galery/ca729443-b2b3-425a-ad66-d5ef06eac9e7.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(877, 58, NULL, NULL, NULL, 'storage/images/galery/f3470e40-63f7-47d4-9655-422ad1f88f08.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(878, 58, NULL, NULL, NULL, 'storage/images/galery/37c77a4e-f012-420c-8b79-60485d462e92.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(879, 58, NULL, NULL, NULL, 'storage/images/galery/3c55eeec-ae2a-4af9-8542-a4399a511bca.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(880, 58, NULL, NULL, NULL, 'storage/images/galery/3be19ef4-3d9c-4c77-a4ac-d452f3746abb.png', 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17'),
(881, 59, NULL, NULL, NULL, 'storage/images/galery/c00a3df3-f7d3-4660-ba9d-768f23861960.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(882, 59, NULL, NULL, NULL, 'storage/images/galery/f6163f66-373f-4a15-a1d0-53c5be2f92ae.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(883, 59, NULL, NULL, NULL, 'storage/images/galery/4fbca341-c510-4ea5-8437-0fa666358070.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(884, 59, NULL, NULL, NULL, 'storage/images/galery/c81c1deb-b335-4745-bd4c-552f2b71add8.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(885, 59, NULL, NULL, NULL, 'storage/images/galery/5505a02f-2413-4488-93f1-679fee3c727e.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(886, 59, NULL, NULL, NULL, 'storage/images/galery/e2ca41ae-5ea9-47bf-b03c-dcc44597eea9.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(887, 59, NULL, NULL, NULL, 'storage/images/galery/7af86486-9c68-4cad-a501-7f2663487592.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(888, 59, NULL, NULL, NULL, 'storage/images/galery/b05f7a3e-7867-4c80-a71a-bcdf6a55ccf0.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(889, 59, NULL, NULL, NULL, 'storage/images/galery/93e14fc7-c5e5-4dff-8235-c4ab1958b17f.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(890, 59, NULL, NULL, NULL, 'storage/images/galery/bf77b55e-278b-4ab6-b204-8015c5b2eec6.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(891, 59, NULL, NULL, NULL, 'storage/images/galery/651cb2f5-175f-46ce-8d11-cf43a5ac8a8e.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(892, 59, NULL, NULL, NULL, 'storage/images/galery/63b1bce3-0893-4b98-b74c-375921d486d9.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(893, 59, NULL, NULL, NULL, 'storage/images/galery/d2e214ec-51ac-4521-9339-fcf27585cd58.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(894, 59, NULL, NULL, NULL, 'storage/images/galery/05cf45b7-5fa4-4e97-8601-690af7e739ee.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(895, 59, NULL, NULL, NULL, 'storage/images/galery/8206d62d-4842-4ba8-a82e-90e26d9241f2.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(896, 59, NULL, NULL, NULL, 'storage/images/galery/03034d0c-6b94-4471-a0a8-1b759db5205f.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(897, 59, NULL, NULL, NULL, 'storage/images/galery/7075005f-50c0-4875-b720-800565effa5f.png', 1, 1, '2025-06-30 18:10:06', '2025-06-30 18:10:06'),
(898, 60, NULL, NULL, NULL, 'storage/images/galery/f2fe2bdc-ef75-4b05-a8d0-654fa5c6bb27.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(899, 60, NULL, NULL, NULL, 'storage/images/galery/cd4365ac-41c0-4eee-a821-b02396e7554b.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(900, 60, NULL, NULL, NULL, 'storage/images/galery/d36641df-7d8c-474d-94ab-87ef19c7420a.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(901, 60, NULL, NULL, NULL, 'storage/images/galery/c4024783-dd37-4d51-b0ec-ad1e2ac4ed17.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(902, 60, NULL, NULL, NULL, 'storage/images/galery/2c27107b-0abb-4ce3-b205-5cad47371770.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(903, 60, NULL, NULL, NULL, 'storage/images/galery/646ed452-4f04-4673-bcb2-86fb363ed69e.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(904, 60, NULL, NULL, NULL, 'storage/images/galery/a86a33e8-bf27-48be-9ba6-7dc27827b148.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(905, 60, NULL, NULL, NULL, 'storage/images/galery/06eed4c8-739a-4665-aef4-f82861d15032.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(906, 60, NULL, NULL, NULL, 'storage/images/galery/8390dfc5-a0e2-4b01-a7a1-ae749fcd5e1a.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(907, 60, NULL, NULL, NULL, 'storage/images/galery/004e9f6e-9b89-48a2-bcb0-2e2d37a8b540.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(908, 60, NULL, NULL, NULL, 'storage/images/galery/8521be8b-cfcd-434c-9915-200c130ac802.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(909, 60, NULL, NULL, NULL, 'storage/images/galery/a45e4a3e-9f16-4158-92c8-0e117362c101.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(910, 60, NULL, NULL, NULL, 'storage/images/galery/87f70af5-b125-4557-a778-7fb9d6168388.png', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41'),
(911, 61, NULL, NULL, NULL, 'storage/images/galery/eae9fc94-2279-4390-a411-740205071fc0.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(912, 61, NULL, NULL, NULL, 'storage/images/galery/970cf333-69e0-47eb-a762-f53d0eea0570.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(913, 61, NULL, NULL, NULL, 'storage/images/galery/b06a070e-43a3-417c-b959-106db029f5bd.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(914, 61, NULL, NULL, NULL, 'storage/images/galery/541761d2-488e-40b9-95f3-98706a6d897a.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(915, 61, NULL, NULL, NULL, 'storage/images/galery/dee8c2d5-4544-4b66-8c37-1541e410888c.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(916, 61, NULL, NULL, NULL, 'storage/images/galery/eb434f18-c771-4f4b-a1f9-ba4af953f4ab.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(917, 61, NULL, NULL, NULL, 'storage/images/galery/e4d190f2-74d3-4963-98cb-45c5dbb66410.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(918, 61, NULL, NULL, NULL, 'storage/images/galery/ebcbfd8a-5e35-44da-a024-a4cceb6cd5d5.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(919, 61, NULL, NULL, NULL, 'storage/images/galery/893262bf-d4e4-49eb-9412-1fd6d0708ef0.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(920, 61, NULL, NULL, NULL, 'storage/images/galery/9eec7eac-8c68-4456-bc0d-a3a0ab9745e7.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(921, 61, NULL, NULL, NULL, 'storage/images/galery/368e2057-5f49-4bba-ae33-c0a756e61e0a.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(922, 61, NULL, NULL, NULL, 'storage/images/galery/c71f83f1-83b1-4792-84cf-ca17cd97c232.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(923, 61, NULL, NULL, NULL, 'storage/images/galery/3f5b3320-4477-4627-946a-47d21623669d.png', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00'),
(924, 61, NULL, NULL, NULL, 'storage/images/galery/925fdb6f-3cf5-4fe0-87ea-a5dd91d0f65e.png', 1, 1, '2025-06-30 18:29:01', '2025-06-30 18:29:01'),
(932, 62, NULL, NULL, NULL, 'storage/images/galery/c30e3fc7-aa38-46b6-82ab-8eed0ce87459.png', 1, 1, '2025-06-30 18:50:10', '2025-06-30 18:50:10'),
(933, 62, NULL, NULL, NULL, 'storage/images/galery/33c05326-897b-41fd-8929-6d61825cf43f.png', 1, 1, '2025-06-30 18:50:10', '2025-06-30 18:50:10'),
(934, 62, NULL, NULL, NULL, 'storage/images/galery/eefe96db-0340-4791-92c7-397174ec9fbe.png', 1, 1, '2025-06-30 18:50:10', '2025-06-30 18:50:10'),
(935, 62, NULL, NULL, NULL, 'storage/images/galery/c1132343-f431-4857-bdc0-44d820e3ed60.png', 1, 1, '2025-06-30 18:50:10', '2025-06-30 18:50:10'),
(936, 62, NULL, NULL, NULL, 'storage/images/galery/edcb35d0-12b5-4889-8ba4-825b7c0e57fb.png', 1, 1, '2025-06-30 18:50:10', '2025-06-30 18:50:10'),
(937, 62, NULL, NULL, NULL, 'storage/images/galery/266e2216-f45a-4ebc-838d-9eb55fa333c4.png', 1, 1, '2025-06-30 18:50:10', '2025-06-30 18:50:10'),
(938, 62, NULL, NULL, NULL, 'storage/images/galery/03333526-a477-447f-b897-21fbc7cecdea.png', 1, 1, '2025-06-30 18:50:10', '2025-06-30 18:50:10'),
(939, 63, NULL, NULL, NULL, 'storage/images/galery/c69bc6fa-ed31-4959-9287-d525e3726931.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(940, 63, NULL, NULL, NULL, 'storage/images/galery/93232f4e-ece4-40d7-86bb-3fc18419491e.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(941, 63, NULL, NULL, NULL, 'storage/images/galery/d8d0526b-3859-4758-9b01-b0454a677164.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(942, 63, NULL, NULL, NULL, 'storage/images/galery/7bdb218a-0345-475f-9fcf-09072457a827.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(943, 63, NULL, NULL, NULL, 'storage/images/galery/30aa652d-add1-4f6d-83b5-74f5e38b41dd.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(944, 63, NULL, NULL, NULL, 'storage/images/galery/089c68ef-971c-438b-a3a7-81c04742f391.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(945, 63, NULL, NULL, NULL, 'storage/images/galery/0558291a-0090-4587-8fb2-77512dcf29a0.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(946, 63, NULL, NULL, NULL, 'storage/images/galery/41be3313-6c53-4784-be47-a36cf60c44ce.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(947, 63, NULL, NULL, NULL, 'storage/images/galery/829e9f01-1c06-41bf-a961-9768e41bf61c.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(948, 63, NULL, NULL, NULL, 'storage/images/galery/7d5e2451-2324-4c1d-a747-95e5770e1e78.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(949, 63, NULL, NULL, NULL, 'storage/images/galery/32596dd5-0089-40db-941c-1e54501a6b69.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(950, 63, NULL, NULL, NULL, 'storage/images/galery/cd95a093-ed29-4a07-bd22-ccb4748ae310.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(951, 63, NULL, NULL, NULL, 'storage/images/galery/bcdb70e4-df2c-4edd-92d9-9fef99f0ea4d.png', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49'),
(952, 64, NULL, NULL, NULL, 'storage/images/galery/b53a1128-2237-476e-b35f-4ff04d3089b7.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(953, 64, NULL, NULL, NULL, 'storage/images/galery/557d488e-2701-40ca-ab6b-358900f00a13.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(954, 64, NULL, NULL, NULL, 'storage/images/galery/69dc86cb-007f-43bb-aa54-3455a65c0e28.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(955, 64, NULL, NULL, NULL, 'storage/images/galery/122a9170-ebcc-4671-a38c-413731b5d885.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(956, 64, NULL, NULL, NULL, 'storage/images/galery/73a3a4e5-1d46-44d3-8ad0-6287477d0dba.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(957, 64, NULL, NULL, NULL, 'storage/images/galery/af29423d-35a6-479a-b620-8a65a1f0033b.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(958, 64, NULL, NULL, NULL, 'storage/images/galery/b4f2e6e3-e427-4c64-95ee-4b317d630032.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(959, 64, NULL, NULL, NULL, 'storage/images/galery/e03e03d5-7a59-4657-a8eb-74326e2efc87.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(960, 64, NULL, NULL, NULL, 'storage/images/galery/965bf989-4163-40e0-ae3a-7fdb95c3086f.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(961, 64, NULL, NULL, NULL, 'storage/images/galery/bd76090b-a172-498f-b1ae-814f49fbfd82.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(962, 64, NULL, NULL, NULL, 'storage/images/galery/df10a744-da19-4905-aa09-bc7b9df8adea.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(963, 64, NULL, NULL, NULL, 'storage/images/galery/96fa0b97-7f2e-4f65-ac59-6a5c39072b39.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(964, 64, NULL, NULL, NULL, 'storage/images/galery/3faa69c6-c3cf-4fb0-a722-4f9e311ffc9c.png', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13'),
(965, 65, NULL, NULL, NULL, 'storage/images/galery/ae766861-1214-4d62-b7a7-30f6f783bad4.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(966, 65, NULL, NULL, NULL, 'storage/images/galery/f7780f81-ba6b-4594-98a4-54d854e789c4.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(967, 65, NULL, NULL, NULL, 'storage/images/galery/25c9f7e5-d790-4d40-a299-3c96eaef8c44.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(968, 65, NULL, NULL, NULL, 'storage/images/galery/bd6bc123-fd5f-4556-8579-fea330fe162f.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(969, 65, NULL, NULL, NULL, 'storage/images/galery/7e73ad0f-2597-4516-b849-2fc89db82ec9.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(970, 65, NULL, NULL, NULL, 'storage/images/galery/84ef8ccf-6f00-494c-a30e-3ffec614ff33.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(971, 65, NULL, NULL, NULL, 'storage/images/galery/80462ee5-ba15-468c-9416-ac9dc284623b.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(972, 65, NULL, NULL, NULL, 'storage/images/galery/7caa8b26-9df4-47f7-830c-e25d1173e00f.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(973, 65, NULL, NULL, NULL, 'storage/images/galery/0e6238ca-9111-447b-8af4-53ce19ef3889.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(974, 65, NULL, NULL, NULL, 'storage/images/galery/1b8ea935-4ca6-4179-8db5-ae7ce28e1d0e.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(975, 65, NULL, NULL, NULL, 'storage/images/galery/146bbbc6-cba7-420b-9e3d-994d13a3cd25.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(976, 65, NULL, NULL, NULL, 'storage/images/galery/03ed6f46-cff3-43b9-8b55-414abe9626f1.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(977, 65, NULL, NULL, NULL, 'storage/images/galery/413474d5-c4d8-4d50-9ff0-16a93b8b105d.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(978, 65, NULL, NULL, NULL, 'storage/images/galery/de9939d6-77e5-4e6b-91cd-f08438fab301.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(979, 65, NULL, NULL, NULL, 'storage/images/galery/5446803b-39e2-43da-bec7-ce9ebe64f4cf.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(980, 65, NULL, NULL, NULL, 'storage/images/galery/e41155cd-1cf2-47a3-97b3-dde5f2a1f703.png', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33'),
(1011, 66, NULL, NULL, NULL, 'storage/images/galery/0219af88-de2f-4488-9b37-e9fb4e7c6381.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1012, 66, NULL, NULL, NULL, 'storage/images/galery/52e2ee24-9596-4bb1-a725-6119439f47f0.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1013, 66, NULL, NULL, NULL, 'storage/images/galery/4893cf9f-c814-44dd-b56d-08ade5ca8954.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1014, 66, NULL, NULL, NULL, 'storage/images/galery/73a7d170-13ad-4ac1-afaa-e077628373d2.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1015, 66, NULL, NULL, NULL, 'storage/images/galery/749efd84-b207-440f-8f3e-342ca27ef35c.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1016, 66, NULL, NULL, NULL, 'storage/images/galery/b446ebb9-c6e4-4b1f-89d9-fb7bbc1e7b35.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1017, 66, NULL, NULL, NULL, 'storage/images/galery/a7b25a2b-1602-4509-bb8c-7ade88d6eacd.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1018, 66, NULL, NULL, NULL, 'storage/images/galery/38cadc47-18f3-49a0-aee2-459b02006e6f.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1019, 66, NULL, NULL, NULL, 'storage/images/galery/2bfaff22-06db-465a-aa67-56ead3058c92.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1020, 66, NULL, NULL, NULL, 'storage/images/galery/4e0c798e-8be7-4900-8aaf-c49741aea07f.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1021, 66, NULL, NULL, NULL, 'storage/images/galery/8a199881-2ebf-45eb-bcab-af8e16072388.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1022, 66, NULL, NULL, NULL, 'storage/images/galery/4ec3a188-df67-4e2a-8910-ae4685060c44.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1023, 66, NULL, NULL, NULL, 'storage/images/galery/5a227d84-8bd0-485a-9bfc-a2d6c1aaf228.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1024, 66, NULL, NULL, NULL, 'storage/images/galery/d658019e-ec4a-49fb-bbc0-e136b14e186a.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1025, 66, NULL, NULL, NULL, 'storage/images/galery/f86e06c3-a06d-481b-b4f9-cc7f5318c70e.png', 1, 1, '2025-06-30 19:48:27', '2025-06-30 19:48:27'),
(1026, 67, NULL, NULL, NULL, 'storage/images/galery/4a2c9569-b46c-4394-9b17-4328033db42a.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1027, 67, NULL, NULL, NULL, 'storage/images/galery/a7092a3d-6d0c-46a4-9259-98491134afe3.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1028, 67, NULL, NULL, NULL, 'storage/images/galery/e60d8595-43c5-42fa-a5d1-100a80bb24a4.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1029, 67, NULL, NULL, NULL, 'storage/images/galery/a6918d2d-f930-410e-9fb3-bcdd4ae097bd.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1030, 67, NULL, NULL, NULL, 'storage/images/galery/f903af10-2c66-43aa-acdd-c0e4fde8230f.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1031, 67, NULL, NULL, NULL, 'storage/images/galery/0ec36b24-80f5-472a-b575-be1a83f44e91.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1032, 67, NULL, NULL, NULL, 'storage/images/galery/60bb839f-57c8-4048-ab7b-ce020a4ea2f0.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1033, 67, NULL, NULL, NULL, 'storage/images/galery/702883bb-770e-491f-b4af-5c198100c9c8.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1034, 67, NULL, NULL, NULL, 'storage/images/galery/d4118675-80b2-4d32-95d1-e558dcaa0b95.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1035, 67, NULL, NULL, NULL, 'storage/images/galery/2ff9ed8b-e7cf-4175-99b0-a8d21c637a28.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1036, 67, NULL, NULL, NULL, 'storage/images/galery/c0678339-7b4b-4e49-b729-2f60a25c2f7b.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1037, 67, NULL, NULL, NULL, 'storage/images/galery/3cb3cfe4-b073-4f66-83cf-858bd78193ee.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1038, 67, NULL, NULL, NULL, 'storage/images/galery/1ef25247-5fab-413d-9a09-db86298ba0c7.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1039, 67, NULL, NULL, NULL, 'storage/images/galery/f747d05d-92c5-4a51-b124-7ce145319b21.png', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09'),
(1040, 68, NULL, NULL, NULL, 'storage/images/galery/1f7c7668-a32a-4aa4-862e-9ccc156459c4.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1041, 68, NULL, NULL, NULL, 'storage/images/galery/7e8f197e-97ea-4b22-bf81-8d3dc4dc28c1.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1042, 68, NULL, NULL, NULL, 'storage/images/galery/7a5a7982-902d-4fbe-aa10-eb31e76aa403.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1043, 68, NULL, NULL, NULL, 'storage/images/galery/8b092ba9-fd1d-4930-b019-960a1c7ac3a4.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1044, 68, NULL, NULL, NULL, 'storage/images/galery/6cf850fa-9704-453d-855f-cb092a415ced.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1045, 68, NULL, NULL, NULL, 'storage/images/galery/c2f14e34-4be2-4300-927f-7ce200c28d1b.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1046, 68, NULL, NULL, NULL, 'storage/images/galery/ce15578b-14ea-4689-915e-d31463ce5d45.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1047, 68, NULL, NULL, NULL, 'storage/images/galery/72f08bb1-982d-4ab9-97f1-a7490a31d3e2.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1048, 68, NULL, NULL, NULL, 'storage/images/galery/e09d4e8d-51b8-4ae2-840a-46e2927de019.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1049, 68, NULL, NULL, NULL, 'storage/images/galery/c4e65d13-b9d3-4fc0-924e-b46565366f88.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1050, 68, NULL, NULL, NULL, 'storage/images/galery/03769331-436a-4c7a-9208-a3d645f5712a.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1051, 68, NULL, NULL, NULL, 'storage/images/galery/10cd4015-c633-42d7-bcbe-13545e0609df.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1052, 68, NULL, NULL, NULL, 'storage/images/galery/d6e4c0d3-6a97-4259-b8c0-e16dd02a1d02.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1053, 68, NULL, NULL, NULL, 'storage/images/galery/fa19825a-d992-44b3-9430-78fbcfe095c3.png', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48'),
(1054, 69, NULL, NULL, NULL, 'storage/images/galery/1a7c1264-3d67-4bc9-8e95-02f3cb5b116e.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1055, 69, NULL, NULL, NULL, 'storage/images/galery/f63e3d13-b5dc-4c5b-9160-7602937f7058.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1056, 69, NULL, NULL, NULL, 'storage/images/galery/e371b249-4a38-4be2-8833-a465d1252327.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1057, 69, NULL, NULL, NULL, 'storage/images/galery/7d9514c5-aa9f-48a6-a1a9-4b58e1d29464.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1058, 69, NULL, NULL, NULL, 'storage/images/galery/8bd9a99e-7178-4299-b238-9c6aa031cefe.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1059, 69, NULL, NULL, NULL, 'storage/images/galery/c6b7c73d-e2e1-4e2d-bf4b-2b272d9aed6b.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1060, 69, NULL, NULL, NULL, 'storage/images/galery/50138e14-7209-45a7-b58e-5fd5ea1b7497.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1061, 69, NULL, NULL, NULL, 'storage/images/galery/b89ff79e-eca8-45e9-ba17-fdbe2c519558.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1062, 69, NULL, NULL, NULL, 'storage/images/galery/ca41378d-3beb-42f5-8bb8-8899f76f8473.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1063, 69, NULL, NULL, NULL, 'storage/images/galery/4ea5dad1-dfba-4cf0-a3be-16b0c1c296d5.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1064, 69, NULL, NULL, NULL, 'storage/images/galery/57708a4c-dde3-44a4-a110-7db39949ed3d.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1065, 69, NULL, NULL, NULL, 'storage/images/galery/3c8ad86f-c141-4aef-89e3-a1f5d619cd6c.png', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39'),
(1066, 70, NULL, NULL, NULL, 'storage/images/galery/7aeebfb0-6218-439f-a007-80c927510ba6.png', 1, 1, '2025-06-30 20:11:44', '2025-06-30 20:11:44');
INSERT INTO `galeries` (`id`, `product_id`, `valor`, `descripcion`, `color`, `imagen`, `visible`, `status`, `created_at`, `updated_at`) VALUES
(1067, 70, NULL, NULL, NULL, 'storage/images/galery/63725ee2-42cd-4d92-a63d-c8d6a1b07eab.png', 1, 1, '2025-06-30 20:11:44', '2025-06-30 20:11:44'),
(1068, 70, NULL, NULL, NULL, 'storage/images/galery/a28bb833-3e6e-4dc1-ac62-5281f2558036.png', 1, 1, '2025-06-30 20:11:44', '2025-06-30 20:11:44'),
(1069, 70, NULL, NULL, NULL, 'storage/images/galery/31a051ae-d473-41cd-b976-3cc76abebcd1.png', 1, 1, '2025-06-30 20:11:44', '2025-06-30 20:11:44'),
(1070, 70, NULL, NULL, NULL, 'storage/images/galery/17ae1031-6e0f-46f3-876d-0ac8ba6e0cb2.png', 1, 1, '2025-06-30 20:11:44', '2025-06-30 20:11:44'),
(1071, 70, NULL, NULL, NULL, 'storage/images/galery/3b96c50c-e029-408a-bce0-0bc1b98d7d59.png', 1, 1, '2025-06-30 20:11:44', '2025-06-30 20:11:44'),
(1072, 70, NULL, NULL, NULL, 'storage/images/galery/27e8c206-11ec-4d53-9408-c9fa86d0b8ed.png', 1, 1, '2025-06-30 20:11:44', '2025-06-30 20:11:44'),
(1073, 70, NULL, NULL, NULL, 'storage/images/galery/5c3851ac-2924-489d-b3bb-129d395cf604.png', 1, 1, '2025-06-30 20:11:44', '2025-06-30 20:11:44'),
(1074, 70, NULL, NULL, NULL, 'storage/images/galery/b0854848-8fac-425c-b9ae-d06a21bddffb.png', 1, 1, '2025-06-30 20:11:44', '2025-06-30 20:11:44'),
(1075, 70, NULL, NULL, NULL, 'storage/images/galery/9e99de26-cc25-4817-be28-d7a7dc27915a.png', 1, 1, '2025-06-30 20:11:44', '2025-06-30 20:11:44'),
(1076, 71, NULL, NULL, NULL, 'storage/images/galery/b303fb97-7073-411d-a570-414034b7b04c.png', 1, 1, '2025-06-30 20:21:40', '2025-06-30 20:21:40'),
(1077, 71, NULL, NULL, NULL, 'storage/images/galery/c795667f-2b7a-484c-9bb7-6bca9b28d5a9.png', 1, 1, '2025-06-30 20:21:40', '2025-06-30 20:21:40'),
(1078, 71, NULL, NULL, NULL, 'storage/images/galery/ee3f940b-d8d8-42eb-ba1b-ba9e3821b4e6.png', 1, 1, '2025-06-30 20:21:40', '2025-06-30 20:21:40'),
(1079, 71, NULL, NULL, NULL, 'storage/images/galery/aac143de-ef6a-4a74-8ce6-f7ab89a3ec61.png', 1, 1, '2025-06-30 20:21:40', '2025-06-30 20:21:40'),
(1080, 71, NULL, NULL, NULL, 'storage/images/galery/3f50ff82-0fb6-40e2-95da-763bab931cd0.png', 1, 1, '2025-06-30 20:21:40', '2025-06-30 20:21:40'),
(1081, 71, NULL, NULL, NULL, 'storage/images/galery/34141751-f6b1-49b6-9a79-9294389eaf51.png', 1, 1, '2025-06-30 20:21:40', '2025-06-30 20:21:40'),
(1082, 71, NULL, NULL, NULL, 'storage/images/galery/7cb52f73-3d17-4283-a5bd-8c0f95554f3c.png', 1, 1, '2025-06-30 20:21:40', '2025-06-30 20:21:40'),
(1083, 71, NULL, NULL, NULL, 'storage/images/galery/6b489d98-1e1a-4979-875f-184ef753df92.png', 1, 1, '2025-06-30 20:21:40', '2025-06-30 20:21:40'),
(1084, 72, NULL, NULL, NULL, 'storage/images/galery/9eba82f9-d5fc-4a7f-add1-dde47e4bdd6d.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1085, 72, NULL, NULL, NULL, 'storage/images/galery/108ec020-64b8-407b-b7e3-20e9adcfdafb.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1086, 72, NULL, NULL, NULL, 'storage/images/galery/496c71df-76e2-4e46-a477-10cc8bdc1e68.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1087, 72, NULL, NULL, NULL, 'storage/images/galery/52650af3-eb26-43cd-a459-aba416983b45.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1088, 72, NULL, NULL, NULL, 'storage/images/galery/f680d5db-a7b1-4f54-a5a5-518cbe58482c.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1089, 72, NULL, NULL, NULL, 'storage/images/galery/e6c11eb6-f884-4c69-8882-c632364d4016.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1090, 72, NULL, NULL, NULL, 'storage/images/galery/edf51397-5734-425c-9b2d-e77998512a2d.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1091, 72, NULL, NULL, NULL, 'storage/images/galery/86294900-5e4a-4ef4-ac31-945331f96d51.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1092, 72, NULL, NULL, NULL, 'storage/images/galery/0157cf3a-8ded-43d8-ae5f-577f97447eee.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1093, 72, NULL, NULL, NULL, 'storage/images/galery/c775edb5-12b3-4d4c-9479-a458c54a09ca.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1094, 72, NULL, NULL, NULL, 'storage/images/galery/15c238b0-9a1c-47b2-9d58-fc6fe8fb1ff6.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1095, 72, NULL, NULL, NULL, 'storage/images/galery/017e355e-84c1-43ac-89d2-aabe2d38d31c.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1096, 72, NULL, NULL, NULL, 'storage/images/galery/fea3633a-e51b-48ad-98be-68a81000411b.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1097, 72, NULL, NULL, NULL, 'storage/images/galery/a1435144-f2b7-49e6-b40e-61ad941b2042.png', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35'),
(1098, 73, NULL, NULL, NULL, 'storage/images/galery/0feba0f2-b228-44e9-a9b2-3ae094a5fb12.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1099, 73, NULL, NULL, NULL, 'storage/images/galery/354e40dc-654c-416b-8051-8d1fec28761c.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1100, 73, NULL, NULL, NULL, 'storage/images/galery/8b409fb9-df9f-4f20-ab8d-2b96e6d46e27.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1101, 73, NULL, NULL, NULL, 'storage/images/galery/ea4ecae6-05c6-43f7-96f0-d1516fffd6ed.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1102, 73, NULL, NULL, NULL, 'storage/images/galery/d3db8292-04f9-4d2f-8c04-b6a25b506fbe.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1103, 73, NULL, NULL, NULL, 'storage/images/galery/ed90b971-40f2-43f8-9654-001470f968e1.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1104, 73, NULL, NULL, NULL, 'storage/images/galery/a6f13627-82d0-485a-a89e-86dccee6486c.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1105, 73, NULL, NULL, NULL, 'storage/images/galery/51758c0b-6513-4783-9897-e49181707723.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1106, 73, NULL, NULL, NULL, 'storage/images/galery/ead36a98-d2c6-4e8a-be64-984434f55cfa.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1107, 73, NULL, NULL, NULL, 'storage/images/galery/b9a37b1b-34d8-471a-b14f-028996996e8f.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1108, 73, NULL, NULL, NULL, 'storage/images/galery/fa3a3c36-d269-4d9d-8785-8b80f5b0c88c.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1109, 73, NULL, NULL, NULL, 'storage/images/galery/9a912c57-338a-4df3-8802-680f8acc57e3.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1110, 73, NULL, NULL, NULL, 'storage/images/galery/0d5a7a15-ca32-4f1a-a57e-91b908404a79.png', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24'),
(1111, 75, NULL, NULL, NULL, 'storage/images/galery/832ed8f4-f500-4339-8339-8ce1af1d207d.png', 1, 1, '2025-06-30 21:06:23', '2025-06-30 21:06:23'),
(1112, 76, NULL, NULL, NULL, 'storage/images/galery/9432e154-c4a0-4df7-baa5-46c1491f578a.png', 1, 1, '2025-07-01 15:21:24', '2025-07-01 15:21:24'),
(1113, 76, NULL, NULL, NULL, 'storage/images/galery/057d9c0c-d3b0-40aa-bd1a-350dc7546c80.png', 1, 1, '2025-07-01 15:21:24', '2025-07-01 15:21:24'),
(1114, 76, NULL, NULL, NULL, 'storage/images/galery/67f7a554-b527-4b77-9293-3450ec1ce7de.png', 1, 1, '2025-07-01 15:21:24', '2025-07-01 15:21:24'),
(1115, 76, NULL, NULL, NULL, 'storage/images/galery/b670dc3b-81fc-4917-b540-8cabd9eec8ba.png', 1, 1, '2025-07-01 15:21:24', '2025-07-01 15:21:24'),
(1116, 76, NULL, NULL, NULL, 'storage/images/galery/89f9efa4-fdd6-4d32-90f8-81a23a5a6ea6.png', 1, 1, '2025-07-01 15:21:24', '2025-07-01 15:21:24'),
(1117, 76, NULL, NULL, NULL, 'storage/images/galery/e55d7c2e-46ca-4220-9a09-846c8ce07c18.png', 1, 1, '2025-07-01 15:21:25', '2025-07-01 15:21:25'),
(1118, 76, NULL, NULL, NULL, 'storage/images/galery/9b0ec689-bc47-4d8b-b401-11cc726b94a3.png', 1, 1, '2025-07-01 15:21:25', '2025-07-01 15:21:25'),
(1119, 76, NULL, NULL, NULL, 'storage/images/galery/c83ea8bb-2308-4276-9db0-1842be43e406.png', 1, 1, '2025-07-01 15:21:25', '2025-07-01 15:21:25'),
(1120, 76, NULL, NULL, NULL, 'storage/images/galery/58d656da-d3b9-4249-84a4-4618a3274488.png', 1, 1, '2025-07-01 15:21:25', '2025-07-01 15:21:25'),
(1121, 76, NULL, NULL, NULL, 'storage/images/galery/b525d586-aadd-40dd-be7a-750da00f29d1.png', 1, 1, '2025-07-01 15:21:25', '2025-07-01 15:21:25'),
(1122, 77, NULL, NULL, NULL, 'storage/images/galery/6af46ce3-22df-4bd0-8b14-11167a2d9a63.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1123, 77, NULL, NULL, NULL, 'storage/images/galery/c9b8f321-dc24-4824-a44e-c46d3743de3a.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1124, 77, NULL, NULL, NULL, 'storage/images/galery/1f45b405-f641-4e52-b6d3-856166f6cb39.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1125, 77, NULL, NULL, NULL, 'storage/images/galery/77ee1c5a-c7ca-4cc9-98c6-0007c9c0a2d8.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1126, 77, NULL, NULL, NULL, 'storage/images/galery/ac631bd3-c9e6-4483-8dd1-de31ee4383c4.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1127, 77, NULL, NULL, NULL, 'storage/images/galery/85be1f10-f03a-4745-8df9-cf12dba4bd9f.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1128, 77, NULL, NULL, NULL, 'storage/images/galery/299ee0b6-08ed-4bb1-8ffa-81481ed5e056.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1129, 77, NULL, NULL, NULL, 'storage/images/galery/9007c0f1-0d98-4554-8396-509034c70b00.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1130, 77, NULL, NULL, NULL, 'storage/images/galery/240ab3df-43bf-4537-83fa-c5c82cf03a7e.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1131, 77, NULL, NULL, NULL, 'storage/images/galery/ec6a0d6b-33e2-4640-b877-f57891b57513.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1132, 77, NULL, NULL, NULL, 'storage/images/galery/5d261c5a-5d99-45df-b87f-ea20fdf6909a.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1133, 77, NULL, NULL, NULL, 'storage/images/galery/7e001f48-a540-499e-afd1-3b2459d0b42a.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1134, 77, NULL, NULL, NULL, 'storage/images/galery/ad24d616-cef4-4a86-8d37-8cdea5ec40b6.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1135, 77, NULL, NULL, NULL, 'storage/images/galery/e7ce214b-62c5-459e-ae2d-b8223cccc1ba.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1136, 77, NULL, NULL, NULL, 'storage/images/galery/dd69a1be-fdbb-4bde-a597-f0f8fc0d7cb0.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1137, 77, NULL, NULL, NULL, 'storage/images/galery/566211ba-00a0-4e18-9724-1713054922ef.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1138, 77, NULL, NULL, NULL, 'storage/images/galery/d8d1a7a2-8e19-4a84-9174-b0639cbc2ef8.png', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35'),
(1182, 80, NULL, NULL, NULL, 'storage/images/galery/c85635b5-e26e-4733-95a0-a6d9c7becb08.png', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37'),
(1183, 80, NULL, NULL, NULL, 'storage/images/galery/c8c04ad3-f148-4e05-b14a-05ebe3d2ddfd.png', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37'),
(1184, 80, NULL, NULL, NULL, 'storage/images/galery/6e351d22-66fb-4e15-b26a-9ff415045b11.png', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37'),
(1185, 80, NULL, NULL, NULL, 'storage/images/galery/e4e07c9a-3d18-4c05-93e8-4be41ade6e72.png', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37'),
(1186, 80, NULL, NULL, NULL, 'storage/images/galery/4a4ae9c7-614f-481b-9f44-a202d030075a.png', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37'),
(1187, 80, NULL, NULL, NULL, 'storage/images/galery/d50297d1-b302-4a55-b739-57c3f8b62797.png', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37'),
(1188, 80, NULL, NULL, NULL, 'storage/images/galery/d1c33717-27d6-40bf-ad0c-d1b70b172df0.png', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37'),
(1189, 80, NULL, NULL, NULL, 'storage/images/galery/c2a9d54f-0fa0-45e0-8137-bc161377ecbd.png', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37'),
(1190, 80, NULL, NULL, NULL, 'storage/images/galery/c2945832-48af-4fbf-9f20-30b22e1db34e.png', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37'),
(1191, 80, NULL, NULL, NULL, 'storage/images/galery/b9acdd4e-324b-42d2-8cc2-e759d4acf98f.png', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37'),
(1192, 80, NULL, NULL, NULL, 'storage/images/galery/2ee4b9f9-1323-4713-8e5e-f7639f08235b.png', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37'),
(1193, 79, NULL, NULL, NULL, 'storage/images/galery/a41a1bd9-2dc4-4bcf-b62c-2c6c6945e96c.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1194, 79, NULL, NULL, NULL, 'storage/images/galery/27082183-20a7-48b2-aa65-f2943a61c142.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1195, 79, NULL, NULL, NULL, 'storage/images/galery/35dd5957-43f8-42b5-9d87-7307330d2bd1.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1196, 79, NULL, NULL, NULL, 'storage/images/galery/e15cdd6e-795e-465d-9928-1dbe29f10416.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1197, 79, NULL, NULL, NULL, 'storage/images/galery/0a95498b-a500-4a6e-81dd-e4755aeb16ba.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1198, 79, NULL, NULL, NULL, 'storage/images/galery/d9333c1b-dad7-444d-aec9-45e02e45699d.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1199, 79, NULL, NULL, NULL, 'storage/images/galery/51d44d7d-59f0-481a-9345-c86ccf8a7643.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1200, 79, NULL, NULL, NULL, 'storage/images/galery/d75511e1-a0eb-41f7-b22f-90abdd0a3fe2.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1201, 79, NULL, NULL, NULL, 'storage/images/galery/65f870eb-94f4-4aa4-9b6c-88a286371ae3.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1202, 79, NULL, NULL, NULL, 'storage/images/galery/404754e9-a35d-4332-b2ec-7322336dd103.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1203, 79, NULL, NULL, NULL, 'storage/images/galery/b9100d29-e7ca-4d4f-8d7b-724a8da6336a.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1204, 79, NULL, NULL, NULL, 'storage/images/galery/38a55c3f-c390-48c7-b9ed-409125ce6fac.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1205, 79, NULL, NULL, NULL, 'storage/images/galery/bf062202-a687-41fc-ab34-47337aebd30a.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1206, 79, NULL, NULL, NULL, 'storage/images/galery/2a7808a8-a5b9-4462-a709-a7a02d831003.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1207, 79, NULL, NULL, NULL, 'storage/images/galery/e67b6907-c5ee-4067-8c07-202a0cc118af.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1208, 79, NULL, NULL, NULL, 'storage/images/galery/9621ab6d-2de0-45b1-b763-d337a2e0562e.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1209, 79, NULL, NULL, NULL, 'storage/images/galery/c4f5486e-2f5d-4706-94b8-5c70263cfc28.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1210, 79, NULL, NULL, NULL, 'storage/images/galery/3b3db074-9a28-478a-8fa2-fab6c4cc663c.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1211, 79, NULL, NULL, NULL, 'storage/images/galery/28fd7961-cfd0-42c0-8baf-989726ce958e.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1212, 79, NULL, NULL, NULL, 'storage/images/galery/6349f39e-bf61-4a24-8f74-735df7937cfa.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1213, 79, NULL, NULL, NULL, 'storage/images/galery/d22d31d3-9cc6-42e2-98e7-60fece534301.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1214, 79, NULL, NULL, NULL, 'storage/images/galery/170efad9-2946-4209-a0ea-fc5af0b8f96c.png', 1, 1, '2025-07-01 16:18:30', '2025-07-01 16:18:30'),
(1215, 78, NULL, NULL, NULL, 'storage/images/galery/17468764-9610-4985-98a0-ba353882b069.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1216, 78, NULL, NULL, NULL, 'storage/images/galery/f2bc3745-bc87-4a5f-85c1-15e9f1d5cbc2.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1217, 78, NULL, NULL, NULL, 'storage/images/galery/0df6a429-3ecb-4241-910f-c50628a6a9a0.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1218, 78, NULL, NULL, NULL, 'storage/images/galery/87e38a21-ca25-458f-9fbd-d54de270114d.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1219, 78, NULL, NULL, NULL, 'storage/images/galery/b8d4f879-8243-447b-8fe7-df1709bba4c2.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1220, 78, NULL, NULL, NULL, 'storage/images/galery/49b9e5c5-1aa0-4e29-86cc-1e8adfb9b7b1.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1221, 78, NULL, NULL, NULL, 'storage/images/galery/a54c85ed-3b8b-446a-899e-778a7f9e8bf8.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1222, 78, NULL, NULL, NULL, 'storage/images/galery/e9956907-badf-43d3-8e1c-909927e8b1e5.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1223, 78, NULL, NULL, NULL, 'storage/images/galery/2ca659f3-1683-41f5-be57-a5ec236dbd28.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1224, 78, NULL, NULL, NULL, 'storage/images/galery/2da09170-4b1e-4a1f-b8de-4ab70d730e4a.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1225, 78, NULL, NULL, NULL, 'storage/images/galery/c2b0033b-7656-47a8-b041-717eb7a05eb5.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1226, 78, NULL, NULL, NULL, 'storage/images/galery/368cd8c0-4448-44da-8fa7-acdf4852423e.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1227, 78, NULL, NULL, NULL, 'storage/images/galery/057766e9-f0f4-4045-8c33-237cf4ed9ba6.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1228, 78, NULL, NULL, NULL, 'storage/images/galery/7858c81f-b8f2-47be-8444-a9856799d9b4.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1229, 78, NULL, NULL, NULL, 'storage/images/galery/bbb7e29b-038d-4a8b-a65c-967d3a42a65e.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1230, 78, NULL, NULL, NULL, 'storage/images/galery/c873c5e6-c8f9-4ae5-87c1-4f2826071368.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1231, 78, NULL, NULL, NULL, 'storage/images/galery/764297a3-5989-47b0-87e8-400b5277df13.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1232, 78, NULL, NULL, NULL, 'storage/images/galery/80516c98-93e1-4cec-8ed9-fa3caaa90762.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1233, 78, NULL, NULL, NULL, 'storage/images/galery/2cce9df4-9b5f-4808-9f23-a8d1eda10d89.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1234, 78, NULL, NULL, NULL, 'storage/images/galery/d94ee75c-422a-4bc1-883e-f14971af9109.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1235, 78, NULL, NULL, NULL, 'storage/images/galery/fbea3fe2-c301-43c3-b216-e5ebaba7e225.png', 1, 1, '2025-07-01 16:22:45', '2025-07-01 16:22:45'),
(1255, 81, NULL, NULL, NULL, 'storage/images/galery/0a73fe8d-4fa8-458f-a51a-0c891a93d584.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1256, 81, NULL, NULL, NULL, 'storage/images/galery/6a8fdbca-a257-4097-988b-351f34449e05.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1257, 81, NULL, NULL, NULL, 'storage/images/galery/0faa4108-639c-4ee6-a2fa-1ddad041fb47.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1258, 81, NULL, NULL, NULL, 'storage/images/galery/d1da8ffc-8a44-4d5f-b56e-941244a55d11.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1259, 81, NULL, NULL, NULL, 'storage/images/galery/ab5c3e7d-2437-486b-9cf2-47c54deb3712.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1260, 81, NULL, NULL, NULL, 'storage/images/galery/6d4126b9-3047-45ef-8976-dde8bc45ab34.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1261, 81, NULL, NULL, NULL, 'storage/images/galery/f804d11b-e335-4bb1-9329-c1df266de816.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1262, 81, NULL, NULL, NULL, 'storage/images/galery/b75be864-5cd6-4792-ad4c-84d9544b63d2.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1263, 81, NULL, NULL, NULL, 'storage/images/galery/616fdc31-f89a-45b1-8559-d09d988db7b2.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1264, 81, NULL, NULL, NULL, 'storage/images/galery/6d98b3db-c8e2-4dad-a160-0628e4901d4d.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1265, 81, NULL, NULL, NULL, 'storage/images/galery/d640972f-3781-499a-a246-d89d9c2721c2.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1266, 81, NULL, NULL, NULL, 'storage/images/galery/a906ebfd-0fc6-4be6-affe-f378549330ec.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1267, 81, NULL, NULL, NULL, 'storage/images/galery/f5d652a5-7603-4c14-ac75-043ac0fb2365.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1268, 81, NULL, NULL, NULL, 'storage/images/galery/de984b0b-a254-42f7-b59a-afd1252ffe08.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1269, 81, NULL, NULL, NULL, 'storage/images/galery/93d19c41-9ac4-4a9a-b3b4-8ae6d2472ac8.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1270, 81, NULL, NULL, NULL, 'storage/images/galery/0d1530de-0a3f-4b6a-9433-cdbb988f4850.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1271, 81, NULL, NULL, NULL, 'storage/images/galery/e649d18d-6b1b-4b4c-b7ff-3fc4f03f6ae3.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1272, 81, NULL, NULL, NULL, 'storage/images/galery/3b598d43-c347-4840-96e4-1451ee78b47d.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1273, 81, NULL, NULL, NULL, 'storage/images/galery/1b708a09-418a-4cc9-9c71-9d32d84e6e97.png', 1, 1, '2025-07-01 16:32:24', '2025-07-01 16:32:24'),
(1274, 82, NULL, NULL, NULL, 'storage/images/galery/6e32aabd-3a75-4dd2-b69a-e7f143cebe10.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1275, 82, NULL, NULL, NULL, 'storage/images/galery/40d26810-befb-4e83-9bdd-2a0caf17dcb2.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1276, 82, NULL, NULL, NULL, 'storage/images/galery/164b1d5b-337f-443a-9731-b475c55462d6.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1277, 82, NULL, NULL, NULL, 'storage/images/galery/3a146a63-9336-4fe2-bf75-95fa09bcf4e1.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1278, 82, NULL, NULL, NULL, 'storage/images/galery/379e9324-f879-4093-8a40-bdfaf2b24f58.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1279, 82, NULL, NULL, NULL, 'storage/images/galery/a8e82feb-49fc-4c99-b844-be70abf43c5f.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1280, 82, NULL, NULL, NULL, 'storage/images/galery/a2187bba-d6e3-4373-8f7b-ec3b05a69d58.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1281, 82, NULL, NULL, NULL, 'storage/images/galery/b5a0dc9d-b8f3-400f-9365-721e8cec7fe7.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1282, 82, NULL, NULL, NULL, 'storage/images/galery/aebffd79-76b3-45ca-8d17-6765718a0d72.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1283, 82, NULL, NULL, NULL, 'storage/images/galery/1e1052de-0f84-46b8-ac1e-1b70a5c93a4b.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1284, 82, NULL, NULL, NULL, 'storage/images/galery/ffc71e34-1d6e-4c73-999c-090aa8c780ed.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1285, 82, NULL, NULL, NULL, 'storage/images/galery/08e320df-b4af-42a1-9256-001f3321fe54.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1286, 82, NULL, NULL, NULL, 'storage/images/galery/5702a6d5-1455-4308-bbbc-cad55c4075f2.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1287, 82, NULL, NULL, NULL, 'storage/images/galery/32885dd3-ce9d-4e7e-ae9b-f732950e6974.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1288, 82, NULL, NULL, NULL, 'storage/images/galery/a2978bcf-49c4-4d1f-9032-662b3a4b59f7.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1289, 82, NULL, NULL, NULL, 'storage/images/galery/ccf2e9c8-6bc4-42a9-9309-1f13871ab51a.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1290, 82, NULL, NULL, NULL, 'storage/images/galery/62a02bed-0f93-4d0a-9b1e-f5d303fc191a.png', 1, 1, '2025-07-01 16:45:03', '2025-07-01 16:45:03'),
(1330, 57, NULL, NULL, NULL, 'storage/images/galery/f34d72a1-9725-4455-97c3-0ded6dd60bbf.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1331, 57, NULL, NULL, NULL, 'storage/images/galery/9d940926-7140-43fd-9fc0-8f0dcab10f21.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1332, 57, NULL, NULL, NULL, 'storage/images/galery/33b88f77-1576-4705-8115-182d8fc2344e.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1333, 57, NULL, NULL, NULL, 'storage/images/galery/6233aaca-1349-4f8e-b807-6612e3285a1f.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1334, 57, NULL, NULL, NULL, 'storage/images/galery/1f7e975f-bf47-45b4-9def-3c33f609f711.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1335, 57, NULL, NULL, NULL, 'storage/images/galery/e5517526-01cc-4afc-b324-ce2ef2f31029.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1336, 57, NULL, NULL, NULL, 'storage/images/galery/13742482-9abb-493e-a6b0-55047cf092e7.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1337, 57, NULL, NULL, NULL, 'storage/images/galery/36fb89e0-6c2a-42b2-8944-39268b904e81.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1338, 57, NULL, NULL, NULL, 'storage/images/galery/b0b3d6e3-5e82-4a97-be9a-d94d5bbdae5f.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1339, 57, NULL, NULL, NULL, 'storage/images/galery/20a39eb2-67b8-4355-b5df-0efce97cc509.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1340, 57, NULL, NULL, NULL, 'storage/images/galery/9fb8a537-d36b-48b6-aa5d-fc0a7c2e6a31.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1341, 57, NULL, NULL, NULL, 'storage/images/galery/9ab20a72-92d6-48b6-b03c-4b03f1ede818.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1342, 57, NULL, NULL, NULL, 'storage/images/galery/7df40031-d8fa-4106-884f-2637cdca89a6.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1343, 57, NULL, NULL, NULL, 'storage/images/galery/4c490f86-ab52-4c01-8b7e-2b717a1f9372.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1344, 57, NULL, NULL, NULL, 'storage/images/galery/524941aa-d44d-48fc-839d-3edd4bb37939.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1345, 57, NULL, NULL, NULL, 'storage/images/galery/eaf59472-1ea0-47d5-b72d-9f42af1a382e.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1346, 57, NULL, NULL, NULL, 'storage/images/galery/1cbccf57-56de-421d-a6d7-846169bcd6bd.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1347, 57, NULL, NULL, NULL, 'storage/images/galery/f7305ece-382a-4790-b6ba-2f7a921cd9d8.png', 1, 1, '2025-08-09 19:17:39', '2025-08-09 19:17:39'),
(1348, 49, NULL, NULL, NULL, 'storage/images/productos/MP102001_1.png', 1, 1, '2025-08-11 18:35:04', '2025-08-11 18:35:04'),
(1349, 49, NULL, NULL, NULL, 'storage/images/productos/MP102001_2.png', 1, 1, '2025-08-11 18:35:04', '2025-08-11 18:35:04'),
(1350, 49, NULL, NULL, NULL, 'storage/images/productos/MP102001_3.png', 1, 1, '2025-08-11 18:35:04', '2025-08-11 18:35:04'),
(1351, 49, NULL, NULL, NULL, 'storage/images/productos/MP102001_4.png', 1, 1, '2025-08-11 18:35:04', '2025-08-11 18:35:04'),
(1352, 49, NULL, NULL, NULL, 'storage/images/productos/MP102001_5.png', 1, 1, '2025-08-11 18:35:04', '2025-08-11 18:35:04'),
(1353, 49, NULL, NULL, NULL, 'storage/images/productos/MP102001_6.png', 1, 1, '2025-08-11 18:35:04', '2025-08-11 18:35:04'),
(1354, 49, NULL, NULL, NULL, 'storage/images/productos/MP102001_7.png', 1, 1, '2025-08-11 18:35:04', '2025-08-11 18:35:04'),
(1355, 49, NULL, NULL, NULL, 'storage/images/productos/MP102001_8.png', 1, 1, '2025-08-11 18:35:04', '2025-08-11 18:35:04'),
(1486, 83, NULL, NULL, NULL, 'storage/images/galery/71f16959-68d0-4919-9f9e-72a205cbb3d4.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1487, 83, NULL, NULL, NULL, 'storage/images/galery/a84bdf6f-ef5b-4e39-b414-5775481cc444.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1488, 83, NULL, NULL, NULL, 'storage/images/galery/8e4aa76d-6a12-431f-9791-d2e608e10e8a.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1489, 83, NULL, NULL, NULL, 'storage/images/galery/1fd4af15-0ed0-490b-bc18-03e57a4c5333.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1490, 83, NULL, NULL, NULL, 'storage/images/galery/06e7ae24-bb51-4b23-ae2d-b0623bbbf018.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1491, 83, NULL, NULL, NULL, 'storage/images/galery/7871d6e9-d959-4524-9fac-0fc195f2c4d8.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1492, 83, NULL, NULL, NULL, 'storage/images/galery/c22cbbdd-e920-454b-986b-84a6d3e2ea94.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1493, 83, NULL, NULL, NULL, 'storage/images/galery/4eabb9ca-809a-4a36-a7cb-5ef82112efc6.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1494, 83, NULL, NULL, NULL, 'storage/images/galery/374392cd-9f95-43a7-929b-9b469ba90cbf.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1495, 83, NULL, NULL, NULL, 'storage/images/galery/7905ac9c-d9fc-47e1-8ed6-c700de424131.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1496, 83, NULL, NULL, NULL, 'storage/images/galery/5c403f49-648e-4d32-a260-0213b69cc53d.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1497, 83, NULL, NULL, NULL, 'storage/images/galery/9516897f-0bad-46c8-b8cc-5575b8753639.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1498, 83, NULL, NULL, NULL, 'storage/images/galery/c32667c9-32a1-4198-971d-71aef2f6c536.png', 1, 1, '2025-08-15 22:00:36', '2025-08-15 22:00:36'),
(1564, 85, NULL, NULL, NULL, 'storage/images/galery/cb21ea1d-d5b6-4b3b-86aa-1947833d32c6.png', 1, 1, '2025-09-25 15:58:54', '2025-09-25 15:58:54'),
(1565, 85, NULL, NULL, NULL, 'storage/images/galery/d00086e9-fe01-48d4-bab8-e83fa3a181de.png', 1, 1, '2025-09-25 15:58:54', '2025-09-25 15:58:54'),
(1566, 85, NULL, NULL, NULL, 'storage/images/galery/7aa36dfe-fe79-4ec9-921f-63abe0adf7e7.png', 1, 1, '2025-09-25 15:58:54', '2025-09-25 15:58:54'),
(1567, 85, NULL, NULL, NULL, 'storage/images/galery/2f5dd1e6-412d-4a96-b0cc-53a953e64159.png', 1, 1, '2025-09-25 15:58:54', '2025-09-25 15:58:54'),
(1568, 85, NULL, NULL, NULL, 'storage/images/galery/0f07a47f-1464-49ed-9a73-03dbaad7ff5b.png', 1, 1, '2025-09-25 15:58:54', '2025-09-25 15:58:54'),
(1569, 85, NULL, NULL, NULL, 'storage/images/galery/7416279d-9ad0-41b9-9d26-e477aa572eb5.png', 1, 1, '2025-09-25 15:58:54', '2025-09-25 15:58:54'),
(1570, 85, NULL, NULL, NULL, 'storage/images/galery/01488f75-4866-456f-b16c-9ee6d3bd45dc.png', 1, 1, '2025-09-25 15:58:54', '2025-09-25 15:58:54'),
(1571, 85, NULL, NULL, NULL, 'storage/images/galery/f9f521a1-c7a1-4834-b042-ed2061e5cc55.png', 1, 1, '2025-09-25 15:58:54', '2025-09-25 15:58:54'),
(1572, 85, NULL, NULL, NULL, 'storage/images/galery/b0411d9f-e476-411a-ae3a-92ef5b70ab03.png', 1, 1, '2025-09-25 15:58:54', '2025-09-25 15:58:54'),
(1591, 89, NULL, NULL, NULL, 'storage/images/galery/64ff7eca-b7b7-4c42-8330-bd5ac7b90efc.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1592, 89, NULL, NULL, NULL, 'storage/images/galery/f3ff408f-1809-42fc-b70e-bbfa0bbc8a71.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1593, 89, NULL, NULL, NULL, 'storage/images/galery/46e35b75-4f2a-4821-8a43-6be6403d828a.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1594, 89, NULL, NULL, NULL, 'storage/images/galery/fbceaedc-6831-4126-b114-53608e89485d.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1595, 89, NULL, NULL, NULL, 'storage/images/galery/1be3de54-522b-489a-84a8-0ad76bb0a57a.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1596, 89, NULL, NULL, NULL, 'storage/images/galery/ed53bd0c-4b5b-49f2-8719-149d9bef274b.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1597, 89, NULL, NULL, NULL, 'storage/images/galery/71107089-dedf-43ac-8095-9f79821ccb9e.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1598, 89, NULL, NULL, NULL, 'storage/images/galery/daba41d8-7611-4c65-ba94-8f60dcbc0695.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1599, 89, NULL, NULL, NULL, 'storage/images/galery/21ec34a7-0ba6-4348-b995-0ca83c5ae8f0.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1600, 89, NULL, NULL, NULL, 'storage/images/galery/3e576cb9-8aeb-459d-ba1c-c803b2f50a7b.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1601, 89, NULL, NULL, NULL, 'storage/images/galery/7e467626-de3d-4524-ae61-4bbb246c0761.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1602, 89, NULL, NULL, NULL, 'storage/images/galery/73c2a1fb-f4c5-4601-a0b3-17613a6d253f.png', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1603, 89, NULL, NULL, NULL, 'storage/images/galery/dce75020-2823-484f-a3a8-829becf87446.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1604, 89, NULL, NULL, NULL, 'storage/images/galery/2fc79254-e4ed-4962-8192-769512bc98f5.png', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1605, 89, NULL, NULL, NULL, 'storage/images/galery/db49712a-7b1f-473f-b04b-8b38f412c00d.JPG', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39'),
(1606, 88, NULL, NULL, NULL, 'storage/images/galery/6aba9599-efbc-44d2-a3bd-15dca7afbd4b.JPG', 1, 1, '2025-09-25 17:40:01', '2025-09-25 17:40:01'),
(1607, 88, NULL, NULL, NULL, 'storage/images/galery/bc8e5868-b5c6-4def-b286-1deb97218698.JPG', 1, 1, '2025-09-25 17:40:01', '2025-09-25 17:40:01'),
(1608, 88, NULL, NULL, NULL, 'storage/images/galery/1d01bad3-1885-47f1-8ee1-ef3d60c9fedd.JPG', 1, 1, '2025-09-25 17:40:01', '2025-09-25 17:40:01'),
(1609, 88, NULL, NULL, NULL, 'storage/images/galery/8c6239b7-7c1f-4955-9c4d-daf44a434613.JPG', 1, 1, '2025-09-25 17:40:01', '2025-09-25 17:40:01'),
(1610, 88, NULL, NULL, NULL, 'storage/images/galery/731c94d8-473e-411c-917f-899511323db4.JPG', 1, 1, '2025-09-25 17:40:01', '2025-09-25 17:40:01'),
(1611, 88, NULL, NULL, NULL, 'storage/images/galery/300edaba-99c6-4d21-a5b4-c154b813321d.JPG', 1, 1, '2025-09-25 17:40:01', '2025-09-25 17:40:01'),
(1612, 90, NULL, NULL, NULL, 'storage/images/galery/15cf5bef-9373-4881-9908-708522e128bb.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1613, 90, NULL, NULL, NULL, 'storage/images/galery/5eb54fa2-97b7-4529-9595-bc8510db85f9.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1614, 90, NULL, NULL, NULL, 'storage/images/galery/f3bd7166-b54a-4d49-b28b-3543af4f13e8.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1615, 90, NULL, NULL, NULL, 'storage/images/galery/c45f9d5a-653f-4ef1-a213-a2e5a32c96f9.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1616, 90, NULL, NULL, NULL, 'storage/images/galery/3edd4929-ae5f-42e7-9522-db05b044fd78.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1617, 90, NULL, NULL, NULL, 'storage/images/galery/c94213ca-e6fd-430f-93d6-9fc06f6ce9ab.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1618, 90, NULL, NULL, NULL, 'storage/images/galery/4ca762d6-5b04-428e-8cbd-c359d2d33bd0.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1619, 90, NULL, NULL, NULL, 'storage/images/galery/59e89fbd-ec67-4461-ae2b-765226071123.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1620, 90, NULL, NULL, NULL, 'storage/images/galery/66ae4f93-5d46-4b96-bbda-f41761f0234c.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1621, 90, NULL, NULL, NULL, 'storage/images/galery/1327ad80-040c-4d75-bcb3-5221a2adf8d9.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1622, 90, NULL, NULL, NULL, 'storage/images/galery/4621b2d4-72df-4f6d-aced-cced5a8c4987.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1623, 90, NULL, NULL, NULL, 'storage/images/galery/07fa3754-0c89-40f2-a098-de4b9d9d7237.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1624, 90, NULL, NULL, NULL, 'storage/images/galery/f55df1af-b3e2-4391-95a8-b6142933b520.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1625, 90, NULL, NULL, NULL, 'storage/images/galery/9a124b14-2b90-4ad4-ba83-f47ffe0addff.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1626, 90, NULL, NULL, NULL, 'storage/images/galery/91acb3c0-97a1-46ff-93ff-b66ff527ba97.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1627, 90, NULL, NULL, NULL, 'storage/images/galery/bb6abfec-fb52-42fb-9ced-ed9468ff57f2.JPG', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19'),
(1674, 91, NULL, NULL, NULL, 'storage/images/galery/efd5830f-77c3-4f22-98cf-ef9a8539971d.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1675, 91, NULL, NULL, NULL, 'storage/images/galery/1ef0fc1f-e916-47da-badd-d88452c82090.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1676, 91, NULL, NULL, NULL, 'storage/images/galery/65b12467-10c9-40da-a726-80d20db8a000.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1677, 91, NULL, NULL, NULL, 'storage/images/galery/6777eaf0-e99c-4e97-9439-616b59df923b.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1678, 91, NULL, NULL, NULL, 'storage/images/galery/132fe4ce-cad6-4d83-a57f-6b83c21daa2b.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1679, 91, NULL, NULL, NULL, 'storage/images/galery/f8642abc-02a0-42f5-99ac-6c04bf1aa7ac.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1680, 91, NULL, NULL, NULL, 'storage/images/galery/bfdd0035-4669-4900-8351-526707b0881b.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1681, 91, NULL, NULL, NULL, 'storage/images/galery/94df9d4d-73c7-4180-8301-421a7d285efe.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1682, 91, NULL, NULL, NULL, 'storage/images/galery/01ef8654-a86e-4f38-8dab-ec649b2dbf54.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1683, 91, NULL, NULL, NULL, 'storage/images/galery/d479d650-f5a6-47d2-bb80-0441bb60af35.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1684, 91, NULL, NULL, NULL, 'storage/images/galery/f8d60905-d541-480c-ae90-ca9f89ebfc2c.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1685, 91, NULL, NULL, NULL, 'storage/images/galery/01167b7d-60a6-42dd-b7dc-dab2b45b6ac8.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1686, 91, NULL, NULL, NULL, 'storage/images/galery/8e8de3c5-6382-4185-a7e5-7118d1fa77f5.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1687, 91, NULL, NULL, NULL, 'storage/images/galery/f6ea729b-786f-4d4b-9110-ce1fe6b45f53.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1688, 91, NULL, NULL, NULL, 'storage/images/galery/dfb4efcb-38a7-4693-9de6-3b9184ad5b3a.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1689, 91, NULL, NULL, NULL, 'storage/images/galery/e9f205aa-e9cc-4574-ae0f-bfc31e0dad5b.JPG', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1690, 91, NULL, NULL, NULL, 'storage/images/galery/c4cd5f7f-3672-482e-9e57-00db3248856e.png', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1691, 91, NULL, NULL, NULL, 'storage/images/galery/3dc0a58a-c062-4e00-8ca0-c50b197a5bad.png', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1692, 91, NULL, NULL, NULL, 'storage/images/galery/45f3a73d-0a55-402f-aea6-bccd298ad01e.png', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1693, 91, NULL, NULL, NULL, 'storage/images/galery/ab9f7be8-eabf-4a1a-9f0c-b1e095152d7e.png', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1694, 91, NULL, NULL, NULL, 'storage/images/galery/8f1f117f-96b0-4ee4-af2f-4960cd99ccf7.png', 1, 1, '2025-10-02 20:57:58', '2025-10-02 20:57:58'),
(1695, 84, NULL, NULL, NULL, 'storage/images/galery/fbe1c0c9-3b8a-452c-a127-a6b55b8d8762.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1696, 84, NULL, NULL, NULL, 'storage/images/galery/83b0512d-f04b-4cbf-ab13-c74dc7616a4f.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1697, 84, NULL, NULL, NULL, 'storage/images/galery/53c183a7-eab1-491d-8919-20221d5be5b4.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1698, 84, NULL, NULL, NULL, 'storage/images/galery/8db24a71-2725-4bfa-b56e-7706485b4067.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1699, 84, NULL, NULL, NULL, 'storage/images/galery/6784d9b5-752d-4228-a32c-561c213df49d.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1700, 84, NULL, NULL, NULL, 'storage/images/galery/2edf2dff-8002-4279-8694-f6303f332a9c.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1701, 84, NULL, NULL, NULL, 'storage/images/galery/a59b3bf7-5c6e-41e5-982b-ecb89a833e41.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1702, 84, NULL, NULL, NULL, 'storage/images/galery/51d17173-167a-4b34-9aec-0afcef137667.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1703, 84, NULL, NULL, NULL, 'storage/images/galery/5b4329d4-cf63-418b-b121-e93b264d54ac.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1704, 84, NULL, NULL, NULL, 'storage/images/galery/b48df500-099b-4a82-b97b-94095f9ea956.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1705, 84, NULL, NULL, NULL, 'storage/images/galery/fb1972f1-a16b-42cf-90af-6553d9761426.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1706, 84, NULL, NULL, NULL, 'storage/images/galery/f64598b9-8014-4d63-a204-e3c563dfff98.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1707, 84, NULL, NULL, NULL, 'storage/images/galery/b201c959-54a2-4aa0-a711-c888ed841ae1.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1708, 84, NULL, NULL, NULL, 'storage/images/galery/d00a8c61-e7b3-47ef-b2bf-025d0f6fe48d.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1709, 84, NULL, NULL, NULL, 'storage/images/galery/bc84e3fd-1061-4667-8f60-1b08ffeec30a.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1710, 84, NULL, NULL, NULL, 'storage/images/galery/993c63c5-1e9f-4596-9fb9-59304b6fc644.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1711, 84, NULL, NULL, NULL, 'storage/images/galery/273d4630-47bc-44e8-bac5-cbf2d8b80863.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1712, 84, NULL, NULL, NULL, 'storage/images/galery/13e0fd9f-752c-4c78-a805-778370819640.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1713, 84, NULL, NULL, NULL, 'storage/images/galery/07b119b0-997b-4d61-b15e-118fc9f38b55.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1714, 84, NULL, NULL, NULL, 'storage/images/galery/cf2ecc72-1ca7-4cac-9625-4c573185ef55.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1715, 84, NULL, NULL, NULL, 'storage/images/galery/6e011d87-9d39-4836-989f-ef89a6af5c6c.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1716, 84, NULL, NULL, NULL, 'storage/images/galery/7bdd50d9-60c1-43e3-9eab-3fda46f6ab1e.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1717, 84, NULL, NULL, NULL, 'storage/images/galery/cf033a51-5641-48b3-97d4-925c00804b72.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1718, 84, NULL, NULL, NULL, 'storage/images/galery/49368f0e-3ace-4a90-90dc-f6f0696a0608.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1719, 84, NULL, NULL, NULL, 'storage/images/galery/b13f4201-3988-4b8b-9389-fd36ebbc372d.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1720, 84, NULL, NULL, NULL, 'storage/images/galery/f9083a62-72dc-410b-b80a-fad700529166.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1721, 84, NULL, NULL, NULL, 'storage/images/galery/67694d93-ba7e-4250-a995-c214f56b8bb3.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1722, 84, NULL, NULL, NULL, 'storage/images/galery/6020de01-657c-4e6a-9794-a5aeb458dff2.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1723, 84, NULL, NULL, NULL, 'storage/images/galery/5aae8b91-3ca5-48ee-91b2-b5c2fafb8388.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1724, 84, NULL, NULL, NULL, 'storage/images/galery/4466e908-7183-4958-9d3d-8984c8e0bfda.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1725, 84, NULL, NULL, NULL, 'storage/images/galery/65ed60ff-26fa-4791-8b91-b27c4172e39f.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1726, 84, NULL, NULL, NULL, 'storage/images/galery/0e90985a-d7ae-42d3-8b4d-8ea5874bb427.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1727, 84, NULL, NULL, NULL, 'storage/images/galery/7bd7a7d9-0e44-4227-8074-bd38ecba3059.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1728, 84, NULL, NULL, NULL, 'storage/images/galery/0a097e50-2bee-4ff3-adb7-25e0b7f1842d.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1729, 84, NULL, NULL, NULL, 'storage/images/galery/7a4f0219-67ab-4ff8-b927-50f93442f7ca.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1730, 84, NULL, NULL, NULL, 'storage/images/galery/2cb86746-d76d-456f-ad12-e3dd0859a663.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1731, 84, NULL, NULL, NULL, 'storage/images/galery/858da1fd-321a-4932-b609-ccee5dc4b24f.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1732, 84, NULL, NULL, NULL, 'storage/images/galery/45f3782b-19dd-410a-97c5-703e644286b7.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1733, 84, NULL, NULL, NULL, 'storage/images/galery/5b9f6e96-e759-48a9-9a5b-bf96ab89dcca.png', 1, 1, '2025-10-17 14:20:08', '2025-10-17 14:20:08'),
(1778, 92, NULL, NULL, NULL, 'storage/images/galery/b5b22d1d-a75c-477f-bfa3-f50fa0e00b90.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1779, 92, NULL, NULL, NULL, 'storage/images/galery/3edf1e73-8702-441b-ae08-29fa2f723089.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1780, 92, NULL, NULL, NULL, 'storage/images/galery/331f69c9-0268-49ab-9318-5f91d52286cc.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1781, 92, NULL, NULL, NULL, 'storage/images/galery/11ba6133-2217-4df8-ac81-e4615177c7bc.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1782, 92, NULL, NULL, NULL, 'storage/images/galery/43d44b1c-02ba-4315-a318-2805afe4a859.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1783, 92, NULL, NULL, NULL, 'storage/images/galery/202d71a0-cc05-4f77-8464-9d2a1e72ae92.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1784, 92, NULL, NULL, NULL, 'storage/images/galery/6d2849a7-805e-4e9f-920f-c97f5ca6f8fe.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1785, 92, NULL, NULL, NULL, 'storage/images/galery/e5eec520-9eb7-4b27-be45-e37a9ee3954c.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1786, 92, NULL, NULL, NULL, 'storage/images/galery/cb0a2167-cbc1-44f3-bad7-f7466ce12651.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1787, 92, NULL, NULL, NULL, 'storage/images/galery/61173e8a-fdf6-44c2-968f-ce84c5078ade.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1788, 92, NULL, NULL, NULL, 'storage/images/galery/2c908773-593d-4ba2-aec6-63cbe1e899bc.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1789, 92, NULL, NULL, NULL, 'storage/images/galery/86255105-950f-4432-a4b8-0cb664c39dd2.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1790, 92, NULL, NULL, NULL, 'storage/images/galery/faa09911-aabc-4bc9-a758-62092f376b5a.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1791, 92, NULL, NULL, NULL, 'storage/images/galery/96ab3e20-f192-4b7e-aaf7-4efaf6f90fbe.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1792, 92, NULL, NULL, NULL, 'storage/images/galery/d3727b4c-8c7f-4609-ad1a-59a587dcfa3a.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1793, 92, NULL, NULL, NULL, 'storage/images/galery/fbe11ea2-d288-46d6-86b7-0638e3830a9c.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1794, 92, NULL, NULL, NULL, 'storage/images/galery/ac668727-4feb-4765-bd98-554b63eb78bc.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1795, 92, NULL, NULL, NULL, 'storage/images/galery/8c533fa5-0832-4ee6-9fe7-8cd7f000ebcc.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1796, 92, NULL, NULL, NULL, 'storage/images/galery/e7700d08-a86b-40fb-90b5-80600282039d.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1797, 92, NULL, NULL, NULL, 'storage/images/galery/e3b1229c-84b6-4634-829e-2c3ce7c58805.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1798, 92, NULL, NULL, NULL, 'storage/images/galery/4299837f-7ec6-460f-ab1d-64b2c52e74d0.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1799, 92, NULL, NULL, NULL, 'storage/images/galery/97f5ff32-31ad-4321-9152-52154a44705a.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1800, 92, NULL, NULL, NULL, 'storage/images/galery/77ea211b-f1a9-42ec-9710-1929d64bd6ef.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1801, 92, NULL, NULL, NULL, 'storage/images/galery/25818362-9025-4a98-80d3-5eae94e79e98.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1802, 92, NULL, NULL, NULL, 'storage/images/galery/74872962-2010-4c0c-8361-9cfcfe7e1c54.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1803, 92, NULL, NULL, NULL, 'storage/images/galery/3cf03b22-79cf-4299-994e-4e4dbff3dcc3.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1804, 92, NULL, NULL, NULL, 'storage/images/galery/b9e0a5c7-84e8-4722-8a7b-3d40a6efdc22.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1805, 92, NULL, NULL, NULL, 'storage/images/galery/65fb30b4-29d9-407b-9735-dd85b969e6ce.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1806, 92, NULL, NULL, NULL, 'storage/images/galery/88906c95-4f32-4a41-ad95-3bf04cb45d48.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1807, 92, NULL, NULL, NULL, 'storage/images/galery/f12d5650-f0eb-4c0f-bb34-14381efae368.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1808, 92, NULL, NULL, NULL, 'storage/images/galery/6b70e70b-1e92-4bde-bf95-1432f9f9144a.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1809, 92, NULL, NULL, NULL, 'storage/images/galery/99f0acfb-33d5-43fc-b7d6-dd67b45b752b.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1810, 92, NULL, NULL, NULL, 'storage/images/galery/57769a08-745f-46c1-bbd3-43901cb8a12d.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1811, 92, NULL, NULL, NULL, 'storage/images/galery/cc8b3837-c78f-4a48-90dd-224107da9c93.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1812, 92, NULL, NULL, NULL, 'storage/images/galery/f7a42f5d-8eea-45fa-be10-a7638b18666b.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11');
INSERT INTO `galeries` (`id`, `product_id`, `valor`, `descripcion`, `color`, `imagen`, `visible`, `status`, `created_at`, `updated_at`) VALUES
(1813, 92, NULL, NULL, NULL, 'storage/images/galery/7a1b0f67-2301-4160-9734-bc5ec863fa9f.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1814, 92, NULL, NULL, NULL, 'storage/images/galery/1d1b1510-9739-42f4-be14-a59d85a6c981.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1815, 92, NULL, NULL, NULL, 'storage/images/galery/f8ad55c8-8df5-4d5e-9b0c-6bd1799549e0.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1816, 92, NULL, NULL, NULL, 'storage/images/galery/17ccc1ea-5d31-4614-9204-3d4f58e36ae2.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1817, 92, NULL, NULL, NULL, 'storage/images/galery/26fb448e-5a08-4198-86e9-0b21a15e5785.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1818, 92, NULL, NULL, NULL, 'storage/images/galery/1d72589d-52eb-412d-a3ec-b0c157e0e177.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1819, 92, NULL, NULL, NULL, 'storage/images/galery/09f41407-873d-4a09-8a0e-1397cccf9685.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1820, 92, NULL, NULL, NULL, 'storage/images/galery/965cae83-2c21-49f6-b595-2cb875dedb02.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1821, 92, NULL, NULL, NULL, 'storage/images/galery/9f1d2770-cbe0-49f0-a686-fdb1ffce13ef.png', 1, 1, '2025-10-17 14:27:11', '2025-10-17 14:27:11'),
(1822, 93, NULL, NULL, NULL, 'storage/images/galery/df2f5f70-6a9c-4b47-89c1-bd78d64f1c82.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1823, 93, NULL, NULL, NULL, 'storage/images/galery/968a7575-5565-42b8-96bb-c7f954082491.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1824, 93, NULL, NULL, NULL, 'storage/images/galery/bb7c154f-c26c-47cb-8be3-063692ff6fb4.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1825, 93, NULL, NULL, NULL, 'storage/images/galery/75d109de-27c4-459e-95ed-a8b5281bc045.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1826, 93, NULL, NULL, NULL, 'storage/images/galery/133ecb9e-2bb3-4895-b2db-6de04f25333a.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1827, 93, NULL, NULL, NULL, 'storage/images/galery/9346643f-c645-4987-91f6-92f8595659a1.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1828, 93, NULL, NULL, NULL, 'storage/images/galery/34d1decf-1445-41b3-8e92-b7119e0a5efb.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1829, 93, NULL, NULL, NULL, 'storage/images/galery/f2340ac2-0262-49b8-9935-b89fe7cc0dfe.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1830, 93, NULL, NULL, NULL, 'storage/images/galery/b9151079-d886-4886-a5f0-a549f9c9fbe8.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1831, 93, NULL, NULL, NULL, 'storage/images/galery/b6ccb5af-e433-433c-86a3-0babf1c72fe0.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1832, 93, NULL, NULL, NULL, 'storage/images/galery/e7e5c0a3-4d10-48be-939e-9b67d3ebd39d.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1833, 93, NULL, NULL, NULL, 'storage/images/galery/889a3e98-0223-4968-865f-1813a7c1f18d.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1834, 93, NULL, NULL, NULL, 'storage/images/galery/b7fc58f0-c5d5-4a76-93b3-7c0ec7b80b6b.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1835, 93, NULL, NULL, NULL, 'storage/images/galery/ec86fafd-1ce9-43fd-9f09-42f570fad729.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1836, 93, NULL, NULL, NULL, 'storage/images/galery/c3e47800-d4cf-4307-9576-914661de6173.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1837, 93, NULL, NULL, NULL, 'storage/images/galery/d39d30f1-35f0-4f03-84d2-da8216f6413a.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1838, 93, NULL, NULL, NULL, 'storage/images/galery/1e253620-abf5-4f3a-bc30-c799b17841af.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1839, 93, NULL, NULL, NULL, 'storage/images/galery/44f0ee8b-1a44-4146-8ebb-d70a39c1edff.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1840, 93, NULL, NULL, NULL, 'storage/images/galery/c3017cce-9fbb-44f6-af8c-5dfbb405ab6d.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1841, 93, NULL, NULL, NULL, 'storage/images/galery/b7184a1e-7da3-4dc8-ac41-798d98407f95.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1842, 93, NULL, NULL, NULL, 'storage/images/galery/7bf20552-7254-4442-9d03-41a7b1e1ef74.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1843, 93, NULL, NULL, NULL, 'storage/images/galery/a54a43b4-912d-4a46-93f5-cb460e93a4dc.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1844, 93, NULL, NULL, NULL, 'storage/images/galery/70e8196b-62e8-44f8-9100-984938dfafec.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1845, 93, NULL, NULL, NULL, 'storage/images/galery/e3860863-abc5-45e3-9d8a-6af0930da31c.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1846, 93, NULL, NULL, NULL, 'storage/images/galery/6955ee9d-777b-4fc4-a5d0-562aabf87836.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1847, 93, NULL, NULL, NULL, 'storage/images/galery/ededa78a-0bb3-4906-9c5a-fdbc5b3d9f85.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1848, 93, NULL, NULL, NULL, 'storage/images/galery/77abae2b-75b8-42e6-a87c-ddd6fe64c5bb.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1849, 93, NULL, NULL, NULL, 'storage/images/galery/f6f9f8ca-f4e9-44ac-9855-82bd21ff54bb.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1850, 93, NULL, NULL, NULL, 'storage/images/galery/98e97d4e-81e3-4b44-8f86-1513c3b678d7.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1851, 93, NULL, NULL, NULL, 'storage/images/galery/63bc7bf2-7c86-41db-8238-389c5afffce7.png', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03'),
(1852, 94, NULL, NULL, NULL, 'storage/images/galery/336e2f57-1781-4b35-9141-8cff18c41b0d.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1853, 94, NULL, NULL, NULL, 'storage/images/galery/1c9930fa-a10c-4bb4-9f4c-daff37c63ebe.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1854, 94, NULL, NULL, NULL, 'storage/images/galery/b200683f-836c-4d8d-abd0-061e5d8ea870.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1855, 94, NULL, NULL, NULL, 'storage/images/galery/8aa7732d-d462-4b3a-9ed7-fe7ab811bb4a.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1856, 94, NULL, NULL, NULL, 'storage/images/galery/9cff20b2-f938-43f3-afe7-799f2c90d08e.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1857, 94, NULL, NULL, NULL, 'storage/images/galery/0c4abb72-4ced-45bd-b5f2-45f69f53df62.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1858, 94, NULL, NULL, NULL, 'storage/images/galery/46fcfbaf-ccb0-47c8-a352-24a36c234ca6.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1859, 94, NULL, NULL, NULL, 'storage/images/galery/531fd921-0d88-47f3-8ccc-31468b826419.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1860, 94, NULL, NULL, NULL, 'storage/images/galery/aebd2619-57a4-4293-b1a6-9a7b00c4130a.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1861, 94, NULL, NULL, NULL, 'storage/images/galery/aeaeaf53-7c36-408b-bdc4-ea3a4d180529.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1862, 94, NULL, NULL, NULL, 'storage/images/galery/02593bed-9034-46b4-b506-0d08c569cc6d.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1863, 94, NULL, NULL, NULL, 'storage/images/galery/6cd56ccd-0e92-4c37-9985-ee3e43d9097e.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1864, 94, NULL, NULL, NULL, 'storage/images/galery/671e8fbd-ba75-4989-8dae-8486f0faf681.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1865, 94, NULL, NULL, NULL, 'storage/images/galery/2e3633a0-f6a4-46a6-9670-07d71b59e788.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1866, 94, NULL, NULL, NULL, 'storage/images/galery/34612e0e-c932-4397-93bd-b7ca7e2158c4.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1867, 94, NULL, NULL, NULL, 'storage/images/galery/cdbdffbf-4862-42a0-b9aa-b275004710fe.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1868, 94, NULL, NULL, NULL, 'storage/images/galery/57c48e21-f7f0-439e-96aa-233dcd645e05.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1869, 94, NULL, NULL, NULL, 'storage/images/galery/9fab932c-1aed-48dd-8d8c-b99845496912.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1870, 94, NULL, NULL, NULL, 'storage/images/galery/a208535f-087f-4044-895f-9c56a98333f3.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1871, 94, NULL, NULL, NULL, 'storage/images/galery/18efce64-b091-465d-8449-f40ed3c4a86b.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1872, 94, NULL, NULL, NULL, 'storage/images/galery/f33302de-d504-4228-8d5d-e9da1a1c6d85.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1873, 94, NULL, NULL, NULL, 'storage/images/galery/1139c236-4ad0-4ef2-9da8-9c5bb3318e8a.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1874, 94, NULL, NULL, NULL, 'storage/images/galery/e4a8abb6-a315-4596-a5e4-5c2a98d9222c.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1875, 94, NULL, NULL, NULL, 'storage/images/galery/05364d22-f98b-4c32-a0f7-f2b2f5595c54.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1876, 94, NULL, NULL, NULL, 'storage/images/galery/d4d94374-0b6d-4143-b6d1-f62c5ed5ae65.png', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54'),
(1877, 95, NULL, NULL, NULL, 'storage/images/galery/9765a1d8-1895-4e31-a9b4-9fde933e4112.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1878, 95, NULL, NULL, NULL, 'storage/images/galery/e43b84e9-4209-4ac9-816e-21627130566a.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1879, 95, NULL, NULL, NULL, 'storage/images/galery/c6f42eb3-b993-4397-a7f2-e48bc0e0cea0.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1880, 95, NULL, NULL, NULL, 'storage/images/galery/d0e98228-bc41-4891-a72a-fe189a5808ab.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1881, 95, NULL, NULL, NULL, 'storage/images/galery/3766c349-d43d-4872-9edf-7c709dfa308c.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1882, 95, NULL, NULL, NULL, 'storage/images/galery/6681ced6-9c72-4dff-8721-70dbdf42e7be.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1883, 95, NULL, NULL, NULL, 'storage/images/galery/c0acaf5e-8f63-4484-8334-e5dcc9fdfbd3.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1884, 95, NULL, NULL, NULL, 'storage/images/galery/30f2f727-e681-4696-b01e-02ec4ec910c5.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1885, 95, NULL, NULL, NULL, 'storage/images/galery/96c138f5-52fd-4470-b26d-34a7ec134dcc.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1886, 95, NULL, NULL, NULL, 'storage/images/galery/2ad50bc6-557f-4138-af45-1f1fb45b3a7b.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1887, 95, NULL, NULL, NULL, 'storage/images/galery/ff056e9b-afc5-4324-895f-4c3c337197a7.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1888, 95, NULL, NULL, NULL, 'storage/images/galery/28df3a0a-b138-4094-b7fc-34fa9a076e51.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1889, 95, NULL, NULL, NULL, 'storage/images/galery/a79517c4-ba7a-47a2-87b9-9f80ce9068e0.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1890, 95, NULL, NULL, NULL, 'storage/images/galery/2b97a6c4-1045-4ddf-83be-39399b03ed96.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1891, 95, NULL, NULL, NULL, 'storage/images/galery/c7ea1c3c-dc20-450d-b36f-3ff1a0fa3635.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1892, 95, NULL, NULL, NULL, 'storage/images/galery/767673cd-497e-43e2-b3ac-c2511ac2b874.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1893, 95, NULL, NULL, NULL, 'storage/images/galery/4e932f17-2b77-44a5-ab6d-cd658a8c2f6c.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1894, 95, NULL, NULL, NULL, 'storage/images/galery/fc6ee004-60b8-4bf9-aeb4-3a5b49a408c5.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1895, 95, NULL, NULL, NULL, 'storage/images/galery/52d94328-5759-4e0e-b10a-8d4ee1cd63b7.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1896, 95, NULL, NULL, NULL, 'storage/images/galery/75e78344-8113-46f6-beae-8d757cebb26c.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1897, 95, NULL, NULL, NULL, 'storage/images/galery/637a87cc-6871-425f-a78a-b7117af09996.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1898, 95, NULL, NULL, NULL, 'storage/images/galery/fdd13848-9b31-44aa-bffd-b0e598d41194.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1899, 95, NULL, NULL, NULL, 'storage/images/galery/ede8fdbf-dd61-4e8f-924f-16a1837d2f80.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1900, 95, NULL, NULL, NULL, 'storage/images/galery/70dd74eb-a15c-4bbd-ae65-8587c51bc9d1.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1901, 95, NULL, NULL, NULL, 'storage/images/galery/231f60af-c438-4dd1-8f43-50878d2934ac.png', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12'),
(1902, 38, NULL, NULL, NULL, 'storage/images/productos/MP101002_1.png', 1, 1, '2025-10-28 15:19:00', '2025-10-28 15:19:00'),
(1903, 38, NULL, NULL, NULL, 'storage/images/productos/MP101002_2.png', 1, 1, '2025-10-28 15:19:00', '2025-10-28 15:19:00'),
(1904, 38, NULL, NULL, NULL, 'storage/images/productos/MP101002_3.png', 1, 1, '2025-10-28 15:19:00', '2025-10-28 15:19:00'),
(1905, 38, NULL, NULL, NULL, 'storage/images/productos/MP101002_4.png', 1, 1, '2025-10-28 15:19:00', '2025-10-28 15:19:00'),
(1906, 38, NULL, NULL, NULL, 'storage/images/productos/MP101002_5.png', 1, 1, '2025-10-28 15:19:00', '2025-10-28 15:19:00'),
(1907, 38, NULL, NULL, NULL, 'storage/images/productos/MP101002_6.png', 1, 1, '2025-10-28 15:19:00', '2025-10-28 15:19:00'),
(1908, 38, NULL, NULL, NULL, 'storage/images/productos/MP101002_7.png', 1, 1, '2025-10-28 15:19:00', '2025-10-28 15:19:00'),
(1909, 38, NULL, NULL, NULL, 'storage/images/productos/MP101002_8.png', 1, 1, '2025-10-28 15:19:00', '2025-10-28 15:19:00'),
(1910, 38, NULL, NULL, NULL, 'storage/images/productos/MP101002_9.png', 1, 1, '2025-10-28 15:19:00', '2025-10-28 15:19:00'),
(1911, 38, NULL, NULL, NULL, 'storage/images/galery/59ccdcf7-a3df-45bb-9b98-fa5300399eb0.png', 1, 1, '2025-10-28 15:19:00', '2025-10-28 15:19:00'),
(1912, 96, NULL, NULL, NULL, 'storage/images/galery/0ae0af6b-4719-4df6-b96a-e2368604e53a.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1913, 96, NULL, NULL, NULL, 'storage/images/galery/a55fc8fe-33e9-4fc0-a735-1c6a85030a6e.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1914, 96, NULL, NULL, NULL, 'storage/images/galery/2487c12f-2a2a-4056-aa96-8ead9eaf8846.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1915, 96, NULL, NULL, NULL, 'storage/images/galery/5fcd2d01-e1ce-480b-b600-10ba70709184.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1916, 96, NULL, NULL, NULL, 'storage/images/galery/4237336b-e961-40eb-a4a1-aa45e4e88e79.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1917, 96, NULL, NULL, NULL, 'storage/images/galery/182837e9-a287-4653-8a46-a922c247a51c.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1918, 96, NULL, NULL, NULL, 'storage/images/galery/41e5708a-34d5-4b2f-952b-f4e25be37755.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1919, 96, NULL, NULL, NULL, 'storage/images/galery/0b82b2a5-d58a-46d8-b625-656b02ed2782.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1920, 96, NULL, NULL, NULL, 'storage/images/galery/ba415781-5525-4649-b333-f0ccb2aad811.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1921, 96, NULL, NULL, NULL, 'storage/images/galery/3c028851-44e4-4396-a8b5-fc8209e898d6.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1922, 96, NULL, NULL, NULL, 'storage/images/galery/f5d941b9-b0ed-4c58-bd04-ccf275a30a94.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1923, 96, NULL, NULL, NULL, 'storage/images/galery/87739718-6f83-43a8-9f35-1e4fbffdf523.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1924, 96, NULL, NULL, NULL, 'storage/images/galery/e8aa847a-b122-4785-bd0b-73764c9cf4a7.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1925, 96, NULL, NULL, NULL, 'storage/images/galery/d5c7d8c0-2351-4cf9-93fc-d00ab6ffd1ad.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1926, 96, NULL, NULL, NULL, 'storage/images/galery/4ab6f1a4-95cb-4ca6-926a-423b763fd4cc.png', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22'),
(1946, 97, NULL, NULL, NULL, 'storage/images/galery/0065f827-c4a8-42ee-b984-2cc3d6d5d696.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1947, 97, NULL, NULL, NULL, 'storage/images/galery/ae3d80b3-a581-4cc7-9c0a-5345f25e6f66.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1948, 97, NULL, NULL, NULL, 'storage/images/galery/ccb60b02-22b6-4312-86ec-c22f95a738a5.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1949, 97, NULL, NULL, NULL, 'storage/images/galery/62126d8c-106b-445b-9918-0a7ad2ef559d.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1950, 97, NULL, NULL, NULL, 'storage/images/galery/8b48b7e7-c44b-4a61-8fd2-8a340b988563.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1951, 97, NULL, NULL, NULL, 'storage/images/galery/d4bc845e-b85b-4747-97fc-ac871fad421a.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1952, 97, NULL, NULL, NULL, 'storage/images/galery/e77cf6b5-0921-471f-a60a-a8b9cb6c4453.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1953, 97, NULL, NULL, NULL, 'storage/images/galery/06996593-9c91-42e5-97bf-5238fdd75461.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1954, 97, NULL, NULL, NULL, 'storage/images/galery/8399f277-967c-4bdb-8c50-5a4e0dc4f041.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1955, 97, NULL, NULL, NULL, 'storage/images/galery/bba40b40-5785-4f97-975c-5669e7172eed.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1956, 97, NULL, NULL, NULL, 'storage/images/galery/f9b17932-f685-45e0-9b72-6c100e0c3405.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1957, 97, NULL, NULL, NULL, 'storage/images/galery/aa4ca977-d21c-4d29-b811-09fb4cc7b47a.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1958, 97, NULL, NULL, NULL, 'storage/images/galery/1ea77704-a9c6-4e39-9402-b7dcb66d917a.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1959, 97, NULL, NULL, NULL, 'storage/images/galery/95bacc2d-c9d9-473e-aa67-45f2c4c147e7.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1960, 97, NULL, NULL, NULL, 'storage/images/galery/03369649-7241-4a82-b7b3-f6b1a2914da2.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1961, 97, NULL, NULL, NULL, 'storage/images/galery/45f3cc38-1cea-4c14-bd8b-94bf36a5bfde.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1962, 97, NULL, NULL, NULL, 'storage/images/galery/348da844-acc7-4ff4-b412-8f7f9f4394ff.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1963, 97, NULL, NULL, NULL, 'storage/images/galery/ebf46b3e-c515-4642-91ed-00b3d59cc706.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1964, 97, NULL, NULL, NULL, 'storage/images/galery/950c2988-dc6a-417a-b589-c234db4e4dbf.png', 1, 1, '2025-10-28 15:39:12', '2025-10-28 15:39:12'),
(1965, 98, NULL, NULL, NULL, 'storage/images/galery/5b5a92b4-91de-4e48-a0b7-44838ec9f838.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1966, 98, NULL, NULL, NULL, 'storage/images/galery/26964413-5e49-46d2-b1b5-9ff1f079b0cd.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1967, 98, NULL, NULL, NULL, 'storage/images/galery/7f8be234-a863-4c2f-8bbc-2e2489d09ba1.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1968, 98, NULL, NULL, NULL, 'storage/images/galery/eda4deca-76d7-4454-a04d-12f9c7e54c18.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1969, 98, NULL, NULL, NULL, 'storage/images/galery/e47be602-ea50-4811-8d88-d6b65f43db18.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1970, 98, NULL, NULL, NULL, 'storage/images/galery/610bd9fd-b71b-44e1-b22f-51ccbcd10328.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1971, 98, NULL, NULL, NULL, 'storage/images/galery/7ca4c169-2328-4181-999c-0ce19481aaec.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1972, 98, NULL, NULL, NULL, 'storage/images/galery/46223ac1-f34a-45da-ac83-4ceb9b553964.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1973, 98, NULL, NULL, NULL, 'storage/images/galery/c9b3e91c-63b1-4374-9a93-b9e39de6e4d2.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1974, 98, NULL, NULL, NULL, 'storage/images/galery/1a8cb47a-5e2b-4599-9e6c-3f7ccd169474.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1975, 98, NULL, NULL, NULL, 'storage/images/galery/9ed90ebf-b825-49f4-829b-c1f5dae56b72.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1976, 98, NULL, NULL, NULL, 'storage/images/galery/0234cad5-92db-4a7c-ae84-6e10ca5d4c8a.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1977, 98, NULL, NULL, NULL, 'storage/images/galery/417d4afd-293c-4875-afb2-bae1d0113a35.png', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33'),
(1978, 99, NULL, NULL, NULL, 'storage/images/galery/ab557880-8f6c-44bf-99ac-e156fb65c0fa.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1979, 99, NULL, NULL, NULL, 'storage/images/galery/44b41ceb-2d0d-4e2b-b6ad-465e6c82b714.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1980, 99, NULL, NULL, NULL, 'storage/images/galery/b16be5bf-4273-4a69-88ec-ca12567759c3.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1981, 99, NULL, NULL, NULL, 'storage/images/galery/0b61b6c9-7a80-4a55-be76-248b3f671f55.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1982, 99, NULL, NULL, NULL, 'storage/images/galery/236c8916-6d6f-44df-bb2d-4e497bf22ab9.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1983, 99, NULL, NULL, NULL, 'storage/images/galery/c5a56b24-0400-49fb-8a3d-5d3ead7a9517.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1984, 99, NULL, NULL, NULL, 'storage/images/galery/b026bd0b-eb35-42b1-8cba-8d8b2434bf21.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1985, 99, NULL, NULL, NULL, 'storage/images/galery/6c839e15-4070-41ad-b23f-7f8a7be996cb.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1986, 99, NULL, NULL, NULL, 'storage/images/galery/1599591a-b732-42b9-88af-5fbeced9def0.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1987, 99, NULL, NULL, NULL, 'storage/images/galery/14e06745-2778-4753-8a15-0e244ed61383.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1988, 99, NULL, NULL, NULL, 'storage/images/galery/ffd57509-f7b0-46e5-9d88-0d8741329101.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1989, 99, NULL, NULL, NULL, 'storage/images/galery/2b555aac-604f-43c8-9f87-d14e66a93677.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1990, 99, NULL, NULL, NULL, 'storage/images/galery/a819ed34-09f9-4f5a-a125-9498478fcc1c.png', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29'),
(1991, 100, NULL, NULL, NULL, 'storage/images/galery/3fcab28d-31fd-470f-a51c-cf8f1e01c584.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(1992, 100, NULL, NULL, NULL, 'storage/images/galery/c9ebce65-28ab-433d-9fdd-d2e0417e64f9.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(1993, 100, NULL, NULL, NULL, 'storage/images/galery/bddbba11-98f2-48ef-9209-1b0c5f9dcfeb.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(1994, 100, NULL, NULL, NULL, 'storage/images/galery/5ad203c4-dced-44af-9335-94e75550a139.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(1995, 100, NULL, NULL, NULL, 'storage/images/galery/579922e5-3390-4760-b3a0-a25fe346bbed.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(1996, 100, NULL, NULL, NULL, 'storage/images/galery/4c6b55b5-fc44-4a2d-98f4-893edba3f4bc.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(1997, 100, NULL, NULL, NULL, 'storage/images/galery/5b035413-fed0-4400-a945-8361a1d99868.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(1998, 100, NULL, NULL, NULL, 'storage/images/galery/c607a7a7-b9a1-4101-9fd1-44e708e830df.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(1999, 100, NULL, NULL, NULL, 'storage/images/galery/7305d773-28b4-4f68-ac80-118db4f76a7f.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(2000, 100, NULL, NULL, NULL, 'storage/images/galery/3198edae-4f43-4ef7-bf10-a031026af990.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(2001, 100, NULL, NULL, NULL, 'storage/images/galery/6f456ec2-395a-4250-94e7-11a4714b6505.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(2002, 100, NULL, NULL, NULL, 'storage/images/galery/f6c4bdea-64e3-480b-823c-aa63c094ab4a.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(2003, 100, NULL, NULL, NULL, 'storage/images/galery/63baedf5-1e3e-48b4-b426-1221e55c8819.png', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16'),
(2004, 87, NULL, NULL, NULL, 'storage/images/galery/f28d3026-7daa-4afe-b6ea-dc6260174a30.JPG', 1, 1, '2025-10-28 16:05:44', '2025-10-28 16:05:44'),
(2005, 87, NULL, NULL, NULL, 'storage/images/galery/aa18f379-481b-4f04-92bf-abe88b461d0c.JPG', 1, 1, '2025-10-28 16:05:44', '2025-10-28 16:05:44'),
(2006, 87, NULL, NULL, NULL, 'storage/images/galery/db755cf2-65af-4526-ae02-226bf3fa3229.JPG', 1, 1, '2025-10-28 16:05:44', '2025-10-28 16:05:44'),
(2007, 87, NULL, NULL, NULL, 'storage/images/galery/f294716d-46cd-4293-aaf8-967bc3d8b991.JPG', 1, 1, '2025-10-28 16:05:44', '2025-10-28 16:05:44'),
(2008, 87, NULL, NULL, NULL, 'storage/images/galery/7a05f0c8-65c4-48c9-8633-c5b56b989223.JPG', 1, 1, '2025-10-28 16:05:44', '2025-10-28 16:05:44'),
(2009, 87, NULL, NULL, NULL, 'storage/images/galery/3a50e8ae-e57c-4eec-a82b-d4a9f9a3d164.JPG', 1, 1, '2025-10-28 16:05:44', '2025-10-28 16:05:44'),
(2010, 87, NULL, NULL, NULL, 'storage/images/galery/61c093f4-08ba-447a-ae50-2be2174bc6e5.JPG', 1, 1, '2025-10-28 16:05:44', '2025-10-28 16:05:44'),
(2011, 87, NULL, NULL, NULL, 'storage/images/galery/bd649aa4-5ddc-4244-a3aa-5c879af214cc.png', 1, 1, '2025-10-28 16:05:44', '2025-10-28 16:05:44'),
(2012, 87, NULL, NULL, NULL, 'storage/images/galery/0cf78ab6-7171-4e2d-bc13-bae5efb5003f.png', 1, 1, '2025-10-28 16:05:44', '2025-10-28 16:05:44'),
(2013, 101, NULL, NULL, NULL, 'storage/images/galery/1ef68347-0fe6-4155-a0e4-5386a8f3519b.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2014, 101, NULL, NULL, NULL, 'storage/images/galery/10fc039a-3ade-456c-bb10-f59f7646b7e4.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2015, 101, NULL, NULL, NULL, 'storage/images/galery/7eb2a557-0460-4280-bb23-fbae6db03fc4.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2016, 101, NULL, NULL, NULL, 'storage/images/galery/6f658799-774a-4c4e-977d-723e4655521f.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2017, 101, NULL, NULL, NULL, 'storage/images/galery/4e598c5b-1b34-4648-ab23-b5d7ac50e54b.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2018, 101, NULL, NULL, NULL, 'storage/images/galery/99340091-836a-4186-be95-75bc2ccebfd7.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2019, 101, NULL, NULL, NULL, 'storage/images/galery/653ec8e8-1f58-4264-9090-cc76ebc80fdd.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2020, 101, NULL, NULL, NULL, 'storage/images/galery/3963d002-11bc-4c00-b823-5b2f3869195e.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2021, 101, NULL, NULL, NULL, 'storage/images/galery/ad27fb8e-753a-4b55-a680-fff02ec19d0c.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2022, 101, NULL, NULL, NULL, 'storage/images/galery/e6f859a3-8336-4a6d-ab2a-904e59c3f1b1.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2023, 101, NULL, NULL, NULL, 'storage/images/galery/fcce10bc-8965-4608-ae1f-83a82e10ab1a.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2024, 101, NULL, NULL, NULL, 'storage/images/galery/cf0d97f1-c804-4592-98f6-d7f58b330dcb.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2025, 101, NULL, NULL, NULL, 'storage/images/galery/14160602-16bb-4ed5-bc33-f1764a3b3fba.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2026, 101, NULL, NULL, NULL, 'storage/images/galery/dc8e2a3b-4286-45e1-918d-f6c796341f7c.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2027, 101, NULL, NULL, NULL, 'storage/images/galery/2c827306-7288-429a-a6d3-cad4047e76e0.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2028, 101, NULL, NULL, NULL, 'storage/images/galery/3320156c-63a8-4c96-931e-089ab4e87cf2.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2029, 101, NULL, NULL, NULL, 'storage/images/galery/52eef71a-9cfe-445e-bdea-8d728ea4d973.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2030, 101, NULL, NULL, NULL, 'storage/images/galery/f1c232e2-9e0b-4665-8cad-07e1085d8ae0.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2031, 101, NULL, NULL, NULL, 'storage/images/galery/b9ed672f-1536-4938-93e9-b315b9f3fd94.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2032, 101, NULL, NULL, NULL, 'storage/images/galery/b36cbeb3-cf39-4848-b601-444f2f10173c.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2033, 101, NULL, NULL, NULL, 'storage/images/galery/44e1360b-c45a-49b5-ab38-4441f275c90e.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2034, 101, NULL, NULL, NULL, 'storage/images/galery/a8d0527f-942c-4ede-9f50-5e0a3b681894.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2035, 101, NULL, NULL, NULL, 'storage/images/galery/e078d8d1-a8b9-4d25-acbd-8dcc0698ee76.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2036, 101, NULL, NULL, NULL, 'storage/images/galery/37e869f8-8691-4ebf-920e-50906242d9fb.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2037, 101, NULL, NULL, NULL, 'storage/images/galery/1645e7a3-40f9-4d70-aa88-9eb05acc07b9.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2038, 101, NULL, NULL, NULL, 'storage/images/galery/6d519641-d9c0-4cc0-b65d-2d9739756458.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2039, 101, NULL, NULL, NULL, 'storage/images/galery/36b1f8db-ec60-44aa-a68b-989c00a79753.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2040, 101, NULL, NULL, NULL, 'storage/images/galery/dea240da-2593-41c5-8346-e2bffb7b480a.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2041, 101, NULL, NULL, NULL, 'storage/images/galery/708f35ec-f02b-4295-9881-41557bd94693.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2042, 101, NULL, NULL, NULL, 'storage/images/galery/2d74e669-1082-4a69-a5de-1693dfec3426.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2043, 101, NULL, NULL, NULL, 'storage/images/galery/14d2af74-5723-47d8-ab07-817db75858fb.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2044, 101, NULL, NULL, NULL, 'storage/images/galery/96a144d8-e85c-484e-ab1c-71c0d67fe73f.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2045, 101, NULL, NULL, NULL, 'storage/images/galery/57a0c824-781c-4f61-aee0-cc7c4a619365.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2046, 101, NULL, NULL, NULL, 'storage/images/galery/ddec3db7-7270-485f-9596-66c53442e12c.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2047, 101, NULL, NULL, NULL, 'storage/images/galery/b51b93f7-43e2-49eb-80c8-ac4c54ed430f.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2048, 101, NULL, NULL, NULL, 'storage/images/galery/589fcbba-8209-4166-8afa-270d8811d84d.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2049, 101, NULL, NULL, NULL, 'storage/images/galery/7e8245cf-5f9c-4e90-b8c8-e2e4d1e5a19b.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2050, 101, NULL, NULL, NULL, 'storage/images/galery/8097d0c2-9ffb-47c9-bf8a-3debd0444ee7.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2051, 101, NULL, NULL, NULL, 'storage/images/galery/156f5072-9912-45f4-81b6-97d868dc28df.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2052, 101, NULL, NULL, NULL, 'storage/images/galery/695d4045-4336-47ba-ad71-efeb9834dcd0.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2053, 101, NULL, NULL, NULL, 'storage/images/galery/fed08ad8-6f8c-4495-b054-207575830a42.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2054, 101, NULL, NULL, NULL, 'storage/images/galery/f21fdd0c-b900-4484-9d30-23e0dcfa2f31.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2055, 101, NULL, NULL, NULL, 'storage/images/galery/ba3b9f2b-7397-423f-b44d-0bc4cfd1df5d.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2056, 101, NULL, NULL, NULL, 'storage/images/galery/6729ccbf-8e85-45d3-b2af-e5406b0501fc.png', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45'),
(2057, 102, NULL, NULL, NULL, 'storage/images/galery/648c9261-4363-464b-a5d9-608a502f763d.jpg', 1, 1, '2025-10-28 16:30:23', '2025-10-28 16:30:23'),
(2058, 102, NULL, NULL, NULL, 'storage/images/galery/edf438d5-109a-46be-9b66-92da04e6d0f1.jpg', 1, 1, '2025-10-28 16:30:23', '2025-10-28 16:30:23'),
(2059, 102, NULL, NULL, NULL, 'storage/images/galery/c4d4eeb2-f6e8-4cb5-a280-e20df813abed.jpg', 1, 1, '2025-10-28 16:30:23', '2025-10-28 16:30:23'),
(2060, 102, NULL, NULL, NULL, 'storage/images/galery/8b1f00a8-e979-4b49-8c03-27eb8a40a079.jpg', 1, 1, '2025-10-28 16:30:23', '2025-10-28 16:30:23'),
(2061, 102, NULL, NULL, NULL, 'storage/images/galery/0db3eec5-c9f4-4b3b-b75a-8a46c9ca35a1.jpg', 1, 1, '2025-10-28 16:30:23', '2025-10-28 16:30:23'),
(2062, 102, NULL, NULL, NULL, 'storage/images/galery/6c04f546-6022-40e2-9479-b7346d7e65d9.jpg', 1, 1, '2025-10-28 16:30:23', '2025-10-28 16:30:23'),
(2063, 102, NULL, NULL, NULL, 'storage/images/galery/545e804a-ccef-4dbc-a953-12cb0ba198cf.jpg', 1, 1, '2025-10-28 16:30:23', '2025-10-28 16:30:23'),
(2064, 102, NULL, NULL, NULL, 'storage/images/galery/9750a12a-025c-45fb-a43a-4f99448e4663.jpg', 1, 1, '2025-10-28 16:30:23', '2025-10-28 16:30:23'),
(2065, 102, NULL, NULL, NULL, 'storage/images/galery/d8a787c1-3408-4cd9-896a-44712e4136f1.jpg', 1, 1, '2025-10-28 16:30:23', '2025-10-28 16:30:23'),
(2102, 86, NULL, NULL, NULL, 'storage/images/galery/5ee648f4-cdb5-4be2-b013-42eedd93b8b8.png', 1, 1, '2025-12-01 18:26:47', '2025-12-01 18:26:47'),
(2103, 86, NULL, NULL, NULL, 'storage/images/galery/e30237ff-f40d-4862-bb2d-8c5e16dfd97c.png', 1, 1, '2025-12-01 18:26:47', '2025-12-01 18:26:47'),
(2104, 86, NULL, NULL, NULL, 'storage/images/galery/1cfda012-49ec-464c-9de6-c50545a6b29f.png', 1, 1, '2025-12-01 18:26:47', '2025-12-01 18:26:47'),
(2105, 86, NULL, NULL, NULL, 'storage/images/galery/d6dc18c3-8ef6-4dd5-8144-e47c89fe9f64.png', 1, 1, '2025-12-01 18:26:47', '2025-12-01 18:26:47'),
(2106, 86, NULL, NULL, NULL, 'storage/images/galery/47b33536-5a96-4772-a2b4-01b34b36fa97.png', 1, 1, '2025-12-01 18:26:47', '2025-12-01 18:26:47'),
(2107, 86, NULL, NULL, NULL, 'storage/images/galery/a8e0ca24-e4c4-460c-af93-c012a656b2e7.png', 1, 1, '2025-12-01 18:26:47', '2025-12-01 18:26:47'),
(2108, 86, NULL, NULL, NULL, 'storage/images/galery/2d652d9d-f108-4a19-85bc-8254be9082bd.png', 1, 1, '2025-12-01 18:26:47', '2025-12-01 18:26:47'),
(2109, 86, NULL, NULL, NULL, 'storage/images/galery/afc32604-4c54-4880-bdb6-578eb6d258e6.png', 1, 1, '2025-12-01 18:26:47', '2025-12-01 18:26:47'),
(2110, 86, NULL, NULL, NULL, 'storage/images/galery/406925c6-faed-471d-b57f-52229ab809c6.png', 1, 1, '2025-12-01 18:26:47', '2025-12-01 18:26:47'),
(2111, 86, NULL, NULL, NULL, 'storage/images/galery/f9ab1ce1-a192-40fb-a7f5-532e6641de8d.png', 1, 1, '2025-12-01 18:26:47', '2025-12-01 18:26:47'),
(2136, 105, NULL, NULL, NULL, 'storage/images/galery/dc1ebbe8-f99c-4848-b7c3-b16ecca96eda.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2137, 105, NULL, NULL, NULL, 'storage/images/galery/ed796f58-eaf7-4333-8c20-422db1b57a7e.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2138, 105, NULL, NULL, NULL, 'storage/images/galery/79d80648-bdf2-414e-b8a2-2fd1bf83a951.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2139, 105, NULL, NULL, NULL, 'storage/images/galery/72277db9-b3c0-4079-ba65-6f36f1895dd3.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2140, 105, NULL, NULL, NULL, 'storage/images/galery/9c288f42-27e0-4727-ae83-0c63376bb496.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2141, 105, NULL, NULL, NULL, 'storage/images/galery/25504400-0f86-4489-bf55-d37242c58c6a.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2142, 105, NULL, NULL, NULL, 'storage/images/galery/fd3b85ec-aa87-4953-9a20-9597bc5c5b72.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2143, 105, NULL, NULL, NULL, 'storage/images/galery/c3b43c16-aeb1-4a8d-a555-b9a84f70b5ac.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2144, 105, NULL, NULL, NULL, 'storage/images/galery/d714812d-99e3-4523-a24b-9c84e94592b7.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2145, 105, NULL, NULL, NULL, 'storage/images/galery/2ed9ef9f-3e94-4d29-b3ae-a73398729164.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2146, 105, NULL, NULL, NULL, 'storage/images/galery/42d514d5-104a-4de1-bf32-e4cbd9056c7e.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2147, 105, NULL, NULL, NULL, 'storage/images/galery/b0d0b4ab-c1e7-4940-9ca4-7d9a61ab60e3.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2148, 105, NULL, NULL, NULL, 'storage/images/galery/8a8c1e2d-6c7c-43a4-a052-f6ee403fcb5c.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2149, 105, NULL, NULL, NULL, 'storage/images/galery/ccc22e93-8f0e-4d2f-971a-b22abe710e5c.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2150, 105, NULL, NULL, NULL, 'storage/images/galery/4fbdd645-a882-42ed-b2c0-aaee53a6e6f3.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2151, 105, NULL, NULL, NULL, 'storage/images/galery/367d9f75-669f-48c4-b8a1-58b8178fc956.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2152, 105, NULL, NULL, NULL, 'storage/images/galery/0fbf7cdf-46ab-468e-8a28-290e100dc846.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2153, 105, NULL, NULL, NULL, 'storage/images/galery/49553ba7-918b-40a7-9711-511cecc5d1e9.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2154, 105, NULL, NULL, NULL, 'storage/images/galery/46afc925-8888-4f00-81bf-926670c8c8f9.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2155, 105, NULL, NULL, NULL, 'storage/images/galery/9bdfc023-88e2-4e18-bc60-d184a165eea7.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2156, 105, NULL, NULL, NULL, 'storage/images/galery/36ca79b0-697f-427e-92aa-f342feb6fd0a.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2157, 105, NULL, NULL, NULL, 'storage/images/galery/7258c9b2-5a2f-4858-acdf-69ae4d028dd1.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2158, 105, NULL, NULL, NULL, 'storage/images/galery/206a64cc-ebe2-4d32-b073-7bc0a0842e2c.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2159, 105, NULL, NULL, NULL, 'storage/images/galery/a546f20b-0073-49a4-90ca-4edc701b76de.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2160, 105, NULL, NULL, NULL, 'storage/images/galery/c2f31593-3233-4c81-b902-fc4985f84482.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2161, 105, NULL, NULL, NULL, 'storage/images/galery/6417c6be-568d-4554-8f7b-d3231934fbee.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2162, 105, NULL, NULL, NULL, 'storage/images/galery/a5918330-d264-4756-9520-bad4b2be2d21.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2163, 105, NULL, NULL, NULL, 'storage/images/galery/0292fde7-064b-47b9-ba99-da2e948eb76d.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2164, 105, NULL, NULL, NULL, 'storage/images/galery/93804db0-a0a2-4032-9496-00507c7ac7bc.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2165, 105, NULL, NULL, NULL, 'storage/images/galery/a669a440-8ed9-44b3-85d0-15c9056626ee.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2166, 105, NULL, NULL, NULL, 'storage/images/galery/47235c03-291e-4dc1-a3c8-e31e9adf389a.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2167, 105, NULL, NULL, NULL, 'storage/images/galery/9371b1c0-643f-463d-b1d7-879ab28ab81c.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2168, 105, NULL, NULL, NULL, 'storage/images/galery/c77676d1-83f4-472a-9949-5afd6195c3e6.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2169, 105, NULL, NULL, NULL, 'storage/images/galery/aaf0133d-3896-42bc-8d3c-49b7d7a6eed7.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2170, 105, NULL, NULL, NULL, 'storage/images/galery/8ec65b08-c7d9-4d8f-92be-991b98e63b10.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2171, 105, NULL, NULL, NULL, 'storage/images/galery/7d988115-70e1-413b-9264-3a493b5322ae.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2172, 105, NULL, NULL, NULL, 'storage/images/galery/fa2b2682-3ec9-492b-9bfc-1c03534f6629.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2173, 105, NULL, NULL, NULL, 'storage/images/galery/709f995e-5ee8-42eb-bc07-7116b66d5480.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2174, 105, NULL, NULL, NULL, 'storage/images/galery/f7e504bc-f2c0-4a62-a9de-58ee8ebe4517.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2175, 105, NULL, NULL, NULL, 'storage/images/galery/b0090070-0a33-45e5-b534-c95d50ddaf16.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2176, 105, NULL, NULL, NULL, 'storage/images/galery/a4e31be3-e3fc-4918-abc9-8937b8a8c2ae.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2177, 105, NULL, NULL, NULL, 'storage/images/galery/60045783-acbf-4de3-b907-d0d9d059006d.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2178, 105, NULL, NULL, NULL, 'storage/images/galery/4443a18d-7fc6-4bad-a328-6f4e30a1359b.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2179, 105, NULL, NULL, NULL, 'storage/images/galery/404a8b79-9608-4b8c-833f-58905f296371.png', 1, 1, '2025-12-19 17:37:49', '2025-12-19 17:37:49'),
(2180, 106, NULL, NULL, NULL, 'storage/images/galery/3f467d26-131c-4f32-9a0e-79c1d569818f.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2181, 106, NULL, NULL, NULL, 'storage/images/galery/2fd7f2e4-4b99-4643-8b9f-6442386a8820.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2182, 106, NULL, NULL, NULL, 'storage/images/galery/3e3fdda6-b566-46f5-8af2-2c1129cde2aa.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2183, 106, NULL, NULL, NULL, 'storage/images/galery/7dad4277-5afd-4a50-b3da-ddcdaa0243df.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2184, 106, NULL, NULL, NULL, 'storage/images/galery/0a2c8638-bdf6-42f9-92a8-0ecee377e90e.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2185, 106, NULL, NULL, NULL, 'storage/images/galery/59a227c5-10bb-48c3-9c51-178e99ab20ce.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2186, 106, NULL, NULL, NULL, 'storage/images/galery/9ac7be0c-337e-4766-81ff-7760abbcd3a4.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2187, 106, NULL, NULL, NULL, 'storage/images/galery/a87fbafe-a115-4cb3-a7e6-46e9f82e751f.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2188, 106, NULL, NULL, NULL, 'storage/images/galery/d0dae0c1-0c39-475d-b72b-4a65535c11f0.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2189, 106, NULL, NULL, NULL, 'storage/images/galery/d12077f4-8aea-4a6a-adeb-c994d1ec73a7.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2190, 106, NULL, NULL, NULL, 'storage/images/galery/e2c2d751-2ca1-4578-8c22-454805098646.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2191, 106, NULL, NULL, NULL, 'storage/images/galery/b7820d8d-888c-40ed-a876-58b4c639d318.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2192, 106, NULL, NULL, NULL, 'storage/images/galery/a371bab8-1331-42eb-b3f5-4a84628d81cd.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2193, 106, NULL, NULL, NULL, 'storage/images/galery/054a5590-85d9-4d89-a9c9-196a4b666ae2.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2194, 106, NULL, NULL, NULL, 'storage/images/galery/5e58f472-b18c-49c5-81f1-476678671815.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2195, 106, NULL, NULL, NULL, 'storage/images/galery/e1392509-9b64-484a-8bcf-56435bc52fa2.png', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33'),
(2196, 107, NULL, NULL, NULL, 'storage/images/galery/94730166-91bc-4247-9aee-de3a51cc126a.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2197, 107, NULL, NULL, NULL, 'storage/images/galery/10cfdb9e-aad2-4036-9e42-7bf955cfd0fd.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2198, 107, NULL, NULL, NULL, 'storage/images/galery/b6a25f1f-d722-4730-a078-f556cddb2e76.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2199, 107, NULL, NULL, NULL, 'storage/images/galery/4140fb13-f385-4f20-bda6-941b988b2e26.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2200, 107, NULL, NULL, NULL, 'storage/images/galery/d9209c96-ff29-4380-a0ca-3a7c06ea6bfe.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2201, 107, NULL, NULL, NULL, 'storage/images/galery/0c9c4675-88c6-4ffc-b448-eef53b600b07.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2202, 107, NULL, NULL, NULL, 'storage/images/galery/9aec0c44-fd8e-4b10-9602-e048e9faad06.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2203, 107, NULL, NULL, NULL, 'storage/images/galery/513b6201-93b5-4b7d-ada7-7ee2a1c26b89.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2204, 107, NULL, NULL, NULL, 'storage/images/galery/2429ec29-6a0c-4352-8090-993d6dab8c4b.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2205, 107, NULL, NULL, NULL, 'storage/images/galery/66f86202-1911-45fb-8ecd-d97727015568.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2206, 107, NULL, NULL, NULL, 'storage/images/galery/a5819731-c2a9-4ee3-9c40-54b652b7471c.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2207, 107, NULL, NULL, NULL, 'storage/images/galery/45901ac4-6066-4149-ae04-92bbc592351b.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2208, 107, NULL, NULL, NULL, 'storage/images/galery/5c35723c-03c4-41a8-a686-dce3efeb8ae9.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2209, 107, NULL, NULL, NULL, 'storage/images/galery/46fea8ae-fdea-4a5f-aa10-f721ee1379ed.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2210, 107, NULL, NULL, NULL, 'storage/images/galery/d53c6a4f-5ae7-4c51-b94d-9011e3513a8e.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2211, 107, NULL, NULL, NULL, 'storage/images/galery/a849b9c5-f1e1-4e06-b5c0-fd91fc317180.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2212, 107, NULL, NULL, NULL, 'storage/images/galery/75e8cbff-f8a3-48f8-81f6-d85d964dfc44.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2213, 107, NULL, NULL, NULL, 'storage/images/galery/033e84e0-01ee-43fd-906f-6cb44de2fedc.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2214, 107, NULL, NULL, NULL, 'storage/images/galery/6a67b8aa-3af4-4c66-983b-7d35955ee7b9.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2215, 107, NULL, NULL, NULL, 'storage/images/galery/c62be060-fcc9-45ca-933b-b7f51f4fa450.png', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21'),
(2216, 108, NULL, NULL, NULL, 'storage/images/galery/ec251d1a-837c-408a-8edf-00bc905b662d.PNG', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2217, 108, NULL, NULL, NULL, 'storage/images/galery/b8a2fc3c-4893-4bf9-82e4-92f89accdd21.PNG', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2218, 108, NULL, NULL, NULL, 'storage/images/galery/23bb3d42-6d3c-4e26-82de-10a20d52667b.PNG', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2219, 108, NULL, NULL, NULL, 'storage/images/galery/019128b4-3b43-43f1-9710-64e936186eff.PNG', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2220, 108, NULL, NULL, NULL, 'storage/images/galery/ac37c2e4-adb5-4166-a00a-6b113e92037e.PNG', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2221, 108, NULL, NULL, NULL, 'storage/images/galery/c110e2b4-b74a-431c-b8cd-80b7da7a8950.PNG', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2222, 108, NULL, NULL, NULL, 'storage/images/galery/7d97b40b-ccdd-4b78-89c3-511418dd9a2f.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2223, 108, NULL, NULL, NULL, 'storage/images/galery/54b1fa0e-d1ee-4925-ab6d-63b8af44c725.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2224, 108, NULL, NULL, NULL, 'storage/images/galery/e8df2771-bcae-4dd5-b5a0-014f209154e9.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2225, 108, NULL, NULL, NULL, 'storage/images/galery/04ea3f42-dca6-46bd-87ee-794b89c6e596.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2226, 108, NULL, NULL, NULL, 'storage/images/galery/1db05f6e-e899-4e93-a4cf-e5de65cce18c.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2227, 108, NULL, NULL, NULL, 'storage/images/galery/16d23355-4a64-426a-9370-e464bb44ba13.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2228, 108, NULL, NULL, NULL, 'storage/images/galery/50d96c1f-1e9d-4e7d-8cff-5611f0b434da.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2229, 108, NULL, NULL, NULL, 'storage/images/galery/94248eee-a638-4edc-83e3-c6473aef466a.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2230, 108, NULL, NULL, NULL, 'storage/images/galery/60516265-0bda-4c09-a0a3-0e110dfdfa70.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2231, 108, NULL, NULL, NULL, 'storage/images/galery/3a80a5df-c5af-4db8-9e95-e1463c11b46c.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2232, 108, NULL, NULL, NULL, 'storage/images/galery/56e7fedf-6d32-4baf-93c0-24f9e27f9fda.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15');
INSERT INTO `galeries` (`id`, `product_id`, `valor`, `descripcion`, `color`, `imagen`, `visible`, `status`, `created_at`, `updated_at`) VALUES
(2233, 108, NULL, NULL, NULL, 'storage/images/galery/1cde32f7-e2f3-4174-9925-0054344824e1.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2234, 108, NULL, NULL, NULL, 'storage/images/galery/1bcbcf89-c6dd-478e-b896-92ecccbf4ac1.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2235, 108, NULL, NULL, NULL, 'storage/images/galery/fc8e28b5-8212-47c2-b417-2f69c072ce6c.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2236, 108, NULL, NULL, NULL, 'storage/images/galery/2f503cf1-3082-4385-87a3-0acea5ab22f3.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2237, 108, NULL, NULL, NULL, 'storage/images/galery/164607ee-dd6a-4c76-a1d2-d702d7f3ae6c.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2238, 108, NULL, NULL, NULL, 'storage/images/galery/b84c8271-c43f-43cd-85ce-6f3001cf1fe6.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2239, 108, NULL, NULL, NULL, 'storage/images/galery/882f5c7f-7055-4560-bb15-c2df7693590f.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2240, 108, NULL, NULL, NULL, 'storage/images/galery/c48002f4-0311-4a79-b708-498b826f1d48.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2241, 108, NULL, NULL, NULL, 'storage/images/galery/09d2cc06-8914-4694-aff2-2177c3bc7b23.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2242, 108, NULL, NULL, NULL, 'storage/images/galery/0b82474e-e82b-40c7-9df5-2a1ceda7147a.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2243, 108, NULL, NULL, NULL, 'storage/images/galery/2642de75-c24f-4aac-adbb-2fba3e98b245.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2244, 108, NULL, NULL, NULL, 'storage/images/galery/ff3a8349-77aa-4e2c-b434-d311d7520930.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2245, 108, NULL, NULL, NULL, 'storage/images/galery/a1ed0fd7-fa14-4149-8c54-3ecc369e1f42.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2246, 108, NULL, NULL, NULL, 'storage/images/galery/868f42b2-257e-4e2e-89eb-c14e27ef2307.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2247, 108, NULL, NULL, NULL, 'storage/images/galery/00aaff0e-fdbc-4641-8c3b-71ca35143986.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2248, 108, NULL, NULL, NULL, 'storage/images/galery/1720f041-9e92-49ae-864b-fa5f1d79806e.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2249, 108, NULL, NULL, NULL, 'storage/images/galery/1cfc4a64-c4a5-436a-bc5a-d9132b01075b.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2250, 108, NULL, NULL, NULL, 'storage/images/galery/765c8e2d-3c19-4c56-afc2-fd4b4c78a419.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2251, 108, NULL, NULL, NULL, 'storage/images/galery/c7085816-6a39-459b-a963-03b46cf2bb95.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2252, 108, NULL, NULL, NULL, 'storage/images/galery/10479dfd-244f-4703-a3df-2f9139b6a4f0.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2253, 108, NULL, NULL, NULL, 'storage/images/galery/104e4610-5830-4cbc-9f0c-3cd4fda6c22e.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2254, 108, NULL, NULL, NULL, 'storage/images/galery/bac201f5-b4c2-497f-b59e-206dc98138d6.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2255, 108, NULL, NULL, NULL, 'storage/images/galery/6b0d1db0-7db3-4d9c-ad31-6af2074372fa.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2256, 108, NULL, NULL, NULL, 'storage/images/galery/cf42100f-7447-42e2-8c83-af386961b63c.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2257, 108, NULL, NULL, NULL, 'storage/images/galery/6ae2c910-1620-4fa7-8bec-90c70972e167.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2258, 108, NULL, NULL, NULL, 'storage/images/galery/90c12be0-f4e9-46f9-8849-e8a326b428fe.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2259, 108, NULL, NULL, NULL, 'storage/images/galery/1ddb7ec5-5adc-45cb-90fd-e24004e986f3.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2260, 108, NULL, NULL, NULL, 'storage/images/galery/dd891209-437a-44eb-9bab-f739441e1e49.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2261, 108, NULL, NULL, NULL, 'storage/images/galery/d987815b-cb15-4d82-8362-91f9283d6641.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2262, 108, NULL, NULL, NULL, 'storage/images/galery/c1c6c1fc-dfaa-4442-95ff-d22188513508.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2263, 108, NULL, NULL, NULL, 'storage/images/galery/dffe346e-8f89-4cee-a395-94d522c51489.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2264, 108, NULL, NULL, NULL, 'storage/images/galery/69fa0d5e-4f22-4c16-8a76-ceddf1b7abfe.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2265, 108, NULL, NULL, NULL, 'storage/images/galery/6150314c-0729-41a9-bbc7-d3bae590d3d0.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2266, 108, NULL, NULL, NULL, 'storage/images/galery/fc5014d6-56b0-49ae-be6b-b30ed52670dc.png', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15'),
(2267, 108, NULL, NULL, NULL, 'storage/images/galery/045d15e4-af35-4859-b07e-8c3960a0747f.png', 1, 1, '2025-12-19 17:55:16', '2025-12-19 17:55:16'),
(2268, 108, NULL, NULL, NULL, 'storage/images/galery/8cee2008-9d37-4754-b0be-f7d78c30d398.png', 1, 1, '2025-12-19 17:55:16', '2025-12-19 17:55:16'),
(2269, 108, NULL, NULL, NULL, 'storage/images/galery/0fb988e8-8868-4023-a477-8517e676bb38.png', 1, 1, '2025-12-19 17:55:16', '2025-12-19 17:55:16'),
(2270, 104, NULL, NULL, NULL, 'storage/images/galery/20151e55-ef30-4f48-8c3b-06ba7181006f.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2271, 104, NULL, NULL, NULL, 'storage/images/galery/18cb9e43-d47c-40e3-978e-eaf36aa8bdb7.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2272, 104, NULL, NULL, NULL, 'storage/images/galery/c64c1273-0091-4d54-b0af-1af0d3b69113.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2273, 104, NULL, NULL, NULL, 'storage/images/galery/7b7fa11d-9ebc-4ca1-9ff4-8e87721afba3.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2274, 104, NULL, NULL, NULL, 'storage/images/galery/746283cc-b4e6-4bf9-a5bf-da9821c789d8.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2275, 104, NULL, NULL, NULL, 'storage/images/galery/d10e362b-3009-4069-95c5-21cb57d287f2.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2276, 104, NULL, NULL, NULL, 'storage/images/galery/fe6315db-a8fe-48a2-bcc6-5d7f30c50578.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2277, 104, NULL, NULL, NULL, 'storage/images/galery/d1bc9efa-dde7-403b-b8e1-22ed5b75be1a.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2278, 104, NULL, NULL, NULL, 'storage/images/galery/ba6e50d1-b25d-411b-ba98-9da90b8f1297.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2279, 104, NULL, NULL, NULL, 'storage/images/galery/f4c988d1-0415-48ac-8b92-4a2d234319b9.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2280, 104, NULL, NULL, NULL, 'storage/images/galery/6b972cb8-5946-47f2-a7f5-7c2217cdac60.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2281, 104, NULL, NULL, NULL, 'storage/images/galery/e1d71d19-d797-41a8-8661-7cec7541fa38.png', 1, 1, '2026-01-26 19:54:28', '2026-01-26 19:54:28'),
(2282, 103, NULL, NULL, NULL, 'storage/images/galery/7023d6a9-808c-4a4a-88ab-e00318dc9169.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2283, 103, NULL, NULL, NULL, 'storage/images/galery/cea3d21d-cf3a-4c44-8910-6dc0039109da.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2284, 103, NULL, NULL, NULL, 'storage/images/galery/ff5bf3ee-ccd8-466a-b9a4-2108efe7abc4.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2285, 103, NULL, NULL, NULL, 'storage/images/galery/3647fc01-a9b7-4503-bcf0-f8811a2fdcea.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2286, 103, NULL, NULL, NULL, 'storage/images/galery/fbfa5173-912e-4be4-a0cc-79d4b860a49e.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2287, 103, NULL, NULL, NULL, 'storage/images/galery/b575e9f2-21a5-4079-9ec7-6d667c687ee2.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2288, 103, NULL, NULL, NULL, 'storage/images/galery/2206e59a-55a5-4968-af9f-4f9bf7507dd0.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2289, 103, NULL, NULL, NULL, 'storage/images/galery/1c334303-fa8a-4b47-9245-9745c4accc74.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2290, 103, NULL, NULL, NULL, 'storage/images/galery/e4e3912c-f5d8-4b98-b1e0-0649d53cf842.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2291, 103, NULL, NULL, NULL, 'storage/images/galery/853a059a-2adc-437d-ac65-ccd6802465a2.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2292, 103, NULL, NULL, NULL, 'storage/images/galery/4f44346a-2862-4eaf-8de9-4b661cbc5c48.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2293, 103, NULL, NULL, NULL, 'storage/images/galery/ac8f1d5d-b7e9-4f3d-9408-1b7afe5272a9.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2294, 103, NULL, NULL, NULL, 'storage/images/galery/f247a658-786c-4e8f-929c-c10f0740b21b.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2295, 103, NULL, NULL, NULL, 'storage/images/galery/cb59dd3b-7219-4804-b843-b8e1ca3b0cbb.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2296, 103, NULL, NULL, NULL, 'storage/images/galery/3a4775ec-1c87-452a-b7e2-6e7c1be54fc6.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2297, 103, NULL, NULL, NULL, 'storage/images/galery/cf256b02-d3fd-43ed-a383-4c2d014d663f.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2298, 103, NULL, NULL, NULL, 'storage/images/galery/201c42a8-a3aa-41d4-b910-51bd511bf965.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2299, 103, NULL, NULL, NULL, 'storage/images/galery/741a4f5f-1131-4147-9551-1f4a8f7578a5.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2300, 103, NULL, NULL, NULL, 'storage/images/galery/63f25c1a-fe8c-4d27-877b-ba73cebcfacb.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2301, 103, NULL, NULL, NULL, 'storage/images/galery/5e5e5f9d-f09c-400d-a5c3-187859536586.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2302, 103, NULL, NULL, NULL, 'storage/images/galery/8547c865-616b-4bf8-bc19-e175b6743f58.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2303, 103, NULL, NULL, NULL, 'storage/images/galery/f4fd3c3e-958b-43a1-ab6c-a4fda5baa8d3.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2304, 103, NULL, NULL, NULL, 'storage/images/galery/274ecc77-7033-4320-998d-471c3e4180e7.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2305, 103, NULL, NULL, NULL, 'storage/images/galery/74aceea8-86ff-454a-831b-9ca612ad7f47.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2306, 103, NULL, NULL, NULL, 'storage/images/galery/1abbcf84-9ec3-4665-905d-f5457cde0bb0.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29'),
(2307, 103, NULL, NULL, NULL, 'storage/images/galery/98a1a4fe-7d09-4ae9-98a7-804e06907577.png', 1, 1, '2026-01-26 20:03:29', '2026-01-26 20:03:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generals`
--

CREATE TABLE `generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `cellphone` varchar(255) DEFAULT NULL,
  `office_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `schedule` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `form_email` varchar(255) DEFAULT NULL,
  `business_hours` varchar(255) DEFAULT NULL,
  `mensaje_whatsapp` varchar(255) DEFAULT NULL,
  `aboutus` text DEFAULT NULL,
  `htop` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `generals`
--

INSERT INTO `generals` (`id`, `address`, `inside`, `district`, `city`, `country`, `cellphone`, `office_phone`, `email`, `schedule`, `facebook`, `instagram`, `youtube`, `twitter`, `linkedin`, `tiktok`, `whatsapp`, `form_email`, `business_hours`, `mensaje_whatsapp`, `aboutus`, `htop`, `created_at`, `updated_at`) VALUES
(1, 'Los Cocoteros 298 Urb. La Encantada deVilla Chorrillos', NULL, 'Chorrillos', 'Lima', 'Perú', '51932073345', '5555-1025', 'jmoreno@mprealstate.com', 'De Lunes a Viernes de 9:00am a 6:00pm, Sábados de 9:00am a 1:00pm', 'https://www.facebook.com/share/16PsF9EM7M/', 'https://www.instagram.com/mp.realstate?utm_source=qr&igsh=MW5kcjhuaW80NHp2dg%3D%3D', 'https://www.youtube.com/@mp_realstate?si=DavGUaD-gxnQA6lT', NULL, NULL, 'https://www.tiktok.com/@mp_realstate?_t=ZS-8wi3JctaopF&_r=1', '51932073345', 'info@ventura.com.pe', 'horas', 'Hola, vengo de la página MP Real State y necesito información', 'Somos una empresa dedicada a la gestión integral de propiedades de lujo en Lima, ofreciendo una experiencia inigualable tanto para huéspedes como para propietarios.', 'Descubre los mejores productos y promociones en Deco Tab', '2025-04-16 20:53:19', '2025-06-09 18:07:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_views`
--

CREATE TABLE `home_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title1section` varchar(255) DEFAULT NULL,
  `description1section` text DEFAULT NULL,
  `url_image1section` varchar(255) DEFAULT NULL,
  `title2section` varchar(255) DEFAULT NULL,
  `description2section` text DEFAULT NULL,
  `url_image2section` varchar(255) DEFAULT NULL,
  `title3section` varchar(255) DEFAULT NULL,
  `description3section` text DEFAULT NULL,
  `url_image3section` varchar(255) DEFAULT NULL,
  `title4section` varchar(255) DEFAULT NULL,
  `description4section` text DEFAULT NULL,
  `url_image4section` varchar(255) DEFAULT NULL,
  `title5section` varchar(255) DEFAULT NULL,
  `description5section` text DEFAULT NULL,
  `footer5section` varchar(255) DEFAULT NULL,
  `title6section` varchar(255) DEFAULT NULL,
  `description6section` text DEFAULT NULL,
  `title7section` varchar(255) DEFAULT NULL,
  `description7section` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `home_views`
--

INSERT INTO `home_views` (`id`, `title1section`, `description1section`, `url_image1section`, `title2section`, `description2section`, `url_image2section`, `title3section`, `description3section`, `url_image3section`, `title4section`, `description4section`, `url_image4section`, `title5section`, `description5section`, `footer5section`, `title6section`, `description6section`, `title7section`, `description7section`, `created_at`, `updated_at`) VALUES
(1, 'Propiedades que inspiran, experiencias que marcan la diferencia.', 'Ahora puedes disfrutar de Lima de la mejor manera a través de nuestras propiedades exclusivas.', 'url_de_la_imagen_1', 'Con Ventura, estás donde quieres estar', 'Con 6 años de experiencia gestionando inmuebles en las mejores zonas de Lima, hemos desarrollado un servicio que responde a la creciente demanda de Airbnbs en la ciudad. Somos un equipo comprometido con crear experiencias de alquiler óptimas, garantizando rentabilidad para nuestros propietarios y máximo confort para nuestros huéspedes.', 'url_de_la_imagen_2', 'Lo que dicen nuestros clientes', 'Descubre lo que nuestros huéspedes y propietarios opinan de nuestro servicio.', 'url_de_la_imagen_3', 'Gestionar tu propiedad de alquiler a corto plazo ahora es más fácil.', 'Más rentabilidad, menos estrés. Te ayudamos a maximizar tus ingresos y disfrutar de los beneficios de alquilar tu propiedad sin estrés.', 'url_de_la_imagen_4', '¿Quieres que pongamos tu propiedad en alquiler?', 'Comparte aquí tu correo electrónico y te daremos más información.', 'Únete a 10,000+ propietarios más en nuestra comunidad inmobiliaria.', '¿Tienes alguna pregunta o necesitas más información?', 'Llena este formulario y nos pondremos en contacto contigo.', '¡Conversemos!', 'Para cualquier duda o consulta, ponte en contacto con nosotros.', '2025-04-16 20:53:19', '2025-04-16 20:53:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indices`
--

CREATE TABLE `indices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_reclamaciones`
--

CREATE TABLE `libro_reclamaciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `type_document` varchar(255) DEFAULT NULL,
  `number_document` varchar(255) DEFAULT NULL,
  `cellphone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `typeitem` varchar(255) DEFAULT NULL,
  `amounttotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `category_product_service` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type_claim` varchar(255) DEFAULT NULL,
  `date_incident` varchar(255) DEFAULT NULL,
  `address_incident` varchar(255) DEFAULT NULL,
  `detail_incident` text DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `service_product` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `comunication` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`id`, `full_name`, `email`, `phone`, `message`, `service_product`, `source`, `status`, `is_read`, `comunication`, `created_at`, `updated_at`) VALUES
(1, 'Nombre 1 Apellidos', 'usuario1@mundoweb.pe', '555-555-0001', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32 1', '', '', 1, 1, '', '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(2, 'Nombre 2 Apellidos', 'usuario2@mundoweb.pe', '555-555-0002', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32 2', '', '', 0, 0, '', '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(3, 'Nombre 3 Apellidos', 'usuario3@mundoweb.pe', '555-555-0003', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32 3', '', '', 1, 1, '', '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(4, 'Nombre 4 Apellidos', 'usuario4@mundoweb.pe', '555-555-0004', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32 4', '', '', 0, 1, '', '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(5, 'Nombre 5 Apellidos', 'usuario5@mundoweb.pe', '555-555-0005', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32 5', '', '', 1, 1, '', '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(6, 'Diego Roberth Martinez Rayme', 'diego.martinez.r@tecsup.edu.pe', '+51917994653', 'asdasd', NULL, 'contacto', 0, 1, NULL, '2025-05-19 13:54:22', '2025-07-01 16:48:37'),
(7, 'Diego Martinez.R', 'diegomartinez1996x@gmail.com', '+51917994653', 'sasdasd', NULL, 'contacto', 0, 0, NULL, '2025-05-19 13:56:08', '2025-07-01 16:48:40'),
(8, 'Diego Roberth Martinez Rayme', 'diego.martinez.r@tecsup.edu.pe', '+51917994653', 'aaaa', NULL, 'contacto', 0, 1, NULL, '2025-05-19 14:07:32', '2025-07-01 16:48:44'),
(9, 'Julio Izquierdo Mejia', 'julio.izquierdo.mejia@gmail.com', '+51998913140', 'Quiero trabajo', NULL, 'trabajaconnosotros', 0, 1, '06813928', '2025-05-19 22:36:24', '2025-07-01 16:50:17'),
(10, 'Julio Izquierdo Mejia', 'julio.izquierdo.mejia@gmail.com', '+51998913140', 'quiero vender', NULL, 'vendeoalquila', 0, 0, '06813928', '2025-05-19 22:37:32', '2025-07-01 16:50:39'),
(11, 'Julio Izquierdo Mejia', 'julio.izquierdo.mejia@gmail.com', '+51998913140', 'este es mi mensaje', NULL, 'contacto', 0, 0, NULL, '2025-05-19 22:38:24', '2025-07-01 16:48:57'),
(12, 'Jonathan Moreno Fronda', 'jonathanjosue1289@gmail.com', '+51954144979', 'quiero vender', NULL, 'vendeoalquila', 0, 0, 'ertgvrcde', '2025-05-23 17:21:11', '2025-07-01 16:50:37'),
(13, 'Jonathan Moreno Fronda', 'jonathanjosue1289@gmail.com', '+5176543234567', 'quiero trabajar', NULL, 'trabajaconnosotros', 0, 1, NULL, '2025-05-23 17:21:36', '2025-07-01 16:50:15'),
(14, 'Diego Roberth Martinez Rayme', 'diego.martinez.r@tecsup.edu.pe', '+51917994653', 'asdasdasd', NULL, 'contacto', 0, 1, NULL, '2025-05-27 18:23:34', '2025-07-01 16:48:51'),
(15, 'Diego Roberth Martinez Rayme', 'diego.martinez.r@tecsup.edu.pe', '+51917994653', 'asasas', NULL, 'vendeoalquila', 0, 0, '72398527', '2025-05-27 18:25:55', '2025-07-01 16:50:35'),
(16, 'Diego Martinez.R', 'diegomartinez1996x@gmail.com', '+51917994653', 'adawdawd', NULL, 'vendeoalquila', 0, 0, NULL, '2025-05-27 18:27:53', '2025-07-01 16:50:33'),
(17, 'Diego Martinez.R', 'diegomartinez1996x@gmail.com', '+51917994653', 'asdasdasdasasd', NULL, 'trabajaconnosotros', 0, 1, '72398527', '2025-05-27 18:32:32', '2025-07-01 16:50:13'),
(18, 'Diego Martinez.R', 'diego.martinez.r@tecsup.edu.pe', '+51917994653', 'asdasdasd', NULL, 'contacto', 0, 0, NULL, '2025-05-27 18:39:16', '2025-07-01 16:48:48'),
(19, 'Diego Martinez', 'diego.martinez.r@tecsup.edu.pe', '+51917994653', 'Mensaje de prueba', NULL, 'contacto', 0, 1, NULL, '2025-06-09 18:27:33', '2025-07-01 16:48:54'),
(20, 'Julio Izquierdo Mejia', 'julio@mundoweb.pe', '+51998913140', NULL, NULL, 'contacto', 0, 0, NULL, '2025-06-09 18:30:17', '2025-07-01 16:49:00'),
(21, 'Diego Roberth Martinez Rayme', 'diego.martinez.r@tecsup.edu.pe', '+51917994653', 'asdasd', NULL, 'trabajaconnosotros', 0, 1, '72398527', '2025-06-09 18:47:26', '2025-07-01 16:50:10'),
(22, 'Diego Roberth Martinez Rayme', 'diegomartinez1996x@gmail.com', '+51917994653', 'Quiero vender mi propiedad', NULL, 'vendeoalquila', 0, 1, '72398527', '2025-06-09 18:48:41', '2025-07-01 16:50:31'),
(23, 'Alvaro Juan de Dios', 'alvaro.jd.m.11@gmail.com', '+51969590161', 'hola', NULL, 'trabajaconnosotros', 0, 0, '71251957', '2025-06-27 21:27:33', '2025-07-01 16:50:08'),
(24, 'Alvaro Juan de Dios', 'alvaro.jd.m.11@gmail.com', '+51969590161', 'holap', NULL, 'contacto', 0, 1, NULL, '2025-06-27 21:28:12', '2025-07-01 16:49:59'),
(25, 'Alvaro Juan de Dios', 'alvaro.jd.m.11@gmail.com', '+51969590161', 'holapp', NULL, 'vendeoalquila', 0, 0, '71251957', '2025-06-27 21:28:38', '2025-07-01 16:50:29'),
(26, 'Josephine Harrison', 'sgtjh142@gmail.com', '+17088859882', 'Estoy interesado. Me gustaría invertir en tu ciudad.', NULL, 'contacto', 1, 1, NULL, '2026-02-24 09:38:37', '2026-04-08 16:15:43'),
(27, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:30:39', '2026-07-04 17:30:39'),
(28, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:30:43', '2026-07-04 17:30:43'),
(29, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:30:49', '2026-07-04 17:30:49'),
(30, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:31:46', '2026-07-04 17:31:46'),
(31, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:32:21', '2026-07-04 17:32:21'),
(32, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:33:26', '2026-07-04 17:33:26'),
(33, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:33:28', '2026-07-04 17:33:28'),
(34, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:33:40', '2026-07-04 17:33:40'),
(35, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:33:43', '2026-07-04 17:33:43'),
(36, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:33:49', '2026-07-04 17:33:49'),
(37, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:33:51', '2026-07-04 17:33:51'),
(38, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:33:59', '2026-07-04 17:33:59'),
(39, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:34:01', '2026-07-04 17:34:01'),
(40, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:34:01', '2026-07-04 17:34:01'),
(41, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:34:03', '2026-07-04 17:34:03'),
(42, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:34:03', '2026-07-04 17:34:03'),
(43, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:34:05', '2026-07-04 17:34:05'),
(44, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:34:05', '2026-07-04 17:34:05'),
(45, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:34:07', '2026-07-04 17:34:07'),
(46, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:34:07', '2026-07-04 17:34:07'),
(47, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:34:09', '2026-07-04 17:34:09'),
(48, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:34:09', '2026-07-04 17:34:09'),
(49, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:34:12', '2026-07-04 17:34:12'),
(50, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:34:18', '2026-07-04 17:34:18'),
(51, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:34:20', '2026-07-04 17:34:20'),
(52, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:34:27', '2026-07-04 17:34:27'),
(53, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:34:29', '2026-07-04 17:34:29'),
(54, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:34:36', '2026-07-04 17:34:36'),
(55, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:34:38', '2026-07-04 17:34:38'),
(56, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:34:44', '2026-07-04 17:34:44'),
(57, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:34:46', '2026-07-04 17:34:46'),
(58, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:34:51', '2026-07-04 17:34:51'),
(59, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:34:53', '2026-07-04 17:34:53'),
(60, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:34:58', '2026-07-04 17:34:58'),
(61, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:35:00', '2026-07-04 17:35:00'),
(62, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:35:06', '2026-07-04 17:35:06'),
(63, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:35:08', '2026-07-04 17:35:08'),
(64, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:35:14', '2026-07-04 17:35:14'),
(65, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:35:17', '2026-07-04 17:35:17'),
(66, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:35:22', '2026-07-04 17:35:22'),
(67, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:35:24', '2026-07-04 17:35:24'),
(68, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:35:31', '2026-07-04 17:35:31'),
(69, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:35:34', '2026-07-04 17:35:34'),
(70, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:35:34', '2026-07-04 17:35:34'),
(71, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:35:36', '2026-07-04 17:35:36'),
(72, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:35:36', '2026-07-04 17:35:36'),
(73, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:35:38', '2026-07-04 17:35:38'),
(74, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:35:38', '2026-07-04 17:35:38'),
(75, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:35:40', '2026-07-04 17:35:40'),
(76, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:35:40', '2026-07-04 17:35:40'),
(77, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:35:42', '2026-07-04 17:35:42'),
(78, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:35:46', '2026-07-04 17:35:46'),
(79, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:35:50', '2026-07-04 17:35:50'),
(80, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:35:54', '2026-07-04 17:35:54'),
(81, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:35:57', '2026-07-04 17:35:57'),
(82, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:36:00', '2026-07-04 17:36:00'),
(83, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:36:04', '2026-07-04 17:36:04'),
(84, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:36:10', '2026-07-04 17:36:10'),
(85, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:36:12', '2026-07-04 17:36:12'),
(86, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:36:13', '2026-07-04 17:36:13'),
(87, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:36:14', '2026-07-04 17:36:14'),
(88, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:36:15', '2026-07-04 17:36:15'),
(89, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:36:16', '2026-07-04 17:36:16'),
(90, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:36:17', '2026-07-04 17:36:17'),
(91, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:36:18', '2026-07-04 17:36:18'),
(92, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:36:19', '2026-07-04 17:36:19'),
(93, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:36:20', '2026-07-04 17:36:20'),
(94, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:36:21', '2026-07-04 17:36:21'),
(95, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:36:23', '2026-07-04 17:36:23'),
(96, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:36:56', '2026-07-04 17:36:56'),
(97, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:36:59', '2026-07-04 17:36:59'),
(98, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:37:01', '2026-07-04 17:37:01'),
(99, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:37:05', '2026-07-04 17:37:05'),
(100, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:37:07', '2026-07-04 17:37:07'),
(101, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:37:11', '2026-07-04 17:37:11'),
(102, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:37:13', '2026-07-04 17:37:13'),
(103, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:37:15', '2026-07-04 17:37:15'),
(104, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:37:17', '2026-07-04 17:37:17'),
(105, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:37:17', '2026-07-04 17:37:17'),
(106, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:37:21', '2026-07-04 17:37:21'),
(107, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:37:23', '2026-07-04 17:37:23'),
(108, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:37:27', '2026-07-04 17:37:27'),
(109, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:37:29', '2026-07-04 17:37:29'),
(110, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:37:36', '2026-07-04 17:37:36'),
(111, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:37:38', '2026-07-04 17:37:38'),
(112, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:38:27', '2026-07-04 17:38:27'),
(113, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:38:29', '2026-07-04 17:38:29'),
(114, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:38:32', '2026-07-04 17:38:32'),
(115, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:38:40', '2026-07-04 17:38:40'),
(116, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:38:46', '2026-07-04 17:38:46'),
(117, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:38:50', '2026-07-04 17:38:50'),
(118, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1cMnbaoG0', '2026-07-04 17:38:52', '2026-07-04 17:38:52'),
(119, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1af178KWk', '2026-07-04 17:38:56', '2026-07-04 17:38:56'),
(120, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:38:58', '2026-07-04 17:38:58'),
(121, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '-1 OR 2+586-586-1=0+0+0+1 --', '2026-07-04 17:39:00', '2026-07-04 17:39:00'),
(122, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '-1 OR 2+901-901-1=0+0+0+1', '2026-07-04 17:39:02', '2026-07-04 17:39:02'),
(123, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:39:02', '2026-07-04 17:39:02'),
(124, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '-1\' OR 2+684-684-1=0+0+0+1 --', '2026-07-04 17:39:04', '2026-07-04 17:39:04'),
(125, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '-1 OR 2+107-107-1=0+0+0+1 --', '2026-07-04 17:39:04', '2026-07-04 17:39:04'),
(126, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '-1\' OR 2+286-286-1=0+0+0+1 or \'VJwy5990\'=\'', '2026-07-04 17:39:06', '2026-07-04 17:39:06'),
(127, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '-1 OR 2+911-911-1=0+0+0+1', '2026-07-04 17:39:06', '2026-07-04 17:39:06'),
(128, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '-1\" OR 2+827-827-1=0+0+0+1 --', '2026-07-04 17:39:08', '2026-07-04 17:39:08'),
(129, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '-1\' OR 2+672-672-1=0+0+0+1 --', '2026-07-04 17:39:08', '2026-07-04 17:39:08'),
(130, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '-1\' OR 2+581-581-1=0+0+0+1 or \'1DaAo9jl\'=\'', '2026-07-04 17:39:10', '2026-07-04 17:39:10'),
(131, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '-1\" OR 2+734-734-1=0+0+0+1 --', '2026-07-04 17:39:12', '2026-07-04 17:39:12'),
(132, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '2026-07-04 17:39:56', '2026-07-04 17:39:56'),
(133, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '2026-07-04 17:40:01', '2026-07-04 17:40:01'),
(134, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:40:07', '2026-07-04 17:40:07'),
(135, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '2026-07-04 17:40:08', '2026-07-04 17:40:08'),
(136, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1\'\"', '2026-07-04 17:40:13', '2026-07-04 17:40:13'),
(137, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '@@REaO0', '2026-07-04 17:40:15', '2026-07-04 17:40:15'),
(138, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '2026-07-04 17:40:17', '2026-07-04 17:40:17'),
(139, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:40:19', '2026-07-04 17:40:19'),
(140, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1\'\"', '2026-07-04 17:40:21', '2026-07-04 17:40:21'),
(141, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:40:22', '2026-07-04 17:40:22'),
(142, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '@@y9igI', '2026-07-04 17:40:23', '2026-07-04 17:40:23'),
(143, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:40:29', '2026-07-04 17:40:29'),
(144, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:40:37', '2026-07-04 17:40:37'),
(145, 'pHqghUme', 'testing@example.comJ6WC4wEL', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:40:44', '2026-07-04 17:40:44'),
(146, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:40:47', '2026-07-04 17:40:47'),
(147, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:40:54', '2026-07-04 17:40:54'),
(148, 'pHqghUme', 'testing@example.comxcAKfUeI', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:40:58', '2026-07-04 17:40:58'),
(149, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:41:04', '2026-07-04 17:41:04'),
(150, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:41:46', '2026-07-04 17:41:46'),
(151, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:41:54', '2026-07-04 17:41:54'),
(152, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:41:54', '2026-07-04 17:41:54'),
(153, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:42:04', '2026-07-04 17:42:04'),
(154, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:42:07', '2026-07-04 17:42:07'),
(155, 'pHqghUme0t3qiMPc', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:42:13', '2026-07-04 17:42:13'),
(156, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:42:15', '2026-07-04 17:42:15'),
(157, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:42:21', '2026-07-04 17:42:21'),
(158, '-1 OR 2+538-538-1=0+0+0+1 --', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:42:23', '2026-07-04 17:42:23'),
(159, 'pHqghUmeMmcyZanV', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:42:23', '2026-07-04 17:42:23'),
(160, '-1 OR 2+257-257-1=0+0+0+1', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:42:25', '2026-07-04 17:42:25'),
(161, '-1\' OR 2+389-389-1=0+0+0+1 --', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:42:27', '2026-07-04 17:42:27'),
(162, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:42:29', '2026-07-04 17:42:29'),
(163, '-1\' OR 2+384-384-1=0+0+0+1 or \'L7BkpGga\'=\'', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:42:29', '2026-07-04 17:42:29'),
(164, '-1 OR 2+206-206-1=0+0+0+1 --', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:42:31', '2026-07-04 17:42:31'),
(165, '-1\" OR 2+181-181-1=0+0+0+1 --', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:42:31', '2026-07-04 17:42:31'),
(166, '-1 OR 2+648-648-1=0+0+0+1', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:42:33', '2026-07-04 17:42:33'),
(167, '-1\' OR 2+38-38-1=0+0+0+1 --', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:42:35', '2026-07-04 17:42:35'),
(168, '-1\' OR 2+99-99-1=0+0+0+1 or \'i8Sal0eT\'=\'', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:42:37', '2026-07-04 17:42:37'),
(169, '-1\" OR 2+367-367-1=0+0+0+1 --', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:42:39', '2026-07-04 17:42:39'),
(170, 'pHqghUme\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:43:18', '2026-07-04 17:43:18'),
(171, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:43:20', '2026-07-04 17:43:20'),
(172, 'pHqghUme\'\"', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:43:26', '2026-07-04 17:43:26'),
(173, 'pHqghUme\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:43:27', '2026-07-04 17:43:27'),
(174, '@@DOHPN', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:43:32', '2026-07-04 17:43:32'),
(175, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:43:33', '2026-07-04 17:43:33'),
(176, 'pHqghUme\'\"', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:43:35', '2026-07-04 17:43:35'),
(177, '@@SH4Se', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:43:37', '2026-07-04 17:43:37'),
(178, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:43:41', '2026-07-04 17:43:41'),
(179, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:43:43', '2026-07-04 17:43:43'),
(180, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:43:47', '2026-07-04 17:43:47'),
(181, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:43:49', '2026-07-04 17:43:49'),
(182, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20MTFVO4GF', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:43:53', '2026-07-04 17:43:53'),
(183, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20XXp6KO5i', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:43:56', '2026-07-04 17:43:56'),
(184, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:44:00', '2026-07-04 17:44:00'),
(185, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '-1 OR 2+352-352-1=0+0+0+1 --', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:44:02', '2026-07-04 17:44:02'),
(186, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:44:03', '2026-07-04 17:44:03'),
(187, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '-1 OR 2+143-143-1=0+0+0+1', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:44:04', '2026-07-04 17:44:04'),
(188, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '-1 OR 2+373-373-1=0+0+0+1 --', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:44:05', '2026-07-04 17:44:05'),
(189, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '-1\' OR 2+220-220-1=0+0+0+1 --', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:44:06', '2026-07-04 17:44:06'),
(190, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '-1 OR 2+375-375-1=0+0+0+1', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:44:07', '2026-07-04 17:44:07'),
(191, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '-1\' OR 2+876-876-1=0+0+0+1 or \'nkLamXtJ\'=\'', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:44:08', '2026-07-04 17:44:08'),
(192, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '-1\' OR 2+137-137-1=0+0+0+1 --', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:44:09', '2026-07-04 17:44:09'),
(193, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '-1\" OR 2+434-434-1=0+0+0+1 --', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:44:10', '2026-07-04 17:44:10'),
(194, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '-1\' OR 2+433-433-1=0+0+0+1 or \'dcOkW7VP\'=\'', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:44:11', '2026-07-04 17:44:11'),
(195, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '-1\" OR 2+727-727-1=0+0+0+1 --', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:44:13', '2026-07-04 17:44:13'),
(196, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:45:30', '2026-07-04 17:45:30'),
(197, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:45:33', '2026-07-04 17:45:33'),
(198, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:45:46', '2026-07-04 17:45:46'),
(199, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:45:48', '2026-07-04 17:45:48'),
(200, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:45:49', '2026-07-04 17:45:49'),
(201, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20\'\"', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:45:50', '2026-07-04 17:45:50'),
(202, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:45:51', '2026-07-04 17:45:51'),
(203, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '@@GRWaD', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:45:52', '2026-07-04 17:45:52'),
(204, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20\'\"', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:45:53', '2026-07-04 17:45:53'),
(205, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '@@ro4nC', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:45:55', '2026-07-04 17:45:55'),
(206, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:46:04', '2026-07-04 17:46:04'),
(207, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:46:07', '2026-07-04 17:46:07'),
(208, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:46:22', '2026-07-04 17:46:22'),
(209, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:46:25', '2026-07-04 17:46:25'),
(210, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606Wq4dCDKm', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:46:31', '2026-07-04 17:46:31'),
(211, 'pHqghUme', 'testing@example.com', '+93555-666-0606uWkZb7kK', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:46:38', '2026-07-04 17:46:38'),
(212, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:46:44', '2026-07-04 17:46:44'),
(213, 'pHqghUme', 'testing@example.com', '+1 264-1 OR 2+248-248-1=0+0+0+1 --', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:46:46', '2026-07-04 17:46:46'),
(214, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:46:47', '2026-07-04 17:46:47'),
(215, 'pHqghUme', 'testing@example.com', '+1 264-1 OR 2+431-431-1=0+0+0+1', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:46:48', '2026-07-04 17:46:48'),
(216, 'pHqghUme', 'testing@example.com', '+93-1 OR 2+839-839-1=0+0+0+1 --', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:46:49', '2026-07-04 17:46:49'),
(217, 'pHqghUme', 'testing@example.com', '+1 264-1\' OR 2+475-475-1=0+0+0+1 --', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:46:50', '2026-07-04 17:46:50'),
(218, 'pHqghUme', 'testing@example.com', '+93-1 OR 2+601-601-1=0+0+0+1', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:46:51', '2026-07-04 17:46:51'),
(219, 'pHqghUme', 'testing@example.com', '+1 264-1\' OR 2+669-669-1=0+0+0+1 or \'fChiWBfJ\'=\'', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:46:52', '2026-07-04 17:46:52'),
(220, 'pHqghUme', 'testing@example.com', '+93-1\' OR 2+765-765-1=0+0+0+1 --', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:46:53', '2026-07-04 17:46:53'),
(221, 'pHqghUme', 'testing@example.com', '+1 264-1\" OR 2+909-909-1=0+0+0+1 --', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:46:54', '2026-07-04 17:46:54'),
(222, 'pHqghUme', 'testing@example.com', '+93-1\' OR 2+929-929-1=0+0+0+1 or \'leQdoW6i\'=\'', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:46:55', '2026-07-04 17:46:55'),
(223, 'pHqghUme', 'testing@example.com', '+93-1\" OR 2+119-119-1=0+0+0+1 --', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:46:57', '2026-07-04 17:46:57'),
(224, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:47:37', '2026-07-04 17:47:37'),
(225, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:47:39', '2026-07-04 17:47:39'),
(226, 'pHqghUme', 'testing@example.com', '+93555-666-0606\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:47:42', '2026-07-04 17:47:42'),
(227, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606\'\"', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:47:45', '2026-07-04 17:47:45'),
(228, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:47:48', '2026-07-04 17:47:48'),
(229, 'pHqghUme', 'testing@example.com', '+1 264@@9Urbb', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:47:51', '2026-07-04 17:47:51'),
(230, 'pHqghUme', 'testing@example.com', '+93555-666-0606\'\"', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:47:54', '2026-07-04 17:47:54'),
(231, 'pHqghUme', 'testing@example.com', '+93@@o2l2t', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:47:56', '2026-07-04 17:47:56'),
(232, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:48:02', '2026-07-04 17:48:02'),
(233, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:48:04', '2026-07-04 17:48:04'),
(234, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:48:22', '2026-07-04 17:48:22'),
(235, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:48:25', '2026-07-04 17:48:25'),
(236, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotrosbPIQ1VWh', 1, 0, '1', '2026-07-04 17:48:36', '2026-07-04 17:48:36'),
(237, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquilaJYqh7LLH', 1, 0, '1', '2026-07-04 17:48:38', '2026-07-04 17:48:38'),
(238, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:48:50', '2026-07-04 17:48:50'),
(239, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, '-1 OR 2+998-998-1=0+0+0+1 --', 1, 0, '1', '2026-07-04 17:48:52', '2026-07-04 17:48:52'),
(240, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:48:53', '2026-07-04 17:48:53'),
(241, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, '-1 OR 2+203-203-1=0+0+0+1', 1, 0, '1', '2026-07-04 17:48:54', '2026-07-04 17:48:54'),
(242, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, '-1 OR 2+440-440-1=0+0+0+1 --', 1, 0, '1', '2026-07-04 17:48:55', '2026-07-04 17:48:55'),
(243, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, '-1\' OR 2+815-815-1=0+0+0+1 --', 1, 0, '1', '2026-07-04 17:48:56', '2026-07-04 17:48:56'),
(244, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, '-1 OR 2+554-554-1=0+0+0+1', 1, 0, '1', '2026-07-04 17:48:57', '2026-07-04 17:48:57'),
(245, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, '-1\' OR 2+874-874-1=0+0+0+1 or \'McHZxSXI\'=\'', 1, 0, '1', '2026-07-04 17:48:58', '2026-07-04 17:48:58'),
(246, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, '-1\' OR 2+396-396-1=0+0+0+1 --', 1, 0, '1', '2026-07-04 17:48:59', '2026-07-04 17:48:59'),
(247, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, '-1\" OR 2+679-679-1=0+0+0+1 --', 1, 0, '1', '2026-07-04 17:49:00', '2026-07-04 17:49:00'),
(248, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, '-1\' OR 2+738-738-1=0+0+0+1 or \'vSOncXF2\'=\'', 1, 0, '1', '2026-07-04 17:49:01', '2026-07-04 17:49:01'),
(249, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, '-1\" OR 2+403-403-1=0+0+0+1 --', 1, 0, '1', '2026-07-04 17:49:03', '2026-07-04 17:49:03'),
(250, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 1, 0, '1', '2026-07-04 17:49:46', '2026-07-04 17:49:46'),
(251, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:49:48', '2026-07-04 17:49:48'),
(252, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 1, 0, '1', '2026-07-04 17:49:50', '2026-07-04 17:49:50'),
(253, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros\'\"', 1, 0, '1', '2026-07-04 17:49:54', '2026-07-04 17:49:54'),
(254, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:49:56', '2026-07-04 17:49:56'),
(255, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, '@@vnn99', 1, 0, '1', '2026-07-04 17:50:00', '2026-07-04 17:50:00'),
(256, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila\'\"', 1, 0, '1', '2026-07-04 17:50:02', '2026-07-04 17:50:02'),
(257, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, '@@EC7y1', 1, 0, '1', '2026-07-04 17:50:04', '2026-07-04 17:50:04'),
(258, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'trabajaconnosotros', 1, 0, '1', '2026-07-04 17:59:19', '2026-07-04 17:59:19'),
(259, 'pHqghUme', 'testing@example.com', '+93555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:59:24', '2026-07-04 17:59:24'),
(260, 'pHqghUme', 'testing@example.com', '+1 264555-666-0606', '20', NULL, 'vendeoalquila', 1, 0, '1', '2026-07-04 17:59:26', '2026-07-04 17:59:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_23_163443_create_sessions_table', 1),
(6, '2022_05_11_154250_create_datafeeds_table', 1),
(7, '2024_03_24_001755_create_messages_table', 1),
(8, '2024_03_24_151500_create_services_table', 1),
(9, '2024_03_25_005648_create_generals_table', 1),
(10, '2024_04_01_140030_create_categories_table', 1),
(11, '2024_04_01_140747_create_subcategories_table', 1),
(12, '2024_04_02_221738_create_contacts_table', 1),
(13, '2024_04_02_230601_create_testimonies_table', 1),
(14, '2024_04_03_172054_create_blogs_table', 1),
(15, '2024_04_11_202541_create_client_logos_table', 1),
(16, '2024_04_14_173909_create_indices_table', 1),
(17, '2024_04_15_213808_create_staff_table', 1),
(18, '2024_04_16_001626_create_strengths_table', 1),
(19, '2024_04_16_132736_create_about_us_table', 1),
(20, '2024_04_17_003121_create_attributes_table', 1),
(21, '2024_04_17_031044_create_tags_table', 1),
(22, '2024_04_17_031617_create_product_tag_table', 1),
(23, '2024_04_17_152200_create__att_values_table', 1),
(24, '2024_04_17_192019_create_products_table', 1),
(25, '2024_04_18_122921_create_galeries_table', 1),
(26, '2024_04_18_214430_create_faqs_table', 1),
(27, '2024_04_19_034111_create_sliders_table', 1),
(28, '2024_04_19_201923_create_specifications_table', 1),
(29, '2024_04_23_220928_create_permission_tables', 1),
(30, '2024_04_24_193510_create_user_details_table', 1),
(31, '2024_04_24_210534_location_t_able', 1),
(32, '2024_04_30_194929_create_tags_xproducts_table', 1),
(33, '2024_05_25_170316_create_libro_reclamaciones_table', 1),
(34, '2024_05_27_121738_create_attribute_product_values_table', 1),
(35, '2024_05_27_211201_create_polytics_conditions_table', 1),
(36, '2024_05_28_143108_create_terms_and_conditions_table', 1),
(37, '2024_05_29_125944_create_prices_table', 1),
(38, '2024_06_24_180814_add_imagen_ambiente_to_products', 1),
(39, '2024_06_26_161750_add_image_to_subcategories', 1),
(40, '2024_06_27_192732_add_subcategory_id_to_products', 1),
(41, '2024_06_28_131429_add_imagenes_to_products', 1),
(42, '2024_07_02_043743_add_fit_to_categories', 1),
(43, '2024_07_03_000815_add_color_and_image_texture', 1),
(44, '2024_07_09_041941_add_phone_to_users', 1),
(45, '2024_07_09_044640_create_addresses_table', 1),
(46, '2024_07_09_144014_create_sales_table', 1),
(47, '2024_07_10_022233_create_sale_details_table', 1),
(48, '2024_07_10_154133_create_statuses_table', 1),
(49, '2024_07_10_200640_alter_status_code_set_foreign', 1),
(50, '2024_07_10_210756_add_confirmation_to_sales', 1),
(51, '2024_07_11_044105_add_tipo_comprobante_to_sales', 1),
(52, '2024_07_11_194204_add_color_to_sale_details', 1),
(53, '2024_07_15_221118_create_banners_table', 1),
(54, '2024_07_16_144754_add_type_to_attributes', 1),
(55, '2024_07_19_192904_create_popups_table', 1),
(56, '2024_07_19_234541_add_column_max_stock_to_products_table', 1),
(57, '2024_07_20_053817_create_offers_table', 1),
(58, '2024_07_20_053828_create_offer_details_table', 1),
(59, '2024_07_21_155619_create_newsletter_subscribers_table', 1),
(60, '2024_07_21_233452_create_wishlists_table', 1),
(61, '2024_07_22_015801_add_column_is_menu_to_categories_table', 1),
(62, '2024_07_22_024426_add_column_is_menu_to_tags_table', 1),
(63, '2024_07_22_133721_set_status_message_long', 1),
(64, '2024_07_22_210209_add_is_parent_to_offer_detail', 1),
(65, '2024_07_23_054003_set_longtext_to_product_name', 1),
(66, '2024_08_02_155822_add_columns_to_sale', 1),
(67, '2024_08_02_190740_create_politica_datos_table', 1),
(68, '2024_08_05_155234_add_columns_to_sale', 1),
(69, '2024_08_05_230659_create_constant_table', 1),
(70, '2024_08_05_240242_create_people_table', 1),
(71, '2024_08_05_242112_add_verified_and_person_to_users', 1),
(72, '2024_08_05_244710_create_pre_users_table', 1),
(73, '2024_08_09_144630_add_column_price_reseller_to_productos', 1),
(74, '2024_10_17_170303_create_events_table', 1),
(75, '2024_11_06_165120_create_extra_services_table', 1),
(76, '2024_11_12_024658_create_nosotros_views_table', 1),
(77, '2024_11_12_190017_create_home_views_table', 1),
(78, '2024_12_03_084312_alter_depart_province_district_to_product', 1),
(79, '2025_01_22_221436_add_meta_fields_to_products_table', 1),
(80, '2025_03_26_134758_add_column_lat_long_to_products', 1),
(81, '2025_04_21_042939_add_column_staff_id_to_products', 2),
(82, '2025_05_27_160921_add_column_endescuento_toproducts', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `email`, `tipo`, `active`, `created_at`, `updated_at`) VALUES
(1, 'jonathanjosue1289@gmail.com', 'Inicio', 1, '2025-05-05 17:10:06', '2025-05-05 17:10:06'),
(2, 'julio.izquierdo.mejia@gmail.com', 'Inicio', 1, '2025-05-19 22:42:35', '2025-05-19 22:42:35'),
(4, 'diegomartinez1996x@gmail.com', 'Inicio', 1, '2025-06-09 17:58:51', '2025-06-09 17:58:51'),
(5, 'diego.martinez.r@tecsup.edu.pe', 'Inicio', 1, '2025-06-09 17:58:59', '2025-06-09 17:58:59'),
(7, 'julio@mundoweb.pe', 'Inicio', 1, '2025-06-09 18:01:50', '2025-06-09 18:01:50'),
(8, 'jmoreno@mprealstate.com', 'Inicio', 1, '2025-06-09 18:02:20', '2025-06-09 18:02:20'),
(10, 'u2023119006@crear.ucal.edu.pe', 'Inicio', 1, '2025-06-09 18:03:36', '2025-06-09 18:03:36'),
(11, 'joe_persson30@bdcimail.com', 'Inicio', 1, '2025-09-30 01:26:59', '2025-09-30 01:26:59'),
(12, 'testing@example.com', 'Inicio', 1, '2026-07-04 17:28:32', '2026-07-04 17:28:32'),
(88, 'testing@example.comdrRvZdPE', 'Inicio', 1, '2026-07-04 17:57:33', '2026-07-04 17:57:33'),
(90, '-1 OR 2+832-832-1=0+0+0+1', 'Inicio', 1, '2026-07-04 17:57:38', '2026-07-04 17:57:38'),
(91, '-1 OR 3+832-832-1=0+0+0+1', 'Inicio', 1, '2026-07-04 17:57:38', '2026-07-04 17:57:38'),
(92, 'testing@example.com\'||\'', 'Inicio', 1, '2026-07-04 17:57:38', '2026-07-04 17:57:38'),
(93, 'testing@example.com\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'Inicio', 1, '2026-07-04 17:57:53', '2026-07-04 17:57:53'),
(95, 'testing@example.com\'\"', 'Inicio', 1, '2026-07-04 17:57:54', '2026-07-04 17:57:54'),
(96, '@@WlunA', 'Inicio', 1, '2026-07-04 17:57:54', '2026-07-04 17:57:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nosotros_views`
--

CREATE TABLE `nosotros_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title1section` varchar(255) DEFAULT NULL,
  `description1section` text DEFAULT NULL,
  `url_image2section` varchar(255) DEFAULT NULL,
  `title3section` varchar(255) DEFAULT NULL,
  `subtitle3section` varchar(255) DEFAULT NULL,
  `description3section` text DEFAULT NULL,
  `title3secondsection` varchar(255) DEFAULT NULL,
  `subtitle3secondsection` varchar(255) DEFAULT NULL,
  `description3secondsection` text DEFAULT NULL,
  `title4section` varchar(255) DEFAULT NULL,
  `description4section` text DEFAULT NULL,
  `url_image4section` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `nosotros_views`
--

INSERT INTO `nosotros_views` (`id`, `title1section`, `description1section`, `url_image2section`, `title3section`, `subtitle3section`, `description3section`, `title3secondsection`, `subtitle3secondsection`, `description3secondsection`, `title4section`, `description4section`, `url_image4section`, `created_at`, `updated_at`) VALUES
(1, 'Con Ventura, estás donde quieres estar', 'Con 6 años de experiencia gestionando inmuebles en las mejores zonas de Lima, hemos desarrollado un servicio que responde a la creciente demanda de Airbnbs en la ciudad. Somos un equipo comprometido con crear experiencias de alquiler óptimas, garantizando rentabilidad para nuestros propietarios y máximo confort para nuestros huéspedes.', NULL, 'Crear recuerdos inolvidables', 'Nuestra misión', 'Crear experiencias de alquiler óptimas, garantizando rentabilidad para nuestros propietarios y máximo confort para nuestros huéspedes.', 'Líderes en alquileres temporales', 'Nuestra meta', 'Ser la opción número uno en alquileres temporales en Lima, reconocidos por nuestro compromiso con la calidad y la satisfacción del cliente.', 'Conoce a Nuestro Equipo', 'Somos un equipo apasionado y comprometido con la excelencia. Cada miembro de nuestro equipo aporta su experiencia y dedicación para asegurar que cada estancia sea perfecta y cada propiedad alcance su máximo potencial.', NULL, '2025-04-16 20:53:19', '2025-04-16 20:53:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto` varchar(255) NOT NULL,
  `precio` decimal(12,2) NOT NULL DEFAULT 0.00,
  `descuento` decimal(12,2) NOT NULL DEFAULT 0.00,
  `imagen` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offer_details`
--

CREATE TABLE `offer_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isParent` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `people`
--

CREATE TABLE `people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `document_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `ubigeo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2025-04-16 20:53:18', '2025-04-16 20:53:18'),
(2, 'Customer', 'web', '2025-04-16 20:53:18', '2025-04-16 20:53:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `politica_datos`
--

CREATE TABLE `politica_datos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `finaltitle` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `politica_datos`
--

INSERT INTO `politica_datos` (`id`, `title`, `content`, `finaltitle`, `created_at`, `updated_at`) VALUES
(1, 'Política de Datos', '<div class=\"prose\"><p><strong>MP Real State</strong>, con domicilio en Los Cocoteros 298, Urb. La Encantada de Villa – Chorrillos, Lima, informa a sus clientes, usuarios y público en general sobre el tratamiento de datos personales que se recolectan a través de sus plataformas digitales, formularios físicos, correos, redes sociales o en el desarrollo de sus servicios.</p><h3><strong>1. Marco Legal</strong></h3><p>Esta política cumple con la <strong>Ley N.° 29733 – Ley de Protección de Datos Personales</strong>, su Reglamento y demás normas complementarias vigentes en el Perú.</p><h3><strong>2. Finalidad del Tratamiento</strong></h3><p>Los datos personales recolectados serán utilizados exclusivamente para:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Atender consultas o solicitudes de información.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Coordinar visitas, promociones o gestión inmobiliaria.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Ofrecer productos o servicios relacionados con compra, venta o alquiler de inmuebles.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Enviar comunicaciones comerciales, publicitarias y contenido de valor (por correo electrónico, WhatsApp u otros canales).</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Cumplir obligaciones legales o requerimientos de autoridades.</li></ol><h3><strong>3. Consentimiento del Usuario</strong></h3><p>Al brindar sus datos por cualquier medio, el Usuario autoriza de manera libre, informada, previa y expresa a MP Real State a:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Registrar, almacenar, consultar y tratar sus datos personales.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Compartirlos con proveedores, aliados estratégicos o terceros que colaboren en los servicios ofrecidos.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Transferir información dentro y fuera del país, bajo los estándares de seguridad adecuados.</li></ol><h3><strong>4. Seguridad y Confidencialidad</strong></h3><p>MP Real State implementa medidas técnicas y organizativas adecuadas para garantizar la confidencialidad, integridad y disponibilidad de los datos personales.</p><p>El acceso a los datos está restringido solo a personal autorizado o terceros con vínculo contractual de confidencialidad.</p><h3><strong>5. Conservación de Datos</strong></h3><p>Los datos personales serán almacenados por el tiempo necesario para cumplir con las finalidades mencionadas o según lo exija la ley.</p><h3><strong>6. Derechos del Titular de Datos</strong></h3><p>El titular de los datos puede ejercer en cualquier momento sus derechos de:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Acceso</strong> a su información personal.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Rectificación</strong> de datos incorrectos o desactualizados.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Cancelación</strong> o eliminación de datos cuando corresponda.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Oposición</strong> al tratamiento de sus datos para fines determinados.</li></ol><p>Para ello, puede contactarnos a:</p><p> <strong>informes@mprealstate.com</strong></p><p> WhatsApp: 932073345</p><h3><strong>7. Modificaciones</strong></h3><p>MP Real State se reserva el derecho de modificar esta política para adaptarla a cambios normativos o mejoras en sus procesos. Toda actualización será publicada oportunamente.</p></div>', 'Política de Datos', '2025-04-16 20:53:19', '2025-07-11 20:06:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polytics_conditions`
--

CREATE TABLE `polytics_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `finaltitle` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `polytics_conditions`
--

INSERT INTO `polytics_conditions` (`id`, `title`, `content`, `finaltitle`, `created_at`, `updated_at`) VALUES
(1, NULL, '<div class=\"prose\"><p><strong>1. Disposiciones Generales</strong></p><p>En MP Real State, nos comprometemos a proteger la privacidad de nuestros usuarios. Esta política describe cómo recolectamos, utilizamos y resguardamos tus datos personales conforme a la Ley N.º 29733 – Ley de Protección de Datos Personales y su reglamento.</p><p><strong>2. Consentimiento del Usuario</strong></p><p>Al registrarte o dejarnos tus datos en nuestra web, autorizas de forma libre, previa, informada y voluntaria el uso de tu información personal para los fines comerciales y de gestión de MP Real State. Esto incluye el almacenamiento, análisis, contacto, y posibles comunicaciones o transferencias nacionales e internacionales, siempre dentro del marco legal.</p><p><strong>3. Finalidad del Tratamiento de Datos</strong></p><p>Usamos tus datos para:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Gestionar consultas, pedidos o solicitudes de servicios.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Enviarte información relevante, novedades y promociones.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Mejorar nuestros servicios y la experiencia del usuario.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Cumplir con requerimientos legales.</li></ol><p>Tu información será tratada de forma segura, restringida y únicamente por personas autorizadas. En caso de requerimiento por parte de una autoridad competente, los datos podrán ser compartidos conforme a la ley.</p><p><strong>4. Transferencia y Uso de Datos</strong></p><p>Autorizas a MP Real State a compartir tus datos con aliados estratégicos o proveedores que colaboren en la gestión de nuestros servicios. También nos autorizas a realizar comunicaciones comerciales personalizadas.</p><p><strong>5. Derechos del Usuario</strong></p><p>Tienes derecho a acceder, rectificar, cancelar u oponerte al uso de tus datos (ARCO), en cualquier momento. Para ello, puedes contactarnos a uno de los siguientes correos<strong> jmoreno@mprealstate.com, dpauli@mprealstate.com </strong>o contactarnos al siguiente número <strong>+51 932073345</strong></p></div>', NULL, '2025-06-09 17:01:43', '2025-07-11 19:56:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pre_users`
--

CREATE TABLE `pre_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `confirmation_token` char(36) NOT NULL,
  `token` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `distrito_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `visble` tinyint(1) DEFAULT NULL,
  `local` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `prices`
--

INSERT INTO `prices` (`id`, `distrito_id`, `price`, `status`, `visble`, `local`, `created_at`, `updated_at`) VALUES
(1, 150122, 10, 1, 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `producto` varchar(255) NOT NULL,
  `pms` varchar(255) DEFAULT NULL,
  `extract` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `precio` decimal(12,2) NOT NULL DEFAULT 0.00,
  `descuento` decimal(12,2) NOT NULL DEFAULT 0.00,
  `preciomin` decimal(12,2) DEFAULT 0.00,
  `preciobase` decimal(12,2) DEFAULT 0.00,
  `preciolimpieza` decimal(12,2) NOT NULL DEFAULT 0.00,
  `precioservicio` decimal(12,2) NOT NULL DEFAULT 0.00,
  `stock` decimal(12,2) NOT NULL DEFAULT 0.00,
  `costo_x_art` decimal(12,2) NOT NULL DEFAULT 0.00,
  `peso` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `atributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`atributes`)),
  `destacar` tinyint(1) NOT NULL DEFAULT 0,
  `recomendar` tinyint(1) NOT NULL DEFAULT 0,
  `categoria_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cuartos` int(11) DEFAULT NULL,
  `pisos` int(11) DEFAULT NULL,
  `movilidad` varchar(255) DEFAULT NULL,
  `banios` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `calendar_url` varchar(255) DEFAULT NULL,
  `airbnb_url` varchar(255) DEFAULT NULL,
  `frecuencia` varchar(255) DEFAULT NULL,
  `cochera` int(11) DEFAULT NULL,
  `mascota` tinyint(1) NOT NULL DEFAULT 0,
  `mobiliado` tinyint(1) NOT NULL DEFAULT 0,
  `incluye` text DEFAULT NULL,
  `no_incluye` text DEFAULT NULL,
  `disponible` text DEFAULT NULL,
  `no_disponible` text DEFAULT NULL,
  `departamento_id` varchar(255) DEFAULT NULL,
  `provincia_id` varchar(255) DEFAULT NULL,
  `distrito_id` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagen_ambiente` varchar(255) DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `imagen_2` varchar(255) DEFAULT NULL,
  `imagen_3` varchar(255) DEFAULT NULL,
  `imagen_4` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `image_texture` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `max_stock` int(11) DEFAULT NULL,
  `precio_reseller` decimal(12,2) NOT NULL DEFAULT 0.00,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `latitud` varchar(255) DEFAULT NULL,
  `longitud` varchar(255) DEFAULT NULL,
  `staff_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ocupada` varchar(255) DEFAULT NULL,
  `construida` varchar(255) DEFAULT NULL,
  `medidas` varchar(255) DEFAULT NULL,
  `endescuento` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `sku`, `producto`, `pms`, `extract`, `description`, `precio`, `descuento`, `preciomin`, `preciobase`, `preciolimpieza`, `precioservicio`, `stock`, `costo_x_art`, `peso`, `imagen`, `atributes`, `destacar`, `recomendar`, `categoria_id`, `cuartos`, `pisos`, `movilidad`, `banios`, `area`, `address`, `inside`, `district`, `city`, `country`, `calendar_url`, `airbnb_url`, `frecuencia`, `cochera`, `mascota`, `mobiliado`, `incluye`, `no_incluye`, `disponible`, `no_disponible`, `departamento_id`, `provincia_id`, `distrito_id`, `visible`, `status`, `created_at`, `updated_at`, `imagen_ambiente`, `subcategory_id`, `imagen_2`, `imagen_3`, `imagen_4`, `color`, `image_texture`, `slug`, `max_stock`, `precio_reseller`, `meta_title`, `meta_description`, `meta_keywords`, `latitud`, `longitud`, `staff_id`, `ocupada`, `construida`, `medidas`, `endescuento`) VALUES
(37, 'MP101001', 'Casa en la Encantada de Villa - Chorrillos', NULL, NULL, '🏡 Hermosa Casa en Condominio Privado – La Encantada de Villa\n✨ Confort, estilo y naturaleza en un solo lugar\n\n📍 Ubicación: La Encantada de Villa\n📏 432 m² terreno | 205 m² construidos\n💰 Precio: $485,000\n\n🌿 Jardín con diseño paisajista\n🏊‍♂️ Piscina + zona de parrilla 🔥\n🛋️ Sala con techos altos y chimenea\n🍽️ Cocina moderna + comedor diario\n🛏️ 3 dormitorios con baño privado | Principal con jacuzzi 🛁\n🖥️ Oficina o cuarto de visitas\n\n🚗 2 cocheras | Lavandería | Depósito | Cuarto y baño de servicio\n📆 Antigüedad: 17 años – ¡En excelente estado!\n', 1843000.00, 0.00, 485000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP101001.png', NULL, 0, 0, 9, 5, 2, '2', 5, '432', NULL, NULL, NULL, NULL, NULL, 'KrVGCRAId1U', NULL, NULL, 2, 1, 0, '<p>Dentro de la residencial mas exclusiva de Chorrillos.</p><p>Cerca a universidades( UPC, Cientifica del sur, etc) y colegios (Cambridge College Lima, St George&apos;s College, Villa Alarife, etc).</p><p>Cerca al Country club Villa .</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'storage/images/cotizacion/MP101001.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.211017', '-77.008061', 6, '227', '205', NULL, 0),
(38, 'MPV0017', 'Departamento al frente del Parque Cedros', NULL, NULL, '<p>🏡 Hermoso departamento en venta frente al parque en los Cedros de Villa 🎯 Ubicado dentro de un parque 🌳 con seguridad las 24 horas 🛡️, a unos minutos del centro comercial Mega Plaza de Los Cedros de Villa 🛍️, a unas cuadras de la Universidad UPC 🎓, a una cuadra de la Alameda Los Cedros 🌴. 📐 A.T : 120.00 m&sup2; 📍 Ubicado en el 3er Piso 🪑 Sala-comedor 🧑&zwj;🍳 Cocina americana y lavander&iacute;a independiente 🧺 🚽 2 Ba&ntilde;os 🛌 5 habitaciones 🥘 Terraza con vista al parque 🌳 📄 Documentaci&oacute;n en regla y listo para transferencia ✅ 💰 Precio: $100,000 (negociable) 💬</p>', 380000.00, 0.00, 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/VwmoviYmVm_imagen.png', NULL, 0, 0, 10, 5, 3, '1', 2, '120', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, 1, 0, '<p>Ubicaci&oacute;n privilegiada cerca de universidades ( UPC, San Juan Bautista, etc) y colegios ( Santisima Maria, Santo Domingo, Divino ,Mestro, etc ).</p>\r\n\r\n<p>Cerca de transporte p&uacute;blico y v&iacute;as principales.</p>\r\n\r\n<p>Cerca a malecon con areas deportivas ( cancha de futbol, cancha de voley, cancha de fronton, cancha de tenis, cancha de padel y juegos para ni&ntilde;os)</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-05-22 17:46:39', '2025-10-28 15:19:00', 'storage/images/cotizacion/MP101002.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.204309', '-77.014613', 6, '0', '120', NULL, 0),
(39, 'MP101003', 'Casa en Las Brisas de Villa con piscina y jardín amplio', NULL, NULL, '🏡 Exclusiva Residencia con Piscina y Jardín en Las Brisas de Villa\n✨ Vive con estilo y privacidad en una de las zonas más privilegiadas de Chorrillos\n\n📍 Ubicación: A espaldas del Club – Brisas de Villa\n📏 600 m² de terreno | 427 m² construidos\n💰 Precio: US$ 595,000\n\n🌿 Jardín de 250 m² + Piscina privada\n🍖 Terraza con sol y sombra + barra BBQ\n🔥 Sala principal con chimenea y vistas verdes\n🍽️ Cocina con tablero de granito y comedor diario\n🛌 4 dormitorios – Principal con jacuzzi y walk-in closet\n🛁 5 baños completos + 2 medios baños\n🛋️ Sala de estar en 2do piso | 🌅 Terraza de 150 m² en 3er piso\n🧺 Lavandería amplia + área de servicio completa\n\n🚗 4 cocheras (2 internas + 2 externas) | 🐾 Acepta mascotas\n📆 Construcción: 2007 – Estado impecable\n\n🔑 Elegancia, confort y amplitud en un entorno seguro y exclusivo.\n📞 ¡Contáctanos para más información o agendar tu visita!', 2261000.00, 0.00, 595000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP101003.png', NULL, 0, 0, 9, 5, 3, '0', 5, '600', NULL, NULL, NULL, NULL, NULL, 'f58myN9Wlew', NULL, NULL, 4, 1, 0, '<p>Seguridad las 24 horas.</p><p>Parque privado para residentes ( canchas de tenis, padel, futbol, basquet, pista atletismo, juegos para niños, etc).</p><p>Ubicación tranquila.</p><p>Cerca a universidades( UPC, Cientifica del sur, etc) y colegios (Cambridge College Lima, St George&apos;s College, Villa Alarife, etc)</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'storage/images/cotizacion/MP101003.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.219692', '-76.99572', 6, '250', '427', NULL, 0),
(40, 'MP101005', 'Casa estilo europeo en Las Brisas de Villa - Chorrillos', NULL, NULL, '🏡 ¡Casa de Ensueño Estilo Europeo en Venta – Chorrillos!\nVive con estilo en el exclusivo condominio Brisas de Villa 🌿.\n✨ 600 m² de terreno | 597 m² construidos | 300 m² de jardín\n\n🔹 5 dormitorios 🛏️ | 6 baños completos + 1 medio baño 🚿\n🔹 Amplia sala con vista al golf ⛳\n🔹 Piscina 🏊 + jardín privado 🌸\n🔹 Cocina cerrada con finos acabados 🍽️\n🔹 5 cocheras 🚗\n🔹 Gimnasio, bar, zona de parrilla y más 💪🍷🔥\n\n🏰 Acabados de lujo: techos altos, mamparas francesas, pisos alemanes\n✅ Acepta crédito hipotecario\n📍 Zona segura y residencial\n\n💵 Precio: $780,000\n📅 Construcción 2022 – Estado: ¡Impecable!', 2964000.00, 0.00, 780000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP101005.png', NULL, 0, 0, 9, 5, 3, '0', 6, '600', NULL, NULL, NULL, NULL, NULL, '_vuQEEcZT0U', NULL, NULL, 5, 1, 0, '<p>Seguridad las 24 horas.</p><p>Parque privado para residentes ( canchas de tenis, padel, futbol, basquet, pista atletismo, juegos para niños, etc).</p><p>Ubicación tranquila.</p><p>Cerca a universidades( UPC, Cientifica del sur, etc) y colegios (Cambridge College Lima, St George&apos;s College, Villa Alarife, etc)</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'storage/images/cotizacion/MP101005.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.216583', '-76.99381', 6, '300', '595', NULL, 0),
(41, 'MP101006', 'Casa en la Encantada de Villa - Chorrillos', NULL, NULL, '🏡 Residencia de Lujo en Esquina – La Encantada de Villa, Chorrillos\n✨ Estilo, amplitud y exclusividad a pasos del mar 🏖️☀️\n\n📍 Cerca del Colegio Cambridge, Nido La Encantada y Playa El Faro\n📏 Terreno: 784 m² | Construcción: 483 m²\n💰 Precio: $880,000 (negociable)\n\n🔹 Ambientes principales:\n🛋️ Sala principal + sala de estar con techo doble altura\n🔥 Comedor con vista al jardín + terraza techada con BBQ\n🍽️ Cocina iluminada con comedor diario\n🖥️ Estudio + elegante baño de visitas\n🧺 Lavandería + área de servicio completa\n\n🔹 Zona privada (2° piso):\n🛏️ 4 dormitorios con baño, escritorio y clósets amplios\n🛁 Principal con sala privada, walk-in closet, tina y ducha\n🎨 Habitación adicional ideal para taller\n👨‍👩‍👧‍👦 Family room central\n\n🔹 Extras de alto nivel:\n🚗 Cochera para 3 autos | 2 depósitos | despensa\n💧 Pozo artesiano | cisterna subterránea | 2 termotanques\n🌿 Acabados de madera, mamparas de vidrio templado, excelente luz natural\n\n🔑 ¡Una joya arquitectónica en una de las zonas más exclusivas de Chorrillos!', 3344.00, 0.00, 880000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP101006.png', NULL, 0, 0, 9, 5, 2, '0', 6, '783.85', NULL, NULL, NULL, NULL, NULL, 'oEYaexR685Y', NULL, NULL, 3, 1, 0, '<p>Dentro de la residencial mas exclusiva de Chorrillos.</p><p>Cerca a universidades( UPC, Cientifica del sur, etc) y colegios (Cambridge College Lima, St George&apos;s College, Villa Alarife, etc).</p><p>Cerca al Country club Villa.</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'storage/images/cotizacion/MP101006.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.214631', '-77.009858', 6, '300', '483', NULL, 0),
(42, 'MP101008', 'Casa en la Encantada de Villa - Chorrillos', NULL, NULL, '🏡 Exclusiva Casa en Venta – Condominio \"La Encantada de Villa\", Chorrillos\n📍 Ubicación privilegiada en un condominio privado de solo 5 casas.\n✨ Diseño moderno, amplios espacios y rodeada de áreas verdes.\n\n📐 Características:\nTerreno: 161 m²\nConstrucción: 167 m²\n🏠 Distribución:\nPrimer piso 🌿\n✅ Elegante sala y comedor con acceso a terraza\n✅ Cocina remodelada con acabados modernos\n✅ Baño de visitas\n✅ Habitación en planta baja\n✅ Lavandería, cuarto y baño de servicio\n✅ Amplio jardín y acogedora terraza\n\nSegundo piso 🌅\n✅ Dormitorio principal con baño privado, walk-in closet y terraza\n✅ Dos dormitorios adicionales con baño compartido\n✅ Acogedora sala de estar\n\n🚀 Posibilidad de ampliación a un tercer piso\n\n🚗 Estacionamiento y Mantenimiento:\n✔ Cochera interna + estacionamiento adicional\n✔ Mantenimiento: S/160 (incluye limpieza de áreas comunes y servicio de jardinería)\n\n💰 Precio: $405,000 dólares', 1539000.00, 0.00, 405000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP101008.png', NULL, 0, 0, 9, 4, 2, '3', 4, '191', NULL, NULL, NULL, NULL, NULL, 'e0q9bnT-f_0', NULL, NULL, 2, 1, 0, '<p>Condominio exclusivo de solo 5 casas.</p><p>Jardín privado y terraza acogedora.</p><p>Cocina remodelada con acabados modernos.</p><p>Dormitorio principal con terraza y walk</p><p>in closet.</p><p>Posibilidad de construir un tercer piso.</p><p>Cochera interna + estacionamiento adicional.</p><p>Seguridad y tranquilidad en zona residencial.</p><p>Mantenimiento económico (S/160)</p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'storage/images/cotizacion/MP101008.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, 6, '34', '167', NULL, 0),
(43, 'MP101009', 'Casa en Las Brisas de Villa ', NULL, NULL, '‼️🏡 ¡Gran Oportunidad! Casa en las Brisas de Villa 🌊✨\n💰 Precio irrepetible: USD 240,000\n\n📍 Zona residencial a solo pasos de la playa 🏖️\n📏 Terreno: 300 m² | Construcción: 240 m²\n🌿 Jardín con terraza de 120 m²\n\n🔹 Primera Planta (100% habitable)\n👩‍🍳 Cocina abierta con granito italiano\n🛋️ Sala y comedor amplios\n🚻 Baño de visitas\n\n🔹 Segunda Planta (sin acabados)\n🛏️ 4 dormitorios | 🚿 3 baños | 🛋️ Sala de estar\n\n🔹 Extras\n🧺 Lavandería | 🚗 Estacionamiento para 4 autos\n\n📍 Cerca de colegios, centros comerciales y zonas recreativas 🏫🛍️\n\n📲 ¡Ideal para personalizar y vivir cerca del mar!', 912000.00, 0.00, 240000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP101009.png', NULL, 0, 0, 9, 4, 2, '4', 4, '300', NULL, NULL, NULL, NULL, NULL, 'TIOuUbVZ60w', NULL, NULL, 4, 1, 0, '<p>Seguridad las 24 horas.</p><p>Parque privado para residentes ( canchas de tenis, padel, futbol, basquet, pista atletismo, juegos para niños, etc).</p><p>Ubicación tranquila.</p><p>Cerca a universidades( UPC, Cientifica del sur, etc) y colegios (Cambridge College Lima, St George&apos;s College, Villa Alarife, etc)</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'storage/images/cotizacion/MP101009.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.221516', '-76.992856', 6, '140', '240', NULL, 0),
(44, 'MP101010', 'Casa en la Planicie - La Molina', NULL, NULL, '🏡 Casa Exclusiva e Independiente en La Planicie – La Molina ✨\n🌿 Tranquilidad, privacidad y excelente ubicación\n\n📍 A solo 5 min del Wong de La Planicie 🛒\n📏 Área total y construida: 404 m²\n💰 Precio: USD 540,000\n\n🔸 Distribución ideal en 2 niveles:\n🛏️ 3 amplios dormitorios\n🛁 4 baños completos + 1 medio baño\n🛋️ Áreas sociales iluminadas con grandes ventanales\n🚗 Estacionamiento para 4 autos\n\n💧 Extras que marcan la diferencia:\n🔹 Cisterna + tanque elevado\n🔹 Ventilación cruzada y luz natural en todos los ambientes\n\n📍 Zona residencial de alto nivel, cerca de colegios, supermercados y parques 🌳🏫\n\n📞 Contáctanos y agenda tu visita hoy!', 2052000.00, 0.00, 540000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP101010.png', NULL, 0, 0, 9, 3, 2, '4', 5, '404', NULL, NULL, NULL, NULL, NULL, 'xZb5fw7upOk', NULL, NULL, 4, 1, 0, '<p>Casa independiente en zona exclusiva.</p><p>A 5 min del Wong de La Planicie.</p><p>Cerca a colegios (Villa Maria, Lord Byron, etc)</p>', NULL, NULL, NULL, '15', '1501', '150114', 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'storage/images/cotizacion/MP101010.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.080794', '-76.905561', 6, '90', '314', NULL, 0),
(45, 'MP101011', 'Terreno de 2500m2  en Santa Rosa de Asia', NULL, NULL, '🏞️ ¡Gran Oportunidad de Inversión! Terreno en Santa Rosa de Asia 🌿\n📍 A solo minutos del Boulevard de Asia, la Municipalidad y hermosas playas 🌊\n\n📏 Área total: 2,400 m²\n💰 Precio: USD 120,000\n\n🔹 Características destacadas:\n🏗️ Obra civil de 150 m² + columnas listas para 2do piso\n🏊 Piscina recreativa en crudo con bomba recirculadora\n🛁 Base para baño, lavandería y cuarto de servicio\n⚡ Suministro eléctrico propio\n💧 Cisterna + tuberías de agua y desagüe\n📜 Título de propiedad\n\n🚜 Ideal para proyecto agrícola, casa de campo o inversión vacacional\n✅ Accesos rápidos y zona de alto crecimiento\n\n📲 ¡Contáctanos y asegura tu lote en Asia hoy mismo!', 456000.00, 0.00, 120000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP101011.png', NULL, 0, 0, 11, 0, 0, '6', 1, '2400', NULL, NULL, NULL, NULL, NULL, 'TA1sw-Hdpqg', NULL, NULL, 0, 1, 0, '<p>Excelente ubicación y fácil acceso.</p><p>A 10 min de playas y del Bulevar de Asia.</p><p>Ideal para casa de campo o proyecto agrícola.</p><p>Título de propiedad en regla</p>', NULL, NULL, NULL, '15', '1505', '150502', 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'storage/images/cotizacion/MP101011.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.765085', '-76.520678', 6, '2250', '150', NULL, 0),
(46, 'MP101012', 'Terreno en Condominio Solimar - Playa privada y Club House en Lurin', NULL, NULL, '🏖️✨ Terreno en Venta – Condominio Privado SOLIMAR, Lurín ✨🏡\n🌅 ¡Tu casa de playa soñada a solo 15 minutos de Lima!\n\n📍 Fundo Mamacona – Km 27 Panamericana Sur\n📏 Área del terreno: 120 m²\n💼 Condominio exclusivo con acceso a 1 km de playa privada\n\n🔹 Áreas comunes tipo club resort:\n🏊 Piscina olímpica + piscina para niños\n🍽️ Restaurante “La Choza Náutica”\n⚽ Canchas de fútbol, vóley y frontón\n🎯 Zona de juegos, gimnasio y sala de usos múltiples\n🏕️ Zona de camping + hamacas para ver el atardecer\n🛍️ Minimarket, capilla, peluquería y tópico\n🎉 Espacios para eventos sociales y corporativos\n🏡 Bungalows + acceso directo a la playa\n\n✅ Seguridad, comodidad y entretenimiento en un solo lugar\n\n📲 ¡Invierte en calidad de vida y diversión todo el año! Contáctanos para más detalles.', 258400.00, 0.00, 68000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP101012.png', NULL, 0, 0, 11, 0, 0, '6', 0, '120', NULL, NULL, NULL, NULL, NULL, '9qjKUfKUVUI', NULL, NULL, 0, 1, 0, '<p>Acceso directo a playa privada.</p><p>A 15 minutos de Lima.</p><p>Cerca a centros comerciales ( km40, Outlet Arauco, etc)</p>', NULL, NULL, NULL, '15', '1501', '150119', 1, 1, '2025-05-22 17:46:39', '2025-08-01 16:36:35', 'storage/images/cotizacion/MP101012.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.266649', '-76.909725', 7, '120', '0', NULL, 1),
(47, 'MP101013', 'Casa en la Encantada de Villa - Chorrillos', NULL, NULL, '🏡✨ Vive con estilo en La Encantada de Villa – Chorrillos ✨🌿\n📍 Av. Alameda Caballero de Alcántara | Zona residencial exclusiva con vigilancia 24/7\n\n📐 Casa de 2 pisos | 5 Dormitorios | Antigüedad: 15 años\n💰 Precio: USD 630,000\n\n🔸 Espacios que enamoran:\n🌺 Jardín amplio con riego automatizado + terraza con zona BBQ\n🛋️ Sala con techos altos y ventanales hacia el jardín\n🍽️ Comedor conectado a terraza\n👩‍🍳 Cocina funcional con comedor de diario\n🖥️ Oficina o dormitorio adicional\n🚻 Baño de visitas\n\n🔹 Segundo Nivel:\n📺 Family room acogedor\n🛏️ Dormitorio principal con walk-in closet y baño privado\n🛏️ Dormitorio con baño propio + 2 habitaciones con baño compartido\n\n🧺 Área de servicio y lavandería independiente\n🚗 Estacionamiento para 4 autos\n💧 Cisterna de agua\n\n🎯 Cerca de colegios top (Cambridge, Saint George, VillaCollege), Country Club y parques\n\n📲 ¡Haz tuya esta joya en La Encantada! Agenda tu visita hoy mismo.\n\n', 2394000.00, 0.00, 630000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP101013.png', NULL, 1, 0, 9, 5, 2, '1', 4, '537', NULL, NULL, NULL, NULL, NULL, 'Tlve6h2I5uo', NULL, NULL, 4, 1, 0, '<p>Dentro de la residencial mas exclusiva de Chorrillos.</p><p>Cerca a universidades( UPC, Cientifica del sur, etc) y colegios (Cambridge College Lima, St George&apos;s College, Villa Alarife, etc).</p><p>Cerca al Country club Villa . con walk</p><p>in closet.</p><p>Estacionamiento para 4 vehículos.</p><p>Cisterna de agua potable.</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-05-22 17:46:39', '2025-08-01 16:38:23', 'storage/images/cotizacion/MP101013.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.214933', '-77.004825', 6, '250', '387', NULL, 0),
(48, 'MP101014', 'Casa en la Encantada de Villa con piscina - Chorrillos', NULL, NULL, '🏡✨ Exclusiva Casa Frente a Parque en La Encantada de Villa – Chorrillos ✨🌳\n📍 Cerca del colegio Cambridge, Nido La Encantada y a pasos de la playa El Faro 🌊\n\n📐 Área de Terreno: 1050 m²\n💰 Precio a consultar\n\n🔹 PRIMER NIVEL\n🌿 Jardín amplio con piscina con cascada y zona de parrilla\n🛋️ Sala exterior con vista al jardín\n🍽️ Comedor amplio y cocina con comedor diario\n🏡 Patio posterior con casa del árbol\n🛁 3 dormitorios con baño incluido y tina, uno con walk-in closet\n🖥️ Estudio, oficina y cuarto de visita\n🧺 Lavandería y depósito espacioso\n🚻 Baño de visitas\n\n🔹 SEGUNDO NIVEL\n🛏️ Dormitorio principal tipo suite con walk-in closet y baño completo\n📺 Sala de estar + oficina adicional\n\n⚽ Zona frente a parque con áreas para vóley, fútbol y gimnasio al aire libre\n🚗 Espacio de estacionamiento amplio\n\n📲 ¡Contáctanos y agenda tu visita a esta joya en La Encantada de Villa!', 2622000.00, 0.00, 690000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP101014.png', NULL, 0, 0, 9, 5, 2, '1', 5, '1050', NULL, NULL, NULL, NULL, NULL, 'rtja_ihGxFI', NULL, NULL, 4, 1, 0, '<p>Frente a parque.</p><p>Piscina con cascada.</p><p>Amplio jardín con zona de parrilla.</p><p>Sala de estudio y oficina.</p><p>Cuarto de visitas independiente.</p><p>Dormitorio principal con walk</p><p>in closet.</p><p>Acepta mascotas.</p><p>Espacios luminosos y ventilados.</p><p>Ubicación exclusiva cerca de colegios y parques.</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-05-22 17:46:39', '2025-05-27 17:08:50', 'storage/images/cotizacion/MP101014.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.21274', '-77.012789', 6, '600', '450', NULL, 0),
(49, 'MP102001', 'Departamento en Los Cedros de Villa', NULL, NULL, '<p>🏡✨ Departamentos en Venta &ndash; Los Cedros de Villa, Chorrillos ✨📍 📐 131.5 m&sup2; | Disponibles en 3er y 4to piso 🛏️ 3 dormitorios (principal con walk-in closet) 🛁 2 ba&ntilde;os completos 🛋️ Sala-comedor amplia y luminosa 🌇 Balc&oacute;n con vista a la calle 🧺 &Aacute;rea de lavander&iacute;a 📍 Cerca de UPC, SJB, Plaza Vea y Metro 💵 Precio: $135,000 📲 &iexcl;Agenda tu visita y haz de este espacio tu nuevo hogar! 🏠💫</p>', 472500.00, 0.00, 135000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP102001.png', NULL, 0, 0, 10, 3, 1, '2', 2, '131.5', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, 1, 0, '<p>Ubicaci&oacute;n privilegiada cerca de universidades y centros comerciales.</p>\r\n\r\n<p>Disponibilidad en 3er y 4to piso.</p>\r\n\r\n<p>Amplios espacios luminosos con balc&oacute;n y vista a la calle.</p>\r\n\r\n<p>Excelente distribuci&oacute;n con 3 habitaciones y walking closet en la habitaci&oacute;n principal.</p>\r\n\r\n<p>Cerca de transporte p&uacute;blico y v&iacute;as principales.</p>\r\n\r\n<p>Ambiente seguro y residencial.</p>\r\n\r\n<p>Edificio bien mantenido y accesible.</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-05-22 17:46:40', '2025-08-11 18:35:04', 'storage/images/cotizacion/MP102001.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 'Departamentos en venta en Los Cedros de Villa, Chorrillos', 'Departamentos en venta en Los Cedros de Villa, Chorrillos. 131.5 m², 3 dormitorios, balcón, cerca de UPC y supermercados. Precio: $135,000.', 'Los Cedros de Villa, Chorrillos, departamento 3 dormitorios, balcón, cerca UPC, cerca supermercados, inmobiliaria Chorrillos', '-12.202818', '-77.007317', 8, '0', '131.5', NULL, 0),
(50, 'MP301001', 'Departamento en venta en Chorrillos', NULL, NULL, '🏡✨ ¡Bienvenidos al Edificio La Castellana – Los Cedros de Villa! ✨\n\n📅 Entrega: Junio 2025\n\n💰 Desde $119,000\n📍 En una zona tranquila y familiar, cerca de parques, colegios y avenidas principales, ¡el lugar perfecto para tu familia! 🌳👨‍👩‍👧‍👦\n\n🔹 Departamentos de 3 dormitorios\n🌇 Con balcón y hermosa vista a la calle\n🛋️ Espaciosa sala-comedor con mucha luz natural\n🍳 Cocina americana ideal para compartir momentos en familia\n🛏️ Dormitorio principal con baño privado para tu comodidad\n🚿 2 baños completos\n🧺 Lavandería independiente\n🛗 Edificio con ascensor para mayor comodidad\n🌤️ Algunos modelos incluyen terrazas privadas, ¡el lugar perfecto para disfrutar al aire libre!\n\n📲 ¡Agenda tu visita y descubre el hogar que tu familia merece!', 452200.00, 0.00, 119000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP301001.png', NULL, 0, 0, 12, 3, 1, '3', 2, '94.58', NULL, NULL, NULL, NULL, NULL, 'atvJ4gfR0n0', NULL, NULL, 0, 1, 0, '<p>Ubicación privilegiada cerca de universidades ( UPC, San Juan Bautista, etc) y colegios ( Santisima Maria, Santo Domingo, Divino ,Mestro, etc ).</p><p>Cerca de transporte público y vías principales.</p><p>Cerca  a malecon con areas deportivas ( cancha de futbol, cancha de voley, cancha de fronton, cancha de tenis, cancha de padel y juegos para niños)</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-05-22 17:46:40', '2025-06-09 17:53:59', 'storage/images/cotizacion/MP301001.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.201416', '-77.008427', 6, '0', '94.58', NULL, 0),
(51, 'MP201001', 'Departamento frente al mar en Las Brisas de Villa', NULL, NULL, '<p>🌅 Elegancia y Serenidad Frente al Mar &ndash; Las Brisas de Villa, Chorrillos Descubre un refugio de tranquilidad y estilo en este exclusivo departamento de 150 m&sup2;, ubicado en una de las zonas m&aacute;s privilegiadas de Chorrillos. Con vistas panor&aacute;micas al oc&eacute;ano Pac&iacute;fico y rodeado de &aacute;reas verdes, este hogar ofrece una experiencia de vida incomparable. ✨ Caracter&iacute;sticas Principales: Tres dormitorios espaciosos, dise&ntilde;ados para brindar confort y privacidad. Dos ba&ntilde;os completos, equipados con acabados de alta calidad. Amplia sala y comedor, con ventanales que permiten la entrada de luz natural y ofrecen una vista inigualable al mar. Cocina americana moderna, con reposteros bajos y un dise&ntilde;o funcional que invita a la creaci&oacute;n culinaria. Terraza privada, ideal para disfrutar de atardeceres y reuniones al aire libre. Patio posterior con &aacute;rea de lavander&iacute;a independiente, que a&ntilde;ade practicidad al d&iacute;a a d&iacute;a. 🏞️ Entorno y Ubicaci&oacute;n: Situado frente a un parque encantador, con zonas de juegos para ni&ntilde;os y canchas deportivas, este departamento combina la tranquilidad de la naturaleza con la comodidad de la vida urbana. La zona es reconocida por su seguridad y ambiente familiar, ofreciendo un estilo de vida sereno y exclusivo.</p>', 2600.00, 0.00, 723.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP201001.png', NULL, 0, 1, 10, 3, 1, NULL, 2, '180', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, 1, 0, '<p>Seguridad las 24 horas.</p>\r\n\r\n<p>Parque privado para residentes ( canchas de tenis, padel, futbol, basquet, pista atletismo, juegos para ni&ntilde;os, etc).</p>\r\n\r\n<p>Ubicaci&oacute;n tranquila.</p>\r\n\r\n<p>Cerca a universidades( UPC, Cientifica del sur, etc) y colegios (Cambridge College Lima, St George&#39;s College, Villa Alarife, etc)</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-05-22 17:46:40', '2025-08-11 18:35:31', 'storage/images/cotizacion/MP201001.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.221792', '-76.993746', 6, '20', '160', NULL, 0),
(52, 'MP203001', 'Departamento en Los Cedros de Villa Chorrillos', NULL, NULL, '<p>🏡✨ &iexcl;Tu nuevo hogar te espera en Los Cedros de Villa! ✨ Disfruta de la tranquilidad, la luz natural y el espacio que t&uacute; y tu familia merecen 🌞. Este hermoso y amplio departamento te ofrece comodidad y una vista privilegiada en una zona residencial muy bien conectada. 📍Ubicaci&oacute;n estrat&eacute;gica: cerca de colegios como Trilce, Innova, Cambridge y San Jorge; universidades como la UPC y San Juan Bautista, adem&aacute;s de centros comerciales, restaurantes y todo lo que necesitas a pocos minutos. 🔹 Caracter&iacute;sticas principales: 🛏️ 4 habitaciones (3 con cl&oacute;set) 🛁 Habitaci&oacute;n principal con ba&ntilde;o privado y pr&aacute;ctico walk-in closet 🚿 2 ba&ntilde;os completos + 1 ba&ntilde;o de visita con moderna terma Bosch 🛋️ Sala y comedor amplios con hermosa vista a la calle 👩&zwj;🍳 Cocina funcional con reposteros altos y bajos 🌿 Gran patio posterior con &aacute;rea de lavander&iacute;a independiente 🚗 1 cochera privada incluida 💡 Servicios independientes de gas natural y luz 💧 Mantenimiento: S/300 (incluye agua, arbitrios y limpieza de escaleras) ❌ No se permiten mascotas 📄 Requisitos: Estar bien en Infocorp y sustentar ingresos 📞 &iexcl;Cont&aacute;ctanos hoy y agenda tu visita! Este departamento podr&iacute;a ser el hogar que estabas esperando 💙</p>', 2600.00, 0.00, 723.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP203001_1.png', NULL, 0, 1, 10, 4, 1, '1', 3, '180', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, 0, 0, '<p>Ubicaci&oacute;n privilegiada cerca de universidades ( UPC, San Juan Bautista, etc) y colegios ( Santisima Maria, Santo Domingo, Divino ,Mestro, etc ) .</p>\r\n\r\n<p>Cerca de transporte p&uacute;blico y v&iacute;as principales.</p>\r\n\r\n<p>Cerca a malecon con areas deportivas ( cancha de futbol, cancha de voley, cancha de fronton, cancha de tenis, cancha de padel y juegos para ni&ntilde;os)</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 0, '2025-05-22 17:46:40', '2025-08-11 18:28:50', 'storage/images/cotizacion/MP203001.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.20393', '-77.01435', 9, '0', '180', NULL, 1),
(53, 'MP301002', 'Departamento en exclusiva zona de Miraflores', NULL, NULL, '✨ Acacias 353 – Un Refugio Urbano de Elegancia y Sostenibilidad ✨\n\nUbicado estratégicamente en el corazón de Miraflores, entre los serenos parques Domodossola y Melitón Porras, Acacias 353 redefine el concepto de vida urbana al fusionar diseño contemporáneo, confort y compromiso ambiental.\n\n🏡 Características del Departamento:\n📐 Área: Desde 63.34 m²\n🛏️ Dormitorios: 1\n🛁 Baños: 2\n💡 Diseño moderno y funcional\n🌞 Iluminación natural en todos los ambientes\n\n🌿 Áreas Comunes:\n🏛️ Lobby de doble altura\n🍸 Lounge y sala bar\n🌳 Jardín interior y zona de BBQ\n🏊 Piscina con jacuzzi\n🏋️ Gimnasio y zona para bicicletas\n🐾 Pet spa para el cuidado de tus mascotas\n\n♻️ Compromiso Ambiental:\nAcacias 353 cuenta con la certificación LEED, lo que garantiza eficiencia energética, optimización del consumo de agua y un diseño sostenible.\n', 718720.00, 0.00, 119644.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP301002.png', NULL, 0, 0, 10, 2, 7, '1', 2, '64.13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '<p>A pasos de la Universidad de Ingeniería y Tecnología (UTEC), la Universidad Peruana Cayetano Heredia y la Universidad de Piura.</p><p>Cercano a Larcomar, el centro comercial con vistas al mar.</p><p>Próximo al Parque Central de Miraflores, epicentro cultural y recreativo del distrito.</p>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-05-22 17:46:40', '2025-08-01 16:38:09', 'storage/images/cotizacion/MP301002.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.134042', '-77.025865', 6, '0', '64.13', NULL, 0),
(54, 'MP301003', 'Departamento en exclusiva zona de Miraflores', NULL, NULL, '✨ Acacias 353 – Un Refugio Urbano de Elegancia y Sostenibilidad ✨\n\nUbicado estratégicamente en el corazón de Miraflores, entre los serenos parques Domodossola y Melitón Porras, Acacias 353 redefine el concepto de vida urbana al fusionar diseño contemporáneo, confort y compromiso ambiental.\n\n🏡 Características del Departamento:\n📐 Área: Desde 63.34 m²\n🛏️ Dormitorios: 2\n🛁 Baños: 2\n💡 Diseño moderno y funcional\n🌞 Iluminación natural en todos los ambientes\n\n🌿 Áreas Comunes:\n🏛️ Lobby de doble altura\n🍸 Lounge y sala bar\n🌳 Jardín interior y zona de BBQ\n🏊 Piscina con jacuzzi\n🏋️ Gimnasio y zona para bicicletas\n🐾 Pet spa para el cuidado de tus mascotas\n\n♻️ Compromiso Ambiental:\nAcacias 353 cuenta con la certificación LEED, lo que garantiza eficiencia energética, optimización del consumo de agua y un diseño sostenible.', 714950.00, 0.00, 188144.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/MP301003.png', NULL, 0, 0, 10, 2, 7, '1', 2, '64.13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '<p>A pasos de la Universidad de Ingeniería y Tecnología (UTEC), la Universidad Peruana Cayetano Heredia y la Universidad de Piura.</p><p>Cercano a Larcomar, el centro comercial con vistas al mar.</p><p>Próximo al Parque Central de Miraflores, epicentro cultural y recreativo del distrito.</p>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-05-22 17:46:40', '2025-07-11 20:40:29', 'storage/images/cotizacion/MP301003.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, '-12.134042', '-77.025865', 6, '0', '64.13', NULL, 0),
(55, 'CODMIR100', 'Departamento Apt. en Miraflores 1 BDR', NULL, 'Departamento ubicado en miraflores con terraza, etc.', '<p><span style=\"font-size:24px\"><strong>Lorem Ipsum</strong>&nbsp;</span></p>\r\n\r\n<p>Es simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. <em>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</em></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1500.00, 0.00, 430.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/13/YfJu30evlz_imagen.png', NULL, 0, 1, 13, 5, 2, '2', 2, '64.13', 'Miraflores 1005', 'Piso 4', NULL, NULL, NULL, '', NULL, NULL, 2, 1, 1, '<p>Beneficio 1</p>\r\n\r\n<p>Vista al Mar</p>\r\n\r\n<p>Piso 4</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '15', '1501', '150122', 1, 0, '2025-06-09 17:41:48', '2025-06-16 19:46:09', 'storage/images/cotizaciones/VLK0X4jug0_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-12.116165094512318', '-77.03519962055728', 12, '24.13', '40', '10x4', 0),
(56, 'MP201007', 'ALQUILO LINDA CASA  4 DORM BRISAS DE VILLA', NULL, NULL, '<p>🏡 ALQUILO LINDA CASA &ndash; 4 DORM &ndash; BRISAS DE VILLA<br />\r\n💸 $ 1,500.00 DOLARES 1 MES DE GARANTIA X 2 MESES DE ADELANTO<br />\r\n✨ Seguridad 24/7, parque interno 🌳, ideal para familias 👨&zwj;👩&zwj;👧&zwj;👦<br />\r\n<br />\r\n📐 300 m&sup2; terreno | 205 m&sup2; construidos<br />\r\n🚗 Cochera x2 | 🌞 Terraza | 🛋 Sala comedor | 🍽 Cocina americana<br />\r\n🛏 4 Dormitorios | 🚿 3 ba&ntilde;os completos | 🎮 Sala de estar<br />\r\n<br />\r\n📍 Primer piso:<br />\r\n🔹 Dormitorio con ba&ntilde;o privado<br />\r\n🔹 Ba&ntilde;o de visitas<br />\r\n🔹 Amplia sala comedor con vista al jard&iacute;n<br />\r\n🔹 Cocina abierta<br />\r\n🔹 Terraza con sol y sombra + acceso al parque<br />\r\n<br />\r\n📍 Segundo piso:<br />\r\n🔸 Dormitorio principal con walk-in closet y ba&ntilde;o<br />\r\n🔸 2 dormitorios secundarios<br />\r\n🔸 Ba&ntilde;o completo<br />\r\n🔸 Sala de estar o TV room 🎬</p>\r\n\r\n<p><br />\r\n📲 &iexcl;Agenda tu visita ya!<br />\r\n🔑 Tu nuevo hogar te espera en MP Real State<br />\r\n9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\nhttps://wa.link/nm8ffs</p>', 5550.00, 0.00, 1500.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/AGlrMLiLQa_imagen.png', NULL, 0, 1, 10, 4, 2, '2', 3, '300', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2, 0, 0, '<ul>\r\n	<li>Seguridad las 24 horas.</li>\r\n	<li>Parque privado para residentes ( canchas de tenis, padel, futbol, basquet, pista atletismo, juegos para ni&ntilde;os, etc).</li>\r\n	<li>Ubicaci&oacute;n tranquila.</li>\r\n	<li>Cerca a universidades( UPC, Cientifica del sur, etc) y colegios (Cambridge College Lima, St George&#39;s College, Villa Alarife, etc)</li>\r\n</ul>\r\n\r\n<p><br />\r\n&nbsp;</p>', NULL, NULL, NULL, '15', '1501', '150108', 0, 0, '2025-06-30 17:35:53', '2025-08-01 16:30:46', 'storage/images/cotizaciones/IFQtWGpEsa_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '–12.1800', '–77.0090', 6, '95', '205', NULL, 0),
(57, 'MP201008', 'Alquiler de moderno Departamento de 3 Dormitorios en Condominio Infinity – Surco', NULL, NULL, '<p>📐📏✨ Alquiler de moderno Departamento de 3 Dormitorios en Condominio Infinity &ndash; Surco ✨<br />\r\n<br />\r\n💵Precio $ 1,300.00 D&oacute;lares<br />\r\nMes de adelanto y dos de garant&iacute;a<br />\r\nCosto mantenimiento que incluyen el agua y las &aacute;reas comunes S/ 670.00<br />\r\nEste hogar es perfecto para familias que valoran el confort y el buen estilo de vida 🏡🌿.<br />\r\n<br />\r\n🏡 Caracter&iacute;sticas del Departamento:<br />\r\n📐 134 metros cuadrados<br />\r\n🛌 Dormitorio principal con:<br />\r\n🚿 Ba&ntilde;o completo con tina<br />\r\n👗 Walk in closets<br />\r\n🛏️ 2 Dormitorios secundarios con closets<br />\r\n🚽 Ba&ntilde;o para las habitaciones con tina<br />\r\n🛋️ Family room que une las 3 habitaciones<br />\r\n🛋️ Sala, comedor y terraza con vista a la piscina.<br />\r\n🌞 Excelente iluminaci&oacute;n natural.<br />\r\n🚽 Ba&ntilde;o de visitas.<br />\r\n🍽️ Cocina encimera con muebles altos y bajos (cuenta con gas c&aacute;lida)<br />\r\n🧺 Lavander&iacute;a independiente.<br />\r\n🛏️ Cuarto de servicio con ba&ntilde;o propio.<br />\r\n🚘 Dos estacionamientos.<br />\r\n<br />\r\nEl exclusivo Condominio Infinity ofrece cuenta con &aacute;reas comunes de primer nivel que complementan tu estilo de vida:</p>\r\n\r\n<p><br />\r\n🏢 <strong>&Aacute;reas comunes top:</strong><br />\r\n🏊&zwj;♀️ Piscinas | 🏋️ Gimnasio | 🧖 Sauna<br />\r\n🛝 Juegos | 🎈 Sala de ni&ntilde;os | 📽 Cine<br />\r\n💼 Coworking | 🎱 Sala de reuniones<br />\r\n🔒 Seguridad 24/7<br />\r\n<br />\r\nRequisitos:<br />\r\n🪙 Tener buena calificaci&oacute;n en el sistema financiero<br />\r\n📈 Presentar sustento de ingresos<br />\r\n<br />\r\nPara mas informaci&oacute;n comun&iacute;cate al:<br />\r\n9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\nhttps://wa.link/nm8ffs</p>', 4000.00, 0.00, 1200.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/wzYVYbtbJg_imagen.png', NULL, 1, 1, 10, 3, 1, '2', 3, '134', NULL, NULL, NULL, NULL, NULL, 'T3ftvdPzwp4', NULL, NULL, 2, 1, 0, '<ul>\r\n	<li>Cerca de Colegios prestigiosos (San Jos&eacute; de Monterrico, Casuarinas International College, San Ignacio De Recalde, etc.).</li>\r\n	<li>Universidades (U. de Lima, UPC, etc.).</li>\r\n	<li>Centros comerciales ( El Polo, Jockey Plaza, etc.).</li>\r\n	<li>Embajada de EEUU</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150140', 1, 1, '2025-06-30 17:47:56', '2025-08-09 19:17:39', 'storage/images/cotizaciones/Q6930qv64s_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamento de 3 dormitorios en Surco', 'Alquila departamento en Surco, 134 m², 2 dormitorios, 3 baños, 2 cocheras, en Condominio Infinity con piscina, gimnasio y seguridad 24/7.', 'departamento, surco, condominio, familiar, petfriendly, tomasal, monterrico, alquiler', '–12.13588', '–77.00742', 6, NULL, '134', NULL, 0),
(58, 'MP101017', '¡Departamento Amplio en Venta Cerca a la Playa – Los Cedros de Villa, Chorrillos!', NULL, NULL, '<p>🏡 VENTA DEPARTAMENTO &ndash; LOS CEDROS DE VILLA, CHORRILLOS<br />\r\n✨ Vive a pasos del mar, con comodidad, luz natural y excelente ubicaci&oacute;n.<br />\r\n📐 Caracter&iacute;sticas del Departamento:<br />\r\n📏 &Aacute;rea total: m&sup2;<br />\r\n🏢 Piso: 1er piso<br />\r\n🌤️ Vista interior con excelente iluminaci&oacute;n<br />\r\n🚗 Estacionamiento para 1 carro incluido<br />\r\n<br />\r\n🛋️ Distribuci&oacute;n:<br />\r\n🛋️ Sala &ndash; Comedor amplios<br />\r\n🍽️ Cocina con buenos acabados<br />\r\n🧺 Lavander&iacute;a independiente<br />\r\n🔆 2 espacios de tragaluz techado<br />\r\n🚻 1 ba&ntilde;o de visita<br />\r\n<br />\r\n🛏️ Dormitorios:<br />\r\n🛁 1 dormitorio principal con ba&ntilde;o privado y jacuzzi<br />\r\n🚿 1 dormitorio secundario con ba&ntilde;o privado<br />\r\n💡 1 dormitorio con iluminaci&oacute;n natural desde el tragaluz<br />\r\n<br />\r\n📄 Documentaci&oacute;n en regla &ndash; Listo para transferencia<br />\r\n<br />\r\n💰 Precio: $148,000 (Negociable)<br />\r\n<br />\r\n📲 Cont&aacute;ctanos hoy y agenda una visita<br />\r\n📞 9320-73-345</p>', 518000.00, 0.00, 148000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/afstPDdIeZ_imagen.png', NULL, 0, 0, 10, 3, 1, '2', 3, '125', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, 1, 0, '<ul>\r\n	<li>Frente al Centro Cllub Cultural.</li>\r\n	<li>A minutos de la playa.</li>\r\n	<li>Cerca del C.C. Megaplaza Los Cedros.</li>\r\n	<li>A minutos de la Universidad UPC.</li>\r\n	<li>Rodeado de parques, restaurantes y m&aacute;s.</li>\r\n</ul>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-06-30 17:59:17', '2025-06-30 17:59:17', 'storage/images/cotizaciones/QUXc0mgQE2_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 6, NULL, '125', NULL, 0),
(59, 'MP101018', 'HERMOSO DEPA EXCLUSIVO EN ZONA PRIVADA EN CHORRILLOS', NULL, NULL, '<p>🏢 Tu nuevo depa exclusivo te espera<br />\r\n🌊 Cerca al mar, zona privada de Chorrillos muy cerca a Barranco ✨<br />\r\n<br />\r\n🟦 Depa 302 &ndash; 3er piso (&Aacute;rea: 89 m&sup2;)<br />\r\n🚪 2 dormitorios con cl&oacute;sets<br />\r\n🛋️ Sala de estar + Sala comedor<br />\r\n🛁 2 ba&ntilde;os completos<br />\r\n🍽️ Cocina equipada + lavander&iacute;a<br />\r\n🔥 Balc&oacute;n parrillero<br />\r\n<br />\r\n🛗 Ascensor<br />\r\n💰 Precio sin estacionamiento: $179,000<br />\r\n💰 Precio con estacionamiento: $189,000<br />\r\n<br />\r\n🟩 Depa 402 &ndash; 4to piso (&Aacute;rea: 89 m&sup2;)<br />\r\n🚪 2 dormitorios con cl&oacute;sets<br />\r\n<br />\r\n🛋️ Sala de estar + Sala comedor<br />\r\n🛁 2 ba&ntilde;os completos<br />\r\n🍽️ Cocina equipada + lavander&iacute;a<br />\r\n🔥 Balc&oacute;n parrillero<br />\r\n<br />\r\n🛗 Ascensor<br />\r\n💰 Precio sin estacionamiento: $185,000<br />\r\n💰 Precio con estacionamiento: $195,000<br />\r\n<br />\r\n📄 Documentaci&oacute;n en regla &ndash; Entrega inmediata<br />\r\n<br />\r\n📲 Agenda tu visita hoy mismo:<br />\r\nMP Real State<br />\r\n📞 9320-73-345<br />\r\n&nbsp;</p>', 662300.00, 0.00, 179000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/zgn9B6C8cA_imagen.png', NULL, 0, 0, 10, 2, 3, '2', 2, '89', NULL, NULL, NULL, NULL, NULL, 'gqaw8rQafrE', NULL, NULL, 1, 0, 0, '<ul>\r\n	<li>Cerca al mar a un paso de Barranco.</li>\r\n	<li>Finos acabados, de estreno.</li>\r\n	<li>Edificio de 6 pisos.</li>\r\n	<li>2 Dormitorios de 90 m&sup2;Solo quedan 2 departamentos: 3er y 4to piso.</li>\r\n	<li>Entrega Inmediata.</li>\r\n	<li>Excelente ubicaci&oacute;n.</li>\r\n	<li>Nuestro banco promotor es el BBVA, en caso desee adquirirlo a trav&eacute;s de cr&eacute;dito hipotecario</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-06-30 18:10:06', '2025-07-11 20:40:21', 'storage/images/cotizaciones/ZyzrcqZIAI_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 6, NULL, '89', NULL, 0),
(60, 'MP301004', 'Departamento en exclusiva en miraflores Affinity', NULL, NULL, '<p>🌟 Conectividad y dise&ntilde;o en el coraz&oacute;n de Miraflores 🏡<br />\r\n<br />\r\nDescubre este proyecto residencial que combina comodidad y una ubicaci&oacute;n privilegiada para un estilo de vida &uacute;nico. Este edificio ofrece:<br />\r\nDepartamentos de 1 dormitorio 🛏️<br />\r\n&Aacute;reas desde 62.18<br />\r\nPrecio desde 422,145<br />\r\n<br />\r\n🏗️ Entrega estimada: Diciembre 2026<br />\r\n<br />\r\n&Aacute;reas comunes dise&ntilde;adas para tu bienestar:<br />\r\n<br />\r\n🏊 Piscina &amp; Jacuzzi<br />\r\n💪 Gimnasio<br />\r\n🍸 Sala Bar<br />\r\n🔥 Zona BBQ<br />\r\n🚴&zwj;♂️ Bike Zone<br />\r\n🧺 Lavander&iacute;a<br />\r\n🌳 Jard&iacute;n interior<br />\r\n🛎️ Lobby elegante<br />\r\n<br />\r\nVive cerca de todo lo que te motiva:<br />\r\n<br />\r\n🎓 Educaci&oacute;n<br />\r\n🎭 Entretenimiento<br />\r\n🍽️ Gastronom&iacute;a<br />\r\n🏨 Hoteles<br />\r\n🩺 Servicios<br />\r\n<br />\r\n📲 Cont&aacute;ctanos en MP Real State al 📞 9️⃣3️⃣2️⃣ 0️⃣7️⃣3️⃣ 3️⃣4️⃣5️⃣ y agenda tu visita hoy.<br />\r\nInvierte tu nuevo hogar en el coraz&oacute;n de Miraflores.<br />\r\n&nbsp;</p>', 422145.00, 0.00, 120613.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/EGTfavOYB7_imagen.png', NULL, 0, 0, 10, 1, 18, '2', 1, '62.18', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pasos de la Universidad Peruana Cayetano Heredia y del campus Lima de la Universidad de Piura.</li>\r\n	<li>Cercano a Larcomar, el centro comercial con vista al mar.</li>\r\n	<li>Pr&oacute;ximo al Parque Central de Miraflores, coraz&oacute;n cultural y gastron&oacute;mico del distrito.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 18:17:41', '2025-06-30 18:17:41', 'storage/images/cotizaciones/sS8CT2MWrr_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '‑12.13152', '‑77.02188', 6, NULL, '62.18', NULL, 0),
(61, 'MP301005', 'Departamento en exclusiva en miraflores Affinity', NULL, NULL, '<p>🌟 Conectividad y dise&ntilde;o en el coraz&oacute;n de Miraflores 🏡<br />\r\n<br />\r\nDescubre este proyecto residencial que combina comodidad y una ubicaci&oacute;n privilegiada para un estilo de vida &uacute;nico. Este edificio ofrece:<br />\r\nDepartamentos de 1 dormitorio 🛏️<br />\r\n&Aacute;reas desde 79.11m2<br />\r\nPrecio desde S/ 617 913.75<br />\r\n<br />\r\n🏗️ Entrega estimada: Diciembre 2026<br />\r\n<br />\r\n&Aacute;reas comunes dise&ntilde;adas para tu bienestar:<br />\r\n<br />\r\n🏊 Piscina &amp; Jacuzzi<br />\r\n💪 Gimnasio<br />\r\n🍸 Sala Bar<br />\r\n🔥 Zona BBQ<br />\r\n🚴&zwj;♂️ Bike Zone<br />\r\n🧺 Lavander&iacute;a<br />\r\n🌳 Jard&iacute;n interior<br />\r\n🛎️ Lobby elegante<br />\r\n<br />\r\nVive cerca de todo lo que te motiva:<br />\r\n<br />\r\n🎓 Educaci&oacute;n<br />\r\n🎭 Entretenimiento<br />\r\n🍽️ Gastronom&iacute;a<br />\r\n🏨 Hoteles<br />\r\n🩺 Servicios<br />\r\n<br />\r\n📲 Cont&aacute;ctanos en MP Real State al 📞 9️⃣3️⃣2️⃣ 0️⃣7️⃣3️⃣ 3️⃣4️⃣5️⃣ y agenda tu visita hoy.<br />\r\nInvierte tu nuevo hogar en el coraz&oacute;n de Miraflores.</p>', 617913.80, 0.00, 176547.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/5eT1R4paM6_imagen.png', NULL, 0, 0, 10, 2, 18, '2', 2, '79.11', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pasos de la Universidad Peruana Cayetano Heredia y del campus Lima de la Universidad de Piura.</li>\r\n	<li>Cercano a Larcomar, el centro comercial con vista al mar.</li>\r\n	<li>Pr&oacute;ximo al Parque Central de Miraflores, coraz&oacute;n cultural y gastron&oacute;mico del distrito.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 18:29:00', '2025-06-30 18:29:00', 'storage/images/cotizaciones/YLIsTd9E6E_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '‑12.13152', '‑77.02188', 6, NULL, '79.11', NULL, 0),
(62, 'MP301006', 'Departamento moderno en Miraflores Art28', NULL, NULL, '<p>✨ ART 28 &ndash; Vive sobre la Av. 28 de Julio, el eje m&aacute;s vibrante de Miraflores<br />\r\nDescubre un proyecto residencial que combina dise&ntilde;o contempor&aacute;neo y una ubicaci&oacute;n privilegiada para un estilo de vida &uacute;nico. Este edificio ofrece:<br />\r\nDepartamentos de 3 dormitorios 🛏️<br />\r\n&Aacute;reas desde 123<br />\r\nPrecio desde S/ 750379,30<br />\r\n🏗️ Entrega inmediata &ndash; &iexcl;Tu nuevo hogar te espera!<br />\r\n🏢 Departamentos de 3 dormitorios con excelente distribuci&oacute;n<br />\r\n🎨 Dise&ntilde;o moderno y acabados de primera<br />\r\n🔑 Ideal para vivir o invertir en una zona de alta demanda<br />\r\n🌟 &Aacute;reas comunes pensadas para tu estilo de vida:<br />\r\n💼 Coworking<br />\r\n🎬 Sala de cine<br />\r\n🍽️ Sala gourmet<br />\r\n🔥 Zona BBQ<br />\r\n🧘 Zona fitness y yoga<br />\r\n🚲 Estacionamiento de bicicletas<br />\r\n🐾 Pet zone<br />\r\n📍 A pasos de Larcomar, del Malec&oacute;n y de los parques Reducto y Kennedy<br />\r\n🎭 Rodeado de arte, cultura, caf&eacute;s y gastronom&iacute;a<br />\r\n🚇 Conectividad total con las principales v&iacute;as del distrito<br />\r\n📲 Cont&aacute;ctanos en MP Real State al 📞 9️⃣3️⃣2️⃣ 0️⃣7️⃣3️⃣ 3️⃣4️⃣5️⃣ y agenda tu visita hoy.<br />\r\nInvierte tu nuevo hogar en el coraz&oacute;n de Miraflores.<br />\r\n&nbsp;</p>', 750379.30, 0.00, 205223.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/3WESZ73nIE_imagen.png', NULL, 0, 0, 10, 2, 15, '2', 2, '66.41', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pasos de Larcomar, el malec&oacute;n y los parques emblem&aacute;ticos como Kennedy o Reducto.</li>\r\n	<li>Rodeado de restaurantes, caf&eacute;s, teatros y galer&iacute;as sobre Av. 28 de Julio.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 18:34:03', '2025-06-30 18:50:10', 'storage/images/cotizaciones/TTKTIM8b8D_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-121.305.021', '-770.200.473', 6, NULL, '66.41', NULL, 0);
INSERT INTO `products` (`id`, `sku`, `producto`, `pms`, `extract`, `description`, `precio`, `descuento`, `preciomin`, `preciobase`, `preciolimpieza`, `precioservicio`, `stock`, `costo_x_art`, `peso`, `imagen`, `atributes`, `destacar`, `recomendar`, `categoria_id`, `cuartos`, `pisos`, `movilidad`, `banios`, `area`, `address`, `inside`, `district`, `city`, `country`, `calendar_url`, `airbnb_url`, `frecuencia`, `cochera`, `mascota`, `mobiliado`, `incluye`, `no_incluye`, `disponible`, `no_disponible`, `departamento_id`, `provincia_id`, `distrito_id`, `visible`, `status`, `created_at`, `updated_at`, `imagen_ambiente`, `subcategory_id`, `imagen_2`, `imagen_3`, `imagen_4`, `color`, `image_texture`, `slug`, `max_stock`, `precio_reseller`, `meta_title`, `meta_description`, `meta_keywords`, `latitud`, `longitud`, `staff_id`, `ocupada`, `construida`, `medidas`, `endescuento`) VALUES
(63, 'MP301008', 'Dúplex y flats exclusivos en Miraflores 1 – Francisco del Castillo', NULL, NULL, '<p>🏡 Francisco del Castillo 252 &ndash; Tranquilidad, amplitud y estilo en Miraflores<br />\r\n💡 Vive en una zona residencial conectada con todo lo que necesitas. El proyecto est&aacute; rodeado de parques, tiendas, supermercados y caf&eacute;s, ideal para familias y profesionales que buscan amplitud y calidad de vida en pleno Miraflores.<br />\r\n🏙️ Departamentos flat y d&uacute;plex<br />\r\n🛏️ 1 dormitorio | 🛁 1 a 2 ba&ntilde;os<br />\r\n📐 Desde 80.3 m&sup2;<br />\r\n💰 Desde S/ 728 877,19<br />\r\n📆 Entrega estimada: septiembre 2026<br />\r\n<br />\r\n🌟 &Aacute;reas comunes que elevan tu estilo de vida:<br />\r\n🎯 Lobby elegante<br />\r\n🐾 Pet spa<br />\r\n🚲 Bike zone<br />\r\n🧺 Zona de lavander&iacute;a<br />\r\n<br />\r\n🗺️ Entorno residencial con todo a la mano:<br />\r\n🌳 A pasos del Parque Reducto<br />\r\n🛒 Cerca a supermercados, caf&eacute;s, restaurantes y gimnasios<br />\r\n🚶 Zona tranquila, ideal para caminar y vivir sin estr&eacute;s<br />\r\n<br />\r\n📲 Cont&aacute;ctanos en MP Real State al 📞 9️⃣3️⃣2️⃣ 0️⃣7️⃣3️⃣ 3️⃣4️⃣5️⃣ y agenda tu visita hoy.<br />\r\nInvierte tu nuevo hogar en el coraz&oacute;n de Miraflores.<br />\r\n&nbsp;</p>', 728877.20, 0.00, 208250.70, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/zWGGVwvwLM_imagen.png', NULL, 0, 0, 10, 1, 5, '2', 1, '80.3', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<ul>\r\n	<li>A pasos del Parque Reducto y la V&iacute;a Expresa.</li>\r\n	<li>Cercano a supermercados, caf&eacute;s y gimnasios.</li>\r\n	<li>Pr&oacute;ximo al centro de Miraflores, con acceso a su zona comercial, cultural y gastron&oacute;mica.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 18:57:49', '2025-06-30 18:57:49', 'storage/images/cotizaciones/xs4y2xgNYn_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-121.218', '-770.295', 6, NULL, '80.3', NULL, 0),
(64, 'MP301009', 'Dúplex y flats exclusivos en Miraflores 2 – Francisco del Castillo', NULL, NULL, '<p>🏡 Francisco del Castillo 252 &ndash; Tranquilidad, amplitud y estilo en Miraflores<br />\r\n💡 Vive en una zona residencial conectada con todo lo que necesitas. El proyecto est&aacute; rodeado de parques, tiendas, supermercados y caf&eacute;s, ideal para familias y profesionales que buscan amplitud y calidad de vida en pleno Miraflores.<br />\r\n🏙️ Departamentos flat y d&uacute;plex<br />\r\n🛏️ 2 dormitorio | 🛁 2 a 3 ba&ntilde;os<br />\r\n📐 Desde 110,33 m&sup2;<br />\r\n💰 Desde S/ 1,037 748,87<br />\r\n📆 Entrega estimada: septiembre 2026<br />\r\n<br />\r\n🌟 &Aacute;reas comunes que elevan tu estilo de vida:<br />\r\n🎯 Lobby elegante<br />\r\n🐾 Pet spa<br />\r\n🚲 Bike zone<br />\r\n🧺 Zona de lavander&iacute;a<br />\r\n<br />\r\n🗺️ Entorno residencial con todo a la mano:<br />\r\n🌳 A pasos del Parque Reducto<br />\r\n🛒 Cerca a supermercados, caf&eacute;s, restaurantes y gimnasios<br />\r\n🚶 Zona tranquila, ideal para caminar y vivir sin estr&eacute;s<br />\r\n<br />\r\n📲 Cont&aacute;ctanos en MP Real State al 📞 9️⃣3️⃣2️⃣ 0️⃣7️⃣3️⃣ 3️⃣4️⃣5️⃣ y agenda tu visita hoy.<br />\r\nInvierte tu nuevo hogar en el coraz&oacute;n de Miraflores.<br />\r\n&nbsp;</p>', 1037748.90, 0.00, 296499.70, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/MYZvTnsnv9_imagen.png', NULL, 0, 0, 10, 2, 5, '4', 2, '110.33', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>A pasos del Parque Reducto y la V&iacute;a Expresa. &ndash; Cercano a supermercados, caf&eacute;s y gimnasios. &ndash; Pr&oacute;ximo al centro de Miraflores, con acceso a su zona comercial, cultural y gastron&oacute;mica.</p>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 19:02:13', '2025-06-30 19:02:13', 'storage/images/cotizaciones/ITPDDRI4Tb_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-121.218', '-770.295', 6, NULL, '110.33', NULL, 0),
(65, 'MP301010', 'Departamentos flat exclusivos en Barranco 1 – MONUMENT', NULL, NULL, '<p>🏙️ Departamentos flat exclusivos en Barranco 1 &ndash; MONUMENT<br />\r\nUn proyecto &uacute;nico que une arquitectura contempor&aacute;nea con el alma barranquina. MONUMENT est&aacute; ubicado a pasos del malec&oacute;n, rodeado de galer&iacute;as, caf&eacute;s, arte y cultura. Ideal para quienes valoran el dise&ntilde;o, la autenticidad y una vida con estilo.<br />\r\n<br />\r\n📐 Detalles del proyecto<br />\r\n🛏️ 1 dormitorio<br />\r\n📐 Desde 68 m&sup2;<br />\r\n🏗️ Proyecto en construcci&oacute;n<br />\r\n📆 Entrega estimada: diciembre 2025<br />\r\n💼 Financiamiento con BBVA<br />\r\n<br />\r\n🌟 &Aacute;reas comunes que inspiran<br />\r\n🎯 Lobby de dise&ntilde;o<br />\r\n📖 Coworking y sala de reuniones<br />\r\n🍷 Lounge + bar<br />\r\n🌿 Terraza y jard&iacute;n interior<br />\r\n🧘 Espacio zen<br />\r\n🚲 Bike Zone<br />\r\n🧺 Lavander&iacute;a<br />\r\n🗺️ Entorno y conectividad<br />\r\n<br />\r\n🧱 Ficha t&eacute;cnica del proyecto<br />\r\n🏢 Tipolog&iacute;a: Flat<br />\r\n📏 N&uacute;mero de pisos: 7 aprox.<br />\r\n🎨 Estilo: Contempor&aacute;neo, con integraci&oacute;n de elementos del contexto hist&oacute;rico<br />\r\n<br />\r\n📲 Cont&aacute;ctanos<br />\r\nEn MP Real State &ndash; Tu aliado inmobiliario<br />\r\n📞 9️⃣3️⃣2️⃣ 0️⃣7️⃣3️⃣ 3️⃣4️⃣5️⃣<br />\r\n📧 dpauli@mprealstate.com<br />\r\n🌐 www.mprealstate.com<br />\r\n&nbsp;</p>', 672309.30, 0.00, 192088.40, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos//T1Rz5oNhQI_imagen.png', NULL, 0, 0, NULL, 1, 17, '4', 2, '68', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<ul>\r\n	<li>A pasos del Malec&oacute;n Paul Harris y el Puente de los Suspiros.</li>\r\n	<li>Cerca a galer&iacute;as de arte, museos y caf&eacute;s emblem&aacute;ticos.</li>\r\n	<li>A minutos de la estaci&oacute;n Bulevar (Metropolitano).</li>\r\n	<li>Acceso r&aacute;pido a Miraflores y centros comerciales.</li>\r\n	<li>Zona tranquila, art&iacute;stica y altamente caminable</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 19:33:33', '2025-06-30 19:33:33', 'storage/images/cotizaciones/lRAXfnE4Ks_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-121.444', '-770.219', NULL, NULL, '68', NULL, 0),
(66, 'MP301011', 'Departamentos flat exclusivos en Barranco 2 – MONUMENT', NULL, NULL, '<p>🏙️ Departamentos flat exclusivos en Barranco 2 &ndash; MONUMENT<br />\r\nUn proyecto &uacute;nico que une arquitectura contempor&aacute;nea con el alma barranquina. MONUMENT est&aacute; ubicado a pasos del malec&oacute;n, rodeado de galer&iacute;as, caf&eacute;s, arte y cultura. Ideal para quienes valoran el dise&ntilde;o, la autenticidad y una vida con estilo.<br />\r\n<br />\r\n📐 Detalles del proyecto<br />\r\n🛏️ 2 dormitorio<br />\r\n📐 Desde 85,01 m&sup2;<br />\r\n🏗️ Proyecto en construcci&oacute;n<br />\r\n📆 Entrega estimada: diciembre 2025<br />\r\n💼 Financiamiento con BBVA<br />\r\n<br />\r\n🌟 &Aacute;reas comunes que inspiran<br />\r\n🎯 Lobby de dise&ntilde;o<br />\r\n📖 Coworking y sala de reuniones<br />\r\n🍷 Lounge + bar<br />\r\n🌿 Terraza y jard&iacute;n interior<br />\r\n🧘 Espacio zen<br />\r\n🚲 Bike Zone<br />\r\n🧺 Lavander&iacute;a<br />\r\n🗺️ Entorno y conectividad<br />\r\n<br />\r\n📍 A pasos del Malec&oacute;n Paul Harris y el Puente de los Suspiros<br />\r\n🎨 Cerca a galer&iacute;as de arte, museos y caf&eacute;s emblem&aacute;ticos<br />\r\n🚇 A minutos de la estaci&oacute;n Bulevar (Metropolitano)<br />\r\n🛍️ Acceso r&aacute;pido a Miraflores y centros comerciales<br />\r\n🌳 Zona tranquila, art&iacute;stica y altamente caminable<br />\r\n<br />\r\n🧱 Ficha t&eacute;cnica del proyecto<br />\r\n🏢 Tipolog&iacute;a: Flat<br />\r\n📏 N&uacute;mero de pisos: 7 aprox.<br />\r\n🎨 Estilo: Contempor&aacute;neo, con integraci&oacute;n de elementos del contexto hist&oacute;rico<br />\r\n<br />\r\n📲 Cont&aacute;ctanos<br />\r\nEn MP Real State &ndash; Tu aliado inmobiliario<br />\r\n📞 9️⃣3️⃣2️⃣ 0️⃣7️⃣3️⃣ 3️⃣4️⃣5️⃣<br />\r\n📧 dpauli@mprealstate.com<br />\r\n🌐 www.mprealstate.com<br />\r\n&nbsp;</p>', 817566.00, 0.00, 233590.30, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/HoYPZbjuMe_imagen.png', NULL, 0, 0, 10, 2, 17, '4', 2, '85.01', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pasos del Malec&oacute;n Paul Harris y el Puente de los Suspiros.</li>\r\n	<li>Cerca a galer&iacute;as de arte, museos y caf&eacute;s emblem&aacute;ticos.</li>\r\n	<li>A minutos de la estaci&oacute;n Bulevar (Metropolitano).</li>\r\n	<li>Acceso r&aacute;pido a Miraflores y centros comerciales.</li>\r\n	<li>Zona tranquila, art&iacute;stica y altamente caminable</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 19:46:14', '2025-06-30 19:48:27', 'storage/images/cotizaciones/W3ww7SCGs4_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-121.444', '-770.219', 6, NULL, '85.01', NULL, 0),
(67, 'MP301010', 'Departamentos flat exclusivos en Barranco 1 – MONUMENT', NULL, NULL, '<p>🏙️ Departamentos flat exclusivos en Barranco 1 &ndash; MONUMENT<br />\r\nUn proyecto &uacute;nico que une arquitectura contempor&aacute;nea con el alma barranquina. MONUMENT est&aacute; ubicado a pasos del malec&oacute;n, rodeado de galer&iacute;as, caf&eacute;s, arte y cultura. Ideal para quienes valoran el dise&ntilde;o, la autenticidad y una vida con estilo.<br />\r\n<br />\r\n📐 Detalles del proyecto<br />\r\n🛏️ 1 dormitorio<br />\r\n📐 Desde 68 m&sup2;<br />\r\n🏗️ Proyecto en construcci&oacute;n<br />\r\n📆 Entrega estimada: diciembre 2025<br />\r\n💼 Financiamiento con BBVA<br />\r\n<br />\r\n🌟 &Aacute;reas comunes que inspiran<br />\r\n🎯 Lobby de dise&ntilde;o<br />\r\n📖 Coworking y sala de reuniones<br />\r\n🍷 Lounge + bar<br />\r\n🌿 Terraza y jard&iacute;n interior<br />\r\n🧘 Espacio zen<br />\r\n🚲 Bike Zone<br />\r\n🧺 Lavander&iacute;a<br />\r\n🗺️ Entorno y conectividad<br />\r\n<br />\r\n🧱 Ficha t&eacute;cnica del proyecto<br />\r\n🏢 Tipolog&iacute;a: Flat<br />\r\n📏 N&uacute;mero de pisos: 7 aprox.<br />\r\n🎨 Estilo: Contempor&aacute;neo, con integraci&oacute;n de elementos del contexto hist&oacute;rico<br />\r\n<br />\r\n📲 Cont&aacute;ctanos<br />\r\nEn MP Real State &ndash; Tu aliado inmobiliario<br />\r\n📞 9️⃣3️⃣2️⃣ 0️⃣7️⃣3️⃣ 3️⃣4️⃣5️⃣<br />\r\n📧 dpauli@mprealstate.com<br />\r\n🌐 www.mprealstate.com<br />\r\n&nbsp;</p>', 672309.30, 0.00, 192088.40, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/rKpztffage_imagen.png', NULL, 0, 0, 10, 1, 17, '4', 2, '68', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<ul>\r\n	<li>A pasos del Malec&oacute;n Paul Harris y el Puente de los Suspiros.</li>\r\n	<li>Cerca a galer&iacute;as de arte, museos y caf&eacute;s emblem&aacute;ticos.</li>\r\n	<li>A minutos de la estaci&oacute;n Bulevar (Metropolitano).</li>\r\n	<li>Acceso r&aacute;pido a Miraflores y centros comerciales.</li>\r\n	<li>Zona tranquila, art&iacute;stica y altamente caminable</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 19:52:09', '2025-06-30 19:52:09', 'storage/images/cotizaciones/TMA0Kt0E8u_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-121.444', '-770.219', 6, NULL, '68', NULL, 0),
(68, 'MP301012', 'Modernos Departamentos en el Corazón de Miraflores 1 - The Edge', NULL, NULL, '<p>🌆✨ THE EDGE - Modernos Departamentos en el Coraz&oacute;n de Miraflores<br />\r\nThe Edge es un proyecto que combina dise&ntilde;o moderno, ubicaci&oacute;n estrat&eacute;gica y espacios eficientes. Ideal para quienes valoran la cercan&iacute;a a centros financieros, universidades, cultura y entretenimiento. Un edificio con personalidad, pensado para quienes viven al ritmo de la ciudad.<br />\r\n📐 Detalles del proyecto<br />\r\n🛏️ 1 dormitorios<br />\r\n📐 Desde 60,3 m&sup2;<br />\r\n🏗️ Proyecto en construcci&oacute;n<br />\r\n📆 Entrega estimada: octubre 2025<br />\r\n💼 Financiamiento con BBVA<br />\r\n<br />\r\n<br />\r\n🏙️ Caracter&iacute;sticas del Proyecto:<br />\r\n🏢 Edificio con certificaci&oacute;n ecol&oacute;gica LEED<br />\r\n🎯 Lobby de dise&ntilde;o<br />\r\n🖥️ Coworking + sala de reuniones<br />\r\n🎬 Cine<br />\r\n🏋️ Gimnasio<br />\r\n🌿 Terraza y jard&iacute;n<br />\r\n🚲 Bike zone<br />\r\n🧺 Lavander&iacute;a<br />\r\n🛗 Ascensor directo al departamento<br />\r\n<br />\r\n📲 M&aacute;s informaci&oacute;n y visitas:<br />\r\n9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n<br />\r\n&nbsp;</p>', 790770.60, 0.00, 225934.50, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/FCroG4mY1o_imagen.png', NULL, 0, 0, 10, 1, 20, '3', 2, '60.3', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<ul>\r\n	<li>A pasos de la Universidad de Piura (Campus Lima), la Universidad Peruana Cayetano Heredia y UTEC.</li>\r\n	<li>Cercano a Open Plaza Angamos y a los principales centros comerciales de la zona.</li>\r\n	<li>Rodeado de restaurantes, caf&eacute;s y servicios.</li>\r\n	<li>A solo 6 minutos caminando de la estaci&oacute;n Angamos del Metropolitano y conectado con avenidas clave como Rep&uacute;blica de Panam&aacute;, Angamos y la V&iacute;a Expresa.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 19:57:48', '2025-06-30 19:57:48', 'storage/images/cotizaciones/NNzfprWeNh_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-121.207', '-770.198', 6, NULL, '60.3', NULL, 0),
(69, 'MP301013', 'Modernos Departamentos en el Corazón de Miraflores 2 - The Edge', NULL, NULL, '<p>🌆✨ THE EDGE - Modernos Departamentos en el Coraz&oacute;n de Miraflores<br />\r\nThe Edge es un proyecto que combina dise&ntilde;o moderno, ubicaci&oacute;n estrat&eacute;gica y espacios eficientes. Ideal para quienes valoran la cercan&iacute;a a centros financieros, universidades, cultura y entretenimiento. Un edificio con personalidad, pensado para quienes viven al ritmo de la ciudad.<br />\r\n📐 Detalles del proyecto<br />\r\n🛏️ 2 dormitorios<br />\r\n📐 Desde 85,03 m&sup2;<br />\r\n🏗️ Proyecto en construcci&oacute;n<br />\r\n📆 Entrega estimada: octubre 2025<br />\r\n💼 Financiamiento con BBVA<br />\r\n<br />\r\n<br />\r\n🏙️ Caracter&iacute;sticas del Proyecto:<br />\r\n🏢 Edificio con certificaci&oacute;n ecol&oacute;gica LEED<br />\r\n🎯 Lobby de dise&ntilde;o<br />\r\n🖥️ Coworking + sala de reuniones<br />\r\n🎬 Cine<br />\r\n🏋️ Gimnasio<br />\r\n🌿 Terraza y jard&iacute;n<br />\r\n🚲 Bike zone<br />\r\n🧺 Lavander&iacute;a<br />\r\n🛗 Ascensor directo al departamento<br />\r\n<br />\r\n📲 M&aacute;s informaci&oacute;n y visitas:<br />\r\n9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n<br />\r\n&nbsp;</p>', 942615.60, 0.00, 269318.80, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/Jp2BzhDKGH_imagen.png', NULL, 0, 0, 10, 2, 19, '3', 2, '60.3', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pasos de la Universidad de Piura (Campus Lima), la Universidad Peruana Cayetano Heredia y UTEC.</li>\r\n	<li>Cercano a Open Plaza Angamos y a los principales centros comerciales de la zona.</li>\r\n	<li>Rodeado de restaurantes, caf&eacute;s y servicios.</li>\r\n	<li>A solo 6 minutos caminando de la estaci&oacute;n Angamos del Metropolitano y conectado con avenidas clave como Rep&uacute;blica de Panam&aacute;, Angamos y la V&iacute;a Expresa.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 20:05:39', '2025-06-30 20:05:39', 'storage/images/cotizaciones/Q8hO6A1JUV_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-121.207', '-770.198', 6, NULL, '60.3', NULL, 0),
(70, 'MP301014', 'Vivienda contemporánea en el corazón de Miraflores1 – UPPER 28', NULL, NULL, '<p>&iexcl;Vive la vida cosmopolita en Miraflores!<br />\r\nUPPER 28 es un proyecto moderno y exclusivo en una de las zonas m&aacute;s conectadas y vibrantes de Miraflores. Con una propuesta arquitect&oacute;nica de vanguardia y espacios bien distribuidos, es ideal para quienes buscan una vida urbana con estilo, comodidad y acceso a todo.<br />\r\n🛏️ 1 dormitorio<br />\r\n📐 Desde 60,24 m&sup2;<br />\r\n🏗️ Proyecto en construcci&oacute;n<br />\r\n📆 Entrega estimada: diciembre 2025<br />\r\n💼 Financiamiento con BBVA<br />\r\n<br />\r\n✨ &Aacute;reas comunes premium:<br />\r\n🎯 Lobby moderno<br />\r\n📖 Coworking y sala de reuniones<br />\r\n🎬 Sala de cine<br />\r\n💪 Gimnasio equipado<br />\r\n🌿 Jard&iacute;n interior<br />\r\n🚲 Bicicletero<br />\r\n🧺 Lavander&iacute;a<br />\r\n🌱 Edificio ecoeficiente con certificaci&oacute;n LEED (ahorro en agua y energ&iacute;a)<br />\r\n<br />\r\n🌇 Vive rodeado de cultura, gastronom&iacute;a y entretenimiento.<br />\r\nPerfecto para vivir o invertir con alta proyecci&oacute;n.<br />\r\n<br />\r\n🏢 Tipolog&iacute;a: Flats<br />\r\n📏 &Aacute;rea: 60,24 m&sup2;<br />\r\n🏢 Pisos: 18 niveles aprox.<br />\r\n🎨 Estilo: Contempor&aacute;neo &ndash; urbano<br />\r\n<br />\r\nCont&aacute;ctanos y agenda tu visita con MP Real State 📞 932 073 345<br />\r\n&nbsp;</p>', 613206.70, 0.00, 175201.90, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/ycxoUkb6n3_imagen.png', NULL, 0, 0, 10, 1, 9, '3', 1, '60.24', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pasos de la Universidad de Piura (Campus Lima) y la Universidad Peruana Cayetano Heredia.</li>\r\n	<li>Muy cerca a supermercados, bancos y centros comerciales como Wong y Open Plaza.</li>\r\n	<li>Rodeado de caf&eacute;s, restaurantes y espacios culturales.</li>\r\n	<li>A 7 minutos caminando de la estaci&oacute;n Ricardo Palma del Metropolitano y con r&aacute;pido acceso a la V&iacute;a Expresa, Av. Arequipa y Av. Angamos.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 20:11:44', '2025-06-30 20:11:44', 'storage/images/cotizaciones/DmFozgalhc_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-121.197', '-770.309', 6, NULL, '60.24', NULL, 0),
(71, '150122', 'Vivienda contemporánea en el corazón de Miraflores2 – UPPER 28', NULL, NULL, '<p>&iexcl;Vive la vida cosmopolita en Miraflores!<br />\r\nUPPER 28 es un proyecto moderno y exclusivo en una de las zonas m&aacute;s conectadas y vibrantes de Miraflores. Con una propuesta arquitect&oacute;nica de vanguardia y espacios bien distribuidos, es ideal para quienes buscan una vida urbana con estilo, comodidad y acceso a todo.<br />\r\n🛏️ 2 dormitorio<br />\r\n📐 Desde 75,27 m&sup2;<br />\r\n🏗️ Proyecto en construcci&oacute;n<br />\r\n📆 Entrega estimada: diciembre 2025<br />\r\n💼 Financiamiento con BBVA<br />\r\n<br />\r\n✨ &Aacute;reas comunes premium:<br />\r\n🎯 Lobby moderno<br />\r\n📖 Coworking y sala de reuniones<br />\r\n🎬 Sala de cine<br />\r\n💪 Gimnasio equipado<br />\r\n🌿 Jard&iacute;n interior<br />\r\n🚲 Bicicletero<br />\r\n🧺 Lavander&iacute;a<br />\r\n🌱 Edificio ecoeficiente con certificaci&oacute;n LEED (ahorro en agua y energ&iacute;a)<br />\r\n<br />\r\n🌇 Vive rodeado de cultura, gastronom&iacute;a y entretenimiento.<br />\r\nPerfecto para vivir o invertir con alta proyecci&oacute;n.<br />\r\n<br />\r\nCont&aacute;ctanos y agenda tu visita con MP Real State 📞 932 073 345<br />\r\n&nbsp;</p>', 776428.00, 0.00, 221836.60, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/LW6yUx2WbK_imagen.png', NULL, 0, 0, 10, 2, 11, '3', 2, '75.27', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pasos de la Universidad de Piura (Campus Lima) y la Universidad Peruana Cayetano Heredia.</li>\r\n	<li>Muy cerca a supermercados, bancos y centros comerciales como Wong y Open Plaza.</li>\r\n	<li>Rodeado de caf&eacute;s, restaurantes y espacios culturales.</li>\r\n	<li>A 7 minutos caminando de la estaci&oacute;n Ricardo Palma del Metropolitano y con r&aacute;pido acceso a la V&iacute;a Expresa, Av. Arequipa y Av. Angamos.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 20:21:40', '2025-06-30 20:21:40', 'storage/images/cotizaciones/9gRJPw5RNa_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-121.197', '-770.309', 6, NULL, '75.27', NULL, 0),
(72, 'MP301016', 'Tu depa moderno en Miraflores 1 Urban Heights', NULL, NULL, '<p>✨Tu depa moderno en Miraflores - Urban Heights✨<br />\r\nUrban Heights es un exclusivo proyecto de Edifica en Miraflores que ofrece departamentos bien distribuidos, &aacute;reas comunes de primera y una ubicaci&oacute;n estrat&eacute;gica. Ideal para quienes buscan dise&ntilde;o, comodidad y cercan&iacute;a a toda la vida urbana.<br />\r\n📐 Detalles del proyecto<br />\r\n🛏️ Departamentos de 1 dormitorio<br />\r\n📐 &Aacute;reas desde 40.00 m&sup2; hasta 62.80 m&sup2;<br />\r\n🏗️ Proyecto en planos / en construcci&oacute;n<br />\r\n📆 Entrega estimada: septiembre 2026)<br />\r\n💰 Precios desde S/ 413 737,66<br />\r\n<br />\r\n🌟 &Aacute;reas comunes de primer nivel<br />\r\n🎯 Lobby<br />\r\n🏋️ Gimnasio<br />\r\n🌿 Jard&iacute;n interior<br />\r\n🏊 Piscina<br />\r\n🍷 Sala bar<br />\r\n🍖 Zona BBQ<br />\r\n🚲 Bike Zone<br />\r\n🧺 Lavander&iacute;a<br />\r\n<br />\r\n📲 Cont&aacute;ctanos en MP Real State<br />\r\n📞 932 073 345<br />\r\n&nbsp;</p>', 413737.70, 0.00, 118210.10, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/AwcypFC0oa_imagen.png', NULL, 0, 0, 10, 1, 22, '4', 1, '40', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pasos del Parque Reducto y del Centro Comercial 28 de Julio.</li>\r\n	<li>Muy cerca a Open Plaza Angamos, Wong, bancos y servicios.</li>\r\n	<li>Rodeado de restaurantes, caf&eacute;s y vida cultural.</li>\r\n	<li>A solo 6 minutos caminando de la estaci&oacute;n Angamos del Metropolitano.</li>\r\n	<li>Con acceso r&aacute;pido a la V&iacute;a Expresa, Av. Paseo de la Rep&uacute;blica, Arequipa y Angamos.</li>\r\n	<li>Zona caminable con ciclov&iacute;as hacia Miraflores y distritos aleda&ntilde;os.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-06-30 20:34:35', '2025-06-30 20:34:35', 'storage/images/cotizaciones/xsnWDPEg5S_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-12,122', '-77,018', 6, NULL, '40', NULL, 0),
(73, 'MP301017', 'Tu depa moderno en Miraflores 2 Urban Heights', NULL, NULL, '<p>✨Tu depa moderno en Miraflores - Urban Heights✨<br />\r\nUrban Heights es un exclusivo proyecto de Edifica en Miraflores que ofrece departamentos bien distribuidos, &aacute;reas comunes de primera y una ubicaci&oacute;n estrat&eacute;gica. Ideal para quienes buscan dise&ntilde;o, comodidad y cercan&iacute;a a toda la vida urbana.<br />\r\n📐 Detalles del proyecto<br />\r\n🛏️ Departamentos de 2 dormitorio<br />\r\n📐 &Aacute;reas desde 91.11 m&sup2;<br />\r\n🏗️ Proyecto en planos / en construcci&oacute;n<br />\r\n📆 Entrega estimada: septiembre 2026)<br />\r\n💰 Precios desde S/ 1,000 860,24<br />\r\n<br />\r\n🌟 &Aacute;reas comunes de primer nivel<br />\r\n🎯 Lobby<br />\r\n🏋️ Gimnasio<br />\r\n🌿 Jard&iacute;n interior<br />\r\n🏊 Piscina<br />\r\n🍷 Sala bar<br />\r\n🍖 Zona BBQ<br />\r\n🚲 Bike Zone<br />\r\n🧺 Lavander&iacute;a<br />\r\n<br />\r\n📍 A pasos del Parque Reducto y del Centro Comercial 28 de Julio<br />\r\n🛍️ Muy cerca a Open Plaza Angamos, Wong, bancos y servicios<br />\r\n🍽️ Rodeado de restaurantes, caf&eacute;s y vida cultural<br />\r\n🚇 A solo 6 min caminando de la estaci&oacute;n del Metropolitano (Angamos)<br />\r\n🛣️ Con acceso r&aacute;pido a la V&iacute;a Expresa, Av. Paseo de la Rep&uacute;blica, Arequipa y Angamos<br />\r\n🚲 Zona caminable con ciclov&iacute;as conectando a Miraflores y distritos aleda&ntilde;os<br />\r\n<br />\r\n🧱 Ficha t&eacute;cnica del proyecto<br />\r\n🏢 Tipolog&iacute;a: Flat y d&uacute;plex<br />\r\n📏 &Aacute;rea: 91.11m&sup2; hasta 149 m&sup2;<br />\r\n🏙️ Pisos: entre 10 y 22 niveles<br />\r\n🎨 Estilo: Contempor&aacute;neo &ndash; urbano<br />\r\n<br />\r\n📲 Cont&aacute;ctanos en MP Real State<br />\r\n📞 932 073 345</p>', 1000860.30, 0.00, 285960.10, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/j2nY1g8oJD_imagen.png', NULL, 0, 0, 10, 2, 22, '4', 2, '91.11', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pasos del Parque Reducto y del Centro Comercial 28 de Julio.</li>\r\n	<li>Muy cerca a Open Plaza Angamos, Wong, bancos y servicios.</li>\r\n	<li>Rodeado de restaurantes, caf&eacute;s y vida cultural.</li>\r\n	<li>A solo 6 minutos caminando de la estaci&oacute;n Angamos del Metropolitano.</li>\r\n	<li>Con acceso r&aacute;pido a la V&iacute;a Expresa, Av. Paseo de la Rep&uacute;blica, Arequipa y Angamos.</li>\r\n	<li>Zona caminable con ciclov&iacute;as hacia Miraflores y distritos aleda&ntilde;os.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 20:47:24', '2025-06-30 20:47:24', 'storage/images/cotizaciones/pBRtPz2NCm_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-12,122', '-77,018', 6, NULL, '91.11', NULL, 0),
(74, 'MP301018', '🔷 Departamentos funcionales en el corazón de Barranco 1 – GRAU 10', NULL, NULL, '<p>🔷 Departamentos funcionales en el coraz&oacute;n de Barranco &ndash; GRAU 10<br />\r\nUn proyecto moderno, compacto y con alto potencial de valorizaci&oacute;n. Vive en una de las zonas m&aacute;s aut&eacute;nticas de Lima, rodeado de cultura, arte y buena conexi&oacute;n.<br />\r\n<br />\r\n🏢 Departamentos de 1 ambiente<br />\r\n📐 Desde 40 m&sup2; aprox.<br />\r\n🏗️ Proyecto en desarrollo<br />\r\n📆 Entrega estimada: consultar disponibilidad<br />\r\n💼 Financiamiento disponible<br />\r\n💰 Ideal para inversi&oacute;n o primera vivienda<br />\r\n<br />\r\n🌟 &Aacute;reas comunes funcionales y bien dise&ntilde;adas<br />\r\n🎯 Lobby de ingreso<br />\r\n💼 Business center<br />\r\n☕ Cafeter&iacute;a<br />\r\n📋 Sala de directorio<br />\r\n🛗 Ascensores privados<br />\r\n🔒 Seguridad 24/7<br />\r\n🗺️ Entorno y conectividad<br />\r\n<br />\r\n📲 Cont&aacute;ctanos en MP Real State<br />\r\n📞 932 073 345<br />\r\n📧 dpauli@mprealstate.com<br />\r\n🌐 www.mprealstate.com<br />\r\n&nbsp;</p>', 400369.70, 0.00, 114391.40, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/tk0qE44lKk_imagen.png', NULL, 0, 0, 10, 1, 18, '3', 1, '40', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pasos del Malec&oacute;n Souza y el Puente de los Suspiros.</li>\r\n	<li>Rodeado de galer&iacute;as, caf&eacute;s, restaurantes y espacios culturales.</li>\r\n	<li>Cercano a la estaci&oacute;n Bulevar del Metropolitano.</li>\r\n	<li>Conectado con Miraflores, San Isidro y Surco.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-06-30 20:51:21', '2025-06-30 20:51:21', 'storage/images/cotizaciones/TN1ODnd39k_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '–12.14292', '–77.02144', 6, NULL, '40', NULL, 0),
(75, 'MP301019', '🔷 Departamentos funcionales en el corazón de Barranco 2 – GRAU 10', NULL, NULL, '<p>🔷 Departamentos funcionales en el coraz&oacute;n de Barranco &ndash; GRAU 10<br />\r\nUn proyecto moderno, compacto y con alto potencial de valorizaci&oacute;n. Vive en una de las zonas m&aacute;s aut&eacute;nticas de Lima, rodeado de cultura, arte y buena conexi&oacute;n.<br />\r\n<br />\r\n🏢 Departamentos de 2 ambientes<br />\r\n📐 Desde 54,44 m&sup2;<br />\r\n🏗️ Proyecto en desarrollo<br />\r\n📆 Entrega estimada: consultar disponibilidad<br />\r\n💼 Financiamiento disponible<br />\r\n💰 Ideal para inversi&oacute;n o primera vivienda<br />\r\n<br />\r\n🌟 &Aacute;reas comunes funcionales y bien dise&ntilde;adas<br />\r\n🎯 Lobby de ingreso<br />\r\n💼 Business center<br />\r\n☕ Cafeter&iacute;a<br />\r\n📋 Sala de directorio<br />\r\n🛗 Ascensores privados<br />\r\n🔒 Seguridad 24/7<br />\r\n🗺️ Entorno y conectividad<br />\r\n<br />\r\n📲 Cont&aacute;ctanos en MP Real State<br />\r\n📞 932 073 345<br />\r\n📧 dpauli@mprealstate.com<br />\r\n🌐 www.mprealstate.com<br />\r\n&nbsp;</p>', 499042.50, 0.00, 142583.60, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/5FbhxzeFyt_imagen.png', NULL, 0, 0, 10, 2, 22, '3', 2, '54.44', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pasos del Malec&oacute;n Souza y el Puente de los Suspiros.</li>\r\n	<li>Rodeado de galer&iacute;as, caf&eacute;s, restaurantes y espacios culturales.</li>\r\n	<li>Cercano a la estaci&oacute;n Bulevar del Metropolitano.</li>\r\n	<li>Conectado con Miraflores, San Isidro y Surco.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150104', 1, 1, '2025-06-30 21:06:23', '2025-06-30 21:06:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '–12.14293', '–77.02145', 6, NULL, '54.44', NULL, 0),
(76, 'MP301020', 'Vive la esencia de Miraflores desde ELEMENT_1', NULL, NULL, '<p>🔷 Vive la esencia de Surquillo desde ELEMENT<br />\r\nUn proyecto que combina arquitectura moderna, funcionalidad y excelente ubicaci&oacute;n en Surquillo. Ideal para quienes valoran un estilo de vida urbano, conectado y con gran proyecci&oacute;n de inversi&oacute;n.<br />\r\n<br />\r\n🏢 Departamentos funcionales y bien distribuidos<br />\r\n🛏️ 1 dormitorios<br />\r\n📐 Desde 28,91 m&sup2;<br />\r\nPrecio desde: S/ 244 247.72<br />\r\n🏗️ Proyecto en construcci&oacute;n<br />\r\n📆 Entrega estimada: consultar disponibilidad<br />\r\n💼 Financiamiento disponible<br />\r\n💰 Ideal para vivir o invertir<br />\r\n<br />\r\n🌟 &Aacute;reas comunes pensadas para ti<br />\r\n🎯 Lobby moderno<br />\r\n💼 Coworking y sala de reuniones<br />\r\n🌿 Jard&iacute;n interior<br />\r\n☕ Zona de caf&eacute;<br />\r\n🧺 Lavander&iacute;a<br />\r\n🔒 Seguridad 24/7<br />\r\n🛗 Ascensores de &uacute;ltima generaci&oacute;n<br />\r\n🗺️ Entorno y conectividad<br />\r\n<br />\r\n📲 Cont&aacute;ctanos en MP Real State<br />\r\n📞 932 073 345<br />\r\n📧 dpauli@mprealstate.com<br />\r\n🌐 <a href=\"http://www.mprealstate.com/\" target=\"_blank\">www.mprealstate.com</a></p>', 244247.80, 0.00, 79213.70, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/eXZyREm9wA_imagen.png', NULL, 0, 0, 10, 1, 17, '3', 1, '28,91', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pocos minutos del Parque Reducto.</li>\r\n	<li>Cerca al Teatro Marsano y la Av. Larco.</li>\r\n	<li>Ubicado en Surquillo, en l&iacute;mite con Miraflores.</li>\r\n	<li>Rodeado de caf&eacute;s, restaurantes y espacios culturales.</li>\r\n	<li>Pr&oacute;ximo a Larcomar, Open Plaza Angamos y supermercados.</li>\r\n	<li>A solo 6 minutos caminando de la estaci&oacute;n Ricardo Palma (Metropolitano).</li>\r\n	<li>Acceso r&aacute;pido a Av. Benavides, Av. Larco y la V&iacute;a Expresa Paseo de la Rep&uacute;blica.</li>\r\n	<li>Zona caminable con ciclov&iacute;as hacia Miraflores y San Isidro</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150141', 1, 1, '2025-06-30 21:10:27', '2025-07-01 15:21:24', 'storage/images/cotizaciones/s7roaQTXZO_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '–12.12426', '–77.03092', 6, NULL, '28,91', NULL, 0),
(77, 'MP301021', 'Vive la esencia de Surquillo desde ELEMENT_2', NULL, NULL, '<p>🔷 Vive la esencia de Surquillo desde ELEMENT<br />\r\nUn proyecto que combina arquitectura moderna, funcionalidad y excelente ubicaci&oacute;n en Surquillo, a metros de Miraflores. Ideal para quienes valoran un estilo de vida urbano, conectado y con gran proyecci&oacute;n de inversi&oacute;n.<br />\r\n<br />\r\n🏢 Departamentos funcionales y bien distribuidos<br />\r\n🛏️ 2 dormitorios<br />\r\n📐 Desde 60,78 m&sup2;<br />\r\n🏗️ Proyecto en construcci&oacute;n<br />\r\n📆 Entrega estimada: consultar disponibilidad<br />\r\n💼 Financiamiento disponible<br />\r\n💰 Ideal para vivir o invertir<br />\r\n<br />\r\n🌟 &Aacute;reas comunes pensadas para ti<br />\r\n🎯 Lobby moderno<br />\r\n💼 Coworking y sala de reuniones<br />\r\n🌿 Jard&iacute;n interior<br />\r\n☕ Zona de caf&eacute;<br />\r\n🧺 Lavander&iacute;a<br />\r\n🔒 Seguridad 24/7<br />\r\n🛗 Ascensores de &uacute;ltima generaci&oacute;n<br />\r\n🗺️ Entorno y conectividad<br />\r\n📍 Calle San Mart&iacute;n 845 &ndash; Surquillo<br />\r\n🌳 Cerca del Parque Reducto y Av. Rep&uacute;blica de Panam&aacute;<br />\r\n🛍️ A minutos de Open Plaza Angamos, Wong y bancos<br />\r\n🎭 Acceso r&aacute;pido a Miraflores, Larcomar y zonas comerciales<br />\r\n🍽️ Rodeado de restaurantes, caf&eacute;s y servicios<br />\r\n<br />\r\n📲 Cont&aacute;ctanos en MP Real State<br />\r\n📞 932 073 345<br />\r\n📧 dpauli@mprealstate.com<br />\r\n🌐 www.mprealstate.com<br />\r\n&nbsp;</p>', 445394.30, 0.00, 127255.60, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/7eXcVVmxrw_imagen.png', NULL, 0, 0, 10, 2, 22, '3', 2, '60.78', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>A pocos minutos del Parque Reducto.</li>\r\n	<li>Cerca al Teatro Marsano y la Av. Larco.</li>\r\n	<li>Ubicado en Surquillo, en l&iacute;mite con Miraflores.</li>\r\n	<li>Rodeado de caf&eacute;s, restaurantes y espacios culturales.</li>\r\n	<li>Pr&oacute;ximo a Larcomar, Open Plaza Angamos y supermercados.</li>\r\n	<li>A solo 6 minutos caminando de la estaci&oacute;n Ricardo Palma (Metropolitano).</li>\r\n	<li>Acceso r&aacute;pido a Av. Benavides, Av. Larco y la V&iacute;a Expresa Paseo de la Rep&uacute;blica.</li>\r\n	<li>Zona caminable con ciclov&iacute;as hacia Miraflores y San Isidro</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150141', 1, 1, '2025-07-01 15:31:35', '2025-07-01 15:31:35', 'storage/images/cotizaciones/sM8n6R8bpq_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '–12.12426', '–77.03092', 6, NULL, '60.78', NULL, 0),
(78, 'MP301022', 'Departamentos exclusivos en el corazón de San Isidro 2 – THE LEAD', NULL, NULL, '<p>🔷 THE LEAD | Vive conectado en San Isidro<br />\r\nUn proyecto residencial que combina elegancia, practicidad y excelente ubicaci&oacute;n. THE LEAD se sit&uacute;a en una de las zonas m&aacute;s codiciadas de San Isidro, ideal para quienes buscan comodidad, conectividad y estilo en su d&iacute;a a d&iacute;a.<br />\r\n🏢 Departamentos funcionales<br />\r\n🛏️ 2 dormitorio<br />\r\n📐 Desde 60,31 m&sup2;<br />\r\n🏗️ Proyecto en construcci&oacute;n<br />\r\n📆 Entrega estimada: 2025<br />\r\n💼 Financiamiento con BBVA<br />\r\n💰 Desde S/ 647 221,89<br />\r\n<br />\r\n🌟 &Aacute;reas comunes que marcan la diferencia<br />\r\n🎯 Lobby de ingreso<br />\r\n💼 Coworking y directorio<br />\r\n🧘 Espacio wellness<br />\r\n🏋️&zwj;♂️ Gimnasio<br />\r\n🧺 Lavander&iacute;a<br />\r\n🚲 Bike parking<br />\r\n🌿 Terraza con zona de parrillas<br />\r\n🛗 Ascensores de &uacute;ltima generaci&oacute;n<br />\r\n<br />\r\n📲 Cont&aacute;ctanos en MP Real State<br />\r\n📞 932 073 345<br />\r\n📧 dpauli@mprealstate.com<br />\r\n🌐 www.mprealstate.com</p>', 647221.90, 0.00, 1849206.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/GJHaLGrgNF_imagen.png', NULL, 0, 0, 10, 2, 22, '3', 2, '60.31', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 0, '<ul>\r\n	<li>Cerca al Parque El Olivar y otras zonas verdes</li>\r\n	<li>Pr&oacute;ximo a colegios y universidades de prestigio como San Ignacio de Recalde, Universidad de Lima y UPC</li>\r\n	<li>A minutos de cl&iacute;nicas, embajadas y centros empresariales</li>\r\n	<li>Cercano a Real Plaza Salaverry, Camino Real y otros centros comerciales</li>\r\n	<li>Rodeado de caf&eacute;s, restaurantes y servicios premium.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150131', 1, 1, '2025-07-01 15:37:16', '2025-07-01 16:22:45', 'storage/images/cotizaciones/WEwq3OoZsy_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '-12,09931', '-77,03476', 6, NULL, '60.31', NULL, 0),
(79, 'MP101019', 'Hermoso flat en Miraflores con vista al mar', NULL, NULL, '<p>📍 Malec&oacute;n 28 de Julio 471 &ndash; Dpto. 504, Miraflores<br />\r\n✨ Flat frente al mar con vista directa al 🌊 Puente Villena<br />\r\n💵 Precio de venta: US$ 420,000<br />\r\n<br />\r\n📐 &Aacute;reas<br />\r\n📏 Metraje total: 160 m&sup2;<br />\r\n📐 Metraje construido: 160 m&sup2;<br />\r\n🛋️ Distribuci&oacute;n<br />\r\n🛏️ 3 dormitorios<br />\r\n🚿 2 ba&ntilde;os completos + 🚻 1 ba&ntilde;o de visita<br />\r\n🛋️ Sala &ndash; comedor con 🪟 balc&oacute;n<br />\r\n🛋️ Sala de estar en pasillo<br />\r\n🍽️ Cocina cerrada<br />\r\n🧺 Lavander&iacute;a + 🛏️ cuarto y 🚿 ba&ntilde;o de servicio<br />\r\n🌴 Terraza privada<br />\r\n<br />\r\n🚗 Extras<br />\r\n🚗🚗 2 cocheras lineales<br />\r\n📦 1 dep&oacute;sito<br />\r\n🛗 Piso 5 con ascensor directo<br />\r\n🌅 Vista al mar y al ic&oacute;nico Puente Villena<br />\r\n<br />\r\n🏢 Edificio<br />\r\n🏗️ Antig&uuml;edad: 10 a&ntilde;os<br />\r\n🏊&zwj;♀️ &Aacute;reas comunes: piscina y &aacute;rea social<br />\r\n🛡️ Guardian&iacute;a 24/7<br />\r\n🐶 Pet friendly<br />\r\n💰 Mantenimiento: S/500 aprox. (incluye 🧼 limpieza, 🛡️ vigilancia y uso de &aacute;reas comunes)<br />\r\n<br />\r\n🪑 Amoblado &ndash; &iexcl;Listo para mudarte!<br />\r\n<br />\r\n📞 Cont&aacute;ctanos:<br />\r\n📲 932 073 345<br />\r\n📧 dpauli@mprealstate.com<br />\r\n🌐 www.mprealstate.com</p>', 1554000.00, 0.00, 444000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/Dp9srCwSnv_imagen.png', NULL, 1, 0, 10, 3, 5, '5', 3, '160', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2, 1, 1, '<ul>\r\n	<li>Cerca al Parque Domodossola y al emblem&aacute;tico Parque Mar&iacute;a Reiche.</li>\r\n	<li>Pr&oacute;ximo a la Universidad Peruana de Ciencias Aplicadas (UPC) y a institutos como Toulouse Lautrec.</li>\r\n	<li>A minutos de cl&iacute;nicas, hoteles y zonas empresariales de Miraflores.</li>\r\n	<li>Cercano a Larcomar y centros comerciales con vista al mar.</li>\r\n	<li>Rodeado de caf&eacute;s, restaurantes, parques y espacios culturales</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 0, 0, '2025-07-01 16:07:35', '2025-08-01 16:30:34', 'storage/images/cotizaciones/1g1cwtMNg2_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '–12.1265', '–77.0250', 6, NULL, '160', NULL, 0),
(80, 'MP101020', 'Hermoso depa moderno en Matellini', NULL, NULL, '<p>📍 Av. Prolongaci&oacute;n Paseo de la Rep&uacute;blica &ndash; Urb. Santa Leonor, Chorrillos<br />\r\n🏙️ Moderno y totalmente remodelado &ndash; 3er piso (edificio de 5 pisos)<br />\r\n💵 Precio de venta: US$ 120,000<br />\r\n📐 &Aacute;rea construida: 72 m&sup2;<br />\r\n🚗 Incluye 1 estacionamiento privado<br />\r\n<br />\r\n🏠 Distribuci&oacute;n<br />\r\n🛋️ Sala &ndash; comedor<br />\r\n🍽️ Cocina amplia y funcional<br />\r\n🛏️ 2 dormitorios con cl&oacute;set<br />\r\n🚿 2 ba&ntilde;os completos<br />\r\n✨ Detalles que enamoran<br />\r\n🛠️ Remodelado con finos acabados<br />\r\n🎨 Molduras decorativas, pisos de porcelanato<br />\r\n🔥 Gas natural (cocina y terma)<br />\r\n💡 Se vende con luminarias, electrodom&eacute;sticos y m&aacute;s<br />\r\n🍴 Cocina equipada, lista para cocinar<br />\r\n<br />\r\n📌 Ubicaci&oacute;n estrat&eacute;gica<br />\r\n🚇 A solo 2 cuadras de la Estaci&oacute;n Matellini<br />\r\n🛍️ Muy cerca de Plaza Lima Sur<br />\r\n<br />\r\n<br />\r\n📞 Cont&aacute;ctanos y agenda tu visita con MP Real State: 📲 932 073 345<br />\r\n📧 dpauli@mprealstate.com<br />\r\n🌐 www.mprealstate.com<br />\r\n&nbsp;</p>', 444000.00, 0.00, 12000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos//i478wA7Kxf_imagen.png', NULL, 0, 0, NULL, 2, 3, '2', 2, '72', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, 0, 0, '<ul>\r\n	<li>A solo 2 cuadras de la Estaci&oacute;n Matellini (Metropolitano)</li>\r\n	<li>Muy cerca de Plaza Lima Sur y comercios de alto tr&aacute;nsito</li>\r\n	<li>Conectado a la V&iacute;a Expresa y Av. Huaylas para r&aacute;pida movilidad</li>\r\n	<li>Zona urbana con acceso peatonal, ciclov&iacute;as y transporte p&uacute;blico.</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-07-01 16:15:37', '2025-07-01 16:15:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '–12.1692', '–77.0244', NULL, NULL, '72', NULL, 0),
(81, 'MP101015', 'Local comercial en venta', NULL, NULL, '<p>🏡 OPORTUNIDAD DE INVERSI&Oacute;N EN CHORRILLOS 💰<br />\r\n📍 Venta de Local Comercial en ESQUINA con excelente ubicaci&oacute;n<br />\r\n<br />\r\n🔎 DETALLES DEL INMUEBLE<br />\r\n💸 Precio: $680,000 (&iexcl;negociable!)<br />\r\n📐 &Aacute;rea de terreno: 1,050 m&sup2;<br />\r\n<br />\r\n📍 Ubicaci&oacute;n: Esquina de Av. San Patricio y Calle Santa Mercedes, Chorrillos<br />\r\n<br />\r\n🧾 Zonificaci&oacute;n: CV (compatible con RDM)<br />\r\n📄 Documentaci&oacute;n en regla<br />\r\n💼 &iquest;Por qu&eacute; es una gran inversi&oacute;n?<br />\r\n✅ Ubicaci&oacute;n estrat&eacute;gica en zona de alto tr&aacute;nsito<br />\r\n✅ Zonificaci&oacute;n vers&aacute;til: comercial y residencial<br />\r\n✅ Gran potencial de desarrollo o alquiler<br />\r\n✅ Alta demanda en la zona por su crecimiento continuo<br />\r\n<br />\r\n📲 &iexcl;No dejes pasar esta oportunidad &uacute;nica!<br />\r\nAgenda una visita o solicita m&aacute;s info:<br />\r\n📞 Contactanos ahora al<br />\r\n9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n&nbsp;</p>', 2516000.00, 0.00, 680000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/12/HslzoJSW00_imagen.png', NULL, 0, 0, 12, NULL, NULL, '2', 1, '1050', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<ul>\r\n	<li>A una cuadra de Av. Santa Anita.</li>\r\n	<li>A dos cuadras de Av. Defensores del Morro (Ex-Huaylas).</li>\r\n	<li>Cerca de MegaPlaza Chorrillos.</li>\r\n	<li>Muy cerca de la UPC y la U. San Juan Bautista</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-07-01 16:31:47', '2025-07-01 16:32:24', 'storage/images/cotizaciones/2XtBywCbFe_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 6, NULL, '1050', NULL, 0),
(82, 'MP101011', 'Hermoso flat en Miraflores con vista al mar', NULL, NULL, '<p>📍 Malec&oacute;n 28 de Julio 471 &ndash; Dpto. 504, Miraflores<br />\r\n✨ Flat frente al mar con vista directa al 🌊 Puente Villena<br />\r\n💵 Precio de alquiler: US$ 2,300<br />\r\n<br />\r\n📐 &Aacute;reas<br />\r\n📏 Metraje total: 160 m&sup2;<br />\r\n📐 Metraje construido: 160 m&sup2;<br />\r\n🛋️ Distribuci&oacute;n<br />\r\n🛏️ 3 dormitorios<br />\r\n🚿 2 ba&ntilde;os completos + 🚻 1 ba&ntilde;o de visita<br />\r\n🛋️ Sala &ndash; comedor con 🪟 balc&oacute;n<br />\r\n🛋️ Sala de estar en pasillo<br />\r\n🍽️ Cocina cerrada<br />\r\n🧺 Lavander&iacute;a + 🛏️ cuarto y 🚿 ba&ntilde;o de servicio<br />\r\n🌴 Terraza privada<br />\r\n<br />\r\n🚗 Extras<br />\r\n🚗🚗 2 cocheras lineales<br />\r\n📦 1 dep&oacute;sito<br />\r\n🛗 Piso 5 con ascensor directo<br />\r\n🌅 Vista al mar y al ic&oacute;nico Puente Villena<br />\r\n<br />\r\n🏢 Edificio<br />\r\n🏗️ Antig&uuml;edad: 10 a&ntilde;os<br />\r\n🏊&zwj;♀️ &Aacute;reas comunes: piscina y &aacute;rea social<br />\r\n🛡️ Guardian&iacute;a 24/7<br />\r\n🐶 Pet friendly<br />\r\n💰 Mantenimiento: S/500 aprox. (incluye 🧼 limpieza, 🛡️ vigilancia y uso de &aacute;reas comunes)<br />\r\n<br />\r\n🪑 Amoblado &ndash; &iexcl;Listo para mudarte!<br />\r\n<br />\r\n📞 Cont&aacute;ctanos:<br />\r\n📲 932 073 345<br />\r\n📧 dpauli@mprealstate.com<br />\r\n🌐 <a href=\"http://www.mprealstate.com/\" target=\"_blank\">www.mprealstate.com</a></p>', 8510.00, 0.00, 2300.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/GgHozydr3f_imagen.png', NULL, 1, 1, 10, 3, 5, '5', 3, '160', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2, 1, 1, '<ul>\r\n	<li>Cerca al Parque Domodossola y al emblem&aacute;tico Parque Mar&iacute;a Reiche.</li>\r\n	<li>Pr&oacute;ximo a la Universidad Peruana de Ciencias Aplicadas (UPC) y a institutos como Toulouse Lautrec.</li>\r\n	<li>A minutos de cl&iacute;nicas, hoteles y zonas empresariales de Miraflores.</li>\r\n	<li>Cercano a Larcomar y centros comerciales con vista al mar.</li>\r\n	<li>Rodeado de caf&eacute;s, restaurantes, parques y espacios culturales</li>\r\n</ul>', NULL, NULL, NULL, '15', '1501', '150122', 0, 0, '2025-07-01 16:45:03', '2025-07-11 20:41:20', 'storage/images/cotizaciones/VZwGGGMvGG_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, '–12.1265', '–77.0250', 6, NULL, '160', NULL, 0),
(83, 'MP101025', 'Departamento en Los Cedros de Villa - Primer piso', NULL, 'Ubicado en plena zona cultural, este hermoso departamento de primer piso combina comodidad, estilo y una excelente iluminación natural.', '<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">📍 </span>Ubicado en plena zona cultural, este hermoso departamento de primer piso combina comodidad, estilo y una excelente iluminaci&oacute;n natural.</span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">💵</span> Precio de venta: US$ 125,000</span><br />\r\n<span style=\"font-size:11pt\">📐 </span><span style=\"font-size:11pt\">&Aacute;rea construida:</span><span style=\"font-size:11pt\"> 105 m&sup2;</span><br />\r\n<span style=\"font-size:11pt\">🛏 </span><span style=\"font-size:11pt\">Dormitorios:</span><span style=\"font-size:11pt\"> 3</span><br />\r\n<span style=\"font-size:11pt\">🚿 </span><span style=\"font-size:11pt\">Ba&ntilde;os:</span><span style=\"font-size:11pt\"> 1 completo + 1 medio ba&ntilde;o</span><br />\r\n<span style=\"font-size:11pt\">🚗 </span><span style=\"font-size:11pt\">Estacionamiento:</span><span style=\"font-size:11pt\"> 1 cochera con puerta el&eacute;ctrica smart</span><br />\r\n<span style=\"font-size:11pt\">🔥 </span><span style=\"font-size:11pt\">Gas:</span><span style=\"font-size:11pt\"> C&aacute;lida</span><br />\r\n<span style=\"font-size:11pt\">🛁 </span><span style=\"font-size:11pt\">Terma:</span><span style=\"font-size:11pt\"> con bal&oacute;n de gas</span><br />\r\n<span style=\"font-size:11pt\">🛠️ </span><span style=\"font-size:11pt\">Mantenimiento: S/ 75.00</span></p>\r\n\r\n<p><span style=\"font-size:11pt\">✨ Distribuci&oacute;n:</span><br />\r\n<span style=\"font-size:11pt\">🛋 Sala &ndash; comedor amplia e iluminada</span><br />\r\n<span style=\"font-size:11pt\">🚻 Ba&ntilde;o de visitas elegante</span><br />\r\n<span style=\"font-size:11pt\">🍳 Cocina renovada con muebles bajos y un gabinete superior + barra desayunador</span><br />\r\n<span style=\"font-size:11pt\">🧺 Patio y lavander&iacute;a independiente</span><br />\r\n<span style=\"font-size:11pt\">🚻 Medio ba&ntilde;o adicional en pasillo</span><br />\r\n<span style=\"font-size:11pt\">🎬 Espacio ideal para mini sala de cine</span><br />\r\n<span style=\"font-size:11pt\">🛏 Dormitorio principal con patio privado</span><br />\r\n<span style=\"font-size:11pt\">🛏 Dos dormitorios secundarios amplios</span></p>\r\n\r\n<p><span style=\"font-size:11pt\">📲 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:</span><br />\r\n<span style=\"font-size:11pt\">📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣</span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">🌐</span></span><a href=\"https://mprealstate.com/\" style=\"text-decoration:none\"><span style=\"font-size:11pt\"><span style=\"color:#000000\"> </span></span><span style=\"font-size:11pt\"><span style=\"color:#1155cc\"><u>mprealstate.com</u></span></span></a></p>\r\n\r\n<p>&nbsp;</p>', 462500.00, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/u05jGiHyJt_imagen.png', NULL, 0, 0, 10, 3, 1, '2', 2, '105', NULL, 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, 1, 0, 0, '<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">Ubicaci&oacute;n en zona cultural y residencial tranquila</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">Iluminaci&oacute;n natural en todos los ambientes</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">Patio privado en dormitorio principal</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">Cochera con puerta el&eacute;ctrica smart</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">Cocina renovada y lista para usar</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">Mantenimiento mensual accesible</span></span></p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-08-15 17:41:37', '2025-08-15 22:00:36', 'storage/images/cotizaciones/WL9h9Hk4Vm_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Venta de departamento en Los Cedros de Villa – 105 m²', 'Amplio departamento en Los Cedros de Villa con 3 dormitorios, 2 baños, 105 m² y cochera. Zona tranquila y cultural.', 'departamento en venta Los Cedros de Villa, departamento primer piso Chorrillos, departamento 3 dormitorios Chorrillos, venta de inmuebles Chorrillos', NULL, NULL, 6, '0', '105', NULL, 0);
INSERT INTO `products` (`id`, `sku`, `producto`, `pms`, `extract`, `description`, `precio`, `descuento`, `preciomin`, `preciobase`, `preciolimpieza`, `precioservicio`, `stock`, `costo_x_art`, `peso`, `imagen`, `atributes`, `destacar`, `recomendar`, `categoria_id`, `cuartos`, `pisos`, `movilidad`, `banios`, `area`, `address`, `inside`, `district`, `city`, `country`, `calendar_url`, `airbnb_url`, `frecuencia`, `cochera`, `mascota`, `mobiliado`, `incluye`, `no_incluye`, `disponible`, `no_disponible`, `departamento_id`, `provincia_id`, `distrito_id`, `visible`, `status`, `created_at`, `updated_at`, `imagen_ambiente`, `subcategory_id`, `imagen_2`, `imagen_3`, `imagen_4`, `color`, `image_texture`, `slug`, `max_stock`, `precio_reseller`, `meta_title`, `meta_description`, `meta_keywords`, `latitud`, `longitud`, `staff_id`, `ocupada`, `construida`, `medidas`, `endescuento`) VALUES
(84, 'MP101023', 'Hermosa casa en Las Brisas de Villa', NULL, 'En la exclusiva zona residencial Las Brisas de Villa', '<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">📍 En la exclusiva zona residencial Las Brisas de Villa, rodeada de 🌳 parques, 🏫 colegios, 🎓 universidades y &aacute;reas deportivas. Un entorno tranquilo, seguro y perfecto para disfrutar en familia.</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">💵 </span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"><strong>Precio de venta:</strong></span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"> US$ 399,999</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">📐 </span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"><strong>&Aacute;rea de terreno:</strong></span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"> 300 m&sup2;</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">🛏 </span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"><strong>Dormitorios:</strong></span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"> 3 principales + 1 oficina/dormitorio adicional</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">🚿 </span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"><strong>Ba&ntilde;os:</strong></span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"> 3 completos + 1 de visita</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">🚗 </span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"><strong>Estacionamientos:</strong></span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"> 2 interiores + 2 exteriores</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">🏊&zwj;♂ </span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"><strong>Piscina:</strong></span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"> 42 m&sup2; (profundidad 1.70 m)</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">✨ </span></span><span style=\"font-size:11pt\"><span style=\"color:#000000\"><strong>Distribuci&oacute;n:</strong></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">🛋 Sala &ndash; comedor amplia e iluminada</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">👩&zwj;🍳 Cocina espaciosa con encimera, horno empotrado, cava y alacena</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">🛏 Dormitorio principal con walk-in closet y ba&ntilde;o privado</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">🛏 2 dormitorios secundarios con cl&oacute;set y ba&ntilde;o compartido</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">🎬 Family room</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">🖥 Oficina o dormitorio adicional en primer piso</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">📦 Dep&oacute;sito y alacena en primer piso</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">🚻 Ba&ntilde;o de visita</span></span></p>', 1479996.30, 0.00, 399999.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/9/ONqJLOtpQb_imagen.png', NULL, 0, 0, 9, 4, 1, '1', 4, '300', NULL, 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, 2, 1, 0, '<p>Ubicaci&oacute;n exclusiva en Las Brisas de Villa, rodeada de parques, colegios, universidades y &aacute;reas deportivas.</p>\r\n\r\n<p>Entorno seguro y tranquilo, ideal para vivir en familia.</p>\r\n\r\n<p>Terreno amplio de 300 m&sup2;, brindando comodidad y privacidad.</p>\r\n\r\n<p>Piscina grande (42 m&sup2;) perfecta para disfrutar en casa.</p>\r\n\r\n<p>Espacios vers&aacute;tiles: 3 dormitorios principales + oficina o dormitorio adicional.</p>\r\n\r\n<p>Cocina equipada con encimera, horno empotrado, cava y amplia alacena.</p>\r\n\r\n<p>Dormitorio principal con walk-in closet y ba&ntilde;o privado para mayor confort.</p>\r\n\r\n<p>Family room para entretenimiento y reuniones familiares.</p>\r\n\r\n<p>Estacionamiento para 4 veh&iacute;culos (2 interiores y 2 exteriores).</p>\r\n\r\n<p>Excelente iluminaci&oacute;n natural en sala-comedor y &aacute;reas comunes.</p>\r\n\r\n<p>Dep&oacute;sito y alacena adicionales para mayor organizaci&oacute;n.</p>\r\n\r\n<p>Construcci&oacute;n reciente y bien conservada (febrero 2012).</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 0, '2025-08-15 22:16:29', '2025-10-28 16:25:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Casa con piscina en Las Brisas de Villa – 300 m²', 'Amplia casa en Las Brisas de Villa con piscina, 4 dormitorios, 4 baños, 4 estacionamientos y excelente ubicación cerca de parques y colegios.', 'Casa en Las Brisas de Villa, Casa con piscina Chorrillos, Venta de casa en Lima, Casa familiar con jardín, Inmueble exclusivo Lima, Casa cerca de colegios, Casa con estacionamiento, Casa con oficina, Casa con 4 dormitorios, Casa en zona residencial Lima', NULL, NULL, 6, '0', '300', NULL, 0),
(85, 'MP201016', 'ALQUILER – DÚPLEX EN LOS CEDROS DE VILLA, CHORRILLOS', NULL, '📍 Ubicado en la exclusiva zona residencial de Los Cedros de Villa – Chorrillos', '<p>📍 Ubicado en la exclusiva zona residencial de Los Cedros de Villa &ndash; Chorrillos, a solo minutos de la UPC y cerca de supermercados, colegios, parques y avenidas principales. Zona tranquila, segura y con f&aacute;cil acceso a transporte y servicios.</p>\r\n\r\n<p>💵 Precio de alquiler: S/ 2,200 mensuales<br />\r\n📐 &Aacute;rea total: 120 m&sup2;<br />\r\n🛏 Dormitorios: 2 + oficina/tercer dormitorio<br />\r\n🚿 Ba&ntilde;os: 3 (uno en dormitorio principal + 2 adicionales)</p>\r\n\r\n<p>✨ Distribuci&oacute;n:</p>\r\n\r\n<p>Primer nivel:<br />\r\n🛋 Sala &ndash; comedor amplia e iluminada<br />\r\n👩&zwj;🍳 Cocina con &aacute;rea de lavander&iacute;a integrada<br />\r\n🌿 Terraza amplia<br />\r\n🚻 Ba&ntilde;o completo</p>\r\n\r\n<p>Segundo nivel:<br />\r\n🛏 Dormitorio principal con ba&ntilde;o privado y cl&oacute;set empotrado<br />\r\n🛏 Dormitorio secundario con cl&oacute;set<br />\r\n🚻 Ba&ntilde;o completo<br />\r\n💻 Oficina o tercera habitaci&oacute;n</p>\r\n\r\n<p>📝 Requisitos:<br />\r\n✔ Estar bien en Infocorp<br />\r\n✔ Sustentar ingresos<br />\r\n✔ 1 mes de adelanto + 1 mes de garant&iacute;a</p>', 2200.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/bTgfi38x6q_imagen.png', NULL, 0, 1, 10, 2, NULL, NULL, 2, '120', 'Chorrillos', 'Piso 1 y 2', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Zona residencial tranquila, ideal para familias o profesionales.</p>\r\n\r\n<p>Ubicaci&oacute;n estrat&eacute;gica cerca de la UPC y MegaPlaza Express Villa.</p>\r\n\r\n<p>Excelente acceso a transporte, servicios y comercios.</p>\r\n\r\n<p>Distribuci&oacute;n funcional en dos niveles para mayor comodidad.</p>\r\n\r\n<p>Sala-comedor iluminada que brinda un ambiente acogedor.</p>\r\n\r\n<p>Cocina equipada con muebles altos y bajos.</p>\r\n\r\n<p>Terraza con vista a la calle, perfecta para relajarse.</p>\r\n\r\n<p>Dormitorio principal con ba&ntilde;o privado y cl&oacute;set empotrado.</p>\r\n\r\n<p>Ambiente multifuncional para adaptarse a tus necesidades (dormitorio, oficina, family room, etc.).</p>\r\n\r\n<p>&Aacute;rea de lavander&iacute;a independiente.</p>\r\n\r\n<p>Precio accesible para la zona y tama&ntilde;o del inmueble.</p>\r\n\r\n<p>Solo se requiere 1 mes de adelanto + 1 mes de garant&iacute;a.</p>\r\n\r\n<p>Disponibilidad inmediata para mudanza r&aacute;pida.</p>\r\n\r\n<p>Zona segura con cercan&iacute;a a parques y colegios.</p>\r\n\r\n<p>Estar bien en Infocorp y sustentar ingresos.&nbsp;</p>', NULL, NULL, NULL, '15', '1501', '150108', 0, 1, '2025-09-05 22:43:48', '2025-10-28 16:34:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Alquiler de Dúplex en San Lorenzo, Chorrillos', 'Dúplex de 120m² en zona residencial de Chorrillos, 2 dorm, 2 baños, terraza, cerca de UPC y MegaPlaza. S/2200. ¡Listo para mudarte!', 'alquiler dúplex en Chorrillos, dúplex cerca de UPC, alquiler en Chorrillos, dúplex 2 dormitorios, dúplex con terraza, dúplex Lima', NULL, NULL, 6, NULL, '120', NULL, 0),
(86, 'MPA0013', '🏡 Departamento en alquiler – Miraflores | 120 m² | 7mo piso con balcón y cochera para 2 autos', NULL, 'Amplio y funcional departamento ubicado en Av. Tomás Marsano, a pocos minutos del Óvalo Higuereta.', '<p>Amplio y funcional departamento ubicado en Av. Tom&aacute;s Marsano, a pocos minutos del &Oacute;valo Higuereta. Ideal para vivir en zona estrat&eacute;gica y segura de Miraflores.</p>\r\n\r\n<p>📐 &Aacute;rea total: 120 m&sup2;</p>\r\n\r\n<p>Caracter&iacute;sticas: &nbsp;<br />\r\n- 🛏️ 2 habitaciones con cl&oacute;set (principal con ba&ntilde;o incorporado) &nbsp;<br />\r\n- 🛋️ Sala-comedor amplia con acceso a balc&oacute;n &nbsp;<br />\r\n- 🍽️ Cocina con muebles altos y bajos &nbsp;<br />\r\n- 🚿 2 ba&ntilde;os completos &nbsp;<br />\r\n- 🛗 Ascensor directo al 7mo piso &nbsp;<br />\r\n- 🚗 Cochera lineal para 2 autos</p>\r\n\r\n<p>💵 Alquiler mensual: S/ 2,400 &nbsp;<br />\r\n📄 Contrato anual &ndash; Condici&oacute;n: 2x1</p>\r\n\r\n<p>🧾 Mantenimiento: S/ 200 (incluye agua, vigilancia y luz de &aacute;reas comunes)</p>\r\n\r\n<p>📍 Excelente ubicaci&oacute;n cerca de parques, avenidas principales y transporte.</p>', 2400.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/xrWqCGhJfP_imagen.png', NULL, 0, 1, 10, 2, 7, NULL, 2, '120', 'Miraflores', 'Piso 7', NULL, NULL, NULL, '', NULL, NULL, 2, 0, 0, '<p>Amplio y funcional departamento con excelente distribuci&oacute;n.</p>\r\n\r\n<p>Ubicaci&oacute;n estrat&eacute;gica en Av. Tom&aacute;s Marsano, a pocos minutos del &Oacute;valo Higuereta.</p>\r\n\r\n<p>Zona segura y de f&aacute;cil acceso en Miraflores.</p>\r\n\r\n<p>2 habitaciones con cl&oacute;set, ideal para comodidad y organizaci&oacute;n.</p>\r\n\r\n<p>Dormitorio principal con ba&ntilde;o incorporado.</p>\r\n\r\n<p>Sala-comedor amplia con acceso a balc&oacute;n para mayor iluminaci&oacute;n y ventilaci&oacute;n.</p>\r\n\r\n<p>Cocina equipada con muebles altos y bajos.</p>\r\n\r\n<p>2 ba&ntilde;os completos para mayor comodidad.</p>\r\n\r\n<p>Ascensor directo al 7mo piso.</p>\r\n\r\n<p>Cochera lineal para 2 autos.</p>\r\n\r\n<p>Alquiler mensual accesible en relaci&oacute;n a la ubicaci&oacute;n y beneficios.</p>\r\n\r\n<p>Mantenimiento econ&oacute;mico que incluye agua, vigilancia y luz de &aacute;reas comunes.</p>\r\n\r\n<p>Cercan&iacute;a a parques, avenidas principales y transporte p&uacute;blico.</p>', NULL, NULL, NULL, '15', '1501', '150122', 0, 1, '2025-09-19 19:58:18', '2025-12-01 18:26:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Alquiler de departamento en Miraflores – 120 m² con cochera', 'Amplio departamento en Miraflores, 120 m², 2 habitaciones, balcón, 2 baños, ascensor directo y cochera para 2 autos. Zona segura y estratégica.', 'alquiler departamento Miraflores, departamento Miraflores, departamento con cochera Miraflores, alquiler cerca Óvalo Higuereta, departamento 2 habitaciones Miraflores, departamento con balcón Miraflores', NULL, NULL, 6, NULL, '120', NULL, 0),
(87, 'MPV0032', '🌄 Venta de Terrenos en Cañete – Condominio Villavicente, Carretera Imperial', NULL, '¡Gran oportunidad de inversión en zona con alta proyección de crecimiento!', '<p>&iexcl;Gran oportunidad de inversi&oacute;n en zona con alta proyecci&oacute;n de crecimiento! &nbsp;<br />\r\nSe venden 2 terrenos contiguos, cada uno de 120 m&sup2;, ubicados en el Condominio Villavicente, a pocos minutos del nuevo mercado Unicachi de Ca&ntilde;ete.</p>\r\n\r\n<p>📍 Ubicaci&oacute;n: Carretera Imperial &ndash; Ca&ntilde;ete</p>\r\n\r\n<p>Caracter&iacute;sticas: &nbsp;<br />\r\n✅ &Aacute;rea: 120 m&sup2; por lote &nbsp;<br />\r\n✅ Precio: S/ 65,000 cada uno &nbsp;<br />\r\n✅ Servicios b&aacute;sicos: agua, luz y desag&uuml;e &nbsp;<br />\r\n✅ Acceso por pistas afirmadas &nbsp;<br />\r\n✅ Condominio en crecimiento y bien organizado &nbsp;<br />\r\n✅ A pocos minutos de zonas comerciales y el nuevo mercado Unicachi</p>\r\n\r\n<p>💡 Ideal para construir tu casa de campo, vivienda familiar o invertir a mediano plazo.</p>\r\n\r\n<p>📲 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n🌐 mprealstate.com&nbsp;&nbsp; &nbsp;<br />\r\nhttps://wa.me/51932073345</p>', 65000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/11/IT9m6KHARU_imagen.JPG', NULL, 0, 0, 11, NULL, NULL, NULL, NULL, '120', 'Cañete', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Ubicaci&oacute;n estrat&eacute;gica en Carretera Imperial &ndash; Ca&ntilde;ete<br />\r\nAlta proyecci&oacute;n de crecimiento en la zona<br />\r\nTerrenos en condominio organizado y en expansi&oacute;n<br />\r\nDisponibilidad de servicios b&aacute;sicos: agua, luz y desag&uuml;e<br />\r\nA pocos minutos del nuevo mercado Unicachi<br />\r\nIdeal para casa de campo, vivienda familiar o inversi&oacute;n<br />\r\nPrecio accesible y oportunidad de adquirir lotes contiguos</p>', NULL, NULL, NULL, '15', '1505', '150501', 1, 1, '2025-09-23 17:52:55', '2025-10-28 16:05:44', 'storage/images/cotizaciones/w8RHVVSGGS_.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Venta de Terrenos en Cañete – Condominio Villavicente 120 m²', 'Terrenos en venta en Cañete, 120 m² cada uno en Condominio Villavicente. Zona en crecimiento, servicios básicos y cerca al mercado Unicachi.', 'venta de terrenos cañete, terrenos en cañete, terrenos condominio villavicente, terrenos carretera imperial, comprar terreno cañete, inversión inmobiliaria cañete, terrenos con servicios básicos cañete', NULL, NULL, 6, '120', NULL, NULL, 0),
(88, 'MPV0023', '🏢 VENTA – HERMOSO DEPARTAMENTO FRENTE A PARQUE EN LOS CEDROS DE VILLA, CHORRILLOS 🏢', NULL, '📍 Ubicado en la tranquila y residencial zona de Los Cedros de Villa, en la calle Tres Marías', '<p>📍 Ubicado en la tranquila y residencial zona de Los Cedros de Villa, en la calle Tres Mar&iacute;as, a pocos minutos de la UPC, cerca de 🌳 parques, 🏫 colegios, 🛍 centros comerciales y con f&aacute;cil acceso a avenidas principales. Un entorno ideal para vivir en familia o como inversi&oacute;n.</p>\r\n\r\n<p>💵 Precio de venta: US$ 120,000<br />\r\n📐 &Aacute;rea total: 110 m&sup2;<br />\r\n🏢 Ubicado en: 4to piso<br />\r\n🛏 Dormitorios: 3 (principal con ba&ntilde;o + cl&oacute;set)<br />\r\n🚿 Ba&ntilde;os: 2 completos (uno en habitaci&oacute;n principal + ba&ntilde;o adicional)</p>\r\n\r\n<p>✨ Distribuci&oacute;n:<br />\r\n🛋 Amplia sala &ndash; comedor con vista a la calle<br />\r\n🛏 Dormitorio principal con cl&oacute;set y ba&ntilde;o privado<br />\r\n🛏 2 dormitorios secundarios con cl&oacute;sets<br />\r\n👩&zwj;🍳 Cocina independiente con muebles altos y bajos<br />\r\n🧺 Lavander&iacute;a c&oacute;moda, ventilada y funcional</p>\r\n\r\n<p>📍 Ubicaci&oacute;n: En Los Cedros de Villa &ndash; Chorrillos, zona estrat&eacute;gica cerca de la UPC, ideal para estudiantes, familias j&oacute;venes o como propiedad de inversi&oacute;n.</p>\r\n\r\n<p>📅 Estado de conservaci&oacute;n: Estreno</p>\r\n\r\n<p>📲 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n🌐 mprealstate.com<br />\r\nhttps://wa.me/51932073345</p>', 420071.10, 0.00, 120000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/MBZw33KsRm_imagen.png', NULL, 0, 0, 10, 3, 4, NULL, 2, '110', 'Chorrillos', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Ubicaci&oacute;n frente a parque en la tranquila zona de Los Cedros de Villa<br />\r\nCerca de la UPC, colegios, parques y centros comerciales<br />\r\nExcelente conectividad a avenidas principales<br />\r\nDepartamento de estreno, listo para mudarse<br />\r\nDormitorio principal con ba&ntilde;o privado y cl&oacute;set<br />\r\nAmplia sala &ndash; comedor con vista a la calle<br />\r\nCocina independiente con muebles altos y bajos<br />\r\nLavander&iacute;a ventilada y funcional<br />\r\nIdeal como inversi&oacute;n o para vivir en familia</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-09-25 17:32:36', '2025-09-25 17:40:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamento en venta frente a parque en Los Cedros de Villa', 'Hermoso departamento de estreno en Los Cedros de Villa, Chorrillos. 3 dormitorios, 2 baños, amplia sala y excelente ubicación cerca de la UPC.', 'departamento en venta chorrillos, departamento los cedros de villa, departamento frente a parque, venta departamento estreno, departamento 3 dormitorios chorrillos, comprar departamento chorrillos, mprealstate', NULL, NULL, 6, '0', '110', NULL, 0),
(89, 'MPV0024', '🏢 VENTA – DEPARTAMENTO EN PRIMER PISO CON COCHERA Y PATIOS EN CHORRILLOS 🏢', NULL, '📍 Ubicado en la calle Las Malvinas, frente a un hermoso 🌳 parque, en una zona residencial tranquila y con excelente conectividad', '<p>📍 Ubicado en la calle Las Malvinas, frente a un hermoso 🌳 parque, en una zona residencial tranquila y con excelente conectividad. Ideal para familias que buscan comodidad, amplitud y contacto con &aacute;reas verdes.</p>\r\n\r\n<p>💵 Precio de venta: US$ 138,000<br />\r\n📐 &Aacute;rea total: 168 m&sup2;<br />\r\n🛏 Dormitorios: 3<br />\r\n🚿 Ba&ntilde;os: 2 completos<br />\r\n🚗 Estacionamiento: 1 cochera independiente</p>\r\n\r\n<p>✨ Distribuci&oacute;n:<br />\r\n🛋 Amplia sala &ndash; comedor con vista al parque<br />\r\n👩&zwj;🍳 Cocina independiente, amplia y funcional<br />\r\n🛏 Dormitorio principal y secundarios con excelente iluminaci&oacute;n<br />\r\n🛁 2 ba&ntilde;os completos bien distribuidos<br />\r\n🧺 Lavander&iacute;a amplia y ventilada<br />\r\n🌿 Jard&iacute;n interno con terraza, ideal para reuniones o zona de descanso<br />\r\n🏡 2 patios que brindan ventilaci&oacute;n cruzada y luz natural en todo el departamento</p>\r\n\r\n<p>📍 Ubicaci&oacute;n: Calle Las Malvinas, Chorrillos &ndash; frente a parque, cerca de colegios, tiendas y v&iacute;as principales.</p>\r\n\r\n<p>📅 Primer piso &ndash; Ideal para familias con ni&ntilde;os o personas mayores</p>\r\n\r\n<p>📲 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n🌐 mprealstate.com<br />\r\nhttps://wa.me/51932073345</p>', 483081.80, 0.00, 138000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/0RXZEV8igh_imagen.png', NULL, 0, 0, 10, 3, 1, NULL, 2, '168', 'Chorrillos', 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, 1, 0, 0, '<p>Ubicaci&oacute;n frente a parque en zona residencial tranquila<br />\r\nDepartamento en primer piso, ideal para familias con ni&ntilde;os o personas mayores<br />\r\nIncluye cochera independiente para mayor comodidad<br />\r\nAmplia sala &ndash; comedor con vista directa al parque<br />\r\nCocina independiente, amplia y funcional<br />\r\nDormitorios iluminados y bien distribuidos<br />\r\n2 patios que brindan ventilaci&oacute;n cruzada y luz natural<br />\r\nJard&iacute;n interno con terraza ideal para reuniones o descanso<br />\r\nLavander&iacute;a amplia y ventilada<br />\r\nExcelente conectividad cerca de colegios, tiendas y avenidas principales</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-09-25 17:39:39', '2025-09-25 17:39:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamento en primer piso con cochera y patios en Chorrillos', 'Amplio departamento en primer piso en Chorrillos. 3 dormitorios, 2 baños, cochera, patios y jardín interno frente a parque. Ideal para familias.', 'departamento en venta chorrillos, departamento primer piso chorrillos, departamento con cochera chorrillos, departamento con patios chorrillos, venta departamento frente a parque, comprar departamento familiar chorrillos, mprealstate', NULL, NULL, 6, '0', '168', NULL, 0),
(90, 'MPV0025', '🏢 VENTA / ALQUILER – DEPARTAMENTO FRENTE AL MAR EN MALECÓN DE LA MARINA, MIRAFLORES 🌊🏝️', NULL, '📍 Vive con una vista insuperable al mar, en pleno Malecón de la Marina – Miraflores', '<p>📍 Vive con una vista insuperable al mar, en pleno Malec&oacute;n de la Marina &ndash; Miraflores, una de las zonas m&aacute;s exclusivas y cotizadas de Lima. Departamento con ingreso directo desde el ascensor, ideal para quienes buscan confort, privacidad y estilo de vida frente al oc&eacute;ano.</p>\r\n\r\n<p>💵 Precio de venta: US$ 395,000<br />\r\n💵 Precio de alquiler: US$ 1,650 mensuales<br />\r\n📐 &Aacute;rea construida: 115 m&sup2;<br />\r\n📍 Ubicado en piso 3 &ndash; Edificio con solo 8 departamentos (1 por piso)</p>\r\n\r\n<p>✨ Distribuci&oacute;n:<br />\r\n🛋 Sala &ndash; comedor con terraza y espectacular vista al mar<br />\r\n👩&zwj;🍳 Cocina cerrada, funcional y equipada<br />\r\n🧺 Lavander&iacute;a y ba&ntilde;o de servicio<br />\r\n🛏 Dormitorio principal con ba&ntilde;o incorporado (cama King)<br />\r\n🛏 Dormitorio secundario con cama de 2 plazas<br />\r\n🖥 Escritorio o tercer dormitorio<br />\r\n🚿 Ba&ntilde;o completo compartido (tambi&eacute;n de visitas)<br />\r\n🚗 1 estacionamiento (incluido solo en venta)</p>\r\n\r\n<p>📍 Ubicaci&oacute;n privilegiada: Malec&oacute;n de la Marina, a pasos del Parque del Amor, Larcomar, caf&eacute;s, restaurantes, ciclov&iacute;as y todo lo mejor de Miraflores.</p>\r\n\r\n<p>📅 Disponibilidad inmediata &ndash; Ideal para vivir o como inversi&oacute;n para alquiler temporal o corporativo</p>\r\n\r\n<p>📲 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n🌐 mprealstate.com<br />\r\nhttps://wa.me/51932073345</p>', 1382734.20, 0.00, 395000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/30Xikz0tJU_imagen.png', NULL, 0, 0, 10, 3, 3, NULL, 2, '115', NULL, 'Piso 3', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Vista insuperable al mar desde la sala, comedor y terraza<br />\r\nIngreso directo desde el ascensor para mayor privacidad<br />\r\nEdificio exclusivo con solo 8 departamentos (1 por piso)<br />\r\nDormitorio principal con ba&ntilde;o incorporado y cama King<br />\r\nSegundo dormitorio y espacio de escritorio o tercer dormitorio<br />\r\nCocina cerrada, equipada y funcional<br />\r\nLavander&iacute;a y ba&ntilde;o de servicio<br />\r\n1 estacionamiento incluido en la compra<br />\r\nUbicaci&oacute;n privilegiada cerca de Larcomar, Parque del Amor, caf&eacute;s y restaurantes<br />\r\nIdeal para vivir, inversi&oacute;n en alquiler temporal o corporativo<br />\r\nDisponibilidad inmediata para mudanza o renta</p>', NULL, NULL, NULL, '15', '1501', '150122', 1, 1, '2025-09-25 17:44:19', '2025-09-25 17:44:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamento con vista al mar en Malecón de la Marina – Miraflores', 'Exclusivo departamento frente al mar en Malecón de la Marina, Miraflores. 115 m², 3 dormitorios, terraza, ascensor directo y cochera. Ideal para vivir o invertir.', 'departamento en venta miraflores, departamento vista al mar miraflores, departamento malecón de la marina, alquiler departamento miraflores, departamento exclusivo frente al mar, comprar departamento miraflores, mprealstate', NULL, NULL, 6, '0', '115', NULL, 0),
(91, 'MPV0026', '🏡 VENTA – FINA CASA DE UNA PLANTA CON JARDÍN EN LA ENCANTADA DE VILLA 🌳✨', NULL, '📍 Vive con la tranquilidad y exclusividad de La Encantada de Villa – Chorrillos', '<p>📍 Vive con la tranquilidad y exclusividad de La Encantada de Villa &ndash; Chorrillos, a pocos pasos del Club de Golf y rodeado de naturaleza. Una casa de una sola planta, ideal para quienes buscan amplitud, comodidad y un entorno familiar en una de las zonas residenciales m&aacute;s privilegiadas de Lima.</p>\r\n\r\n<p>💵 Precio de venta: US$ 1,150,000 (negociable)<br />\r\n💰 Mantenimiento: S/ 200 mensuales</p>\r\n\r\n<p>📐 Caracter&iacute;sticas generales:<br />\r\n&Aacute;rea total de terreno: 1,800 m&sup2;<br />\r\n&Aacute;rea construida: 450 m&sup2;<br />\r\n🛏 4 dormitorios<br />\r\n🚿 5 ba&ntilde;os completos + 1 medio ba&ntilde;o<br />\r\n🚗 4 cocheras</p>\r\n\r\n<p>✨ Distribuci&oacute;n y detalles:<br />\r\n🌿 Amplio jard&iacute;n privado, perfecto para disfrutar al aire libre<br />\r\n🛋 Sala &ndash; comedor con salida directa al jard&iacute;n<br />\r\n👩&zwj;🍳 Cocina amplia y funcional<br />\r\n🧺 Lavander&iacute;a y patio<br />\r\n🛏 Dormitorio principal con walk-in closet y ba&ntilde;o completo<br />\r\n🛏 Dormitorios secundarios con ba&ntilde;o completo<br />\r\n🔥 &Aacute;rea de parrilla, ideal para reuniones familiares y sociales<br />\r\n⛳ Entorno rodeado de &aacute;reas verdes y muy cerca al campo de golf</p>\r\n\r\n<p>📍 Ubicaci&oacute;n privilegiada: Calle Marqu&eacute;s de Bula &ndash; La Encantada de Villa, Chorrillos. Cerca al Club de Golf, colegios, centros comerciales y con f&aacute;cil acceso a las principales avenidas.<br />\r\n📅 Disponibilidad inmediata &ndash; Una oportunidad &uacute;nica para vivir en armon&iacute;a y confort.</p>\r\n\r\n<p>📲 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n🌐 mprealstate.com<br />\r\nhttps://wa.me/51932073345</p>', 3999268.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/9/IQ2MVDW9eI_imagen.png', NULL, 0, 0, 9, 4, NULL, NULL, 5, '1800', 'La encantada de villa', 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, 4, 0, 0, '<p>Casa de una sola planta, ideal para familias y adultos mayores<br />\r\nTerreno de 1,800 m&sup2; con amplio jard&iacute;n privado<br />\r\nUbicaci&oacute;n exclusiva en La Encantada de Villa, zona residencial de alto nivel<br />\r\nDormitorio principal con walk-in closet y ba&ntilde;o completo<br />\r\nDormitorios secundarios con ba&ntilde;o privado<br />\r\n&Aacute;rea de parrilla perfecta para reuniones y eventos sociales<br />\r\nSala &ndash; comedor con salida directa al jard&iacute;n<br />\r\nCerca al Club de Golf, colegios y centros comerciales<br />\r\n4 cocheras para mayor comodidad<br />\r\nDisponibilidad inmediata, lista para mudarse</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-10-02 14:58:49', '2025-10-02 20:57:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Casa de lujo en La Encantada de Villa con amplio jardín y 4 cocheras', 'Exclusiva casa en La Encantada de Villa, Chorrillos. 1,800 m² de terreno, 4 dormitorios, 5 baños, jardín privado, parrilla y 4 cocheras. Cerca al Golf.', 'casa en venta la encantada de villa, casa de lujo chorrillos, casa con jardín grande lima, casa con piscina chorrillos, casa cerca al club de golf villa, comprar casa exclusiva lima, mprealstate', NULL, NULL, 6, '1350', '450', NULL, 0),
(92, 'MPV0037', '🏡 VENTA – ELEGANTE CASA CON PISCINA Y JARDÍN EN LA ENCANTADA DE VILLA 🌳✨', NULL, '📍 Vive con estilo, amplitud y confort en La Encantada de Villa – Chorrillos', '<p>📍 Vive con estilo, amplitud y confort en La Encantada de Villa &ndash; Chorrillos, una de las zonas residenciales m&aacute;s exclusivas de Lima. Esta hermosa casa de dos plantas combina elegancia, funcionalidad y acabados de primera, ideal para familias que buscan un entorno tranquilo y rodeado de naturaleza.</p>\r\n\r\n<p>💵 Precio de venta: US$ 950,000<br />\r\n📐 Caracter&iacute;sticas generales:<br />\r\n&Aacute;rea total: 1,330 m&sup2;<br />\r\n&Aacute;rea construida: 450 m&sup2;<br />\r\n🛏 4 dormitorios (todos con ba&ntilde;o incorporado)<br />\r\n🚿 5 ba&ntilde;os + ba&ntilde;o de visitas<br />\r\n🚗 Cochera abierta para 4 autos<br />\r\n🧱 Dep&oacute;sito y &aacute;rea de servicio completa</p>\r\n\r\n<p>✨ Distribuci&oacute;n:<br />\r\nPrimera planta:<br />\r\n🏠 Hall de ingreso con ca&iacute;da de agua<br />\r\n🔥 Sala con chimenea y comedor, ambos con salida a la terraza<br />\r\n👩&zwj;🍳 Cocina con reposteros altos y bajos, alacena, isla central y comedor de diario con salida a la terraza<br />\r\n🎬 Sala de estar con vista al ingreso<br />\r\n🚻 Ba&ntilde;o de visitas<br />\r\n🌞 Terraza techada y terraza sin techar en zona de parrilla y horno de barro<br />\r\n🏊 Piscina<br />\r\n🌿 Amplio jard&iacute;n<br />\r\n🧺 &Aacute;rea de servicio completa: lavander&iacute;a techada, cuarto y ba&ntilde;o de servicio<br />\r\n🚗 Cochera abierta para 4 autos<br />\r\n📦 Dep&oacute;sito</p>\r\n\r\n<p>Segunda planta:<br />\r\n🎬 Sala de estar<br />\r\n🛏 4 dormitorios:<br />\r\n🛏 Dormitorio principal amplio con chimenea, balc&oacute;n, walk-in closet y ba&ntilde;o incorporado con doble oval&iacute;n<br />\r\n🛏 Tres dormitorios secundarios, todos con closet de pared a pared y ba&ntilde;o incorporado</p>\r\n\r\n<p>💎 Acabados de primera:<br />\r\nPisos de porcelanato en &aacute;reas sociales<br />\r\nMadera en el segundo piso<br />\r\nCuarzo en ba&ntilde;os<br />\r\nGranito en cocina</p>\r\n\r\n<p>📍 Ubicaci&oacute;n: La Encantada de Villa, Chorrillos. Zona exclusiva, segura y con f&aacute;cil acceso al Club de Golf y principales avenidas.</p>\r\n\r\n<p>📅 Disponibilidad inmediata &ndash; Ideal para quienes buscan lujo, amplitud y confort en un entorno natural.</p>\r\n\r\n<p>Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n932 073 345</p>', 3217457.20, 0.00, 950000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/9/IYN18b9zoO_imagen.png', NULL, 0, 0, 9, 4, NULL, NULL, 6, '1330', 'La encantada de villa', 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Ubicaci&oacute;n exclusiva en La Encantada de Villa, rodeada de naturaleza y cerca al Club de Golf<br />\r\nCasa elegante de dos plantas con amplios ambientes y acabados de primera<br />\r\nPiscina, terrazas y amplio jard&iacute;n ideal para disfrutar con familia y amigos<br />\r\nSala con chimenea y comedor con salida a la terraza<br />\r\nCocina equipada con isla central, alacena y comedor de diario<br />\r\nDormitorio principal con chimenea, balc&oacute;n, walk-in closet y ba&ntilde;o con doble oval&iacute;n<br />\r\nTres dormitorios secundarios con ba&ntilde;o incorporado y cl&oacute;set de pared a pared<br />\r\nSala de estar en ambos niveles para mayor comodidad<br />\r\n&Aacute;rea de servicio completa con lavander&iacute;a, cuarto y ba&ntilde;o de servicio<br />\r\nCochera abierta para 4 autos y dep&oacute;sito<br />\r\nDisponibilidad inmediata &ndash; lista para habitar</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-10-17 14:26:32', '2025-10-17 14:27:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Casa de lujo con piscina y jardín en La Encantada de Villa – Chorrillos', 'Exclusiva casa en La Encantada de Villa. 1,330 m² de terreno, piscina, terraza, jardín, 4 dormitorios con baño, acabados de lujo y cochera para 4 autos.', 'casa en venta la encantada de villa, casa con piscina chorrillos, casa de lujo lima, casa con jardín grande lima, casa cerca al club de golf villa, casa familiar exclusiva chorrillos, comprar casa encantada de villa, mprealstate', NULL, NULL, 6, NULL, '450', NULL, 0),
(93, 'MPV0038', '🏡 VENTA – ELEGANTE CASA CON PISCINA Y JARDÍN EN LA ENCANTADA DE VILLA 🌴✨', NULL, 'Vive rodeado de naturaleza y confort en una espectacular casa de amplios ambientes', '<p>📍 Alameda El Sereno, Chorrillos</p>\r\n\r\n<p>Vive rodeado de naturaleza y confort en una espectacular casa de amplios ambientes, finos acabados y espacios dise&ntilde;ados para disfrutar en familia. Remodelada y ampliada en 2017, combina elegancia, funcionalidad y un estilo c&aacute;lido en cada detalle.</p>\r\n\r\n<p>💵 Precio de venta: US$ 900,000</p>\r\n\r\n<p>📐 Caracter&iacute;sticas generales:<br />\r\n&Aacute;rea total de terreno: 1,007.67 m&sup2;<br />\r\n&Aacute;rea construida: 356 m&sup2;<br />\r\nAntig&uuml;edad: 1998 (remodelada y ampliada en 2017)<br />\r\n🛏 4 dormitorios<br />\r\n🚿 4 ba&ntilde;os completos + ba&ntilde;o de visitas con ducha<br />\r\n🛋 Varias salas de estar y &aacute;reas sociales<br />\r\n🚗 Cochera techada para 4 autos (actualmente habilitada como gimnasio)<br />\r\n📦 Dep&oacute;sitos amplios</p>\r\n\r\n<p>✨ Distribuci&oacute;n:<br />\r\nPrimer piso:<br />\r\n🏠 Hall de ingreso a doble altura<br />\r\n🎵 Dos salas (una de m&uacute;sica), ambas con salida a la terraza<br />\r\n🍽 Comedor con salida directa a la terraza<br />\r\n👩&zwj;🍳 Cocina con comedor de diario, reposteros altos y bajos, y salida al jard&iacute;n<br />\r\n🚻 Ba&ntilde;o de visitas con ducha<br />\r\n📺 Sala de estar o dormitorio con mueble empotrado de TV y vista a un jard&iacute;n interior<br />\r\n🛏 Dormitorio con ba&ntilde;o incorporado, walk-in closet y salida a la terraza<br />\r\n💼 Sala de estar o amplio escritorio con closet y salida al jard&iacute;n delantero y terraza<br />\r\n🧺 &Aacute;rea de lavander&iacute;a con patio<br />\r\n🛏 &Aacute;rea de servicio completa con dos dormitorios (uno en segundo piso) y ba&ntilde;o compartido completo<br />\r\n🚗 Cochera techada para 4 autos (habilitada como gimnasio)<br />\r\n🔥 &Aacute;rea social exterior:</p>\r\n\r\n<p>Terraza con techo sol y sombra<br />\r\nZona de parrilla con muebles, tablero de granito y sillas altas<br />\r\nPared verde de plantas verticales<br />\r\nPiscina temperada, deck, ducha y ba&ntilde;o para la zona de piscina<br />\r\n🌿 Lindo jard&iacute;n decorado con plantas ornamentales, palmeras y &aacute;rboles</p>\r\n\r\n<p>Segundo piso:<br />\r\n🛏 Dormitorio principal independiente con sala de estar y escritorio, aire acondicionado, amplio walk-in closet y ba&ntilde;o incorporado con doble oval&iacute;n y ducha<br />\r\n🛏 Dormitorio adicional amplio con vista al jard&iacute;n, closet de pared a pared y ba&ntilde;o incorporado con ducha<br />\r\n💎 Acabados de primera:</p>\r\n\r\n<p>Pisos y techos de madera<br />\r\nTableros de granito en cocina y parrilla<br />\r\nMamparas de madera tipo caj&oacute;n<br />\r\nMuebles empotrados en cocina y dormitorios<br />\r\nDeck y detalles en madera natural</p>\r\n\r\n<p>📍 Ubicaci&oacute;n: Alameda El Sereno, La Encantada de Villa, Chorrillos.<br />\r\nZona residencial exclusiva, segura y con f&aacute;cil acceso al Club de Golf, colegios y principales avenidas.</p>\r\n\r\n<p>📅 Disponibilidad inmediata &ndash; Ideal para quienes buscan un hogar con car&aacute;cter, amplitud y estilo en cada rinc&oacute;n.</p>\r\n\r\n<p>📲 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣</p>', 3048117.30, 0.00, 900000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/9/nKve2noD0V_imagen.png', NULL, 0, 0, 9, 4, 1, NULL, 5, '1,007', 'La encantada de villa', 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Ubicaci&oacute;n exclusiva en La Encantada de Villa, rodeada de naturaleza y cerca al Club de Golf<br />\r\nCasa elegante de dos plantas con amplios ambientes y acabados de primera<br />\r\nPiscina, terrazas y amplio jard&iacute;n ideal para disfrutar con familia y amigos<br />\r\nSala con chimenea y comedor con salida directa a la terraza<br />\r\nCocina equipada con isla central, alacena y comedor de diario<br />\r\nDormitorio principal con chimenea, balc&oacute;n, walk-in closet y ba&ntilde;o con doble oval&iacute;n<br />\r\nTres dormitorios secundarios con ba&ntilde;o incorporado y cl&oacute;set de pared a pared<br />\r\nSala de estar en ambos niveles para mayor comodidad<br />\r\n&Aacute;rea de servicio completa con lavander&iacute;a, cuarto y ba&ntilde;o de servicio<br />\r\nCochera abierta para 4 autos y dep&oacute;sito<br />\r\nDisponibilidad inmediata &ndash; lista para habitar</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-10-17 16:29:03', '2025-10-17 16:29:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Casa de lujo con piscina y jardín en La Encantada de Villa – Chorrillos', 'Exclusiva casa en La Encantada de Villa. 1,330 m² de terreno, piscina, terraza, jardín, 4 dormitorios con baño, acabados de lujo y cochera para 4 autos.', 'casa en venta la encantada de villa, casa con piscina chorrillos, casa de lujo lima, casa con jardín grande lima, casa cerca al club de golf villa, casa familiar exclusiva chorrillos, comprar casa encantada de villa, mprealstate', NULL, NULL, 6, NULL, '356', NULL, 0),
(94, 'MPV0039', '🏡 VENTA – ACOGEDORA CASA CON AMPLIO JARDÍN Y ÁREA SOCIAL EN LAS BRISAS DE VILLA 🌿✨', NULL, '📍 Vive en una zona tranquila, segura y con excelente conectividad en Las Brisas de Villa – Chorrillos', '<p>📍 Vive en una zona tranquila, segura y con excelente conectividad en Las Brisas de Villa &ndash; Chorrillos. Esta hermosa casa de tres niveles ofrece amplios espacios interiores y exteriores, ideal para familias que buscan comodidad, privacidad y &aacute;reas para disfrutar.</p>\r\n\r\n<p>💵 Precio de venta: US$ 350,000</p>\r\n\r\n<p>📐 Caracter&iacute;sticas generales:<br />\r\nNiveles: 3 pisos<br />\r\n🏡 &Aacute;rea de terreno: 300m2<br />\r\n🛏 4 dormitorios principales + 1 dormitorio de servicio<br />\r\n🚿 4 ba&ntilde;os completos + 1 medio ba&ntilde;o de visita<br />\r\n🚗 Cochera y cuarto de almacenamiento</p>\r\n\r\n<p>✨ Distribuci&oacute;n:<br />\r\nPrimer nivel:<br />\r\n🚗 Cochera y cuarto de almac&eacute;n<br />\r\n🌿 Jard&iacute;n amplio con &aacute;rea de parrilla, ideal para reuniones sociales<br />\r\n🛋 Sala y comedor con buena iluminaci&oacute;n natural<br />\r\n🚻 Ba&ntilde;o de visita (medio ba&ntilde;o)<br />\r\n👩&zwj;🍳 Cocina independiente con muebles altos y bajos, y comedor de diario para 2 personas<br />\r\n🧺 Lavander&iacute;a independiente<br />\r\n🛏 Dormitorio y ba&ntilde;o de servicio completos<br />\r\n🌸 Jard&iacute;n interior posterior, privado, grande y decorativo</p>\r\n\r\n<p>Segundo nivel:<br />\r\n🛏 3 dormitorios:<br />\r\nDormitorio principal con ba&ntilde;o incorporado con tina y walk-in closet<br />\r\nDos dormitorios secundarios con closets empotrados, que comparten un ba&ntilde;o completo<br />\r\n🎬 Family room peque&ntilde;o ideal para &aacute;rea de TV o lectura</p>\r\n\r\n<p>Tercer nivel:<br />\r\n💎 Habitaci&oacute;n m&aacute;ster con amplio closet y ba&ntilde;o completo con jacuzzi y ducha<br />\r\n🌞 Terraza privada ideal para disfrutar de momentos al aire libre</p>\r\n\r\n<p>📍 Ubicaci&oacute;n: Las Brisas de Villa &ndash; Chorrillos. Zona residencial tranquila, segura, cerca de colegios, comercios, parques y principales avenidas.</p>\r\n\r\n<p>📅 Disponibilidad inmediata &ndash; Ideal para familias que buscan un hogar amplio, funcional y con espacios para disfrutar.</p>\r\n\r\n<p>📲 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n🌐 mprealstate.com<br />\r\nhttps://wa.me/51932073345&nbsp;</p>', 1185379.00, 0.00, 350000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/9/tP7XTXDtki_imagen.png', NULL, 0, 0, 9, 5, 1, NULL, 5, '300', 'La encantada de villa', 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Ubicaci&oacute;n residencial tranquila y segura en Las Brisas de Villa<br />\r\nCasa de tres niveles con amplios espacios y excelente distribuci&oacute;n<br />\r\nGran jard&iacute;n con &aacute;rea de parrilla ideal para reuniones familiares<br />\r\nSala y comedor con iluminaci&oacute;n natural y vista al jard&iacute;n<br />\r\nCocina independiente con muebles altos y bajos y comedor de diario<br />\r\nDormitorio principal con ba&ntilde;o con tina y walk-in closet<br />\r\nFamily room en el segundo nivel ideal para TV o lectura<br />\r\nTercer nivel con habitaci&oacute;n m&aacute;ster, jacuzzi y terraza privada<br />\r\nLavander&iacute;a independiente y dormitorio de servicio completo<br />\r\nCochera y &aacute;rea de almacenamiento<br />\r\nDisponibilidad inmediata &ndash; lista para mudarse</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-10-17 16:33:54', '2025-10-17 16:33:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Casa con jardín y terraza en Las Brisas de Villa – Chorrillos', 'Hermosa casa en Las Brisas de Villa. 3 niveles, 4 dormitorios, jardín con parrilla, terraza privada, family room y acabados cómodos. Ideal para familias.', 'casa en venta chorrillos, casa las brisas de villa, casa con jardín chorrillos, casa con terraza lima, casa familiar chorrillos, casa con jacuzzi lima, comprar casa brisas de villa, mprealstate', NULL, NULL, 6, NULL, NULL, NULL, 0),
(95, 'MPV0027', '🏡 VENTA – DEPARTAMENTO EN LOS CEDROS DE VILLA, CHORRILLOS 🏡', NULL, '📍 Ubicado en plena zona cultural, este hermoso departamento de primer piso combina comodidad', '<p>Ubicado en plena zona cultural, este hermoso departamento de primer piso combina comodidad, estilo y una excelente iluminaci&oacute;n natural.</p>\r\n\r\n<p>Caracter&iacute;sticas principales:<br />\r\n&Aacute;rea: 105 m&sup2;<br />\r\nDepartamento de 3 dormitorios - 1 ba&ntilde;o y medio - 1 cochera<br />\r\nSala &ndash; comedor amplia e iluminada<br />\r\nBa&ntilde;o de visitas elegante<br />\r\nCocina renovada con muebles bajos y un gabinete superior + barra desayunador<br />\r\nPatio y lavander&iacute;a independiente<br />\r\nMedio ba&ntilde;o adicional en pasillo<br />\r\nEspacio ideal para mini sala de cine<br />\r\nDormitorio principal con patio privado<br />\r\nDos dormitorios secundarios amplios<br />\r\nCochera el&eacute;ctrica puerta smart<br />\r\nGas C&aacute;lida<br />\r\nTerma con bal&oacute;n de gas</p>\r\n\r\n<p>Precio: US$ 125,000<br />\r\nMantenimiento: S/: 75,00</p>\r\n\r\n<p>Cont&aacute;ctanos para agendar tu visita:<br />\r\n932 073 345<br />\r\nhttps://wa.me/51932073345</p>', 423307.20, 0.00, 125000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/3wduklBUZT_imagen.png', NULL, 0, 0, 10, 3, 1, NULL, 2, '105', 'Los Cedros de Villa', 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, 1, 0, 0, '<p>Ubicaci&oacute;n en zona cultural y tranquila de Los Cedros de Villa<br />\r\nDepartamento en primer piso con excelente iluminaci&oacute;n natural<br />\r\nAmplia sala &ndash; comedor ideal para reuniones familiares<br />\r\nCocina renovada con barra desayunador y muebles modernos<br />\r\nDormitorio principal con patio privado para mayor confort<br />\r\nDos dormitorios secundarios amplios y bien ventilados<br />\r\nCochera el&eacute;ctrica con puerta smart para mayor seguridad<br />\r\nPatio y lavander&iacute;a independiente<br />\r\nGas C&aacute;lida y terma con bal&oacute;n de gas<br />\r\nEspacio adaptable para mini sala de cine o estudio<br />\r\nMantenimiento econ&oacute;mico &ndash; ideal para vivir o invertir</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-10-28 15:16:12', '2025-10-28 15:16:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamento en primer piso con cochera en Los Cedros de Villa – Chorrillos', 'Acogedor departamento en Los Cedros de Villa. 105 m², 3 dormitorios, cocina renovada, patio, cochera eléctrica y excelente iluminación natural.', 'departamento en venta chorrillos, departamento los cedros de villa, departamento primer piso chorrillos, departamento con cochera chorrillos, comprar departamento villa, departamento con patio lima, mprealstate', NULL, NULL, 6, NULL, '105', NULL, 0),
(96, 'MPV0028', '🏡 VENTA – DEPARTAMENTO EN LOS CEDROS DE VILLA, CHORRILLOS 🏡', NULL, '📍 Ubicado en la residencial zona de Los Cedros de Villa – Chorrillos', '<p><br />\r\nUbicado en la residencial zona de Los Cedros de Villa &ndash; Chorrillos, departamento de sexto piso, rodeado de parques, colegios, universidades y avenidas principales. Excelente conexi&oacute;n con transporte y comercios.</p>\r\n\r\n<p>Precio de venta: US$ 110,000<br />\r\n&Aacute;rea construida: 83m&sup2;<br />\r\nDormitorios: 3<br />\r\nBa&ntilde;os: 2<br />\r\nEdificio con ascensor<br />\r\nDepartamento de estreno</p>\r\n\r\n<p>Distribuci&oacute;n:<br />\r\nSala amplia e iluminada<br />\r\nComedor integrado<br />\r\nCocina moderna<br />\r\n3 dormitorios<br />\r\n2 ba&ntilde;os completos</p>\r\n\r\n<p>Ubicaci&oacute;n estrat&eacute;gica: En Los Cedros de Villa, cerca de universidades, colegios, supermercados y principales avenidas.</p>\r\n\r\n<p>Entrega inmediata &ndash; listo para estrenar</p>\r\n\r\n<p>Cont&aacute;ctanos para agendar tu visita:<br />\r\n932 073 345<br />\r\nhttps://wa.me/51932073345</p>', 372510.40, 0.00, 110000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/hdfmTQ4i9I_imagen.png', NULL, 0, 0, 10, 3, 6, NULL, 2, '83', 'Los Cedros de Villa', 'Piso 6', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Ubicaci&oacute;n estrat&eacute;gica en Los Cedros de Villa, cerca de universidades, colegios y comercios<br />\r\nDepartamento de estreno, moderno y listo para habitar<br />\r\nSala y comedor amplios con excelente iluminaci&oacute;n natural<br />\r\nCocina moderna integrada, funcional y pr&aacute;ctica<br />\r\nTres dormitorios c&oacute;modos y bien distribuidos<br />\r\nDos ba&ntilde;os completos con acabados contempor&aacute;neos<br />\r\nEdificio con ascensor para mayor comodidad<br />\r\nExcelente conectividad a principales avenidas y transporte<br />\r\nZona residencial tranquila y segura<br />\r\nEntrega inmediata &ndash; ideal para vivir o invertir</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-10-28 15:25:22', '2025-10-28 15:25:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamento de estreno con ascensor en Los Cedros de Villa – Chorrillos', 'Estrena tu nuevo hogar en Los Cedros de Villa. Departamento de 83 m², 3 dormitorios, 2 baños, cocina moderna y ascensor. Excelente ubicación.', 'departamento en venta chorrillos, departamento los cedros de villa, departamento estreno chorrillos, departamento con ascensor lima, comprar departamento villa, departamento 3 dormitorios chorrillos, mprealstate', NULL, NULL, 6, NULL, '83', NULL, 0),
(97, 'MPV0029', '🏗 VENTA – TERRENO PARA PROYECTOS INMOBILIARIOS EN CHORRILLOS 🏗', NULL, '📍 Con una ubicación estratégica en Chorrillos', '<p><br />\r\nCon una ubicaci&oacute;n estrat&eacute;gica en Chorrillos, muy cerca de colegios, mercados, centros comerciales y con accesos directos a las principales avenidas.</p>\r\n\r\n<p>Precio de venta: $2.400.000.00<br />\r\n&Aacute;rea de terreno: 2,546 m&sup2;<br />\r\n&Aacute;rea construida: 480 m&sup2;<br />\r\n&Aacute;rea libre: 2,066 m&sup2;<br />\r\nMedidas: Frente 38 ml &ndash; Fondo 67 ml<br />\r\nZonificaci&oacute;n: RDM<br />\r\nPar&aacute;metros: Hasta 8 pisos</p>\r\n\r\n<p>Caracter&iacute;sticas del predio:<br />\r\n4 amplios ambientes para oficina<br />\r\n6 ba&ntilde;os (damas y caballeros)<br />\r\nZona de almac&eacute;n<br />\r\nJard&iacute;n interior<br />\r\n10 cocheras paralelas techadas</p>\r\n\r\n<p>Documentos en regla<br />\r\nAntig&uuml;edad: 54 a&ntilde;os<br />\r\nServicios: Agua y drenaje municipal, energ&iacute;a el&eacute;ctrica privada</p>\r\n\r\n<p>Ubicaci&oacute;n privilegiada en Lima &ndash; Chorrillos. Ideal para proyectos inmobiliarios de vivienda multifamiliar o uso mixto.</p>\r\n\r\n<p>Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n932 073 345<br />\r\nhttps://wa.me/51932073345</p>', 8127498.90, 0.00, 2400000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/11/SZ3V2Xa44M_imagen.png', NULL, 0, 0, 11, NULL, 8, NULL, NULL, '2546', 'Guardia Civil', NULL, NULL, NULL, NULL, '', NULL, NULL, 10, 0, 0, '<p>Ubicaci&oacute;n estrat&eacute;gica en Chorrillos, cerca de colegios, comercios y avenidas principales<br />\r\nTerreno amplio de 2,546 m&sup2; ideal para desarrollo inmobiliario<br />\r\nZonificaci&oacute;n RDM con par&aacute;metros para construir hasta 8 pisos<br />\r\n&Aacute;rea libre de m&aacute;s de 2,000 m&sup2; aprovechable para jardines, estacionamientos o nuevas edificaciones<br />\r\nIncluye &aacute;rea construida de 480 m&sup2; con oficinas, ba&ntilde;os y almac&eacute;n<br />\r\n10 cocheras paralelas techadas<br />\r\nDocumentaci&oacute;n en regla y servicios operativos (agua, desag&uuml;e y electricidad privada)<br />\r\nIdeal para proyectos multifamiliares o de uso mixto<br />\r\nExcelente inversi&oacute;n en una zona en crecimiento y alta demanda<br />\r\nAcceso r&aacute;pido a v&iacute;as principales de Lima Sur</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-10-28 15:37:02', '2025-10-28 15:39:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Terreno para proyecto inmobiliario en Chorrillos – 2,546 m² RDM', 'Terreno de 2,546 m² en Chorrillos con zonificación RDM y parámetros para 8 pisos. Ideal para proyectos multifamiliares o de uso mixto.', 'terreno en venta chorrillos, terreno para constructora lima, terreno multifamiliar chorrillos, terreno para proyecto inmobiliario lima, zonificación rdm chorrillos, venta terreno grande lima, mprealstate', NULL, NULL, 6, '2066', '480', NULL, 0);
INSERT INTO `products` (`id`, `sku`, `producto`, `pms`, `extract`, `description`, `precio`, `descuento`, `preciomin`, `preciobase`, `preciolimpieza`, `precioservicio`, `stock`, `costo_x_art`, `peso`, `imagen`, `atributes`, `destacar`, `recomendar`, `categoria_id`, `cuartos`, `pisos`, `movilidad`, `banios`, `area`, `address`, `inside`, `district`, `city`, `country`, `calendar_url`, `airbnb_url`, `frecuencia`, `cochera`, `mascota`, `mobiliado`, `incluye`, `no_incluye`, `disponible`, `no_disponible`, `departamento_id`, `provincia_id`, `distrito_id`, `visible`, `status`, `created_at`, `updated_at`, `imagen_ambiente`, `subcategory_id`, `imagen_2`, `imagen_3`, `imagen_4`, `color`, `image_texture`, `slug`, `max_stock`, `precio_reseller`, `meta_title`, `meta_description`, `meta_keywords`, `latitud`, `longitud`, `staff_id`, `ocupada`, `construida`, `medidas`, `endescuento`) VALUES
(98, 'MPV0030', '🏡 VENTA – DEPARTAMENTO EN VISTA ALEGRE, SURCO (4TO PISO) 🏡', NULL, '📍 Ubicado frente a Trigal, en la zona de Vista Alegre – Surco', '<p>Ubicado frente a Trigal, en la zona de Vista Alegre &ndash; Surco. Muy cerca de la Avenida Vista Alegre, en un barrio que cuenta con colegios como el Colegio Villa Alegre y la Instituci&oacute;n Educativa Jes&uacute;s Salvador.</p>\r\n\r\n<p>Precio de venta: US$ 230,000<br />\r\n&Aacute;rea construida: 123 m&sup2;<br />\r\nDormitorios: 3<br />\r\nBa&ntilde;os: 4<br />\r\nPiso: 4to piso con balc&oacute;n</p>\r\n\r\n<p>Distribuci&oacute;n:<br />\r\nSala &ndash; comedor amplia e iluminada con salida al balc&oacute;n<br />\r\nDormitorio principal con walking cl&oacute;set y ba&ntilde;o privado<br />\r\n2 dormitorios adicionales<br />\r\n3 ba&ntilde;os completos adicionales<br />\r\nCocina independiente<br />\r\n&Aacute;rea de lavander&iacute;a</p>\r\n\r\n<p>Ubicaci&oacute;n estrat&eacute;gica: Vista Alegre &ndash; Surco, frente a Trigal. Zona residencial con colegios cercanos, avenidas de f&aacute;cil acceso, tiendas locales y servicios b&aacute;sicos pr&oacute;ximos.</p>\r\n\r\n<p>Disponibilidad inmediata</p>\r\n\r\n<p>Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o coordinar tu visita:<br />\r\n932 073 345</p>', 778885.30, 0.00, 230000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos//dQhXhVH2Ux_imagen.png', NULL, 0, 0, NULL, 3, 4, NULL, 4, '123', 'VISTA ALEGRE', 'PISO 4', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Ubicaci&oacute;n privilegiada frente a Trigal, en la tranquila zona de Vista Alegre &ndash; Surco<br />\r\nDepartamento amplio e iluminado con balc&oacute;n<br />\r\nSala &ndash; comedor con salida directa al balc&oacute;n y buena ventilaci&oacute;n<br />\r\nDormitorio principal con walk-in cl&oacute;set y ba&ntilde;o privado<br />\r\nDos dormitorios adicionales con excelente distribuci&oacute;n<br />\r\nCocina independiente funcional y bien equipada<br />\r\n&Aacute;rea de lavander&iacute;a integrada<br />\r\nCuatro ba&ntilde;os en total, ideal para comodidad familiar<br />\r\nZona residencial con colegios, comercios y avenidas principales cercanas<br />\r\nDisponibilidad inmediata &ndash; listo para habitar</p>', NULL, NULL, NULL, '15', '1501', '150140', 1, 1, '2025-10-28 15:46:33', '2025-10-28 15:46:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamento con balcón en Vista Alegre – Surco (4to piso)', 'Amplio departamento en Vista Alegre – Surco. 123 m², 3 dormitorios, 4 baños, balcón, cocina independiente y excelente ubicación frente a Trigal.', 'departamento en venta surco, departamento vista alegre surco, departamento con balcón surco, comprar departamento surco, departamento familiar lima, departamento cerca de trigal, mprealstate', NULL, NULL, NULL, NULL, '123', NULL, 0),
(99, 'MPV0030', '🏡 VENTA – DEPARTAMENTO EN VISTA ALEGRE, SURCO (4TO PISO) 🏡', NULL, '📍 Ubicado frente a Trigal, en la zona de Vista Alegre – Surco', '<p>Ubicado frente a Trigal, en la zona de Vista Alegre &ndash; Surco. Muy cerca de la Avenida Vista Alegre, en un barrio que cuenta con colegios como el Colegio Villa Alegre y la Instituci&oacute;n Educativa Jes&uacute;s Salvador.</p>\r\n\r\n<p>Precio de venta: US$ 230,000<br />\r\n&Aacute;rea construida: 123 m&sup2;<br />\r\nDormitorios: 3<br />\r\nBa&ntilde;os: 4<br />\r\nPiso: 4to piso con balc&oacute;n</p>\r\n\r\n<p>Distribuci&oacute;n:<br />\r\nSala &ndash; comedor amplia e iluminada con salida al balc&oacute;n<br />\r\nDormitorio principal con walking cl&oacute;set y ba&ntilde;o privado<br />\r\n2 dormitorios adicionales<br />\r\n3 ba&ntilde;os completos adicionales<br />\r\nCocina independiente<br />\r\n&Aacute;rea de lavander&iacute;a</p>\r\n\r\n<p>Ubicaci&oacute;n estrat&eacute;gica: Vista Alegre &ndash; Surco, frente a Trigal. Zona residencial con colegios cercanos, avenidas de f&aacute;cil acceso, tiendas locales y servicios b&aacute;sicos pr&oacute;ximos.</p>\r\n\r\n<p>Disponibilidad inmediata</p>\r\n\r\n<p>Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o coordinar tu visita:<br />\r\n932 073 345<br />\r\n&nbsp;</p>', 778885.30, 0.00, 230000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos//CpMjuoAlqB_imagen.png', NULL, 0, 0, NULL, 3, 4, NULL, 4, '123', 'VISTA ALEGRE', 'PISO 4', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Ubicaci&oacute;n privilegiada frente a Trigal, en la tranquila zona de Vista Alegre &ndash; Surco<br />\r\nDepartamento amplio e iluminado con balc&oacute;n<br />\r\nSala &ndash; comedor con salida directa al balc&oacute;n y buena ventilaci&oacute;n<br />\r\nDormitorio principal con walk-in cl&oacute;set y ba&ntilde;o privado<br />\r\nDos dormitorios adicionales con excelente distribuci&oacute;n<br />\r\nCocina independiente funcional y bien equipada<br />\r\n&Aacute;rea de lavander&iacute;a integrada<br />\r\nCuatro ba&ntilde;os en total, ideal para comodidad familiar<br />\r\nZona residencial con colegios, comercios y avenidas principales cercanas<br />\r\nDisponibilidad inmediata &ndash; listo para habitar</p>', NULL, NULL, NULL, '15', '1501', '150140', 1, 1, '2025-10-28 15:50:29', '2025-10-28 15:50:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamento con balcón en Vista Alegre – Surco (4to piso)', 'Amplio departamento en Vista Alegre – Surco. 123 m², 3 dormitorios, 4 baños, balcón, cocina independiente y excelente ubicación frente a Trigal.', 'departamento en venta surco, departamento vista alegre surco, departamento con balcón surco, comprar departamento surco, departamento familiar lima, departamento cerca de trigal, mprealstate', NULL, NULL, NULL, NULL, '123', NULL, 0),
(100, 'MPV0030', '🏡 VENTA – DEPARTAMENTO EN VISTA ALEGRE, SURCO (4TO PISO) 🏡', NULL, '📍 Ubicado frente a Trigal, en la zona de Vista Alegre – Surco', '<p>Ubicado frente a Trigal, en la zona de Vista Alegre &ndash; Surco. Muy cerca de la Avenida Vista Alegre, en un barrio que cuenta con colegios como el Colegio Villa Alegre y la Instituci&oacute;n Educativa Jes&uacute;s Salvador.</p>\r\n\r\n<p>Precio de venta: US$ 230,000<br />\r\n&Aacute;rea construida: 123 m&sup2;<br />\r\nDormitorios: 3<br />\r\nBa&ntilde;os: 4<br />\r\nPiso: 4to piso con balc&oacute;n</p>\r\n\r\n<p>Distribuci&oacute;n:<br />\r\nSala &ndash; comedor amplia e iluminada con salida al balc&oacute;n<br />\r\nDormitorio principal con walking cl&oacute;set y ba&ntilde;o privado<br />\r\n2 dormitorios adicionales<br />\r\n3 ba&ntilde;os completos adicionales<br />\r\nCocina independiente<br />\r\n&Aacute;rea de lavander&iacute;a</p>\r\n\r\n<p>Ubicaci&oacute;n estrat&eacute;gica: Vista Alegre &ndash; Surco, frente a Trigal. Zona residencial con colegios cercanos, avenidas de f&aacute;cil acceso, tiendas locales y servicios b&aacute;sicos pr&oacute;ximos.</p>\r\n\r\n<p>Disponibilidad inmediata</p>\r\n\r\n<p>Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o coordinar tu visita:<br />\r\n932 073 345</p>', 778885.30, 0.00, 230000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/c3h7LGyPtm_imagen.png', NULL, 0, 0, 10, NULL, 4, NULL, NULL, '123', 'VISTA ALEGRE', 'PISO 4', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Ubicaci&oacute;n privilegiada frente a Trigal, en la tranquila zona de Vista Alegre &ndash; Surco<br />\r\nDepartamento amplio e iluminado con balc&oacute;n<br />\r\nSala &ndash; comedor con salida directa al balc&oacute;n y buena ventilaci&oacute;n<br />\r\nDormitorio principal con walk-in cl&oacute;set y ba&ntilde;o privado<br />\r\nDos dormitorios adicionales con excelente distribuci&oacute;n<br />\r\nCocina independiente funcional y bien equipada<br />\r\n&Aacute;rea de lavander&iacute;a integrada<br />\r\nCuatro ba&ntilde;os en total, ideal para comodidad familiar<br />\r\nZona residencial con colegios, comercios y avenidas principales cercanas<br />\r\nDisponibilidad inmediata &ndash; listo para habitar</p>', NULL, NULL, NULL, '15', '1501', '150140', 1, 1, '2025-10-28 15:53:16', '2025-10-28 15:53:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamento con balcón en Vista Alegre – Surco (4to piso)', 'Amplio departamento en Vista Alegre – Surco. 123 m², 3 dormitorios, 4 baños, balcón, cocina independiente y excelente ubicación frente a Trigal.', 'departamento en venta surco, departamento vista alegre surco, departamento con balcón surco, comprar departamento surco, departamento familiar lima, departamento cerca de trigal, mprealstate', NULL, NULL, 6, NULL, '123', NULL, 0),
(101, 'MPV0035', '🏡 VENTA – CASA EN LAS BRISAS DE VILLA, CHORRILLOS 🏡', NULL, '📍 En la exclusiva zona residencial Las Brisas de Villa', '<p>En la exclusiva zona residencial Las Brisas de Villa, rodeada de 🌳 parques, 🏫 colegios, 🎓 universidades, &aacute;reas deportivas. Un entorno tranquilo, seguro y perfecto para disfrutar en familia.</p>\r\n\r\n<p>Precio de venta: US$ 399,900<br />\r\n&Aacute;rea de terreno: 300 m&sup2;<br />\r\nDormitorios: 3 principales + 1 oficina/dormitorio adicional<br />\r\nBa&ntilde;os: 3 completos + 1 de visita<br />\r\nEstacionamientos: 2 interiores + 2 exteriores<br />\r\nPiscina de 42 m&sup2; (profundidad 1.70 m)</p>\r\n\r\n<p>Distribuci&oacute;n:<br />\r\nSala &ndash; comedor amplia e iluminada<br />\r\nCocina espaciosa con encimera, horno empotrado, cava y alacena<br />\r\nDormitorio principal con walk-in closet y ba&ntilde;o privado<br />\r\n2 dormitorios secundarios con cl&oacute;set y ba&ntilde;o compartido<br />\r\nFamily room<br />\r\nOficina o dormitorio adicional en primer piso<br />\r\nDep&oacute;sito y alacena en primer piso<br />\r\nBa&ntilde;o de visita</p>\r\n\r\n<p>Construcci&oacute;n: Febrero 2012</p>\r\n\r\n<p>Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n932 073 345<br />\r\nhttps://wa.me/51932073345</p>', 1354244.50, 0.00, 399900.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/9/QSQWHZZSdB_imagen.png', NULL, 0, 0, 9, 4, 1, NULL, 4, '300', 'LAS BRISAS DE VILLA', 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, 4, 0, 0, '<p>Ubicaci&oacute;n exclusiva en la tranquila zona residencial Las Brisas de Villa<br />\r\nCasa amplia y moderna rodeada de parques, colegios y universidades<br />\r\nPiscina de 42 m&sup2; ideal para disfrutar en familia o con amigos<br />\r\nSala &ndash; comedor iluminada con vista al jard&iacute;n<br />\r\nCocina equipada con encimera, horno empotrado, cava y alacena<br />\r\nDormitorio principal con walk-in closet y ba&ntilde;o privado<br />\r\nFamily room ideal para &aacute;rea de entretenimiento o descanso<br />\r\nOficina o dormitorio adicional en el primer piso<br />\r\nDep&oacute;sito, ba&ntilde;o de visita y alacena para mayor funcionalidad<br />\r\n4 estacionamientos (2 interiores + 2 exteriores)<br />\r\nZona segura, con f&aacute;cil acceso a avenidas principales<br />\r\nExcelente opci&oacute;n para familias que buscan confort y amplitud</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-10-28 16:23:45', '2025-10-28 16:23:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Casa con piscina y 4 cocheras en Las Brisas de Villa – Chorrillos', 'Hermosa casa en Las Brisas de Villa. 300 m², 3 dormitorios, piscina, family room, oficina, cocina equipada y 4 estacionamientos. Zona residencial y segura.', 'casa en venta chorrillos, casa las brisas de villa, casa con piscina chorrillos, casa familiar lima, casa con oficina lima, comprar casa brisas de villa, casa moderna chorrillos, mprealstate', NULL, NULL, 6, NULL, '300', NULL, 0),
(102, 'MPV0036', '🏡 Departamentos en Venta – Los Cedros de Villa, Chorrillos', NULL, '📍 En la exclusiva zona de Los Cedros de Villa', '<p>Ubicaci&oacute;n:En la exclusiva zona de Los Cedros de Villa, cerca de universidades como UPC y San Juan Bautista, adem&aacute;s de centros comerciales como Plaza Vea y Metro.</p>\r\n\r\n<p>Caracter&iacute;sticas:<br />\r\n&Aacute;rea: 131.5 m&sup2;<br />\r\nDisponibilidad en 3er, 4to y 5to piso<br />\r\n3 habitaciones (habitaci&oacute;n principal con walking closet)<br />\r\n2 ba&ntilde;os completos<br />\r\nSala-comedor amplia y luminosa<br />\r\nBalc&oacute;n con vista a la calle<br />\r\n&Aacute;rea de lavander&iacute;a</p>\r\n\r\n<p>Precio: $135,000</p>\r\n\r\n<p>&iexcl;Agenda tu visita y descubre tu pr&oacute;ximo hogar!&nbsp;</p>\r\n\r\n<p>Cont&aacute;ctanos hoy mismo y agenda tu visita.<br />\r\n932 073 345<br />\r\nhttps://wa.me/51932073345</p>', 457171.80, 0.00, 135000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/FdXciPr3g2_imagen.png', NULL, 0, 0, 10, 3, 5, NULL, 2, '131.5', 'Chorrillos', 'Piso 3 - 4 - 5', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Ubicaci&oacute;n privilegiada en Los Cedros de Villa, cerca de universidades (UPC, San Juan Bautista) y centros comerciales (Plaza Vea, Metro)<br />\r\nDepartamentos amplios y modernos de 131.5 m&sup2;<br />\r\nDisponibles en 3er, 4to y 5to piso<br />\r\n3 habitaciones, principal con walking closet<br />\r\n2 ba&ntilde;os completos con acabados modernos<br />\r\nSala &ndash; comedor amplia y luminosa con balc&oacute;n con vista a la calle<br />\r\n&Aacute;rea de lavander&iacute;a independiente<br />\r\nZona residencial tranquila y segura<br />\r\nExcelente conectividad con avenidas principales<br />\r\nIdeal para familias que buscan comodidad, amplitud y buena ubicaci&oacute;n</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-10-28 16:30:23', '2025-10-28 16:30:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamentos en venta en Los Cedros de Villa – Chorrillos', 'Departamentos de 131.5 m² en Los Cedros de Villa, Chorrillos. 3 habitaciones, 2 baños, balcón, lavandería y sala–comedor amplia. Cerca de UPC, Metro y Plaza Vea.', 'departamento en venta chorrillos, departamentos los cedros de villa, comprar departamento chorrillos, mprealstate, departamento familiar lima, departamento con balcón chorrillos, inmobiliaria lima', NULL, NULL, 6, NULL, '131.5', NULL, 0),
(103, 'MPA0018', '🏡 ALQUILO DEPARTAMENTO – LOS CEDROS DE VILLA, CHORRILLOS', NULL, '✨ Vive a pasos del mar, con comodidad, luz natural y excelente ubicación.', '<p>✨ Vive a pasos del mar, con comodidad, luz natural y excelente ubicaci&oacute;n.</p>\r\n\r\n<p>📍 Ubicaci&oacute;n estrat&eacute;gica:<br />\r\n✅ Frente al Centro Cultural<br />\r\n✅ A minutos de la playa 🌊<br />\r\n✅ Cerca del C.C. Megaplaza Los Cedros 🛍️<br />\r\n✅ A minutos de la Universidad UPC 🎓<br />\r\n✅ Rodeado de parques 🌳, restaurantes 🍽️ y m&aacute;s</p>\r\n\r\n<p>📐 Caracter&iacute;sticas del Departamento:<br />\r\n📏 &Aacute;rea total: 125 m&sup2;<br />\r\n🏢 Piso: 1er piso<br />\r\n🌤️ Vista interior con excelente iluminaci&oacute;n<br />\r\n🚗 Estacionamiento para 1 carro incluido</p>\r\n\r\n<p>🛋️ Distribuci&oacute;n:<br />\r\n🛋️ Sala &ndash; Comedor amplios<br />\r\n🍽️ Cocina con buenos acabados<br />\r\n🧺 Lavander&iacute;a independiente<br />\r\n🔆 2 espacios de tragaluz techado<br />\r\n🚻 1 ba&ntilde;o de visita</p>\r\n\r\n<p>🛏️ Dormitorios:<br />\r\n🛁 1 dormitorio principal con ba&ntilde;o privado y jacuzzi<br />\r\n🚿 1 dormitorio secundario con ba&ntilde;o privado<br />\r\n💡 1 dormitorio con iluminaci&oacute;n natural desde el tragaluz</p>\r\n\r\n<p>📄 Documentaci&oacute;n en regla &ndash; Listo para transferencia</p>\r\n\r\n<p>💰 Precio de venta: $136,000 (Negociable)&nbsp;<br />\r\n💰 Precio de alquiler: S/. 2,600 - 2 x 1<br />\r\n✅ Estar bien en infocorp y sustentar ingresos</p>\r\n\r\n<p>📞 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar una visita:<br />\r\n&nbsp;📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n🌐 mprealstate.com&nbsp;&nbsp; &nbsp;<br />\r\nhttps://wa.me/51932073345</p>', 2600.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/hA34ODYnH4_imagen.png', NULL, 0, 1, 10, 3, 1, NULL, 3, '125', 'Los Cedros de Villa', 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Vive a pasos del mar con excelente iluminaci&oacute;n natural</p>\r\n\r\n<p>Ubicaci&oacute;n estrat&eacute;gica cerca de universidades, centros comerciales y parques</p>\r\n\r\n<p>Amplios ambientes con sala, comedor y cocina de buenos acabados</p>\r\n\r\n<p>Dormitorio principal con ba&ntilde;o privado y jacuzzi</p>\r\n\r\n<p>Estacionamiento incluido y lavander&iacute;a independiente</p>\r\n\r\n<p>Documentaci&oacute;n en regla, listo para transferencia</p>\r\n\r\n<p>Precio de venta negociable y opci&oacute;n de alquiler disponible</p>', NULL, NULL, NULL, '15', '1501', '150108', 0, 1, '2025-11-06 16:32:44', '2026-01-26 20:03:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamento 1er piso cerca al mar en Los Cedros', 'Departamento en venta y alquiler a pasos del mar. 3 dormitorios, jacuzzi, 125 m², estacionamiento y excelente ubicación en Los Cedros.', 'departamento en venta, departamento Los Cedros, vivir cerca al mar, alquiler Los Cedros, inmobiliaria, mprealstate, jacuzzi, departamento Lima Sur', NULL, NULL, 6, NULL, NULL, NULL, 0),
(104, 'MPA0020', '🏢 DEPARTAMENTO EN ALQUILER – VILLA MAGISTERIAL', NULL, 'Vive con comodidad y funcionalidad en un acogedor departamento', '<p>Vive con comodidad y funcionalidad en un acogedor departamento, ideal para quienes buscan un espacio pr&aacute;ctico, bien distribuido y en una zona con vigilancia.</p>\r\n\r\n<p>💵 Precio de alquiler: S/ 1,700<br />\r\n📐 Caracter&iacute;sticas generales:<br />\r\n&Aacute;rea construida: 75 m&sup2;<br />\r\nUbicado en 2do piso<br />\r\n🛏 3 habitaciones<br />\r\n🚿 1 ba&ntilde;o completo<br />\r\n🛋 Sala comedor<br />\r\n🍳 Cocina independiente<br />\r\n🚗 Sin cochera</p>\r\n\r\n<p>✨ Distribuci&oacute;n:<br />\r\n🛋 Sala comedor con buena iluminaci&oacute;n natural<br />\r\n🍽 Cocina independiente<br />\r\n🛏 Tres habitaciones bien distribuidas<br />\r\n🚿 Un ba&ntilde;o completo</p>\r\n\r\n<p>🔐 Servicios incluidos:<br />\r\n✔ Vigilancia<br />\r\n✔ Luz y agua de &aacute;reas comunes<br />\r\n✔ Arbitrios</p>\r\n\r\n<p>🧹 Gastos compartidos:<br />\r\nLimpieza de escalera: S/ 20<br />\r\nAgua: S/ 50<br />\r\n(Se divide entre 8 personas)</p>\r\n\r\n<p>📍 Ubicaci&oacute;n:<br />\r\nVilla Magisterial &ndash; Chorrillos<br />\r\nCerca a Los Cedros de Villa, centros comerciales, colegios, universidades, Club Cultural Deportivo Lima y al nuevo Malec&oacute;n de Chorrillos.</p>\r\n\r\n<p>📌 Condiciones del alquiler:<br />\r\n🚫 Requisito del propietario: no venezolanos<br />\r\n🐾 Sin mascotas (de preferencia)<br />\r\n📑 2x1 (garant&iacute;a + adelanto)</p>\r\n\r\n<p>📅 Disponibilidad inmediata &ndash; Ideal para familias o personas que buscan un departamento funcional, bien ubicado y con gastos controlados.</p>\r\n\r\n<p>📲 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n🏢 MP Real State<br />\r\n📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣ / 9️⃣2️⃣6️⃣ 8️⃣1️⃣1️⃣ 8️⃣0️⃣9️⃣<br />\r\nhttps://wa.me/51932073345<br />\r\nhttps://wa.me/51926811809<br />\r\n🌐 mprealstate.com</p>', 1700.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/10/gyTBmb4NtT_imagen.png', NULL, 0, 1, 10, 3, 1, NULL, 1, '75', 'Villa Magisterial', 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Zona con vigilancia permanente<br />\r\nDepartamento bien distribuido y funcional<br />\r\nBuena iluminaci&oacute;n natural<br />\r\nServicios de &aacute;reas comunes incluidos<br />\r\nUbicaci&oacute;n estrat&eacute;gica cerca a comercios y universidades<br />\r\nGastos mensuales controlados<br />\r\nIdeal para familias</p>', NULL, NULL, NULL, '15', '1501', '150108', 0, 1, '2025-12-19 16:47:16', '2026-01-26 19:54:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Departamento en Alquiler en Villa Magisterial Chorrillos – 75 m²', 'Departamento en alquiler en Villa Magisterial, Chorrillos. Cuenta con 3 dormitorios, buena distribución, vigilancia y excelente ubicación.', 'departamento en alquiler chorrillos, alquiler villa magisterial, departamento 3 dormitorios chorrillos, alquiler departamento lima sur, departamento sin cochera, alquiler familiar chorrillos', NULL, NULL, 6, NULL, '75', NULL, 0),
(105, 'MPV0037', '🏡 VENTA – ELEGANTE CASA CON PISCINA Y JARDÍN EN LA ALAMEDA LOS MOLINOS, LA ENCANTADA DE VILLA 🌳✨', NULL, 'Vive con estilo, amplitud y confort en La Encantada de Villa – Chorrillos', '<p>📍 Vive con estilo, amplitud y confort en La Encantada de Villa &ndash; Chorrillos, una de las zonas residenciales m&aacute;s exclusivas de Lima. Esta hermosa casa de dos plantas combina elegancia, funcionalidad y acabados de primera, ideal para familias que buscan un entorno tranquilo y rodeado de naturaleza.</p>\r\n\r\n<p>💵 Precio de venta: US$ 950,000<br />\r\n📐 Caracter&iacute;sticas generales:<br />\r\n&Aacute;rea total: 1,330 m&sup2;<br />\r\n&Aacute;rea construida: 450 m&sup2;<br />\r\n🛏 4 dormitorios (todos con ba&ntilde;o incorporado)<br />\r\n🚿 5 ba&ntilde;os + ba&ntilde;o de visitas<br />\r\n🚗 Cochera abierta para 4 autos<br />\r\n🧱 Dep&oacute;sito y &aacute;rea de servicio completa</p>\r\n\r\n<p>✨ Distribuci&oacute;n:<br />\r\nPrimera planta:<br />\r\n🏠 Hall de ingreso con ca&iacute;da de agua<br />\r\n🔥 Sala con chimenea y comedor, ambos con salida a la terraza<br />\r\n👩&zwj;🍳 Cocina con reposteros altos y bajos, alacena, isla central y comedor de diario con salida a la terraza<br />\r\n🎬 Sala de estar con vista al ingreso<br />\r\n🚻 Ba&ntilde;o de visitas<br />\r\n🌞 Terraza techada y terraza sin techar en zona de parrilla y horno de barro<br />\r\n🏊 Piscina<br />\r\n🌿 Amplio jard&iacute;n<br />\r\n🧺 &Aacute;rea de servicio completa: lavander&iacute;a techada, cuarto y ba&ntilde;o de servicio<br />\r\n🚗 Cochera abierta para 4 autos<br />\r\n📦 Dep&oacute;sito</p>\r\n\r\n<p>Segunda planta:<br />\r\n🎬 Sala de estar<br />\r\n🛏 4 dormitorios:<br />\r\n🛏 Dormitorio principal amplio con chimenea, balc&oacute;n, walk-in closet y ba&ntilde;o incorporado con doble oval&iacute;n<br />\r\n🛏 Tres dormitorios secundarios, todos con closet de pared a pared y ba&ntilde;o incorporado</p>\r\n\r\n<p>💎 Acabados de primera:<br />\r\nPisos de porcelanato en &aacute;reas sociales<br />\r\nMadera en el segundo piso<br />\r\nCuarzo en ba&ntilde;os<br />\r\nGranito en cocina</p>\r\n\r\n<p>📍 Ubicaci&oacute;n: Calle Alameda Los Molinos &ndash; La Encantada de Villa, Chorrillos. Zona exclusiva, segura y con f&aacute;cil acceso al Club de Golf y principales avenidas.</p>\r\n\r\n<p>📅 Disponibilidad inmediata &ndash; Ideal para quienes buscan lujo, amplitud y confort en un entorno natural.</p>\r\n\r\n<p>📲 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar tu visita:<br />\r\n📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n🌐 mprealstate.com</p>', 3198042.00, 0.00, 950000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/9/kXob22TtE3_imagen.png', NULL, 0, 0, 9, 4, 1, NULL, 6, '1330', 'La encantada de villa', 'Piso 1', NULL, NULL, NULL, '', NULL, NULL, 4, 0, 0, '<p>Zona residencial exclusiva y segura<br />\r\nAmplio terreno con jard&iacute;n y piscina<br />\r\nTodos los dormitorios con ba&ntilde;o incorporado<br />\r\nExcelentes acabados de alta gama<br />\r\nTerrazas ideales para reuniones y entretenimiento<br />\r\nCochera para 4 veh&iacute;culos<br />\r\nEntorno tranquilo rodeado de naturaleza</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 0, '2025-12-19 17:37:49', '2025-12-19 17:40:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Casa de Lujo en Venta en La Encantada de Villa – 4 Dormitorios', 'Elegante casa de lujo en La Encantada de Villa con piscina, jardín, 4 dormitorios con baño, amplios espacios y acabados de primera.', 'casa en venta la encantada de villa, casa de lujo chorrillos, casa con piscina lima, venta casa exclusiva lima, casa con jardín chorrillos, casa 4 dormitorios', NULL, NULL, 6, NULL, '1330', NULL, 0),
(106, 'MPV0040', '‼️🏡 ¡OPORTUNIDAD ÚNICA! REMATO LINDA CASA EN BRISAS DE VILLA 🌊✨', NULL, 'Ubicación estratégica cerca de colegios', '<p>📍 Ubicaci&oacute;n: A solo 200 metros del mar 🌊 (segunda fila)<br />\r\n📏 &Aacute;rea total: 300m&sup2;<br />\r\n💰 Precio: USD 240,000</p>\r\n\r\n<p>🏠 CARACTER&Iacute;STICAS DE LA CASA<br />\r\n🏡 &Aacute;rea construida: 240m&sup2; + Amplio jard&iacute;n con terraza de 120m&sup2; 🌿</p>\r\n\r\n<p>🔹 PRIMERA PLANTA (Totalmente habitable) 🔹<br />\r\n👩&zwj;🍳 Amplia cocina abierta con muebles altos y bajos, cocina empotrada y encimera de granito italiano ✨<br />\r\n🍽️ Comedor espacioso<br />\r\n🛋️ Sala de estar<br />\r\n🚻 Ba&ntilde;o de visitas</p>\r\n\r\n<p>🔹 SEGUNDA PLANTA (Sin acabados) 🔹<br />\r\n🛏️ 4 habitaciones<br />\r\n🚿 3 ba&ntilde;os<br />\r\n🛋️ Sala de estar</p>\r\n\r\n<p>🔹 Extras:<br />\r\n🧺 Lavander&iacute;a<br />\r\n🚰 Cisterna con reserva de agua de 4m&sup3; (autonom&iacute;a de 10 d&iacute;as)<br />\r\n🚗 Estacionamiento para 4 autos</p>\r\n\r\n<p>📍 Ubicaci&oacute;n estrat&eacute;gica cerca de colegios, zonas recreativas y centros comerciales 🏫🛍️</p>\r\n\r\n<p>📞 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar una visita:<br />\r\n&nbsp;📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n&nbsp;🌐 mprealstate.com<br />\r\nhttps://wa.me/51932073345</p>', 807926.00, 0.00, 240000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/9/HdTo1cYiAr_imagen.png', NULL, 0, 0, 9, 4, NULL, NULL, 4, '300', 'PUNTA HERMOSA', 'PISO 1', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>A solo 200 metros del mar (segunda fila)<br />\r\nAmplio terreno con jard&iacute;n y terraza<br />\r\nPrimera planta totalmente habitable<br />\r\nCocina abierta con encimera de granito italiano<br />\r\nAlta capacidad de estacionamiento<br />\r\nExcelente potencial para personalizar la segunda planta<br />\r\nUbicaci&oacute;n estrat&eacute;gica cerca de colegios y comercios</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-12-19 17:47:33', '2025-12-19 17:47:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Casa en Venta a 200 m del Mar con Jardín – 300 m²', 'Casa en venta a 200 metros del mar con amplio jardín, terraza, cochera para 4 autos y gran potencial de ampliación en segunda planta.', 'casa en venta cerca al mar, casa segunda fila del mar, casa con jardín, casa con terraza, venta casa playa, casa amplia en venta', NULL, NULL, 6, NULL, '300', NULL, 0),
(107, 'MVP0041', '🏄🏽‍♂️ ¡Vive frente al mar todo el año! 🌊', NULL, 'Maravillosa casa de playa en primera fila en Playa El Silencio – Punta Hermosa ️', '<p>Maravillosa casa de playa en primera fila en Playa El Silencio &ndash; Punta Hermosa ️<br />\r\n&iexcl;Disfruta de atardeceres &uacute;nicos, brisa marina y comodidad total! 🧘&zwj;♀️☀️</p>\r\n\r\n<p>💰 Precio de venta: $330,000<br />\r\n📐 &Aacute;rea total: 150 m2<br />\r\n️ &Aacute;rea construida: 220 m2<br />\r\n&zwj;&zwj;&zwj;👦 Capacidad: Hasta 7 personas<br />\r\n📶 Wifi de 200 Mbps con repetidores en los 3 pisos<br />\r\n🏠 Casa de 3 pisos &ndash; FULL equipada y lista para vivir!</p>\r\n\r\n<p>📍 Ubicaci&oacute;n:<br />\r\n📌 Playa El Silencio &ndash; Primera fila hacia el sur<br />\r\n️ Km 43 de la Panamericana Sur Antigua &ndash; Punta Hermosa</p>\r\n\r\n<p>🔶 Primer Piso<br />\r\n️ Kitchenette<br />\r\n️ Sala y comedor con tablero de cuarzo<br />\r\n🌅 Terraza con vista 180&deg; al mar<br />\r\n🔥 Parrilla con caja china<br />\r\n🚻 Ba&ntilde;o completo de visitas<br />\r\n🚗 Estacionamiento para 2 autos paralelos</p>\r\n\r\n<p>🔷 Segundo Piso<br />\r\n️ Dormitorio con vista al mar, 2 camas de 2 plazas + 2 escritorios<br />\r\n️ Dormitorio con cama de 1.5 plazas + cama nido + escritorio<br />\r\n🚿 Ba&ntilde;o completo</p>\r\n\r\n<p>🔶 Tercer Piso<br />\r\n️ Dormitorio principal con cama king<br />\r\n🛁 Ba&ntilde;o y terraza privada con vista panor&aacute;mica al mar<br />\r\n🪟 Cortinas el&eacute;ctricas<br />\r\n🧺 Lavander&iacute;a<br />\r\n📦 Bodega</p>\r\n\r\n<p>📞 Cont&aacute;ctanos para m&aacute;s informaci&oacute;n o agendar una visita:<br />\r\n📲 WhatsApp: +51 932 073 345<br />\r\n📧 Correo: dpauli@mprealstate.com<br />\r\n🌐 Web: www.mprealstate.com</p>', 1110899.00, 0.00, 330000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/9/JsGUqi6Neu_imagen.png', NULL, 0, 0, 9, 3, 1, NULL, 3, '150', 'PUNTA HERMOSA', 'Piso 1, 2 y 3', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, '<p>Primera fila frente al mar con vista panor&aacute;mica<br />\r\nAtardeceres &uacute;nicos y brisa marina permanente<br />\r\nCasa de 3 pisos full equipada y lista para vivir<br />\r\nTerrazas con vista directa al mar<br />\r\nWifi de alta velocidad en todos los niveles<br />\r\nZona exclusiva y tranquila de Punta Hermosa<br />\r\nIdeal para descanso familiar o inversi&oacute;n</p>', NULL, NULL, NULL, '15', '1501', '150108', 1, 1, '2025-12-19 17:51:21', '2025-12-19 17:51:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Casa de Playa en Venta Primera Fila en El Silencio – Punta Hermosa', 'Casa de playa en primera fila en El Silencio, Punta Hermosa. Vista al mar, terrazas, 3 pisos, full equipada y lista para disfrutar.', 'casa de playa en venta el silencio, casa primera fila punta hermosa, casa frente al mar lima, venta casa de playa peru, casa con vista al mar, playa el silencio', NULL, NULL, 6, NULL, '150', NULL, 0),
(108, 'MPV0042', '✨ ¡Venta de casa una oportunidad imperdible en San Borja!', NULL, 'Se vende amplia y funcional casa de 3 niveles + departamento independiente', '<p>Se vende amplia y funcional casa de 3 niveles + departamento independiente, ubicada en Calle Joachim Moser Hans 165, San Borja, una zona residencial tranquila, segura y con excelente accesibilidad.</p>\r\n\r\n<p>📐 &Aacute;rea de Terreno: 220 m&sup2;<br />\r\n🏗️ &Aacute;rea Construida: 280 m&sup2;<br />\r\n📅 Antig&uuml;edad: 1975 (Ampliaci&oacute;n/Dpto. construido en el a&ntilde;o 2000, 3er nivel)<br />\r\n⚡ Servicios: Luz y agua independizados + therma<br />\r\n💲 Precio de venta: $460,000</p>\r\n\r\n<p>🏡 PRIMER NIVEL<br />\r\n🛋️ Sala y comedor amplios con excelente iluminaci&oacute;n natural.<br />\r\n🍸 Barra integrada ideal para reuniones sociales.<br />\r\n🚻 Medio ba&ntilde;o de visitas.<br />\r\n🍽️ Cocina grande e independiente, con muebles altos y bajos.<br />\r\n🧺 Zona de lavander&iacute;a.<br />\r\n🔥 Patio interior perfecto para parrillas, con conexi&oacute;n directa a la sala.<br />\r\n🌿 Patio exterior adicional.<br />\r\n🚗🚗 2 garajes con ingreso independiente.</p>\r\n\r\n<p>🛏️ SEGUNDO NIVEL</p>\r\n\r\n<p>🛌 4 dormitorios con closets.<br />\r\n🛁 Dormitorio principal con ba&ntilde;o completo y closet.<br />\r\n👧🧒 3 habitaciones secundarias con closets que comparten un ba&ntilde;o completo.<br />\r\n🎮 Sala de estar central que conecta a las 4 habitaciones, ideal para family room o &aacute;rea de estudio.</p>\r\n\r\n<p>🏠 TERCER NIVEL<br />\r\n🔸 &Aacute;rea familiar<br />\r\n🌤️ Amplio patio.<br />\r\n🛏️ 1 habitaci&oacute;n con ba&ntilde;o completo.</p>\r\n\r\n<p>🔸 Departamento independiente (construido en el 2000)<br />\r\n🍳 Cocina peque&ntilde;a.<br />\r\n🛋️ Sala y comedor.<br />\r\n🛏️🛏️ 2 habitaciones con closets (una de ellas con ba&ntilde;o completo).<br />\r\n🌞 Techo con terraza de madera tipo sol y sombra.<br />\r\n📦 Dep&oacute;sito/almac&eacute;n largo que puede convertirse en una habitaci&oacute;n adicional.</p>\r\n\r\n<p>🌟 DETALLES ADICIONALES</p>\r\n\r\n<p>🧭 Inmueble muy bien distribuido, ideal para familias grandes o para vivir y rentar simult&aacute;neamente.<br />\r\n🔌 Luz y agua independizados.<br />\r\n🏘️ Zonificaci&oacute;n residencial consolidada y de alta valoraci&oacute;n.</p>\r\n\r\n<p>📞 &iexcl;No dejes pasar esta oportunidad en pleno coraz&oacute;n de San Borja!<br />\r\nCont&aacute;ctanos para m&aacute;s informaci&oacute;n o para agendar una visita:</p>\r\n\r\n<p>📞 9️⃣3️⃣2️⃣0️⃣7️⃣3️⃣3️⃣4️⃣5️⃣<br />\r\n🌐 mprealstate.com<br />\r\n💬 https://wa.me/51932073345</p>', 1548525.00, 0.00, 460000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 'storage/images/productos/9/6Sy3zT7hVH_imagen.png', NULL, 0, 0, 9, 7, 3, NULL, 5, '220', 'Calle Joachim Moser Hans', 'Piso 1, 2 y 3', NULL, NULL, NULL, '', NULL, NULL, 2, 0, 0, '<p>Ubicaci&oacute;n residencial tranquila y segura en San Borja<br />\r\nCasa de 3 niveles m&aacute;s departamento independiente<br />\r\nIdeal para familias grandes o inversi&oacute;n con renta adicional<br />\r\nExcelente distribuci&oacute;n y buena iluminaci&oacute;n natural<br />\r\nServicios de luz y agua independizados<br />\r\nPatios interiores y exteriores ideales para reuniones<br />\r\nCocheras con ingreso independiente</p>', NULL, NULL, NULL, '15', '1501', '150130', 1, 1, '2025-12-19 17:55:15', '2025-12-19 17:55:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'Casa en Venta en San Borja con Departamento Independiente', 'Amplia casa en venta en San Borja con 3 niveles y departamento independiente. Ideal para familias grandes o inversión, en zona residencial consolidada.', 'casa en venta san borja, casa con departamento independiente, venta casa lima, casa familiar san borja, casa para inversión lima, casa 3 niveles', NULL, NULL, 6, NULL, '220', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provinces`
--

CREATE TABLE `provinces` (
  `id` char(4) NOT NULL,
  `department_id` char(2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provinces`
--

INSERT INTO `provinces` (`id`, `department_id`, `description`, `active`) VALUES
('0101', '01', 'Chachapoyas', 1),
('0102', '01', 'Bagua', 1),
('0103', '01', 'Bongará', 1),
('0104', '01', 'Condorcanqui', 1),
('0105', '01', 'Luya', 1),
('0106', '01', 'Rodríguez de Mendoza', 1),
('0107', '01', 'Utcubamba', 1),
('0201', '02', 'Huaraz', 1),
('0202', '02', 'Aija', 1),
('0203', '02', 'Antonio Raymondi', 1),
('0204', '02', 'Asunción', 1),
('0205', '02', 'Bolognesi', 1),
('0206', '02', 'Carhuaz', 1),
('0207', '02', 'Carlos Fermín Fitzcarrald', 1),
('0208', '02', 'Casma', 1),
('0209', '02', 'Corongo', 1),
('0210', '02', 'Huari', 1),
('0211', '02', 'Huarmey', 1),
('0212', '02', 'Huaylas', 1),
('0213', '02', 'Mariscal Luzuriaga', 1),
('0214', '02', 'Ocros', 1),
('0215', '02', 'Pallasca', 1),
('0216', '02', 'Pomabamba', 1),
('0217', '02', 'Recuay', 1),
('0218', '02', 'Santa', 1),
('0219', '02', 'Sihuas', 1),
('0220', '02', 'Yungay', 1),
('0301', '03', 'Abancay', 1),
('0302', '03', 'Andahuaylas', 1),
('0303', '03', 'Antabamba', 1),
('0304', '03', 'Aymaraes', 1),
('0305', '03', 'Cotabambas', 1),
('0306', '03', 'Chincheros', 1),
('0307', '03', 'Grau', 1),
('0401', '04', 'Arequipa', 1),
('0402', '04', 'Camaná', 1),
('0403', '04', 'Caravelí', 1),
('0404', '04', 'Castilla', 1),
('0405', '04', 'Caylloma', 1),
('0406', '04', 'Condesuyos', 1),
('0407', '04', 'Islay', 1),
('0408', '04', 'La Uniòn', 1),
('0501', '05', 'Huamanga', 1),
('0502', '05', 'Cangallo', 1),
('0503', '05', 'Huanca Sancos', 1),
('0504', '05', 'Huanta', 1),
('0505', '05', 'La Mar', 1),
('0506', '05', 'Lucanas', 1),
('0507', '05', 'Parinacochas', 1),
('0508', '05', 'Pàucar del Sara Sara', 1),
('0509', '05', 'Sucre', 1),
('0510', '05', 'Víctor Fajardo', 1),
('0511', '05', 'Vilcas Huamán', 1),
('0601', '06', 'Cajamarca', 1),
('0602', '06', 'Cajabamba', 1),
('0603', '06', 'Celendín', 1),
('0604', '06', 'Chota', 1),
('0605', '06', 'Contumazá', 1),
('0606', '06', 'Cutervo', 1),
('0607', '06', 'Hualgayoc', 1),
('0608', '06', 'Jaén', 1),
('0609', '06', 'San Ignacio', 1),
('0610', '06', 'San Marcos', 1),
('0611', '06', 'San Miguel', 1),
('0612', '06', 'San Pablo', 1),
('0613', '06', 'Santa Cruz', 1),
('0701', '07', 'Prov. Const. del Callao', 1),
('0801', '08', 'Cusco', 1),
('0802', '08', 'Acomayo', 1),
('0803', '08', 'Anta', 1),
('0804', '08', 'Calca', 1),
('0805', '08', 'Canas', 1),
('0806', '08', 'Canchis', 1),
('0807', '08', 'Chumbivilcas', 1),
('0808', '08', 'Espinar', 1),
('0809', '08', 'La Convención', 1),
('0810', '08', 'Paruro', 1),
('0811', '08', 'Paucartambo', 1),
('0812', '08', 'Quispicanchi', 1),
('0813', '08', 'Urubamba', 1),
('0901', '09', 'Huancavelica', 1),
('0902', '09', 'Acobamba', 1),
('0903', '09', 'Angaraes', 1),
('0904', '09', 'Castrovirreyna', 1),
('0905', '09', 'Churcampa', 1),
('0906', '09', 'Huaytará', 1),
('0907', '09', 'Tayacaja', 1),
('1001', '10', 'Huánuco', 1),
('1002', '10', 'Ambo', 1),
('1003', '10', 'Dos de Mayo', 1),
('1004', '10', 'Huacaybamba', 1),
('1005', '10', 'Huamalíes', 1),
('1006', '10', 'Leoncio Prado', 1),
('1007', '10', 'Marañón', 1),
('1008', '10', 'Pachitea', 1),
('1009', '10', 'Puerto Inca', 1),
('1010', '10', 'Lauricocha', 1),
('1011', '10', 'Yarowilca', 1),
('1101', '11', 'Ica', 1),
('1102', '11', 'Chincha', 1),
('1103', '11', 'Nasca', 1),
('1104', '11', 'Palpa', 1),
('1105', '11', 'Pisco', 1),
('1201', '12', 'Huancayo', 1),
('1202', '12', 'Concepción', 1),
('1203', '12', 'Chanchamayo', 1),
('1204', '12', 'Jauja', 1),
('1205', '12', 'Junín', 1),
('1206', '12', 'Satipo', 1),
('1207', '12', 'Tarma', 1),
('1208', '12', 'Yauli', 1),
('1209', '12', 'Chupaca', 1),
('1301', '13', 'Trujillo', 1),
('1302', '13', 'Ascope', 1),
('1303', '13', 'Bolívar', 1),
('1304', '13', 'Chepén', 1),
('1305', '13', 'Julcán', 1),
('1306', '13', 'Otuzco', 1),
('1307', '13', 'Pacasmayo', 1),
('1308', '13', 'Pataz', 1),
('1309', '13', 'Sánchez Carrión', 1),
('1310', '13', 'Santiago de Chuco', 1),
('1311', '13', 'Gran Chimú', 1),
('1312', '13', 'Virú', 1),
('1401', '14', 'Chiclayo', 1),
('1402', '14', 'Ferreñafe', 1),
('1403', '14', 'Lambayeque', 1),
('1501', '15', 'Lima', 1),
('1502', '15', 'Barranca', 1),
('1503', '15', 'Cajatambo', 1),
('1504', '15', 'Canta', 1),
('1505', '15', 'Cañete', 1),
('1506', '15', 'Huaral', 1),
('1507', '15', 'Huarochirí', 1),
('1508', '15', 'Huaura', 1),
('1509', '15', 'Oyón', 1),
('1510', '15', 'Yauyos', 1),
('1601', '16', 'Maynas', 1),
('1602', '16', 'Alto Amazonas', 1),
('1603', '16', 'Loreto', 1),
('1604', '16', 'Mariscal Ramón Castilla', 1),
('1605', '16', 'Requena', 1),
('1606', '16', 'Ucayali', 1),
('1607', '16', 'Datem del Marañón', 1),
('1608', '16', 'Putumayo', 1),
('1701', '17', 'Tambopata', 1),
('1702', '17', 'Manu', 1),
('1703', '17', 'Tahuamanu', 1),
('1801', '18', 'Mariscal Nieto', 1),
('1802', '18', 'General Sánchez Cerro', 1),
('1803', '18', 'Ilo', 1),
('1901', '19', 'Pasco', 1),
('1902', '19', 'Daniel Alcides Carrión', 1),
('1903', '19', 'Oxapampa', 1),
('2001', '20', 'Piura', 1),
('2002', '20', 'Ayabaca', 1),
('2003', '20', 'Huancabamba', 1),
('2004', '20', 'Morropón', 1),
('2005', '20', 'Paita', 1),
('2006', '20', 'Sullana', 1),
('2007', '20', 'Talara', 1),
('2008', '20', 'Sechura', 1),
('2101', '21', 'Puno', 1),
('2102', '21', 'Azángaro', 1),
('2103', '21', 'Carabaya', 1),
('2104', '21', 'Chucuito', 1),
('2105', '21', 'El Collao', 1),
('2106', '21', 'Huancané', 1),
('2107', '21', 'Lampa', 1),
('2108', '21', 'Melgar', 1),
('2109', '21', 'Moho', 1),
('2110', '21', 'San Antonio de Putina', 1),
('2111', '21', 'San Román', 1),
('2112', '21', 'Sandia', 1),
('2113', '21', 'Yunguyo', 1),
('2201', '22', 'Moyobamba', 1),
('2202', '22', 'Bellavista', 1),
('2203', '22', 'El Dorado', 1),
('2204', '22', 'Huallaga', 1),
('2205', '22', 'Lamas', 1),
('2206', '22', 'Mariscal Cáceres', 1),
('2207', '22', 'Picota', 1),
('2208', '22', 'Rioja', 1),
('2209', '22', 'San Martín', 1),
('2210', '22', 'Tocache', 1),
('2301', '23', 'Tacna', 1),
('2302', '23', 'Candarave', 1),
('2303', '23', 'Jorge Basadre', 1),
('2304', '23', 'Tarata', 1),
('2401', '24', 'Tumbes', 1),
('2402', '24', 'Contralmirante Villar', 1),
('2403', '24', 'Zarumilla', 1),
('2501', '25', 'Coronel Portillo', 1),
('2502', '25', 'Atalaya', 1),
('2503', '25', 'Padre Abad', 1),
('2504', '25', 'Purús', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Root', 'web', '2025-04-16 20:53:18', '2025-04-16 20:53:18'),
(2, 'Admin', 'web', '2025-04-16 20:53:18', '2025-04-16 20:53:18'),
(3, 'Customer', 'web', '2025-04-16 20:53:18', '2025-04-16 20:53:18'),
(4, 'Reseller', 'web', '2025-04-16 20:53:18', '2025-04-16 20:53:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address_department` varchar(255) DEFAULT NULL,
  `address_province` varchar(255) DEFAULT NULL,
  `address_district` varchar(255) DEFAULT NULL,
  `address_price` decimal(8,2) NOT NULL,
  `address_street` varchar(255) DEFAULT NULL,
  `address_number` varchar(255) DEFAULT NULL,
  `address_description` varchar(255) DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `status_message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `confirmation_user` tinyint(1) NOT NULL DEFAULT 0,
  `confirmation_client` tinyint(1) NOT NULL DEFAULT 0,
  `tipo_comprobante` varchar(255) NOT NULL DEFAULT 'Nota de venta',
  `doc_number` varchar(255) DEFAULT NULL,
  `razon_fact` varchar(255) DEFAULT NULL,
  `direccion_fact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_name` longtext NOT NULL,
  `checkin` varchar(255) NOT NULL,
  `checkout` varchar(255) NOT NULL,
  `extras` text DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `name_image` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `botontext1` varchar(255) DEFAULT NULL,
  `link1` varchar(255) DEFAULT NULL,
  `botontext2` varchar(255) DEFAULT NULL,
  `link2` varchar(255) DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `name_image` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `botontext1`, `link1`, `botontext2`, `link2`, `url_image`, `name_image`, `visible`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Serie de Cargadores Premium', 'Funciones empaquetadas a un mejor precio que nunca Potentes sensores para\ncontrola tu estado físico', 'VENTA HASTA 30% DE DESCUENTO', '#', 'Comprar Ahora', NULL, NULL, NULL, 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specifications`
--

CREATE TABLE `specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tittle` varchar(255) DEFAULT NULL,
  `specifications` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `staff`
--

INSERT INTO `staff` (`id`, `nombre`, `cargo`, `facebook`, `instagram`, `youtube`, `twitter`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Denisse Pauli', 'Gerente Comercial', '51932073345', 'dpauili@mprealstate.com', 'storage/images/staff/DoGA05D27U_6.png', '22954-PN-MVCS', 1, '2025-05-22 17:46:39', '2025-05-27 18:09:38'),
(7, 'Jonathan Moreno', 'Gerente General', '51926811809', 'jmoreno@mprealstate.com', 'storage/images/staff/Ku0PEEiqeJ_3.png', '22930-PN-MVCS', 1, '2025-05-22 17:46:39', '2025-05-27 18:09:01'),
(8, 'Milagros Moreno', 'Asesora Inmobiliaria', '51969085814', 'mmoreno@mprealstate.com', 'storage/images/staff/AJOmOaJMTO_1.png', 'MP20255', 1, '2025-05-22 17:46:39', '2025-05-27 18:10:20'),
(9, 'Franchesca Bonfiglioli', 'Asesora Inmobiliaria', '51996677114', 'fbonfiglioli@mprealstate.com', 'storage/images/staff/vO2GaTTUvu_5.png', 'MP20250', 1, '2025-05-22 17:46:40', '2025-05-27 18:10:58'),
(10, 'Margarita Avalos Garcia', 'Asesora Inmobiliaria', '51977993817', 'mavalos@mprealstate.com', 'storage/images/staff/7L1Tvl0jcA_2.png', 'MAVALOS', 1, '2025-05-27 18:11:58', '2025-05-27 18:22:06'),
(11, 'Gabriela Custodio Avellaneda', 'Asesora Inmobiliaria', '51987963060', 'gcustodio@mprealstate.com', 'storage/images/staff/Fati2hNaqu_4.png', 'GCUSTODIO', 1, '2025-05-27 18:12:34', '2025-05-27 18:22:15'),
(12, 'Diego', 'Asesora Inmobiliario', '51977993817', 'diego.martinez@gmail.com', 'storage/images/staff/mHVC2ZlZMH_3.png', 'MP20255', 0, '2025-06-09 18:14:42', '2025-07-11 16:48:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `description`, `color`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Creado', NULL, '#000000', NULL, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(2, 'Rechazado', NULL, '#ff0000', NULL, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(3, 'Pagado', NULL, '#009431', NULL, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(4, 'Pagado - Entregado', NULL, '#009431', NULL, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(5, 'Pagado - Conforme', NULL, '#009431', NULL, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strengths`
--

CREATE TABLE `strengths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcionshort` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `icono` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `strengths`
--

INSERT INTO `strengths` (`id`, `titulo`, `descripcionshort`, `descripcion`, `icono`, `imagen`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Soluciones inmobiliarias con respaldo profesional', NULL, 'En MP Real State, somos una empresa peruana especializada en ofrecer soluciones inmobiliarias integrales, respaldadas por un equipo de profesionales altamente calificados y comprometidos con la satisfacción de nuestros clientes. Nos enfocamos en brindar un servicio personalizado, transparente y eficiente que garantice confianza y resultados en cada operación.', NULL, NULL, 1, '2025-04-16 20:53:19', '2025-05-30 23:24:14'),
(2, 'Un equipo sólido con resultados comprobados', NULL, 'Contamos con más de 30 agentes inmobiliarios capacitados, quienes han logrado superar las expectativas de más de 300 clientes satisfechos. Nuestro enfoque estratégico y operativo nos permite alcanzar un índice de cierre de operaciones en un plazo no mayor a 45 días, garantizando eficiencia y efectividad en cada gestión.', NULL, NULL, 1, '2025-04-16 20:53:19', '2025-05-30 23:27:13'),
(3, 'Alianzas estratégicas con los principales desarrolladores del país', NULL, 'En MP Real State, contamos con convenios exclusivos con los desarrolladores inmobiliarios más importantes de Lima, como Edifica, GDC, TALE, Solar, entre otros. Estas alianzas nos permiten ofrecer a nuestros clientes acceso preferencial a los proyectos verticales más destacados del mercado, con oportunidades únicas de inversión y adquisición en las zonas de mayor valorización de la ciudad.', NULL, NULL, 0, '2025-04-16 20:53:19', '2025-06-09 17:55:30'),
(4, 'Presencia en las zonas con mayor proyección del país', NULL, 'Además de nuestra participación en proyectos verticales, en MP Real State también desarrollamos y comercializamos proyectos horizontales ubicados en las zonas con mayor crecimiento y proyección del Perú, como Paracas, Huacho y otras localidades estratégicas. Estas oportunidades representan una excelente alternativa para quienes buscan invertir en terrenos, casas de playa o propiedades con alto potencial de valorización.', NULL, NULL, 1, '2025-04-16 20:53:19', '2025-06-09 17:56:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `destacar` tinyint(1) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_menu` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags_xproducts`
--

CREATE TABLE `tags_xproducts` (
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `finaltitle` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `title`, `content`, `finaltitle`, `created_at`, `updated_at`) VALUES
(1, NULL, '<div class=\"prose\"><p>Bienvenido al sitio web y/o servicios brindados por <strong>MP Real State</strong>, con domicilio en Los Cocoteros 298, Urb. La Encantada de Villa – Chorrillos, Lima, Perú. Al acceder, navegar o usar nuestros servicios, el Usuario acepta estos Términos y Condiciones. Si no está de acuerdo, le recomendamos no utilizar nuestra plataforma.</p><h3><strong>1. Objeto</strong></h3><p>MP Real State brinda servicios de corretaje inmobiliario, asesoría, promoción y gestión de bienes raíces. Estos términos regulan el uso de nuestra web, redes sociales y cualquier canal de atención relacionado.</p><h3><strong>2. Uso del Sitio y Servicios</strong></h3><p>El Usuario se compromete a:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Usar la información ofrecida solo con fines personales o comerciales lícitos.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>No emplear el contenido para fines fraudulentos o engañosos.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>No vulnerar derechos de propiedad intelectual o privacidad.</li></ol><h3><strong>3. Contenido y Propiedad Intelectual</strong></h3><p>Toda la información, imágenes, descripciones, logotipos, videos, marcas y contenido mostrado en nuestras plataformas son propiedad de MP Real State o de terceros autorizados. Está prohibida su reproducción sin autorización previa y por escrito.</p><h3><strong>4. Responsabilidad</strong></h3><p>MP Real State realiza esfuerzos razonables para que la información publicada sea precisa y actualizada. Sin embargo, no garantiza exactitud total ni asume responsabilidad por:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Errores u omisiones involuntarias en los anuncios.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Disponibilidad inmediata de propiedades.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Interrupciones o fallas técnicas del sitio.</li></ol><h3><strong>5. Protección de Datos Personales</strong></h3><p>El tratamiento de datos personales se rige por nuestra <a href=\"#\" rel=\"noopener noreferrer\" target=\"_blank\">Política de Privacidad</a> y se realiza conforme a la Ley 29733. Al dejar tus datos, autorizas expresamente su tratamiento para finalidades informativas, comerciales o de gestión de nuestros servicios.</p><h3><strong>6. Modificaciones</strong></h3><p>MP Real State se reserva el derecho de modificar estos Términos y Condiciones en cualquier momento. Los cambios serán publicados y entrarán en vigencia desde su publicación.</p><h3><strong>7. Legislación Aplicable</strong></h3><p>Estos términos se rigen por las leyes de la República del Perú. Cualquier controversia será resuelta por los tribunales competentes de Lima Metropolitana.</p><h3><strong>8. Contacto</strong></h3><p>Si tienes dudas o consultas, puedes escribirnos a:</p><p> <strong>informes@mprealstate.com</strong></p><p> WhatsApp: <a href=\"https://wa.link/nm8ffs\" rel=\"noopener noreferrer\" target=\"_blank\">https://wa.link/nm8ffs</a></p><p> <a href=\"http://www.mprealstate.com\" rel=\"noopener noreferrer\" target=\"_blank\">www.mprealstate.com</a></p></div>', NULL, '2025-06-09 17:01:32', '2025-07-11 20:03:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonies`
--

CREATE TABLE `testimonies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ocupation` varchar(255) DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `testimonie` text DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `testimonies`
--

INSERT INTO `testimonies` (`id`, `name`, `email`, `ocupation`, `url_image`, `testimonie`, `visible`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Alejandra Neyra', NULL, 'Inquilino', 'images/img/venturauser.png', '“La plataforma de Ventura  es a la que acudo casi a diario para buscar donde quedarme para vacaciones, o simplemente para buscar depas de mi sueño en nuevas áreas.\"', 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(2, 'Diego Martinez', NULL, 'Inquilino', 'images/img/venturauser.png', '“La plataforma de Ventura  es a la que acudo casi a diario para buscar donde quedarme para vacaciones, o simplemente para buscar depas de mi sueño en nuevas áreas.\"', 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19'),
(3, 'Manuel Gamboa', NULL, 'Inquilino', 'images/img/venturauser.png', '“La plataforma de Ventura  es a la que acudo casi a diario para buscar donde quedarme para vacaciones, o simplemente para buscar depas de mi sueño en nuevas áreas.\"', 1, 1, '2025-04-16 20:53:19', '2025-04-16 20:53:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `phone`, `verified`, `person_id`) VALUES
(1, 'Admin Mundo Web', NULL, 'hola@mundoweb.pe', NULL, '$2y$12$sKowG9ag3ccrmwR/sPbqyOZgLIIgrybKRc9wC2S.nNujnhx1oYdm6', NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-16 20:53:18', '2025-04-16 20:53:18', NULL, NULL, NULL),
(2, 'Admin Ventura', NULL, 'admin@venturabnb.pe', NULL, '$2y$12$1fDDWvSpfVkR1vSOSfIUFeTpwAquy0JwPyAGcOfez6hXxJL0Gf55G', NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-16 20:53:18', '2025-04-16 20:53:18', NULL, NULL, NULL),
(3, 'Customer Mundo Web', NULL, 'customer@mundoweb.pe', NULL, '$2y$12$fNvkoQyQ3VrDx82P7GsPUu2IJZW0N6PbtT9De7EUo1QhDNn8VEtXi', NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-16 20:53:19', '2025-04-16 20:53:19', NULL, NULL, NULL),
(4, 'Admin', NULL, 'info@mprealstate.com', NULL, '$2y$12$J09OdWGZxP8oydnWLTi9e.RAR/Wp7uFuZGSkNcLRm3AiHIUHAetYW', NULL, NULL, NULL, '4Qs9RVeUnESiAGVo9pTlamJeTUHttcR13Okv0HEvCbocI4nnYLA00i1UhNEs', NULL, NULL, '2025-06-27 21:25:28', '2025-06-27 21:25:28', NULL, NULL, NULL),
(5, 'adminexp', NULL, 'adminexp@gmail.com', NULL, '$2y$12$0qZ1kvRukJJijPUAvNSEI.g692Jsd5JlQm4SR6YV5cmlrm6wqGjfy', NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-28 07:15:27', '2025-09-28 07:15:27', NULL, NULL, NULL),
(6, 'adminxx', NULL, 'adminxx@gmail.com', NULL, '$2y$12$qodYd/JZoIFvXBX7wL9lF.RgbkwDf1MWsdmeTa1QUuBAr.5AMg8PW', NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-08 06:06:08', '2025-10-08 06:06:08', NULL, NULL, NULL),
(7, 'Administrador', NULL, 'admin@mprealstate.com', NULL, '$2y$12$GD1SB1wcxY..6dmva.Jrveon7Tlv4adOGkWTaAUv/xRdwVtq1zkoK', NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-13 17:13:04', '2026-11-13 17:13:04', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `departamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provincia_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distrito_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dir_av_calle` varchar(255) DEFAULT NULL,
  `dir_numero` varchar(255) DEFAULT NULL,
  `dir_bloq_lote` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_price_id_foreign` (`price_id`);

--
-- Indices de la tabla `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `attributes_values`
--
ALTER TABLE `attributes_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_values_attribute_id_foreign` (`attribute_id`);

--
-- Indices de la tabla `attribute_product_values`
--
ALTER TABLE `attribute_product_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_product_values_product_id_foreign` (`product_id`),
  ADD KEY `attribute_product_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_product_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `client_logos`
--
ALTER TABLE `client_logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `constants`
--
ALTER TABLE `constants`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD KEY `countries_id_index` (`id`);

--
-- Indices de la tabla `datafeeds`
--
ALTER TABLE `datafeeds`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD KEY `departments_id_index` (`id`);

--
-- Indices de la tabla `districts`
--
ALTER TABLE `districts`
  ADD KEY `districts_province_id_foreign` (`province_id`),
  ADD KEY `districts_id_index` (`id`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `extra_services`
--
ALTER TABLE `extra_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extra_services_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeries`
--
ALTER TABLE `galeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galeries_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_views`
--
ALTER TABLE `home_views`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `indices`
--
ALTER TABLE `indices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libro_reclamaciones`
--
ALTER TABLE `libro_reclamaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletter_subscribers_email_unique` (`email`);

--
-- Indices de la tabla `nosotros_views`
--
ALTER TABLE `nosotros_views`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offer_details`
--
ALTER TABLE `offer_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offer_details_offer_id_foreign` (`offer_id`),
  ADD KEY `offer_details_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`),
  ADD KEY `people_created_by_foreign` (`created_by`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `politica_datos`
--
ALTER TABLE `politica_datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `polytics_conditions`
--
ALTER TABLE `polytics_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pre_users`
--
ALTER TABLE `pre_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pre_users_person_id_foreign` (`person_id`);

--
-- Indices de la tabla `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categoria_id_foreign` (`categoria_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `products_staff_id_foreign` (`staff_id`);

--
-- Indices de la tabla `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`),
  ADD KEY `product_tag_taggable_id_taggable_type_index` (`taggable_id`,`taggable_type`);

--
-- Indices de la tabla `provinces`
--
ALTER TABLE `provinces`
  ADD KEY `provinces_department_id_foreign` (`department_id`),
  ADD KEY `provinces_id_index` (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_status_id_foreign` (`status_id`);

--
-- Indices de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_details_sale_id_foreign` (`sale_id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specifications_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strengths`
--
ALTER TABLE `strengths`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags_xproducts`
--
ALTER TABLE `tags_xproducts`
  ADD KEY `tags_xproducts_producto_id_foreign` (`producto_id`),
  ADD KEY `tags_xproducts_tag_id_foreign` (`tag_id`);

--
-- Indices de la tabla `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonies`
--
ALTER TABLE `testimonies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_person_id_foreign` (`person_id`);

--
-- Indices de la tabla `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_email_unique` (`email`),
  ADD KEY `user_details_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `attributes_values`
--
ALTER TABLE `attributes_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `attribute_product_values`
--
ALTER TABLE `attribute_product_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `client_logos`
--
ALTER TABLE `client_logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `constants`
--
ALTER TABLE `constants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datafeeds`
--
ALTER TABLE `datafeeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `extra_services`
--
ALTER TABLE `extra_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `galeries`
--
ALTER TABLE `galeries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2308;

--
-- AUTO_INCREMENT de la tabla `generals`
--
ALTER TABLE `generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `home_views`
--
ALTER TABLE `home_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `indices`
--
ALTER TABLE `indices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libro_reclamaciones`
--
ALTER TABLE `libro_reclamaciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `nosotros_views`
--
ALTER TABLE `nosotros_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `offer_details`
--
ALTER TABLE `offer_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `politica_datos`
--
ALTER TABLE `politica_datos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `polytics_conditions`
--
ALTER TABLE `polytics_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pre_users`
--
ALTER TABLE `pre_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `strengths`
--
ALTER TABLE `strengths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `testimonies`
--
ALTER TABLE `testimonies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_price_id_foreign` FOREIGN KEY (`price_id`) REFERENCES `prices` (`id`);

--
-- Filtros para la tabla `attributes_values`
--
ALTER TABLE `attributes_values`
  ADD CONSTRAINT `attributes_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`);

--
-- Filtros para la tabla `attribute_product_values`
--
ALTER TABLE `attribute_product_values`
  ADD CONSTRAINT `attribute_product_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_product_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attributes_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_product_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);

--
-- Filtros para la tabla `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `extra_services`
--
ALTER TABLE `extra_services`
  ADD CONSTRAINT `extra_services_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `galeries`
--
ALTER TABLE `galeries`
  ADD CONSTRAINT `galeries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `offer_details`
--
ALTER TABLE `offer_details`
  ADD CONSTRAINT `offer_details_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offer_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `people`
--
ALTER TABLE `people`
  ADD CONSTRAINT `people_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `pre_users`
--
ALTER TABLE `pre_users`
  ADD CONSTRAINT `pre_users_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Filtros para la tabla `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `provinces`
--
ALTER TABLE `provinces`
  ADD CONSTRAINT `provinces_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Filtros para la tabla `sale_details`
--
ALTER TABLE `sale_details`
  ADD CONSTRAINT `sale_details_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);

--
-- Filtros para la tabla `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `specifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `tags_xproducts`
--
ALTER TABLE `tags_xproducts`
  ADD CONSTRAINT `tags_xproducts_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tags_xproducts_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`);

--
-- Filtros para la tabla `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
