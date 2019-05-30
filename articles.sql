SET NAMES utf8;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';
SET foreign_key_checks = 0;
SET time_zone = '+01:00';

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `auteur` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `section` set('Politique','Cinema','Sport') NOT NULL,
  `date` date DEFAULT NULL,
  `statut` set('Edit','Submitted','Accepted','Published') NOT NULL,
  `texte` text DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `article` (`id`, `auteur`, `titre`, `section`, `date`, `statut`, `texte`) VALUES
	(1,	'Arthur',	'Legislatives',	'Politique',	'2018-07-21',	'Edit',	'aujourd hui, jour de bla bla bla'),
	(2,	'Arthur',	'Festival de Cannes',	'Cinema',	'2019-04-18',	'Published',	'C est le festival de Cannes et ....'),
	(3,	'Alexis',	'JO2024',	'Sport',	'2017-11-15',	'Submitted',	'Paris doit accueillir les .....'),
	(4,	'Alexis',	'Avengers',	'Cinema',	'2019-04-03',	'Accepted',	'La sortie du film .....');
