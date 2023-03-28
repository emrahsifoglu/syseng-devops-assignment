CREATE DATABASE IF NOT EXISTS `syseng-devops-assignment`;
CREATE USER IF NOT EXISTS 'mysql'@'%' IDENTIFIED BY 'mysql';
GRANT ALL PRIVILEGES ON `syseng-devops-assignment`.* TO 'mysql'@'%';
