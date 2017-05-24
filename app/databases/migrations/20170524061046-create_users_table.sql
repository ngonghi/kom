
-- +migrate Up
CREATE TABLE users (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
fb_id VARCHAR(100) NOT NULL,
fb_name VARCHAR(255) NOT NULL,
fb_access_token VARCHAR(255) NOT NULL,
avatar VARCHAR(500),
UNIQUE(fb_id)
);

-- +migrate Down
DROP TABLE users;