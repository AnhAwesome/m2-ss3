CREATE TABLE users (
    user_id INT AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    status VARCHAR(20) DEFAULT 'Pending',
    
    PRIMARY KEY (user_id),
    CONSTRAINT UC_username UNIQUE (username),
    CONSTRAINT UC_email UNIQUE (email)
);

ALTER TABLE users
ADD CONSTRAINT CHK_status CHECK (status IN ('Pending', 'Active', 'Suspended'));

DROP TABLE IF EXISTS users;