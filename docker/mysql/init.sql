CREATE DATABASE IF NOT EXISTS `syseng-devops-assignment`;
CREATE USER IF NOT EXISTS 'mysql'@'%' IDENTIFIED BY 'mysql';
GRANT ALL PRIVILEGES ON `syseng-devops-assignment`.* TO 'mysql'@'%';

CREATE TABLE `syseng-devops-assignment`.`visits_log` (
  `log_id` int unsigned NOT NULL AUTO_INCREMENT,
  `no_of_visits` int unsigned NULL,
  `ip_address` varchar(20) NULL,
  `requested_url` tinytext NULL,
  `referer_page` tinytext NULL,
  `page_name` tinytext NULL,
  `query_string` tinytext NULL,
  `user_agent` tinytext NULL,
  `is_unique` tinyint NOT NULL DEFAULT '0',
  `access_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
