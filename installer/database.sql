-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2021 at 02:33 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `businesso_1.0_installer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `username`, `email`, `first_name`, `last_name`, `image`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin@example.com', 'Johny', 'Barristow', '5f5797dbc520b.png', '$2y$10$UmZ3nP0JIUOI0CxLG/175efcigYJDbfg45Ga4cYz/YdZOshZ0GPMm', 1, NULL, '2020-09-08 08:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `basic_extendeds`
--

CREATE TABLE `basic_extendeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `cookie_alert_status` tinyint(4) NOT NULL DEFAULT 1,
  `cookie_alert_text` blob DEFAULT NULL,
  `cookie_alert_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_language_direction` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `from_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(4) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_symbol` blob DEFAULT NULL,
  `base_currency_symbol_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_text_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT 0.00,
  `hero_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_text` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_addresses` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_numbers` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_mails` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT 1,
  `whatsapp_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_header_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_popup_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_popup` tinyint(4) NOT NULL DEFAULT 1,
  `domain_request_success_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cname_record_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cname_record_section_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_reminder` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_extendeds`
--

INSERT INTO `basic_extendeds` (`id`, `language_id`, `cookie_alert_status`, `cookie_alert_text`, `cookie_alert_button_text`, `to_mail`, `default_language_direction`, `from_mail`, `from_name`, `is_smtp`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `hero_section_title`, `hero_section_text`, `hero_section_button_text`, `hero_section_button_url`, `hero_section_video_url`, `hero_img`, `timezone`, `contact_addresses`, `contact_numbers`, `contact_mails`, `is_whatsapp`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_message`, `whatsapp_popup`, `domain_request_success_message`, `cname_record_section_title`, `cname_record_section_text`, `package_features`, `expiration_reminder`) VALUES
(147, 176, 1, 0x596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e, 'Allow Cookies', 'do-not-reply@example.com', 'ltr', 'admin@kreativdev.com', 'Businesso', 1, 'az1-ts2.a2hosting.com', '587', 'TLS', 'admin@kreativdev.com', 'ZAOP!~rSk~gb', 0x24, 'left', 'USD', 'right', '1.00', 'Our Platform, Your Success', 'Minimize the time, it takes to initiate a relationship between you and the customer.', 'Explore Plans', 'http://example.com/', 'https://www.youtube.com/watch?v=6KJqEPVfoDs', '6195e9abdafa7.png', 'America/Maceio', 'House - 44, Road - 03, Sector - 11, Uttara, Dhaka\r\nDhanmondi, Dhaka\r\nMohammadpur, Dhaka', '237237237,72372332', 'contact@example.com,support@example.com,query@example.com', 1, NULL, NULL, NULL, 1, 'We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.', 'Read Before Sending Custom Domain Request', '<ul><li><font color=\"#575962\"><span style=\"font-weight:600;\"> Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).</span></font></li><li><font color=\"#575962\"><span style=\"font-weight:600;\"> CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain</span></font></li><li><font color=\"#575962\"><span style=\"font-weight:600;\"> Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain</span></font></li></ul>', '[\"Custom Domain\",\"Subdomain\",\"vCard\",\"QR Builder\",\"Follow\\/Unfollow\",\"Request a Quote\",\"Blog\",\"Portfolio\",\"Custom Page\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Career\",\"Team\"]', 3),
(148, 177, 1, 0xd8b3d98ad8aad98520d8aad8add8b3d98ad98620d8aad8acd8b1d8a8d8aad98320d8b9d984d98920d987d8b0d8a720d8a7d984d985d988d982d8b920d985d98620d8aed984d8a7d98420d8a7d984d8b3d985d8a7d8ad20d8a8d985d984d981d8a7d8aa20d8aad8b9d8b1d98ad98120d8a7d984d8a7d8b1d8aad8a8d8a7d8b7, 'السماح للكوكيز', 'do-not-reply@example.com', 'ltr', 'admin@kreativdev.com', 'Businesso', 1, 'az1-ts2.a2hosting.com', '587', 'TLS', 'admin@kreativdev.com', 'ZAOP!~rSk~gb', 0x24, 'left', 'USD', 'right', '1.00', 'منصتنا ، نجاحك', 'قلل الوقت الذي تستغرقه لبدء علاقة بينك وبين العميل.', 'اكتشف الخطط', 'http://example.com/', 'https://www.youtube.com/watch?v=6KJqEPVfoDs', '6195e9b18c05a.png', 'America/Maceio', 'منزل - 44 ، طريق - 03 ، قطاع - 11 ، أوتارا ، دكا\r\nدهانوندي ، دكا\r\nمحمدبور ، دكا', '237237237,72372332', 'contact@example.com,support@example.com,query@example.com', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '[\"Custom Domain\",\"Subdomain\",\"vCard\",\"QR Builder\",\"Follow\\/Unfollow\",\"Request a Quote\",\"Blog\",\"Portfolio\",\"Custom Page\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Career\",\"Team\"]', 3);

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader_status` tinyint(4) NOT NULL DEFAULT 1,
  `preloader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` blob DEFAULT NULL,
  `intro_subtitle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_info_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_to_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_recaptcha` tinyint(4) NOT NULL DEFAULT 0,
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawkto` tinyint(4) NOT NULL DEFAULT 1,
  `tawkto_property_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 1,
  `is_user_disqus` tinyint(4) NOT NULL DEFAULT 1,
  `disqus_shortname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disqus_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_mode` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - active, 0 - deactive',
  `maintainance_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_status` tinyint(4) NOT NULL DEFAULT 0,
  `secret_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section` tinyint(4) NOT NULL DEFAULT 1,
  `process_section` tinyint(4) NOT NULL DEFAULT 1,
  `featured_users_section` tinyint(4) NOT NULL DEFAULT 1,
  `pricing_section` tinyint(4) NOT NULL DEFAULT 1,
  `partners_section` tinyint(4) NOT NULL DEFAULT 1,
  `intro_section` tinyint(4) NOT NULL DEFAULT 1,
  `testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `feature_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_process_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_process_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_users_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_users_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_section` tinyint(4) NOT NULL DEFAULT 1,
  `top_footer_section` tinyint(4) NOT NULL DEFAULT 1,
  `copyright_section` tinyint(4) NOT NULL DEFAULT 1,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useful_links_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT 1,
  `whatsapp_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_header_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_popup_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_popup` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `language_id`, `favicon`, `logo`, `preloader_status`, `preloader`, `website_title`, `base_color`, `breadcrumb`, `footer_logo`, `footer_text`, `newsletter_text`, `copyright_text`, `intro_subtitle`, `intro_title`, `intro_text`, `intro_main_image`, `contact_form_title`, `contact_text`, `contact_info_title`, `tawk_to_script`, `is_recaptcha`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_tawkto`, `tawkto_property_id`, `is_disqus`, `is_user_disqus`, `disqus_shortname`, `disqus_script`, `maintainance_mode`, `maintainance_text`, `maintenance_img`, `maintenance_status`, `secret_path`, `feature_section`, `process_section`, `featured_users_section`, `pricing_section`, `partners_section`, `intro_section`, `testimonial_section`, `feature_title`, `work_process_title`, `work_process_subtitle`, `featured_users_title`, `featured_users_subtitle`, `pricing_title`, `pricing_subtitle`, `testimonial_title`, `testimonial_subtitle`, `news_section`, `top_footer_section`, `copyright_section`, `blog_title`, `blog_subtitle`, `useful_links_title`, `newsletter_title`, `newsletter_subtitle`, `is_whatsapp`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_message`, `whatsapp_popup`) VALUES
(153, 176, '60f55ab7169e1.jpg', '619f8fe2d28ae.png', 1, '619f909c67793.png', 'Businesso', 'FF6B6B', '60ea8dcf724d7.jpg', '619f8fed9ba13.png', 'We are a awward winning multinaitonal Company. We Believe quality and standard worlwidex Consider.', 'Subscribe to gate Latest News, Offer and connect With Us.', 0x436f7079726967687420c2a920323032312e20416c6c2072696768747320726573657276656420627920427573696e6573736f2e, 'We beilieve in Customer Trust', 'About US', 'Donec scelerisque dolor id nunc dictum, interdum gravida mauris rhoncus. Aliquam at ultrices nunc. In sem leo, fermentum at lorem in, porta finibus mauris. Aliquam consectetur, ex in gravida porttitor,\r\nDonec scelerisque dolor id nunc dictum, interdum gravida mauris rhoncus. Aliquam at ultrices nunc. In sem leo, fermentum at lorem in, porta finibus mauris. Aliquam consectetur, ex in gravida porttitor,', '6195e99bbff6b.png', 'Leave Reply', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum.', 'CONTACT INFO', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0, '6Lf9jOQUAAAAABJKj_nQBNvji7wh4DdOZIPAdRKk', '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', 0, '60b886bbde99a4282a1b22a3', 1, 1, 'plusagency-2-5', '<script>\r\n\r\n/**\r\n*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n/*\r\nvar disqus_config = function () {\r\nthis.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\nthis.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n};\r\n*/\r\n(function() { // DON\'T EDIT BELOW THIS LINE\r\nvar d = document, s = d.createElement(\'script\');\r\ns.src = \'https://plusagency.disqus.com/embed.js\';\r\ns.setAttribute(\'data-timestamp\', +new Date());\r\n(d.head || d.body).appendChild(s);\r\n})();\r\n</script>', 0, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you....', '60f109af58110.png', 0, NULL, 1, 1, 1, 1, 1, 1, 1, 'Features', 'Work Process', 'How It Works', 'Featured Businesses', 'Take a look at the featured businesses', 'Pricing', 'Choose Your Perfect Package', 'Testimonials', 'What Our Cliets Say', 1, 1, 1, 'Blogs', 'Our Latest Blogs', 'Useful Links', 'Newsletter', 'Get latest updates first', 1, '2367327069', 'Hi, There!', 'How can I help you?\r\ngreat', 1),
(154, 177, '60f55ab7169e1.jpg', '619f8fe2d28ae.png', 1, '619f909c67793.png', 'Businesso', 'FF6B6B', '60ea8dcf724d7.jpg', '619f8fffba64b.png', 'نحن شركة متعددة الأطراف فائزة بشكل كبير. نحن نؤمن بالجودة والمعايير التي نأخذها بعين الاعتبار.', 'Subscribe to gate Latest News, Offer and connect With Us.', 0xd8acd985d98ad8b920d8a7d984d8add982d988d98220d985d8add981d988d8b8d8a920c2a920323032312e, 'قصتنا', 'لدينا 20 عاما من الخبرة العملية في مقهى.', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام', '6195e994095b0.png', 'اترك الرد', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل', 'معلومات الاتصال', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0, '6Lf9jOQUAAAAABJKj_nQBNvji7wh4DdOZIPAdRKk', '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', 0, '60b886bbde99a4282a1b22a3', 1, 1, 'plusagency-2-5', '<script>\r\n\r\n/**\r\n*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n/*\r\nvar disqus_config = function () {\r\nthis.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\nthis.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n};\r\n*/\r\n(function() { // DON\'T EDIT BELOW THIS LINE\r\nvar d = document, s = d.createElement(\'script\');\r\ns.src = \'https://plusagency.disqus.com/embed.js\';\r\ns.setAttribute(\'data-timestamp\', +new Date());\r\n(d.head || d.body).appendChild(s);\r\n})();\r\n</script>', 0, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you....', NULL, 0, NULL, 1, 1, 1, 1, 1, 1, 1, 'متميز', 'آلية العمل', 'آلية العمل', 'مستخدم مميز', 'مستخدم مميز', 'التسعير', 'التسعير', 'شهادة', 'شهادة', 1, 1, 1, '', NULL, 'روابط مفيدة', 'النشرة الإخبارية', 'احصل على آخر التحديثات أولاً', 1, '2367327069', 'Hi, There!', 'How can I help you?\r\ngreat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `slug`, `status`, `serial_number`) VALUES
(13, 176, 'International', NULL, 1, 1),
(14, 176, 'Tech', NULL, 1, 2),
(15, 176, 'Miscellaneous', NULL, 1, 3),
(16, 176, 'Lifestyle', NULL, 1, 4),
(17, 177, 'دولي', NULL, 1, 1),
(18, 177, 'تقنية', NULL, 1, 2),
(19, 177, 'متفرقات', NULL, 1, 3),
(20, 177, 'أسلوب الحياة', NULL, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `main_image`, `content`, `tags`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(86, 176, 13, 'It has survived not only five centuries', 'it-has-survived-not-only-five-centuries', '1637216440.png', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b666f6e742d73697a653a313470783b223e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e2044756973206175746520697275726520646f6c6f7220696e20726570726568656e646572697420696e20766f6c7570746174652076656c697420657373652063696c6c756d20646f6c6f726520657520667567696174206e756c6c612070617269617475722e204578636570746575722073696e74206f6363616563617420637570696461746174206e6f6e2070726f6964656e742c2073756e7420696e2063756c706120717569206f666669636961206465736572756e74206d6f6c6c697420616e696d20696420657374206c61626f72756d3c2f7370616e3e3c2f703e3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b666f6e742d73697a653a313470783b223e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742c2073656420646f20656975736d6f642074656d706f7220696e6369646964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c697175612e20557420656e696d206164206d696e696d2076656e69616d2c2071756973206e6f737472756420657865726369746174696f6e20756c6c616d636f206c61626f726973206e69736920757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e2044756973206175746520697275726520646f6c6f7220696e20726570726568656e646572697420696e20766f6c7570746174652076656c697420657373652063696c6c756d20646f6c6f726520657520667567696174206e756c6c612070617269617475722e204578636570746575722073696e74206f6363616563617420637570696461746174206e6f6e2070726f6964656e742c2073756e7420696e2063756c706120717569206f666669636961206465736572756e74206d6f6c6c697420616e696d20696420657374206c61626f72756d3c2f7370616e3e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e3c6272202f3e3c2f7370616e3e3c6272202f3e3c2f703e, NULL, NULL, NULL, 1, '2021-07-24 22:44:48', '2021-11-18 00:20:40'),
(87, 176, 14, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', 'sed-ut-perspiciatis-unde-omnis-iste-natus-error-sit-voluptatem', '1637216446.png', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b666f6e742d73697a653a313470783b223e5365642075742070657273706963696174697320756e6465206f6d6e69732069737465206e61747573206572726f722073697420766f6c7570746174656d206163637573616e7469756d20646f6c6f72656d717565206c617564616e7469756d2c20746f74616d2072656d206170657269616d2c2065617175652069707361207175616520616220696c6c6f20696e76656e746f726520766572697461746973206574207175617369206172636869746563746f206265617461652076697461652064696374612073756e74206578706c696361626f2e204e656d6f20656e696d20697073616d20766f6c7570746174656d207175696120766f6c7570746173207369742061737065726e6174757220617574206f646974206175742066756769742c20736564207175696120636f6e73657175756e747572206d61676e6920646f6c6f72657320656f732071756920726174696f6e6520766f6c7570746174656d207365717569206e65736369756e742e204e6571756520706f72726f20717569737175616d206573742c2071756920646f6c6f72656d20697073756d207175696120646f6c6f722073697420616d65742c20636f6e73656374657475722c2061646970697363692076656c69742c207365642071756961206e6f6e206e756d7175616d2065697573206d6f64692074656d706f726120696e636964756e74207574206c61626f726520657420646f6c6f7265206d61676e616d20616c697175616d207175616572617420766f6c7570746174656d2e20557420656e696d206164206d696e696d612076656e69616d2c2071756973206e6f737472756d20657865726369746174696f6e656d20756c6c616d20636f72706f726973207375736369706974206c61626f72696f73616d2c206e69736920757420616c697175696420657820656120636f6d6d6f646920636f6e73657175617475723f205175697320617574656d2076656c2065756d206975726520726570726568656e64657269742071756920696e20656120766f6c7570746174652076656c69742065737365207175616d206e6968696c206d6f6c65737469616520636f6e73657175617475722c2076656c20696c6c756d2071756920646f6c6f72656d2065756d206675676961742071756f20766f6c7570746173206e756c6c612070617269617475723c2f7370616e3e3c6272202f3e3c2f703e, NULL, NULL, NULL, 2, '2021-07-24 22:46:20', '2021-11-18 00:20:46'),
(88, 176, 15, 'expound the actual teachings of the great explorer of the truth', 'expound-the-actual-teachings-of-the-great-explorer-of-the-truth', '1637216452.png', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e4275742049206d757374206578706c61696e20746f20796f7520686f7720616c6c2074686973206d697374616b656e2069646561206f662064656e6f756e63696e6720706c65617375726520616e64207072616973696e67207061696e2077617320626f726e20616e6420492077696c6c206769766520796f75206120636f6d706c657465206163636f756e74206f66207468652073797374656d2c20616e64206578706f756e64207468652061637475616c207465616368696e6773206f6620746865206772656174206578706c6f726572206f66207468652074727574682c20746865206d61737465722d6275696c646572206f662068756d616e2068617070696e6573732e204e6f206f6e652072656a656374732c206469736c696b65732c206f722061766f69647320706c65617375726520697473656c662c206265636175736520697420697320706c6561737572652c2062757420626563617573652074686f73652077686f20646f206e6f74206b6e6f7720686f7720746f2070757273756520706c65617375726520726174696f6e616c6c7920656e636f756e74657220636f6e73657175656e6365732074686174206172652065787472656d656c79207061696e66756c2e204e6f7220616761696e20697320746865726520616e796f6e652077686f206c6f766573206f722070757273756573206f72206465736972657320746f206f627461696e207061696e206f6620697473656c662c2062656361757365206974206973207061696e2c206275742062656361757365206f63636173696f6e616c6c792063697263756d7374616e636573206f6363757220696e20776869636820746f696c20616e64207061696e2063616e2070726f637572652068696d20736f6d6520677265617420706c6561737572652e20546f2074616b652061207472697669616c206578616d706c652c207768696368206f66207573206576657220756e64657274616b6573206c61626f72696f757320706879736963616c2065786572636973652c2065786365707420746f206f627461696e20736f6d6520616476616e746167652066726f6d2069743f204275742077686f2068617320616e7920726967687420746f2066696e64206661756c7420776974682061206d616e2077686f2063686f6f73657320746f20656e6a6f79206120706c656173757265207468617420686173206e6f20616e6e6f79696e6720636f6e73657175656e6365732c206f72206f6e652077686f2061766f6964732061207061696e20746861742070726f6475636573206e6f20726573756c74616e7420706c6561737572653c2f7370616e3e3c6272202f3e3c2f703e, NULL, NULL, NULL, 3, '2021-07-24 22:47:18', '2021-11-18 00:20:52'),
(89, 176, 16, 'At vero eos et accusamus et iusto odio dignissimos ducimus', 'at-vero-eos-et-accusamus-et-iusto-odio-dignissimos-ducimus', '1637216459.png', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e4174207665726f20656f73206574206163637573616d757320657420697573746f206f64696f206469676e697373696d6f7320647563696d75732071756920626c616e646974696973207072616573656e7469756d20766f6c7570746174756d2064656c656e69746920617471756520636f7272757074692071756f7320646f6c6f7265732065742071756173206d6f6c657374696173206578636570747572692073696e74206f63636165636174692063757069646974617465206e6f6e2070726f766964656e742c2073696d696c697175652073756e7420696e2063756c706120717569206f666669636961206465736572756e74206d6f6c6c6974696120616e696d692c20696420657374206c61626f72756d20657420646f6c6f72756d20667567612e20457420686172756d2071756964656d20726572756d20666163696c6973206573742065742065787065646974612064697374696e6374696f2e204e616d206c696265726f2074656d706f72652c2063756d20736f6c757461206e6f6269732065737420656c6967656e6469206f7074696f2063756d717565206e6968696c20696d70656469742071756f206d696e75732069642071756f64206d6178696d6520706c61636561742066616365726520706f7373696d75732c206f6d6e697320766f6c757074617320617373756d656e6461206573742c206f6d6e697320646f6c6f7220726570656c6c656e6475732e2054656d706f726962757320617574656d2071756962757364616d20657420617574206f6666696369697320646562697469732061757420726572756d206e65636573736974617469627573207361657065206576656e69657420757420657420766f6c7570746174657320726570756469616e6461652073696e74206574206d6f6c657374696165206e6f6e207265637573616e6461652e2049746171756520656172756d20726572756d206869632074656e6574757220612073617069656e74652064656c65637475732c20757420617574207265696369656e64697320766f6c757074617469627573206d61696f72657320616c69617320636f6e73657175617475722061757420706572666572656e64697320646f6c6f7269627573206173706572696f72657320726570656c6c61743c2f7370616e3e3c6272202f3e3c2f703e, NULL, NULL, NULL, 4, '2021-07-24 22:48:00', '2021-11-18 00:20:59'),
(90, 176, 13, 'On the other hand, we denounce with righteous indignation', 'on-the-other-hand,-we-denounce-with-righteous-indignation', '1637216476.png', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e4f6e20746865206f746865722068616e642c2077652064656e6f756e63652077697468207269676874656f757320696e6469676e6174696f6e20616e64206469736c696b65206d656e2077686f2061726520736f2062656775696c656420616e642064656d6f72616c697a65642062792074686520636861726d73206f6620706c656173757265206f6620746865206d6f6d656e742c20736f20626c696e646564206279206465736972652c207468617420746865792063616e6e6f7420666f726573656520746865207061696e20616e642074726f75626c6520746861742061726520626f756e6420746f20656e7375653b20616e6420657175616c20626c616d652062656c6f6e677320746f2074686f73652077686f206661696c20696e2074686569722064757479207468726f756768207765616b6e657373206f662077696c6c2c207768696368206973207468652073616d6520617320736179696e67207468726f75676820736872696e6b696e672066726f6d20746f696c20616e64207061696e2e2054686573652063617365732061726520706572666563746c792073696d706c6520616e64206561737920746f2064697374696e67756973682e20496e2061206672656520686f75722c207768656e206f757220706f776572206f662063686f69636520697320756e7472616d6d656c6c656420616e64207768656e206e6f7468696e672070726576656e7473206f7572206265696e672061626c6520746f20646f2077686174207765206c696b6520626573742c20657665727920706c65617375726520697320746f2062652077656c636f6d656420616e64206576657279207061696e2061766f696465642e2042757420696e206365727461696e2063697263756d7374616e63657320616e64206f77696e6720746f2074686520636c61696d73206f662064757479206f7220746865206f626c69676174696f6e73206f6620627573696e6573732069742077696c6c206672657175656e746c79206f63637572207468617420706c65617375726573206861766520746f206265207265707564696174656420616e6420616e6e6f79616e6365732061636365707465642e205468652077697365206d616e207468657265666f726520616c7761797320686f6c647320696e207468657365206d61747465727320746f2074686973207072696e6369706c65206f662073656c656374696f6e3a2068652072656a6563747320706c6561737572657320746f20736563757265206f74686572206772656174657220706c656173757265732c206f7220656c736520686520656e6475726573207061696e7320746f2061766f696420776f727365207061696e733c2f7370616e3e3c6272202f3e3c2f703e, NULL, NULL, NULL, 5, '2021-07-24 22:49:03', '2021-11-18 00:21:16'),
(91, 176, 14, 'consectetur, adipisci velit, sed quia non numquam eius', 'consectetur,-adipisci-velit,-sed-quia-non-numquam-eius', '1637216483.png', 0x3c626c6f636b71756f74653e3c703e3c7370616e207374796c653d22666f6e742d73697a653a313470783b666f6e742d66616d696c793a27436f6d69632053616e73204d53273b223e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f66204c6f72656d20497073756d2c20796f75206e65656420746f20626520737572652074686572652069736e277420616e797468696e6720656d62617272617373696e672068696464656e20696e20746865206d6964646c65206f6620746578742e20416c6c20746865204c6f72656d20497073756d2067656e657261746f7273206f6e2074686520496e7465726e65742074656e6420746f2072657065617420707265646566696e6564206368756e6b73206173206e65636573736172792c206d616b696e6720746869732074686520666972737420747275652067656e657261746f72206f6e2074686520496e7465726e65742e204974207573657320612064696374696f6e617279206f66206f76657220323030204c6174696e20776f7264732c20636f6d62696e6564207769746820612068616e6466756c206f66206d6f64656c2073656e74656e636520737472756374757265732c20746f2067656e6572617465204c6f72656d20497073756d207768696368206c6f6f6b7320726561736f6e61626c652e205468652067656e657261746564204c6f72656d20497073756d206973207468657265666f726520616c7761797320667265652066726f6d2072657065746974696f6e2c20696e6a65637465642068756d6f75722c206f72206e6f6e2d636861726163746572697374696320776f726473206574632e3c2f7370616e3e3c2f703e3c2f626c6f636b71756f74653e3c703e3c7370616e207374796c653d22636f6c6f723a72676228302c302c30293b666f6e742d66616d696c793a56657264616e613b746578742d616c69676e3a6a7573746966793b223e436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572653c2f7370616e3e3c6272202f3e3c2f703e, NULL, NULL, NULL, 6, '2021-07-24 22:50:07', '2021-11-18 00:21:23'),
(92, 177, 17, 'وقد نجا خمسة قرون فحسب', 'وقد-نجا-خمسة-قرون-فحسب', '1637216494.png', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 1, '2021-07-24 22:44:48', '2021-11-18 00:21:34'),
(93, 177, 18, 'لكن يجب أن أشرح لكم كيف كل هذه الفكرة الخاطئة عن المتعة', 'لكن-يجب-أن-أشرح-لكم-كيف-كل-هذه-الفكرة-الخاطئة-عن-المتعة', '1637216502.png', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 2, '2021-07-24 22:46:20', '2021-11-18 00:21:42'),
(94, 177, 19, 'شرح التعاليم الفعلية للمستكشف العظيم للحقيقة', 'شرح-التعاليم-الفعلية-للمستكشف-العظيم-للحقيقة', '1637216509.png', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 3, '2021-07-24 22:47:18', '2021-11-18 00:21:49'),
(95, 177, 20, 'شرح التعاليم الفعلية للمستكشف العظيم للحقيقة', 'شرح-التعاليم-الفعلية-للمستكشف-العظيم-للحقيقة', '1637216516.png', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 4, '2021-07-24 22:48:00', '2021-11-18 00:21:56'),
(96, 177, 17, 'من ناحية أخرى ، نشجب بسخط مستقيم', 'من-ناحية-أخرى-،-نشجب-بسخط-مستقيم', '1637216524.png', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 5, '2021-07-24 22:49:03', '2021-11-18 00:22:04'),
(97, 177, 18, 'إنه يرغب في الحصول على الاحتياطي الفيدرالي ، ولكن أيضًا لأنه لا يمكن إلحاقه أبدًا', 'إنه-يرغب-في-الحصول-على-الاحتياطي-الفيدرالي-،-ولكن-أيضًا-لأنه-لا-يمكن-إلحاقه-أبدًا', '1637216530.png', 0xd987d986d8a7d984d98320d8a7d984d8b9d8afd98ad8af20d985d98620d8a7d984d8a3d986d988d8a7d8b920d8a7d984d985d8aad988d981d8b1d8a920d984d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d985d88c20d988d984d983d98620d8a7d984d8bad8a7d984d8a8d98ad8a920d8aad98520d8aad8b9d8afd98ad984d987d8a720d8a8d8b4d983d98420d985d8a720d8b9d8a8d8b120d8a5d8afd8aed8a7d98420d8a8d8b9d8b620d8a7d984d986d988d8a7d8afd8b120d8a3d98820d8a7d984d983d984d985d8a7d8aa20d8a7d984d8b9d8b4d988d8a7d8a6d98ad8a920d8a5d984d98920d8a7d984d986d8b52e20d8a5d98620d983d986d8aa20d8aad8b1d98ad8af20d8a3d98620d8aad8b3d8aad8aed8afd98520d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d985d8a7d88c20d8b9d984d98ad98320d8a3d98620d8aad8aad8add982d98220d8a3d988d984d8a7d98b20d8a3d98620d984d98ad8b320d987d986d8a7d98320d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d985d8add8b1d8acd8a920d8a3d98820d8bad98ad8b120d984d8a7d8a6d982d8a920d985d8aed8a8d8a3d8a920d981d98a20d987d8b0d8a720d8a7d984d986d8b52e20d8a8d98ad986d985d8a720d8aad8b9d985d98420d8acd985d98ad8b920d985d988d984d991d8afd8a7d8aa20d986d8b5d988d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa20d8b9d984d98920d8a5d8b9d8a7d8afd8a920d8aad983d8b1d8a7d8b120d985d982d8a7d8b7d8b920d985d98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d986d981d8b3d98720d8b9d8afd8a920d985d8b1d8a7d8aa20d8a8d985d8a720d8aad8aad8b7d984d8a8d98720d8a7d984d8add8a7d8acd8a9d88c20d98ad982d988d98520d985d988d984d991d8afd986d8a720d987d8b0d8a720d8a8d8a7d8b3d8aad8aed8afd8a7d98520d983d984d985d8a7d8aa20d985d98620d982d8a7d985d988d8b320d98ad8add988d98a20d8b9d984d98920d8a3d983d8abd8b120d985d9862032303020d983d984d985d8a920d984d8a720d8aad98ad986d98ad8a9d88c20d985d8b6d8a7d98120d8a5d984d98ad987d8a720d985d8acd985d988d8b9d8a920d985d98620d8a7d984d8acd985d98420d8a7d984d986d985d988d8b0d8acd98ad8a9d88c20d984d8aad983d988d98ad98620d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8b0d98820d8b4d983d98420d985d986d8b7d982d98a20d982d8b1d98ad8a820d8a5d984d98920d8a7d984d986d8b520d8a7d984d8add982d98ad982d98a2e20d988d8a8d8a7d984d8aad8a7d984d98a20d98ad983d988d98620d8a7d984d986d8b520d8a7d984d986d8a7d8aad8ad20d8aed8a7d984d98a20d985d98620d8a7d984d8aad983d8b1d8a7d8b1d88c20d8a3d98820d8a3d98a20d983d984d985d8a7d8aa20d8a3d98820d8b9d8a8d8a7d8b1d8a7d8aa20d8bad98ad8b120d984d8a7d8a6d982d8a920d8a3d98820d985d8a720d8b4d8a7d8a8d9872e20d988d987d8b0d8a720d985d8a720d98ad8acd8b9d984d98720d8a3d988d98420d985d988d984d991d8af20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8add982d98ad982d98a20d8b9d984d98920d8a7d984d8a5d986d8aad8b1d986d8aa2e, NULL, NULL, NULL, 6, '2021-07-24 22:50:07', '2021-11-18 00:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`) VALUES
(2, 'email_verification', 'Verify Your Email', '<p style=\"line-height: 1.6;\">Hello<b> {customer_name}</b>,</p><p style=\"line-height: 1.6;\"><br>Please click the link below to verify your email.</p><p>{verification_link}</p><p><br></p><p>Best Regards,</p><p>{website_title}</p>'),
(12, 'custom_domain_connected', 'Custom Domain is Connected with Our Server', 'Hi {username},<br><br>\n\nThanks for your custom domain request.<br>\nYour requested domain {requested_domain} has been connected to your server.<br>\nPlease <strong>clear your browser cache</strong> & visit {requested_domain} to see your portfolio website.<br>\n\nYour current domain: {requested_domain}.<br>\nYour previous domain: {previous_domain}.<br><br>\n\nBest Regards,<br>\n{website_title}.<br>'),
(13, 'custom_domain_rejected', 'Custom Domain Request is Rejected', 'Hi {username},<br><br>\r\n\r\nThanks for your custom domain request.<br>\r\nUnfortunately, we have rejected your custom domain request<br>\r\n\r\nYour requested domain: {requested_domain}.<br>\r\nYour current domain: {current_domain}.<br><br>\r\n\r\nBest Regards,<br>\r\n{website_title}.<br>'),
(16, 'registration_with_premium_package', 'You have registered successfully', '<p>Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us</p><p><b><span style=\"font-size:18px;\">Membership Information:</span></b><br />\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(17, 'registration_with_trial_package', 'You have registered successfully', 'Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYou have purchased a trial package<br /><br />\r\n\r\n<h4>Membership Information:</h4>\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}<br /><br />\r\n\r\nWe have attached an invoice in this mail<br />\r\nThank you for your purchase.<br /><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br />'),
(18, 'registration_with_free_package', 'You have registered successfully', 'Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYou have purchased a free package<br /><br />\r\n\r\n<h4>Membership Information:</h4>\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}<br /><br />\r\n\r\nWe have attached an invoice in this mail<br />\r\nThank you for your purchase.<br /><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br />'),
(19, 'membership_expiry_reminder', 'Your membership will be expired soon', 'Hi {username},<br /><br />\r\n\r\nYour membership will be expired soon.<br />\r\nYour membership is valid till <strong>{last_day_of_membership}</strong><br />\r\nPlease click here - {login_link} to log into the dashboard to purchase a new package / extend the current package to extend your membership.<br /><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.'),
(20, 'membership_expired', 'Your membership is expired', 'Hi {username},<br><br>\r\n\r\nYour membership is expired.<br>\r\nPlease click here - {login_link} to log into the dashboard to purchase a new package / extend the current package to continue the membership.<br><br>\r\n\r\nBest Regards,<br>\r\n{website_title}.'),
(21, 'membership_extend', 'Your membership is extended', '<p>Hi {username},<br /><br />\n\nThis is a confirmation mail from us.<br />\nYou have extended your membership.<br />\n\n<strong>Package Title:</strong> {package_title}<br />\n<strong>Package Price:</strong> {package_price}<br />\n<strong>Activation Date:</strong> {activation_date}<br />\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\nThank you for your purchase.</p><p><br />\n\nBest Regards,<br />\n{website_title}.<br /></p>'),
(22, 'payment_accepted_for_membership_extension_offline_gateway', 'Your payment for membership extension is accepted', '<p>Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYour payment has been accepted & your membership is extended.<br />\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(23, 'payment_accepted_for_registration_offline_gateway', 'Your payment for registration is approved', '<p>Hi {username},<br /><br />\r\n\r\nThis is a confirmation mail from us.<br />\r\nYour payment has been accepted & now you can login to your user dashboard to build your portfolio website.<br />\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n<strong>Activation Date:</strong> {activation_date}<br />\r\n<strong>Expire Date:</strong> {expire_date}</p><p><br /></p><p>We have attached an invoice with this mail.<br />\r\nThank you for your purchase.</p><p><br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(24, 'payment_rejected_for_membership_extension_offline_gateway', 'Your payment for membership extension is rejected', '<p>Hi {username},<br /><br />\r\n\r\nWe are sorry to inform you that your payment has been rejected<br />\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>'),
(25, 'payment_rejected_for_registration_offline_gateway', 'Your payment for registration is rejected', '<p>Hi {username},<br /><br />\r\n\r\nWe are sorry to inform you that your payment has been rejected<br>\r\n\r\n<strong>Package Title:</strong> {package_title}<br />\r\n<strong>Package Price:</strong> {package_price}<br />\r\n\r\nBest Regards,<br />\r\n{website_title}.<br /></p>');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `question`, `answer`, `serial_number`) VALUES
(20, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 1),
(21, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 2),
(22, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 3),
(23, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 4),
(24, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 5),
(25, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 6),
(26, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 7),
(27, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 8),
(28, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 9),
(29, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 10),
(50, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 1),
(51, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 2),
(52, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 3),
(53, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 4),
(54, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 5),
(55, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 6),
(56, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 7),
(57, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 8),
(58, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 9),
(59, 177, 'لماذا هذا التطبيق رائع جدا', 'الرسوم المتحركة pariatur كليشيه reprehenderit ، enim eiusmod حياة عالية accusamus تيري ريتشاردسون الإعلانية الحبار. 3 الذئب القمر officia aute ، غير cupidatat غداء دولر لوح التزلج. شاحنة الغذاء الكينوا nesciunt labum eiusmod.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `icon`, `title`, `text`, `serial_number`) VALUES
(63, 176, 'fab fa-internet-explorer', 'Custom Domain', 'It is a long established fact that a reader will be distracted by the readable content of a page', 1),
(64, 176, 'fas fa-globe-americas', 'Unlimited Language', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 2),
(65, 176, 'far fa-object-group', 'Attactive Themes', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 3),
(70, 176, 'fas fa-align-left', 'Form Builder', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', 4),
(71, 176, 'fas fa-qrcode', 'QR Builder', 'It is a long established fact that a reader will be distracted by the readable content of a page', 5),
(72, 176, 'far fa-address-card', 'vCard', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 6),
(73, 177, 'fab fa-internet-explorer', 'مجال مخصص', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على القراءة', 1),
(74, 177, 'fas fa-globe-americas', 'لغة غير محدودة', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. لوريم إيبسوم', 2),
(75, 177, 'far fa-object-group', 'ثيمات اتاكتيف', 'هناك العديد من الاختلافات المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية عانت منها', 3),
(76, 177, 'fas fa-align-left', 'منشئ النموذج', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. لوريم إيبسوم', 4),
(77, 177, 'fas fa-qrcode', 'منشئ QR', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على القراءة', 5),
(78, 177, 'far fa-address-card', 'vCard', 'هناك العديد من الاختلافات المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية عانت منها', 6);

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `follower_id`, `following_id`, `created_at`, `updated_at`) VALUES
(3, 37, 43, '2021-01-25 07:39:24', '2021-01-25 07:39:24'),
(4, 22, 21, '2021-07-06 05:56:14', '2021-07-06 05:56:14'),
(5, 22, 20, '2021-07-06 05:56:20', '2021-07-06 05:56:20'),
(7, 22, 24, '2021-07-06 05:56:34', '2021-07-06 05:56:34'),
(17, 38, 22, '2021-07-07 00:21:18', '2021-07-07 00:21:18'),
(19, 22, 38, '2021-07-07 04:24:45', '2021-07-07 04:24:45'),
(23, 153, 67, '2021-10-25 02:32:27', '2021-10-25 02:32:27'),
(25, 76, 153, '2021-10-25 02:35:53', '2021-10-25 02:35:53'),
(28, 63, 161, '2021-11-10 05:27:19', '2021-11-10 05:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 1,
  `rtl` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - LTR, 1- RTL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `rtl`, `created_at`, `updated_at`) VALUES
(176, 'English', 'en', 1, 0, '2020-08-07 04:43:05', '2021-01-07 11:43:05'),
(177, 'عربى', 'ar', 0, 1, '2020-08-07 04:51:17', '2021-01-07 11:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_trial` tinyint(1) NOT NULL DEFAULT 0,
  `trial_days` int(11) NOT NULL DEFAULT 0,
  `receipt` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `price`, `currency`, `currency_symbol`, `payment_method`, `transaction_id`, `status`, `is_trial`, `trial_days`, `receipt`, `transaction_details`, `settings`, `package_id`, `user_id`, `start_date`, `expire_date`, `created_at`, `updated_at`) VALUES
(265, 999, 'USD', '$', 'Paypal', '336d81c0', 1, 0, 0, NULL, '{\n    \"id\": \"PAYID-MGI7XEQ0D013742XV9951526\",\n    \"intent\": \"sale\",\n    \"state\": \"approved\",\n    \"cart\": \"3NB247263F385534J\",\n    \"payer\": {\n        \"payment_method\": \"paypal\",\n        \"status\": \"VERIFIED\",\n        \"payer_info\": {\n            \"email\": \"megasoft.envato@gmail.com\",\n            \"first_name\": \"Samiul Alim\",\n            \"last_name\": \"Pratik\",\n            \"payer_id\": \"8C5NYJ7EZ7QSS\",\n            \"shipping_address\": {\n                \"recipient_name\": \"Samiul Alim Pratik\",\n                \"line1\": \"1 Main St\",\n                \"city\": \"San Jose\",\n                \"state\": \"CA\",\n                \"postal_code\": \"95131\",\n                \"country_code\": \"US\"\n            },\n            \"country_code\": \"US\"\n        }\n    },\n    \"transactions\": [\n        {\n            \"amount\": {\n                \"total\": \"999.00\",\n                \"currency\": \"USD\",\n                \"details\": {\n                    \"subtotal\": \"999.00\",\n                    \"shipping\": \"0.00\",\n                    \"insurance\": \"0.00\",\n                    \"handling_fee\": \"0.00\",\n                    \"shipping_discount\": \"0.00\",\n                    \"discount\": \"0.00\"\n                }\n            },\n            \"payee\": {\n                \"merchant_id\": \"BKNWZYE3MAUNU\",\n                \"email\": \"megasoft.envato-facilitator@gmail.com\"\n            },\n            \"description\": \"You are purchasing a membership Via Paypal\",\n            \"item_list\": {\n                \"items\": [\n                    {\n                        \"name\": \"You are purchasing a membership\",\n                        \"price\": \"999.00\",\n                        \"currency\": \"USD\",\n                        \"tax\": \"0.00\",\n                        \"quantity\": 1\n                    }\n                ],\n                \"shipping_address\": {\n                    \"recipient_name\": \"Samiul Alim Pratik\",\n                    \"line1\": \"1 Main St\",\n                    \"city\": \"San Jose\",\n                    \"state\": \"CA\",\n                    \"postal_code\": \"95131\",\n                    \"country_code\": \"US\"\n                }\n            },\n            \"related_resources\": [\n                {\n                    \"sale\": {\n                        \"id\": \"69X840112U808174L\",\n                        \"state\": \"completed\",\n                        \"amount\": {\n                            \"total\": \"999.00\",\n                            \"currency\": \"USD\",\n                            \"details\": {\n                                \"subtotal\": \"999.00\",\n                                \"shipping\": \"0.00\",\n                                \"insurance\": \"0.00\",\n                                \"handling_fee\": \"0.00\",\n                                \"shipping_discount\": \"0.00\",\n                                \"discount\": \"0.00\"\n                            }\n                        },\n                        \"payment_mode\": \"INSTANT_TRANSFER\",\n                        \"protection_eligibility\": \"ELIGIBLE\",\n                        \"protection_eligibility_type\": \"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\n                        \"transaction_fee\": {\n                            \"value\": \"35.36\",\n                            \"currency\": \"USD\"\n                        },\n                        \"parent_payment\": \"PAYID-MGI7XEQ0D013742XV9951526\",\n                        \"create_time\": \"2021-11-15T06:18:26Z\",\n                        \"update_time\": \"2021-11-15T06:18:26Z\",\n                        \"links\": [\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/69X840112U808174L\",\n                                \"rel\": \"self\",\n                                \"method\": \"GET\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/69X840112U808174L/refund\",\n                                \"rel\": \"refund\",\n                                \"method\": \"POST\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MGI7XEQ0D013742XV9951526\",\n                                \"rel\": \"parent_payment\",\n                                \"method\": \"GET\"\n                            }\n                        ]\n                    }\n                }\n            ]\n        }\n    ],\n    \"redirect_urls\": {\n        \"return_url\": \"http://businesso.test/membership/paypal/success?paymentId=PAYID-MGI7XEQ0D013742XV9951526\",\n        \"cancel_url\": \"http://businesso.test/membership/paypal/cancel\"\n    },\n    \"create_time\": \"2021-11-15T06:17:54Z\",\n    \"update_time\": \"2021-11-15T06:18:26Z\",\n    \"links\": [\n        {\n            \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MGI7XEQ0D013742XV9951526\",\n            \"rel\": \"self\",\n            \"method\": \"GET\"\n        }\n    ],\n    \"failed_transactions\": []\n}', '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"do-not-reply@example.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"admin@kreativdev.com\",\"from_name\":\"Businesso\",\"is_smtp\":1,\"smtp_host\":\"az1-ts2.a2hosting.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"admin@kreativdev.com\",\"smtp_password\":\"ZAOP!~rSk~gb\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Minimize the time, it takes to initiate a relationship between you and the customer.\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"http:\\/\\/example.com\\/\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=6KJqEPVfoDs\",\"hero_img\":\"60f55aec0aba4.png\",\"timezone\":\"America\\/Maceio\",\"contact_addresses\":\"House - 44, Road - 03, Sector - 11, Uttara, Dhaka\\r\\nDhanmondi, Dhaka\\r\\nMohammadpur, Dhaka\",\"contact_numbers\":\"237237237,72372332\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"vCard\\\",\\\"QR Builder\\\",\\\"Follow\\\\\\/Unfollow\\\",\\\"Request a Quote\\\",\\\"Blog\\\",\\\"Portfolio\\\",\\\"Custom Page\\\",\\\"Counter Information\\\",\\\"Skill\\\",\\\"Service\\\",\\\"Testimonial\\\",\\\"Career\\\",\\\"Team\\\"]\",\"expiration_reminder\":3}', 21, 169, '2021-11-15', '9999-12-31', '2021-11-14 21:18:35', '2021-11-14 21:18:35'),
(266, 999, 'USD', '$', 'Paypal', 'f47c1f71', 1, 0, 0, NULL, '{\n    \"id\": \"PAYID-MGJ2O4I65A4410041886852B\",\n    \"intent\": \"sale\",\n    \"state\": \"approved\",\n    \"cart\": \"3D816892LK622893A\",\n    \"payer\": {\n        \"payment_method\": \"paypal\",\n        \"status\": \"VERIFIED\",\n        \"payer_info\": {\n            \"email\": \"megasoft.envato@gmail.com\",\n            \"first_name\": \"Samiul Alim\",\n            \"last_name\": \"Pratik\",\n            \"payer_id\": \"8C5NYJ7EZ7QSS\",\n            \"shipping_address\": {\n                \"recipient_name\": \"Samiul Alim Pratik\",\n                \"line1\": \"1 Main St\",\n                \"city\": \"San Jose\",\n                \"state\": \"CA\",\n                \"postal_code\": \"95131\",\n                \"country_code\": \"US\"\n            },\n            \"country_code\": \"US\"\n        }\n    },\n    \"transactions\": [\n        {\n            \"amount\": {\n                \"total\": \"999.00\",\n                \"currency\": \"USD\",\n                \"details\": {\n                    \"subtotal\": \"999.00\",\n                    \"shipping\": \"0.00\",\n                    \"insurance\": \"0.00\",\n                    \"handling_fee\": \"0.00\",\n                    \"shipping_discount\": \"0.00\",\n                    \"discount\": \"0.00\"\n                }\n            },\n            \"payee\": {\n                \"merchant_id\": \"BKNWZYE3MAUNU\",\n                \"email\": \"megasoft.envato-facilitator@gmail.com\"\n            },\n            \"description\": \"You are purchasing a membership Via Paypal\",\n            \"item_list\": {\n                \"items\": [\n                    {\n                        \"name\": \"You are purchasing a membership\",\n                        \"price\": \"999.00\",\n                        \"currency\": \"USD\",\n                        \"tax\": \"0.00\",\n                        \"quantity\": 1\n                    }\n                ],\n                \"shipping_address\": {\n                    \"recipient_name\": \"Samiul Alim Pratik\",\n                    \"line1\": \"1 Main St\",\n                    \"city\": \"San Jose\",\n                    \"state\": \"CA\",\n                    \"postal_code\": \"95131\",\n                    \"country_code\": \"US\"\n                }\n            },\n            \"related_resources\": [\n                {\n                    \"sale\": {\n                        \"id\": \"3DH45811PL4049123\",\n                        \"state\": \"completed\",\n                        \"amount\": {\n                            \"total\": \"999.00\",\n                            \"currency\": \"USD\",\n                            \"details\": {\n                                \"subtotal\": \"999.00\",\n                                \"shipping\": \"0.00\",\n                                \"insurance\": \"0.00\",\n                                \"handling_fee\": \"0.00\",\n                                \"shipping_discount\": \"0.00\",\n                                \"discount\": \"0.00\"\n                            }\n                        },\n                        \"payment_mode\": \"INSTANT_TRANSFER\",\n                        \"protection_eligibility\": \"ELIGIBLE\",\n                        \"protection_eligibility_type\": \"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\n                        \"transaction_fee\": {\n                            \"value\": \"35.36\",\n                            \"currency\": \"USD\"\n                        },\n                        \"parent_payment\": \"PAYID-MGJ2O4I65A4410041886852B\",\n                        \"create_time\": \"2021-11-16T12:47:44Z\",\n                        \"update_time\": \"2021-11-16T12:47:44Z\",\n                        \"links\": [\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/3DH45811PL4049123\",\n                                \"rel\": \"self\",\n                                \"method\": \"GET\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/sale/3DH45811PL4049123/refund\",\n                                \"rel\": \"refund\",\n                                \"method\": \"POST\"\n                            },\n                            {\n                                \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MGJ2O4I65A4410041886852B\",\n                                \"rel\": \"parent_payment\",\n                                \"method\": \"GET\"\n                            }\n                        ]\n                    }\n                }\n            ]\n        }\n    ],\n    \"redirect_urls\": {\n        \"return_url\": \"http://businesso.test/membership/paypal/success?paymentId=PAYID-MGJ2O4I65A4410041886852B\",\n        \"cancel_url\": \"http://businesso.test/membership/paypal/cancel\"\n    },\n    \"create_time\": \"2021-11-16T12:43:28Z\",\n    \"update_time\": \"2021-11-16T12:47:44Z\",\n    \"links\": [\n        {\n            \"href\": \"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MGJ2O4I65A4410041886852B\",\n            \"rel\": \"self\",\n            \"method\": \"GET\"\n        }\n    ],\n    \"failed_transactions\": []\n}', '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"do-not-reply@example.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"admin@kreativdev.com\",\"from_name\":\"Businesso\",\"is_smtp\":1,\"smtp_host\":\"az1-ts2.a2hosting.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"admin@kreativdev.com\",\"smtp_password\":\"ZAOP!~rSk~gb\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Minimize the time, it takes to initiate a relationship between you and the customer.\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"http:\\/\\/example.com\\/\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=6KJqEPVfoDs\",\"hero_img\":\"60f55aec0aba4.png\",\"timezone\":\"America\\/Maceio\",\"contact_addresses\":\"House - 44, Road - 03, Sector - 11, Uttara, Dhaka\\r\\nDhanmondi, Dhaka\\r\\nMohammadpur, Dhaka\",\"contact_numbers\":\"237237237,72372332\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"vCard\\\",\\\"QR Builder\\\",\\\"Follow\\\\\\/Unfollow\\\",\\\"Request a Quote\\\",\\\"Blog\\\",\\\"Portfolio\\\",\\\"Custom Page\\\",\\\"Counter Information\\\",\\\"Skill\\\",\\\"Service\\\",\\\"Testimonial\\\",\\\"Career\\\",\\\"Team\\\"]\",\"expiration_reminder\":3}', 21, 170, '2021-11-16', '9999-12-31', '2021-11-16 06:47:51', '2021-11-16 06:47:51'),
(267, 999, 'USD', '$', 'Stripe', '36a4b710', 1, 0, 0, NULL, '{\"id\":\"ch_3JwlPJJlIV5dN9n702ujmOUE\",\"object\":\"charge\",\"amount\":99900,\"amount_captured\":99900,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_3JwlPJJlIV5dN9n70a6Tnrnh\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"Stripe\",\"captured\":true,\"created\":1637145025,\"currency\":\"usd\",\"customer\":null,\"description\":\"You are purchasing a membership\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":58,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1JwlPIJlIV5dN9n7Z7aUtVQb\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":12,\"exp_year\":2023,\"fingerprint\":\"WXDgVUSzrY61Nnm6\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"4242\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1Azeo3JlIV5dN9n7\\/ch_3JwlPJJlIV5dN9n702ujmOUE\\/rcpt_KbzOAZ04fOq7oNUMYMBqpq0NZM5KxWo\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_3JwlPJJlIV5dN9n702ujmOUE\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1JwlPIJlIV5dN9n7Z7aUtVQb\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2023,\"fingerprint\":\"WXDgVUSzrY61Nnm6\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '{\"id\":147,\"language_id\":176,\"cookie_alert_status\":1,\"cookie_alert_text\":\"Your experience on this site will be improved by allowing cookies.\",\"cookie_alert_button_text\":\"Allow Cookies\",\"to_mail\":\"do-not-reply@example.com\",\"default_language_direction\":\"ltr\",\"from_mail\":\"admin@kreativdev.com\",\"from_name\":\"Businesso\",\"is_smtp\":1,\"smtp_host\":\"az1-ts2.a2hosting.com\",\"smtp_port\":\"587\",\"encryption\":\"TLS\",\"smtp_username\":\"admin@kreativdev.com\",\"smtp_password\":\"ZAOP!~rSk~gb\",\"base_currency_symbol\":\"$\",\"base_currency_symbol_position\":\"left\",\"base_currency_text\":\"USD\",\"base_currency_text_position\":\"right\",\"base_currency_rate\":\"1.00\",\"hero_section_title\":\"Our Platform, Your Success\",\"hero_section_text\":\"Minimize the time, it takes to initiate a relationship between you and the customer.\",\"hero_section_button_text\":\"Explore Plans\",\"hero_section_button_url\":\"http:\\/\\/example.com\\/\",\"hero_section_video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=6KJqEPVfoDs\",\"hero_img\":\"60f55aec0aba4.png\",\"timezone\":\"America\\/Maceio\",\"contact_addresses\":\"House - 44, Road - 03, Sector - 11, Uttara, Dhaka\\r\\nDhanmondi, Dhaka\\r\\nMohammadpur, Dhaka\",\"contact_numbers\":\"237237237,72372332\",\"contact_mails\":\"contact@example.com,support@example.com,query@example.com\",\"is_whatsapp\":1,\"whatsapp_number\":null,\"whatsapp_header_title\":null,\"whatsapp_popup_message\":null,\"whatsapp_popup\":1,\"domain_request_success_message\":\"We have received your custom domain request. Please allow us 2 business days to connect the domain with our server.\",\"cname_record_section_title\":\"Read Before Sending Custom Domain Request\",\"cname_record_section_text\":\"<ul><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Before sending request for your custom domain, You need to add a CNAME record (given in below table) in your custom domain from your domain registrar account (like - namecheap, godaddy etc...).<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0CNAME record is needed to point your custom domain to our domain ( profilo.xyz ), so that our website can show your portfolio on your domain<\\/span><\\/font><\\/li><li><font color=\\\"#575962\\\"><span style=\\\"font-weight:600;\\\">\\u00a0Different domain registrar (like - godaddy, namecheap etc...) has different interface for adding CNAME record. If you cannot find the place to add CNAME record in your domain registrar account, then please contact your domain registrar support, they will show you the place to add CNAME record for your custom domain<\\/span><\\/font><\\/li><\\/ul>\",\"package_features\":\"[\\\"Custom Domain\\\",\\\"Subdomain\\\",\\\"vCard\\\",\\\"QR Builder\\\",\\\"Follow\\\\\\/Unfollow\\\",\\\"Request a Quote\\\",\\\"Blog\\\",\\\"Portfolio\\\",\\\"Custom Page\\\",\\\"Counter Information\\\",\\\"Skill\\\",\\\"Service\\\",\\\"Testimonial\\\",\\\"Career\\\",\\\"Team\\\"]\",\"expiration_reminder\":3}', 21, 171, '2021-11-17', '9999-12-31', '2021-11-17 04:30:33', '2021-11-17 04:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `menus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(136, 176, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Listings\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"listings\"},{\"text\":\"Pricing\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"pricing\"},{\"text\":\"Pages\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"About Us\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"10\"},{\"text\":\"Terms & Conditions\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"11\"}]},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"FAQs\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]', '2021-11-17 05:56:36', '2021-11-17 05:56:36'),
(137, 177, '[{\"text\":\"منزل\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"type\":\"listings\",\"text\":\"القوائم\",\"href\":\"\",\"target\":\"_self\"},{\"text\":\"التسعير\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"pricing\"},{\"text\":\"الصفحات\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"معلومات عنا\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"12\"},{\"text\":\"البنود و الظروف\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"13\"}]},{\"text\":\"المدونات\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blogs\"},{\"text\":\"أسئلة وأجوبة\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"اتصال\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2021-11-18 00:31:18', '2021-11-18 00:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `offline_gateways`
--

CREATE TABLE `offline_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `is_receipt` tinyint(4) NOT NULL DEFAULT 1,
  `receipt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_gateways`
--

INSERT INTO `offline_gateways` (`id`, `name`, `short_description`, `instructions`, `status`, `serial_number`, `is_receipt`, `receipt`, `created_at`, `updated_at`) VALUES
(1, 'JPMorgan Chase & Co.', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c666f6e7420666163653d2243697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d7365726966223e43686173652042616e6b2069732074686520636f6e73756d65722062616e6b696e67206469766973696f6e206f66204a504d6f7267616e2043686173652e20556e6c696b652069747320636f6d70657469746f72732c2043686173652069732074616b696e6720737465707320746f20657870616e6420697473206272616e6368206e6574776f726b20696e206b6579206d61726b6574732e205468652062616e6b2063757272656e746c7920686173206e6561726c7920352c303030206272616e6368657320616e642031362c3030302041544d732e204163636f7264696e6720746f207468652062616e6b2c206e6561726c792068616c66206f662074686520636f756e747279e280997320686f757365686f6c64732061726520436861736520637573746f6d6572732e3c2f666f6e743e3c62723e3c2f703e, 1, 1, 1, NULL, '2020-09-17 01:06:39', '2020-09-17 01:22:50'),
(2, 'Bank of America Corp.', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c7370616e207374796c653d22666f6e742d66616d696c793a2043697263756c61725374642d426f6f6b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e42616e6b206f6620416d6572696361207365727665732061626f7574203636206d696c6c696f6e20636f6e73756d65727320616e6420736d616c6c20627573696e65737320636c69656e747320776f726c64776964652e204c696b65206d616e79206f662074686520626967676573742062616e6b732c2042616e6b206f6620416d6572696361206973206b6e6f776e20666f7220697473206469676974616c20696e6e6f766174696f6e2e20497420686173206d6f7265207468616e203337206d696c6c696f6e206469676974616c20636c69656e747320616e6420697320657870657269656e63696e67207375636365737320616674657220696e74726f647563696e6720697473207669727475616c20617373697374616e742c2045726963612c20746861742061737369737473206163636f756e7420686f6c64657273207769746820766172696f7573207461736b733c2f7370616e3e3c62723e3c2f703e, 1, 2, 0, NULL, '2020-09-17 01:07:37', '2020-09-17 01:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_trial` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `trial_days` int(11) DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `slug`, `price`, `term`, `featured`, `is_trial`, `trial_days`, `status`, `features`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(10, 'Startup', 'startup', 99, 'yearly', '1', '1', 14, '1', '[\"Follow\\/Unfollow\",\"Portfolio\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Team\"]', NULL, NULL, '2021-07-24 23:27:38', '2021-11-14 20:13:49'),
(11, 'Startup', 'startup', 9.99, 'monthly', '1', '1', 14, '1', '[\"Follow\\/Unfollow\",\"Portfolio\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Team\"]', NULL, NULL, '2021-07-24 23:27:38', '2021-11-14 20:09:08'),
(13, 'Growth', 'growth', 12.99, 'monthly', '1', '1', 14, '1', '[\"Subdomain\",\"Follow\\/Unfollow\",\"Request a Quote\",\"Blog\",\"Portfolio\",\"Custom Page\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Career\",\"Team\"]', NULL, NULL, '2021-07-25 01:14:40', '2021-11-14 20:11:36'),
(14, 'Growth', 'growth', 129, 'yearly', '1', '1', 21, '1', '[\"Subdomain\",\"Follow\\/Unfollow\",\"Request a Quote\",\"Blog\",\"Portfolio\",\"Custom Page\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Career\",\"Team\"]', NULL, NULL, '2021-07-25 01:14:40', '2021-11-14 20:13:41'),
(15, 'Maturity', 'maturity', 199, 'yearly', '1', '1', 14, '1', '[\"Custom Domain\",\"Subdomain\",\"vCard\",\"QR Builder\",\"Follow\\/Unfollow\",\"Request a Quote\",\"Blog\",\"Portfolio\",\"Custom Page\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Career\",\"Team\"]', NULL, NULL, '2021-07-25 01:17:33', '2021-11-14 20:13:30'),
(16, 'Maturity', 'maturity', 19.99, 'monthly', '1', '1', 14, '1', '[\"Custom Domain\",\"Subdomain\",\"vCard\",\"QR Builder\",\"Follow\\/Unfollow\",\"Request a Quote\",\"Blog\",\"Portfolio\",\"Custom Page\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Career\",\"Team\"]', NULL, NULL, '2021-07-25 01:17:33', '2021-11-14 20:12:35'),
(17, 'Free', 'free', 0, 'lifetime', '1', '0', NULL, '1', '[\"Follow\\/Unfollow\",\"Portfolio\",\"Skill\",\"Team\"]', 'onetime,package', 'lorem ipsum', '2021-10-04 21:14:12', '2021-11-14 20:16:21'),
(19, 'Golden', 'golden', 499, 'lifetime', '1', '0', 132315, '1', '[\"Subdomain\",\"Follow\\/Unfollow\",\"Request a Quote\",\"Blog\",\"Portfolio\",\"Custom Page\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Career\",\"Team\"]', NULL, NULL, '2021-10-21 02:35:39', '2021-11-14 20:15:30'),
(21, 'Plutinum', 'plutinum', 999, 'lifetime', '1', '0', NULL, '1', '[\"Custom Domain\",\"Subdomain\",\"vCard\",\"QR Builder\",\"Follow\\/Unfollow\",\"Request a Quote\",\"Blog\",\"Portfolio\",\"Custom Page\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Career\",\"Team\"]', NULL, NULL, '2021-11-14 19:56:53', '2021-11-14 20:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `name`, `title`, `slug`, `body`, `status`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(10, 176, 'About Us', 'About Us', 'about-us', 0x3c70207374796c653d22746578742d616c69676e3a63656e7465723b223e3c696d67207372633d22687474703a2f2f627573696e6573736f2e746573742f6173736574732f66726f6e742f696d672f73756d6d65726e6f74652f363066653439363063393834392e6a706722207374796c653d2277696474683a313030253b2220616c743d22363066653439363063393834392e6a706722202f3e3c6272202f3e3c2f703e3c70207374796c653d226c696e652d6865696768743a312e353b223e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b666f6e742d73697a653a313470783b223e3c6272202f3e3c2f7370616e3e3c2f703e3c70207374796c653d226c696e652d6865696768743a312e383b223e3c7370616e207374796c653d22666f6e742d66616d696c793a56657264616e613b746578742d616c69676e3a6a7573746966793b666f6e742d73697a653a313470783b223e4275742049206d757374206578706c61696e20746f20796f7520686f7720616c6c2074686973206d697374616b656e2069646561206f662064656e6f756e63696e6720706c65617375726520616e64207072616973696e67207061696e2077617320626f726e20616e6420492077696c6c206769766520796f75206120636f6d706c657465206163636f756e74206f66207468652073797374656d2c20616e64206578706f756e64207468652061637475616c207465616368696e6773206f6620746865206772656174206578706c6f726572206f66207468652074727574682c20746865206d61737465722d6275696c646572206f662068756d616e2068617070696e6573732e204e6f206f6e652072656a656374732c206469736c696b65732c206f722061766f69647320706c65617375726520697473656c662c206265636175736520697420697320706c6561737572652c2062757420626563617573652074686f73652077686f20646f206e6f74206b6e6f7720686f7720746f2070757273756520706c65617375726520726174696f6e616c6c7920656e636f756e74657220636f6e73657175656e6365732074686174206172652065787472656d656c79207061696e66756c2e204e6f7220616761696e20697320746865726520616e796f6e652077686f206c6f766573206f722070757273756573206f72206465736972657320746f206f627461696e207061696e206f6620697473656c662c2062656361757365206974206973207061696e2c206275742062656361757365206f63636173696f6e616c6c792063697263756d7374616e636573206f6363757220696e20776869636820746f696c20616e64207061696e2063616e2070726f637572652068696d20736f6d6520677265617420706c6561737572652e20546f2074616b652061207472697669616c206578616d706c652c207768696368206f66207573206576657220756e64657274616b6573206c61626f72696f757320706879736963616c2065786572636973652c2065786365707420746f206f627461696e20736f6d6520616476616e746167652066726f6d2069743f204275742077686f2068617320616e7920726967687420746f2066696e64206661756c7420776974682061206d616e2077686f2063686f6f73657320746f20656e6a6f79206120706c656173757265207468617420686173206e6f20616e6e6f79696e6720636f6e73657175656e6365732c206f72206f6e652077686f2061766f6964732061207061696e20746861742070726f6475636573206e6f20726573756c74616e7420706c6561737572653c2f7370616e3e3c2f703e3c703e3c6272202f3e3c2f703e3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a56657264616e613b746578742d616c69676e3a6a7573746966793b666f6e742d73697a653a313470783b223e4275742049206d757374206578706c61696e20746f20796f7520686f7720616c6c2074686973206d697374616b656e2069646561206f662064656e6f756e63696e6720706c65617375726520616e64207072616973696e67207061696e2077617320626f726e20616e6420492077696c6c206769766520796f75206120636f6d706c657465206163636f756e74206f66207468652073797374656d2c20616e64206578706f756e64207468652061637475616c207465616368696e6773206f6620746865206772656174206578706c6f726572206f66207468652074727574682c20746865206d61737465722d6275696c646572206f662068756d616e2068617070696e6573732e204e6f206f6e652072656a656374732c206469736c696b65732c206f722061766f69647320706c65617375726520697473656c662c206265636175736520697420697320706c6561737572652c2062757420626563617573652074686f73652077686f20646f206e6f74206b6e6f7720686f7720746f2070757273756520706c65617375726520726174696f6e616c6c7920656e636f756e74657220636f6e73657175656e6365732074686174206172652065787472656d656c79207061696e66756c2e204e6f7220616761696e20697320746865726520616e796f6e652077686f206c6f766573206f722070757273756573206f72206465736972657320746f206f627461696e207061696e206f6620697473656c662c2062656361757365206974206973207061696e2c206275742062656361757365206f63636173696f6e616c6c792063697263756d7374616e636573206f6363757220696e20776869636820746f696c20616e64207061696e2063616e2070726f637572652068696d20736f6d6520677265617420706c6561737572652e20546f2074616b652061207472697669616c206578616d706c652c207768696368206f66207573206576657220756e64657274616b6573206c61626f72696f757320706879736963616c2065786572636973652c2065786365707420746f206f627461696e20736f6d6520616476616e746167652066726f6d2069743f204275742077686f2068617320616e7920726967687420746f2066696e64206661756c7420776974682061206d616e2077686f2063686f6f73657320746f20656e6a6f79206120706c656173757265207468617420686173206e6f20616e6e6f79696e6720636f6e73657175656e6365732c206f72206f6e652077686f2061766f6964732061207061696e20746861742070726f6475636573206e6f20726573756c74616e7420706c6561737572653c2f7370616e3e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e3c6272202f3e3c2f7370616e3e3c6272202f3e3c2f703e, 1, NULL, NULL, '2021-07-25 01:22:57', '2021-11-07 00:18:01'),
(11, 176, 'Terms & Conditions', 'Terms & Conditions', 'terms-&-conditions', 0x3c68323e5465726d732026616d703b20436f6e646974696f6e733a3c2f68323e3c756c3e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e416c697175616d2074696e636964756e74206d61757269732065752072697375732e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e566573746962756c756d20617563746f722064617069627573206e657175652e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e4e756e63206469676e697373696d207269737573206964206d657475732e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e43726173206f726e6172652074726973746971756520656c69742e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e566976616d757320766573746962756c756d206e74756c6c61206e656320616e74652e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e5072616573656e7420706c61636572617420726973757320717569732065726f732e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e46757363652070656c6c656e746573717565207375736369706974206e6962682e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e496e7465676572207669746165206c696265726f206163207269737573206567657374617320706c6163657261742e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e566573746962756c756d20636f6d6d6f646f2066656c6973207175697320746f72746f722e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e557420616c697175616d20736f6c6c696369747564696e206c656f2e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e4372617320696163756c697320756c74726963696573206e756c6c612e3c2f7370616e3e3c2f6c693e3c6c69207374796c653d226c696e652d6865696768743a333b223e3c7370616e207374796c653d22666f6e742d73697a653a313870783b223e446f6e656320717569732064756920617420646f6c6f722074656d706f7220696e74657264756d3c2f7370616e3e3c2f6c693e3c2f756c3e, 1, NULL, NULL, '2021-07-25 01:25:50', '2021-07-25 20:35:45'),
(12, 177, 'معلومات عنا', 'معلومات عنا', 'معلومات-عنا', 0x3c703e3c696d67207372633d22687474703a2f2f6c6f63616c686f73742f736173736f2f6173736574732f66726f6e742f696d672f73756d6d65726e6f74652f363066653533646438363934312e6a706722207374796c653d2277696474683a313030253b2220616c743d22363066653533646438363934312e6a706722202f3e3c7370616e3e3c6272202f3e3c2f7370616e3e3c2f703e3c703e3c7370616e3ed988d984d983d98620d98ad8acd8a820d8a3d98620d8a3d8b4d8b1d8ad20d984d98320d983d98ad98120d983d98420d987d8b0d98720d8a7d984d981d983d8b1d8a920d8a7d984d8aed8a7d8b7d8a6d8a920d984d984d8aad986d8afd98ad8af20d984d982d8af20d988d984d8afd8aa20d8a7d984d984d8b0d8a920d988d8a7d984d8abd986d8a7d8a120d88c20d988d8b3d8a3d982d8afd98520d984d98320d988d8b5d981d98bd8a720d983d8a7d985d984d8a7d98b20d984d984d986d8b8d8a7d98520d88c20d988d8a3d8b4d8b1d8ad20d8a7d984d8aad8b9d8a7d984d98ad98520d8a7d984d981d8b9d984d98ad8a920d984d984d985d8b3d8aad983d8b4d98120d8a7d984d8b9d8b8d98ad98520d984d984d8add982d98ad982d8a920d88c20d8a7d984d8a8d8a7d986d98a20d8a7d984d8b1d8a6d98ad8b3d98a20d984d984d8b3d8b9d8a7d8afd8a920d8a7d984d8a8d8b4d8b1d98ad8a92e20d984d8a720d8a3d8add8af20d98ad8b1d981d8b620d8a3d98820d98ad983d8b1d98720d8a3d98820d98ad8aad8acd986d8a820d8a7d984d985d8aad8b9d8a920d986d981d8b3d987d8a720d88c20d984d8a3d986d987d8a720d985d8aad8b9d8a920d88c20d988d984d983d98620d984d8a3d98620d8a3d988d984d8a6d98320d8a7d984d8b0d98ad98620d984d8a720d98ad8b9d8b1d981d988d98620d983d98ad981d98ad8a920d8a7d984d8b3d8b9d98a20d988d8b1d8a7d8a120d8a7d984d985d8aad8b9d8a920d98ad988d8a7d8acd987d988d98620d8b9d988d8a7d982d8a820d985d8a4d984d985d8a920d984d984d8bad8a7d98ad8a92e20d988d984d8a720d98ad988d8acd8af20d8a3d98ad8b6d98bd8a720d8a3d98a20d8b4d8aed8b520d98ad8add8a820d8a3d98820d98ad8b3d8b9d98920d8a3d98820d98ad8b1d8bad8a820d981d98a20d8a7d984d8add8b5d988d98420d8b9d984d98920d8a7d984d8a3d984d98520d985d98620d986d981d8b3d98720d88c20d984d8a3d986d98720d8a3d984d98520d88c20d988d984d983d98620d984d8a3d986d98720d98ad8add8afd8ab20d8a3d8add98ad8a7d986d98bd8a720d8b8d8b1d988d98120d98ad985d983d98620d8a3d98620d98ad985d986d8add98720d981d98ad987d8a720d8a7d984d983d8afd8ad20d988d8a7d984d8a3d984d98520d8a8d8b9d8b620d8a7d984d985d8aad8b9d8a920d8a7d984d8b9d8b8d98ad985d8a92e20d984d986d8a3d8aed8b020d985d8abd8a7d984d8a720d8aad8a7d981d987d8a720d88c20d8a3d98a20d985d986d8a720d98ad982d988d98520d8a8d8aad985d8a7d8b1d98ad98620d8a8d8afd986d98ad8a920d8b4d8a7d982d8a920d88c20d8a5d984d8a720d984d984d8add8b5d988d98420d8b9d984d98920d8a8d8b9d8b620d8a7d984d985d8b2d8a7d98ad8a720d985d986d987d8a7d89f20d984d983d98620d985d98620d984d98720d8a7d984d8add98220d981d98a20d8a7d984d8b9d8abd988d8b120d8b9d984d98920d8aed8b7d8a320d985d8b920d8b1d8acd98420d98ad8aed8aad8a7d8b120d8a7d984d8a7d8b3d8aad985d8aad8a7d8b920d8a8d8b3d8b1d988d8b120d984d98ad8b320d984d98720d8b9d988d8a7d982d8a820d985d8b2d8b9d8acd8a920d88c20d8a3d98820d985d98620d98ad8aad8acd986d8a820d8a7d984d8a3d984d98520d8a7d984d8b0d98a20d984d8a720d98ad986d8aad8ac20d8b9d986d98720d985d8aad8b9d8a920203c2f7370616e3e3c2f703e203c703e203c6272202f3e20203c2f703e3c703e203c7370616e3e20d988d984d983d98620d98ad8acd8a820d8a3d98620d8a3d8b4d8b1d8ad20d984d98320d983d98ad98120d983d98420d987d8b0d98720d8a7d984d981d983d8b1d8a920d8a7d984d8aed8a7d8b7d8a6d8a920d985d98620d8a5d8afd8a7d986d8a920d8a7d984d984d8b0d8a920d988d8aad985d8acd98ad8af20d8a7d984d8a3d984d98520d988d984d8afd8aa20d988d8b3d8a3d982d8afd98520d984d98320d988d8b5d981d98bd8a720d983d8a7d985d984d8a7d98b20d984d984d986d8b8d8a7d98520d88c20d988d8a3d8b4d8b1d8ad20d8a7d984d8aad8b9d8a7d984d98ad98520d8a7d984d981d8b9d984d98ad8a920d984d984d985d8b3d8aad983d8b4d98120d8a7d984d8b9d8b8d98ad98520d984d984d8add982d98ad982d8a920d88c20d8a7d984d8a8d8a7d986d98a20d8a7d984d8a8d8a7d8b1d8b920d984d984d8b3d8b9d8a7d8afd8a920d8a7d984d8a8d8b4d8b1d98ad8a92e20d984d8a720d8a3d8add8af20d98ad8b1d981d8b620d8a3d98820d98ad983d8b1d98720d8a3d98820d98ad8aad8acd986d8a820d8a7d984d985d8aad8b9d8a920d986d981d8b3d987d8a720d88c20d984d8a3d986d987d8a720d985d8aad8b9d8a920d88c20d988d984d983d98620d984d8a3d98620d8a3d988d984d8a6d98320d8a7d984d8b0d98ad98620d984d8a720d98ad8b9d8b1d981d988d98620d983d98ad981d98ad8a920d8a7d984d8b3d8b9d98a20d988d8b1d8a7d8a120d8a7d984d985d8aad8b9d8a920d98ad988d8a7d8acd987d988d98620d8b9d988d8a7d982d8a820d985d8a4d984d985d8a920d984d984d8bad8a7d98ad8a92e20d988d984d8a720d98ad988d8acd8af20d8a3d98ad8b6d98bd8a720d8a3d98a20d8b4d8aed8b520d98ad8add8a820d8a3d98820d98ad8b3d8b9d98920d8a3d98820d98ad8b1d8bad8a820d981d98a20d8a7d984d8add8b5d988d98420d8b9d984d98920d8a7d984d8a3d984d98520d985d98620d986d981d8b3d98720d88c20d984d8a3d986d98720d8a3d984d98520d88c20d988d984d983d98620d984d8a3d986d98720d98ad8add8afd8ab20d8a3d8add98ad8a7d986d98bd8a720d8b8d8b1d988d98120d98ad985d983d98620d8a3d98620d98ad985d986d8add98720d981d98ad987d8a720d8a7d984d983d8afd8ad20d988d8a7d984d8a3d984d98520d8a8d8b9d8b620d8a7d984d985d8aad8b9d8a920d8a7d984d8b9d8b8d98ad985d8a92e20d984d986d8a3d8aed8b020d985d8abd8a7d984d8a720d8aad8a7d981d987d8a720d88c20d8a3d98a20d985d986d8a720d98ad982d988d98520d8a8d8aad985d8a7d8b1d98ad98620d8a8d8afd986d98ad8a920d8b4d8a7d982d8a920d88c20d8a5d984d8a720d984d984d8add8b5d988d98420d8b9d984d98920d8a8d8b9d8b620d8a7d984d985d8b2d8a7d98ad8a720d985d986d987d8a7d89f20d988d984d983d98620d985d98620d984d98720d8a7d984d8add98220d981d98a20d8a7d984d8b9d8abd988d8b120d8b9d984d98920d8aed8b7d8a320d985d8b920d8b1d8acd98420d98ad8aed8aad8a7d8b120d8a7d984d8a7d8b3d8aad985d8aad8a7d8b920d8a8d8b3d8b1d988d8b120d984d98ad8b320d984d98720d8b9d988d8a7d982d8a820d985d8b2d8b9d8acd8a920d88c20d8a3d98820d985d98620d98ad8aad8acd986d8a820d8a7d984d8a3d984d98520d8a7d984d8b0d98a20d984d8a720d98ad986d8aad8ac20d8b9d986d98720d985d8aad8b9d8a920203c7370616e3e203c6272202f3e203c2f7370616e3e203c6272202f3e203c2f7370616e3e3c2f703e, 1, NULL, NULL, '2021-07-25 01:22:57', '2021-07-25 21:19:15'),
(13, 177, 'البنود و الظروف', 'البنود و الظروف', 'البنود-و-الظروف', 0x3c68323ed8b4d8b1d988d8b720d988d8a3d985d8a8d98ad8b12e20d8a7d984d8b4d8b1d988d8b7203c2f68323e3c756c3e203c6c69207374796c653d226c696e652d6865696768743a333b223e203c7370616e3e206c6f72656d20697073756d20636172726f747320d88c20d8aad8add8b3d98ad98620d8a7d984d8a8d98ad8a6d8a920d8a7d984d8a8d98ad8a6d98ad8a92e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8a3d8add8afd8ab20d985d8b7d988d991d8b1d98a20d8a7d984d8a8d8b1d8a7d985d8ac20d985d988d8b1d98ad8b320d98ad8b6d8add983d988d9862e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e2066656c69732070726f7465696e206f722e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8a7d984d8a2d98620d8b6d8add98320d983d8b1d8a920d8a7d984d982d8afd98520d984d984d8aed988d9812e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d985d8b7d988d8b120d983d8b1d8a920d8a7d984d982d8afd98520d8a7d984d8add8b2d98ad98620d8bad8afd98bd8a72e2020266c743b202f206c692667743b203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8a7d984d8b1d987d8a7d98620d8a7d984d985d8a8d8a7d8b4d8b1206e74756c6c6120d984d98ad8b320d982d8a8d98420d8b0d984d9832e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d985d988d8acd988d8af20d8a5d98ad8b1d988d8b320d8a7d984d8b9d982d8a7d8b1d98ad8a920d8a7d984d8b6d8add9832e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20436c696e6963616c2070726f6d6f206e6962682e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8b9d8afd8af20d8b5d8add98ad8ad20d8bad98ad8b120d985d8b9d988d98220d988d8a7d8b3d8aad8abd985d8a7d8b120d8a7d984d8b6d8add9832e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8b2d8b120d8a7d984d8afd987d984d98ad8b220d8b9d984d98920d8afd8b1d8acd8a920d8a7d984d8add8b1d8a7d8b1d8a92e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8a5d984d98920d8a8d8b9d8b620d8a3d8b3d8af20d8a7d984d8b1d8b9d8a7d98ad8a92e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8aad8b3d8aad987d8afd98120d8a7d984d8bad8af20d8a7d984d985d8aad8b7d8b1d981d98ad98620d8b5d981d8b12e2020203c2f7370616e3e3c2f6c693e3c6c693e203c7370616e3e20d8add8aad9892064756920d981d98a20d8a3d98a20d988d982d8aa20d988d984d983d98620d8a3d8add98ad8a7d986d98bd8a720d98ad983d988d98620d8a7d984d8a3d984d9852e2020203c2f7370616e3e3c2f6c693e3c2f756c3e, 1, NULL, NULL, '2021-07-25 01:25:50', '2021-07-25 21:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `language_id`, `image`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(66, 176, '1636898123.jpg', 'http://example.com/', 1, NULL, NULL),
(67, 176, '1636898136.jpg', 'http://example.com/', 2, NULL, NULL),
(68, 176, '1636898150.jpg', 'http://example.com/', 3, NULL, NULL),
(69, 176, '1636898160.jpg', 'http://example.com/', 4, NULL, NULL),
(70, 176, '1636898171.jpg', 'http://example.com/', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `information` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `status`) VALUES
(6, NULL, NULL, NULL, 'Flutterwave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-a34940f2f87746abbdd8c117caee81cf-X\",\"secret_key\":\"FLWSECK_TEST-1cb427c96e0b1e6772a04504be3638bd-X\",\"text\":\"Pay via your Flutterwave account.\"}', 'flutterwave', 1),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_fV9dM9URYbqjm7\",\"secret\":\"nickxZ1du2ojPYVVRTDif2Xr\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', 1),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"environment\":\"local\",\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your paytm account.\"}', 'paytm', 1),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"sk_test_4ac9f2c43514e3cc08ab68f922201549ebda1bfd\",\"email\":null,\"text\":\"Pay via your Paystack account.\"}', 'paystack', 1),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":\"1\",\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit account.\"}', 'stripe', 1),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AVYKFEw63FtDt9aeYOe9biyifNI56s2Hc2F1Us11hWoY5GMuegipJRQBfWLiIKNbwQ5tmqKSrQTU3zB3\",\"client_secret\":\"EJY0qOKliVg7wKsR3uPN7lngr9rL1N7q4WV0FulT1h4Fw3_e5Itv1mxSdbtSUwAaQoXQFgq-RLlk_sQu\",\"sandbox_check\":\"1\",\"text\":\"Pay via your PayPal account.\"}', 'paypal', 1),
(17, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_3j4nSqkdAvdBkNuejCrkNbWv4WVDGg\",\"text\":\"Pay via your Mollie Payment account.\"}', 'mollie', 1),
(19, NULL, NULL, NULL, 'Mercado Pago', 'automatic', '{\"token\":\"TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156\",\"sandbox_check\":\"1\",\"text\":\"Pay via your Mercado Pago account.\"}', 'mercadopago', 1),
(20, NULL, NULL, NULL, 'Authorize.net', 'automatic', '{\"login_id\":\"3Ca5hYQ6h\",\"transaction_key\":\"8bt8Kr5gPZ3ZE23C\",\"public_key\":\"7m38JBnNjStNFq58BA6Wrr852ahtT533cGKavWwu6Fge28RDc5wC7wTL8Vsb35B3\",\"sandbox_check\":\"1\",\"text\":\"Pay via your Authorize.net account.\"}', 'authorize.net', 1);

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_opacity` decimal(8,2) NOT NULL DEFAULT 1.00,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delay` int(11) NOT NULL DEFAULT 1000 COMMENT 'in milisconds',
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - active, 0 - deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `processes`
--

INSERT INTO `processes` (`id`, `language_id`, `image`, `title`, `serial_number`) VALUES
(7, 176, '1637215394.png', 'Trial & Purchase Plan', 1),
(8, 176, '1637215402.png', 'Regiser & Verify Email', 2),
(9, 176, '1637215409.png', 'Add Languages', 3),
(10, 176, '1637215416.png', 'Upload Website Contents', 4),
(11, 176, '1637215425.png', 'You are good to go!', 5),
(12, 177, '1637215461.png', 'التجربة وخطة الشراء', 1),
(13, 177, '1637215469.png', 'المسجل والتحقق من البريد الإلكتروني', 2),
(14, 177, '1637215476.png', 'أضف اللغات', 3),
(15, 177, '1637215482.png', 'تحميل محتويات الملف الشخصي', 4),
(16, 177, '1637215487.png', 'يمكنك الذهاب!', 5);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(9, 'Editor', '[\"Dashboard\",\"Packages\",\"Menu Builder\",\"Home Page\",\"Footer\",\"Pages\",\"Blogs\",\"FAQ Management\",\"Contact Page\",\"Announcement Popup\",\"Language Management\"]', '2021-07-18 19:17:38', '2021-07-18 19:47:57'),
(10, 'Manager', '[\"Dashboard\",\"Packages\",\"Payment Log\",\"Menu Builder\",\"Home Page\",\"Footer\",\"Pages\",\"Blogs\",\"FAQ Management\",\"Contact Page\",\"Announcement Popup\",\"Registered Users\",\"Subscribers\",\"Settings\",\"Language Management\",\"Role Management\",\"Admins Management\"]', '2021-07-18 19:17:48', '2021-07-18 19:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `home_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profiles_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profiles_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blogs_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blogs_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `language_id`, `home_meta_keywords`, `home_meta_description`, `profiles_meta_keywords`, `profiles_meta_description`, `pricing_meta_keywords`, `pricing_meta_description`, `blogs_meta_keywords`, `blogs_meta_description`, `faqs_meta_keywords`, `faqs_meta_description`, `contact_meta_keywords`, `contact_meta_description`, `login_meta_keywords`, `login_meta_description`, `forget_password_meta_keywords`, `forget_password_meta_description`, `checkout_meta_keywords`, `checkout_meta_description`) VALUES
(7, 177, 'home,page', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'profiles,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'pricing,packages', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'blogs,page', 'Content here, content here\', making it look like readable English. Many desktop publishing packages', 'faq,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'contact,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 176, 'home,page', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'profiles,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'pricing,packages', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'blogs,page', 'Content here, content here\', making it look like readable English. Many desktop publishing packages', 'faq,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'contact,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'login,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'forget,password', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered', 'checkout,page', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered');

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitemaps`
--

INSERT INTO `sitemaps` (`id`, `sitemap_url`, `filename`, `created_at`, `updated_at`) VALUES
(2, 'http://localhost/superv/without_license/superv-1.2/', 'sitemap5f5e377957033.xml', '2020-09-13 09:15:26', '2020-09-13 09:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `url`, `serial_number`) VALUES
(1, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
(2, 'fab fa-twitter', 'https://twitter.com/', 2),
(3, 'fab fa-linkedin-in', 'https://bd.linkedin.com/', 3),
(4, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(5, 'fab fa-dribbble', 'https://dribbble.com/', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(13, 'subscriber1@example.com', NULL, NULL),
(15, 'subscriber2@example.com', NULL, NULL),
(18, 'subscriber3@example.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `image`, `comment`, `name`, `rank`, `serial_number`, `created_at`, `updated_at`) VALUES
(36, 176, '1637215604.png', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum', 'Barella', 'Bank Manager', 1, NULL, NULL),
(37, 176, '1637215610.png', 'avoids pleasure itself, because it is pleasure, but because those who do not know how', 'Jorginho', 'CEO, Malao', 2, NULL, NULL),
(38, 176, '1637215617.png', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 'Insigne', 'Coach, Raoland', 3, NULL, NULL),
(39, 176, '1637215625.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt', 'Banega', 'Chef, Jastiford', 4, NULL, NULL),
(40, 177, '1637215634.png', 'يتجنب اللذة نفسها ، لأنها لذة ، ولكن لأن أولئك الذين لا يعرفون كيف', 'نقالة', 'مدير بنك', 1, NULL, NULL),
(41, 177, '1637215640.png', 'يتجنب اللذة نفسها ، لأنها لذة ، ولكن لأن أولئك الذين لا يعرفون كيف', 'جورجينيو', 'الرئيس التنفيذي ، ملالا', 2, NULL, NULL),
(42, 177, '1637215645.png', 'إلا أن أشرح لكم كيف كل هذه الفكرة الخاطئة من استنكار اللذة وتمجيد الألم', 'شارة', 'المدرب ، راولاند', 3, NULL, NULL),
(43, 177, '1637215651.png', 'جزر لوريم إيبسوم ، مطور جامعي محسّن ، لكنها تحبس الوقت والحيوية', 'بانيجا', 'الشيف ، جستيفورد', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmt_offset` decimal(10,2) NOT NULL,
  `dst_offset` decimal(10,2) NOT NULL,
  `raw_offset` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `country_code`, `timezone`, `gmt_offset`, `dst_offset`, `raw_offset`) VALUES
(1, 'AD', 'Europe/Andorra', '1.00', '2.00', '1.00'),
(2, 'AE', 'Asia/Dubai', '4.00', '4.00', '4.00'),
(3, 'AF', 'Asia/Kabul', '4.50', '4.50', '4.50'),
(4, 'AG', 'America/Antigua', '-4.00', '-4.00', '-4.00'),
(5, 'AI', 'America/Anguilla', '-4.00', '-4.00', '-4.00'),
(6, 'AL', 'Europe/Tirane', '1.00', '2.00', '1.00'),
(7, 'AM', 'Asia/Yerevan', '4.00', '4.00', '4.00'),
(8, 'AO', 'Africa/Luanda', '1.00', '1.00', '1.00'),
(9, 'AQ', 'Antarctica/Casey', '8.00', '8.00', '8.00'),
(10, 'AQ', 'Antarctica/Davis', '7.00', '7.00', '7.00'),
(11, 'AQ', 'Antarctica/DumontDUrville', '10.00', '10.00', '10.00'),
(12, 'AQ', 'Antarctica/Mawson', '5.00', '5.00', '5.00'),
(13, 'AQ', 'Antarctica/McMurdo', '13.00', '12.00', '12.00'),
(14, 'AQ', 'Antarctica/Palmer', '-3.00', '-4.00', '-4.00'),
(15, 'AQ', 'Antarctica/Rothera', '-3.00', '-3.00', '-3.00'),
(16, 'AQ', 'Antarctica/South_Pole', '13.00', '12.00', '12.00'),
(17, 'AQ', 'Antarctica/Syowa', '3.00', '3.00', '3.00'),
(18, 'AQ', 'Antarctica/Vostok', '6.00', '6.00', '6.00'),
(19, 'AR', 'America/Argentina/Buenos_Aires', '-3.00', '-3.00', '-3.00'),
(20, 'AR', 'America/Argentina/Catamarca', '-3.00', '-3.00', '-3.00'),
(21, 'AR', 'America/Argentina/Cordoba', '-3.00', '-3.00', '-3.00'),
(22, 'AR', 'America/Argentina/Jujuy', '-3.00', '-3.00', '-3.00'),
(23, 'AR', 'America/Argentina/La_Rioja', '-3.00', '-3.00', '-3.00'),
(24, 'AR', 'America/Argentina/Mendoza', '-3.00', '-3.00', '-3.00'),
(25, 'AR', 'America/Argentina/Rio_Gallegos', '-3.00', '-3.00', '-3.00'),
(26, 'AR', 'America/Argentina/Salta', '-3.00', '-3.00', '-3.00'),
(27, 'AR', 'America/Argentina/San_Juan', '-3.00', '-3.00', '-3.00'),
(28, 'AR', 'America/Argentina/San_Luis', '-3.00', '-3.00', '-3.00'),
(29, 'AR', 'America/Argentina/Tucuman', '-3.00', '-3.00', '-3.00'),
(30, 'AR', 'America/Argentina/Ushuaia', '-3.00', '-3.00', '-3.00'),
(31, 'AS', 'Pacific/Pago_Pago', '-11.00', '-11.00', '-11.00'),
(32, 'AT', 'Europe/Vienna', '1.00', '2.00', '1.00'),
(33, 'AU', 'Antarctica/Macquarie', '11.00', '11.00', '11.00'),
(34, 'AU', 'Australia/Adelaide', '10.50', '9.50', '9.50'),
(35, 'AU', 'Australia/Brisbane', '10.00', '10.00', '10.00'),
(36, 'AU', 'Australia/Broken_Hill', '10.50', '9.50', '9.50'),
(37, 'AU', 'Australia/Currie', '11.00', '10.00', '10.00'),
(38, 'AU', 'Australia/Darwin', '9.50', '9.50', '9.50'),
(39, 'AU', 'Australia/Eucla', '8.75', '8.75', '8.75'),
(40, 'AU', 'Australia/Hobart', '11.00', '10.00', '10.00'),
(41, 'AU', 'Australia/Lindeman', '10.00', '10.00', '10.00'),
(42, 'AU', 'Australia/Lord_Howe', '11.00', '10.50', '10.50'),
(43, 'AU', 'Australia/Melbourne', '11.00', '10.00', '10.00'),
(44, 'AU', 'Australia/Perth', '8.00', '8.00', '8.00'),
(45, 'AU', 'Australia/Sydney', '11.00', '10.00', '10.00'),
(46, 'AW', 'America/Aruba', '-4.00', '-4.00', '-4.00'),
(47, 'AX', 'Europe/Mariehamn', '2.00', '3.00', '2.00'),
(48, 'AZ', 'Asia/Baku', '4.00', '5.00', '4.00'),
(49, 'BA', 'Europe/Sarajevo', '1.00', '2.00', '1.00'),
(50, 'BB', 'America/Barbados', '-4.00', '-4.00', '-4.00'),
(51, 'BD', 'Asia/Dhaka', '6.00', '6.00', '6.00'),
(52, 'BE', 'Europe/Brussels', '1.00', '2.00', '1.00'),
(53, 'BF', 'Africa/Ouagadougou', '0.00', '0.00', '0.00'),
(54, 'BG', 'Europe/Sofia', '2.00', '3.00', '2.00'),
(55, 'BH', 'Asia/Bahrain', '3.00', '3.00', '3.00'),
(56, 'BI', 'Africa/Bujumbura', '2.00', '2.00', '2.00'),
(57, 'BJ', 'Africa/Porto-Novo', '1.00', '1.00', '1.00'),
(58, 'BL', 'America/St_Barthelemy', '-4.00', '-4.00', '-4.00'),
(59, 'BM', 'Atlantic/Bermuda', '-4.00', '-3.00', '-4.00'),
(60, 'BN', 'Asia/Brunei', '8.00', '8.00', '8.00'),
(61, 'BO', 'America/La_Paz', '-4.00', '-4.00', '-4.00'),
(62, 'BQ', 'America/Kralendijk', '-4.00', '-4.00', '-4.00'),
(63, 'BR', 'America/Araguaina', '-3.00', '-3.00', '-3.00'),
(64, 'BR', 'America/Bahia', '-3.00', '-3.00', '-3.00'),
(65, 'BR', 'America/Belem', '-3.00', '-3.00', '-3.00'),
(66, 'BR', 'America/Boa_Vista', '-4.00', '-4.00', '-4.00'),
(67, 'BR', 'America/Campo_Grande', '-3.00', '-4.00', '-4.00'),
(68, 'BR', 'America/Cuiaba', '-3.00', '-4.00', '-4.00'),
(69, 'BR', 'America/Eirunepe', '-5.00', '-5.00', '-5.00'),
(70, 'BR', 'America/Fortaleza', '-3.00', '-3.00', '-3.00'),
(71, 'BR', 'America/Maceio', '-3.00', '-3.00', '-3.00'),
(72, 'BR', 'America/Manaus', '-4.00', '-4.00', '-4.00'),
(73, 'BR', 'America/Noronha', '-2.00', '-2.00', '-2.00'),
(74, 'BR', 'America/Porto_Velho', '-4.00', '-4.00', '-4.00'),
(75, 'BR', 'America/Recife', '-3.00', '-3.00', '-3.00'),
(76, 'BR', 'America/Rio_Branco', '-5.00', '-5.00', '-5.00'),
(77, 'BR', 'America/Santarem', '-3.00', '-3.00', '-3.00'),
(78, 'BR', 'America/Sao_Paulo', '-2.00', '-3.00', '-3.00'),
(79, 'BS', 'America/Nassau', '-5.00', '-4.00', '-5.00'),
(80, 'BT', 'Asia/Thimphu', '6.00', '6.00', '6.00'),
(81, 'BW', 'Africa/Gaborone', '2.00', '2.00', '2.00'),
(82, 'BY', 'Europe/Minsk', '3.00', '3.00', '3.00'),
(83, 'BZ', 'America/Belize', '-6.00', '-6.00', '-6.00'),
(84, 'CA', 'America/Atikokan', '-5.00', '-5.00', '-5.00'),
(85, 'CA', 'America/Blanc-Sablon', '-4.00', '-4.00', '-4.00'),
(86, 'CA', 'America/Cambridge_Bay', '-7.00', '-6.00', '-7.00'),
(87, 'CA', 'America/Creston', '-7.00', '-7.00', '-7.00'),
(88, 'CA', 'America/Dawson', '-8.00', '-7.00', '-8.00'),
(89, 'CA', 'America/Dawson_Creek', '-7.00', '-7.00', '-7.00'),
(90, 'CA', 'America/Edmonton', '-7.00', '-6.00', '-7.00'),
(91, 'CA', 'America/Glace_Bay', '-4.00', '-3.00', '-4.00'),
(92, 'CA', 'America/Goose_Bay', '-4.00', '-3.00', '-4.00'),
(93, 'CA', 'America/Halifax', '-4.00', '-3.00', '-4.00'),
(94, 'CA', 'America/Inuvik', '-7.00', '-6.00', '-7.00'),
(95, 'CA', 'America/Iqaluit', '-5.00', '-4.00', '-5.00'),
(96, 'CA', 'America/Moncton', '-4.00', '-3.00', '-4.00'),
(97, 'CA', 'America/Montreal', '-5.00', '-4.00', '-5.00'),
(98, 'CA', 'America/Nipigon', '-5.00', '-4.00', '-5.00'),
(99, 'CA', 'America/Pangnirtung', '-5.00', '-4.00', '-5.00'),
(100, 'CA', 'America/Rainy_River', '-6.00', '-5.00', '-6.00'),
(101, 'CA', 'America/Rankin_Inlet', '-6.00', '-5.00', '-6.00'),
(102, 'CA', 'America/Regina', '-6.00', '-6.00', '-6.00'),
(103, 'CA', 'America/Resolute', '-6.00', '-5.00', '-6.00'),
(104, 'CA', 'America/St_Johns', '-3.50', '-2.50', '-3.50'),
(105, 'CA', 'America/Swift_Current', '-6.00', '-6.00', '-6.00'),
(106, 'CA', 'America/Thunder_Bay', '-5.00', '-4.00', '-5.00'),
(107, 'CA', 'America/Toronto', '-5.00', '-4.00', '-5.00'),
(108, 'CA', 'America/Vancouver', '-8.00', '-7.00', '-8.00'),
(109, 'CA', 'America/Whitehorse', '-8.00', '-7.00', '-8.00'),
(110, 'CA', 'America/Winnipeg', '-6.00', '-5.00', '-6.00'),
(111, 'CA', 'America/Yellowknife', '-7.00', '-6.00', '-7.00'),
(112, 'CC', 'Indian/Cocos', '6.50', '6.50', '6.50'),
(113, 'CD', 'Africa/Kinshasa', '1.00', '1.00', '1.00'),
(114, 'CD', 'Africa/Lubumbashi', '2.00', '2.00', '2.00'),
(115, 'CF', 'Africa/Bangui', '1.00', '1.00', '1.00'),
(116, 'CG', 'Africa/Brazzaville', '1.00', '1.00', '1.00'),
(117, 'CH', 'Europe/Zurich', '1.00', '2.00', '1.00'),
(118, 'CI', 'Africa/Abidjan', '0.00', '0.00', '0.00'),
(119, 'CK', 'Pacific/Rarotonga', '-10.00', '-10.00', '-10.00'),
(120, 'CL', 'America/Santiago', '-3.00', '-4.00', '-4.00'),
(121, 'CL', 'Pacific/Easter', '-5.00', '-6.00', '-6.00'),
(122, 'CM', 'Africa/Douala', '1.00', '1.00', '1.00'),
(123, 'CN', 'Asia/Chongqing', '8.00', '8.00', '8.00'),
(124, 'CN', 'Asia/Harbin', '8.00', '8.00', '8.00'),
(125, 'CN', 'Asia/Kashgar', '8.00', '8.00', '8.00'),
(126, 'CN', 'Asia/Shanghai', '8.00', '8.00', '8.00'),
(127, 'CN', 'Asia/Urumqi', '8.00', '8.00', '8.00'),
(128, 'CO', 'America/Bogota', '-5.00', '-5.00', '-5.00'),
(129, 'CR', 'America/Costa_Rica', '-6.00', '-6.00', '-6.00'),
(130, 'CU', 'America/Havana', '-5.00', '-4.00', '-5.00'),
(131, 'CV', 'Atlantic/Cape_Verde', '-1.00', '-1.00', '-1.00'),
(132, 'CW', 'America/Curacao', '-4.00', '-4.00', '-4.00'),
(133, 'CX', 'Indian/Christmas', '7.00', '7.00', '7.00'),
(134, 'CY', 'Asia/Nicosia', '2.00', '3.00', '2.00'),
(135, 'CZ', 'Europe/Prague', '1.00', '2.00', '1.00'),
(136, 'DE', 'Europe/Berlin', '1.00', '2.00', '1.00'),
(137, 'DE', 'Europe/Busingen', '1.00', '2.00', '1.00'),
(138, 'DJ', 'Africa/Djibouti', '3.00', '3.00', '3.00'),
(139, 'DK', 'Europe/Copenhagen', '1.00', '2.00', '1.00'),
(140, 'DM', 'America/Dominica', '-4.00', '-4.00', '-4.00'),
(141, 'DO', 'America/Santo_Domingo', '-4.00', '-4.00', '-4.00'),
(142, 'DZ', 'Africa/Algiers', '1.00', '1.00', '1.00'),
(143, 'EC', 'America/Guayaquil', '-5.00', '-5.00', '-5.00'),
(144, 'EC', 'Pacific/Galapagos', '-6.00', '-6.00', '-6.00'),
(145, 'EE', 'Europe/Tallinn', '2.00', '3.00', '2.00'),
(146, 'EG', 'Africa/Cairo', '2.00', '2.00', '2.00'),
(147, 'EH', 'Africa/El_Aaiun', '0.00', '0.00', '0.00'),
(148, 'ER', 'Africa/Asmara', '3.00', '3.00', '3.00'),
(149, 'ES', 'Africa/Ceuta', '1.00', '2.00', '1.00'),
(150, 'ES', 'Atlantic/Canary', '0.00', '1.00', '0.00'),
(151, 'ES', 'Europe/Madrid', '1.00', '2.00', '1.00'),
(152, 'ET', 'Africa/Addis_Ababa', '3.00', '3.00', '3.00'),
(153, 'FI', 'Europe/Helsinki', '2.00', '3.00', '2.00'),
(154, 'FJ', 'Pacific/Fiji', '13.00', '12.00', '12.00'),
(155, 'FK', 'Atlantic/Stanley', '-3.00', '-3.00', '-3.00'),
(156, 'FM', 'Pacific/Chuuk', '10.00', '10.00', '10.00'),
(157, 'FM', 'Pacific/Kosrae', '11.00', '11.00', '11.00'),
(158, 'FM', 'Pacific/Pohnpei', '11.00', '11.00', '11.00'),
(159, 'FO', 'Atlantic/Faroe', '0.00', '1.00', '0.00'),
(160, 'FR', 'Europe/Paris', '1.00', '2.00', '1.00'),
(161, 'GA', 'Africa/Libreville', '1.00', '1.00', '1.00'),
(162, 'GB', 'Europe/London', '0.00', '1.00', '0.00'),
(163, 'GD', 'America/Grenada', '-4.00', '-4.00', '-4.00'),
(164, 'GE', 'Asia/Tbilisi', '4.00', '4.00', '4.00'),
(165, 'GF', 'America/Cayenne', '-3.00', '-3.00', '-3.00'),
(166, 'GG', 'Europe/Guernsey', '0.00', '1.00', '0.00'),
(167, 'GH', 'Africa/Accra', '0.00', '0.00', '0.00'),
(168, 'GI', 'Europe/Gibraltar', '1.00', '2.00', '1.00'),
(169, 'GL', 'America/Danmarkshavn', '0.00', '0.00', '0.00'),
(170, 'GL', 'America/Godthab', '-3.00', '-2.00', '-3.00'),
(171, 'GL', 'America/Scoresbysund', '-1.00', '0.00', '-1.00'),
(172, 'GL', 'America/Thule', '-4.00', '-3.00', '-4.00'),
(173, 'GM', 'Africa/Banjul', '0.00', '0.00', '0.00'),
(174, 'GN', 'Africa/Conakry', '0.00', '0.00', '0.00'),
(175, 'GP', 'America/Guadeloupe', '-4.00', '-4.00', '-4.00'),
(176, 'GQ', 'Africa/Malabo', '1.00', '1.00', '1.00'),
(177, 'GR', 'Europe/Athens', '2.00', '3.00', '2.00'),
(178, 'GS', 'Atlantic/South_Georgia', '-2.00', '-2.00', '-2.00'),
(179, 'GT', 'America/Guatemala', '-6.00', '-6.00', '-6.00'),
(180, 'GU', 'Pacific/Guam', '10.00', '10.00', '10.00'),
(181, 'GW', 'Africa/Bissau', '0.00', '0.00', '0.00'),
(182, 'GY', 'America/Guyana', '-4.00', '-4.00', '-4.00'),
(183, 'HK', 'Asia/Hong_Kong', '8.00', '8.00', '8.00'),
(184, 'HN', 'America/Tegucigalpa', '-6.00', '-6.00', '-6.00'),
(185, 'HR', 'Europe/Zagreb', '1.00', '2.00', '1.00'),
(186, 'HT', 'America/Port-au-Prince', '-5.00', '-4.00', '-5.00'),
(187, 'HU', 'Europe/Budapest', '1.00', '2.00', '1.00'),
(188, 'ID', 'Asia/Jakarta', '7.00', '7.00', '7.00'),
(189, 'ID', 'Asia/Jayapura', '9.00', '9.00', '9.00'),
(190, 'ID', 'Asia/Makassar', '8.00', '8.00', '8.00'),
(191, 'ID', 'Asia/Pontianak', '7.00', '7.00', '7.00'),
(192, 'IE', 'Europe/Dublin', '0.00', '1.00', '0.00'),
(193, 'IL', 'Asia/Jerusalem', '2.00', '3.00', '2.00'),
(194, 'IM', 'Europe/Isle_of_Man', '0.00', '1.00', '0.00'),
(195, 'IN', 'Asia/Kolkata', '5.50', '5.50', '5.50'),
(196, 'IO', 'Indian/Chagos', '6.00', '6.00', '6.00'),
(197, 'IQ', 'Asia/Baghdad', '3.00', '3.00', '3.00'),
(198, 'IR', 'Asia/Tehran', '3.50', '4.50', '3.50'),
(199, 'IS', 'Atlantic/Reykjavik', '0.00', '0.00', '0.00'),
(200, 'IT', 'Europe/Rome', '1.00', '2.00', '1.00'),
(201, 'JE', 'Europe/Jersey', '0.00', '1.00', '0.00'),
(202, 'JM', 'America/Jamaica', '-5.00', '-5.00', '-5.00'),
(203, 'JO', 'Asia/Amman', '2.00', '3.00', '2.00'),
(204, 'JP', 'Asia/Tokyo', '9.00', '9.00', '9.00'),
(205, 'KE', 'Africa/Nairobi', '3.00', '3.00', '3.00'),
(206, 'KG', 'Asia/Bishkek', '6.00', '6.00', '6.00'),
(207, 'KH', 'Asia/Phnom_Penh', '7.00', '7.00', '7.00'),
(208, 'KI', 'Pacific/Enderbury', '13.00', '13.00', '13.00'),
(209, 'KI', 'Pacific/Kiritimati', '14.00', '14.00', '14.00'),
(210, 'KI', 'Pacific/Tarawa', '12.00', '12.00', '12.00'),
(211, 'KM', 'Indian/Comoro', '3.00', '3.00', '3.00'),
(212, 'KN', 'America/St_Kitts', '-4.00', '-4.00', '-4.00'),
(213, 'KP', 'Asia/Pyongyang', '9.00', '9.00', '9.00'),
(214, 'KR', 'Asia/Seoul', '9.00', '9.00', '9.00'),
(215, 'KW', 'Asia/Kuwait', '3.00', '3.00', '3.00'),
(216, 'KY', 'America/Cayman', '-5.00', '-5.00', '-5.00'),
(217, 'KZ', 'Asia/Almaty', '6.00', '6.00', '6.00'),
(218, 'KZ', 'Asia/Aqtau', '5.00', '5.00', '5.00'),
(219, 'KZ', 'Asia/Aqtobe', '5.00', '5.00', '5.00'),
(220, 'KZ', 'Asia/Oral', '5.00', '5.00', '5.00'),
(221, 'KZ', 'Asia/Qyzylorda', '6.00', '6.00', '6.00'),
(222, 'LA', 'Asia/Vientiane', '7.00', '7.00', '7.00'),
(223, 'LB', 'Asia/Beirut', '2.00', '3.00', '2.00'),
(224, 'LC', 'America/St_Lucia', '-4.00', '-4.00', '-4.00'),
(225, 'LI', 'Europe/Vaduz', '1.00', '2.00', '1.00'),
(226, 'LK', 'Asia/Colombo', '5.50', '5.50', '5.50'),
(227, 'LR', 'Africa/Monrovia', '0.00', '0.00', '0.00'),
(228, 'LS', 'Africa/Maseru', '2.00', '2.00', '2.00'),
(229, 'LT', 'Europe/Vilnius', '2.00', '3.00', '2.00'),
(230, 'LU', 'Europe/Luxembourg', '1.00', '2.00', '1.00'),
(231, 'LV', 'Europe/Riga', '2.00', '3.00', '2.00'),
(232, 'LY', 'Africa/Tripoli', '2.00', '2.00', '2.00'),
(233, 'MA', 'Africa/Casablanca', '0.00', '0.00', '0.00'),
(234, 'MC', 'Europe/Monaco', '1.00', '2.00', '1.00'),
(235, 'MD', 'Europe/Chisinau', '2.00', '3.00', '2.00'),
(236, 'ME', 'Europe/Podgorica', '1.00', '2.00', '1.00'),
(237, 'MF', 'America/Marigot', '-4.00', '-4.00', '-4.00'),
(238, 'MG', 'Indian/Antananarivo', '3.00', '3.00', '3.00'),
(239, 'MH', 'Pacific/Kwajalein', '12.00', '12.00', '12.00'),
(240, 'MH', 'Pacific/Majuro', '12.00', '12.00', '12.00'),
(241, 'MK', 'Europe/Skopje', '1.00', '2.00', '1.00'),
(242, 'ML', 'Africa/Bamako', '0.00', '0.00', '0.00'),
(243, 'MM', 'Asia/Rangoon', '6.50', '6.50', '6.50'),
(244, 'MN', 'Asia/Choibalsan', '8.00', '8.00', '8.00'),
(245, 'MN', 'Asia/Hovd', '7.00', '7.00', '7.00'),
(246, 'MN', 'Asia/Ulaanbaatar', '8.00', '8.00', '8.00'),
(247, 'MO', 'Asia/Macau', '8.00', '8.00', '8.00'),
(248, 'MP', 'Pacific/Saipan', '10.00', '10.00', '10.00'),
(249, 'MQ', 'America/Martinique', '-4.00', '-4.00', '-4.00'),
(250, 'MR', 'Africa/Nouakchott', '0.00', '0.00', '0.00'),
(251, 'MS', 'America/Montserrat', '-4.00', '-4.00', '-4.00'),
(252, 'MT', 'Europe/Malta', '1.00', '2.00', '1.00'),
(253, 'MU', 'Indian/Mauritius', '4.00', '4.00', '4.00'),
(254, 'MV', 'Indian/Maldives', '5.00', '5.00', '5.00'),
(255, 'MW', 'Africa/Blantyre', '2.00', '2.00', '2.00'),
(256, 'MX', 'America/Bahia_Banderas', '-6.00', '-5.00', '-6.00'),
(257, 'MX', 'America/Cancun', '-6.00', '-5.00', '-6.00'),
(258, 'MX', 'America/Chihuahua', '-7.00', '-6.00', '-7.00'),
(259, 'MX', 'America/Hermosillo', '-7.00', '-7.00', '-7.00'),
(260, 'MX', 'America/Matamoros', '-6.00', '-5.00', '-6.00'),
(261, 'MX', 'America/Mazatlan', '-7.00', '-6.00', '-7.00'),
(262, 'MX', 'America/Merida', '-6.00', '-5.00', '-6.00'),
(263, 'MX', 'America/Mexico_City', '-6.00', '-5.00', '-6.00'),
(264, 'MX', 'America/Monterrey', '-6.00', '-5.00', '-6.00'),
(265, 'MX', 'America/Ojinaga', '-7.00', '-6.00', '-7.00'),
(266, 'MX', 'America/Santa_Isabel', '-8.00', '-7.00', '-8.00'),
(267, 'MX', 'America/Tijuana', '-8.00', '-7.00', '-8.00'),
(268, 'MY', 'Asia/Kuala_Lumpur', '8.00', '8.00', '8.00'),
(269, 'MY', 'Asia/Kuching', '8.00', '8.00', '8.00'),
(270, 'MZ', 'Africa/Maputo', '2.00', '2.00', '2.00'),
(271, 'NA', 'Africa/Windhoek', '2.00', '1.00', '1.00'),
(272, 'NC', 'Pacific/Noumea', '11.00', '11.00', '11.00'),
(273, 'NE', 'Africa/Niamey', '1.00', '1.00', '1.00'),
(274, 'NF', 'Pacific/Norfolk', '11.50', '11.50', '11.50'),
(275, 'NG', 'Africa/Lagos', '1.00', '1.00', '1.00'),
(276, 'NI', 'America/Managua', '-6.00', '-6.00', '-6.00'),
(277, 'NL', 'Europe/Amsterdam', '1.00', '2.00', '1.00'),
(278, 'NO', 'Europe/Oslo', '1.00', '2.00', '1.00'),
(279, 'NP', 'Asia/Kathmandu', '5.75', '5.75', '5.75'),
(280, 'NR', 'Pacific/Nauru', '12.00', '12.00', '12.00'),
(281, 'NU', 'Pacific/Niue', '-11.00', '-11.00', '-11.00'),
(282, 'NZ', 'Pacific/Auckland', '13.00', '12.00', '12.00'),
(283, 'NZ', 'Pacific/Chatham', '13.75', '12.75', '12.75'),
(284, 'OM', 'Asia/Muscat', '4.00', '4.00', '4.00'),
(285, 'PA', 'America/Panama', '-5.00', '-5.00', '-5.00'),
(286, 'PE', 'America/Lima', '-5.00', '-5.00', '-5.00'),
(287, 'PF', 'Pacific/Gambier', '-9.00', '-9.00', '-9.00'),
(288, 'PF', 'Pacific/Marquesas', '-9.50', '-9.50', '-9.50'),
(289, 'PF', 'Pacific/Tahiti', '-10.00', '-10.00', '-10.00'),
(290, 'PG', 'Pacific/Port_Moresby', '10.00', '10.00', '10.00'),
(291, 'PH', 'Asia/Manila', '8.00', '8.00', '8.00'),
(292, 'PK', 'Asia/Karachi', '5.00', '5.00', '5.00'),
(293, 'PL', 'Europe/Warsaw', '1.00', '2.00', '1.00'),
(294, 'PM', 'America/Miquelon', '-3.00', '-2.00', '-3.00'),
(295, 'PN', 'Pacific/Pitcairn', '-8.00', '-8.00', '-8.00'),
(296, 'PR', 'America/Puerto_Rico', '-4.00', '-4.00', '-4.00'),
(297, 'PS', 'Asia/Gaza', '2.00', '3.00', '2.00'),
(298, 'PS', 'Asia/Hebron', '2.00', '3.00', '2.00'),
(299, 'PT', 'Atlantic/Azores', '-1.00', '0.00', '-1.00'),
(300, 'PT', 'Atlantic/Madeira', '0.00', '1.00', '0.00'),
(301, 'PT', 'Europe/Lisbon', '0.00', '1.00', '0.00'),
(302, 'PW', 'Pacific/Palau', '9.00', '9.00', '9.00'),
(303, 'PY', 'America/Asuncion', '-3.00', '-4.00', '-4.00'),
(304, 'QA', 'Asia/Qatar', '3.00', '3.00', '3.00'),
(305, 'RE', 'Indian/Reunion', '4.00', '4.00', '4.00'),
(306, 'RO', 'Europe/Bucharest', '2.00', '3.00', '2.00'),
(307, 'RS', 'Europe/Belgrade', '1.00', '2.00', '1.00'),
(308, 'RU', 'Asia/Anadyr', '12.00', '12.00', '12.00'),
(309, 'RU', 'Asia/Irkutsk', '9.00', '9.00', '9.00'),
(310, 'RU', 'Asia/Kamchatka', '12.00', '12.00', '12.00'),
(311, 'RU', 'Asia/Khandyga', '10.00', '10.00', '10.00'),
(312, 'RU', 'Asia/Krasnoyarsk', '8.00', '8.00', '8.00'),
(313, 'RU', 'Asia/Magadan', '12.00', '12.00', '12.00'),
(314, 'RU', 'Asia/Novokuznetsk', '7.00', '7.00', '7.00'),
(315, 'RU', 'Asia/Novosibirsk', '7.00', '7.00', '7.00'),
(316, 'RU', 'Asia/Omsk', '7.00', '7.00', '7.00'),
(317, 'RU', 'Asia/Sakhalin', '11.00', '11.00', '11.00'),
(318, 'RU', 'Asia/Ust-Nera', '11.00', '11.00', '11.00'),
(319, 'RU', 'Asia/Vladivostok', '11.00', '11.00', '11.00'),
(320, 'RU', 'Asia/Yakutsk', '10.00', '10.00', '10.00'),
(321, 'RU', 'Asia/Yekaterinburg', '6.00', '6.00', '6.00'),
(322, 'RU', 'Europe/Kaliningrad', '3.00', '3.00', '3.00'),
(323, 'RU', 'Europe/Moscow', '4.00', '4.00', '4.00'),
(324, 'RU', 'Europe/Samara', '4.00', '4.00', '4.00'),
(325, 'RU', 'Europe/Volgograd', '4.00', '4.00', '4.00'),
(326, 'RW', 'Africa/Kigali', '2.00', '2.00', '2.00'),
(327, 'SA', 'Asia/Riyadh', '3.00', '3.00', '3.00'),
(328, 'SB', 'Pacific/Guadalcanal', '11.00', '11.00', '11.00'),
(329, 'SC', 'Indian/Mahe', '4.00', '4.00', '4.00'),
(330, 'SD', 'Africa/Khartoum', '3.00', '3.00', '3.00'),
(331, 'SE', 'Europe/Stockholm', '1.00', '2.00', '1.00'),
(332, 'SG', 'Asia/Singapore', '8.00', '8.00', '8.00'),
(333, 'SH', 'Atlantic/St_Helena', '0.00', '0.00', '0.00'),
(334, 'SI', 'Europe/Ljubljana', '1.00', '2.00', '1.00'),
(335, 'SJ', 'Arctic/Longyearbyen', '1.00', '2.00', '1.00'),
(336, 'SK', 'Europe/Bratislava', '1.00', '2.00', '1.00'),
(337, 'SL', 'Africa/Freetown', '0.00', '0.00', '0.00'),
(338, 'SM', 'Europe/San_Marino', '1.00', '2.00', '1.00'),
(339, 'SN', 'Africa/Dakar', '0.00', '0.00', '0.00'),
(340, 'SO', 'Africa/Mogadishu', '3.00', '3.00', '3.00'),
(341, 'SR', 'America/Paramaribo', '-3.00', '-3.00', '-3.00'),
(342, 'SS', 'Africa/Juba', '3.00', '3.00', '3.00'),
(343, 'ST', 'Africa/Sao_Tome', '0.00', '0.00', '0.00'),
(344, 'SV', 'America/El_Salvador', '-6.00', '-6.00', '-6.00'),
(345, 'SX', 'America/Lower_Princes', '-4.00', '-4.00', '-4.00'),
(346, 'SY', 'Asia/Damascus', '2.00', '3.00', '2.00'),
(347, 'SZ', 'Africa/Mbabane', '2.00', '2.00', '2.00'),
(348, 'TC', 'America/Grand_Turk', '-5.00', '-4.00', '-5.00'),
(349, 'TD', 'Africa/Ndjamena', '1.00', '1.00', '1.00'),
(350, 'TF', 'Indian/Kerguelen', '5.00', '5.00', '5.00'),
(351, 'TG', 'Africa/Lome', '0.00', '0.00', '0.00'),
(352, 'TH', 'Asia/Bangkok', '7.00', '7.00', '7.00'),
(353, 'TJ', 'Asia/Dushanbe', '5.00', '5.00', '5.00'),
(354, 'TK', 'Pacific/Fakaofo', '13.00', '13.00', '13.00'),
(355, 'TL', 'Asia/Dili', '9.00', '9.00', '9.00'),
(356, 'TM', 'Asia/Ashgabat', '5.00', '5.00', '5.00'),
(357, 'TN', 'Africa/Tunis', '1.00', '1.00', '1.00'),
(358, 'TO', 'Pacific/Tongatapu', '13.00', '13.00', '13.00'),
(359, 'TR', 'Europe/Istanbul', '2.00', '3.00', '2.00'),
(360, 'TT', 'America/Port_of_Spain', '-4.00', '-4.00', '-4.00'),
(361, 'TV', 'Pacific/Funafuti', '12.00', '12.00', '12.00'),
(362, 'TW', 'Asia/Taipei', '8.00', '8.00', '8.00'),
(363, 'TZ', 'Africa/Dar_es_Salaam', '3.00', '3.00', '3.00'),
(364, 'UA', 'Europe/Kiev', '2.00', '3.00', '2.00'),
(365, 'UA', 'Europe/Simferopol', '2.00', '4.00', '4.00'),
(366, 'UA', 'Europe/Uzhgorod', '2.00', '3.00', '2.00'),
(367, 'UA', 'Europe/Zaporozhye', '2.00', '3.00', '2.00'),
(368, 'UG', 'Africa/Kampala', '3.00', '3.00', '3.00'),
(369, 'UM', 'Pacific/Johnston', '-10.00', '-10.00', '-10.00'),
(370, 'UM', 'Pacific/Midway', '-11.00', '-11.00', '-11.00'),
(371, 'UM', 'Pacific/Wake', '12.00', '12.00', '12.00'),
(372, 'US', 'America/Adak', '-10.00', '-9.00', '-10.00'),
(373, 'US', 'America/Anchorage', '-9.00', '-8.00', '-9.00'),
(374, 'US', 'America/Boise', '-7.00', '-6.00', '-7.00'),
(375, 'US', 'America/Chicago', '-6.00', '-5.00', '-6.00'),
(376, 'US', 'America/Denver', '-7.00', '-6.00', '-7.00'),
(377, 'US', 'America/Detroit', '-5.00', '-4.00', '-5.00'),
(378, 'US', 'America/Indiana/Indianapolis', '-5.00', '-4.00', '-5.00'),
(379, 'US', 'America/Indiana/Knox', '-6.00', '-5.00', '-6.00'),
(380, 'US', 'America/Indiana/Marengo', '-5.00', '-4.00', '-5.00'),
(381, 'US', 'America/Indiana/Petersburg', '-5.00', '-4.00', '-5.00'),
(382, 'US', 'America/Indiana/Tell_City', '-6.00', '-5.00', '-6.00'),
(383, 'US', 'America/Indiana/Vevay', '-5.00', '-4.00', '-5.00'),
(384, 'US', 'America/Indiana/Vincennes', '-5.00', '-4.00', '-5.00'),
(385, 'US', 'America/Indiana/Winamac', '-5.00', '-4.00', '-5.00'),
(386, 'US', 'America/Juneau', '-9.00', '-8.00', '-9.00'),
(387, 'US', 'America/Kentucky/Louisville', '-5.00', '-4.00', '-5.00'),
(388, 'US', 'America/Kentucky/Monticello', '-5.00', '-4.00', '-5.00'),
(389, 'US', 'America/Los_Angeles', '-8.00', '-7.00', '-8.00'),
(390, 'US', 'America/Menominee', '-6.00', '-5.00', '-6.00'),
(391, 'US', 'America/Metlakatla', '-8.00', '-8.00', '-8.00'),
(392, 'US', 'America/New_York', '-5.00', '-4.00', '-5.00'),
(393, 'US', 'America/Nome', '-9.00', '-8.00', '-9.00'),
(394, 'US', 'America/North_Dakota/Beulah', '-6.00', '-5.00', '-6.00'),
(395, 'US', 'America/North_Dakota/Center', '-6.00', '-5.00', '-6.00'),
(396, 'US', 'America/North_Dakota/New_Salem', '-6.00', '-5.00', '-6.00'),
(397, 'US', 'America/Phoenix', '-7.00', '-7.00', '-7.00'),
(398, 'US', 'America/Shiprock', '-7.00', '-6.00', '-7.00'),
(399, 'US', 'America/Sitka', '-9.00', '-8.00', '-9.00'),
(400, 'US', 'America/Yakutat', '-9.00', '-8.00', '-9.00'),
(401, 'US', 'Pacific/Honolulu', '-10.00', '-10.00', '-10.00'),
(402, 'UY', 'America/Montevideo', '-2.00', '-3.00', '-3.00'),
(403, 'UZ', 'Asia/Samarkand', '5.00', '5.00', '5.00'),
(404, 'UZ', 'Asia/Tashkent', '5.00', '5.00', '5.00'),
(405, 'VA', 'Europe/Vatican', '1.00', '2.00', '1.00'),
(406, 'VC', 'America/St_Vincent', '-4.00', '-4.00', '-4.00'),
(407, 'VE', 'America/Caracas', '-4.50', '-4.50', '-4.50'),
(408, 'VG', 'America/Tortola', '-4.00', '-4.00', '-4.00'),
(409, 'VI', 'America/St_Thomas', '-4.00', '-4.00', '-4.00'),
(410, 'VN', 'Asia/Ho_Chi_Minh', '7.00', '7.00', '7.00'),
(411, 'VU', 'Pacific/Efate', '11.00', '11.00', '11.00'),
(412, 'WF', 'Pacific/Wallis', '12.00', '12.00', '12.00'),
(413, 'WS', 'Pacific/Apia', '14.00', '13.00', '13.00'),
(414, 'YE', 'Asia/Aden', '3.00', '3.00', '3.00'),
(415, 'YT', 'Indian/Mayotte', '3.00', '3.00', '3.00'),
(416, 'ZA', 'Africa/Johannesburg', '2.00', '2.00', '2.00'),
(417, 'ZM', 'Africa/Lusaka', '2.00', '2.00', '2.00'),
(418, 'ZW', 'Africa/Harare', '2.00', '2.00', '2.00');

-- --------------------------------------------------------

--
-- Table structure for table `ulinks`
--

CREATE TABLE `ulinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ulinks`
--

INSERT INTO `ulinks` (`id`, `language_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(42, 176, 'About Us', 'http://example.com/', NULL, NULL),
(43, 176, 'Terms & Conditions', 'http://example.com/', NULL, NULL),
(44, 176, 'Privacy Policy', 'http://example.com/', NULL, NULL),
(45, 176, 'Contact Us', 'http://example.com/', NULL, NULL),
(46, 176, 'Our Blogs', 'http://example.com/', NULL, NULL),
(47, 177, 'معلومات عنا', 'http://example.com/', NULL, NULL),
(48, 177, 'البنود و الظروف', 'http://example.com/', NULL, NULL),
(49, 177, 'سياسة الخصوصية', 'http://example.com/', NULL, NULL),
(50, 177, 'اتصل بنا', 'http://example.com/', NULL, NULL),
(51, 177, 'مدوناتنا', 'http://example.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `online_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Active ,0 = offline',
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - verified, 0 - not verified',
  `subdomain_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - pending, 1 - connected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `photo`, `username`, `email`, `password`, `company_name`, `phone`, `city`, `state`, `address`, `country`, `remember_token`, `featured`, `status`, `online_status`, `verification_link`, `email_verified`, `subdomain_status`, `created_at`, `updated_at`) VALUES
(169, 'Marcus', 'Olmo', NULL, 'EastTex', 'easttex@example.com', '$2y$10$5iyJEtH.tkPmySd49ncDAe6NpB/XaTHSTWfThaVqvHmGkAltU8gKm', 'EastTex', '47347348', 'NIVERVILLE', 'New York', '4820 Providence Lane', 'United States', NULL, 1, 1, 1, 'd58f7731b0a963a93e02adcc85230289', 1, 0, '2021-11-14 21:18:27', '2021-11-18 00:06:05'),
(170, 'Xavier', 'Hernandez', '1637068581job-7.png', 'Kreton', 'kreton@example.com', '$2y$10$eyr9sntCwx.yUIzgyOMwnOviw02cZp8ZKO/btXDu0uPU1UeBim8MO', 'Kreton', '347347834', 'Portland', 'Washington', '2507 Mutton Town Road', 'United States', NULL, 1, 1, 1, '15bcece35c70b6e6c761163069fc26c7', 1, 0, '2021-11-16 06:47:45', '2021-11-18 00:06:04'),
(171, 'John', 'Obey', '1637145226job-8.png', 'MJSoft', 'mjsoft@example.com', '$2y$10$Y51fES.NLGJJZFCbZc7vzOdfluNxtKXYQ2jmN64crLnlD6Zz0wRua', 'MJSoft', '2362375970', 'Haughton', 'Louisiana', '3265 Tecumsah Lane', 'Canada', NULL, 1, 1, 1, 'c756fa90f911ab6b306c4a082012b1f7', 1, 0, '2021-11-17 04:30:27', '2021-11-18 00:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_basic_settings`
--

CREATE TABLE `user_basic_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ff4a17',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home_one' COMMENT 'home_one, home_two',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_quote` tinyint(4) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `qr_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `qr_size` int(11) NOT NULL DEFAULT 250,
  `qr_style` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_eye_style` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_margin` int(11) NOT NULL DEFAULT 0,
  `qr_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_text_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `qr_text_size` int(11) NOT NULL DEFAULT 15,
  `qr_text_x` int(11) NOT NULL DEFAULT 50,
  `qr_text_y` int(11) NOT NULL DEFAULT 50,
  `qr_inserted_image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_inserted_image_size` int(11) NOT NULL DEFAULT 20,
  `qr_inserted_image_x` int(11) NOT NULL DEFAULT 50,
  `qr_inserted_image_y` int(11) NOT NULL DEFAULT 50,
  `qr_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text',
  `qr_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_basic_settings`
--

INSERT INTO `user_basic_settings` (`id`, `favicon`, `breadcrumb`, `logo`, `preloader`, `base_color`, `theme`, `email`, `from_name`, `is_quote`, `user_id`, `qr_image`, `qr_color`, `qr_size`, `qr_style`, `qr_eye_style`, `qr_margin`, `qr_text`, `qr_text_color`, `qr_text_size`, `qr_text_x`, `qr_text_y`, `qr_inserted_image`, `qr_inserted_image_size`, `qr_inserted_image_x`, `qr_inserted_image_y`, `qr_type`, `qr_url`, `created_at`, `updated_at`) VALUES
(10, '60fe931084502.png', NULL, '60fe92120fba7.png', '60fe92123486dc.jpg', '4C3EC7', 'home_one', NULL, NULL, 1, 62, NULL, '000000', 0, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', NULL, '2021-07-26 01:44:34', '2021-09-21 10:10:36'),
(104, '619239135a9a3.png', NULL, '6191fc63475b4.png', '61923928cf9ba.png', 'FF4A17', 'home_one', NULL, NULL, 1, 169, '6195f83a2e9ed.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', 'http://businesso.test/EastTex', '2021-11-14 21:18:35', '2021-11-18 00:52:42'),
(105, '6193af1524df2.png', NULL, '6194de4b0b83f.png', '6193afa18faa7.png', 'ff4a17', 'home_two', NULL, NULL, 1, 170, NULL, '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', NULL, '2021-11-16 06:47:51', '2021-11-17 04:49:47'),
(106, '6194dae85798b.png', NULL, '6194db15d5ca3.png', '6195e6a37b591.png', 'ff4a17', 'home_three', NULL, NULL, 1, 171, NULL, '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default', NULL, '2021-11-17 04:30:33', '2021-11-17 23:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_blogs`
--

CREATE TABLE `user_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `language_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_blogs`
--

INSERT INTO `user_blogs` (`id`, `title`, `slug`, `image`, `content`, `serial_number`, `language_id`, `category_id`, `user_id`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(102, 'How Performance Visiblety With GitLab CI And Hood', 'how-performance-visiblety-with-gitlab-ci-and-hood', '1636966665.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 1, 183, 64, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-14 23:57:45'),
(103, 'Inspired Design Decisions With Max Huber Turne', 'inspired-design-decisions-with-max-huber-turne', '1636967126.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 2, 183, 65, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:26'),
(104, 'Understanding Machines An Open Standard For', 'understanding-machines-an-open-standard-for', '1636967139.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 3, 183, 66, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:39'),
(105, 'Lorem Ipsum has been the industry\'s standard', 'lorem-ipsum-has-been-the-industry\'s-standard', '1636967151.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 4, 183, 64, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:51'),
(106, 'Many desktop publishing packages and web page', 'many-desktop-publishing-packages-and-web-page', '1636967165.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 5, 183, 65, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:05'),
(107, 'All the Lorem Ipsum generators on the Internet', 'all-the-lorem-ipsum-generators-on-the-internet', '1636967179.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 6, 183, 66, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:19'),
(108, 'كيفية رؤية الأداء مع GitLab CI وغطاء محرك السيارة', 'كيفية-رؤية-الأداء-مع-gitlab-ci-وغطاء-محرك-السيارة', '1636966665.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 1, 184, 67, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-14 23:57:45'),
(109, 'قرارات التصميم المستوحاة من ماكس هوبر تورن', 'قرارات-التصميم-المستوحاة-من-ماكس-هوبر-تورن', '1636967126.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 2, 184, 68, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:26'),
(110, 'فهم الآلات معيار مفتوح ل', 'فهم-الآلات-معيار-مفتوح-ل', '1636967139.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 3, 184, 69, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:39'),
(111, 'كان Lorem Ipsum هو معيار الصناعة', 'كان-lorem-ipsum-هو-معيار-الصناعة', '1636967151.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 4, 184, 67, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:51'),
(112, 'العديد من حزم النشر المكتبي وصفحة الويب', 'العديد-من-حزم-النشر-المكتبي-وصفحة-الويب', '1636967165.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 5, 184, 68, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:05'),
(113, 'جميع مولدات لوريم إيبسوم على الإنترنت', 'جميع-مولدات-لوريم-إيبسوم-على-الإنترنت', '1636967179.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 6, 184, 69, 169, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:19'),
(114, 'How Performance Visiblety With GitLab CI And Hood', 'how-performance-visiblety-with-gitlab-ci-and-hood', '1636966665.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 1, 185, 70, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-14 23:57:45'),
(115, 'Inspired Design Decisions With Max Huber Turne', 'inspired-design-decisions-with-max-huber-turne', '1636967126.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 2, 185, 71, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:26'),
(116, 'Understanding Machines An Open Standard For', 'understanding-machines-an-open-standard-for', '1636967139.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 3, 185, 72, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:39'),
(117, 'Lorem Ipsum has been the industry\'s standard', 'lorem-ipsum-has-been-the-industry\'s-standard', '1636967151.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 4, 185, 70, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:51'),
(118, 'Many desktop publishing packages and web page', 'many-desktop-publishing-packages-and-web-page', '1636967165.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 5, 185, 71, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:05'),
(119, 'All the Lorem Ipsum generators on the Internet', 'all-the-lorem-ipsum-generators-on-the-internet', '1636967179.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 6, 185, 72, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:19'),
(120, 'كيفية رؤية الأداء مع GitLab CI وغطاء محرك السيارة', 'كيفية-رؤية-الأداء-مع-gitlab-ci-وغطاء-محرك-السيارة', '1636966665.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 1, 186, 73, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-14 23:57:45'),
(121, 'قرارات التصميم المستوحاة من ماكس هوبر تورن', 'قرارات-التصميم-المستوحاة-من-ماكس-هوبر-تورن', '1636967126.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 2, 186, 74, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:26'),
(122, 'فهم الآلات معيار مفتوح ل', 'فهم-الآلات-معيار-مفتوح-ل', '1636967139.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 3, 186, 75, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:39'),
(123, 'كان Lorem Ipsum هو معيار الصناعة', 'كان-lorem-ipsum-هو-معيار-الصناعة', '1636967151.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 4, 186, 73, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:51'),
(124, 'العديد من حزم النشر المكتبي وصفحة الويب', 'العديد-من-حزم-النشر-المكتبي-وصفحة-الويب', '1636967165.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 5, 186, 74, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:05'),
(125, 'جميع مولدات لوريم إيبسوم على الإنترنت', 'جميع-مولدات-لوريم-إيبسوم-على-الإنترنت', '1636967179.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 6, 186, 75, 170, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:19'),
(126, 'How Performance Visiblety With GitLab CI And Hood', 'how-performance-visiblety-with-gitlab-ci-and-hood', '1636966665.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 1, 187, 76, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-14 23:57:45'),
(127, 'Inspired Design Decisions With Max Huber Turne', 'inspired-design-decisions-with-max-huber-turne', '1636967126.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 2, 187, 77, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:26'),
(128, 'Understanding Machines An Open Standard For', 'understanding-machines-an-open-standard-for', '1636967139.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 3, 187, 78, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:39'),
(129, 'Lorem Ipsum has been the industry\'s standard', 'lorem-ipsum-has-been-the-industry\'s-standard', '1636967151.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 4, 187, 76, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:51'),
(130, 'Many desktop publishing packages and web page', 'many-desktop-publishing-packages-and-web-page', '1636967165.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 5, 187, 77, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:05'),
(131, 'All the Lorem Ipsum generators on the Internet', 'all-the-lorem-ipsum-generators-on-the-internet', '1636967179.jpg', '<p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><span style=\"font-family:Verdana;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it but who has any right to find fault with a man who chooses</span></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\"><br /></p><p style=\"color:rgb(97,97,97);font-family:\'Nunito Sans\', sans-serif;font-size:15px;\">No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>', 6, 187, 78, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:19'),
(132, 'كيفية رؤية الأداء مع GitLab CI وغطاء محرك السيارة', 'كيفية-رؤية-الأداء-مع-gitlab-ci-وغطاء-محرك-السيارة', '1636966665.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 1, 188, 79, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-14 23:57:45'),
(133, 'قرارات التصميم المستوحاة من ماكس هوبر تورن', 'قرارات-التصميم-المستوحاة-من-ماكس-هوبر-تورن', '1636967126.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 2, 188, 80, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:26'),
(134, 'فهم الآلات معيار مفتوح ل', 'فهم-الآلات-معيار-مفتوح-ل', '1636967139.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 3, 188, 81, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:39'),
(135, 'كان Lorem Ipsum هو معيار الصناعة', 'كان-lorem-ipsum-هو-معيار-الصناعة', '1636967151.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 4, 188, 79, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:05:51'),
(136, 'العديد من حزم النشر المكتبي وصفحة الويب', 'العديد-من-حزم-النشر-المكتبي-وصفحة-الويب', '1636967165.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 5, 188, 80, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:05');
INSERT INTO `user_blogs` (`id`, `title`, `slug`, `image`, `content`, `serial_number`, `language_id`, `category_id`, `user_id`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(137, 'جميع مولدات لوريم إيبسوم على الإنترنت', 'جميع-مولدات-لوريم-إيبسوم-على-الإنترنت', '1636967179.jpg', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.\r\n\r\n', 6, 188, 81, 171, NULL, NULL, '2021-11-14 23:57:45', '2021-11-15 00:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_categories`
--

CREATE TABLE `user_blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `language_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_blog_categories`
--

INSERT INTO `user_blog_categories` (`id`, `name`, `status`, `language_id`, `user_id`, `serial_number`, `created_at`, `updated_at`) VALUES
(64, 'Tech', 1, 183, 169, 1, '2021-11-14 23:55:43', '2021-11-14 23:55:43'),
(65, 'Entertainment', 1, 183, 169, 2, '2021-11-14 23:55:57', '2021-11-14 23:55:57'),
(66, 'Corporate', 1, 183, 169, 3, '2021-11-14 23:56:17', '2021-11-14 23:56:17'),
(67, 'تقنية', 1, 184, 169, 1, '2021-11-14 23:55:43', '2021-11-14 23:55:43'),
(68, 'تسلية', 1, 184, 169, 2, '2021-11-14 23:55:57', '2021-11-14 23:55:57'),
(69, 'شركة كبرى', 1, 184, 169, 3, '2021-11-14 23:56:17', '2021-11-14 23:56:17'),
(70, 'Tech', 1, 185, 170, 1, '2021-11-14 23:55:43', '2021-11-14 23:55:43'),
(71, 'Entertainment', 1, 185, 170, 2, '2021-11-14 23:55:57', '2021-11-14 23:55:57'),
(72, 'Corporate', 1, 185, 170, 3, '2021-11-14 23:56:17', '2021-11-14 23:56:17'),
(73, 'تقنية', 1, 186, 170, 1, '2021-11-14 23:55:43', '2021-11-14 23:55:43'),
(74, 'تسلية', 1, 186, 170, 2, '2021-11-14 23:55:57', '2021-11-14 23:55:57'),
(75, 'شركة كبرى', 1, 186, 170, 3, '2021-11-14 23:56:17', '2021-11-14 23:56:17'),
(76, 'Tech', 1, 187, 171, 1, '2021-11-14 23:55:43', '2021-11-14 23:55:43'),
(77, 'Entertainment', 1, 187, 171, 2, '2021-11-14 23:55:57', '2021-11-14 23:55:57'),
(78, 'Corporate', 1, 187, 171, 3, '2021-11-14 23:56:17', '2021-11-14 23:56:17'),
(79, 'تقنية', 1, 188, 171, 1, '2021-11-14 23:55:43', '2021-11-14 23:55:43'),
(80, 'تسلية', 1, 188, 171, 2, '2021-11-14 23:55:57', '2021-11-14 23:55:57'),
(81, 'شركة كبرى', 1, 188, 171, 3, '2021-11-14 23:56:17', '2021-11-14 23:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_brands`
--

CREATE TABLE `user_brands` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `brand_img` varchar(255) NOT NULL,
  `brand_url` varchar(255) NOT NULL,
  `serial_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_brands`
--

INSERT INTO `user_brands` (`id`, `user_id`, `brand_img`, `brand_url`, `serial_number`, `created_at`, `updated_at`) VALUES
(21, 169, 'eb486303456b8c47925caee964ae265bc20d2b87.png', 'http://example.com/', 1, '2021-11-15 05:18:36', '2021-11-15 05:18:36'),
(22, 169, 'a6e10c8fde72bc90db2b22091188f79e417d4413.png', 'http://example.com/', 2, '2021-11-15 05:18:44', '2021-11-15 05:18:44'),
(23, 169, '4fbff80e3f9e9ea08b12469ee3e60319d564f89b.png', 'http://example.com/', 3, '2021-11-15 05:18:56', '2021-11-15 05:18:56'),
(24, 169, 'cde024a3b2db30ba95942a52f77b87547ed05f94.png', 'http://example.com/', 4, '2021-11-15 05:19:05', '2021-11-15 05:19:05'),
(25, 169, 'afbc41af610db62a8e9531d50796cbc326f119d4.png', 'http://example.com/', 5, '2021-11-15 05:19:14', '2021-11-15 05:19:14'),
(26, 170, 'eb486303456b8c47925caee964ae265bc20d2b87.png', 'http://example.com/', 1, '2021-11-15 05:18:36', '2021-11-15 05:18:36'),
(27, 170, 'a6e10c8fde72bc90db2b22091188f79e417d4413.png', 'http://example.com/', 2, '2021-11-15 05:18:44', '2021-11-15 05:18:44'),
(28, 170, '4fbff80e3f9e9ea08b12469ee3e60319d564f89b.png', 'http://example.com/', 3, '2021-11-15 05:18:56', '2021-11-15 05:18:56'),
(29, 170, 'cde024a3b2db30ba95942a52f77b87547ed05f94.png', 'http://example.com/', 4, '2021-11-15 05:19:05', '2021-11-15 05:19:05'),
(30, 170, 'afbc41af610db62a8e9531d50796cbc326f119d4.png', 'http://example.com/', 5, '2021-11-15 05:19:14', '2021-11-15 05:19:14'),
(31, 171, 'eb486303456b8c47925caee964ae265bc20d2b87.png', 'http://example.com/', 1, '2021-11-15 05:18:36', '2021-11-15 05:18:36'),
(32, 171, 'a6e10c8fde72bc90db2b22091188f79e417d4413.png', 'http://example.com/', 2, '2021-11-15 05:18:44', '2021-11-15 05:18:44'),
(33, 171, '4fbff80e3f9e9ea08b12469ee3e60319d564f89b.png', 'http://example.com/', 3, '2021-11-15 05:18:56', '2021-11-15 05:18:56'),
(34, 171, 'cde024a3b2db30ba95942a52f77b87547ed05f94.png', 'http://example.com/', 4, '2021-11-15 05:19:05', '2021-11-15 05:19:05'),
(35, 171, 'afbc41af610db62a8e9531d50796cbc326f119d4.png', 'http://example.com/', 5, '2021-11-15 05:19:14', '2021-11-15 05:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `contact_form_image` text DEFAULT NULL,
  `contact_form_title` varchar(255) DEFAULT NULL,
  `contact_form_subtitle` varchar(255) DEFAULT NULL,
  `contact_addresses` text DEFAULT NULL,
  `contact_numbers` text DEFAULT NULL,
  `contact_mails` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `map_zoom` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_contacts`
--

INSERT INTO `user_contacts` (`id`, `contact_form_image`, `contact_form_title`, `contact_form_subtitle`, `contact_addresses`, `contact_numbers`, `contact_mails`, `latitude`, `longitude`, `map_zoom`, `user_id`, `language_id`, `created_at`, `updated_at`) VALUES
(5, 'cf7a1a499fea2a1a2f4afd121a6666a93141a714.png', 'Get In Touch', 'Need Any Help For Business & Consulting', 'Broklyn Street USA\r\nNewyork, USA', '+012 (345) 6789', 'support@gmail.com', '3.1580', '101.7118', '14', 169, 183, '2021-11-15 01:47:53', '2021-11-15 01:56:42'),
(6, 'cf7a1a499fea2a1a2f4afd121a6666a93141a714.png', 'ابقى على تواصل', 'بحاجة إلى أي مساعدة للأعمال والاستشارات', 'شارع بروكلين الولايات المتحدة الأمريكية\r\nنيويورك ، الولايات المتحدة الأمريكية', '+012 (345) 6789', 'support@gmail.com', '3.1580', '101.7118', '14', 169, 184, '2021-11-15 01:47:53', '2021-11-15 01:56:42'),
(7, 'cf7a1a499fea2a1a2f4afd121a6666a93141a714.png', 'Get In Touch', 'Need Any Help For Business & Consulting', 'Broklyn Street USA\r\nNewyork, USA', '+012 (345) 6789', 'support@gmail.com', '3.1580', '101.7118', '14', 170, 185, '2021-11-15 01:47:53', '2021-11-15 01:56:42'),
(8, 'cf7a1a499fea2a1a2f4afd121a6666a93141a714.png', 'ابقى على تواصل', 'بحاجة إلى أي مساعدة للأعمال والاستشارات', 'شارع بروكلين الولايات المتحدة الأمريكية\r\nنيويورك ، الولايات المتحدة الأمريكية', '+012 (345) 6789', 'support@gmail.com', '3.1580', '101.7118', '14', 170, 186, '2021-11-15 01:47:53', '2021-11-15 01:56:42'),
(9, 'cf7a1a499fea2a1a2f4afd121a6666a93141a714.png', 'Get In Touch', 'Need Any Help For Business & Consulting', 'Broklyn Street USA\r\nNewyork, USA', '+012 (345) 6789', 'support@gmail.com', '3.1580', '101.7118', '14', 171, 187, '2021-11-15 01:47:53', '2021-11-15 01:56:42'),
(10, 'cf7a1a499fea2a1a2f4afd121a6666a93141a714.png', 'ابقى على تواصل', 'بحاجة إلى أي مساعدة للأعمال والاستشارات', 'شارع بروكلين الولايات المتحدة الأمريكية\r\nنيويورك ، الولايات المتحدة الأمريكية', '+012 (345) 6789', 'support@gmail.com', '3.1580', '101.7118', '14', 171, 188, '2021-11-15 01:47:53', '2021-11-15 01:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_counter_informations`
--

CREATE TABLE `user_counter_informations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_counter_informations`
--

INSERT INTO `user_counter_informations` (`id`, `user_id`, `language_id`, `title`, `icon`, `count`, `serial_number`) VALUES
(73, 169, 183, 'Completed Projects', 'fas fa-laptop-code', 800, 1),
(74, 169, 183, 'Happy Customers', 'far fa-smile', 2000, 2),
(75, 169, 183, 'Countries', 'fas fa-globe-americas', 120, 3),
(76, 169, 183, 'Positive Reviews', 'far fa-star', 500, 4),
(77, 169, 184, 'المشاريع المنجزة', 'fas fa-laptop-code', 800, 1),
(78, 169, 184, 'الزبائن سعداء', 'far fa-smile', 2000, 2),
(79, 169, 184, 'بلدان', 'fas fa-globe-americas', 120, 3),
(80, 169, 184, 'مراجعات إيجابية', 'far fa-star', 500, 4),
(81, 170, 185, 'Completed Projects', 'fas fa-laptop-code', 800, 1),
(82, 170, 185, 'Happy Customers', 'far fa-smile', 2000, 2),
(83, 170, 185, 'Countries', 'fas fa-globe-americas', 120, 3),
(84, 170, 185, 'Positive Reviews', 'far fa-star', 500, 4),
(85, 170, 186, 'المشاريع المنجزة', 'fas fa-laptop-code', 800, 1),
(86, 170, 186, 'الزبائن سعداء', 'far fa-smile', 2000, 2),
(87, 170, 186, 'بلدان', 'fas fa-globe-americas', 120, 3),
(88, 170, 186, 'مراجعات إيجابية', 'far fa-star', 500, 4),
(89, 171, 187, 'Completed Projects', 'fas fa-laptop-code', 800, 1),
(90, 171, 187, 'Happy Customers', 'far fa-smile', 2000, 2),
(91, 171, 187, 'Countries', 'fas fa-globe-americas', 120, 3),
(92, 171, 187, 'Positive Reviews', 'far fa-star', 500, 4),
(93, 171, 188, 'المشاريع المنجزة', 'fas fa-laptop-code', 800, 1),
(94, 171, 188, 'الزبائن سعداء', 'far fa-smile', 2000, 2),
(95, 171, 188, 'بلدان', 'fas fa-globe-americas', 120, 3),
(96, 171, 188, 'مراجعات إيجابية', 'far fa-star', 500, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_custom_domains`
--

CREATE TABLE `user_custom_domains` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requested_domain` varchar(255) DEFAULT NULL,
  `current_domain` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0 - Pending, 1 - Connected, 2 - Rejected, 3 - Removed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_custom_domains`
--

INSERT INTO `user_custom_domains` (`id`, `user_id`, `requested_domain`, `current_domain`, `status`, `created_at`, `updated_at`) VALUES
(4, 165, 'abc.test', '0', 1, '2021-11-04 03:58:57', '2021-11-04 03:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_faqs`
--

CREATE TABLE `user_faqs` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `serial_number` int(11) NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1- featured, 0 - not featured',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_faqs`
--

INSERT INTO `user_faqs` (`id`, `language_id`, `user_id`, `question`, `answer`, `serial_number`, `featured`, `created_at`, `updated_at`) VALUES
(18, 183, 169, 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(19, 183, 169, 'If you are going to use a passage of Lorem Ipsum', 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary', 2, 0, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(20, 183, 169, 'when an unknown printer took a galley of type and scrambled', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 3, 0, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(21, 183, 169, 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(22, 183, 169, 'If you are going to use a passage of Lorem Ipsum', 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary', 2, 0, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(23, 183, 169, 'when an unknown printer took a galley of type and scrambled', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 3, 0, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(24, 183, 169, 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(27, 184, 169, 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم', 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(28, 184, 169, 'إذا كنت ستستخدم فقرة من لوريم إيبسوم', 'إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة', 2, 0, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(29, 184, 169, 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي للأحرف إلى حد ما', 3, 0, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(30, 184, 169, 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم', 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(31, 184, 169, 'إذا كنت ستستخدم فقرة من لوريم إيبسوم', 'إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة', 2, 0, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(32, 184, 169, 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي للأحرف إلى حد ما', 3, 0, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(33, 184, 169, 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم', 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(34, 185, 170, 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(35, 185, 170, 'If you are going to use a passage of Lorem Ipsum', 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary', 2, 0, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(36, 185, 170, 'when an unknown printer took a galley of type and scrambled', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 3, 0, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(37, 185, 170, 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(38, 185, 170, 'If you are going to use a passage of Lorem Ipsum', 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary', 2, 0, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(39, 185, 170, 'when an unknown printer took a galley of type and scrambled', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 3, 0, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(40, 185, 170, 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(41, 186, 170, 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم', 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(42, 186, 170, 'إذا كنت ستستخدم فقرة من لوريم إيبسوم', 'إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة', 2, 0, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(43, 186, 170, 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي للأحرف إلى حد ما', 3, 0, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(44, 186, 170, 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم', 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(45, 186, 170, 'إذا كنت ستستخدم فقرة من لوريم إيبسوم', 'إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة', 2, 0, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(46, 186, 170, 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي للأحرف إلى حد ما', 3, 0, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(47, 186, 170, 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم', 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(48, 187, 171, 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 1, 1, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(49, 187, 171, 'If you are going to use a passage of Lorem Ipsum', 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary', 2, 1, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(50, 187, 171, 'when an unknown printer took a galley of type and scrambled', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 3, 1, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(51, 187, 171, 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(52, 187, 171, 'If you are going to use a passage of Lorem Ipsum', 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary', 2, 0, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(53, 187, 171, 'when an unknown printer took a galley of type and scrambled', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 3, 0, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(54, 187, 171, 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(55, 188, 171, 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم', 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما', 1, 1, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(56, 188, 171, 'إذا كنت ستستخدم فقرة من لوريم إيبسوم', 'إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة', 2, 1, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(57, 188, 171, 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي للأحرف إلى حد ما', 3, 1, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(58, 188, 171, 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم', 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52'),
(59, 188, 171, 'إذا كنت ستستخدم فقرة من لوريم إيبسوم', 'إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة', 2, 0, '2021-11-15 04:03:38', '2021-11-15 04:03:38'),
(60, 188, 171, 'عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي للأحرف إلى حد ما', 3, 0, '2021-11-15 04:04:23', '2021-11-15 04:04:23'),
(61, 188, 171, 'هناك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم', 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما', 1, 0, '2021-11-15 03:57:52', '2021-11-15 03:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_footer_quick_links`
--

CREATE TABLE `user_footer_quick_links` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `serial_number` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_footer_quick_links`
--

INSERT INTO `user_footer_quick_links` (`id`, `language_id`, `title`, `url`, `serial_number`, `user_id`, `created_at`, `updated_at`) VALUES
(17, 183, 'About Us', 'http://example.com/', 1, 169, '2021-11-15 03:22:12', '2021-11-15 03:22:12'),
(18, 183, 'Terms & Conditions', 'http://example.com/', 2, 169, '2021-11-15 03:22:26', '2021-11-15 03:22:26'),
(19, 183, 'Privacy Policy', 'http://example.com/', 3, 169, '2021-11-15 03:22:41', '2021-11-15 03:22:41'),
(20, 183, 'Contact Us', 'http://example.com/', 4, 169, '2021-11-15 03:45:32', '2021-11-15 03:45:32'),
(21, 184, 'معلومات عنا', 'http://example.com/', 1, 169, '2021-11-15 03:22:12', '2021-11-15 03:22:12'),
(22, 184, 'البنود و الظروف', 'http://example.com/', 2, 169, '2021-11-15 03:22:26', '2021-11-15 03:22:26'),
(23, 184, 'سياسة خاصة', 'http://example.com/', 3, 169, '2021-11-15 03:22:41', '2021-11-15 03:22:41'),
(24, 184, 'اتصل بنا', 'http://example.com/', 4, 169, '2021-11-15 03:45:32', '2021-11-15 03:45:32'),
(25, 185, 'About Us', 'http://example.com/', 1, 170, '2021-11-15 03:22:12', '2021-11-15 03:22:12'),
(26, 185, 'Terms & Conditions', 'http://example.com/', 2, 170, '2021-11-15 03:22:26', '2021-11-15 03:22:26'),
(27, 185, 'Privacy Policy', 'http://example.com/', 3, 170, '2021-11-15 03:22:41', '2021-11-15 03:22:41'),
(28, 185, 'Contact Us', 'http://example.com/', 4, 170, '2021-11-15 03:45:32', '2021-11-15 03:45:32'),
(29, 186, 'معلومات عنا', 'http://example.com/', 1, 170, '2021-11-15 03:22:12', '2021-11-15 03:22:12'),
(30, 186, 'البنود و الظروف', 'http://example.com/', 2, 170, '2021-11-15 03:22:26', '2021-11-15 03:22:26'),
(31, 186, 'سياسة خاصة', 'http://example.com/', 3, 170, '2021-11-15 03:22:41', '2021-11-15 03:22:41'),
(32, 186, 'اتصل بنا', 'http://example.com/', 4, 170, '2021-11-15 03:45:32', '2021-11-15 03:45:32'),
(33, 187, 'About Us', 'http://example.com/', 1, 171, '2021-11-15 03:22:12', '2021-11-15 03:22:12'),
(34, 187, 'Terms & Conditions', 'http://example.com/', 2, 171, '2021-11-15 03:22:26', '2021-11-15 03:22:26'),
(35, 187, 'Privacy Policy', 'http://example.com/', 3, 171, '2021-11-15 03:22:41', '2021-11-15 03:22:41'),
(36, 187, 'Contact Us', 'http://example.com/', 4, 171, '2021-11-15 03:45:32', '2021-11-15 03:45:32'),
(37, 188, 'معلومات عنا', 'http://example.com/', 1, 171, '2021-11-15 03:22:12', '2021-11-15 03:22:12'),
(38, 188, 'البنود و الظروف', 'http://example.com/', 2, 171, '2021-11-15 03:22:26', '2021-11-15 03:22:26'),
(39, 188, 'سياسة خاصة', 'http://example.com/', 3, 171, '2021-11-15 03:22:41', '2021-11-15 03:22:41'),
(40, 188, 'اتصل بنا', 'http://example.com/', 4, 171, '2021-11-15 03:45:32', '2021-11-15 03:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_footer_texts`
--

CREATE TABLE `user_footer_texts` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `about_company` text DEFAULT NULL,
  `copyright_text` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_footer_texts`
--

INSERT INTO `user_footer_texts` (`id`, `language_id`, `logo`, `about_company`, `copyright_text`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 183, '2636f58042ba53a3a8b1959e290298b9987a524d.png', 'Power of choice is untrammelled &amp; when nothing prevents our being able', 'Copyright © 2021. All rights reserved by Rolan', 169, '2021-11-14 21:21:51', '2021-11-15 01:45:36'),
(7, 184, '2636f58042ba53a3a8b1959e290298b9987a524d.png', 'قوة الاختيار غير مقيدة وأمبير. عندما لا شيء يمنعنا من أن نكون قادرين', 'حقوق النشر © 2021. جميع الحقوق محفوظة لـ Rolan', 169, '2021-11-14 21:21:51', '2021-11-15 01:45:36'),
(9, 185, 'e5ee3f6d54f0664b0b3879ae334e9b24bbf58eb1.png', 'Power of choice is untrammelled &amp; when nothing prevents our being able', 'Copyright © 2021. All rights reserved by Rolan', 170, '2021-11-14 21:21:51', '2021-11-16 23:59:30'),
(10, 186, '146ebe344d8957aab6e436778c34bba190b3f1b0.png', 'قوة الاختيار غير مقيدة وأمبير. عندما لا شيء يمنعنا من أن نكون قادرين', 'حقوق النشر © 2021. جميع الحقوق محفوظة لـ Rolan', 170, '2021-11-14 21:21:51', '2021-11-16 23:59:35'),
(12, 187, 'e5ee3f6d54f0664b0b3879ae334e9b24bbf58eb1.png', 'Power of choice is untrammelled &amp; when nothing prevents our being able', 'Copyright © 2021. All rights reserved by Rolan', 171, '2021-11-14 21:21:51', '2021-11-16 23:59:30'),
(13, 188, '146ebe344d8957aab6e436778c34bba190b3f1b0.png', 'قوة الاختيار غير مقيدة وأمبير. عندما لا شيء يمنعنا من أن نكون قادرين', 'حقوق النشر © 2021. جميع الحقوق محفوظة لـ Rolan', 171, '2021-11-14 21:21:51', '2021-11-16 23:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_hero_sliders`
--

CREATE TABLE `user_hero_sliders` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `btn_name` varchar(50) DEFAULT NULL,
  `btn_url` varchar(255) DEFAULT NULL,
  `serial_number` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_hero_sliders`
--

INSERT INTO `user_hero_sliders` (`id`, `language_id`, `img`, `title`, `subtitle`, `btn_name`, `btn_url`, `serial_number`, `user_id`, `created_at`, `updated_at`) VALUES
(18, 183, 'eb484c09aed142d650b07037628b05c58de89234.jpg', 'Business & Consulting', 'Making Difference Growth Your Business With Modern Ideas', 'Our Services', 'http://example.com/', 1, 169, '2021-11-14 21:27:35', '2021-11-14 21:27:35'),
(19, 183, '27b37161b7bda5cef63b43fe200745cc78b15dcd.jpg', 'Business & Consulting', 'Making Difference Growth Your Business With Modern Ideas', 'Our Services', 'http://example.com/', 2, 169, '2021-11-14 21:27:35', '2021-11-14 21:28:31'),
(20, 183, '6e002646936fe940ca728daccb451cff78d7696f.jpg', 'Business & Consulting', 'Making Difference Growth Your Business With Modern Ideas', 'Our Services', 'http://example.com/', 3, 169, '2021-11-14 21:27:35', '2021-11-14 21:29:00'),
(21, 184, '27b37161b7bda5cef63b43fe200745cc78b15dcd.jpg', 'استشارات الاعمال', 'صنع الفارق ينمو عملك بالأفكار الحديثة', 'خدماتنا', 'http://example.com/', 2, 169, '2021-11-14 21:27:35', '2021-11-14 21:28:31'),
(22, 184, '6e002646936fe940ca728daccb451cff78d7696f.jpg', 'استشارات الاعمال', 'صنع الفارق ينمو عملك بالأفكار الحديثة', 'خدماتنا', 'http://example.com/', 3, 169, '2021-11-14 21:27:35', '2021-11-14 21:29:00'),
(23, 184, 'eb484c09aed142d650b07037628b05c58de89234.jpg', 'استشارات الاعمال', 'صنع الفارق ينمو عملك بالأفكار الحديثة', 'خدماتنا', 'http://example.com/', 1, 169, '2021-11-14 21:27:35', '2021-11-14 21:27:35'),
(24, 185, 'a1b2b98a596483b6c8c1e32b90ef8fde75a10b09.jpg', 'Take Your Great Idea To Great Business', 'Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudanti totam raperiaeaque ipsa quaeab', 'Our Services', 'http://example.com/', 1, 170, '2021-11-16 07:07:17', '2021-11-16 07:07:17'),
(25, 185, '5c11bc3c0e1825a0fd2abfad8ccd23060be8cdea.jpg', 'Take Your Great Idea To Great Business', 'Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudanti totam raperiaeaque ipsa quaeab', 'Our Services', 'http://example.com/', 2, 170, '2021-11-16 07:07:17', '2021-11-16 07:08:40'),
(26, 185, '16819a8861908d3ea0145d637fd2e1d1d8e49de3.jpg', 'Take Your Great Idea To Great Business', 'Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudanti totam raperiaeaque ipsa quaeab', 'Our Services', 'http://example.com/', 3, 170, '2021-11-16 07:07:17', '2021-11-16 07:08:51'),
(27, 186, 'a1b2b98a596483b6c8c1e32b90ef8fde75a10b09.jpg', 'خذ فكرتك العظيمة إلى عمل عظيم', 'تدرك من أين يولد كل هذا الخطأ', 'خدماتنا', 'http://example.com/', 1, 170, '2021-11-16 07:07:17', '2021-11-16 07:07:17'),
(30, 186, '8ad91c539a77b3910ca9e5b76e98c199f3294898.jpg', 'خذ فكرتك العظيمة إلى عمل عظيم', 'تدرك من أين يولد كل هذا الخطأ', 'خدماتنا', 'http://example.com/', -1, 170, '2021-11-16 07:07:17', '2021-11-17 03:56:41'),
(31, 186, 'd9f02779f78a7933f6c318c8287e0728045352c1.jpg', 'خذ فكرتك العظيمة إلى عمل عظيم', 'تدرك من أين يولد كل هذا الخطأ', 'خدماتنا', 'http://example.com/', 3, 170, '2021-11-16 07:07:17', '2021-11-17 03:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_hero_statics`
--

CREATE TABLE `user_hero_statics` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `btn_name` varchar(50) DEFAULT NULL,
  `btn_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_hero_statics`
--

INSERT INTO `user_hero_statics` (`id`, `language_id`, `user_id`, `img`, `title`, `subtitle`, `btn_name`, `btn_url`, `created_at`, `updated_at`) VALUES
(5, 187, 171, '820ff51b6c9d19e91c84207e69eafb2dab76a07f.png', 'Business & Consulting', 'Perfect Agency For Innovative Business', 'Our Services', 'http://example.com/', '2021-11-17 04:59:24', '2021-11-17 04:59:24'),
(6, 188, 171, '820ff51b6c9d19e91c84207e69eafb2dab76a07f.png', 'استشارات الاعمال', 'الوكالة المثالية للأعمال المبتكرة', 'خدماتنا', 'http://example.com/', '2021-11-17 04:59:24', '2021-11-17 04:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_home_page_texts`
--

CREATE TABLE `user_home_page_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_button_text` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_video_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_all_portfolio_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_all_blog_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_section_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_section_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_section_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_section_button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_us_section_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_us_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_us_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_us_section_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_us_section_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_us_section_button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_us_section_video_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_us_section_video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_section_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_process_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_process_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_process_section_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_process_section_img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_process_section_video_img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_process_section_video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_home_page_texts`
--

INSERT INTO `user_home_page_texts` (`id`, `about_image`, `about_title`, `about_subtitle`, `about_content`, `about_button_text`, `about_button_url`, `about_video_image`, `about_video_url`, `skills_title`, `skills_subtitle`, `skills_content`, `service_title`, `service_subtitle`, `experience_title`, `experience_subtitle`, `portfolio_title`, `portfolio_subtitle`, `view_all_portfolio_text`, `testimonial_title`, `testimonial_subtitle`, `testimonial_image`, `blog_title`, `blog_subtitle`, `view_all_blog_text`, `team_section_title`, `team_section_subtitle`, `video_section_image`, `video_section_url`, `video_section_title`, `video_section_subtitle`, `video_section_text`, `video_section_button_text`, `video_section_button_url`, `why_choose_us_section_image`, `why_choose_us_section_title`, `why_choose_us_section_subtitle`, `why_choose_us_section_text`, `why_choose_us_section_button_text`, `why_choose_us_section_button_url`, `why_choose_us_section_video_image`, `why_choose_us_section_video_url`, `faq_section_image`, `faq_section_title`, `faq_section_subtitle`, `work_process_section_title`, `work_process_section_subtitle`, `work_process_section_text`, `work_process_section_img`, `work_process_section_video_img`, `work_process_section_video_url`, `quote_section_title`, `quote_section_subtitle`, `language_id`, `user_id`, `created_at`, `updated_at`) VALUES
(46, '6191fe8b9bb4a.png', 'About Us', 'Professional Business Guidance Agency', 'Sedut perspiciatis unde omnis iste natus error sit voluptat em accusantium doloremq laudantium, totam raperiaeaque ipsa quae ab illo inventore veritatis et quasi\r\nDoloremque laudantium, totam raperiaeaque ipsa quae ab illo inventore veritatis et quasi\r\n\r\n Business &amp; Consulting Agency\r\n Awards Winning Business Comapny', 'Learn More', 'http://example.com/', NULL, NULL, 'Company Skills', 'We Have Experience For Business Planning', 'Sedut perspiciatis unde omnis iste natus error sit voluptat em accusantium doloremque laudantium, totam raperiaeaque ipsa quae ab illo inventore veritatis et quasi\r\n\r\nBut I must explain to you how all this mistaken idenouncing pleasure and praising pain was born and I will give completey account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness one rejects, dislikes, or avoid', 'Comany Services', 'We Provide Exclusive Service', NULL, NULL, 'Our Awesome Projects', 'Take a Look at Our Awesome Projects', NULL, 'Cients Sayings', 'Take a Look at  What Our Clients say', '619225036d265.png', 'Our Blogs', 'Take a Look at Our Latest News and Blog', 'View All', 'Meet Our Experts', 'We Have An Exclusive Team', 'b7f242d2fd25d497e7fca1cc48a3b147dd88e907.jpg', 'https://www.youtube.com/watch?v=vTm7t9JBGfM', 'Watch Videos', 'Exclusive Video Presentation About Recent Project', 'Ranim ad minima veniam, quis nostrum exercitationem ullam corpsuscipit laboriosam, nisi ut aliquid exea commodi consequa turuis autem', 'Need Any Project', 'http://example.com/', 'd58dc9a86f24f4e7f19db6f5024cb310ed41dbf3.png', 'Why Choose Us', 'Why Choose Rolan Business Agency', 'Sedut perspiciatis unde omnis iste natus evoluptat em accusantium doloremque laudantium\r\n\r\n Specialist Company Advisor Team\r\n Understanding Machines OpenS tandard\r\n Can Data Visualization Improve Mobile', 'Our Services', 'http://example.com/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 183, 169, '2021-11-14 21:18:27', '2021-11-15 01:38:21'),
(47, '6191fe8b9bb4a.png', 'معلومات عنا', 'وكالة إرشاد الأعمال المهنية', 'لكنك قد ترى من أين كل هذا الخطأ المولود هو متعة لأولئك الذين يتهمون ويمدحون الألم ، كل عمليات الاغتصاب التي جاءت من مخترع الحقيقة هذا ، إذا جاز التعبير.\r\nوجع التسبيح كله يغتصب من مخترع الحق وإن جاز القول\r\n\r\n الأعمال وأمبير. وكالة استشارية\r\n شركة أعمال حائزة على جوائز', 'يتعلم أكثر', 'http://example.com/', NULL, NULL, 'مهارات الشركة', 'لدينا خبرة في تخطيط الأعمال', 'لكنك ستفهم من أين يسعد كل هذا الخطأ المولود بالاتهام والتصفيق\r\n\r\nلكن يجب أن أشرح لك كيف ولد كل هذا الخطأ في تعريف اللذة والثناء على الألم ، وسأقدم وصفًا كاملاً للنظام ، وأشرح التعاليم الفعلية للمستكشف العظيم للحقيقة ، الباني البارع للسعادة البشرية الذي يرفضه المرء ، يكرهون أو تجنبها', 'خدمات الشركة', 'نحن نقدم خدمة حصرية', NULL, NULL, 'مشاريعنا الرائعة', 'الق نظرة على مشاريعنا الرائعة', NULL, 'اقوال العملاء', 'ألق نظرة على ما يقوله عملاؤنا', '619225036d265.png', 'مدوناتنا', 'ألق نظرة على آخر الأخبار والمدونة', 'مشاهدة الكل', 'تعرف على خبرائنا', 'لدينا فريق حصري', 'b7f242d2fd25d497e7fca1cc48a3b147dd88e907.jpg', 'https://www.youtube.com/watch?v=vTm7t9JBGfM', 'شاهد فيديوهات', 'عرض فيديو حصري حول المشروع الأخير', 'رنيم سيأتي على أقل تقدير ، فمن منا مستعد للقيام بأي تمرين شاق ، باستثناء الابتعاد عن عينيك والحصول على بعض المزايا', 'تحتاج أي مشروع', 'http://example.com/', 'd58dc9a86f24f4e7f19db6f5024cb310ed41dbf3.png', 'لماذا أخترتنا', 'لماذا تختار Rolan Business Agency', 'لكن ستوضح لي من أين يثير كل هذا المولود آلام أولئك الذين يتهمون ويمدحون\r\n\r\n فريق مستشار الشركة المتخصص\r\n فهم آلات OpenS\r\n هل يمكن لتصور البيانات تحسين الهاتف المحمول', 'خدماتنا', 'http://example.com/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 184, 169, '2021-11-14 21:18:27', '2021-11-15 01:38:21'),
(48, '6193b15b5032f.jpg', 'About Us', 'Professional Business Guidance Agency', 'Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam raperiaeaque ipsa quae ab illo inventore veritatis et quasi\r\n\r\nThere are many variations of passages of LoreIpsum available, but the majority have suffered\r\nIt uses a dictionary of over 200 Latin wor combined with a handful of model sentence structure\r\nRichard McClintock, a Latin profe hampden-sydney College in Virginia, looked up one more', 'Learn More', 'http://example.com/', '6193b15b5052e.jpg', 'https://www.youtube.com/watch?v=vTm7t9JBGfM', NULL, NULL, NULL, 'Comany Services', 'We Provide Exclusive Service', NULL, NULL, 'Latest Project', 'Take a Look at Our Awesome Projects', 'View All', 'Meet Our Members', 'Take a Look at  What Our Clients say', '61949b4edaaef.png', 'Latest News', 'Take a Look at Our Latest News and Blog', 'View All', NULL, NULL, '5e846b0887f43c5c4a38f1fff9d60f7813156bb2.jpg', 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Watch Our Latest Videos For Better Innovative Business', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Working Process', 'How Dose We Work', 'Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', '391a486bce84901f6eece24fd6044cae7f49607f.jpg', '7881d100bd60b5f01e5d7bf0a60a19025cd94ed5.jpg', 'https://www.youtube.com/watch?v=LIqQNG_q2us', NULL, NULL, 185, 170, '2021-11-16 06:47:45', '2021-11-17 00:04:23'),
(49, '6193b15b5032f.jpg', 'معلومات عنا', 'وكالة إرشاد الأعمال المهنية', 'لكنك ستفهم من أين كل هذا الخطأ المولود هو لذة الاتهام والثناء على الألم ، والاغتصاب كله ومثل ذلك من مخترع الحقيقة.\r\n\r\nهناك العديد من الاختلافات في مقاطع لوريس المتاحة ، لكن الغالبية عانت\r\nيستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية جنبًا إلى جنب مع حفنة من بنية الجملة النموذجية\r\nقام ريتشارد مكلينتوك ، وهو كلية لاتينية هامبدن-سيدني في فيرجينيا ، بالبحث عن واحدة أخرى', 'يتعلم أكثر', 'http://example.com/', '6193b15b5052e.jpg', 'https://www.youtube.com/watch?v=vTm7t9JBGfM', NULL, NULL, NULL, 'خدمات الشركة', 'نحن نقدم خدمة حصرية', NULL, NULL, 'أحدث مشروع', 'الق نظرة على مشاريعنا الرائعة', 'مشاهدة الكل', 'تعرف على أعضائنا', 'ألق نظرة على ما يقوله عملاؤنا', '61949b4edaaef.png', 'أحدث الأخبار', 'ألق نظرة على آخر الأخبار والمدونة', 'مشاهدة الكل', NULL, NULL, '5e846b0887f43c5c4a38f1fff9d60f7813156bb2.jpg', 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'شاهد أحدث مقاطع الفيديو الخاصة بنا للحصول على أعمال إبداعية أفضل', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'عملية العمل', 'كيف نعمل الجرعة', 'تدرك من أين يولد كل هذا الخطأ', '391a486bce84901f6eece24fd6044cae7f49607f.jpg', '7881d100bd60b5f01e5d7bf0a60a19025cd94ed5.jpg', 'https://www.youtube.com/watch?v=LIqQNG_q2us', NULL, NULL, 186, 170, '2021-11-16 06:47:45', '2021-11-17 00:04:23'),
(50, '6195f22998aac.jpg', 'About Us', 'Professional Business Guidance Agency', 'Sedut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam raperiaeaque ipsa quae ab illo inventore veritatis et quasi\r\n\r\nDoloremque laudantium, totam raperiaeaque ipsa quae ab illo inventore veritatis et quasi\r\n\r\n Business &amp; Consulting Agency\r\n Awards Winning Business Comapny\r\n Business &amp; Consulting Agency\r\n Awards Winning Business Comapny', 'Learn More', 'http://example.com/', NULL, NULL, NULL, NULL, NULL, 'Comany Services', 'We Provide Exclusive Service', NULL, NULL, 'Our Awesome Projects', 'Take a Look at Our Awesome Projects', 'View All', 'Cients Sayings', 'Take a Look at  What Our Clients say', '6195e2885a64b.jpg', NULL, NULL, NULL, 'Team Members', 'Meet Our Professional Experts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '301b9239f5acc672e89ea9ccf4f7263207458394.jpg', 'Why We Are Best ?', 'We Have Many Reasons to Choose Us', 'Sedut perspiciatis unde omnis iste natus error sit voluptat em accusantium doloremque laudantium, totam raperiaeaque ipsa quae ab illo inventore veritatis et quasi.\r\nSedut perspiciatis unde omnis iste natus error sit voluptat em accusantium doloremque laudantium, totam raperiaeaque ipsa quae ab illo inventore veritatis et quasi', 'Our Services', 'http://example.com/', 'd1d67774227ae9d427fdd391b578eb76c7ac1412.jpg', 'https://www.youtube.com/watch?v=pWOv9xcoMeY', '6195e2ad0dce3.png', 'FAQ', 'Frequently Asked Questions', 'Company Statistics', 'We Are Established For Business & Consulting Since 25 Years', 'Richard McClintock, a Latin profe hampden-sydney College in Virginia, looked up one more', NULL, NULL, NULL, 'Get A Quote', 'Feel Any Project For Business Consulting Get Started Us', 187, 171, '2021-11-17 04:30:27', '2021-11-18 00:26:49'),
(51, '6195f20f4c6c4.jpg', 'معلومات عنا', 'وكالة إرشاد الأعمال المهنية', 'لكنك ستفهم من أين كل هذا الخطأ المولود هو لذة الاتهام والثناء على الألم ، والاغتصاب كله ومثل ذلك من مخترع الحقيقة.\r\n\r\nوجع التسبيح كله يغتصب على يد مخترع الحق وإن جاز التعبير\r\n\r\n الأعمال وأمبير. وكالة استشارية\r\n شركة أعمال حائزة على جوائز\r\n الأعمال وأمبير. وكالة استشارية\r\n شركة أعمال حائزة على جوائز', 'يتعلم أكثر', 'http://example.com/', NULL, NULL, NULL, NULL, NULL, 'خدمات الشركة', 'نحن نقدم خدمة حصرية', NULL, NULL, 'مشاريعنا الرائعة', 'الق نظرة على مشاريعنا الرائعة', 'مشاهدة الكل', 'اقوال العملاء', 'ألق نظرة على ما يقوله عملاؤنا', '6195e2885a64b.jpg', NULL, NULL, NULL, 'أعضاء الفريق', 'تعرف على خبرائنا المحترفين', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '301b9239f5acc672e89ea9ccf4f7263207458394.jpg', 'لماذا نحن الأفضل؟', 'لدينا أسباب كثيرة لاختيارنا', 'لكنك ستفهم من أين يسعد كل هذا الخطأ المولود باتهام وألم أولئك الذين يمتدحونها ، وكل عمليات الاغتصاب التي هي من مخترع الحقيقة هذا وإن جاز التعبير.\r\nلكنك ستفهم من أين يسعد كل هذا الخطأ المولود بالاتهام والتصفيق', 'خدماتنا', 'http://example.com/', 'd1d67774227ae9d427fdd391b578eb76c7ac1412.jpg', 'https://www.youtube.com/watch?v=pWOv9xcoMeY', '6195e2ad0dce3.png', 'التعليمات', 'أسئلة مكررة', 'إحصائيات الشركة', 'تأسسنا للعمل والاستشارات منذ 25 عامًا', 'ريتشارد مكلينتوك ، أستاذ لاتيني جامعي هامبدن-سيدني كلية في فيرجينيا ، بحث عن واحدة أخرى', NULL, NULL, NULL, 'إقتبس', 'اشعر بأي مشروع لاستشارات الأعمال ابدأ بنا', 188, 171, '2021-11-17 04:30:27', '2021-11-18 00:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_home_sections`
--

CREATE TABLE `user_home_sections` (
  `id` int(11) NOT NULL,
  `intro_section` tinyint(4) DEFAULT 1,
  `featured_services_section` tinyint(4) DEFAULT 1,
  `video_section` tinyint(4) DEFAULT 1,
  `portfolio_section` tinyint(4) DEFAULT 1,
  `why_choose_us_section` tinyint(4) DEFAULT 1,
  `counter_info_section` tinyint(4) DEFAULT 1,
  `team_members_section` tinyint(4) DEFAULT 1,
  `skills_section` tinyint(4) DEFAULT 1,
  `testimonials_section` tinyint(4) DEFAULT 1,
  `brand_section` tinyint(4) DEFAULT 1,
  `blogs_section` tinyint(4) DEFAULT 1,
  `faq_section` tinyint(4) DEFAULT 1,
  `contact_section` tinyint(4) DEFAULT 1,
  `top_footer_section` tinyint(4) DEFAULT 1,
  `copyright_section` tinyint(4) DEFAULT 1,
  `work_process_section` tinyint(4) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_home_sections`
--

INSERT INTO `user_home_sections` (`id`, `intro_section`, `featured_services_section`, `video_section`, `portfolio_section`, `why_choose_us_section`, `counter_info_section`, `team_members_section`, `skills_section`, `testimonials_section`, `brand_section`, `blogs_section`, `faq_section`, `contact_section`, `top_footer_section`, `copyright_section`, `work_process_section`, `user_id`) VALUES
(86, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 169),
(87, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 170),
(88, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 171);

-- --------------------------------------------------------

--
-- Table structure for table `user_jcategories`
--

CREATE TABLE `user_jcategories` (
  `id` bigint(20) NOT NULL,
  `language_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_jcategories`
--

INSERT INTO `user_jcategories` (`id`, `language_id`, `user_id`, `name`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(15, 183, 169, 'Web Developer', 1, 1, '2021-11-15 03:47:43', '2021-11-15 03:47:43'),
(16, 183, 169, 'Web Designer', 1, 2, '2021-11-15 03:47:56', '2021-11-15 03:47:56'),
(17, 183, 169, 'Graphic Designer', 1, 3, '2021-11-15 03:49:22', '2021-11-15 03:49:22'),
(18, 184, 169, 'مطور ويب', 1, 1, '2021-11-15 03:47:43', '2021-11-15 03:47:43'),
(19, 184, 169, 'مصمم الويب', 1, 2, '2021-11-15 03:47:56', '2021-11-15 03:47:56'),
(20, 184, 169, 'مصمم جرافيك', 1, 3, '2021-11-15 03:49:22', '2021-11-15 03:49:22'),
(21, 185, 170, 'Web Developer', 1, 1, '2021-11-17 09:11:07', '2021-11-15 03:47:43'),
(22, 185, 170, 'Web Designer', 1, 2, '2021-11-17 09:11:07', '2021-11-15 03:47:56'),
(23, 185, 170, 'Graphic Designer', 1, 3, '2021-11-17 09:11:07', '2021-11-15 03:49:22'),
(24, 186, 170, 'مطور ويب', 1, 1, '2021-11-17 09:11:22', '2021-11-15 03:47:43'),
(25, 186, 170, 'مصمم الويب', 1, 2, '2021-11-17 09:11:22', '2021-11-15 03:47:56'),
(26, 186, 170, 'مصمم جرافيك', 1, 3, '2021-11-17 09:11:22', '2021-11-15 03:49:22'),
(27, 187, 171, 'Web Developer', 1, 1, '2021-11-18 04:41:26', '2021-11-15 03:47:43'),
(28, 187, 171, 'Web Designer', 1, 2, '2021-11-18 04:41:26', '2021-11-15 03:47:56'),
(29, 187, 171, 'Graphic Designer', 1, 3, '2021-11-18 04:41:26', '2021-11-15 03:49:22'),
(30, 188, 171, 'مطور ويب', 1, 1, '2021-11-18 04:41:42', '2021-11-15 03:47:43'),
(31, 188, 171, 'مصمم الويب', 1, 2, '2021-11-18 04:41:42', '2021-11-15 03:47:56'),
(32, 188, 171, 'مصمم جرافيك', 1, 3, '2021-11-18 04:41:42', '2021-11-15 03:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_jobs`
--

CREATE TABLE `user_jobs` (
  `id` bigint(20) NOT NULL,
  `jcategory_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `vacancy` int(11) DEFAULT NULL,
  `deadline` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `job_responsibilities` text DEFAULT NULL,
  `employment_status` varchar(255) DEFAULT NULL,
  `educational_requirements` text DEFAULT NULL,
  `experience_requirements` text DEFAULT NULL,
  `additional_requirements` text DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `salary` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `read_before_apply` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `serial_number` int(11) NOT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_jobs`
--

INSERT INTO `user_jobs` (`id`, `jcategory_id`, `language_id`, `user_id`, `title`, `slug`, `vacancy`, `deadline`, `experience`, `job_responsibilities`, `employment_status`, `educational_requirements`, `experience_requirements`, `additional_requirements`, `job_location`, `salary`, `benefits`, `read_before_apply`, `email`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(15, 15, 183, 169, 'Senior Laravel Web Developer Recruitment', 'senior-laravel-web-developer-recruitment', 3, '12/23/2021', '4', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'full-time', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'CA, USA', '4000 - 5000 USD', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(16, 16, 183, 169, 'Senior Frontend Developer Recruitment', 'senior-frontend-developer-recruitment', 3, '12/23/2021', '4', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'full-time', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'CA, USA', '4000 - 5000 USD', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(17, 17, 183, 169, 'Senior Graphic Designer Recruitment', 'senior-graphic-designer-recruitment', 3, '12/23/2021', '4', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'full-time', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'CA, USA', '4000 - 5000 USD', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(18, 18, 184, 169, 'توظيف كبار مطوري ويب Laravel', 'توظيف-كبار-مطوري-ويب-laravel', 3, '12/23/2021', '4', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'وقت كامل', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'كاليفورنيا ، الولايات المتحدة الأمريكية', '4000 - 5000 USD', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(19, 19, 184, 169, 'توظيف كبار مطوري الواجهة الأمامية', 'توظيف-كبار-مطوري-الواجهة-الأمامية', 3, '12/23/2021', '4', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'وقت كامل', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'كاليفورنيا ، الولايات المتحدة الأمريكية', '4000 - 5000 USD', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(20, 20, 184, 169, 'توظيف مصمم غرافيك أول', 'توظيف-مصمم-غرافيك-أول', 3, '12/23/2021', '4', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'وقت كامل', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'كاليفورنيا ، الولايات المتحدة الأمريكية', '4000 - 5000 USD', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(21, 21, 185, 170, 'Senior Laravel Web Developer Recruitment', 'senior-laravel-web-developer-recruitment', 3, '12/23/2021', '4', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'full-time', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'CA, USA', '4000 - 5000 USD', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(22, 22, 185, 170, 'Senior Frontend Developer Recruitment', 'senior-frontend-developer-recruitment', 3, '12/23/2021', '4', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'full-time', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'CA, USA', '4000 - 5000 USD', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(23, 23, 185, 170, 'Senior Graphic Designer Recruitment', 'senior-graphic-designer-recruitment', 3, '12/23/2021', '4', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'full-time', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'CA, USA', '4000 - 5000 USD', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(24, 24, 186, 170, 'توظيف كبار مطوري ويب Laravel', 'توظيف-كبار-مطوري-ويب-laravel', 3, '12/23/2021', '4', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'وقت كامل', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'كاليفورنيا ، الولايات المتحدة الأمريكية', '4000 - 5000 USD', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(25, 25, 186, 170, 'توظيف كبار مطوري الواجهة الأمامية', 'توظيف-كبار-مطوري-الواجهة-الأمامية', 3, '12/23/2021', '4', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'وقت كامل', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'كاليفورنيا ، الولايات المتحدة الأمريكية', '4000 - 5000 USD', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(26, 26, 186, 170, 'توظيف مصمم غرافيك أول', 'توظيف-مصمم-غرافيك-أول', 3, '12/23/2021', '4', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'وقت كامل', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'كاليفورنيا ، الولايات المتحدة الأمريكية', '4000 - 5000 USD', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(27, 27, 187, 171, 'Senior Laravel Web Developer Recruitment', 'senior-laravel-web-developer-recruitment', 3, '12/23/2021', '4', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'full-time', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'CA, USA', '4000 - 5000 USD', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(28, 28, 187, 171, 'Senior Frontend Developer Recruitment', 'senior-frontend-developer-recruitment', 3, '12/23/2021', '4', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'full-time', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'CA, USA', '4000 - 5000 USD', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(29, 29, 187, 171, 'Senior Graphic Designer Recruitment', 'senior-graphic-designer-recruitment', 3, '12/23/2021', '4', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'full-time', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'CA, USA', '4000 - 5000 USD', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', '<p><span style=\"color:rgb(0,0,0);font-family:Verdana;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators</span><br /></p>', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(30, 30, 188, 171, 'توظيف كبار مطوري ويب Laravel', 'توظيف-كبار-مطوري-ويب-laravel', 3, '12/23/2021', '4', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'وقت كامل', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'كاليفورنيا ، الولايات المتحدة الأمريكية', '4000 - 5000 USD', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(31, 31, 188, 171, 'توظيف كبار مطوري الواجهة الأمامية', 'توظيف-كبار-مطوري-الواجهة-الأمامية', 3, '12/23/2021', '4', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'وقت كامل', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'كاليفورنيا ، الولايات المتحدة الأمريكية', '4000 - 5000 USD', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24'),
(32, 32, 188, 171, 'توظيف مصمم غرافيك أول', 'توظيف-مصمم-غرافيك-أول', 3, '12/23/2021', '4', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'وقت كامل', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'كاليفورنيا ، الولايات المتحدة الأمريكية', '4000 - 5000 USD', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو', 'user@gmail.com', 1, NULL, NULL, '2021-11-15 03:50:24', '2021-11-15 03:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_languages`
--

CREATE TABLE `user_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL COMMENT '0 - LTR, 1- RTL',
  `keywords` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_languages`
--

INSERT INTO `user_languages` (`id`, `name`, `code`, `is_default`, `rtl`, `keywords`, `user_id`, `created_at`, `updated_at`) VALUES
(52, 'Default', 'de', 0, 0, '{\"Home\":\"Home\",\"Services\":\"Services\",\"Portfolios\":\"Portfolios\",\"Blog\":\"Blog\",\"Contact\":\"Contact\",\"Career\":\"Career\",\"Job_Details\":\"Job Details\",\"All\":\"All\",\"Name\":\"Name\",\"Email_Address\":\"Email Address\",\"Subject\":\"Subject\",\"Message\":\"Message\",\"Send_Message\":\"Send Message\",\"Stay_Connected\":\"Stay Connected\",\"Service_Details\":\"Service Details\",\"Categories\":\"Categories\",\"Portfolio_Details\":\"Portfolio Details\",\"Related_Portfolios\":\"Related Portfolios\",\"by\":\"by\",\"Search_Here\":\"Search Here\",\"Search_your_keyword\":\"Search your keyword\",\"Blog_Details\":\"Blog Details\",\"Facebook\":\"Facebook\",\"Twitter\":\"Twitter\",\"Linkedin\":\"Linkedin\",\"Our_Projects\":\"Our Projects\",\"Team\":\"Team\",\"Team_Members\":\"Team Members\",\"Learn_More\":\"Learn More\",\"Pages\":\"Pages\",\"Client_Name\":\"Client Name\",\"Start_Date\":\"Start Date\",\"End_Date\":\"End Date\",\"Our_Portfolio\":\"Our Portfolio\",\"Our_Services\":\"Our Services\",\"Deadline\":\"Deadline\",\"Job_Responsibilities\":\"Job Responsibilities\",\"Employment_Status\":\"Employment Status\",\"Educational_Requirements\":\"Educational Requirements\",\"years\":\"years\",\"year\":\"year\",\"Experience_Requirements\":\"Experience Requirements\",\"Additional_Requirements\":\"Additional Requirements\",\"Job_Location\":\"Job Location\",\"Salary\":\"Salary\",\"Read_Before_Apply\":\"Read Before Apply\",\"Send_your_CV_to\":\"Send your CV to\",\"Compensation_&_Other_Benefits\":\"Compensation &amp; Other Benefits\",\"SUBSCRIBE\":\"SUBSCRIBE\",\"SUBSCRIBE_FOR_NEWSLETTER\":\"SUBSCRIBE FOR NEWSLETTER\",\"Subscribe\":\"Subscribe\",\"Quick_Links\":\"Quick Links\",\"Quote\":\"Quote\",\"Submit\":\"Submit\",\"Request_A_Quote\":\"Request A Quote\",\"Testimonial\":\"Testimonial\",\"Contact_Us\": \"Contact Us\",\"FAQ\": \"FAQ\",\"Share\":\"Share\",\"Latest_Blog\": \"Latest Blog\",\"Category\":\"Category\",\"Website_Link\":\"Website Link\",\"Educational_Experience\":\"Educational Experience\",\"Work_Experience\":\"Work Experience\",\"Vacancy\":\"Vacancy\",\"Enter_Email_Address\":\"Enter Email Address\",\"Enter_Name\":\"Enter Name\",\"Only_zip_file_is_allowed\":\"Only zip file is allowed\"}', NULL, NULL, NULL),
(183, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Services\":\"Services\",\"Portfolios\":\"Portfolios\",\"Blog\":\"Blog\",\"Contact\":\"Contact\",\"Career\":\"Career\",\"Job_Details\":\"Job Details\",\"All\":\"All\",\"Name\":\"Name\",\"Email_Address\":\"Email Address\",\"Subject\":\"Subject\",\"Message\":\"Message\",\"Send_Message\":\"Send Message\",\"Stay_Connected\":\"Stay Connected\",\"Service_Details\":\"Service Details\",\"Categories\":\"Categories\",\"Portfolio_Details\":\"Portfolio Details\",\"Related_Portfolios\":\"Related Portfolios\",\"by\":\"by\",\"Search_Here\":\"Search Here\",\"Search_your_keyword\":\"Search your keyword\",\"Blog_Details\":\"Blog Details\",\"Facebook\":\"Facebook\",\"Twitter\":\"Twitter\",\"Linkedin\":\"Linkedin\",\"Our_Projects\":\"Our Projects\",\"Team\":\"Team\",\"Team_Members\":\"Team Members\",\"Learn_More\":\"Learn More\",\"Pages\":\"Pages\",\"Client_Name\":\"Client Name\",\"Start_Date\":\"Start Date\",\"End_Date\":\"End Date\",\"Our_Portfolio\":\"Our Portfolio\",\"Our_Services\":\"Our Services\",\"Deadline\":\"Deadline\",\"Job_Responsibilities\":\"Job Responsibilities\",\"Employment_Status\":\"Employment Status\",\"Educational_Requirements\":\"Educational Requirements\",\"years\":\"years\",\"year\":\"year\",\"Experience_Requirements\":\"Experience Requirements\",\"Additional_Requirements\":\"Additional Requirements\",\"Job_Location\":\"Job Location\",\"Salary\":\"Salary\",\"Read_Before_Apply\":\"Read Before Apply\",\"Send_your_CV_to\":\"Send your CV to\",\"Compensation_&_Other_Benefits\":\"Compensation &amp; Other Benefits\",\"SUBSCRIBE\":\"SUBSCRIBE\",\"SUBSCRIBE_FOR_NEWSLETTER\":\"SUBSCRIBE FOR NEWSLETTER\",\"Subscribe\":\"Subscribe\",\"Quick_Links\":\"Quick Links\",\"Quote\":\"Quote\",\"Submit\":\"Submit\",\"Request_A_Quote\":\"Request A Quote\",\"Testimonial\":\"Testimonial\",\"Contact_Us\": \"Contact Us\",\"FAQ\": \"FAQ\",\"Share\":\"Share\",\"Latest_Blog\": \"Latest Blog\",\"Category\":\"Category\",\"Website_Link\":\"Website Link\",\"Educational_Experience\":\"Educational Experience\",\"Work_Experience\":\"Work Experience\",\"Vacancy\":\"Vacancy\",\"Enter_Email_Address\":\"Enter Email Address\",\"Enter_Name\":\"Enter Name\",\"Only_zip_file_is_allowed\":\"Only zip file is allowed\"}', 169, '2021-11-14 21:18:27', '2021-11-14 21:18:27'),
(184, 'عربي', 'ar', 0, 1, '{\"Home\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\",\"Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\",\"Blog\":\"\\u0645\\u062f\\u0648\\u0646\\u0629 \\u0627\\u0648 \\u0645\\u0630\\u0643\\u0631\\u0629\",\"Contact\":\"\\u0627\\u062a\\u0635\\u0644\",\"Career\":\"\\u0645\\u0633\\u0627\\u0631 \\u0645\\u0647\\u0646\\u064a \\u0645\\u0633\\u0627\\u0631 \\u0648\\u0638\\u064a\\u0641\\u064a\",\"Job_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629\",\"All\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639\",\"Name\":\"\\u0627\\u0633\\u0645\",\"Email_Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a\",\"Message\":\"\\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send_Message\":\"\\u0623\\u0631\\u0633\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Stay_Connected\":\"\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644\",\"Service_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629\",\"Categories\":\"\\u0641\\u0626\\u0627\\u062a\",\"Portfolio_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\",\"Related_Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638 \\u0630\\u0627\\u062a \\u0627\\u0644\\u0635\\u0644\\u0629\",\"by\":\"\\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"Search_Here\":\"\\u0627\\u0628\\u062d\\u062b \\u0647\\u0646\\u0627\",\"Search_your_keyword\":\"\\u0627\\u0628\\u062d\\u062b \\u0641\\u064a \\u0643\\u0644\\u0645\\u062a\\u0643 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Blog_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629\",\"Facebook\":\"\\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a \\u0627\\u0644\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"Twitter\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"Linkedin\":\"\\u064a\\u0646\\u0643\\u062f\\u064a\\u0646\",\"Our_Projects\":\"\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639\\u0646\\u0627\",\"Team\":\"\\u0641\\u0631\\u064a\\u0642\",\"Team_Members\":\"\\u0623\\u0639\\u0636\\u0627\\u0621 \\u0627\\u0644\\u0641\\u0631\\u064a\\u0642\",\"Learn_More\":\"\\u064a\\u062a\\u0639\\u0644\\u0645 \\u0623\\u0643\\u062b\\u0631\",\"Pages\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0627\\u062a\",\"Client_Name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644\",\"Start_Date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0628\\u062f\\u0621\",\"End_Date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0646\\u062a\\u0647\\u0627\\u0621\",\"Our_Portfolio\":\"\\u0644\\u062f\\u064a\\u0646\\u0627 \\u0645\\u062d\\u0641\\u0638\\u0629\",\"Our_Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\\u0646\\u0627\",\"Deadline\":\"\\u0627\\u0644\\u0645\\u0648\\u0639\\u062f \\u0627\\u0644\\u0646\\u0647\\u0627\\u0626\\u064a\",\"Job_Responsibilities\":\"\\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644\",\"Employment_Status\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u064a\\u0629\",\"Educational_Requirements\":\"\\u0627\\u0644\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"Experience_Requirements\":\"\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u062e\\u0628\\u0631\\u0629\",\"Additional_Requirements\":\"\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629\",\"Job_Location\":\"\\u0645\\u0643\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0645\\u0644\",\"Salary\":\"\\u0645\\u0631\\u062a\\u0628\",\"Read_Before_Apply\":\"\\u0627\\u0642\\u0631\\u0623 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645\",\"Send_your_CV_to\":\"\\u0623\\u0631\\u0633\\u0644 \\u0633\\u064a\\u0631\\u062a\\u0643 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a\\u0629 \\u0625\\u0644\\u0649\",\"Compensation_&_Other_Benefits\":\"\\u0627\\u0644\\u062a\\u0639\\u0648\\u064a\\u0636\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u0632\\u0627\\u064a\\u0627 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649\",\"SUBSCRIBE\":\"\\u0627\\u0644\\u0625\\u0634\\u062a\\u0631\\u0627\\u0643\",\"SUBSCRIBE_FOR_NEWSLETTER\":\"\\u0627\\u0644\\u0627\\u0634\\u062a\\u0631\\u0627\\u0643 \\u0641\\u064a \\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\",\"Subscribe\":\"\\u0627\\u0644\\u0625\\u0634\\u062a\\u0631\\u0627\\u0643\",\"Quick_Links\":\"\\u0631\\u0648\\u0627\\u0628\\u0637 \\u0633\\u0631\\u064a\\u0639\\u0629\",\"Quote\":\"\\u0627\\u0642\\u062a\\u0628\\u0633\",\"Submit\":\"\\u064a\\u0642\\u062f\\u0645\",\"Request_A_Quote\":\"\\u0627\\u0637\\u0644\\u0628 \\u0627\\u0642\\u062a\\u0628\\u0627\\u0633\",\"Testimonial\":\"\\u0634\\u0647\\u0627\\u062f\\u0629\",\"Contact_Us\":\"\\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627\",\"FAQ\":\"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a\",\"Share\":\"\\u064a\\u0634\\u0627\\u0631\\u0643\",\"Latest_Blogs\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Category\":\"\\u0641\\u0626\\u0629\",\"Website_Link\":\"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"Educational_Experience\":\"\\u0627\\u0644\\u062e\\u0628\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"Work_Experience\":\"\\u062e\\u0628\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0645\\u0644\",\"years\":\"\\u0633\\u0646\\u0648\\u0627\\u062a\",\"year\":\"\\u0639\\u0627\\u0645\",\"Vacancy\":\"\\u062e\\u0627\\u0644\\u064a\",\"Enter_Email_Address\":\"\\u0623\\u062f\\u062e\\u0644 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Enter_Name\":\"\\u0623\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0627\\u0633\\u0645\",\"Only_zip_file_is_allowed\":\"\\u064a\\u0633\\u0645\\u062d \\u0641\\u0642\\u0637 \\u0628\\u0645\\u0644\\u0641 \\u0645\\u0636\\u063a\\u0648\\u0637\"}', 169, '2021-11-14 21:23:45', '2021-11-14 21:23:45'),
(185, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Services\":\"Services\",\"Portfolios\":\"Portfolios\",\"Blog\":\"Blog\",\"Contact\":\"Contact\",\"Career\":\"Career\",\"Job_Details\":\"Job Details\",\"All\":\"All\",\"Name\":\"Name\",\"Email_Address\":\"Email Address\",\"Subject\":\"Subject\",\"Message\":\"Message\",\"Send_Message\":\"Send Message\",\"Stay_Connected\":\"Stay Connected\",\"Service_Details\":\"Service Details\",\"Categories\":\"Categories\",\"Portfolio_Details\":\"Portfolio Details\",\"Related_Portfolios\":\"Related Portfolios\",\"by\":\"by\",\"Search_Here\":\"Search Here\",\"Search_your_keyword\":\"Search your keyword\",\"Blog_Details\":\"Blog Details\",\"Facebook\":\"Facebook\",\"Twitter\":\"Twitter\",\"Linkedin\":\"Linkedin\",\"Our_Projects\":\"Our Projects\",\"Team\":\"Team\",\"Team_Members\":\"Team Members\",\"Learn_More\":\"Learn More\",\"Pages\":\"Pages\",\"Client_Name\":\"Client Name\",\"Start_Date\":\"Start Date\",\"End_Date\":\"End Date\",\"Our_Portfolio\":\"Our Portfolio\",\"Our_Services\":\"Our Services\",\"Deadline\":\"Deadline\",\"Job_Responsibilities\":\"Job Responsibilities\",\"Employment_Status\":\"Employment Status\",\"Educational_Requirements\":\"Educational Requirements\",\"years\":\"years\",\"year\":\"year\",\"Experience_Requirements\":\"Experience Requirements\",\"Additional_Requirements\":\"Additional Requirements\",\"Job_Location\":\"Job Location\",\"Salary\":\"Salary\",\"Read_Before_Apply\":\"Read Before Apply\",\"Send_your_CV_to\":\"Send your CV to\",\"Compensation_&_Other_Benefits\":\"Compensation &amp; Other Benefits\",\"SUBSCRIBE\":\"SUBSCRIBE\",\"SUBSCRIBE_FOR_NEWSLETTER\":\"SUBSCRIBE FOR NEWSLETTER\",\"Subscribe\":\"Subscribe\",\"Quick_Links\":\"Quick Links\",\"Quote\":\"Quote\",\"Submit\":\"Submit\",\"Request_A_Quote\":\"Request A Quote\",\"Testimonial\":\"Testimonial\",\"Contact_Us\": \"Contact Us\",\"FAQ\": \"FAQ\",\"Share\":\"Share\",\"Latest_Blog\": \"Latest Blog\",\"Category\":\"Category\",\"Website_Link\":\"Website Link\",\"Educational_Experience\":\"Educational Experience\",\"Work_Experience\":\"Work Experience\",\"Vacancy\":\"Vacancy\",\"Enter_Email_Address\":\"Enter Email Address\",\"Enter_Name\":\"Enter Name\",\"Only_zip_file_is_allowed\":\"Only zip file is allowed\"}', 170, '2021-11-16 06:47:45', '2021-11-16 06:47:45'),
(186, 'عربي', 'ar', 0, 1, '{\"Home\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\",\"Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\",\"Blog\":\"\\u0645\\u062f\\u0648\\u0646\\u0629 \\u0627\\u0648 \\u0645\\u0630\\u0643\\u0631\\u0629\",\"Contact\":\"\\u0627\\u062a\\u0635\\u0644\",\"Career\":\"\\u0645\\u0633\\u0627\\u0631 \\u0645\\u0647\\u0646\\u064a \\u0645\\u0633\\u0627\\u0631 \\u0648\\u0638\\u064a\\u0641\\u064a\",\"Job_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629\",\"All\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639\",\"Name\":\"\\u0627\\u0633\\u0645\",\"Email_Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a\",\"Message\":\"\\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send_Message\":\"\\u0623\\u0631\\u0633\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Stay_Connected\":\"\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644\",\"Service_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629\",\"Categories\":\"\\u0641\\u0626\\u0627\\u062a\",\"Portfolio_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\",\"Related_Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638 \\u0630\\u0627\\u062a \\u0627\\u0644\\u0635\\u0644\\u0629\",\"by\":\"\\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"Search_Here\":\"\\u0627\\u0628\\u062d\\u062b \\u0647\\u0646\\u0627\",\"Search_your_keyword\":\"\\u0627\\u0628\\u062d\\u062b \\u0641\\u064a \\u0643\\u0644\\u0645\\u062a\\u0643 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Blog_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629\",\"Facebook\":\"\\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a \\u0627\\u0644\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"Twitter\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"Linkedin\":\"\\u064a\\u0646\\u0643\\u062f\\u064a\\u0646\",\"Our_Projects\":\"\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639\\u0646\\u0627\",\"Team\":\"\\u0641\\u0631\\u064a\\u0642\",\"Team_Members\":\"\\u0623\\u0639\\u0636\\u0627\\u0621 \\u0627\\u0644\\u0641\\u0631\\u064a\\u0642\",\"Learn_More\":\"\\u064a\\u062a\\u0639\\u0644\\u0645 \\u0623\\u0643\\u062b\\u0631\",\"Pages\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0627\\u062a\",\"Client_Name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644\",\"Start_Date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0628\\u062f\\u0621\",\"End_Date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0646\\u062a\\u0647\\u0627\\u0621\",\"Our_Portfolio\":\"\\u0644\\u062f\\u064a\\u0646\\u0627 \\u0645\\u062d\\u0641\\u0638\\u0629\",\"Our_Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\\u0646\\u0627\",\"Deadline\":\"\\u0627\\u0644\\u0645\\u0648\\u0639\\u062f \\u0627\\u0644\\u0646\\u0647\\u0627\\u0626\\u064a\",\"Job_Responsibilities\":\"\\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644\",\"Employment_Status\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u064a\\u0629\",\"Educational_Requirements\":\"\\u0627\\u0644\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"Experience_Requirements\":\"\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u062e\\u0628\\u0631\\u0629\",\"Additional_Requirements\":\"\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629\",\"Job_Location\":\"\\u0645\\u0643\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0645\\u0644\",\"Salary\":\"\\u0645\\u0631\\u062a\\u0628\",\"Read_Before_Apply\":\"\\u0627\\u0642\\u0631\\u0623 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645\",\"Send_your_CV_to\":\"\\u0623\\u0631\\u0633\\u0644 \\u0633\\u064a\\u0631\\u062a\\u0643 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a\\u0629 \\u0625\\u0644\\u0649\",\"Compensation_&_Other_Benefits\":\"\\u0627\\u0644\\u062a\\u0639\\u0648\\u064a\\u0636\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u0632\\u0627\\u064a\\u0627 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649\",\"SUBSCRIBE\":\"\\u0627\\u0644\\u0625\\u0634\\u062a\\u0631\\u0627\\u0643\",\"SUBSCRIBE_FOR_NEWSLETTER\":\"\\u0627\\u0644\\u0627\\u0634\\u062a\\u0631\\u0627\\u0643 \\u0641\\u064a \\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\",\"Subscribe\":\"\\u0627\\u0644\\u0625\\u0634\\u062a\\u0631\\u0627\\u0643\",\"Quick_Links\":\"\\u0631\\u0648\\u0627\\u0628\\u0637 \\u0633\\u0631\\u064a\\u0639\\u0629\",\"Quote\":\"\\u0627\\u0642\\u062a\\u0628\\u0633\",\"Submit\":\"\\u064a\\u0642\\u062f\\u0645\",\"Request_A_Quote\":\"\\u0627\\u0637\\u0644\\u0628 \\u0627\\u0642\\u062a\\u0628\\u0627\\u0633\",\"Testimonial\":\"\\u0634\\u0647\\u0627\\u062f\\u0629\",\"Contact_Us\":\"\\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627\",\"FAQ\":\"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a\",\"Share\":\"\\u064a\\u0634\\u0627\\u0631\\u0643\",\"Latest_Blogs\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Category\":\"\\u0641\\u0626\\u0629\",\"Website_Link\":\"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"Educational_Experience\":\"\\u0627\\u0644\\u062e\\u0628\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"Work_Experience\":\"\\u062e\\u0628\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0645\\u0644\",\"years\":\"\\u0633\\u0646\\u0648\\u0627\\u062a\",\"year\":\"\\u0639\\u0627\\u0645\",\"Vacancy\":\"\\u062e\\u0627\\u0644\\u064a\",\"Enter_Email_Address\":\"\\u0623\\u062f\\u062e\\u0644 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Enter_Name\":\"\\u0623\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0627\\u0633\\u0645\",\"Only_zip_file_is_allowed\":\"\\u064a\\u0633\\u0645\\u062d \\u0641\\u0642\\u0637 \\u0628\\u0645\\u0644\\u0641 \\u0645\\u0636\\u063a\\u0648\\u0637\"}', 170, '2021-11-16 07:00:28', '2021-11-16 07:00:28'),
(187, 'English', 'en', 1, 0, '{\"Home\":\"Home\",\"Services\":\"Services\",\"Portfolios\":\"Portfolios\",\"Blog\":\"Blog\",\"Contact\":\"Contact\",\"Career\":\"Career\",\"Job_Details\":\"Job Details\",\"All\":\"All\",\"Name\":\"Name\",\"Email_Address\":\"Email Address\",\"Subject\":\"Subject\",\"Message\":\"Message\",\"Send_Message\":\"Send Message\",\"Stay_Connected\":\"Stay Connected\",\"Service_Details\":\"Service Details\",\"Categories\":\"Categories\",\"Portfolio_Details\":\"Portfolio Details\",\"Related_Portfolios\":\"Related Portfolios\",\"by\":\"by\",\"Search_Here\":\"Search Here\",\"Search_your_keyword\":\"Search your keyword\",\"Blog_Details\":\"Blog Details\",\"Facebook\":\"Facebook\",\"Twitter\":\"Twitter\",\"Linkedin\":\"Linkedin\",\"Our_Projects\":\"Our Projects\",\"Team\":\"Team\",\"Team_Members\":\"Team Members\",\"Learn_More\":\"Learn More\",\"Pages\":\"Pages\",\"Client_Name\":\"Client Name\",\"Start_Date\":\"Start Date\",\"End_Date\":\"End Date\",\"Our_Portfolio\":\"Our Portfolio\",\"Our_Services\":\"Our Services\",\"Deadline\":\"Deadline\",\"Job_Responsibilities\":\"Job Responsibilities\",\"Employment_Status\":\"Employment Status\",\"Educational_Requirements\":\"Educational Requirements\",\"years\":\"years\",\"year\":\"year\",\"Experience_Requirements\":\"Experience Requirements\",\"Additional_Requirements\":\"Additional Requirements\",\"Job_Location\":\"Job Location\",\"Salary\":\"Salary\",\"Read_Before_Apply\":\"Read Before Apply\",\"Send_your_CV_to\":\"Send your CV to\",\"Compensation_&_Other_Benefits\":\"Compensation &amp; Other Benefits\",\"SUBSCRIBE\":\"SUBSCRIBE\",\"SUBSCRIBE_FOR_NEWSLETTER\":\"SUBSCRIBE FOR NEWSLETTER\",\"Subscribe\":\"Subscribe\",\"Quick_Links\":\"Quick Links\",\"Quote\":\"Quote\",\"Submit\":\"Submit\",\"Request_A_Quote\":\"Request A Quote\",\"Testimonial\":\"Testimonial\",\"Contact_Us\": \"Contact Us\",\"FAQ\": \"FAQ\",\"Share\":\"Share\",\"Latest_Blog\": \"Latest Blog\",\"Category\":\"Category\",\"Website_Link\":\"Website Link\",\"Educational_Experience\":\"Educational Experience\",\"Work_Experience\":\"Work Experience\",\"Vacancy\":\"Vacancy\",\"Enter_Email_Address\":\"Enter Email Address\",\"Enter_Name\":\"Enter Name\",\"Only_zip_file_is_allowed\":\"Only zip file is allowed\"}', 171, '2021-11-17 04:30:27', '2021-11-17 04:30:27'),
(188, 'عربي', 'ar', 0, 1, '{\"Home\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\",\"Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\",\"Blog\":\"\\u0645\\u062f\\u0648\\u0646\\u0629 \\u0627\\u0648 \\u0645\\u0630\\u0643\\u0631\\u0629\",\"Contact\":\"\\u0627\\u062a\\u0635\\u0644\",\"Career\":\"\\u0645\\u0633\\u0627\\u0631 \\u0645\\u0647\\u0646\\u064a \\u0645\\u0633\\u0627\\u0631 \\u0648\\u0638\\u064a\\u0641\\u064a\",\"Job_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629\",\"All\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639\",\"Name\":\"\\u0627\\u0633\\u0645\",\"Email_Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Subject\":\"\\u0645\\u0648\\u0636\\u0648\\u0639\\u0627\\u062a\",\"Message\":\"\\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send_Message\":\"\\u0623\\u0631\\u0633\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Stay_Connected\":\"\\u0627\\u0628\\u0642 \\u0639\\u0644\\u0649 \\u0627\\u062a\\u0635\\u0627\\u0644\",\"Service_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629\",\"Categories\":\"\\u0641\\u0626\\u0627\\u062a\",\"Portfolio_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\",\"Related_Portfolios\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638 \\u0630\\u0627\\u062a \\u0627\\u0644\\u0635\\u0644\\u0629\",\"by\":\"\\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\",\"Search_Here\":\"\\u0627\\u0628\\u062d\\u062b \\u0647\\u0646\\u0627\",\"Search_your_keyword\":\"\\u0627\\u0628\\u062d\\u062b \\u0641\\u064a \\u0643\\u0644\\u0645\\u062a\\u0643 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"Blog_Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629\",\"Facebook\":\"\\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a \\u0627\\u0644\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"Twitter\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"Linkedin\":\"\\u064a\\u0646\\u0643\\u062f\\u064a\\u0646\",\"Our_Projects\":\"\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639\\u0646\\u0627\",\"Team\":\"\\u0641\\u0631\\u064a\\u0642\",\"Team_Members\":\"\\u0623\\u0639\\u0636\\u0627\\u0621 \\u0627\\u0644\\u0641\\u0631\\u064a\\u0642\",\"Learn_More\":\"\\u064a\\u062a\\u0639\\u0644\\u0645 \\u0623\\u0643\\u062b\\u0631\",\"Pages\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0627\\u062a\",\"Client_Name\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644\",\"Start_Date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0628\\u062f\\u0621\",\"End_Date\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0646\\u062a\\u0647\\u0627\\u0621\",\"Our_Portfolio\":\"\\u0644\\u062f\\u064a\\u0646\\u0627 \\u0645\\u062d\\u0641\\u0638\\u0629\",\"Our_Services\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\\u0646\\u0627\",\"Deadline\":\"\\u0627\\u0644\\u0645\\u0648\\u0639\\u062f \\u0627\\u0644\\u0646\\u0647\\u0627\\u0626\\u064a\",\"Job_Responsibilities\":\"\\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644\",\"Employment_Status\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u064a\\u0629\",\"Educational_Requirements\":\"\\u0627\\u0644\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"Experience_Requirements\":\"\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u062e\\u0628\\u0631\\u0629\",\"Additional_Requirements\":\"\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629\",\"Job_Location\":\"\\u0645\\u0643\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0645\\u0644\",\"Salary\":\"\\u0645\\u0631\\u062a\\u0628\",\"Read_Before_Apply\":\"\\u0627\\u0642\\u0631\\u0623 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645\",\"Send_your_CV_to\":\"\\u0623\\u0631\\u0633\\u0644 \\u0633\\u064a\\u0631\\u062a\\u0643 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a\\u0629 \\u0625\\u0644\\u0649\",\"Compensation_&_Other_Benefits\":\"\\u0627\\u0644\\u062a\\u0639\\u0648\\u064a\\u0636\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u0632\\u0627\\u064a\\u0627 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649\",\"SUBSCRIBE\":\"\\u0627\\u0644\\u0625\\u0634\\u062a\\u0631\\u0627\\u0643\",\"SUBSCRIBE_FOR_NEWSLETTER\":\"\\u0627\\u0644\\u0627\\u0634\\u062a\\u0631\\u0627\\u0643 \\u0641\\u064a \\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\",\"Subscribe\":\"\\u0627\\u0644\\u0625\\u0634\\u062a\\u0631\\u0627\\u0643\",\"Quick_Links\":\"\\u0631\\u0648\\u0627\\u0628\\u0637 \\u0633\\u0631\\u064a\\u0639\\u0629\",\"Quote\":\"\\u0627\\u0642\\u062a\\u0628\\u0633\",\"Submit\":\"\\u064a\\u0642\\u062f\\u0645\",\"Request_A_Quote\":\"\\u0627\\u0637\\u0644\\u0628 \\u0627\\u0642\\u062a\\u0628\\u0627\\u0633\",\"Testimonial\":\"\\u0634\\u0647\\u0627\\u062f\\u0629\",\"Contact_Us\":\"\\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627\",\"FAQ\":\"\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a\",\"Share\":\"\\u064a\\u0634\\u0627\\u0631\\u0643\",\"Latest_Blogs\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"Category\":\"\\u0641\\u0626\\u0629\",\"Website_Link\":\"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"Educational_Experience\":\"\\u0627\\u0644\\u062e\\u0628\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629\",\"Work_Experience\":\"\\u062e\\u0628\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0645\\u0644\",\"years\":\"\\u0633\\u0646\\u0648\\u0627\\u062a\",\"year\":\"\\u0639\\u0627\\u0645\",\"Vacancy\":\"\\u062e\\u0627\\u0644\\u064a\",\"Enter_Email_Address\":\"\\u0623\\u062f\\u062e\\u0644 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Enter_Name\":\"\\u0623\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0627\\u0633\\u0645\",\"Only_zip_file_is_allowed\":\"\\u064a\\u0633\\u0645\\u062d \\u0641\\u0642\\u0637 \\u0628\\u0645\\u0644\\u0641 \\u0645\\u0636\\u063a\\u0648\\u0637\"}', 171, '2021-11-17 05:00:32', '2021-11-17 05:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_members`
--

CREATE TABLE `user_members` (
  `id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `rank` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_members`
--

INSERT INTO `user_members` (`id`, `language_id`, `user_id`, `name`, `rank`, `image`, `facebook`, `twitter`, `instagram`, `linkedin`, `featured`) VALUES
(24, 183, 169, 'Stuart Clark', 'CEO, Rolan', 'acd1febb23fa4b94a5bd4fedc1a27c3f7df28ece.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(25, 183, 169, 'Federico Cheisa', 'Manager, Rolan', '4e7eba710318635d8f05ccfcac8b1d5361d129ff.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(26, 183, 169, 'Dani Olmo', 'Developer, Rolan', '513e589a441846ebf507b866658495631cdb4d7c.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(27, 183, 169, 'Thiago Silva', 'Designer, Rolan', '104f6e9e54dc58e1f4fe1e80419afa126a30bb96.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(28, 183, 169, 'Thiago Motta', 'Team Leader, Rolan', 'c9a3753524b7ef640d7a1dd088392b9a360b8ff2.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 0),
(29, 183, 169, 'Chielini', 'Developer, Rolan', 'f774486cb1090ba3ced25a372f3eebd08f0b6ab4.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 0),
(30, 184, 169, 'ستيوارت كلارك', 'المدير التنفيذي ، رولاند', 'acd1febb23fa4b94a5bd4fedc1a27c3f7df28ece.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(31, 184, 169, 'فيديريكو المطارد', 'مدير رولان', '4e7eba710318635d8f05ccfcac8b1d5361d129ff.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(32, 184, 169, 'داني أولمو', 'المطور ، رولان', '513e589a441846ebf507b866658495631cdb4d7c.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(33, 184, 169, 'تياغو سيلفا', 'المصمم رولان', '104f6e9e54dc58e1f4fe1e80419afa126a30bb96.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(34, 184, 169, 'تياجو موتا', 'قائد الفريق ، رولان', 'c9a3753524b7ef640d7a1dd088392b9a360b8ff2.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 0),
(35, 184, 169, 'كيليني', 'المطور ، رولان', 'f774486cb1090ba3ced25a372f3eebd08f0b6ab4.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 0),
(36, 185, 170, 'Stuart Clark', 'CEO, Rolan', 'acd1febb23fa4b94a5bd4fedc1a27c3f7df28ece.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(37, 185, 170, 'Federico Cheisa', 'Manager, Rolan', '4e7eba710318635d8f05ccfcac8b1d5361d129ff.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(38, 185, 170, 'Dani Olmo', 'Developer, Rolan', '513e589a441846ebf507b866658495631cdb4d7c.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(39, 185, 170, 'Thiago Silva', 'Designer, Rolan', '104f6e9e54dc58e1f4fe1e80419afa126a30bb96.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(40, 185, 170, 'Thiago Motta', 'Team Leader, Rolan', 'c9a3753524b7ef640d7a1dd088392b9a360b8ff2.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 0),
(41, 185, 170, 'Chielini', 'Developer, Rolan', 'f774486cb1090ba3ced25a372f3eebd08f0b6ab4.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 0),
(42, 186, 170, 'ستيوارت كلارك', 'المدير التنفيذي ، رولاند', 'acd1febb23fa4b94a5bd4fedc1a27c3f7df28ece.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(43, 186, 170, 'فيديريكو المطارد', 'مدير رولان', '4e7eba710318635d8f05ccfcac8b1d5361d129ff.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(44, 186, 170, 'داني أولمو', 'المطور ، رولان', '513e589a441846ebf507b866658495631cdb4d7c.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(45, 186, 170, 'تياغو سيلفا', 'المصمم رولان', '104f6e9e54dc58e1f4fe1e80419afa126a30bb96.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(46, 186, 170, 'تياجو موتا', 'قائد الفريق ، رولان', 'c9a3753524b7ef640d7a1dd088392b9a360b8ff2.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 0),
(47, 186, 170, 'كيليني', 'المطور ، رولان', 'f774486cb1090ba3ced25a372f3eebd08f0b6ab4.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 0),
(48, 187, 171, 'Stuart Clark', 'CEO, Rolan', 'acd1febb23fa4b94a5bd4fedc1a27c3f7df28ece.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(49, 187, 171, 'Federico Cheisa', 'Manager, Rolan', '4e7eba710318635d8f05ccfcac8b1d5361d129ff.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(50, 187, 171, 'Dani Olmo', 'Developer, Rolan', '513e589a441846ebf507b866658495631cdb4d7c.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(51, 187, 171, 'Thiago Silva', 'Designer, Rolan', '104f6e9e54dc58e1f4fe1e80419afa126a30bb96.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(52, 187, 171, 'Thiago Motta', 'Team Leader, Rolan', 'c9a3753524b7ef640d7a1dd088392b9a360b8ff2.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(53, 187, 171, 'Chielini', 'Developer, Rolan', 'f774486cb1090ba3ced25a372f3eebd08f0b6ab4.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(54, 188, 171, 'ستيوارت كلارك', 'المدير التنفيذي ، رولاند', 'acd1febb23fa4b94a5bd4fedc1a27c3f7df28ece.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(55, 188, 171, 'فيديريكو المطارد', 'مدير رولان', '4e7eba710318635d8f05ccfcac8b1d5361d129ff.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(56, 188, 171, 'داني أولمو', 'المطور ، رولان', '513e589a441846ebf507b866658495631cdb4d7c.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(57, 188, 171, 'تياغو سيلفا', 'المصمم رولان', '104f6e9e54dc58e1f4fe1e80419afa126a30bb96.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(58, 188, 171, 'تياجو موتا', 'قائد الفريق ، رولان', 'c9a3753524b7ef640d7a1dd088392b9a360b8ff2.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1),
(59, 188, 171, 'كيليني', 'المطور ، رولان', 'f774486cb1090ba3ced25a372f3eebd08f0b6ab4.jpg', 'http://example.com/', 'http://example.com/', 'http://example.com/', 'http://example.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_menus`
--

CREATE TABLE `user_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `menus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_menus`
--

INSERT INTO `user_menus` (`id`, `user_id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(151, 169, 183, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"type\":\"custom\",\"text\":\"About\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"text\":\"Team\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]},{\"text\":\"Services\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"services\"},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Portfolios\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"portfolios\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2021-11-14 21:18:27', '2021-11-14 21:18:27'),
(153, 169, 184, '[{\"type\":\"home\",\"text\":\"الصفحة الرئيسية\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"custom\",\"text\":\"عن\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"type\":\"team\",\"text\":\"فريق\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"career\",\"text\":\"مسار مهني مسار وظيفي\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"faq\",\"text\":\"التعليمات\",\"href\":\"\",\"target\":\"_self\"}]},{\"type\":\"services\",\"text\":\"خدمات\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"blog\",\"text\":\"مدونة او مذكرة\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"portfolios\",\"text\":\"المحافظ\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"contact\",\"text\":\"اتصل\",\"href\":\"\",\"target\":\"_self\"}]', '2021-11-15 04:12:56', '2021-11-15 04:12:56'),
(154, 170, 185, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"type\":\"custom\",\"text\":\"About\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"text\":\"Team\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]},{\"text\":\"Services\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"services\"},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Portfolios\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"portfolios\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2021-11-16 06:47:45', '2021-11-16 06:47:45'),
(155, 170, 186, '[{\"type\":\"home\",\"text\":\"الصفحة الرئيسية\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"custom\",\"text\":\"عن\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"type\":\"team\",\"text\":\"فريق\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"career\",\"text\":\"مسار مهني مسار وظيفي\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"faq\",\"text\":\"التعليمات\",\"href\":\"\",\"target\":\"_self\"}]},{\"type\":\"services\",\"text\":\"خدمات\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"blog\",\"text\":\"مدونة او مذكرة\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"portfolios\",\"text\":\"المحافظ\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"contact\",\"text\":\"اتصل\",\"href\":\"\",\"target\":\"_self\"}]', '2021-11-15 04:12:56', '2021-11-15 04:12:56'),
(156, 171, 187, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"type\":\"custom\",\"text\":\"About\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"text\":\"Team\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"team\"},{\"text\":\"Career\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"}]},{\"text\":\"Services\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"services\"},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"Portfolios\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"portfolios\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2021-11-17 04:30:27', '2021-11-17 04:30:27'),
(157, 171, 188, '[{\"type\":\"home\",\"text\":\"الصفحة الرئيسية\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"custom\",\"text\":\"عن\",\"href\":\"\",\"target\":\"_self\",\"children\":[{\"type\":\"team\",\"text\":\"فريق\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"career\",\"text\":\"مسار مهني مسار وظيفي\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"faq\",\"text\":\"التعليمات\",\"href\":\"\",\"target\":\"_self\"}]},{\"type\":\"services\",\"text\":\"خدمات\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"blog\",\"text\":\"مدونة او مذكرة\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"portfolios\",\"text\":\"المحافظ\",\"href\":\"\",\"target\":\"_self\"},{\"type\":\"contact\",\"text\":\"اتصل\",\"href\":\"\",\"target\":\"_self\"}]', '2021-11-15 04:12:56', '2021-11-15 04:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_pages`
--

CREATE TABLE `user_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `package_id`, `user_id`, `permissions`, `created_at`, `updated_at`) VALUES
(131, 21, 169, '[\"Custom Domain\",\"Subdomain\",\"vCard\",\"QR Builder\",\"Follow\\/Unfollow\",\"Request a Quote\",\"Blog\",\"Portfolio\",\"Custom Page\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Career\",\"Team\",\"Contact\"]', '2021-11-14 21:18:35', '2021-11-14 21:18:35'),
(132, 21, 170, '[\"Custom Domain\",\"Subdomain\",\"vCard\",\"QR Builder\",\"Follow\\/Unfollow\",\"Request a Quote\",\"Blog\",\"Portfolio\",\"Custom Page\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Career\",\"Team\",\"Contact\"]', '2021-11-16 06:47:51', '2021-11-16 06:47:51'),
(133, 21, 171, '[\"Custom Domain\",\"Subdomain\",\"vCard\",\"QR Builder\",\"Follow\\/Unfollow\",\"Request a Quote\",\"Blog\",\"Portfolio\",\"Custom Page\",\"Counter Information\",\"Skill\",\"Service\",\"Testimonial\",\"Career\",\"Team\",\"Contact\"]', '2021-11-17 04:30:33', '2021-11-17 04:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_portfolios`
--

CREATE TABLE `user_portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int(11) NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_portfolios`
--

INSERT INTO `user_portfolios` (`id`, `title`, `slug`, `image`, `content`, `serial_number`, `status`, `client_name`, `start_date`, `submission_date`, `website_link`, `featured`, `language_id`, `category_id`, `user_id`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(113, 'Free Consulting', 'free-consulting', '1636960083.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 1, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 183, 63, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:04'),
(114, 'Business Growth', 'business-growth', '1636960072.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 2, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 183, 65, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:07:52'),
(115, 'IT Consulting', 'it-consulting', '1636960095.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 3, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 183, 64, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:15'),
(116, 'Investment Plan', 'investment-plan', '1636960121.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 4, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 183, 63, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:14'),
(117, 'Financial Planning', 'financial-planning', '1636960144.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 5, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 183, 65, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:04'),
(118, 'Relationship', 'relationship', '1636960173.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 1, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 183, 64, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:33'),
(119, 'استشارات مجانية', 'استشارات-مجانية', '1636960083.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 1, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 184, 66, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:04'),
(120, 'ازدهار العمل', 'ازدهار-العمل', '1636960072.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 2, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 184, 67, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:07:52'),
(121, 'استشارات تكنولوجيا المعلومات', 'استشارات-تكنولوجيا-المعلومات', '1636960095.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 3, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 184, 68, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:15'),
(122, 'الخطة الاستثمارية', 'الخطة-الاستثمارية', '1636960121.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 4, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 184, 66, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:14'),
(123, 'التخطيط المالي', 'التخطيط-المالي', '1636960144.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 5, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 184, 67, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:04'),
(124, 'صلة', 'صلة', '1636960173.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 1, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 184, 68, 169, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:33'),
(125, 'Free Consulting', 'free-consulting', '1636960083.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 1, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 185, 69, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:04'),
(126, 'Business Growth', 'business-growth', '1636960072.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 2, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 185, 70, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:07:52'),
(127, 'IT Consulting', 'it-consulting', '1636960095.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 3, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 185, 71, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:15'),
(128, 'Investment Plan', 'investment-plan', '1636960121.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 4, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 185, 69, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:14'),
(129, 'Financial Planning', 'financial-planning', '1636960144.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 5, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 185, 70, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:04'),
(130, 'Relationship', 'relationship', '1636960173.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 1, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 185, 71, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:33'),
(131, 'استشارات مجانية', 'استشارات-مجانية', '1636960083.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 1, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 186, 72, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:04'),
(132, 'ازدهار العمل', 'ازدهار-العمل', '1636960072.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 2, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 186, 73, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:07:52'),
(133, 'استشارات تكنولوجيا المعلومات', 'استشارات-تكنولوجيا-المعلومات', '1636960095.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 3, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 186, 74, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:15'),
(134, 'الخطة الاستثمارية', 'الخطة-الاستثمارية', '1636960121.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 4, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 186, 72, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:14'),
(135, 'التخطيط المالي', 'التخطيط-المالي', '1636960144.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 5, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 186, 73, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:04'),
(136, 'صلة', 'صلة', '1636960173.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 1, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 186, 74, 170, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:33'),
(143, 'Free Consulting', 'free-consulting', '1636960083.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 1, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 187, 75, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:04'),
(144, 'Business Growth', 'business-growth', '1636960072.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 2, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 187, 76, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:07:52'),
(145, 'IT Consulting', 'it-consulting', '1636960095.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 3, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 187, 77, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:15'),
(146, 'Investment Plan', 'investment-plan', '1636960121.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 4, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 187, 75, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:14'),
(147, 'Financial Planning', 'financial-planning', '1636960144.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 5, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 187, 76, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:04'),
(148, 'Relationship', 'relationship', '1636960173.jpg', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 1, '1', 'Jorgan Roy', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 187, 77, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:33'),
(149, 'استشارات مجانية', 'استشارات-مجانية', '1636960083.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 1, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 188, 78, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:04'),
(150, 'ازدهار العمل', 'ازدهار-العمل', '1636960072.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 2, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 188, 79, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:07:52'),
(151, 'استشارات تكنولوجيا المعلومات', 'استشارات-تكنولوجيا-المعلومات', '1636960095.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 3, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 188, 80, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:08:15'),
(152, 'الخطة الاستثمارية', 'الخطة-الاستثمارية', '1636960121.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 4, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 188, 78, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:14'),
(153, 'التخطيط المالي', 'التخطيط-المالي', '1636960144.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 5, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 188, 79, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:04'),
(154, 'صلة', 'صلة', '1636960173.jpg', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.\r\n\r\n', 1, '1', 'جورغان روي', '2021-11-19', '2021-02-09', 'http://example.com/', 1, 188, 80, 171, NULL, NULL, '2021-11-14 22:01:09', '2021-11-14 22:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_portfolio_categories`
--

CREATE TABLE `user_portfolio_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_portfolio_categories`
--

INSERT INTO `user_portfolio_categories` (`id`, `name`, `status`, `language_id`, `user_id`, `serial_number`, `created_at`, `updated_at`) VALUES
(63, 'Consulting', 1, 183, 169, 1, '2021-11-14 21:59:12', '2021-11-14 21:59:12'),
(64, 'Web Development', 1, 183, 169, 2, '2021-11-14 21:59:35', '2021-11-14 21:59:35'),
(65, 'Graphic Design', 1, 183, 169, 3, '2021-11-14 21:59:51', '2021-11-14 21:59:51'),
(66, 'مستشار', 1, 184, 169, 1, '2021-11-14 21:59:12', '2021-11-14 21:59:12'),
(67, 'تطوير الشبكة', 1, 184, 169, 2, '2021-11-14 21:59:35', '2021-11-14 21:59:35'),
(68, 'تصميم غرافيك', 1, 184, 169, 3, '2021-11-14 21:59:51', '2021-11-14 21:59:51'),
(69, 'Consulting', 1, 185, 170, 1, '2021-11-14 21:59:12', '2021-11-14 21:59:12'),
(70, 'Web Development', 1, 185, 170, 2, '2021-11-14 21:59:35', '2021-11-14 21:59:35'),
(71, 'Graphic Design', 1, 185, 170, 3, '2021-11-14 21:59:51', '2021-11-14 21:59:51'),
(72, 'مستشار', 1, 186, 170, 1, '2021-11-14 21:59:12', '2021-11-14 21:59:12'),
(73, 'تطوير الشبكة', 1, 186, 170, 2, '2021-11-14 21:59:35', '2021-11-14 21:59:35'),
(74, 'تصميم غرافيك', 1, 186, 170, 3, '2021-11-14 21:59:51', '2021-11-14 21:59:51'),
(75, 'Consulting', 1, 187, 171, 1, '2021-11-14 21:59:12', '2021-11-14 21:59:12'),
(76, 'Web Development', 1, 187, 171, 2, '2021-11-14 21:59:35', '2021-11-14 21:59:35'),
(77, 'Graphic Design', 1, 187, 171, 3, '2021-11-14 21:59:51', '2021-11-14 21:59:51'),
(78, 'مستشار', 1, 188, 171, 1, '2021-11-14 21:59:12', '2021-11-14 21:59:12'),
(79, 'تطوير الشبكة', 1, 188, 171, 2, '2021-11-14 21:59:35', '2021-11-14 21:59:35'),
(80, 'تصميم غرافيك', 1, 188, 171, 3, '2021-11-14 21:59:51', '2021-11-14 21:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_portfolio_images`
--

CREATE TABLE `user_portfolio_images` (
  `id` int(11) NOT NULL,
  `user_portfolio_id` int(11) DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_portfolio_images`
--

INSERT INTO `user_portfolio_images` (`id`, `user_portfolio_id`, `image`, `user_id`) VALUES
(353, 113, 'ec9baffdb29de326c0c80b09b0a1502041cddd94.jpg', 169),
(354, 113, '8cdcefc5ae367600857e11886c753e8198311e09.jpg', 169),
(356, 114, '2ed0646a993da183a6265510589979bc7420880f.jpg', 169),
(357, 114, 'c29917a6490e2e144098aaa140f11cfb11910524.jpg', 169),
(358, 115, 'd5fa9cb8dcf0a49297110f81b68f421b64fadc9c.jpg', 169),
(359, 115, 'f398d1e29b432cb16bad74c0b23a56c45241c005.jpg', 169),
(360, 116, 'a8258daaa2e8fe3020afdaf77b33bff96b4d9992.jpg', 169),
(361, 117, '73f3f673bd8874c9996166d3df58c75146a8c23e.jpg', 169),
(362, 118, '798de78ac21b10310178ead8e80ed3691d50b110.jpg', 169),
(363, 119, 'ec9baffdb29de326c0c80b09b0a1502041cddd94.jpg', 169),
(364, 119, '8cdcefc5ae367600857e11886c753e8198311e09.jpg', 169),
(365, 120, '2ed0646a993da183a6265510589979bc7420880f.jpg', 169),
(366, 120, 'c29917a6490e2e144098aaa140f11cfb11910524.jpg', 169),
(367, 121, 'd5fa9cb8dcf0a49297110f81b68f421b64fadc9c.jpg', 169),
(368, 121, 'f398d1e29b432cb16bad74c0b23a56c45241c005.jpg', 169),
(369, 122, 'a8258daaa2e8fe3020afdaf77b33bff96b4d9992.jpg', 169),
(370, 123, '73f3f673bd8874c9996166d3df58c75146a8c23e.jpg', 169),
(371, 124, '798de78ac21b10310178ead8e80ed3691d50b110.jpg', 169),
(372, 125, 'ec9baffdb29de326c0c80b09b0a1502041cddd94.jpg', 170),
(373, 125, '8cdcefc5ae367600857e11886c753e8198311e09.jpg', 170),
(374, 126, '2ed0646a993da183a6265510589979bc7420880f.jpg', 170),
(375, 126, 'c29917a6490e2e144098aaa140f11cfb11910524.jpg', 170),
(376, 127, 'd5fa9cb8dcf0a49297110f81b68f421b64fadc9c.jpg', 170),
(377, 127, 'f398d1e29b432cb16bad74c0b23a56c45241c005.jpg', 170),
(378, 128, 'a8258daaa2e8fe3020afdaf77b33bff96b4d9992.jpg', 170),
(379, 129, '73f3f673bd8874c9996166d3df58c75146a8c23e.jpg', 170),
(380, 130, '798de78ac21b10310178ead8e80ed3691d50b110.jpg', 170),
(381, 131, 'ec9baffdb29de326c0c80b09b0a1502041cddd94.jpg', 170),
(382, 131, '8cdcefc5ae367600857e11886c753e8198311e09.jpg', 170),
(383, 132, '2ed0646a993da183a6265510589979bc7420880f.jpg', 170),
(384, 132, 'c29917a6490e2e144098aaa140f11cfb11910524.jpg', 170),
(385, 121, 'd5fa9cb8dcf0a49297110f81b68f421b64fadc9c.jpg', 170),
(386, 133, 'f398d1e29b432cb16bad74c0b23a56c45241c005.jpg', 170),
(387, 134, 'a8258daaa2e8fe3020afdaf77b33bff96b4d9992.jpg', 170),
(388, 135, '73f3f673bd8874c9996166d3df58c75146a8c23e.jpg', 170),
(389, 136, '798de78ac21b10310178ead8e80ed3691d50b110.jpg', 170),
(390, 143, 'ec9baffdb29de326c0c80b09b0a1502041cddd94.jpg', 169),
(391, 143, '8cdcefc5ae367600857e11886c753e8198311e09.jpg', 169),
(392, 144, '2ed0646a993da183a6265510589979bc7420880f.jpg', 169),
(393, 144, 'c29917a6490e2e144098aaa140f11cfb11910524.jpg', 169),
(394, 145, 'd5fa9cb8dcf0a49297110f81b68f421b64fadc9c.jpg', 169),
(395, 145, 'f398d1e29b432cb16bad74c0b23a56c45241c005.jpg', 169),
(396, 146, 'a8258daaa2e8fe3020afdaf77b33bff96b4d9992.jpg', 169),
(397, 147, '73f3f673bd8874c9996166d3df58c75146a8c23e.jpg', 169),
(398, 148, '798de78ac21b10310178ead8e80ed3691d50b110.jpg', 169),
(399, 149, 'ec9baffdb29de326c0c80b09b0a1502041cddd94.jpg', 169),
(400, 149, '8cdcefc5ae367600857e11886c753e8198311e09.jpg', 169),
(401, 150, '2ed0646a993da183a6265510589979bc7420880f.jpg', 169),
(402, 150, 'c29917a6490e2e144098aaa140f11cfb11910524.jpg', 169),
(403, 151, 'd5fa9cb8dcf0a49297110f81b68f421b64fadc9c.jpg', 169),
(404, 151, 'f398d1e29b432cb16bad74c0b23a56c45241c005.jpg', 169),
(405, 152, 'a8258daaa2e8fe3020afdaf77b33bff96b4d9992.jpg', 169),
(406, 153, '73f3f673bd8874c9996166d3df58c75146a8c23e.jpg', 169),
(407, 154, '798de78ac21b10310178ead8e80ed3691d50b110.jpg', 169);

-- --------------------------------------------------------

--
-- Table structure for table `user_qr_codes`
--

CREATE TABLE `user_qr_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_qr_codes`
--

INSERT INTO `user_qr_codes` (`id`, `user_id`, `name`, `url`, `image`, `created_at`, `updated_at`) VALUES
(27, 169, 'vCard', 'https://businesso.xyz/EastTex/vcard/10', '6195f80257c4a.png', '2021-11-18 00:51:54', '2021-11-18 00:51:54'),
(28, 169, 'Website', 'https://businesso.xyz/EastTex', '6195f82fd5cc1.png', '2021-11-18 00:52:42', '2021-11-18 00:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_quotes`
--

CREATE TABLE `user_quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-pending, 1-prcessing, 2-completed, 3-rejected',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_quote_inputs`
--

CREATE TABLE `user_quote_inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-file',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - required, 0 - optional',
  `order_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_quote_inputs`
--

INSERT INTO `user_quote_inputs` (`id`, `language_id`, `user_id`, `type`, `label`, `name`, `placeholder`, `required`, `order_number`, `created_at`, `updated_at`) VALUES
(103, 183, 169, 2, 'Service', 'Service', 'Select a service', 1, 1, '2021-11-15 02:15:21', '2021-11-15 03:17:25'),
(104, 183, 169, 3, 'Options', 'Options', NULL, 1, 3, '2021-11-15 03:12:22', '2021-11-15 03:20:58'),
(105, 183, 169, 6, 'Estimated Date', 'Estimated_Date', 'Select Estimated Date', 1, 2, '2021-11-15 03:12:55', '2021-11-15 03:20:58'),
(106, 183, 169, 7, 'Estimated Time', 'Estimated_Time', 'Select Estimated Time', 0, 4, '2021-11-15 03:13:32', '2021-11-15 03:20:58'),
(107, 183, 169, 1, 'Porject Name', 'Porject_Name', 'Enter Porject Name', 0, 5, '2021-11-15 03:18:02', '2021-11-15 03:18:02'),
(108, 183, 169, 4, 'Project Description', 'Project_Description', 'Enter Project Description', 1, 6, '2021-11-15 03:18:26', '2021-11-15 03:18:26'),
(113, 183, 169, 5, 'Attachments', 'Attachments', NULL, 0, 7, '2021-11-15 03:20:39', '2021-11-15 03:20:39'),
(114, 184, 169, 2, 'خدمة', 'خدمة', 'اختر الخدمة', 1, 1, '2021-11-15 02:15:21', '2021-11-15 03:17:25'),
(115, 184, 169, 3, 'خيارات', 'خيارات', NULL, 1, 3, '2021-11-15 03:12:22', '2021-11-15 03:20:58'),
(116, 184, 169, 6, 'التاريخ المتوقع', 'التاريخ_المتوقع', 'حدد التاريخ المقدر', 1, 2, '2021-11-15 03:12:55', '2021-11-15 03:20:58'),
(117, 184, 169, 7, 'الوقت المقدر', 'الوقت_المقدر', 'حدد الوقت المقدر', 0, 4, '2021-11-15 03:13:32', '2021-11-15 03:20:58'),
(118, 184, 169, 1, 'اسم المشروع', 'اسم_المشروع', 'أدخل اسم المشروع', 0, 5, '2021-11-15 03:18:02', '2021-11-15 03:18:02'),
(119, 184, 169, 4, 'وصف المشروع', 'وصف_المشروع', 'أدخل وصف المشروع', 1, 6, '2021-11-15 03:18:26', '2021-11-15 03:18:26'),
(120, 184, 169, 5, 'المرفقات', 'المرفقات', NULL, 0, 7, '2021-11-15 03:20:39', '2021-11-15 03:20:39'),
(121, 185, 170, 2, 'Service', 'Service', 'Select a service', 1, 1, '2021-11-15 02:15:21', '2021-11-15 03:17:25'),
(122, 185, 170, 3, 'Options', 'Options', NULL, 1, 3, '2021-11-15 03:12:22', '2021-11-15 03:20:58'),
(123, 185, 170, 6, 'Estimated Date', 'Estimated_Date', 'Select Estimated Date', 1, 2, '2021-11-15 03:12:55', '2021-11-15 03:20:58'),
(124, 185, 170, 7, 'Estimated Time', 'Estimated_Time', 'Select Estimated Time', 0, 4, '2021-11-15 03:13:32', '2021-11-15 03:20:58'),
(125, 185, 170, 1, 'Porject Name', 'Porject_Name', 'Enter Porject Name', 0, 5, '2021-11-15 03:18:02', '2021-11-15 03:18:02'),
(126, 185, 170, 4, 'Project Description', 'Project_Description', 'Enter Project Description', 1, 6, '2021-11-15 03:18:26', '2021-11-15 03:18:26'),
(127, 185, 170, 5, 'Attachments', 'Attachments', NULL, 0, 7, '2021-11-15 03:20:39', '2021-11-15 03:20:39'),
(128, 186, 170, 2, 'خدمة', 'خدمة', 'اختر الخدمة', 1, 1, '2021-11-15 02:15:21', '2021-11-15 03:17:25'),
(129, 186, 170, 3, 'خيارات', 'خيارات', NULL, 1, 3, '2021-11-15 03:12:22', '2021-11-15 03:20:58'),
(130, 186, 170, 6, 'التاريخ المتوقع', 'التاريخ_المتوقع', 'حدد التاريخ المقدر', 1, 2, '2021-11-15 03:12:55', '2021-11-15 03:20:58'),
(131, 186, 170, 7, 'الوقت المقدر', 'الوقت_المقدر', 'حدد الوقت المقدر', 0, 4, '2021-11-15 03:13:32', '2021-11-15 03:20:58'),
(132, 186, 170, 1, 'اسم المشروع', 'اسم_المشروع', 'أدخل اسم المشروع', 0, 5, '2021-11-15 03:18:02', '2021-11-15 03:18:02'),
(133, 186, 170, 4, 'وصف المشروع', 'وصف_المشروع', 'أدخل وصف المشروع', 1, 6, '2021-11-15 03:18:26', '2021-11-15 03:18:26'),
(134, 186, 170, 5, 'المرفقات', 'المرفقات', NULL, 0, 7, '2021-11-15 03:20:39', '2021-11-15 03:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_quote_input_options`
--

CREATE TABLE `user_quote_input_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quote_input_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_quote_input_options`
--

INSERT INTO `user_quote_input_options` (`id`, `quote_input_id`, `name`, `created_at`, `updated_at`) VALUES
(193, 103, 'Web Development', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(194, 103, 'Web Design', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(195, 103, 'Graphic Design', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(196, 104, 'Option 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(197, 104, 'Option 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(198, 104, 'Option 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(199, 104, 'Option 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(200, 114, 'تطوير الشبكة', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(201, 114, 'تصميم المواقع', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(202, 114, 'تصميم غرافيك', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(203, 115, 'الخيار 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(204, 115, 'الخيار 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(205, 115, 'الخيار 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(206, 115, 'الخيار 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(207, 121, 'Web Development', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(208, 121, 'Web Design', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(209, 121, 'Graphic Design', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(210, 122, 'Option 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(211, 122, 'Option 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(212, 122, 'Option 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(213, 122, 'Option 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(214, 128, 'تطوير الشبكة', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(215, 128, 'تصميم المواقع', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(216, 128, 'تصميم غرافيك', '2021-11-15 02:15:21', '2021-11-15 02:15:21'),
(217, 129, 'الخيار 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(218, 129, 'الخيار 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(219, 129, 'الخيار 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22'),
(220, 129, 'الخيار 1', '2021-11-15 03:12:22', '2021-11-15 03:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_seos`
--

CREATE TABLE `user_seos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `home_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blogs_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blogs_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolios_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolios_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobs_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobs_meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs_meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_seos`
--

INSERT INTO `user_seos` (`id`, `user_id`, `language_id`, `home_meta_keywords`, `home_meta_description`, `services_meta_keywords`, `services_meta_description`, `blogs_meta_keywords`, `blogs_meta_description`, `portfolios_meta_keywords`, `portfolios_meta_description`, `jobs_meta_description`, `jobs_meta_keywords`, `team_meta_keywords`, `team_meta_description`, `faqs_meta_description`, `faqs_meta_keywords`, `contact_meta_description`, `contact_meta_keywords`, `quote_meta_description`, `quote_meta_keywords`) VALUES
(7, 169, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_services`
--

CREATE TABLE `user_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL,
  `detail_page` int(11) NOT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_services`
--

INSERT INTO `user_services` (`id`, `image`, `name`, `slug`, `content`, `serial_number`, `featured`, `detail_page`, `lang_id`, `user_id`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(102, '1636958113.png', 'WEB DESIGN', 'web-design', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><img src=\"http://businesso.test/assets/front/img/summernote/6191ff8f5b3f6.jpg\" style=\"width:100%;\" alt=\"6191ff8f5b3f6.jpg\" /><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 1, 1, 1, 183, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:35:33'),
(103, '1636958233.png', 'WEB DEVELOPMENT', 'web-development', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><img src=\"http://businesso.test/assets/front/img/summernote/6191ff8f5b3f6.jpg\" style=\"width:100%;\" alt=\"6191ff8f5b3f6.jpg\" /><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 2, 1, 1, 183, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:37:13'),
(104, '1636958253.png', 'GRAPHIC DESIGN', 'graphic-design', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><img src=\"http://businesso.test/assets/front/img/summernote/6191ff8f5b3f6.jpg\" style=\"width:100%;\" alt=\"6191ff8f5b3f6.jpg\" /><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 3, 1, 1, 183, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:37:33'),
(105, '1636958275.png', 'MOBILE APPS', 'mobile-apps', '', 4, 1, 0, 183, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:40:24'),
(106, '1636958403.png', 'PLUGIN DEVELOPMENT', 'plugin-development', '', 5, 1, 0, 183, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:40:33'),
(107, '1636958825.png', 'MARKETTING SEO', 'marketting-seo', '', 6, 1, 0, 183, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:47:05'),
(108, '1636958113.png', 'تصميم المواقع', 'تصميم-المواقع', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.', 1, 1, 1, 184, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:35:33'),
(109, '1636958233.png', 'تطوير الشبكة', 'تطوير-الشبكة', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.', 2, 1, 1, 184, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:37:13'),
(110, '1636958253.png', 'تصميم غرافيك', 'تصميم-غرافيك', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.', 3, 1, 1, 184, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:37:33'),
(111, '1636958275.png', 'تطبيقات الموبايل', 'تطبيقات-الموبايل', '', 4, 1, 0, 184, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:40:24'),
(112, '1636958403.png', 'تطوير PLUGIN', 'تطوير-plugin', '', 5, 1, 0, 184, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:40:33'),
(113, '1636958825.png', 'تسويق SEO', 'تسويق-seo', '', 6, 1, 0, 184, 169, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:47:05'),
(114, '1636958113.png', 'Web Design', 'web-design', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><img src=\"http://businesso.test/assets/front/img/summernote/6191ff8f5b3f6.jpg\" style=\"width:100%;\" alt=\"6191ff8f5b3f6.jpg\" /><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 1, 1, 1, 185, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-16 22:58:24'),
(115, '1636958233.png', 'Web Development', 'web-development', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><img src=\"http://businesso.test/assets/front/img/summernote/6191ff8f5b3f6.jpg\" style=\"width:100%;\" alt=\"6191ff8f5b3f6.jpg\" /><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 2, 1, 1, 185, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-16 22:58:13'),
(116, '1636958253.png', 'Graphic Design', 'graphic-design', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><img src=\"http://businesso.test/assets/front/img/summernote/6191ff8f5b3f6.jpg\" style=\"width:100%;\" alt=\"6191ff8f5b3f6.jpg\" /><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 3, 1, 1, 185, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-16 22:58:00'),
(117, '1636958275.png', 'Mobile Apps', 'mobile-apps', '', 4, 1, 0, 185, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-16 22:57:44'),
(118, '1636958403.png', 'Plugin Development', 'plugin-development', '', 5, 1, 0, 185, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-16 22:56:45'),
(119, '1636958825.png', 'Marketting SEO', 'marketting-seo', '', 6, 1, 0, 185, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-16 22:57:24'),
(120, '1637124938.png', 'Image Editing', 'image-editing', '', 7, 1, 0, 185, 170, NULL, NULL, '2021-11-16 22:55:38', '2021-11-16 22:57:33'),
(121, '1637124963.png', 'IT Consultancy', 'it-consultancy', '', 8, 1, 0, 185, 170, NULL, NULL, '2021-11-16 22:56:03', '2021-11-16 22:57:08'),
(122, '1636958113.png', 'تصميم المواقع', 'تصميم-المواقع', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.', 1, 1, 1, 186, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:35:33'),
(123, '1636958233.png', 'تطوير الشبكة', 'تطوير-الشبكة', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.', 2, 1, 1, 186, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:37:13'),
(124, '1636958253.png', 'تصميم غرافيك', 'تصميم-غرافيك', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.', 3, 1, 1, 186, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:37:33'),
(125, '1636958275.png', 'تطبيقات الموبايل', 'تطبيقات-الموبايل', '', 4, 1, 0, 186, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:40:24'),
(126, '1636958403.png', 'تطوير PLUGIN', 'تطوير-plugin', '', 5, 1, 0, 186, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:40:33'),
(127, '1636958825.png', 'تسويق SEO', 'تسويق-seo', '', 6, 1, 0, 186, 170, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:47:05'),
(128, '1637124938.png', 'تعديل الصوره', 'تعديل-الصوره', '', 7, 1, 0, 186, 170, NULL, NULL, '2021-11-16 22:55:38', '2021-11-16 22:57:33'),
(129, '1637124963.png', 'استشارات تكنولوجيا المعلومات', 'استشارات-تكنولوجيا-المعلومات', '', 8, 1, 0, 186, 170, NULL, NULL, '2021-11-16 22:56:03', '2021-11-16 22:57:08'),
(130, '1636958113.png', 'Web Design', 'web-design', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><img src=\"http://businesso.test/assets/front/img/summernote/6191ff8f5b3f6.jpg\" style=\"width:100%;\" alt=\"6191ff8f5b3f6.jpg\" /><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 1, 1, 1, 187, 171, NULL, NULL, '2021-11-14 21:35:13', '2021-11-16 22:58:24'),
(131, '1636958233.png', 'Web Development', 'web-development', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><img src=\"http://businesso.test/assets/front/img/summernote/6191ff8f5b3f6.jpg\" style=\"width:100%;\" alt=\"6191ff8f5b3f6.jpg\" /><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 2, 1, 1, 187, 171, NULL, NULL, '2021-11-14 21:35:13', '2021-11-16 22:58:13'),
(132, '1636958253.png', 'Graphic Design', 'graphic-design', '<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><img src=\"http://businesso.test/assets/front/img/summernote/6191ff8f5b3f6.jpg\" style=\"width:100%;\" alt=\"6191ff8f5b3f6.jpg\" /><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\"><br /></span></p><p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><span style=\"font-family:Verdana;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 3, 1, 1, 187, 171, NULL, NULL, '2021-11-14 21:35:13', '2021-11-16 22:58:00'),
(133, '1636958275.png', 'Mobile Apps', 'mobile-apps', '', 4, 1, 0, 187, 171, NULL, NULL, '2021-11-14 21:35:13', '2021-11-16 22:57:44'),
(134, '1636958113.png', 'تصميم المواقع', 'تصميم-المواقع', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.', 1, 1, 1, 188, 171, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:35:33'),
(135, '1636958233.png', 'تطوير الشبكة', 'تطوير-الشبكة', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.', 2, 1, 1, 188, 171, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:37:13'),
(136, '1636958253.png', 'تصميم غرافيك', 'تصميم-غرافيك', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.', 3, 1, 1, 188, 171, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:37:33'),
(137, '1636958275.png', 'تطبيقات الموبايل', 'تطبيقات-الموبايل', '', 4, 1, 0, 188, 171, NULL, NULL, '2021-11-14 21:35:13', '2021-11-14 21:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_skills`
--

CREATE TABLE `user_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F78058',
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `language_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_skills`
--

INSERT INTO `user_skills` (`id`, `icon`, `title`, `slug`, `percentage`, `color`, `serial_number`, `language_id`, `user_id`, `created_at`, `updated_at`) VALUES
(74, 'far fa-edit', 'Business Strategy', 'business-strategy', 90, 'FF4A17', 1, 183, 169, '2021-11-14 22:24:45', '2021-11-14 22:24:45'),
(75, 'far fa-money-bill-alt', 'Financial Planing', 'financial-planing', 75, 'FF4A17', 2, 183, 169, '2021-11-14 22:24:45', '2021-11-14 23:50:26'),
(76, 'fas fa-signal', 'Marketing Startegy', 'marketing-startegy', 85, 'FF4A17', 3, 183, 169, '2021-11-14 22:24:45', '2021-11-14 23:49:17'),
(77, 'far fa-handshake', 'Relationship Buildup', 'relationship-buildup', 80, 'FF4A17', 4, 183, 169, '2021-11-14 22:24:45', '2021-11-14 23:48:41'),
(78, 'far fa-edit', 'استراتيجية العمل', 'استراتيجية-العمل', 90, 'FF4A17', 1, 184, 169, '2021-11-14 22:24:45', '2021-11-14 22:24:45'),
(79, 'far fa-money-bill-alt', 'التخطيط المالي', 'التخطيط-المالي', 75, 'FF4A17', 2, 184, 169, '2021-11-14 22:24:45', '2021-11-14 23:50:26'),
(80, 'fas fa-signal', 'بدء التسويق', 'بدء-التسويق', 85, 'FF4A17', 3, 184, 169, '2021-11-14 22:24:45', '2021-11-14 23:49:17'),
(81, 'far fa-handshake', 'بناء العلاقات', 'بناء-العلاقات', 80, 'FF4A17', 4, 184, 169, '2021-11-14 22:24:45', '2021-11-14 23:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_socials`
--

CREATE TABLE `user_socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_socials`
--

INSERT INTO `user_socials` (`id`, `icon`, `url`, `serial_number`, `user_id`, `created_at`, `updated_at`) VALUES
(51, 'fab fa-facebook-f', 'http://example.com/', 1, 169, '2021-11-15 01:41:58', '2021-11-15 01:41:58'),
(52, 'fab fa-linkedin-in', 'http://example.com/', 2, 169, '2021-11-15 01:42:06', '2021-11-15 01:42:06'),
(53, 'fab fa-twitter', 'http://example.com/', 3, 169, '2021-11-15 01:42:23', '2021-11-15 01:42:23'),
(54, 'fab fa-dribbble', 'http://example.com/', 4, 169, '2021-11-15 01:42:44', '2021-11-15 01:42:44'),
(55, 'fab fa-behance', 'http://example.com/', 5, 169, '2021-11-15 01:42:51', '2021-11-15 01:42:51'),
(56, 'fab fa-facebook-f', 'http://example.com/', 1, 170, '2021-11-16 07:17:41', '2021-11-16 07:17:41'),
(57, 'fab fa-twitter', 'http://example.com/', 1, 170, '2021-11-16 07:17:48', '2021-11-16 07:17:48'),
(58, 'fab fa-linkedin-in', 'http://example.com/', 3, 170, '2021-11-16 07:17:55', '2021-11-16 07:17:55'),
(59, 'fab fa-dribbble', 'http://example.com/', 4, 170, '2021-11-16 07:18:07', '2021-11-16 07:18:07'),
(60, 'fab fa-behance', 'http://example.com/', 5, 170, '2021-11-16 07:18:14', '2021-11-16 07:18:14'),
(61, 'fab fa-facebook-f', 'http://example.com/', 1, 171, '2021-11-17 04:34:10', '2021-11-17 04:34:10'),
(62, 'fab fa-twitter', 'http://example.com/', 2, 171, '2021-11-17 04:34:18', '2021-11-17 04:34:18'),
(63, 'fab fa-linkedin-in', 'http://example.com/', 3, 171, '2021-11-17 04:34:26', '2021-11-17 04:34:26'),
(64, 'fab fa-dribbble', 'http://example.com/', 4, 171, '2021-11-17 04:34:48', '2021-11-17 04:34:48'),
(65, 'fab fa-behance', 'http://example.com/', 5, 171, '2021-11-17 04:35:01', '2021-11-17 04:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscribers`
--

CREATE TABLE `user_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_testimonials`
--

CREATE TABLE `user_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_testimonials`
--

INSERT INTO `user_testimonials` (`id`, `image`, `name`, `occupation`, `content`, `serial_number`, `lang_id`, `user_id`, `created_at`, `updated_at`) VALUES
(76, '1636966313.png', 'Marco Veratti', 'CEO, Janex', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'', 1, 183, 169, '2021-11-14 23:51:53', '2021-11-14 23:52:18'),
(77, '1636966467.png', 'Nicolo Zaniolo', 'CTO, WebTech', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'', 2, 183, 169, '2021-11-14 23:51:53', '2021-11-14 23:54:27'),
(78, '1636966477.png', 'Adress Pirlo', 'Manager, Madchef', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'', 3, 183, 169, '2021-11-14 23:51:53', '2021-11-14 23:54:38'),
(79, '1636966313.png', 'ماركو فيراتي', 'الرئيس التنفيذي ، جانكس', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، يوجد محتوى هنا\"', 1, 184, 169, '2021-11-14 23:51:53', '2021-11-14 23:52:18'),
(80, '1636966467.png', 'نيكولو زانيولو', 'CTO ، WebTech', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، يوجد محتوى هنا\"', 2, 184, 169, '2021-11-14 23:51:53', '2021-11-14 23:54:27'),
(81, '1636966477.png', 'العنوان بيرلو', 'مدير ، Madchef', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، يوجد محتوى هنا\"', 3, 184, 169, '2021-11-14 23:51:53', '2021-11-14 23:54:38'),
(82, '1637126679.jpg', 'Marco Veratti', 'CEO, Janex', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'', 1, 185, 170, '2021-11-14 23:51:53', '2021-11-16 23:24:39'),
(83, '1637127234.jpg', 'Nicolo Zaniolo', 'CTO, WebTech', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'', 2, 185, 170, '2021-11-14 23:51:53', '2021-11-16 23:33:54'),
(84, '1637127252.jpg', 'Adress Pirlo', 'Manager, Madchef', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'', 3, 185, 170, '2021-11-14 23:51:53', '2021-11-16 23:34:12'),
(85, '1637126679.jpg', 'ماركو فيراتي', 'الرئيس التنفيذي ، جانكس', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، يوجد محتوى هنا\"', 1, 186, 170, '2021-11-14 23:51:53', '2021-11-14 23:52:18'),
(86, '1637127234.jpg', 'نيكولو زانيولو', 'CTO ، WebTech', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، يوجد محتوى هنا\"', 2, 186, 170, '2021-11-14 23:51:53', '2021-11-14 23:54:27'),
(87, '1637127252.jpg', 'العنوان بيرلو', 'مدير ، Madchef', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، يوجد محتوى هنا\"', 3, 186, 170, '2021-11-14 23:51:53', '2021-11-14 23:54:38'),
(88, '1637126679.jpg', 'Marco Veratti', 'CEO, Janex', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'', 1, 187, 171, '2021-11-14 23:51:53', '2021-11-16 23:24:39'),
(89, '1637127234.jpg', 'Nicolo Zaniolo', 'CTO, WebTech', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'', 2, 187, 171, '2021-11-14 23:51:53', '2021-11-16 23:33:54'),
(90, '1637127252.jpg', 'Adress Pirlo', 'Manager, Madchef', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'', 3, 187, 171, '2021-11-14 23:51:53', '2021-11-16 23:34:12'),
(91, '1637126679.jpg', 'ماركو فيراتي', 'الرئيس التنفيذي ، جانكس', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، يوجد محتوى هنا\"', 1, 188, 171, '2021-11-14 23:51:53', '2021-11-14 23:52:18'),
(92, '1637127234.jpg', 'نيكولو زانيولو', 'CTO ، WebTech', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، يوجد محتوى هنا\"', 2, 188, 171, '2021-11-14 23:51:53', '2021-11-14 23:54:27'),
(93, '1637127252.jpg', 'العنوان بيرلو', 'مدير ، Madchef', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام \"هنا يوجد محتوى نصي ، يوجد محتوى هنا\"', 3, 188, 171, '2021-11-14 23:51:53', '2021-11-14 23:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_vcards`
--

CREATE TABLE `user_vcards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `template` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'number represents the template number',
  `direction` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - ltr, 2 - rtl',
  `profile_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vcard_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_button_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ed2476',
  `whatsapp_button_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '25d366',
  `mail_button_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BB001B',
  `add_to_contact_button_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FF5C58',
  `share_vcard_button_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FF5C58',
  `phone_icon_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFB830',
  `email_icon_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFB830',
  `address_icon_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFB830',
  `website_url_icon_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFB830',
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa2859'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_vcards`
--

INSERT INTO `user_vcards` (`id`, `user_id`, `template`, `direction`, `profile_image`, `cover_image`, `name`, `occupation`, `company`, `email`, `phone`, `address`, `website_url`, `introduction`, `information`, `created_at`, `updated_at`, `vcard_name`, `about`, `video`, `preferences`, `call_button_color`, `whatsapp_button_color`, `mail_button_color`, `add_to_contact_button_color`, `share_vcard_button_color`, `phone_icon_color`, `email_icon_color`, `address_icon_color`, `website_url_icon_color`, `keywords`, `base_color`) VALUES
(10, 169, 1, 1, '616836f1cfbc4.jpg', '616836f1d00a1.png', 'Json Gillespie', 'Web Developer', 'KreativDev', 'gillespie@gmail.com', '+1-202-555-0157', 'California, USA', 'https://example.com/', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"Gitlab\",\"link\":1,\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"Facebook\",\"link\":1,\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"Twitter\",\"link\":1,\"value\":\"https:\\/\\/twitter.com\\/\"}]', '2021-08-28 06:37:16', '2021-10-15 20:20:21', 'KreativDev', '<div style=\"text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<br /></div>', 'https://www.youtube.com/embed/vTm7t9JBGfM', '[\"Call\",\"Whatsapp\",\"Mail\",\"Add to Contact\",\"Share vCard\",\"Information\",\"Video\",\"About Us\",\"Services\",\"Projects\",\"Testimonials\",\"Enquiry Form\"]', 'A4C639', '25D366', 'EA4335', 'E02401', 'E02401', '2C2891', 'EA4335', 'FF0075', '091353', '{\"Call\":\"Call\",\"Whatsapp\":\"Whatsapp\",\"Mail\":\"Mail\",\"Add_to_Contact\":\"Add to Contact\",\"Share_vCard\":\"Share vCard\",\"Phone\":\"Phone\",\"Email\":\"Email\",\"Address\":\"Address\",\"Website_URL\":\"Website URL\",\"About_us\":\"About us\",\"Our_Service\":\"Our Service\",\"Details\":\"Details\",\"Video\":\"Video\",\"Projects\":\"Projects\",\"Testimonial\":\"Testimonial\",\"Enquiry_Form\":\"Enquiry Form\",\"Enter_Name\":\"Enter Name\",\"Enter_Subject\":\"Enter Subject\",\"Enter_Email_Address\":\"Enter Email Address\",\"Enter_Message\":\"Enter Message\",\"Send\":\"Send\"}', '914BFA'),
(43, 169, 2, 1, '616a58670a333.jpg', '616a58670ab8a.png', 'Manuel Locatelli', 'Graphic Designer', 'ABC Foundation', 'locatelli@gmail.com', '+1-202-555-0157', 'Sanfransisco, USA', 'https://example.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"Gitlab\",\"link\":1,\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"Facebook\",\"link\":1,\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"Twitter\",\"link\":1,\"value\":\"https:\\/\\/twitter.com\\/\"}]', '2021-08-28 06:37:16', '2021-10-15 20:20:04', 'ABC Foundation', '<div style=\"text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<br /></div>', 'https://www.youtube.com/embed/vTm7t9JBGfM', '[\"Call\",\"Whatsapp\",\"Mail\",\"Add to Contact\",\"Share vCard\",\"Information\",\"Video\",\"About Us\",\"Services\",\"Projects\",\"Testimonials\",\"Enquiry Form\"]', 'A4C639', '25D366', 'EA4335', '259FF0', '259FF0', 'FFA400', 'EA4335', 'FF0075', '914BFA', '{\"Call\":\"Call\",\"Whatsapp\":\"Whatsapp\",\"Mail\":\"Mail\",\"Add_to_Contact\":\"Add to Contact\",\"Share_vCard\":\"Share vCard\",\"Phone\":\"Phone\",\"Email\":\"Email\",\"Address\":\"Address\",\"Website_URL\":\"Website URL\",\"About_us\":\"About us\",\"Our_Service\":\"Our Service\",\"Details\":\"Details\",\"Video\":\"Video\",\"Projects\":\"Projects\",\"Testimonial\":\"Testimonial\",\"Enquiry_Form\":\"Enquiry Form\",\"Enter_Name\":\"Enter Name\",\"Enter_Subject\":\"Enter Subject\",\"Enter_Email_Address\":\"Enter Email Address\",\"Enter_Message\":\"Enter Message\",\"Send\":\"Send\"}', '259FF0'),
(44, 169, 3, 1, '616a5aad5af84.jpg', '616a5aad5b59e.png', 'Mike Obey', 'Manager', 'PlusAgency', 'mike@gmail.com', '+1-202-555-0157', 'New York, USA', 'https://example.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"Gitlab\",\"link\":1,\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"Facebook\",\"link\":1,\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"Twitter\",\"link\":1,\"value\":\"https:\\/\\/twitter.com\\/\"}]', '2021-08-28 06:37:16', '2021-10-15 20:19:51', 'PlusAgency', '<div style=\"text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<br /></div>', 'https://www.youtube.com/embed/vTm7t9JBGfM', '[\"Call\",\"Whatsapp\",\"Mail\",\"Add to Contact\",\"Share vCard\",\"Information\",\"Video\",\"About Us\",\"Services\",\"Projects\",\"Testimonials\",\"Enquiry Form\"]', 'A4C639', '25D366', 'EA4335', 'F06A60', 'F06A60', '2C2891', 'EA4335', 'FF0075', '091353', '{\"Call\":\"Call\",\"Whatsapp\":\"Whatsapp\",\"Mail\":\"Mail\",\"Add_to_Contact\":\"Add to Contact\",\"Share_vCard\":\"Share vCard\",\"Phone\":\"Phone\",\"Email\":\"Email\",\"Address\":\"Address\",\"Website_URL\":\"Website URL\",\"About_us\":\"About us\",\"Our_Service\":\"Our Service\",\"Details\":\"Details\",\"Video\":\"Video\",\"Projects\":\"Projects\",\"Testimonial\":\"Testimonial\",\"Enquiry_Form\":\"Enquiry Form\",\"Enter_Name\":\"Enter Name\",\"Enter_Subject\":\"Enter Subject\",\"Enter_Email_Address\":\"Enter Email Address\",\"Enter_Message\":\"Enter Message\",\"Send\":\"Send\"}', 'F06A60'),
(45, 169, 4, 1, '616a5d372ba01.jpg', '616a5d372bf12.jpg', 'Mikel Clark', 'Fashion Designer', 'FashionHouse', 'clark@gmail.com', '+1-202-555-0157', 'Pennsylvania, USA', 'https://example.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"Gitlab\",\"link\":1,\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"Facebook\",\"link\":1,\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"Twitter\",\"link\":1,\"value\":\"https:\\/\\/twitter.com\\/\"}]', '2021-08-28 06:37:16', '2021-10-15 20:19:34', 'FashionHouse', '<div style=\"text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<br /></div>', 'https://www.youtube.com/embed/vTm7t9JBGfM', '[\"Call\",\"Whatsapp\",\"Mail\",\"Add to Contact\",\"Share vCard\",\"Information\",\"Video\",\"About Us\",\"Services\",\"Projects\",\"Testimonials\",\"Enquiry Form\"]', 'A4C639', '25D366', 'EA4335', '1D47DA', '1D47DA', '2C2891', 'EA4335', 'FF0075', '091353', '{\"Call\":\"Call\",\"Whatsapp\":\"Whatsapp\",\"Mail\":\"Mail\",\"Add_to_Contact\":\"Add to Contact\",\"Share_vCard\":\"Share vCard\",\"Phone\":\"Phone\",\"Email\":\"Email\",\"Address\":\"Address\",\"Website_URL\":\"Website URL\",\"About_us\":\"About us\",\"Our_Service\":\"Our Service\",\"Details\":\"Details\",\"Video\":\"Video\",\"Projects\":\"Projects\",\"Testimonial\":\"Testimonial\",\"Enquiry_Form\":\"Enquiry Form\",\"Enter_Name\":\"Enter Name\",\"Enter_Subject\":\"Enter Subject\",\"Enter_Email_Address\":\"Enter Email Address\",\"Enter_Message\":\"Enter Message\",\"Send\":\"Send\"}', '1D47DA'),
(46, 169, 1, 2, '616836f1cfbc4.jpg', '616836f1d00a1.png', 'جسون جيليسبي', 'مطور ويب', 'كريتيف', 'gillespie@gmail.com', '+1-202-555-0157', 'كاليفورنيا، الولايات المتحدة الأمريكية', 'https://example.com/', 'تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"جيتلاب\",\"link\":1,\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"موقع التواصل الاجتماعي الفيسبوك\",\"link\":1,\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"تويتر\",\"link\":1,\"value\":\"https:\\/\\/twitter.com\\/\"}]', '2021-08-28 06:37:16', '2021-10-15 20:19:14', 'كريتيف', '<div style = \"text-align: justify؛\"> تتوفر العديد من الأشكال المختلفة لمقاطع لوريم إيبسوم ، ولكن الغالبية عانت من تغيير في شكل ما ، عن طريق إدخال روح الدعابة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك ، فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك. <br /> </div>', 'https://www.youtube.com/embed/vTm7t9JBGfM', '[\"Call\",\"Whatsapp\",\"Mail\",\"Add to Contact\",\"Share vCard\",\"Information\",\"Video\",\"About Us\",\"Services\",\"Projects\",\"Testimonials\",\"Enquiry Form\"]', 'A4C639', '25D366', 'EA4335', 'E02401', 'E02401', '2C2891', 'EA4335', 'FF0075', '091353', '{\"Call\":\"\\u0645\\u0643\\u0627\\u0644\\u0645\\u0629\",\"Whatsapp\":\"\\u0627\\u0644 WhatsApp\",\"Mail\":\"\\u0628\\u0631\\u064a\\u062f\",\"Add_to_Contact\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0644\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062a\\u0635\\u0644\\u064a\\u0646\",\"Share_vCard\":\"\\u0645\\u0634\\u0627\\u0631\\u0643\\u0629 vCard\",\"Phone\":\"\\u0647\\u0627\\u062a\\u0641\",\"Email\":\"\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646\",\"Website_URL\":\"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"About_us\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"Our_Service\":\"\\u062e\\u062f\\u0645\\u062a\\u0646\\u0627\",\"Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"Video\":\"\\u0641\\u064a\\u062f\\u064a\\u0648\",\"Projects\":\"\\u0627\\u0644\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639\",\"Testimonial\":\"\\u0634\\u0647\\u0627\\u062f\\u0629\",\"Enquiry_Form\":\"\\u0646\\u0645\\u0648\\u0630\\u062c \\u0627\\u0644\\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631\",\"Enter_Name\":\"\\u0623\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0627\\u0633\\u0645\",\"Enter_Subject\":\"\\u0623\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639\",\"Enter_Email_Address\":\"\\u0623\\u062f\\u062e\\u0644 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Enter_Message\":\"\\u0623\\u062f\\u062e\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send\":\"\\u064a\\u0631\\u0633\\u0644\"}', '914BFA'),
(47, 169, 2, 2, '616a58670a333.jpg', '616a58670ab8a.png', 'مانويل لوكاتيللي', 'مصمم جرافيك', 'مؤسسة ABC', 'locatelli@gmail.com', '+1-202-555-0157', 'سانفرانسيسكو ، الولايات المتحدة الأمريكية', 'https://example.com/', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة من النوع', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"جيتلاب\",\"link\":1,\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"موقع التواصل الاجتماعي الفيسبوك\",\"link\":1,\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"تويتر\",\"link\":1,\"value\":\"https:\\/\\/twitter.com\\/\"}]', '2021-08-28 06:37:16', '2021-10-15 20:20:04', 'مؤسسة ABC', '<div style = \"text-align: justify؛\"> تتوفر العديد من الأشكال المختلفة لمقاطع لوريم إيبسوم ، ولكن الغالبية عانت من تغيير في شكل ما ، عن طريق إدخال روح الدعابة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك ، فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك. <br /> </div>', 'https://www.youtube.com/embed/vTm7t9JBGfM', '[\"Call\",\"Whatsapp\",\"Mail\",\"Add to Contact\",\"Share vCard\",\"Information\",\"Video\",\"About Us\",\"Services\",\"Projects\",\"Testimonials\",\"Enquiry Form\"]', 'A4C639', '25D366', 'EA4335', '259FF0', '259FF0', 'FFA400', 'EA4335', 'FF0075', '914BFA', '{\"Call\":\"\\u0645\\u0643\\u0627\\u0644\\u0645\\u0629\",\"Whatsapp\":\"\\u0627\\u0644 WhatsApp\",\"Mail\":\"\\u0628\\u0631\\u064a\\u062f\",\"Add_to_Contact\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0644\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062a\\u0635\\u0644\\u064a\\u0646\",\"Share_vCard\":\"\\u0645\\u0634\\u0627\\u0631\\u0643\\u0629 vCard\",\"Phone\":\"\\u0647\\u0627\\u062a\\u0641\",\"Email\":\"\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646\",\"Website_URL\":\"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"About_us\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"Our_Service\":\"\\u062e\\u062f\\u0645\\u062a\\u0646\\u0627\",\"Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"Video\":\"\\u0641\\u064a\\u062f\\u064a\\u0648\",\"Projects\":\"\\u0627\\u0644\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639\",\"Testimonial\":\"\\u0634\\u0647\\u0627\\u062f\\u0629\",\"Enquiry_Form\":\"\\u0646\\u0645\\u0648\\u0630\\u062c \\u0627\\u0644\\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631\",\"Enter_Name\":\"\\u0623\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0627\\u0633\\u0645\",\"Enter_Subject\":\"\\u0623\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639\",\"Enter_Email_Address\":\"\\u0623\\u062f\\u062e\\u0644 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Enter_Message\":\"\\u0623\\u062f\\u062e\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send\":\"\\u064a\\u0631\\u0633\\u0644\"}', '259FF0'),
(48, 169, 3, 2, '616a5aad5af84.jpg', '616a5aad5b59e.png', 'مايك أوبي', 'مدير', 'وكالة بلس', 'mike@gmail.com', '+1-202-555-0157', 'نيويورك ، الولايات المتحدة الأمريكية', 'https://example.com/', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة من النوع', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"جيتلاب\",\"link\":1,\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"موقع التواصل الاجتماعي الفيسبوك\",\"link\":1,\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"تويتر\",\"link\":1,\"value\":\"https:\\/\\/twitter.com\\/\"}]', '2021-08-28 06:37:16', '2021-10-15 20:19:51', 'وكالة بلس', '<div style = \"text-align: justify؛\"> تتوفر العديد من الأشكال المختلفة لمقاطع لوريم إيبسوم ، ولكن الغالبية عانت من تغيير في شكل ما ، عن طريق إدخال روح الدعابة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك ، فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك. <br /> </div>', 'https://www.youtube.com/embed/vTm7t9JBGfM', '[\"Call\",\"Whatsapp\",\"Mail\",\"Add to Contact\",\"Share vCard\",\"Information\",\"Video\",\"About Us\",\"Services\",\"Projects\",\"Testimonials\",\"Enquiry Form\"]', 'A4C639', '25D366', 'EA4335', 'F06A60', 'F06A60', '2C2891', 'EA4335', 'FF0075', '091353', '{\"Call\":\"\\u0645\\u0643\\u0627\\u0644\\u0645\\u0629\",\"Whatsapp\":\"\\u0627\\u0644 WhatsApp\",\"Mail\":\"\\u0628\\u0631\\u064a\\u062f\",\"Add_to_Contact\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0644\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062a\\u0635\\u0644\\u064a\\u0646\",\"Share_vCard\":\"\\u0645\\u0634\\u0627\\u0631\\u0643\\u0629 vCard\",\"Phone\":\"\\u0647\\u0627\\u062a\\u0641\",\"Email\":\"\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646\",\"Website_URL\":\"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"About_us\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"Our_Service\":\"\\u062e\\u062f\\u0645\\u062a\\u0646\\u0627\",\"Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"Video\":\"\\u0641\\u064a\\u062f\\u064a\\u0648\",\"Projects\":\"\\u0627\\u0644\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639\",\"Testimonial\":\"\\u0634\\u0647\\u0627\\u062f\\u0629\",\"Enquiry_Form\":\"\\u0646\\u0645\\u0648\\u0630\\u062c \\u0627\\u0644\\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631\",\"Enter_Name\":\"\\u0623\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0627\\u0633\\u0645\",\"Enter_Subject\":\"\\u0623\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639\",\"Enter_Email_Address\":\"\\u0623\\u062f\\u062e\\u0644 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Enter_Message\":\"\\u0623\\u062f\\u062e\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send\":\"\\u064a\\u0631\\u0633\\u0644\"}', 'F06A60'),
(49, 169, 4, 2, '616a5d372ba01.jpg', '616a5d372bf12.jpg', 'ميكيل كلارك', 'مصمم أزياء', 'بيت الموضة', 'clark@gmail.com', '+1-202-555-0157', 'بنسلفانيا ، الولايات المتحدة الأمريكية', 'https://example.com/', 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة من النوع', '[{\"icon\":\"fab fa-github\",\"color\":\"171515\",\"label\":\"جيتلاب\",\"link\":1,\"value\":\"https:\\/\\/gitlab.com\\/\"},{\"icon\":\"fab fa-facebook-f\",\"color\":\"4267B2\",\"label\":\"موقع التواصل الاجتماعي الفيسبوك\",\"link\":1,\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"icon\":\"fab fa-twitter\",\"color\":\"1DA1F2\",\"label\":\"تويتر\",\"link\":1,\"value\":\"https:\\/\\/twitter.com\\/\"}]', '2021-08-28 06:37:16', '2021-10-15 20:19:34', 'بيت الموضة', '<div style = \"text-align: justify؛\"> تتوفر العديد من الأشكال المختلفة لمقاطع لوريم إيبسوم ، ولكن الغالبية عانت من تغيير في شكل ما ، عن طريق إدخال روح الدعابة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولًا. لذلك ، فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الدعابة المحقونة أو الكلمات غير المميزة وما إلى ذلك. <br /> </div>', 'https://www.youtube.com/embed/vTm7t9JBGfM', '[\"Call\",\"Whatsapp\",\"Mail\",\"Add to Contact\",\"Share vCard\",\"Information\",\"Video\",\"About Us\",\"Services\",\"Projects\",\"Testimonials\",\"Enquiry Form\"]', 'A4C639', '25D366', 'EA4335', '1D47DA', '1D47DA', '2C2891', 'EA4335', 'FF0075', '091353', '{\"Call\":\"\\u0645\\u0643\\u0627\\u0644\\u0645\\u0629\",\"Whatsapp\":\"\\u0627\\u0644 WhatsApp\",\"Mail\":\"\\u0628\\u0631\\u064a\\u062f\",\"Add_to_Contact\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0644\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062a\\u0635\\u0644\\u064a\\u0646\",\"Share_vCard\":\"\\u0645\\u0634\\u0627\\u0631\\u0643\\u0629 vCard\",\"Phone\":\"\\u0647\\u0627\\u062a\\u0641\",\"Email\":\"\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Address\":\"\\u0639\\u0646\\u0648\\u0627\\u0646\",\"Website_URL\":\"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"About_us\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"Our_Service\":\"\\u062e\\u062f\\u0645\\u062a\\u0646\\u0627\",\"Details\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644\",\"Video\":\"\\u0641\\u064a\\u062f\\u064a\\u0648\",\"Projects\":\"\\u0627\\u0644\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639\",\"Testimonial\":\"\\u0634\\u0647\\u0627\\u062f\\u0629\",\"Enquiry_Form\":\"\\u0646\\u0645\\u0648\\u0630\\u062c \\u0627\\u0644\\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631\",\"Enter_Name\":\"\\u0623\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0627\\u0633\\u0645\",\"Enter_Subject\":\"\\u0623\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0636\\u0648\\u0639\",\"Enter_Email_Address\":\"\\u0623\\u062f\\u062e\\u0644 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"Enter_Message\":\"\\u0623\\u062f\\u062e\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629\",\"Send\":\"\\u064a\\u0631\\u0633\\u0644\"}', '1D47DA');

-- --------------------------------------------------------

--
-- Table structure for table `user_vcard_projects`
--

CREATE TABLE `user_vcard_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_vcard_id` int(11) DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - active, 0 - deactive',
  `external_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_vcard_projects`
--

INSERT INTO `user_vcard_projects` (`id`, `user_vcard_id`, `image`, `title`, `short_details`, `external_link_status`, `external_link`, `serial_number`, `created_at`, `updated_at`) VALUES
(5, 10, '1634220731.jpg', 'Ecommerce Webiste', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 0, NULL, 1, '2021-09-23 05:15:23', '2021-10-14 05:12:11'),
(6, 10, '1634220753.jpg', 'ABC Tower', NULL, 1, 'https://example.com/', 2, '2021-09-23 05:15:35', '2021-10-14 05:12:33'),
(14, 10, '1634220795.jpg', 'Restaurant Website', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 0, NULL, 3, '2021-10-14 05:13:15', '2021-10-14 05:13:15'),
(15, 43, '1634220731.jpg', 'Ecommerce Webiste', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 0, NULL, 1, '2021-09-23 05:15:23', '2021-10-14 05:12:11'),
(16, 43, '1634220753.jpg', 'ABC Tower', NULL, 1, 'https://example.com/', 2, '2021-09-23 05:15:35', '2021-10-14 05:12:33'),
(17, 43, '1634220795.jpg', 'Restaurant Website', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 0, NULL, 3, '2021-10-14 05:13:15', '2021-10-14 05:13:15'),
(18, 44, '1634220731.jpg', 'Ecommerce Webiste', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 0, NULL, 1, '2021-09-23 05:15:23', '2021-10-14 05:12:11'),
(19, 44, '1634220753.jpg', 'ABC Tower', NULL, 1, 'https://example.com/', 2, '2021-09-23 05:15:35', '2021-10-14 05:12:33'),
(20, 44, '1634220795.jpg', 'Restaurant Website', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 0, NULL, 3, '2021-10-14 05:13:15', '2021-10-14 05:13:15'),
(21, 45, '1634220731.jpg', 'Ecommerce Webiste', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 0, NULL, 1, '2021-09-23 05:15:23', '2021-10-14 05:12:11'),
(22, 45, '1634220753.jpg', 'ABC Tower', NULL, 1, 'https://example.com/', 2, '2021-09-23 05:15:35', '2021-10-14 05:12:33'),
(23, 45, '1634220795.jpg', 'Restaurant Website', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 0, NULL, 3, '2021-10-14 05:13:15', '2021-10-14 05:13:15'),
(24, 46, '1634220731.jpg', 'التجارة الإلكترونية Webiste', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير في شكل ما ، عن طريق إدخال الدعابة', 0, NULL, 1, '2021-09-23 05:15:23', '2021-10-14 05:12:11'),
(25, 46, '1634220753.jpg', 'برج ABC', NULL, 1, 'https://example.com/', 2, '2021-09-23 05:15:35', '2021-10-14 05:12:33'),
(26, 46, '1634220795.jpg', 'موقع الويب الخاص بالمطعم', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير في شكل ما ، عن طريق إدخال الدعابة', 0, NULL, 3, '2021-10-14 05:13:15', '2021-10-14 05:13:15'),
(27, 47, '1634220731.jpg', 'التجارة الإلكترونية Webiste', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير في شكل ما ، عن طريق إدخال الدعابة', 0, NULL, 1, '2021-09-23 05:15:23', '2021-10-14 05:12:11'),
(28, 47, '1634220753.jpg', 'برج ABC', NULL, 1, 'https://example.com/', 2, '2021-09-23 05:15:35', '2021-10-14 05:12:33'),
(29, 47, '1634220795.jpg', 'موقع الويب الخاص بالمطعم', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير في شكل ما ، عن طريق إدخال الدعابة', 0, NULL, 3, '2021-10-14 05:13:15', '2021-10-14 05:13:15'),
(30, 48, '1634220731.jpg', 'التجارة الإلكترونية Webiste', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير في شكل ما ، عن طريق إدخال الدعابة', 0, NULL, 1, '2021-09-23 05:15:23', '2021-10-14 05:12:11'),
(31, 48, '1634220753.jpg', 'برج ABC', NULL, 1, 'https://example.com/', 2, '2021-09-23 05:15:35', '2021-10-14 05:12:33'),
(32, 48, '1634220795.jpg', 'موقع الويب الخاص بالمطعم', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير في شكل ما ، عن طريق إدخال الدعابة', 0, NULL, 3, '2021-10-14 05:13:15', '2021-10-14 05:13:15'),
(33, 49, '1634220731.jpg', 'التجارة الإلكترونية Webiste', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير في شكل ما ، عن طريق إدخال الدعابة', 0, NULL, 1, '2021-09-23 05:15:23', '2021-10-14 05:12:11'),
(34, 49, '1634220753.jpg', 'برج ABC', NULL, 1, 'https://example.com/', 2, '2021-09-23 05:15:35', '2021-10-14 05:12:33'),
(35, 49, '1634220795.jpg', 'موقع الويب الخاص بالمطعم', 'هناك العديد من الأشكال المتاحة لنصوص لوريم إيبسوم ، لكن الغالبية قد تعرضت للتغيير في شكل ما ، عن طريق إدخال الدعابة', 0, NULL, 3, '2021-10-14 05:13:15', '2021-10-14 05:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_vcard_services`
--

CREATE TABLE `user_vcard_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_vcard_id` int(11) DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `external_link_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - active, 0 - deactive',
  `external_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_vcard_services`
--

INSERT INTO `user_vcard_services` (`id`, `user_vcard_id`, `image`, `title`, `short_details`, `serial_number`, `created_at`, `updated_at`, `external_link_status`, `external_link`) VALUES
(3, 10, '1634220539.jpg', 'Web Development', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 1, '2021-09-22 02:25:16', '2021-10-14 05:08:59', 0, NULL),
(4, 10, '1634220546.jpg', 'UX Design', NULL, 2, '2021-09-22 02:25:54', '2021-10-14 05:09:06', 0, NULL),
(5, 10, '1634220553.jpg', 'Photo Manipulation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 3, '2021-09-22 02:27:09', '2021-10-14 05:09:13', 1, 'https://example.com/'),
(24, 43, '1634220539.jpg', 'Web Development', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 1, '2021-09-22 02:25:16', '2021-10-14 05:08:59', 0, NULL),
(25, 43, '1634220546.jpg', 'UX Design', NULL, 2, '2021-09-22 02:25:54', '2021-10-14 05:09:06', 0, NULL),
(26, 43, '1634220553.jpg', 'Photo Manipulation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 3, '2021-09-22 02:27:09', '2021-10-14 05:09:13', 1, 'https://example.com/'),
(27, 44, '1634220539.jpg', 'Web Development', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 1, '2021-09-22 02:25:16', '2021-10-14 05:08:59', 0, NULL),
(28, 44, '1634220546.jpg', 'UX Design', NULL, 2, '2021-09-22 02:25:54', '2021-10-14 05:09:06', 0, NULL),
(29, 44, '1634220553.jpg', 'Photo Manipulation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 3, '2021-09-22 02:27:09', '2021-10-14 05:09:13', 1, 'https://example.com/'),
(30, 45, '1634220539.jpg', 'Web Development', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 1, '2021-09-22 02:25:16', '2021-10-14 05:08:59', 0, NULL),
(31, 45, '1634220546.jpg', 'UX Design', NULL, 2, '2021-09-22 02:25:54', '2021-10-14 05:09:06', 0, NULL),
(32, 45, '1634220553.jpg', 'Photo Manipulation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et', 3, '2021-09-22 02:27:09', '2021-10-14 05:09:13', 1, 'https://example.com/'),
(33, 46, '1634220539.jpg', 'تطوير الشبكة', 'الألم نفسه هو الحب', 1, '2021-09-22 02:25:16', '2021-10-14 05:08:59', 0, NULL),
(34, 46, '1634220546.jpg', 'تصميم UX', NULL, 2, '2021-09-22 02:25:54', '2021-10-14 05:09:06', 0, NULL),
(35, 46, '1634220553.jpg', 'تعديل الصورة', 'الألم نفسه هو الحب', 3, '2021-09-22 02:27:09', '2021-10-14 05:09:13', 1, 'https://example.com/'),
(36, 47, '1634220539.jpg', 'تطوير الشبكة', 'الألم نفسه هو الحب', 1, '2021-09-22 02:25:16', '2021-10-14 05:08:59', 0, NULL),
(37, 47, '1634220546.jpg', 'تصميم UX', NULL, 2, '2021-09-22 02:25:54', '2021-10-14 05:09:06', 0, NULL),
(38, 47, '1634220553.jpg', 'تعديل الصورة', 'الألم نفسه هو الحب', 3, '2021-09-22 02:27:09', '2021-10-14 05:09:13', 1, 'https://example.com/'),
(39, 48, '1634220539.jpg', 'تطوير الشبكة', 'الألم نفسه هو الحب', 1, '2021-09-22 02:25:16', '2021-10-14 05:08:59', 0, NULL),
(40, 48, '1634220546.jpg', 'تصميم UX', NULL, 2, '2021-09-22 02:25:54', '2021-10-14 05:09:06', 0, NULL),
(41, 48, '1634220553.jpg', 'تعديل الصورة', 'الألم نفسه هو الحب', 3, '2021-09-22 02:27:09', '2021-10-14 05:09:13', 1, 'https://example.com/'),
(42, 49, '1634220539.jpg', 'تطوير الشبكة', 'الألم نفسه هو الحب', 1, '2021-09-22 02:25:16', '2021-10-14 05:08:59', 0, NULL),
(43, 49, '1634220546.jpg', 'تصميم UX', NULL, 2, '2021-09-22 02:25:54', '2021-10-14 05:09:06', 0, NULL),
(44, 49, '1634220553.jpg', 'تعديل الصورة', 'الألم نفسه هو الحب', 3, '2021-09-22 02:27:09', '2021-10-14 05:09:13', 1, 'https://example.com/');

-- --------------------------------------------------------

--
-- Table structure for table `user_vcard_testimonials`
--

CREATE TABLE `user_vcard_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_vcard_id` int(11) DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 5,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_vcard_testimonials`
--

INSERT INTO `user_vcard_testimonials` (`id`, `user_vcard_id`, `image`, `name`, `rating`, `comment`, `serial_number`, `created_at`, `updated_at`) VALUES
(5, 10, '1632466949.png', 'Lorenzo Insigne', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 1, '2021-09-23 22:02:29', '2021-10-14 05:14:20'),
(6, 10, '1632466969.png', 'Dybala', 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is', 2, '2021-09-23 22:02:49', '2021-10-14 05:14:34'),
(12, 10, '1634221006.png', 'Paul Pogba', 5, 'randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing', 3, '2021-10-14 05:16:46', '2021-10-14 05:16:46'),
(13, 43, '1632466949.png', 'Lorenzo Insigne', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 1, '2021-09-23 22:02:29', '2021-10-14 05:14:20'),
(14, 43, '1632466969.png', 'Dybala', 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is', 2, '2021-09-23 22:02:49', '2021-10-14 05:14:34'),
(15, 43, '1634221006.png', 'Paul Pogba', 5, 'randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing', 3, '2021-10-14 05:16:46', '2021-10-14 05:16:46'),
(16, 44, '1632466949.png', 'Lorenzo Insigne', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 1, '2021-09-23 22:02:29', '2021-10-14 05:14:20'),
(17, 44, '1632466969.png', 'Dybala', 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is', 2, '2021-09-23 22:02:49', '2021-10-14 05:14:34'),
(18, 44, '1634221006.png', 'Paul Pogba', 5, 'randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing', 3, '2021-10-14 05:16:46', '2021-10-14 05:16:46'),
(19, 45, '1632466949.png', 'Lorenzo Insigne', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 1, '2021-09-23 22:02:29', '2021-10-14 05:14:20'),
(20, 45, '1632466969.png', 'Dybala', 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is', 2, '2021-09-23 22:02:49', '2021-10-14 05:14:34'),
(21, 45, '1634221006.png', 'Paul Pogba', 5, 'randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing', 3, '2021-10-14 05:16:46', '2021-10-14 05:16:46'),
(22, 46, '1632466949.png', 'لورينزو إنسيني', 4, 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي', 1, '2021-09-23 22:02:29', '2021-10-14 05:14:20'),
(23, 46, '1632466969.png', 'ديبالا', 5, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو', 2, '2021-09-23 22:02:49', '2021-10-14 05:14:34'),
(24, 46, '1634221006.png', 'بول بوجبا', 5, 'الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج', 3, '2021-10-14 05:16:46', '2021-10-14 05:16:46'),
(25, 47, '1632466949.png', 'لورينزو إنسيني', 4, 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي', 1, '2021-09-23 22:02:29', '2021-10-14 05:14:20'),
(26, 47, '1632466969.png', 'ديبالا', 5, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو', 2, '2021-09-23 22:02:49', '2021-10-14 05:14:34'),
(27, 47, '1634221006.png', 'بول بوجبا', 5, 'الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج', 3, '2021-10-14 05:16:46', '2021-10-14 05:16:46'),
(28, 48, '1632466949.png', 'لورينزو إنسيني', 4, 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي', 1, '2021-09-23 22:02:29', '2021-10-14 05:14:20'),
(29, 48, '1632466969.png', 'ديبالا', 5, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو', 2, '2021-09-23 22:02:49', '2021-10-14 05:14:34'),
(30, 48, '1634221006.png', 'بول بوجبا', 5, 'الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج', 3, '2021-10-14 05:16:46', '2021-10-14 05:16:46'),
(31, 49, '1632466949.png', 'لورينزو إنسيني', 4, 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي', 1, '2021-09-23 22:02:29', '2021-10-14 05:14:20'),
(32, 49, '1632466969.png', 'ديبالا', 5, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو', 2, '2021-09-23 22:02:49', '2021-10-14 05:14:34'),
(33, 49, '1634221006.png', 'بول بوجبا', 5, 'الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج', 3, '2021-10-14 05:16:46', '2021-10-14 05:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_work_processes`
--

CREATE TABLE `user_work_processes` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `serial_number` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_work_processes`
--

INSERT INTO `user_work_processes` (`id`, `icon`, `title`, `text`, `serial_number`, `user_id`, `language_id`, `created_at`, `updated_at`) VALUES
(14, 'fas fa-coffee', 'Have A Coffee', 'Doloremque laudantium totam raperiaeaqu ipsa quae ab illo inventore veritatis et quasi', 1, 170, 185, '2021-11-16 23:09:36', '2021-11-16 23:13:43'),
(15, 'far fa-user', 'Meet With Advisors', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque', 2, 170, 185, '2021-11-16 23:11:13', '2021-11-16 23:11:13'),
(16, 'fas fa-bullseye', 'Achieve Your Goals', 'Quis autem vel eum iure reprehenderit qui ieas voluptate velit esse quam nihil mole', 3, 170, 185, '2021-11-16 23:12:07', '2021-11-16 23:12:07'),
(17, 'fas fa-coffee', 'تناول القهوة', 'إن ألم أولئك الذين يثنون على كل شيء هو نفس الأشياء التي منه هو مخترع الحقيقة وإذا جاز التعبير.', 1, 170, 186, '2021-11-16 23:09:36', '2021-11-16 23:13:43'),
(18, 'far fa-user', 'لقاء مع المستشارين', 'ولكن لكي نفهم من أين يولد كل هذا الخطأ ممن يتهمهم باللذة والألم', 2, 170, 186, '2021-11-16 23:11:13', '2021-11-16 23:11:13'),
(19, 'fas fa-bullseye', 'حقق اهدافك', 'ولكن من يدين بحق من يريد أن تكون المتعة مجرد جماعية', 3, 170, 186, '2021-11-16 23:12:07', '2021-11-16 23:12:07'),
(20, 'fas fa-coffee', 'Have A Coffee', 'Doloremque laudantium totam raperiaeaqu ipsa quae ab illo inventore veritatis et quasi', 1, 171, 187, '2021-11-16 23:09:36', '2021-11-16 23:13:43'),
(21, 'far fa-user', 'Meet With Advisors', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque', 2, 171, 187, '2021-11-16 23:11:13', '2021-11-16 23:11:13'),
(22, 'fas fa-bullseye', 'Achieve Your Goals', 'Quis autem vel eum iure reprehenderit qui ieas voluptate velit esse quam nihil mole', 3, 171, 187, '2021-11-16 23:12:07', '2021-11-16 23:12:07'),
(23, 'fas fa-coffee', 'تناول القهوة', 'إن ألم أولئك الذين يثنون على كل شيء هو نفس الأشياء التي منه هو مخترع الحقيقة وإذا جاز التعبير.', 1, 171, 188, '2021-11-16 23:09:36', '2021-11-16 23:13:43'),
(24, 'far fa-user', 'لقاء مع المستشارين', 'ولكن لكي نفهم من أين يولد كل هذا الخطأ ممن يتهمهم باللذة والألم', 2, 171, 188, '2021-11-16 23:11:13', '2021-11-16 23:11:13'),
(25, 'fas fa-bullseye', 'حقق اهدافك', 'ولكن من يدين بحق من يريد أن تكون المتعة مجرد جماعية', 3, 171, 188, '2021-11-16 23:12:07', '2021-11-16 23:12:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memberships_user_id_foreign` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popups_language_id_foreign` (`language_id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulinks`
--
ALTER TABLE `ulinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_basic_settings`
--
ALTER TABLE `user_basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_blogs`
--
ALTER TABLE `user_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_blogs_user_id_foreign` (`user_id`),
  ADD KEY `user_blogs_language_id_foreign` (`language_id`),
  ADD KEY `user_blogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `user_blog_categories`
--
ALTER TABLE `user_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_blog_categories_language_id_foreign` (`language_id`);

--
-- Indexes for table `user_brands`
--
ALTER TABLE `user_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_counter_informations`
--
ALTER TABLE `user_counter_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_custom_domains`
--
ALTER TABLE `user_custom_domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_faqs`
--
ALTER TABLE `user_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_footer_quick_links`
--
ALTER TABLE `user_footer_quick_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_footer_texts`
--
ALTER TABLE `user_footer_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_hero_sliders`
--
ALTER TABLE `user_hero_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_hero_statics`
--
ALTER TABLE `user_hero_statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_home_page_texts`
--
ALTER TABLE `user_home_page_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_home_sections`
--
ALTER TABLE `user_home_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_jcategories`
--
ALTER TABLE `user_jcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_jobs`
--
ALTER TABLE `user_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_languages`
--
ALTER TABLE `user_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_members`
--
ALTER TABLE `user_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menus`
--
ALTER TABLE `user_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_pages`
--
ALTER TABLE `user_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_permissions_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_portfolios`
--
ALTER TABLE `user_portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_portfolios_user_id_foreign` (`user_id`),
  ADD KEY `user_portfolios_language_id_foreign` (`language_id`),
  ADD KEY `user_portfolios_category_id_foreign` (`category_id`);

--
-- Indexes for table `user_portfolio_categories`
--
ALTER TABLE `user_portfolio_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_portfolio_images`
--
ALTER TABLE `user_portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_qr_codes`
--
ALTER TABLE `user_qr_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_quotes`
--
ALTER TABLE `user_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_quote_inputs`
--
ALTER TABLE `user_quote_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_quote_input_options`
--
ALTER TABLE `user_quote_input_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_seos`
--
ALTER TABLE `user_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_services`
--
ALTER TABLE `user_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_services_user_id_foreign` (`user_id`),
  ADD KEY `user_services_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_skills_user_id_foreign` (`user_id`),
  ADD KEY `user_skills_language_id_foreign` (`language_id`);

--
-- Indexes for table `user_socials`
--
ALTER TABLE `user_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscribers`
--
ALTER TABLE `user_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_testimonials`
--
ALTER TABLE `user_testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_testimonials_user_id_foreign` (`user_id`),
  ADD KEY `user_testimonials_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `user_vcards`
--
ALTER TABLE `user_vcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_vcard_projects`
--
ALTER TABLE `user_vcard_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_vcard_services`
--
ALTER TABLE `user_vcard_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_vcard_testimonials`
--
ALTER TABLE `user_vcard_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_work_processes`
--
ALTER TABLE `user_work_processes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `ulinks`
--
ALTER TABLE `ulinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `user_basic_settings`
--
ALTER TABLE `user_basic_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `user_blogs`
--
ALTER TABLE `user_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `user_blog_categories`
--
ALTER TABLE `user_blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `user_brands`
--
ALTER TABLE `user_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_counter_informations`
--
ALTER TABLE `user_counter_informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `user_custom_domains`
--
ALTER TABLE `user_custom_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_faqs`
--
ALTER TABLE `user_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user_footer_quick_links`
--
ALTER TABLE `user_footer_quick_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_footer_texts`
--
ALTER TABLE `user_footer_texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_hero_sliders`
--
ALTER TABLE `user_hero_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_hero_statics`
--
ALTER TABLE `user_hero_statics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_home_page_texts`
--
ALTER TABLE `user_home_page_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user_home_sections`
--
ALTER TABLE `user_home_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `user_jcategories`
--
ALTER TABLE `user_jcategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_jobs`
--
ALTER TABLE `user_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_languages`
--
ALTER TABLE `user_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `user_members`
--
ALTER TABLE `user_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user_menus`
--
ALTER TABLE `user_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `user_pages`
--
ALTER TABLE `user_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `user_portfolios`
--
ALTER TABLE `user_portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `user_portfolio_categories`
--
ALTER TABLE `user_portfolio_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user_portfolio_images`
--
ALTER TABLE `user_portfolio_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT for table `user_qr_codes`
--
ALTER TABLE `user_qr_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_quotes`
--
ALTER TABLE `user_quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user_quote_inputs`
--
ALTER TABLE `user_quote_inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `user_quote_input_options`
--
ALTER TABLE `user_quote_input_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `user_seos`
--
ALTER TABLE `user_seos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_services`
--
ALTER TABLE `user_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `user_skills`
--
ALTER TABLE `user_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `user_socials`
--
ALTER TABLE `user_socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user_subscribers`
--
ALTER TABLE `user_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_testimonials`
--
ALTER TABLE `user_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `user_vcards`
--
ALTER TABLE `user_vcards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `user_vcard_projects`
--
ALTER TABLE `user_vcard_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_vcard_services`
--
ALTER TABLE `user_vcard_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user_vcard_testimonials`
--
ALTER TABLE `user_vcard_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_work_processes`
--
ALTER TABLE `user_work_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `memberships`
--
ALTER TABLE `memberships`
  ADD CONSTRAINT `memberships_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_blogs`
--
ALTER TABLE `user_blogs`
  ADD CONSTRAINT `user_blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `user_blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_blogs_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_blog_categories`
--
ALTER TABLE `user_blog_categories`
  ADD CONSTRAINT `user_blog_categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_portfolios`
--
ALTER TABLE `user_portfolios`
  ADD CONSTRAINT `user_portfolios_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `user_portfolio_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_portfolios_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_portfolios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_services`
--
ALTER TABLE `user_services`
  ADD CONSTRAINT `user_services_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD CONSTRAINT `user_skills_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_skills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_testimonials`
--
ALTER TABLE `user_testimonials`
  ADD CONSTRAINT `user_testimonials_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `user_languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_testimonials_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
