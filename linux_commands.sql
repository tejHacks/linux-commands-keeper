/* Linux Commands Keeper - Initial Setup */
-- Create database
CREATE DATABASE linux_commands;

-- Use the database
USE linux_commands;

--
-- Table structure for table `Linux commands`
--

-- Table structure for table `linux_commands`
CREATE TABLE linux_commands (
    id INT AUTO_INCREMENT PRIMARY KEY,
    command TEXT NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(255) NOT NULL,
    example TEXT DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);