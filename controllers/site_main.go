package controllers

import (
//"html/template"
//"realiza/models"
//"time"
//"strconv"
//"fmt"
//"realiza/util/gutils"

//"github.com/gilmarpalega/mlog"
//"strconv"
//"github.com/leekchan/accounting"
//"fmt"
//"strconv"
)

type SiteMainController struct {
	baseController
}

func (this *SiteMainController) Home() {

	if Gomode != "LOCAL" {
	if this.Ctx.Request.TLS == nil {
	   url := "https://" + this.Ctx.Input.Domain()
	   this.Ctx.Redirect(302, url)
	 	}
	 }

	this.loadViewSite("views/home", "init_home", "dummy")
}

func (this *SiteMainController) Blog() {
	this.loadViewSite("views/blog", "init_home", "dummy")
}

func (this *SiteMainController) BlogNoticias() {
	this.loadViewSite("views/blog-noticias", "init_home", "dummy")
}

func (this *SiteMainController) BlogArtigos() {
	this.loadViewSite("views/blog-artigos", "init_home", "dummy")
}


func (this *SiteMainController) QuemSomos() {
	this.loadViewSite("views/quem-somos", "dummy", "dummy")
}

func (this *SiteMainController) Contato() {
	this.loadViewSite("views/contato", "dummy", "dummy")
}

func (this *SiteMainController) GaleriaDeVideos() {
	this.loadViewSite("views/galeria-de-videos", "dummy", "dummy")
}

func (this *SiteMainController) Servicos() {
	this.loadViewSite("views/servicos", "dummy", "dummy")
}

func (this *SiteMainController) PessoasFisicas() {
	this.loadViewSite("views/pessoas-fisicas", "dummy", "dummy")
}

func (this *SiteMainController) Empresas() {
	this.loadViewSite("views/empresas", "dummy", "dummy")
}

func (this *SiteMainController) Prefeituras() {
	this.loadViewSite("views/prefeituras", "dummy", "dummy")
}

func (this *SiteMainController) Advocacia() {
	this.loadViewSite("views/advocacia", "dummy", "dummy")
}

func (this *SiteMainController) Imobiliarias() {
	this.loadViewSite("views/imobiliarias", "dummy", "dummy")
}


func (this *SiteMainController) Depoimento() {
	this.loadViewSite("views/depoimento", "dummy", "dummy")
}

func (this *SiteMainController) Legislacao() {
	this.loadViewSite("views/legislacao", "dummy", "dummy")
}


