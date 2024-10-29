-- Create the airline database
CREATE DATABASE IF NOT EXISTS airline;

-- Use the airline database
USE airline;

-- Table for storing user details
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- Table for storing flight details
CREATE TABLE IF NOT EXISTS flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    flight_number VARCHAR(20) NOT NULL,
    from_location VARCHAR(50) NOT NULL,
    to_location VARCHAR(50) NOT NULL,
    flight_date DATE NOT NULL,
    seats_available INT NOT NULL
);

-- Table for storing booking details
CREATE TABLE IF NOT EXISTS bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    flight_id INT NOT NULL,
    seat_number VARCHAR(5) NOT NULL,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id)
);

-- Insert sample flight data
INSERT INTO flights (flight_number, from_location, to_location, flight_date, seats_available)
VALUES
('FL123', 'New York', 'Los Angeles', '2024-12-01', 150),
('FL124', 'Chicago', 'Miami', '2024-12-02', 100),
('FL125', 'San Francisco', 'Seattle', '2024-12-03', 120);

-- Insert a sample user
INSERT INTO users (username, password) VALUES ('testuser', 'testpassword');
