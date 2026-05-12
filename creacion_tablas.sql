CREATE TABLE IF NOT EXISTS `ninjas` (
	`idninjas` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nombre` varchar(50) NOT NULL,
	`edad` int,
	`idclan` int NOT NULL,
	PRIMARY KEY (`idninjas`)
);
CREATE TABLE IF NOT EXISTS `jutsus` (
	`idjutsus` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nombre` varchar(50) NOT NULL,
	PRIMARY KEY (`idjutsus`)
);
CREATE TABLE IF NOT EXISTS `naturaleza_chakra` (
	`idnaturaleza_chakra` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nombre` varchar(50) NOT NULL,
	`tipo` varchar(50) NOT NULL,
	PRIMARY KEY (`idnaturaleza_chakra`)
);
CREATE TABLE IF NOT EXISTS `clanes` (
	`id_clan` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nombre_clan` varchar(50) NOT NULL,
	PRIMARY KEY (`id_clan`)
);
CREATE TABLE IF NOT EXISTS `ninja_naturaleza` (
	`id_ninja_naturaleza` int AUTO_INCREMENT NOT NULL UNIQUE,
	`id_naturaleza` int NOT NULL,
	`id_ninja` int NOT NULL,
	PRIMARY KEY (`id_ninja_naturaleza`)
);
CREATE TABLE IF NOT EXISTS `ninja_jutsu` (
	`id_ninja_jutsu` int AUTO_INCREMENT NOT NULL UNIQUE,
	`id_jutsu` int NOT NULL,
	`id_ninja` int NOT NULL,
	PRIMARY KEY (`id_ninja_jutsu`)
);
ALTER TABLE `ninjas` ADD CONSTRAINT `ninjas_fk3` FOREIGN KEY (`idclan`) REFERENCES `clanes`(`id_clan`);
ALTER TABLE `ninja_naturaleza` ADD CONSTRAINT `ninja_naturaleza_fk1` FOREIGN KEY (`id_naturaleza`) REFERENCES `naturaleza_chakra`(`idnaturaleza_chakra`);
ALTER TABLE `ninja_naturaleza` ADD CONSTRAINT `ninja_naturaleza_fk2` FOREIGN KEY (`id_ninja`) REFERENCES `ninjas`(`idninjas`);
ALTER TABLE `ninja_jutsu` ADD CONSTRAINT `ninja_jutsu_fk1` FOREIGN KEY (`id_jutsu`) REFERENCES `jutsus`(`idjutsus`);
ALTER TABLE `ninja_jutsu` ADD CONSTRAINT `ninja_jutsu_fk2` FOREIGN KEY (`id_ninja`) REFERENCES `ninjas`(`idninjas`);