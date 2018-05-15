package controllers

import (
//"html/template"
//"time"
)

type MainController struct {
	baseController
}

var Gomode string

func (this *MainController) Home() {
	//sessp := this.GetProfessorSession()

	// SE VIER POR HTTP, vou redirecionar para HTTPS
	if Gomode != "LOCAL" {
		if this.Ctx.Request.TLS == nil {
			url := "https://" + this.Ctx.Input.Domain()
			this.Ctx.Redirect(302, url)
			//this.Redirect("https://avalia.info/login", 302)
		}
	}

	//mlog.Info("%+v", sess)
	/*
		if this.Ctx.Input.SubDomains()=="www" || this.Ctx.Input.SubDomains()=="" {
			this.Redirect("http://www.realizacursos.com.br/site", 302)
		}
	*/
	//fmt.Println(this.Ctx.Input.SubDomains())

}
