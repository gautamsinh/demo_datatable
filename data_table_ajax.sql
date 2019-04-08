
-- --------------------------------------------------------

--
-- Table structure for table `data_table_ajax`
--

CREATE TABLE `data_table_ajax` (
  `id` int(11) NOT NULL,
  `name` varchar(240) NOT NULL,
  `position` varchar(240) NOT NULL,
  `office` varchar(240) NOT NULL,
  `age` int(11) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `salary` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_table_ajax`
--

INSERT INTO `data_table_ajax` (`id`, `name`, `position`, `office`, `age`, `join_date`, `salary`) VALUES
(1, 'Tiger Nixon', 'System Architect', 'Edinburgh', 61, '2019-04-02 18:30:00', '$320,800'),
(2, 'Garrett Winters', 'Accountant', 'Tokyo', 63, '2011-07-24 18:30:00', '$170,750'),
(3, 'Ashton Cox', 'Junior Technical Author', 'San Francisco', 66, '2009-01-11 18:30:00', '$86,000'),
(4, 'Cedric Kelly', 'Senior Javascript Developer', 'Edinburgh', 22, '2012-03-28 18:30:00', '$433,060'),
(5, 'Airi Satou', 'Accountant', 'Tokyo', 33, '2008-11-27 18:30:00', '$162,700'),
(6, 'Brielle Williamson', 'Integration Specialist', 'New York', 61, '2012-12-01 18:30:00', '$372,000'),
(7, 'Herrod Chandler', 'Sales Assistant', 'San Francisco', 59, '2012-08-05 18:30:00', '$137,500'),
(8, 'Rhona Davidson', 'Integration Specialist', 'Tokyo', 55, '2010-10-13 18:30:00', '$327,900'),
(9, 'Colleen Hurst', 'Javascript Developer', 'San Francisco', 39, '2009-09-14 18:30:00', '$205,500'),
(10, 'Sonya Frost', 'Software Engineer', 'Edinburgh', 23, '2008-12-12 18:30:00', '$103,600'),
(11, 'Jena Gaines', 'Office Manager', 'London', 30, '2008-12-18 18:30:00', '$90,560'),
(12, 'Quinn Flynn', 'Support Lead', 'Edinburgh', 22, '2013-03-02 18:30:00', '$342,000'),
(13, 'Charde Marshall', 'Regional Director', 'San Francisco', 36, '2008-10-15 18:30:00', '$470,600'),
(14, 'Haley Kennedy', 'Senior Marketing Designer', 'London', 43, '2012-12-17 18:30:00', '$313,500'),
(15, 'Tatyana Fitzpatrick', 'Regional Director', 'London', 19, '2010-03-16 18:30:00', '$385,750'),
(16, 'Michael Silva', 'Marketing Designer', 'London', 66, '2012-11-26 18:30:00', '$198,500'),
(17, 'Paul Byrd', 'Chief Financial Officer (CFO)', 'New York', 64, '2010-06-08 18:30:00', '$725,000'),
(18, 'Gloria Little', 'Systems Administrator', 'New York', 59, '2009-04-09 18:30:00', '$237,500'),
(19, 'Bradley Greer', 'Software Engineer', 'London', 41, '2012-10-12 18:30:00', '$132,000'),
(20, 'Dai Rios', 'Personnel Lead', 'Edinburgh', 35, '2012-09-25 18:30:00', '$217,500'),
(21, 'Jenette Caldwell', 'Development Lead', 'New York', 30, '2011-09-02 18:30:00', '$345,000'),
(22, 'Yuri Berry', 'Chief Marketing Officer (CMO)', 'New York', 40, '2009-06-24 18:30:00', '$675,000'),
(23, 'Caesar Vance', 'Pre-Sales Support', 'New York', 21, '2011-12-11 18:30:00', '$106,450'),
(24, 'Doris Wilder', 'Sales Assistant', 'Sidney', 23, '2010-09-19 18:30:00', '$85,600'),
(25, 'Angelica Ramos', 'Chief Executive Officer (CEO)', 'London', 47, '2009-10-08 18:30:00', '$1,200,000'),
(26, 'Gavin Joyce', 'Developer', 'Edinburgh', 42, '2010-12-21 18:30:00', '$92,575'),
(27, 'Jennifer Chang', 'Regional Director', 'Singapore', 28, '2010-11-13 18:30:00', '$357,650'),
(28, 'Brenden Wagner', 'Software Engineer', 'San Francisco', 28, '2011-06-06 18:30:00', '$206,850');


ALTER TABLE `data_table_ajax`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_table_ajax`
--
ALTER TABLE `data_table_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
