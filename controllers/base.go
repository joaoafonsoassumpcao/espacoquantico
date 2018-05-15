package controllers

import (
	"bytes"
	//"crypto/sha1"
	//"encoding/hex"
	"fmt"
	"html/template"
	"io/ioutil"
	"net/http"
	//"realiza/models"
	"sort"
	//"strconv"
	"time"

	//"github.com/asdine/storm"
	"github.com/astaxie/beego"
	//"crypto/hmac"
	//"crypto/sha256"
	"strings"

	//"github.com/gilmarpalega/mlog"
	//"realiza/util/gutils"
	//"runtime"
	//"github.com/boltdb/bolt"
	//	"encoding/base64"
	//"runtime"
)

type NestPreparer interface {
	NestPrepare()
}

type baseController struct {
	beego.Controller
	startTime time.Time
}

type SysDB struct {
	ID int

	Nome     string
	Created  time.Time
	Updated  time.Time
	Elapsed  string
	iElapsed time.Duration
}

type StatusCaixa struct {
	ID  		int	`storm:"index"` // ID aponta para a UnidadeId
	//Status 		bool
	CaixaControleId int
	Aberto		bool 	// Status fica muito vago, melhor saber se o caixa está aberto ou fechado
	Data 		time.Time
}

type byElapsed []SysDB

func (v byElapsed) Len() int           { return len(v) }
func (v byElapsed) Swap(i, j int)      { v[i], v[j] = v[j], v[i] }
func (v byElapsed) Less(i, j int) bool { return v[i].iElapsed < v[j].iElapsed }

type SysMessage struct {
	tipo     int
	usuario  int
	mensagem string
}

var retorno = map[string]interface{}{
	"erros": 0,
	"msg":   "",
	"conteudo": []interface{}{
		"",
		"",
	},
}

//var HashedJS string

//var Storm *storm.DB

// Prepare implements Prepare method for baseController.
func (this *baseController) Prepare() {
	this.startTime = time.Now()
	this.Data["PageStartTime"] = this.startTime

	if app, ok := this.AppController.(NestPreparer); ok {
		app.NestPrepare()
	}
}

func (this *baseController) Finish() {
	// page finish load
	//this.Data["PageLoadTime"] = time.Since(this.startTime)
}

func (this *baseController) parseTemplate(titulo, tpl_file string) *template.Template {
	ed_tp, _ := ioutil.ReadFile(tpl_file)
	var ed_tpl string = string(ed_tp)

	t := template.New(titulo)
	t = template.Must(t.Parse(ed_tpl))
	return t
}

func (this *baseController) loadViewErro(view, msg string) {
	//sessao := this.GetBaseSession()
	view += ".tpl"

	this.Data["Erro"] = msg
	//this.Data["Sessao"] = sessao
	this.Data["PageLoadTime"] = time.Since(this.startTime)

	tpl := template.Must(template.ParseFiles(view))
	err := tpl.Execute(this.Ctx.ResponseWriter, this.Data)
	if err != nil {
		http.Error(this.Ctx.ResponseWriter, err.Error(), http.StatusInternalServerError)
		return
	}

}

func (this *baseController) calcEllapsed(sysd []SysDB) {
	for i, _ := range sysd {
		sysd[i].iElapsed = time.Since(sysd[i].Updated)

		el := fmt.Sprintf("%v", sysd[i].iElapsed)
		ll := len(el)
		switch {
		case sysd[i].iElapsed < time.Second*30:
			sysd[i].Elapsed = "agora"
		case sysd[i].iElapsed < time.Minute:
			sysd[i].Elapsed = el[0:strings.Index(el, ".")] + el[ll-1:ll] + " atrás"
		case sysd[i].iElapsed < time.Hour:
			sysd[i].Elapsed = el[0:strings.Index(el, "m")+1] + " atrás"

		case sysd[i].iElapsed < time.Hour*24:
			sysd[i].Elapsed = el[0:strings.Index(el, "h")+1] + " atrás"

		case sysd[i].iElapsed > time.Hour:
			sysd[i].Elapsed = el[0:strings.Index(el, ".")] + " atrás"

		}
		//sysd[i].Elapsed = el[0:strings.Index(el, ".")] + el[len(el)-2:len(el)]
	}
	sort.Sort(byElapsed(sysd))

}



func (this *baseController) TempoDecorrido(t1 time.Time) string {
	iElapsed := time.Since(t1)
	var Elapsed string

	el := fmt.Sprintf("%v", iElapsed)
	ll := len(el)
	switch {
	case iElapsed < time.Second*30:
		Elapsed = "agora"
	case iElapsed < time.Minute:
		Elapsed = el[0:strings.Index(el, ".")] + el[ll-1:ll] + " atrás"
	case iElapsed < time.Hour:
		Elapsed = el[0:strings.Index(el, "m")+1] + " atrás"

	case iElapsed < time.Hour*24:
		Elapsed = el[0:strings.Index(el, "h")+1] + " atrás"

	case iElapsed > time.Hour:
		Elapsed = el[0:strings.Index(el, ".")] + " atrás"

	}
	//sysd[i].Elapsed = el[0:strings.Index(el, ".")] + el[len(el)-2:len(el)]
	return Elapsed

}

/*
func (this *baseController) loadView(view string, chamada template.JS, modulo template.JS) {
	sessao := this.GetBaseSession()

	if sessao == nil {
		this.Redirect("/naoautorizado", 302)
		return
	}

	var storms []SysDB
	Storm.UpdateField(&SysDB{ID: sessao["usuario_id"].(int)}, "Updated", time.Now())
	_ = Storm.All(&storms)
	this.calcEllapsed(storms)

	view += ".tpl"

	var iconecaixa string

	if sessao["caixa"]=="S" {
		iconecaixa = GeraIconeCaixa(sessao["usuario_id"].(int))
	}

	//this.Layout = "main.tpl"
	//this.LayoutSections = make(map[string]string)
	//this.TplName = view + ".tpl"
	this.Data["chamada"] = chamada
	this.Data["modulo"] = modulo
	this.Data["Sessao"] = sessao
	this.Data["Logados"] = storms
	this.Data["IconeCaixa"] = template.HTML(iconecaixa)
	this.Data["PageLoadTime"] = time.Since(this.startTime)

	if sessao["captador"] == "S"{
		this.Data["MainMenu"] = this.GeraCaptadorMenu()
		tpl := template.Must(template.ParseFiles("views/main.tpl", view))

		var b bytes.Buffer
		err := tpl.ExecuteTemplate(&b, "mainLayout", this.Data)
		if err != nil {
			this.loadViewErro("views/sistema/erro_template", "Ocorreu um erro na template: "+err.Error())
			return
		}
		b.WriteTo(this.Ctx.ResponseWriter)
		return
	}

	if sessao["modoalunoativado"] == "S" {
		this.Data["MainMenu"] = this.GeraMenuAluno()
		tpl := template.Must(template.ParseFiles("views/main.tpl", view))

		var b bytes.Buffer
		err := tpl.ExecuteTemplate(&b, "mainLayout", this.Data)
		if err != nil {
			this.loadViewErro("views/sistema/erro_template", "Ocorreu um erro na template: "+err.Error())
			return
		}
		b.WriteTo(this.Ctx.ResponseWriter)
		return
	}

	this.Data["MainMenu"] = this.GeraMainMenu()

	//ed_tp, _ := ioutil.ReadFile(view)
	//var ed_tpl string = string(ed_tp)

	tpl := template.Must(template.ParseFiles("views/main.tpl", view))

	var b bytes.Buffer
	err := tpl.ExecuteTemplate(&b, "mainLayout", this.Data)
	if err != nil {
		this.loadViewErro("views/sistema/erro_template", "Ocorreu um erro na template: "+err.Error())
		return
	}
	b.WriteTo(this.Ctx.ResponseWriter)

	*/
/*
		//err := tpl.Execute(this.Ctx.ResponseWriter, this.Data)
		err := tpl.ExecuteTemplate(this.Ctx.ResponseWriter, "mainLayout", this.Data)
		if err != nil {
			http.Error(this.Ctx.ResponseWriter, err.Error(), http.StatusInternalServerError)
			return
		}

		//t.Execute(this.Ctx.ResponseWriter, this.Data)
	*//*


}
*/





// INICIO LOADS SITE


func (this *baseController) loadViewSite(view string, chamada template.JS, modulo template.JS) {
	//sessao := this.GetBaseSession()
	/*
	if sessao == nil {
		this.Redirect("/naoautorizado", 302)
		return
	}


	var storms []SysDB
	Storm.UpdateField(&SysDB{ID: sessao["usuario_id"].(int)}, "Updated", time.Now())
	_ = Storm.All(&storms)
	this.calcEllapsed(storms)
	*/

	view += ".tpl"

	//var iconecaixa string


	//this.Layout = "main.tpl"
	//this.LayoutSections = make(map[string]string)
	//this.TplName = view + ".tpl"
	/*
	this.Data["Sessao"] = sessao
	this.Data["Logados"] = storms
	this.Data["IconeCaixa"] = template.HTML(iconecaixa)
	this.Data["PageLoadTime"] = time.Since(this.startTime)
	*/

	this.Data["chamada"] = chamada
	this.Data["modulo"] = modulo
	//this.Data["appjs"] = HashedJS



	//this.Data["MainMenu"] = this.GeraMainMenu()

	//ed_tp, _ := ioutil.ReadFile(view)
	//var ed_tpl string = string(ed_tp)

	tpl := template.Must(template.ParseFiles("views/main.tpl", view))

	var b bytes.Buffer
	err := tpl.ExecuteTemplate(&b, "mainSiteLayout", this.Data)
	if err != nil {
		this.loadViewErro("views/erro_template", "Ocorreu um erro na template: "+err.Error())
		return
	}
	b.WriteTo(this.Ctx.ResponseWriter)

	/*
		//err := tpl.Execute(this.Ctx.ResponseWriter, this.Data)
		err := tpl.ExecuteTemplate(this.Ctx.ResponseWriter, "mainLayout", this.Data)
		if err != nil {
			http.Error(this.Ctx.ResponseWriter, err.Error(), http.StatusInternalServerError)
			return
		}

		//t.Execute(this.Ctx.ResponseWriter, this.Data)
	*/

}



func (this *baseController) loadViewSiteEmpty(view string, chamada template.JS, modulo template.JS) {
	//sessao := this.GetBaseSession()
	/*
	if sessao == nil {
		this.Redirect("/naoautorizado", 302)
		return
	}


	var storms []SysDB
	Storm.UpdateField(&SysDB{ID: sessao["usuario_id"].(int)}, "Updated", time.Now())
	_ = Storm.All(&storms)
	this.calcEllapsed(storms)
	*/

	view += ".tpl"

	//var iconecaixa string


	//this.Layout = "main.tpl"
	//this.LayoutSections = make(map[string]string)
	//this.TplName = view + ".tpl"
	/*
	this.Data["Sessao"] = sessao
	this.Data["Logados"] = storms
	this.Data["IconeCaixa"] = template.HTML(iconecaixa)
	this.Data["PageLoadTime"] = time.Since(this.startTime)
	*/

	this.Data["chamada"] = chamada
	this.Data["modulo"] = modulo
	//this.Data["appjs"] = HashedJS


	//this.Data["MainMenu"] = this.GeraMainMenu()

	//ed_tp, _ := ioutil.ReadFile(view)
	//var ed_tpl string = string(ed_tp)

	tpl := template.Must(template.ParseFiles("views/main_site.tpl", view))

	var b bytes.Buffer
	err := tpl.ExecuteTemplate(&b, "mainSiteLayout", this.Data)
	if err != nil {
		this.loadViewErro("views/site/erro_template", "Ocorreu um erro na template: "+err.Error())
		return
	}
	b.WriteTo(this.Ctx.ResponseWriter)

	/*
		//err := tpl.Execute(this.Ctx.ResponseWriter, this.Data)
		err := tpl.ExecuteTemplate(this.Ctx.ResponseWriter, "mainLayout", this.Data)
		if err != nil {
			http.Error(this.Ctx.ResponseWriter, err.Error(), http.StatusInternalServerError)
			return
		}

		//t.Execute(this.Ctx.ResponseWriter, this.Data)
	*/

}
