# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23-0ubuntu0.16.04.1)
# Base de datos: pc
# Tiempo de Generación: 2018-08-24 15:40:35 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `value` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `respondent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `option_id` (`option_id`),
  CONSTRAINT `answers_fk2` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;

INSERT INTO `answers` (`id`, `option_id`, `value`, `respondent_id`)
VALUES
	(1,825,'true',1),
	(2,834,'true',1),
	(3,835,'true',1),
	(4,838,'true',1),
	(5,844,'true',1),
	(6,846,'true',1),
	(7,849,'true',1),
	(8,851,'true',1),
	(9,857,'true',1),
	(10,858,'true',1),
	(11,867,'true',1),
	(12,876,'true',1),
	(13,877,'true',1),
	(14,879,'true',1),
	(15,880,'true',1),
	(16,883,'true',1),
	(17,896,'true',1),
	(18,828,'true',2),
	(19,843,'true',2),
	(20,840,'true',2),
	(21,846,'true',2),
	(22,847,'true',2),
	(23,848,'true',2),
	(24,849,'true',2),
	(25,850,'true',2),
	(26,851,'true',2),
	(27,857,'true',2),
	(28,858,'true',2),
	(29,859,'true',2),
	(30,860,'true',2),
	(31,865,'true',2),
	(32,877,'true',2),
	(33,878,'true',2),
	(34,883,'true',2),
	(35,885,'true',2),
	(36,888,'true',2),
	(37,889,'true',2),
	(38,890,'true',2),
	(39,894,'true',2),
	(40,827,'true',3),
	(41,841,'true',3),
	(42,844,'true',3),
	(43,847,'true',3),
	(44,850,'true',3),
	(45,852,'true',3),
	(46,858,'true',3),
	(47,866,'true',3),
	(48,886,'true',3),
	(49,888,'true',3),
	(50,889,'true',3),
	(51,890,'true',3),
	(52,891,'true',3),
	(53,892,'true',3),
	(54,893,'true',3),
	(55,894,'true',3),
	(56,825,'true',5),
	(57,834,'true',5),
	(58,835,'true',5),
	(59,838,'true',5),
	(60,844,'true',5),
	(61,846,'true',5),
	(62,849,'true',5),
	(63,851,'true',5),
	(64,857,'true',5),
	(65,858,'true',5),
	(66,867,'true',5),
	(67,876,'true',5),
	(68,877,'true',5),
	(69,879,'true',5),
	(70,880,'true',5),
	(71,883,'true',5),
	(72,896,'true',5),
	(73,828,'true',4),
	(74,843,'true',4),
	(75,840,'true',4),
	(76,846,'true',4),
	(77,847,'true',4),
	(78,848,'true',4),
	(79,849,'true',4),
	(80,850,'true',4),
	(81,851,'true',4),
	(82,857,'true',4),
	(83,858,'true',4),
	(84,859,'true',4),
	(85,860,'true',4),
	(86,865,'true',4),
	(87,877,'true',4),
	(88,878,'true',4),
	(89,883,'true',4),
	(90,885,'true',4),
	(91,888,'true',4),
	(92,889,'true',4),
	(93,890,'true',4),
	(94,894,'true',4),
	(95,825,'true',6),
	(96,834,'true',6),
	(97,835,'true',6),
	(98,838,'true',6),
	(99,844,'true',6),
	(100,846,'true',6),
	(101,849,'true',6),
	(102,851,'true',6),
	(103,857,'true',6),
	(104,858,'true',6),
	(105,867,'true',6),
	(106,876,'true',6),
	(107,877,'true',6),
	(108,879,'true',6),
	(109,880,'true',6),
	(110,883,'true',6),
	(111,896,'true',6);

/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla boroughs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `boroughs`;

CREATE TABLE `boroughs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `boroughs_fk0` (`department_id`),
  CONSTRAINT `boroughs_fk0` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `boroughs` WRITE;
/*!40000 ALTER TABLE `boroughs` DISABLE KEYS */;

INSERT INTO `boroughs` (`id`, `name`, `lat`, `lng`, `department_id`)
VALUES
	(1,'Floridablanca',7.08299,-73.1383,1),
	(2,'Zapatoca',6.81388,-73.2813,1);

/*!40000 ALTER TABLE `boroughs` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla departments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;

INSERT INTO `departments` (`id`, `name`)
VALUES
	(1,'Santander');

/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `options`;

CREATE TABLE `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `keyvar` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `parent` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `option_fk0` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;

INSERT INTO `options` (`id`, `question_id`, `keyvar`, `label`, `parent`)
VALUES
	(825,117,'acnur','ACNUR',0),
	(826,117,'art','ART',0),
	(827,117,'fao','FAO',0),
	(828,117,'onu_mujeres','ONU MUJERES',0),
	(829,117,'pastoral','PASTORAL SOCIAL',0),
	(830,117,'pma','PMA',0),
	(831,117,'pnud','PNUD',0),
	(832,117,'unicef','UNICEF',0),
	(833,118,'ascoba','ASCOBA',0),
	(834,118,'banacol','BANACOL',0),
	(835,118,'cordepaz','CORDEPAZ',0),
	(836,118,'corp_vinculos','CORPORACION VINCULOS',0),
	(837,118,'corpoeducacion','CORPOEDUCACION',0),
	(838,118,'fisch','FISCH',0),
	(839,118,'mareia','MAREIA',0),
	(840,118,'mesca','MESCA',0),
	(841,118,'cocomacia','COCOMACIA',0),
	(842,118,'cojucoma','COJUCOMA',0),
	(843,118,'coalico','COALICO',0),
	(844,118,'otro','Otro',0),
	(845,118,'ninguno','Ninguno',0),
	(846,119,'comite_direc','Comité Directivo',0),
	(847,119,'coord_tec_nal','Coordinación Técnica Nacional',0),
	(848,119,'coord_tec_terri','Coordinación Técnica Territorial',0),
	(849,119,'comite_dina','Comite Dinamizador',0),
	(850,119,'personal_terri','Personal Territorial',0),
	(851,120,'nacional','Nacional',0),
	(852,120,'departamental','Departamental',0),
	(853,120,'municipal','Municipal',0),
	(854,120,'veredal','Veredal',0),
	(855,120,'comunal','Comunal',0),
	(856,120,'familiar','Familiar',0),
	(857,121,'participacion_activa','1.Participacion activa de las comunidades priorizadas',0),
	(858,121,'estrategias_medios','2. Estrategias de medios de vida',0),
	(859,121,'mejora_acceso_servicios','3. Mejora en el acceso de Servicios básicos',0),
	(860,121,'todos','Todos',0),
	(861,122,'contratacion_convenio_compra','Contratación/Convenio/Compra',0),
	(862,122,'reunion_coordinacion','Reunión de Coordinación',0),
	(863,122,'reunion_institucional','Reunión Institucional',0),
	(864,122,'reunion_comunitaria','Reunión Comunitaria',0),
	(865,122,'socializacion','Socialización',0),
	(866,122,'taller','Taller',0),
	(867,122,'feria','Feria',0),
	(868,122,'capacitacion','Capacitación',0),
	(869,122,'elaboracion_documento','Elaboración de Documento',0),
	(870,122,'visita_terreno','Visita de Terreno',0),
	(871,122,'inicio_obra','Inicio de Obra',0),
	(872,122,'entrega_obra','Entrega de Obra',0),
	(873,122,'recoleccion_informacion','Recolección de Información',0),
	(874,122,'alistamiento','Alistamiento',0),
	(875,122,'otra','Otra',0),
	(876,123,'jovenes','Jóvenes',0),
	(877,123,'mujeres','Mujeres',0),
	(878,123,'victimas','Víctimas',0),
	(879,123,'indigenas','Indígenas',0),
	(880,123,'afrodescendientes','Afrodescendientes',0),
	(881,123,'funcionarios','Funcionarios Públicos',0),
	(882,123,'lideres','Lideres Comunitarios',0),
	(883,123,'campesinos','Campesinos',0),
	(884,123,'reincorporados','Reincorporados',0),
	(885,123,'otros','Otros',0),
	(886,123,'todos','Todos',0),
	(887,123,'ninguno','Ninguno',0),
	(888,124,'jac','JAC / Consejo Comunitario',0),
	(889,124,'alcaldia_municipal','Alcaldía Municipal',0),
	(890,124,'gobernacion','Gobernación',0),
	(891,124,'agencia_nal_estado','Agencia Nacional del Estado',0),
	(892,124,'empresa','Empresa',0),
	(893,124,'caja_compensacion','Caja de Compensación',0),
	(894,124,'ong','ONG´s',0),
	(895,124,'otro','Otro',0),
	(896,124,'ninguno','Ninguno',0);

/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla q_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `q_text`;

CREATE TABLE `q_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `q_text` WRITE;
/*!40000 ALTER TABLE `q_text` DISABLE KEYS */;

INSERT INTO `q_text` (`id`, `text`)
VALUES
	(61,'AGENCIA/ENTIDAD DE QUIEN REALIZA EL REPORTE'),
	(62,'SOCIO IMPLEMENTADOR DEL REPORTE'),
	(63,'NIVEL DE GOBERNANZA'),
	(64,'TERRITORIO DE REALIZACIÓN DE LA ACTIVIDAD'),
	(65,'COMPONENTE / PRODUCTO DEL PROYECTO'),
	(66,'TIPO DE ACTIVIDAD'),
	(67,'GRUPO POBLACIONAL VINCULADO A LA ACTIVIDAD'),
	(68,'ASISTENTES INSTITUCIONALES');

/*!40000 ALTER TABLE `q_text` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `keyvar` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `utilities` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_fk0` (`topic_id`),
  KEY `text_id` (`text_id`),
  CONSTRAINT `question_fk0` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`),
  CONSTRAINT `question_fk1` FOREIGN KEY (`text_id`) REFERENCES `q_text` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;

INSERT INTO `questions` (`id`, `text_id`, `topic_id`, `keyvar`, `parent`, `utilities`)
VALUES
	(117,61,85,'ag_reporte',0,'{\"priority\":false,\"multiple\":false, \"normalized\":false, \"checked_yes\":false, \"pie\":true}'),
	(118,62,85,'socio',0,'{\"priority\":false,\"multiple\":true, \"normalized\":false, \"checked_yes\":false, \"pie\":true}'),
	(119,63,85,'gobernanza',0,'{\"priority\":false,\"multiple\":true, \"normalized\":false, \"checked_yes\":false, \"pie\":true}'),
	(120,64,85,'territorio',0,'{\"priority\":false,\"multiple\":false, \"normalized\":false, \"checked_yes\":false, \"pie\":true}'),
	(121,65,85,'componente',0,'{\"priority\":false,\"multiple\":true, \"normalized\":false, \"checked_yes\":false, \"pie\":true}'),
	(122,66,85,'tipo_actividad',0,'{\"priority\":false,\"multiple\":false, \"normalized\":false, \"checked_yes\":false, \"pie\":true}'),
	(123,67,85,'grupo_poblacional',0,'{\"priority\":false,\"multiple\":true, \"normalized\":false, \"checked_yes\":false, \"pie\":true}'),
	(124,68,85,'asistentes',0,'{\"priority\":false,\"multiple\":true, \"normalized\":false, \"checked_yes\":false, \"pie\":true}');

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla respondents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `respondents`;

CREATE TABLE `respondents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poblacion` text COLLATE utf8_spanish_ci NOT NULL,
  `rol` text COLLATE utf8_spanish_ci NOT NULL,
  `surv_bor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `respondents` WRITE;
/*!40000 ALTER TABLE `respondents` DISABLE KEYS */;

INSERT INTO `respondents` (`id`, `poblacion`, `rol`, `surv_bor_id`)
VALUES
	(1,'campesina','Presidente JAC',1),
	(2,'campesina','Lider Comunitaria',1),
	(3,'campesina','Presidente JAC',1),
	(4,'campesina','Presidente JAC',1),
	(5,'indígena','Gobernador indígena',1),
	(6,'campesina','Líder asociación víctimas MAP',1);

/*!40000 ALTER TABLE `respondents` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla survey_borough
# ------------------------------------------------------------

DROP TABLE IF EXISTS `survey_borough`;

CREATE TABLE `survey_borough` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `borough_id` int(11) NOT NULL,
  `starting_date` datetime NOT NULL DEFAULT '2001-01-01 00:00:00',
  `finish_date` datetime NOT NULL DEFAULT '2002-02-02 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '2001-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `survey_id` (`survey_id`),
  KEY `borough_id` (`borough_id`),
  CONSTRAINT `s_b_fk0` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`),
  CONSTRAINT `s_b_fk1` FOREIGN KEY (`borough_id`) REFERENCES `boroughs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `survey_borough` WRITE;
/*!40000 ALTER TABLE `survey_borough` DISABLE KEYS */;

INSERT INTO `survey_borough` (`id`, `survey_id`, `borough_id`, `starting_date`, `finish_date`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'2018-01-01 08:50:00','2018-01-01 09:50:00','2018-08-02 22:39:19','2018-08-02 22:39:19'),
	(2,1,2,'2015-06-17 10:21:25','2015-06-20 14:25:45','2017-03-23 13:31:10','2017-03-23 13:31:10');

/*!40000 ALTER TABLE `survey_borough` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla surveys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `surveys`;

CREATE TABLE `surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;

INSERT INTO `surveys` (`id`, `name`)
VALUES
	(1,'Survey1');

/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `topics`;

CREATE TABLE `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `keyvar` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `surv_bor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `survey_id` (`surv_bor_id`),
  CONSTRAINT `topic_fk0` FOREIGN KEY (`surv_bor_id`) REFERENCES `survey_borough` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;

INSERT INTO `topics` (`id`, `name`, `keyvar`, `surv_bor_id`)
VALUES
	(85,'Prueba','prueba',1);

/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
