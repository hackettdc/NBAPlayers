-- Create players table
CREATE TABLE players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    team VARCHAR(50),
    height_in_inches INT,
    weight_in_pounds INT,
    birthdate DATE,
    draft_year INT,
    jersey_number INT
);

-- Create positions table
CREATE TABLE positions (
    position_id INT AUTO_INCREMENT PRIMARY KEY,
    position_name VARCHAR(10) UNIQUE
);

-- Create join table for players and positions
CREATE TABLE player_positions (
    player_id INT,
    position_id INT,
    PRIMARY KEY (player_id, position_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id),
    FOREIGN KEY (position_id) REFERENCES positions(position_id)
);

-- Insert ositions
INSERT INTO positions (position_name) VALUES ('PG'), ('SG'), ('SF'), ('PF'), ('C');

-- Insert players
INSERT INTO players (first_name, last_name, team, height_in_inches, weight_in_pounds, birthdate, draft_year, jersey_number)
VALUES 

-- Los Angeles Lakers
('Luka', 'Doncic', 'Los Angeles Lakers', 78, 230, '1999-02-28', 'None', 2018, 77),
('Dorian', 'Finney-Smith', 'Los Angeles Lakers', 79, 220, '1993-05-04', 'Florida', NULL, 17),
('Jordan', 'Goodwin', 'Los Angeles Lakers', 76, 200, '1998-10-23', 'Saint Louis', NULL, 30),
('Rui', 'Hachimura', 'Los Angeles Lakers', 80, 230, '1998-02-08', 'Gonzaga', 2019, 28),
('Jaxson', 'Hayes', 'Los Angeles Lakers', 84, 220, '2000-05-23', 'Texas', 2019, 11),
('Bronny', 'James', 'Los Angeles Lakers', 74, 210, '2004-10-06', 'USC', 2024, 9),
('LeBron', 'James', 'Los Angeles Lakers', 81, 250, '1984-12-30', 'None', 2003, 23),
('Trey', 'Jemison III', 'Los Angeles Lakers', 82, 260, '1999-11-28', 'UAB', NULL, 55),
('Maxi', 'Kleber', 'Los Angeles Lakers', 82, 240, '1992-01-29', 'None', NULL, 14),
('Dalton', 'Knect', 'Los Angeles Lakers', 78, 215, '2001-04-19', 'Tennessee', 2024, 4),
('Christian', 'Koloko', 'Los Angeles Lakers', 84, 220, '2000-06-20', 'Arizona', 2022, 10),
('Alex', 'Len', 'Los Angeles Lakers', 84, 250, '1993-06-16', 'Arizona', 2013, 27),
('Shake', 'Milton', 'Los Angeles Lakers', 77, 205, '1996-09-26', 'Maryland', 2018, 20),
('Markieff', 'Morris', 'Los Angeles Lakers', 81, 245, '1989-09-02', 'SMU', 2011, 88),
('Austin', 'Reaves', 'Los Angeles Lakers', 77, 197, '1998-05-29', 'Kansas', NULL, 15),
('Jarred', 'Vanderbilt', 'Los Angeles Lakers', 80, 214, '1999-04-03', 'Oklahoma', 2018, 2),
('Gabe', 'Vincent', 'Los Angeles Lakers', 74, 200, '1996-06-14', 'UC Santa Barbara', NULL, 7),

-- Atlanta Hawks
('Dominick', 'Barlow', 'Atlanta Hawks', 80, 215, '2003-05-26', 'None', NULL, 0),
('Kobe', 'Bufkin', 'Atlanta Hawks', 76, 195, '2003-09-21', 'Michigan', 2023, 4),
('Clint', 'Capela', 'Atlanta Hawks', 82, 256, '1994-05-18', 'None', 2014, 15),
('Dyson', 'Daniels', 'Atlanta Hawks', 79, 199, '2003-03-17', 'None', 2022, 5),
('Mouhamed', 'Gueye', 'Atlanta Hawks', 82, 210, '2002-11-09', 'Washinton State', 2023, 18),
('Jalen', 'Johnson', 'Atlanta Hawks', 80, 219, '2001-12-18', 'Duke', 2021, 1),
('Vit', 'Krejci', 'Atlanta Hawks', 80, 195, '2000-06-19', 'None', 2020, 27),
('Caris', 'LeVert', 'Atlanta Hawks', 78, 205, '1994-08-25', 'Michigan', 2016, 3),
('Terance', 'Mann', 'Atlanta Hawks', 75, 215, '1996-10-18', 'Florida State', 2019, 14),
('Garrison', 'Mathews', 'Atlanta Hawks', 76, 215, '1996-10-24', 'Lipscomb', NULL, 24),
('Larry', 'Nance Jr.', 'Atlanta Hawks', 78, 245, '1993-01-01', 'Wyoming', 2015, 22),
('Georges', 'Niang', 'Atlanta Hawks', 79, 230, '2000-12-11', 'Iowa State', 2016, 20),
('Onyeka', 'Okongwu', 'Atlanta Hawks', 82, 240, '1999-02-28', 'USC', 2020, 17),
('Daeqwon', 'Plowden', 'Atlanta Hawks', 78, 216, '1998-08-29', 'Bowling Green', NULL, 29),
('Zaccharie', 'Risacher', 'Atlanta Hawks', 80, 200, '2005-04-08', 'None', 2024, 10),
('Jacob', 'Toppin', 'Atlanta Hawks', 80, 200, '2000-05-08', 'Kentucky', NULL, 00),
('Keaton', 'Wallace', 'Atlanta Hawks', 75, 185, '1999-02-26', 'UTSA', NULL, 2),
('Trae', 'Young', 'Atlanta Hawks', 73, 164, '1998-09-19', 'Oklahoma', 2018, 11),


-- Boston Celtics

-- Brooklyn Nets

-- Charlotte Hornets

-- Chicago Bulls

-- Cleveland Cavaliers

-- Dallas Mavericks

-- Denver Nuggets

-- Detriot Pistons

-- Golden State Warriors

-- Houston Rockets

-- Indiana Pacers

-- LA Clippers

-- Memphis Grizzles

-- Miami Heat

-- Milwaukee Bucks

-- Minnesota Timberwolves

-- New Orleans Pelicans

-- New York Knicks

-- Oklahoma City Thunder

-- Orlando Magic

-- Philadelphia 76ers

-- Phoenix Suns

-- Portland Trail Blazers

-- Sacramento Kings

-- San Antonio Spurs

-- Toronto Raptors

-- Utah Jazz

-- Washington Wizards

-- Assign positions to players

-- Los Angeles Lakers PG(1), SG(2), SF(3), PF(4), C(5)
    --Luka Doncic
INSERT INTO player_positions (player_id, position_id) VALUES (1, 1);
    --Dorian Finney-Smith
INSERT INTO player_positions (player_id, position_id) VALUES (2, 4);
    --Jordan Goodwin
INSERT INTO player_positions (player_id, position_id) VALUES (3, 1), (3, 2);
    --Rui Hachimura
INSERT INTO player_positions (player_id, position_id) VALUES (4, 4);
    --Jaxson Hayes
INSERT INTO player_positions (player_id, position_id) VALUES (5, 5);
    --Bronny James
INSERT INTO player_positions (player_id, position_id) VALUES (6, 1), (6, 2);
    --LeBron James
INSERT INTO player_positions (player_id, position_id) VALUES (7, 3);
    --Trey Jemison III
INSERT INTO player_positions (player_id, position_id) VALUES (8, 5);
    --Maxi Kleber
INSERT INTO player_positions (player_id, position_id) VALUES (9, 4);
    --Dalton Knecht
INSERT INTO player_positions (player_id, position_id) VALUES (10, 1), (10, 2);
    --Christian Koloko
INSERT INTO player_positions (player_id, position_id) VALUES (11, 5);
    --Alex Len
INSERT INTO player_positions (player_id, position_id) VALUES (12, 5);
    --Shake Milton
INSERT INTO player_positions (player_id, position_id) VALUES (13, 2);
    --Markieff Morris
INSERT INTO player_positions (player_id, position_id) VALUES (14, 4);
    --Austin Reaves
INSERT INTO player_positions (player_id, position_id) VALUES (15, 2);
    --Jarred Vanderbilt
INSERT INTO player_positions (player_id, position_id) VALUES (16, 4);
    --Gabe Vincent
INSERT INTO player_positions (player_id, position_id) VALUES (17, 1);

-- Atlanta Hawks
    --Dominick Barlow
INSERT INTO player_positions (player_id, position_id) VALUES (18, 3), (18, 4);
    --Kobe Bufkin
INSERT INTO player_positions (player_id, position_id) VALUES (19, 1), (19, 2);
    --Clint Capela
INSERT INTO player_positions (player_id, position_id) VALUES (20, 5);
    --Dyson Daniels
INSERT INTO player_positions (player_id, position_id) VALUES (21, 1), (21, 2);
    --Mouhamed Gueye
INSERT INTO player_positions (player_id, position_id) VALUES (22, 3), (22, 4);
    --Jalen Johnson
INSERT INTO player_positions (player_id, position_id) VALUES (23, 3);
    --Vit Krejci
INSERT INTO player_positions (player_id, position_id) VALUES (24, 1), (24, 2);
    --Caris LeVert
INSERT INTO player_positions (player_id, position_id) VALUES (25, 2);
    --Terance Mann
INSERT INTO player_positions (player_id, position_id) VALUES (26, 2);
    --Garrison Mathews
INSERT INTO player_positions (player_id, position_id) VALUES (27, 2);
    --Larry Nance Jr.
INSERT INTO player_positions (player_id, position_id) VALUES (28, 4);
    --Georges Niang
INSERT INTO player_positions (player_id, position_id) VALUES (29, 3);
    --Onyeka Okongwu
INSERT INTO player_positions (player_id, position_id) VALUES (30, 4);
    --Daeqwon Plowden
INSERT INTO player_positions (player_id, position_id) VALUES (31, 1), (31, 2);
    --Zaccharie Risacher
INSERT INTO player_positions (player_id, position_id) VALUES (32, 4);
    --Jacob Toppin
INSERT INTO player_positions (player_id, position_id) VALUES (33, 3), (33, 4);
    --Keaton Wallace
INSERT INTO player_positions (player_id, position_id) VALUES (34, 1), (34, 2);
    --Trae Young
INSERT INTO player_positions (player_id, position_id) VALUES (35, 1);

-- Boston Celtics

-- Brooklyn Nets

-- Charlotte Hornets

-- Chicago Bulls

-- Cleveland Cavaliers

-- Dallas Mavericks

-- Denver Nuggets

-- Detriot Pistons

-- Golden State Warriors

-- Houston Rockets

-- Indiana Pacers

-- LA Clippers

-- Memphis Grizzles

-- Miami Heat

-- Milwaukee Bucks

-- Minnesota Timberwolves

-- New Orleans Pelicans

-- New York Knicks

-- Oklahoma City Thunder

-- Orlando Magic

-- Philadelphia 76ers

-- Phoenix Suns

-- Portland Trail Blazers

-- Sacramento Kings

-- San Antonio Spurs

-- Toronto Raptors

-- Utah Jazz

-- Washington Wizards