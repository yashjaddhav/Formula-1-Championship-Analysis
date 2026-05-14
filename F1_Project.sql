CREATE DATABASE f1_championship;
USE f1_championship;

CREATE TABLE drivers (
    driver_id INT AUTO_INCREMENT PRIMARY KEY,
    driver_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50)
);

CREATE TABLE constructors (
    constructor_id INT AUTO_INCREMENT PRIMARY KEY,
    constructor_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

CREATE TABLE engines (
    engine_id INT AUTO_INCREMENT PRIMARY KEY,
    engine_name VARCHAR(100) NOT NULL
);

CREATE TABLE seasons (
    season_id INT AUTO_INCREMENT PRIMARY KEY,
    year INT UNIQUE,
    races INT
);

CREATE TABLE driver_championship (
    championship_id INT AUTO_INCREMENT PRIMARY KEY,
    season_id INT,
    driver_id INT,
    constructor_id INT,
    engine_id INT,
    wins INT,
    poles INT,
    podiums INT,
    points DECIMAL(6,1),
    age INT,

    FOREIGN KEY (season_id) REFERENCES seasons(season_id),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
    FOREIGN KEY (constructor_id) REFERENCES constructors(constructor_id),
    FOREIGN KEY (engine_id) REFERENCES engines(engine_id)
);

CREATE TABLE constructor_championship (
    cc_id INT AUTO_INCREMENT PRIMARY KEY,
    season_id INT,
    constructor_id INT,

    FOREIGN KEY (season_id) REFERENCES seasons(season_id),
    FOREIGN KEY (constructor_id) REFERENCES constructors(constructor_id)
);

INSERT INTO drivers (driver_name, nationality) VALUES
('Giuseppe Farina','Italian'),
('Juan Manuel Fangio','Argentine'),
('Alberto Ascari','Italian'),
('Mike Hawthorn','British'),
('Jack Brabham','Australian'),
('Phil Hill','American'),
('Graham Hill','British'),
('Jim Clark','British'),
('John Surtees','British'),
('Denny Hulme','New Zealander'),
('Jackie Stewart','British'),
('Jochen Rindt','Austrian'),
('Emerson Fittipaldi','Brazilian'),
('James Hunt','British'),
('Niki Lauda','Austrian'),
('Mario Andretti','American'),
('Jody Scheckter','South African'),
('Alan Jones','Australian'),
('Nelson Piquet','Brazilian'),
('Keke Rosberg','Finnish'),
('Alain Prost','French'),
('Ayrton Senna','Brazilian'),
('Nigel Mansell','British'),
('Michael Schumacher','German'),
('Damon Hill','British'),
('Jacques Villeneuve','Canadian'),
('Mika Hakkinen','Finnish'),
('Fernando Alonso','Spanish'),
('Kimi Raikkonen','Finnish'),
('Lewis Hamilton','British'),
('Jenson Button','British'),
('Sebastian Vettel','German'),
('Nico Rosberg','German'),
('Max Verstappen','Dutch');

INSERT INTO constructors (constructor_name,country) VALUES
('Alfa Romeo','Italy'),
('Ferrari','Italy'),
('Mercedes','Germany'),
('McLaren','UK'),
('Williams','UK'),
('Red Bull','Austria'),
('Lotus','UK'),
('Brabham','UK'),
('Tyrrell','UK'),
('Renault','France'),
('Benetton','UK'),
('Brawn GP','UK');

INSERT INTO engines (engine_name) VALUES
('Alfa Romeo'),
('Ferrari'),
('Mercedes'),
('Honda'),
('Renault'),
('Ford Cosworth'),
('BMW'),
('TAG Porsche'),
('Repco'),
('Coventry Climax');

INSERT INTO seasons (year,races) VALUES
(1950,7),
(1951,8),
(1952,8),
(1953,9),
(1954,9),
(1955,7),
(1956,8),
(1957,8),
(1958,11),
(1959,9),
(1960,10),
(1961,8),
(1962,9),
(1963,10),
(1964,10),
(1965,10),
(1966,9),
(1967,11),
(1968,12),
(1969,11),
(1970,13),
(1971,11),
(1972,12),
(1973,15),
(1974,15),
(1975,14),
(1976,16),
(1977,17),
(1978,16),
(1979,15),
(1980,14),
(1981,15),
(1982,16),
(1983,15),
(1984,16),
(1985,16),
(1986,16),
(1987,16),
(1988,16),
(1989,16),
(1990,16),
(1991,16),
(1992,16),
(1993,16),
(1994,16),
(1995,17),
(1996,16),
(1997,17),
(1998,16),
(1999,16),
(2000,17),
(2001,17),
(2002,17),
(2003,16),
(2004,18),
(2005,19),
(2006,18),
(2007,17),
(2008,18),
(2009,17),
(2010,19),
(2011,19),
(2012,20),
(2013,19),
(2014,19),
(2015,19),
(2016,21),
(2017,20),
(2018,21),
(2019,21),
(2020,17),
(2021,22),
(2022,22),
(2023,22),
(2024,24);

INSERT INTO driver_championship
(season_id, driver_id, constructor_id, engine_id, wins, poles, podiums, points, age)
VALUES
(1,1,1,1,3,2,3,30,44),
(2,2,1,1,3,4,5,31,40),
(3,3,2,2,6,5,6,36,34),
(4,3,2,2,5,6,5,34.5,35),
(5,2,3,3,6,5,7,42,43),
(6,2,3,3,4,3,5,40,44),
(7,2,2,2,3,6,5,30,45),
(8,2,2,2,4,4,6,40,46),
(9,4,2,2,1,4,7,42,29),
(10,5,7,10,2,1,5,31,33),
(11,5,7,10,5,3,5,43,34),
(12,6,2,2,2,5,6,34,34),
(13,7,10,10,4,1,6,42,33),
(14,8,7,10,7,7,9,54,27),
(15,9,2,2,2,2,6,40,30),
(16,8,7,10,6,6,6,54,29),
(17,5,8,9,4,2,6,42,40),
(18,10,8,9,2,1,8,51,31),
(19,7,7,6,3,2,8,48,39),
(20,11,9,6,6,9,9,63,30),
(21,12,7,6,5,4,6,45,28),
(22,11,9,6,6,2,9,62,32),
(23,13,7,6,5,3,8,61,25),
(24,11,9,6,5,5,9,71,34),
(25,13,4,6,3,1,7,55,27),
(26,15,2,2,5,9,9,64.5,26),
(27,14,4,6,6,8,9,69,29),
(28,15,2,2,3,2,10,72,28),
(29,16,7,6,6,6,11,64,38),
(30,17,2,2,3,4,8,51,29),
(31,18,5,6,5,5,10,67,34),
(32,19,8,6,3,4,9,50,29),
(33,20,5,6,1,0,5,44,33),
(34,19,8,7,3,4,9,59,31),
(35,15,4,8,5,0,9,72,35),
(36,21,4,8,5,2,11,73,30),
(37,21,4,8,4,2,11,72,31),
(38,19,5,4,3,4,9,73,35),
(39,22,4,4,8,13,11,90,28),
(40,21,4,4,4,2,11,76,34),
(41,22,4,4,6,10,11,78,30),
(42,22,4,4,7,8,12,96,31),
(43,23,5,5,9,14,12,108,39),
(44,21,5,5,7,13,12,99,38),
(45,24,11,6,6,6,8,92,25),
(46,24,11,5,9,6,11,102,26),
(47,25,5,5,8,9,12,97,36),
(48,26,5,5,7,8,11,81,26),
(49,27,4,3,8,9,13,100,30),
(50,27,4,3,5,11,11,76,31),
(51,24,2,2,9,9,12,108,31),
(52,24,2,2,9,11,14,123,32),
(53,24,2,2,11,7,17,144,33),
(54,24,2,2,6,5,8,93,34),
(55,24,2,2,13,8,15,148,35),
(56,28,10,5,7,6,15,133,24),
(57,28,10,5,7,6,14,134,25),
(58,29,2,2,6,3,12,110,28),
(59,30,4,3,5,7,10,98,23),
(60,31,12,3,6,4,9,95,29),
(61,32,6,5,5,10,10,256,23),
(62,32,6,5,11,15,17,392,24),
(63,32,6,5,5,6,10,281,25),
(64,32,6,5,13,9,16,397,26),
(65,30,3,3,11,7,16,384,29),
(66,30,3,3,10,11,17,381,30),
(67,33,3,3,9,8,16,385,31),
(68,30,3,3,9,11,13,363,32),
(69,30,3,3,11,11,17,408,33),
(70,30,3,3,11,5,17,413,34),
(71,30,3,3,11,10,14,347,35),
(72,34,6,4,10,10,18,395.5,24),
(73,34,6,4,15,7,17,454,25),
(74,34,6,4,19,12,21,575,26),
(75,34,6,4,9,8,14,437,27);

INSERT INTO constructor_championship
(season_id, constructor_id)
VALUES
(9,7),   -- 1958 Vanwall
(10,7),  -- 1959 Cooper
(11,7),  -- 1960 Cooper
(12,2),  -- 1961 Ferrari
(13,10), -- 1962 BRM
(14,7),  -- 1963 Lotus
(15,2),  -- 1964 Ferrari
(16,7),  -- 1965 Lotus
(17,8),  -- 1966 Brabham
(18,8),  -- 1967 Brabham
(19,7),  -- 1968 Lotus
(20,9),  -- 1969 Matra
(21,7),  -- 1970 Lotus
(22,9),  -- 1971 Tyrrell
(23,7),  -- 1972 Lotus
(24,7),  -- 1973 Lotus
(25,4),  -- 1974 McLaren
(26,2),  -- 1975 Ferrari
(27,2),  -- 1976 Ferrari
(28,2),  -- 1977 Ferrari
(29,7),  -- 1978 Lotus
(30,2),  -- 1979 Ferrari
(31,5),  -- 1980 Williams
(32,5),  -- 1981 Williams
(33,2),  -- 1982 Ferrari
(34,2),  -- 1983 Ferrari
(35,4),  -- 1984 McLaren
(36,4),  -- 1985 McLaren
(37,5),  -- 1986 Williams
(38,5),  -- 1987 Williams
(39,4),  -- 1988 McLaren
(40,4),  -- 1989 McLaren
(41,4),  -- 1990 McLaren
(42,4),  -- 1991 McLaren
(43,5),  -- 1992 Williams
(44,5),  -- 1993 Williams
(45,5),  -- 1994 Williams
(46,11), -- 1995 Benetton
(47,5),  -- 1996 Williams
(48,5),  -- 1997 Williams
(49,4),  -- 1998 McLaren
(50,4),  -- 1999 McLaren
(51,2),  -- 2000 Ferrari
(52,2),  -- 2001 Ferrari
(53,2),  -- 2002 Ferrari
(54,2),  -- 2003 Ferrari
(55,2),  -- 2004 Ferrari
(56,10), -- 2005 Renault
(57,10), -- 2006 Renault
(58,2),  -- 2007 Ferrari
(59,2),  -- 2008 Ferrari
(60,12), -- 2009 Brawn GP
(61,6),  -- 2010 Red Bull
(62,6),  -- 2011 Red Bull
(63,6),  -- 2012 Red Bull
(64,6),  -- 2013 Red Bull
(65,3),  -- 2014 Mercedes
(66,3),  -- 2015 Mercedes
(67,3),  -- 2016 Mercedes
(68,3),  -- 2017 Mercedes
(69,3),  -- 2018 Mercedes
(70,3),  -- 2019 Mercedes
(71,3),  -- 2020 Mercedes
(72,3),  -- 2021 Mercedes
(73,6),  -- 2022 Red Bull
(74,6),  -- 2023 Red Bull
(75,4);  -- 2024 McLaren

select*from drivers;
select*from Constructors;
select*from engines;
select*from seasons;
select*from driver_championship;
select*from constructor_championship;



-- Driver With Most Championships
SELECT d.driver_name, COUNT(*) AS titles
FROM driver_championship dc
JOIN drivers d ON dc.driver_id = d.driver_id
GROUP BY d.driver_name
ORDER BY titles DESC
LIMIT 10;

-- Constructors With Most Championships
SELECT c.constructor_name, COUNT(*) AS titles
FROM constructor_championship cc
JOIN constructors c ON cc.constructor_id = c.constructor_id
GROUP BY c.constructor_name
ORDER BY titles DESC;

-- Driver With Most Wins in a Championship Season
SELECT d.driver_name, s.year, dc.wins
FROM driver_championship dc
JOIN drivers d ON dc.driver_id = d.driver_id
JOIN seasons s ON dc.season_id = s.season_id
ORDER BY dc.wins DESC
LIMIT 5;

-- Driver With Most Wins in a Championship Season
SELECT 
d.driver_name,
s.year,
dc.wins,
s.races,
ROUND((dc.wins/s.races)*100,2) AS win_percentage
FROM driver_championship dc
JOIN drivers d ON dc.driver_id=d.driver_id
JOIN seasons s ON dc.season_id=s.season_id
ORDER BY win_percentage DESC
LIMIT 10;

-- Average Age of Champions by Decade
SELECT 
FLOOR(s.year/10)*10 AS decade,
AVG(dc.age) AS avg_age
FROM driver_championship dc
JOIN seasons s ON dc.season_id=s.season_id
GROUP BY decade
ORDER BY decade;

-- Engine With Most Championships
SELECT e.engine_name, COUNT(*) titles
FROM driver_championship dc
JOIN engines e ON dc.engine_id=e.engine_id
GROUP BY e.engine_name
ORDER BY titles DESC;

-- Champions With Most Podiums
SELECT d.driver_name, s.year, dc.podiums
FROM driver_championship dc
JOIN drivers d ON dc.driver_id=d.driver_id
JOIN seasons s ON dc.season_id=s.season_id
ORDER BY dc.podiums DESC
LIMIT 10;

-- Constructors That Won Both Championships in Same Season
SELECT 
s.year,
c.constructor_name
FROM constructor_championship cc
JOIN driver_championship dc 
ON cc.season_id = dc.season_id
JOIN constructors c 
ON cc.constructor_id = c.constructor_id
JOIN seasons s 
ON s.season_id = dc.season_id
WHERE cc.constructor_id = dc.constructor_id;

-- Driver Dominance (Wins + Poles + Podiums)
SELECT 
d.driver_name,
s.year,
(dc.wins + dc.poles + dc.podiums) AS dominance_score
FROM driver_championship dc
JOIN drivers d ON dc.driver_id=d.driver_id
JOIN seasons s ON dc.season_id=s.season_id
ORDER BY dominance_score DESC
LIMIT 10;

-- Number of Titles Per Nationality
SELECT nationality, COUNT(*) titles
FROM drivers d
JOIN driver_championship dc
ON d.driver_id = dc.driver_id
GROUP BY nationality
ORDER BY titles DESC;

-- Constructors With Longest Winning Streak
SELECT 
c.constructor_name,
COUNT(*) championships
FROM constructor_championship cc
JOIN constructors c 
ON cc.constructor_id=c.constructor_id
GROUP BY c.constructor_name
ORDER BY championships DESC;

-- Youngest Champion
SELECT d.driver_name, s.year, dc.age
FROM driver_championship dc
JOIN drivers d ON dc.driver_id=d.driver_id
JOIN seasons s ON dc.season_id=s.season_id
ORDER BY dc.age ASC
LIMIT 1;