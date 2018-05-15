package main

import (
	"os"
	//"atitude/controllers"
	//"realiza/models"
	_ "espacoquantico/routers"
	"strconv"

	//"github.com/astaxie/beego/plugins/auth"


	//"github.com/asdine/storm"
	"github.com/astaxie/beego"
	"github.com/gilmarpalega/mlog"
	//"fmt"
	//"io/ioutil"
)

//var Sess *session.Manager

/*
func init() {
	_ = models.Setup()
	var errostorm error

	controllers.Storm, errostorm = storm.Open("bolt.db")
	mlog.LogIfError(errostorm)

	//controllers.Setup()

	//Sess, _ = session.NewManager("redis", `{"cookieName":"gosessionid","gclifetime":3600,"ProviderConfig":"127.0.0.1:6379"}`)
	//go Sess.GC()
}
*/

func main() {
	sport := os.Getenv("PORT")
	if sport == "" {
		sport = "80"
	}

	gomode := os.Getenv("GOMODE")

	//controllers.Gomode = gomode

	port, _ := strconv.Atoi(sport)

	beego.BConfig.Listen.HTTPPort = port
	beego.BConfig.RunMode = "dev"
	beego.BConfig.AppName = "espacoquanticovegeton"
	beego.BConfig.EnableGzip = true
	beego.BConfig.WebConfig.AutoRender = false
	beego.BConfig.Listen.ServerTimeOut = 60
	//beego.App.Server.ReadTimeout  = time.Second * 10
	//beego.App.Server.WriteTimeout = time.Second * 10

	// HABILITAR HTTPS
	if gomode != "LOCAL" {
		beego.BConfig.Listen.HTTPSPort = 443
		beego.BConfig.Listen.EnableHTTPS = true
		beego.BConfig.Listen.HTTPSCertFile = "certs/fullchain.pem"
		beego.BConfig.Listen.HTTPSKeyFile = "certs/privkey.pem"
	}

	//beego.BConfig.WebConfig.Session.SessionOn = true
	beego.BConfig.Log.AccessLogs = true

	// setar arquivo js com hash
	//f, _ := os.Open("/dist/filename.txt")

	//dat, _ := ioutil.ReadFile("dist/filename.txt")
	//fmt.Print(string(dat))


	//scanner := bufio.NewScanner(f)
	//scanner.Scan()
	//controllers.HashedJS = scanner.Text()
	//controllers.HashedJS = string(dat)
	//f.Close()
	//fmt.Printf("HashedJS=[%v]\n",string(dat))


	//fs := https.FileServer(https.Dir("m"))
	//https.Handle("/m/", https.StripPrefix("/m/", fs))

	//beego.SetStaticPath("/m", "m")
	beego.SetStaticPath("/public", "public")
	//beego.SetStaticPath("/static", "static")

	//beego.SetStaticPath("/sitemap.xml", "public/sitemap.xml")
	//beego.SetStaticPath("/robots.txt", "public/robots.txt")



	//Sess, _ = session.NewManager("memory", `{"cookieName":"gosessionid", "enableSetCookie,omitempty": true, "gclifetime":3600, "maxLifetime": 3600, "secure": true, "sessionIDHashFunc": "sha1", "sessionIDHashKey": "", "cookieLifeTime": 3600, "providerConfig": ""}`)
	//go Sess.GC()
	mlog.Start(mlog.LevelInfo, "app.log")
	//fmt.Printf("%+v", models.SolicitacoesAssunto[2])
	//uf := models.UFs[5]
	//fmt.Printf("%+v", uf)

	beego.Run()
}
