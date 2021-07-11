
CREATE TABLE IF NOT EXISTS `alueet` (
  `alue` int(11) DEFAULT NULL,
  `omistaja` varchar(50) DEFAULT NULL,
  `rahamaara` varchar(50) DEFAULT NULL,
  `collectattu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

REPLACE INTO `alueet` (`alue`, `omistaja`, `rahamaara`, `collectattu`) VALUES
	(1, '', '0', ''),
	(2, '', '0', ''),
	(3, '', '0', ''),
	(4, '', '0', ''),
	(5, '', '0', ''),
	(6, '', '0', ''),
	(7, '', '0', ''),
	(8, '', '0', ''),
	(9, '', '0', ''),
	(10, '', '0', ''),
	(11, '', '0', '');
