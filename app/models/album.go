package models

type album struct {
	id 		int
	user_id 	int
	fb_album_id 	string
	album_thumbnail string
	need_backup_flg int
}