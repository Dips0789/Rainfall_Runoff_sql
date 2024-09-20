
CREATE DATABASE hydrology_db;
USE hydrology_db;

CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(255) NOT NULL
);

CREATE TABLE Rainfall (
    id SERIAL PRIMARY KEY,
    location_id INT NOT NULL,
    date DATE NOT NULL,
    amount_mm DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);

CREATE TABLE Runoff (
    id SERIAL PRIMARY KEY,
    location_id INT NOT NULL,
    date DATE NOT NULL,
    amount_m3 DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
SELECT * FROM Location;
SHOW CREATE TABLE Rainfall;
SHOW CREATE TABLE Runoff;



