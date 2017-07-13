
-- +migrate Up
CREATE TABLE photos (
id INT(10) UNSIGNED AUTO_INCREMENT,
album_id INT(6) UNSIGNED NOT NULL,
fb_photo_id VARCHAR(100) NOT NULL,
fb_photo_url VARCHAR(500) NOT NULL,
backed_up_flg TINYINT(4) NOT NULL DEFAULT '0',
backed_up_date DATETIME,
PRIMARY KEY (id),
KEY photos_album_id_foreign (album_id),
CONSTRAINT photos_album_id_foreign FOREIGN KEY (album_id) REFERENCES albums (`id`),
UNIQUE(fb_photo_id)
);

-- +migrate Down
DROP TABLE photos;