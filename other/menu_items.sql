DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-06-02 19:37:26', '2021-06-02 19:37:26', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2021-06-02 19:37:26', '2021-06-08 09:35:55', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2021-06-02 19:37:26', '2021-06-08 09:35:55', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2021-06-02 19:37:26', '2021-06-08 09:35:54', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-06-02 19:37:26', '2021-06-08 09:35:55', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-06-02 19:37:26', '2021-06-02 21:11:24', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-06-02 19:37:26', '2021-06-02 21:11:24', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-06-02 19:37:26', '2021-06-02 21:11:24', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-06-02 19:37:26', '2021-06-02 21:11:24', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2021-06-02 19:37:26', '2021-06-08 09:35:55', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-06-02 19:37:27', '2021-06-02 21:11:24', 'voyager.hooks', NULL),
(12, 1, 'Quiz Editor', '/quiz-panel/admin/quiz-editor', '_self', 'voyager-controller', '#000000', NULL, 2, '2021-06-02 20:01:27', '2021-06-02 21:11:24', NULL, ''),
(13, 1, 'Results Editor', '/quiz-panel/admin/results-editor', '_self', 'voyager-trophy', '#000000', NULL, 5, '2021-06-02 21:10:39', '2021-06-08 09:35:54', NULL, ''),
(14, 1, 'Import', '/quiz-panel/admin/quiz-editor/import', '_self', 'voyager-move', '#000000', NULL, 3, '2021-06-08 09:26:10', '2021-06-08 09:26:54', NULL, ''),
(15, 1, 'Export', '/quiz-panel/admin/quiz-editor/export', '_self', 'voyager-file-code', '#000000', NULL, 4, '2021-06-08 09:35:46', '2021-06-08 09:35:54', NULL, '');
