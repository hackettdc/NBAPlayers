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
('LeBron', 'James', 'Los Angeles Lakers', 81, 250, '1984-12-30', 'None', 2003, 23),
('Stephen', 'Curry', 'Golden State Warriors', 75, 185, '1988-03-14', 'Davidson', 2009, 30),
('Kawhi', 'Leonard', 'Los Angeles Clippers', 79, 230, '1991-06-29', 'San Diego State', 2011, 2);

-- Assign positions to players

-- LeBron James: PG(1), SG(2), SF(3), PF(4), C(5)
INSERT INTO player_positions (player_id, position_id) VALUES (1, 1), (1,2), (1, 3), (1, 4), (1, 5);

-- Stephen Curry: PG(1), SG(2)
INSERT INTO player_positions (player_id, position_id) VALUES (2, 1), (2, 2);

-- Kawhi Leonard: SF(3), PF(4)
INSERT INTO player_positions (player_id, position_id) VALUES (3, 3), (3, 4);