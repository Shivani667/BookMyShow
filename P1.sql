CREATE DATABASE bookmyshow;
USE bookmyshow;
SHOW DATABASES;


CREATE TABLE Theatre (
    theatre_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE Movie (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    language VARCHAR(50),
    duration INT -- in minutes
);

CREATE TABLE Shows (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    theatre_id INT,
    movie_id INT,
    show_date DATE,
    show_time TIME,
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);

SHOW TABLES;


INSERT INTO Theatre (name, location) VALUES
('PVR Saket', 'Delhi'),
('INOX City Centre', 'Delhi');

INSERT INTO Movie (title, language, duration) VALUES
('Spider Man', 'English', 148),
('Chak de India', 'Hindi', 170);

INSERT INTO Shows (theatre_id, movie_id, show_date, show_time) VALUES
(1, 1, '2026-07-20', '18:30:00'),
(1, 2, '2026-07-20', '21:00:00'),
(2, 2, '2026-07-20', '19:00:00');

SELECT * FROM Shows;





