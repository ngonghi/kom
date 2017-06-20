package controllers

import (
	"github.com/revel/revel"
	"gopkg.in/gorp.v1"
	"database/sql"
)

var (
	Dbm *gorp.DbMap
)

type Kom struct {
	*revel.Controller
	Tnx *gorp.Transaction
}

func (kom_controller *Kom) Begin() revel.Result {
	txn, err := Dbm.Begin()

	if err != nil {
		panic(err)
	}

	kom_controller.Tnx = txn

	return nil
}

func (kom_controller *Kom) Commit() revel.Result  {

	if kom_controller.Tnx == nil {
		return nil
	}

	if err := kom_controller.Tnx.Commit(); err != nil && err != sql.ErrTxDone {
		panic(err)
	}

	kom_controller.Tnx = nil

	return nil
}

func (kom_controller *Kom) Rollback() revel.Result {

	if kom_controller.Tnx == nil {
		return nil
	}

	if err := kom_controller.Tnx.Rollback(); err != nil && err != sql.ErrTxDone {
		panic(err)
	}

	kom_controller.Tnx = nil
	return nil
}