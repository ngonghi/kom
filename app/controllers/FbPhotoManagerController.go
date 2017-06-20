package controllers

import "github.com/revel/revel"

type PhotoController struct {
	Kom
}

func (controller PhotoController) getListAlbum() revel.Result {
	return nil
}

func (controller PhotoController) getListPhoto(album_id int, page int) revel.Result {
	return nil
}