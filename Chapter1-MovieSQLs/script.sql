-- SETUP

-- 1 Create movies table
CREATE TABLE movies (
	movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(120),
    year_released INT,
    director VARCHAR(80)
);

-- 2 Create directors table
CREATE TABLE directors (
	director_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    country VARCHAR(80)
);

-- 3 Drop movies table and recreate with foreign key
DROP TABLE movies;

CREATE TABLE movies (
	movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(120),
    year_released INT,
    director_id INT,
    FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

-- 4 Execute movie-buff-data.sql to insert data into tables


-- ASSIGNMENT

-- 1 Get all titles

-- 2 Get title and year released, ordered descending

-- 3 Get directors ordered by country

-- 4 Get directors ordered by country and then last name

-- 5 Add Rob Reiner (USA) to directors

-- 6 Get last name and id of Rob Reiner specifically

-- 7 Add The Princess Bride (1987, Rob Reiner) to movies

-- 8 (and bonus mission 1) Do an inner join on movies and directors

-- 9 Do an inner join and order by directors' last names

-- 10 (preliminary) Get directory id for The Incredibles

-- 10 (final combo) Use a subquery to get first and last name of The Incredibles director

-- 11 Use subquery to get first and last name of Roma director

-- 12 Remove a movie

-- 13 Try to remove a director

-- Bonus mission 2

-- Bonus mission 3
