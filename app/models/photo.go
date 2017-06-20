package models

type photo struct {
	id 		int
	album_id 	int
	fb_photo_id 	string
	fb_photo_url 	string
	backed_up_flg 	int
	backed_up_date 	string
}