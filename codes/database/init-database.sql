-- Create database
CREATE DATABASE nimc_db;

-- Connect to the database
\c nimc_db;

-- Create users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO users (username, password, email) VALUES 
('admin', 'password123', 'admin@nimc.gov.ng'),
('sadiq', 'nimc2024', 'sadiq@nimc.gov.ng'),
('musa', 'nigeria123', 'musa@nimc.gov.ng'),
('officer', 'officer123', 'officer@nimc.gov.ng');

-- Create index for better performance
CREATE INDEX idx_users_username ON users(username);

-- Grant permissions (in production, you'd want more restrictive permissions)
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO nimc_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO nimc_user;