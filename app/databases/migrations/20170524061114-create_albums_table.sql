
-- +migrate Up
CREATE TABLE albums (
id INT(6) UNSIGNED AUTO_INCREMENT,
user_id INT(6) UNSIGNED NOT NULL,
fb_album_id VARCHAR(100) NOT NULL,
album_thumbnail VARCHAR(500),
need_backup_flg TINYINT(4) NOT NULL DEFAULT '0',
PRIMARY KEY (id),
KEY albums_user_id_foreign (user_id),
CONSTRAINT albums_user_id_foreign FOREIGN KEY (user_id) REFERENCES users (`id`),
UNIQUE(fb_album_id)
);

-- +migrate Down
DROP TABLE albums;