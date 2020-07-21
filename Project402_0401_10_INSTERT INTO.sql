USE BMGT402_Project_0401_10

INSERT INTO Show VALUES 
	('Cats Terrorize Campus', 'FM', 'Monday', '2000'),
	('Dropout Rates Soar', 'FM', 'Tuesday', '1800'),
	('Someone Stole Testudo!', 'FM', 'Thursday', '2000'),
	('Smith Business News', 'FM', 'Monday', '2100'),
	('Dogs End Cat Terror', 'FM', 'Monday', '2000'),
	('The Ultimate Sacrifice to Testudo', 'FM', 'Monday', '1600'),
	('Just Another Podcast', 'FM', 'Friday', '0930'),
	('Just Another Podcast II', 'FM', 'Wednesday', '0930'),
	('Roach Motel; The Story of CP Towers', 'FM', 'Thursday', '1230'),
	('Rent Prices on the Rise', 'AM', 'Saturday', '0730'),
	('Twerk for Tchaikovsky', 'FM', 'Sunday', '0830'),
	('Shadow Snakes', 'FM', 'Tuesday', '1400'),
	('Love Letters to Mothman', 'AM', 'Monday', '1000'),
	('Lady With A Fan', 'FM', 'Wednesday', '1830'),
	('Sexy C-Sides', 'AM', 'Saturday', '1100'),
	('Get out of my room, Mom', 'FM', 'Sunday', '1630'),
	('Striving for the Sauce', 'FM', 'Sunday', '1830'),
	('Gumo Wrestling', 'FM', 'Monday', '2100'),
	('Full Scottish Breakfast', 'AM', 'Monday', '1200'),
	('Fantastic Beats and Where to Find Them', 'FM', 'Monday', '1330');

INSERT INTO Members VALUES
	(001, 'Cats Terrorize Campus', 'Calvin', 'Crunkleton', '1999-06-12', 'Junior', '2017-09-12'),
	(002, 'Dropout Rates Soar', 'Kyle', 'Hurley', '1999-06-13', 'Junior', '2017-09-12'),
	(003, 'Someone Stole Testudo!', 'Jesse', 'Parriera', '2000-09-09', 'Junior', '2019-09-23'),
	(004, 'Smith Business News', 'Anders', 'Julin', '1999-01-11', 'Junior', '2018-02-22'),
	(005, 'Dogs End Cat Terror', 'Shannon', 'Taylor', '1999-12-03', 'Junior', '2019-09-25'),
	(006, 'The Ultimate Sacrifice to Testudo', 'Emily', 'Whitaker', '1999-06-27', 'Junior', '2019-03-01'),
	(007, 'Just Another Podcast', 'Emma', 'Mirizio', '1999-09-01', 'Junior', '2019-03-01'),
	(008, 'Just Another Podcast II', 'Ketki', 'Chuahan', '1997-03-22', 'Senior', '2016-09-07'),
	(009, 'Roach Motel; The Story of CP Towers', 'Jordan', 'Stovka', '1998-01-28', 'Senior', '2018-02-22'),
	(010, 'Rent Prices on the Rise', 'Gio', 'Steckle', '1998-10-02', 'Senior', '2016-03-01'),
	(011, 'Twerk for Tchaikovsky', 'Katie', 'McCarthy', '2000-11-24', 'Sophomore', '2019-10-04'),
	(012, 'Shadow Snakes', 'Jay', 'Cohen', '1997-12-12', 'Senior', '2016-09-05'),
	(013, 'Love Letters to Mothman', 'Grace', 'Chubb', '2001-03-23', 'Freshman', '2019-10-10'),
	(014, 'Lady With A Fan', 'Rigby', 'Phillips', '1998-04-01', 'Senior', '2015-11-01'),
	(015, 'Sexy C-Sides', 'Christopher', 'Shea', '2000-07-05', 'Sophomore', '2018-02-12'),
	(016, 'Get out of my room, Mom', 'Allison', 'Nussbaum', '1999-06-12', 'Junior', '2017-09-12'),
	(017, 'Striving for the Sauce', 'Daniel', 'McGarvey', '2001-05-03', 'Freshman', '2019-10-05'),
	(018, 'Gumo Wrestling', 'Kevin', 'Gu', '2000-08-05', 'Sophomore', '2018-03-20'),
	(019, 'Full Scottish Breakfast', 'Craig', 'Thornburn', '1999-01-02', 'Junior', '2019-02-14'),
	(020, 'Fantastic Beats and Where to Find Them', 'Dimitri', 'Pappas', '2001-07-04', 'Freshman', '2019-09-29');

INSERT INTO ExecutiveStaff VALUES
	('President','01', '1400'),
	('Vice President', '02', '1500'),
	('Treasurer', '03', '1600'),
	('Secretary', '04','1900'),
	('Historian', '05','2100');

INSERT INTO Team VALUES
	('Business','Treasurer', 'Monday', '1800'),
	('Music', 'President', 'Tuesday', '1800'),
	('Communications', 'Vice President', 'Wednesday', '1800'),
	('Graphic Design', 'Secretary', 'Thursday', '1800');

INSERT INTO Participate VALUES
	('Business','001'),
	('Business','005'),
	('Communications','011'),
	('Music','005'),
	('Business','020'),
	('Graphic Design','005'),
	('Music','011'),
	('Communications','006');

INSERT INTO ProjectWMUC VALUES
	('01', 'Business','Sweatshirts', '2019-01-01', '2020-01-01'),
	('02', 'Music', 'New Music', '2019-01-31', '2020-01-31'),
	('03', 'Communications','Thrift Store', '2019-02-14', '2020-02-14'),
	('04', 'Graphic Design','Poster', '2019-03-15', '2020-03-15');