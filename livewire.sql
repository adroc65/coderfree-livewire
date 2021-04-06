-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2021 a las 20:21:43
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `livewire`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_24_230238_create_sessions_table', 1),
(7, '2021_03_26_015906_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Neque eum omnis qui id reiciendis saepe dolor consequatur.', 'Assumenda numquam vitae et ut sed ut. Molestiae quidem dolore autem et qui unde. Culpa illo explicabo nostrum quod asperiores fuga.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(2, 'Aut ut veritatis placeat veritatis.', 'Dolores qui id officiis sit commodi quo facilis. Est consectetur ut ratione rem ipsa autem dolores. Iure voluptatem at nisi et rerum. Delectus inventore cupiditate itaque repellat dolorum.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(3, 'Incidunt praesentium nemo aliquam voluptatem id provident ad.', 'Perspiciatis et ratione delectus possimus iste. Ea fugit nisi consequatur in quo. Et quaerat quibusdam vel dignissimos qui et nam aut.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(4, 'Inventore accusamus odit suscipit sed aut qui.', 'Est voluptas minima omnis ullam accusamus vel. Optio atque magni quaerat et provident id. Blanditiis enim atque exercitationem error odio. Laborum repudiandae est temporibus amet.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(5, 'Esse cupiditate non deleniti ea ipsum.', 'Quasi consequuntur iure enim dolorum nostrum. Eos dolor voluptatum doloribus consequuntur nobis. Nihil eaque ipsa numquam aut unde eligendi quis.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(6, 'Ipsam nesciunt voluptatem quis molestias deserunt enim in ut.', 'Numquam quaerat molestias quisquam unde eligendi. Et iste et maxime rerum explicabo omnis. Nesciunt voluptas pariatur accusantium adipisci quidem natus quis. Dolorem architecto quia eum aut.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(7, 'Dicta rem ex minus laboriosam reprehenderit consectetur qui non.', 'Accusamus velit aut perspiciatis autem quia. Et tempore et unde qui laboriosam.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(8, 'Distinctio voluptate unde quia sapiente deserunt.', 'Similique nesciunt fugit fuga et quos quis reiciendis aut. Accusamus ipsa mollitia reprehenderit dolores. Assumenda mollitia deserunt aliquid occaecati itaque.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(9, 'Iusto explicabo in cumque quaerat veniam.', 'Suscipit et ut voluptas ipsum beatae hic. Tempore excepturi laborum dolore eos provident voluptates eos. Nulla sint eum commodi dolores quo facilis recusandae.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(10, 'Nisi quo non eius quisquam aut sed ut.', 'At soluta necessitatibus unde error assumenda velit quos mollitia. Molestias inventore eaque nemo deserunt. Cupiditate optio aliquid est ducimus. Cum et ut incidunt aliquid voluptatum ea quas eius.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(11, 'Rerum nihil ducimus et cum consequatur cumque et.', 'Eum fuga sed omnis accusamus fugiat dicta. Beatae incidunt eum eos deserunt ut eveniet. Quae explicabo eligendi quisquam voluptas veniam illo eum. Harum sit quaerat voluptate fugit rem quidem aut.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(12, 'Praesentium commodi optio minima eum illo amet.', 'Rem voluptas distinctio repellat voluptatem amet animi et ipsam. Ipsam aut quisquam pariatur sit ducimus eos laboriosam.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(13, 'Officiis odit veniam dolorem est illo.', 'Placeat eos repellat iure ut odit. Aut consequuntur sit consequuntur non iure. Suscipit ipsam recusandae fuga aliquam. Aspernatur soluta sed neque ducimus rem consequuntur laborum.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(14, 'Deserunt iste vel numquam illum.', 'Sed incidunt temporibus voluptates ullam eos qui in. Quos molestias incidunt illo tempore nobis iusto sapiente. Laudantium consequuntur aperiam reiciendis minus.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(15, 'Voluptatem qui omnis quibusdam ducimus culpa fugit eos.', 'Natus rem est molestiae consequatur pariatur ut numquam. Est quae maxime occaecati voluptatibus in et. Debitis dolorem et est pariatur.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(16, 'Molestiae qui alias vel accusantium quaerat.', 'Velit est fuga a temporibus in itaque. Soluta consequatur reiciendis voluptatem quis odit facilis. Enim excepturi tempore repellat explicabo.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(17, 'Quibusdam nesciunt et voluptate aut impedit totam.', 'Aut alias nihil facere nostrum et libero. Aspernatur qui qui dolorum id quisquam officia. Fuga molestiae facilis aspernatur maxime qui nesciunt. Doloremque corporis at aut in eaque ullam nostrum.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(18, 'Dolores et voluptas a non atque.', 'Est atque laboriosam ratione possimus expedita pariatur. Et voluptates est consectetur eligendi.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(19, 'Corporis dignissimos magni animi porro reprehenderit.', 'Possimus ut animi dolor. Natus recusandae consequatur omnis expedita sunt veniam.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(20, 'Nemo odit dolorem commodi nam voluptas.', 'Labore quam modi veritatis et. Explicabo exercitationem repellat praesentium qui. Esse maxime ut vero dicta. Nisi rerum et et inventore.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(21, 'Possimus est minima aspernatur et excepturi voluptates.', 'Ab veritatis et minus occaecati. Dolorum accusantium at illum consequatur sunt ut et. Ut aut culpa aut impedit et. Quidem repellendus quia commodi cumque.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(22, 'Quaerat et autem voluptates nesciunt sit.', 'Eos omnis et recusandae necessitatibus consectetur aliquid. Dolores odit quod rerum repellat. Dolor unde quisquam explicabo at aut fugiat. Dolores eius sed repudiandae nisi.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(23, 'Ut in sed deleniti.', 'Vel quae iusto cupiditate est. Deleniti ipsum rem eaque distinctio. Perferendis eum neque inventore accusamus quidem.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(24, 'Dolore officia qui est culpa ex laboriosam.', 'Beatae consequatur dolorem non quibusdam et non doloribus. Autem eius voluptas omnis expedita et est ad. Provident aspernatur debitis voluptatem eum.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(25, 'Quod sed debitis nemo consequuntur deleniti iste.', 'Nisi et inventore beatae consectetur odit aspernatur. Et odio vel laborum quod id odit. Eos fuga quam quidem.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(26, 'Repudiandae blanditiis quos magnam esse ea molestiae iste suscipit.', 'Fugiat autem animi inventore voluptatum saepe. Facere vero in sint quas exercitationem. Qui officiis vitae voluptatem quo. Eos consequatur qui rem ipsam deleniti tempore.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(27, 'Atque sunt in aut ex culpa.', 'Totam dolor voluptatibus qui sit fugiat nihil. Molestiae animi ea amet beatae autem. Aut voluptas reprehenderit maiores ut. Veniam magnam dolorum inventore id.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(28, 'Nesciunt ut suscipit earum reprehenderit accusamus rerum unde et.', 'Quo odio a hic consequatur hic. Minus a aliquid nam maxime cum animi quis. Deleniti sit iure enim sequi. Perferendis beatae nulla voluptas veniam incidunt aperiam illum.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(29, 'Iste mollitia in architecto et.', 'Soluta aperiam et fuga. Architecto voluptas voluptas odio accusantium beatae reiciendis ut. Quae praesentium aut provident qui consequuntur eligendi.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(30, 'Incidunt commodi ut vel officiis dolorem.', 'Et aut et recusandae dicta provident nobis. Velit facere ut tenetur in nam. Aut dicta provident adipisci ipsum eligendi ut.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(31, 'Ducimus delectus sequi velit odio incidunt.', 'Laboriosam aut quia nostrum eos. Praesentium maiores et error architecto. Commodi nam dolorem ut voluptatem et. Excepturi adipisci ullam accusantium rerum laudantium.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(32, 'Ad a tenetur voluptas molestiae nulla in.', 'Sunt sed nam non est. Ex ducimus doloribus neque quisquam recusandae maxime. Atque dignissimos magni in facilis velit.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(33, 'Repellendus quibusdam rerum adipisci ex dolore et.', 'Harum ipsa quia culpa officia et rem magni. Vel eius nam rerum est corrupti blanditiis. Veniam qui optio nisi dolor. Rerum accusamus minima sunt debitis est dolor. Rerum totam consequuntur aperiam.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(34, 'Rem qui alias explicabo voluptate expedita deleniti.', 'Perferendis ut rem blanditiis voluptatem. Architecto laboriosam dolorum eveniet veniam rerum ut enim. Commodi quia ad hic aperiam.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(35, 'Non officiis qui labore mollitia ex qui.', 'Fugiat omnis voluptas temporibus magnam. Id quis doloribus similique odit. Non earum aut eum repellat sit ut ipsa et. Nostrum inventore velit consequatur a suscipit voluptas ratione.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(36, 'Mollitia est ut nobis laborum.', 'A temporibus totam et velit officia sunt. Et possimus dolorem ut quis est. Aliquam dolor est qui. Nihil delectus reprehenderit delectus amet qui mollitia quibusdam.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(37, 'Et officia molestiae quidem ducimus et incidunt labore.', 'Facere voluptatem a aperiam. Numquam provident quam harum. Dolorum quia incidunt molestiae neque sapiente.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(38, 'Eos est et quia dolores praesentium.', 'Eos qui beatae pariatur. Voluptate harum ducimus culpa voluptas illo qui. Ut nisi voluptatem sunt sequi a non eveniet architecto. Eveniet quae aspernatur quos neque voluptatem soluta.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(39, 'Nam quo ea et.', 'Suscipit aut veniam consequatur nostrum aliquam aut itaque. Vero ullam quis ab accusamus natus qui recusandae. Placeat voluptatem fugit ut est qui.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(40, 'Dolor dicta quasi nostrum dolor consequuntur et quas quam.', 'Omnis ut ipsa beatae qui. Error aperiam omnis at exercitationem error dolor nihil. Dolor ex iste fugit sit laudantium at et quis. Maiores quis eos eaque quam fugiat pariatur sed iusto.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(41, 'Odio vel autem eius et eligendi.', 'Quis ut veritatis natus. Fugit et culpa magni ut aut voluptatem pariatur. Molestiae vel est est. Dolor veritatis aut ut voluptate earum autem amet vitae.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(42, 'Harum omnis quasi voluptatem dolorum dicta ea et.', 'A velit dolores qui. Laudantium dolore qui aut. Quidem provident nam sit at voluptatem dolor pariatur. Nihil soluta enim modi ducimus.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(43, 'Sunt fugit ipsam iure officiis qui cupiditate sed.', 'Id ad necessitatibus provident nulla maxime aut omnis. Expedita est iure ex ut minus consequatur ducimus. Id eligendi autem et non eum quae. Expedita consequuntur recusandae quo est sit.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(44, 'Harum non ex vel blanditiis rerum labore.', 'Quisquam molestiae velit odit. Aliquid eos doloremque magni consequatur.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(45, 'Est sed quia perspiciatis aut ducimus excepturi et.', 'Molestiae eveniet voluptatum expedita culpa exercitationem quibusdam. Non quibusdam maiores mollitia voluptas eos.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(46, 'Illum voluptatem saepe iure illo.', 'Dolorum quam nihil tempora quos magnam. Nemo non et tempora distinctio. Sapiente velit quam et harum voluptates. Inventore saepe ipsa voluptate et sint id illum.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(47, 'Dolorem eius quas et inventore quibusdam.', 'Maiores qui in autem qui nemo sit. Error odio eum qui.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(48, 'Aspernatur aperiam dolorem id sed sed.', 'Voluptates aut qui temporibus dolor accusamus. Cupiditate accusamus nam ut enim accusantium. Sequi vel rerum voluptatem omnis quibusdam natus sunt sed.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(49, 'Aperiam et non ullam aut.', 'Nihil laborum ea a nisi est accusantium officia doloremque. Iste nesciunt veniam sint magni et modi quo. Aut dicta libero quaerat ut voluptatem.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(50, 'Sit nostrum ut omnis quis animi.', 'Voluptatum praesentium aliquam placeat sapiente sit soluta dolorem quam. Nisi sint repudiandae commodi consequatur natus et et. Sed voluptatem et in voluptatem debitis aliquid quis.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(51, 'Omnis consequuntur architecto beatae impedit quia aliquam.', 'Enim sed in ut non ratione ea et eveniet. Aut autem eum itaque eligendi et laudantium aut. Eveniet consequatur libero in qui omnis facilis. Quia minus velit accusantium ipsa.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(52, 'Sequi qui nobis et laborum laboriosam.', 'Ab eum quasi non ipsum. Velit et velit aperiam id. Quidem reprehenderit aut deleniti qui eum laborum. Ad rerum magnam voluptatum blanditiis hic quo. Quasi velit voluptatum aperiam earum optio.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(53, 'Qui laudantium officiis culpa quas esse non.', 'Modi tenetur neque deleniti consequuntur in doloribus et. Temporibus odit fugit nesciunt nesciunt sit incidunt. Molestiae rerum rerum nihil dignissimos incidunt rerum.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(54, 'Laborum eveniet sit et aut.', 'Laboriosam expedita quo sequi quis nihil architecto. Animi et sit laudantium et expedita sit rerum. Sit est omnis reprehenderit nesciunt sit dolores.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(55, 'Fugit voluptates tempore quasi voluptatem.', 'Qui recusandae et in voluptatum. Vel asperiores eos cupiditate ut sunt dolorem. Nesciunt sint nostrum accusantium.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(56, 'Autem possimus similique et.', 'Quo provident et quibusdam porro rerum ipsa fugit. At dolores totam illum doloribus velit eaque. A qui in necessitatibus velit ex.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(57, 'Repellendus tempora distinctio et qui facere.', 'Consequuntur fugiat laboriosam dolorum vitae. Aliquid ipsa labore commodi et ipsa unde vitae sunt. Fugit quo repudiandae modi a.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(58, 'Quae quidem non ut.', 'Impedit sit ea et excepturi et natus animi. Ex qui nobis enim blanditiis in. Iusto maxime quod alias optio laborum. Perspiciatis dolorem quia nulla quo aspernatur possimus.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(59, 'Sapiente excepturi illo quia consequatur quis animi porro.', 'In veritatis assumenda occaecati sit qui quia laudantium. Ut temporibus aut officiis consequatur. Corporis fugit non et sit ea ut occaecati cupiditate.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(60, 'Dolor quis unde dolore ea inventore et.', 'Dolorum dolore ipsam autem blanditiis enim nesciunt. Laborum est repudiandae inventore aut aliquid magni quia. Et voluptate ut dignissimos hic eveniet praesentium.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(61, 'Est unde quaerat ut nulla eaque.', 'Sunt et nulla accusamus quam. Adipisci odio iure debitis rerum nobis. Ducimus deserunt ad sit laborum asperiores ipsum sed. Hic et ut ut reiciendis. Ut corporis nobis ea. Enim et voluptas quaerat.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(62, 'In pariatur quae eum aliquam sit.', 'Ab molestias sit eligendi beatae consequatur eum. Illo et iusto animi aperiam deserunt nam. Quo et distinctio velit praesentium sunt quasi.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(63, 'Et omnis voluptatem omnis.', 'In animi illo unde rerum quas dolores voluptates. Itaque quia voluptatem nesciunt. Consequuntur quasi nesciunt sapiente sint reiciendis totam.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(64, 'Sed et sunt facere maiores corrupti.', 'Omnis dicta est voluptates ea. Sed rerum culpa minus enim. Occaecati assumenda qui laborum. Totam amet voluptas velit modi ratione dicta.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(65, 'At occaecati sint commodi qui quia placeat enim.', 'Qui doloremque at quibusdam nostrum. Rem dolores repudiandae accusantium libero. Commodi at et ipsum explicabo distinctio non ducimus.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(66, 'Sit ea velit rerum odio.', 'Sed similique iusto eaque quibusdam nemo expedita numquam. Quia velit porro explicabo. Ut ut voluptatem quia aliquam corrupti nihil.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(67, 'Ratione placeat optio illum consequatur dolorum.', 'Ut aut quaerat vero. Minus velit culpa cupiditate. Voluptatem nesciunt odio ad.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(68, 'Ut autem doloribus sit sed rerum est.', 'Quam eveniet blanditiis quisquam tempora placeat ut itaque. Non blanditiis accusantium numquam et quibusdam. Officiis facere consequuntur enim enim et.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(69, 'Voluptatibus eos exercitationem ducimus sed placeat.', 'Dolores rerum omnis omnis fugiat. Nulla quia sunt voluptatibus nisi. Ipsa repellendus tenetur dignissimos.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(70, 'Asperiores atque recusandae dicta doloremque nulla necessitatibus dolor nemo.', 'Eaque corporis ratione laborum ut et dolores ut. Labore et velit perspiciatis est libero. Neque debitis dicta veniam laborum. Corporis sit enim fugiat excepturi repudiandae.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(71, 'Quod quisquam maxime beatae consequatur vitae voluptatem non.', 'Et voluptas ut qui reiciendis. Quasi impedit a error asperiores qui suscipit dignissimos. Sed amet temporibus eveniet. Dicta maxime dolorem ipsam corporis.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(72, 'Sed quas consequatur qui qui ipsam praesentium recusandae.', 'Omnis et voluptatem maiores eum. Perspiciatis rem culpa placeat corrupti quasi nam. Nemo in expedita reprehenderit tempora. Voluptas quas et fuga porro alias aspernatur repellat et.', '2021-03-26 08:17:37', '2021-03-26 08:17:37'),
(73, 'Soluta sunt nisi in et voluptas quo sit.', 'Velit dignissimos eum odio. Excepturi non culpa labore doloribus aperiam est. Commodi magni laboriosam ducimus voluptatum.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(74, 'Ut repellendus et hic laborum et voluptates ipsam occaecati.', 'Quis nobis itaque aut excepturi inventore. Odio quidem laudantium neque velit atque incidunt.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(75, 'Fuga enim harum et nihil eaque blanditiis atque.', 'Tempore quis libero libero aut. Asperiores omnis et voluptatem consequatur at. Expedita adipisci rerum praesentium hic modi ullam eaque. Molestiae exercitationem non nulla itaque quasi omnis rerum.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(76, 'Sint rerum aut voluptatum.', 'Magni occaecati id aut cum nesciunt. Consequatur praesentium ut qui. Ut perferendis alias corrupti minima et ut. Blanditiis ab dicta corrupti. Quaerat consequatur qui sit vel ut.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(77, 'Et voluptas ea consequuntur magnam.', 'Officiis magni voluptatem eos provident. Aspernatur omnis necessitatibus id quia. Et quia omnis dolores quo eum vero.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(78, 'Odit et beatae omnis possimus quod quos.', 'Recusandae quae modi ea consequatur ipsam. Voluptas quo ut molestiae autem et ea. Mollitia velit sint dolores velit. Earum aspernatur eius dolore cupiditate quasi qui iure.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(79, 'Itaque sint necessitatibus fugiat labore sed velit mollitia.', 'Eum exercitationem incidunt exercitationem adipisci distinctio cumque. Sint voluptates praesentium minus alias explicabo facere repellat. Rerum qui non provident dicta nisi eum.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(80, 'Sed illum rem non.', 'Molestias asperiores accusantium cum tenetur nam ex. Eaque sapiente quos sed atque consequatur debitis. Aut maiores sit animi molestias sed et.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(81, 'Beatae beatae totam natus vel distinctio itaque.', 'Enim nostrum quis hic cum voluptas qui in vel. Similique vel eum dignissimos occaecati. Rem veritatis quidem fugiat. Eos aut quae enim omnis. Voluptatem cumque qui dolorem eius ipsam est.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(82, 'Aspernatur ut et odio.', 'Ea totam est rem ut eligendi voluptas. Qui sit voluptas vero dignissimos eos. Ut vitae qui numquam ut quia velit. Fuga consequatur nemo id rem provident quisquam.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(83, 'Distinctio velit vero nihil aut dolor fugiat ipsam.', 'Sed qui quam harum sit. Dolorum quia repellendus numquam sunt corrupti. Est est adipisci recusandae. Fuga quam ut atque ullam sint.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(84, 'Repellendus error quo saepe et.', 'Aut ad deserunt quo asperiores illum et expedita. Temporibus sed dignissimos ab ut. Numquam nobis quia nam quod temporibus. Tenetur omnis perspiciatis eius vel debitis in et.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(85, 'Molestias magni ullam ut ratione ex qui suscipit ut.', 'Tempora quo maxime dolorem non. Cum iusto nesciunt ut assumenda qui. Laboriosam aperiam aliquid aut facere aspernatur quae occaecati.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(86, 'Autem quisquam possimus ullam.', 'Animi ut dolore totam voluptas. Quia vel possimus est modi totam ducimus rem. Delectus est maxime facilis alias rerum quod.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(87, 'Quia voluptates ipsum et eum in tenetur et.', 'Accusantium ut atque est quas. Ea in corporis aliquid et eligendi. Quisquam impedit eius optio voluptatem.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(88, 'Voluptate et rerum et officia assumenda.', 'Quia repudiandae qui sed nihil assumenda. Ad corrupti architecto quibusdam. In ea eos ut dolor consequatur modi.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(89, 'Id labore similique suscipit quisquam.', 'Atque quis adipisci iusto voluptatem voluptatibus cumque. Tempore veniam tempora dignissimos. Ut reprehenderit a rerum odit omnis fugit ipsam.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(90, 'Ab explicabo quod quod dolor.', 'Pariatur magnam vero et sed nam dolores et debitis. Libero in corporis sit est nihil. Natus et nemo deserunt nesciunt nostrum. Blanditiis corporis consequatur eius et.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(91, 'Cum atque aut omnis sapiente est.', 'Autem molestiae sit animi quia id doloremque. Consectetur et et mollitia exercitationem vel et nobis. Assumenda quo accusantium dolore unde sequi quisquam. Sed et voluptatem quasi.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(92, 'Quidem et maiores vitae perferendis sequi rem atque.', 'Non expedita fuga aut suscipit vitae dolorem. Aperiam sit et quisquam in velit repudiandae. Officia temporibus perferendis similique illo officia.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(93, 'Commodi quod non dolorem consectetur dolorem.', 'Earum ea autem blanditiis id dolores. Numquam quisquam ut dolore fugiat modi ipsa aspernatur. Dolores dolor in id quo esse.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(94, 'Culpa voluptatibus modi porro vitae tempore perferendis quia.', 'Ipsa laudantium ut nulla occaecati. Architecto quia et numquam consequatur a ipsum.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(95, 'Error dolores porro quibusdam esse.', 'Corporis vel incidunt sapiente at at accusantium. Mollitia quam nesciunt eum aut nesciunt repellendus dolorum itaque. Debitis corporis omnis eius. Distinctio est autem minus qui numquam.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(96, 'Nulla velit autem non qui et omnis.', 'Consequatur rerum rerum perferendis. Inventore ut commodi quibusdam iure pariatur rerum eius eveniet. Dolor perferendis dolores neque. Aut quas expedita possimus earum assumenda.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(97, 'Voluptatum qui eligendi fugit qui quas.', 'Earum reprehenderit quo blanditiis quia. Quia cupiditate illo non optio. Ut at iste rerum odit asperiores eum repellendus.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(98, 'Fuga aspernatur dolor ut beatae ut at nostrum repellat.', 'Voluptatem et non ipsa occaecati exercitationem. Excepturi id explicabo voluptatem natus id doloribus quidem. Eligendi iure et explicabo rerum.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(99, 'Eos fugit et dolore ut est sit et.', 'Assumenda labore sapiente voluptatibus est doloremque. Sequi et voluptatum corporis minus qui quia est.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(100, 'Neque nam saepe porro et ex porro voluptatem.', 'Ut officia quo recusandae unde et. Est repudiandae incidunt ut fugit. Impedit beatae quibusdam aperiam et odit molestiae.', '2021-03-26 08:17:38', '2021-03-26 08:17:38'),
(101, 'Reporte de tiempo, lunes 5', 'Reportar el tiempo, temas de Caja de ande revisión de replicas', '2021-04-06 09:30:47', '2021-04-06 09:30:47'),
(102, 'para mañana debo de :', '- Cortarme el Pelo\n- Cortar tabla para repisa de 20cm\n- Hacer los huecos para tarugos para la repisa flotante.', '2021-04-06 09:41:21', '2021-04-06 09:41:21'),
(103, 'para mañana debo de :', '- Cortarme el Pelo\n- Cortar tabla para repisa de 20cm\n- Hacer los huecos para tarugos para la repisa flotante.', '2021-04-06 09:41:34', '2021-04-06 09:41:34'),
(104, 'para mañana debo de :', '- Cortarme el Pelo\n- Cortar tabla para repisa de 20cm\n- Hacer los huecos para tarugos para la repisa flotante.', '2021-04-06 09:41:35', '2021-04-06 09:41:35'),
(105, 'El viernes 24 Caja de Ande', 'Pase de Alajuela a San José en la madrugada', '2021-04-06 09:43:01', '2021-04-06 09:43:01'),
(106, 'El jueves 23 Caja de Ande', 'reunión previa al pase del viernes', '2021-04-06 09:43:47', '2021-04-06 09:43:47'),
(107, 'Cambio de Batería en CdA', 'La HMC1 de SJO se le debe de cambiar la batería de reloj.', '2021-04-06 09:49:27', '2021-04-06 09:49:27'),
(108, 'Recordar asociar artículos de conocimiento', 'Al mes de Marzo voy con el 50% de artículos asociados, debo de tener más de 90%', '2021-04-06 10:15:17', '2021-04-06 10:15:17'),
(109, 'Refrescar navegador', 'Cada vez que se haga un cambio en la programacion se debe de refrescar el navegador', '2021-04-06 10:16:15', '2021-04-06 10:16:15'),
(110, 'Emitir eventos', 'Se pueden emitir a SCRIPTS o componentes por igual con la función \"emit\", se se desea emitir solo a un componente en particular se usa la función \"emitTo\"', '2021-04-06 10:25:29', '2021-04-06 10:25:29'),
(111, 'Reglas de validacion en linea,', 'Se esta verificando que envie el mensaje de error si no se alcanzan al menos los 80 caracteres, al teclear.', '2021-04-06 11:30:21', '2021-04-06 11:30:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zQt9W2AWUVDzyHXqT1qfR915mCJFjU5PBBtsrgJs', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoibFhOdHBpY0gyS3Bma0plVWtIM2VFb0xWMnQyOHFxbnRyV0tWN1VYaCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vbGl2ZXdpcmUudGVzdC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkeGExVEg2N01OYkdSbXNiQkJnN1RNZWNCNG5nMnpKeS9KdXJ0M1FMQ0dLZFdKWHlzYTBYRjIiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHhhMVRINjdNTmJHUm1zYkJCZzdUTWVjQjRuZzJ6SnkvSnVydDNRTENHS2RXSlh5c2EwWEYyIjt9', 1617687021);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Adrian Omodeo Ch', 'adroc65@outlook.es', NULL, '$2y$10$xa1TH67MNbGRmsbBBg7TMecB4ng2zJy/Jurt3QLCGKdWJXysa0XF2', NULL, NULL, NULL, NULL, NULL, '2021-03-26 08:31:35', '2021-03-26 08:31:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
