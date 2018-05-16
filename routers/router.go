package routers

import (
	"espacoquantico/controllers"

	"github.com/astaxie/beego"
)

func init() {

	beego.Router("/", &controllers.SiteMainController{}, "get:Home")
	beego.Router("/home", &controllers.SiteMainController{}, "get:Home")
	beego.Router("/blog", &controllers.SiteMainController{}, "get:Blog")
	beego.Router("/post-modelo", &controllers.SiteMainController{}, "get:Postmodelo")
	beego.Router("/blog-noticias", &controllers.SiteMainController{}, "get:BlogNoticias")
	beego.Router("/blog-artigos", &controllers.SiteMainController{}, "get:BlogArtigos")
	beego.Router("/quem-somos", &controllers.SiteMainController{}, "get:QuemSomos")
	beego.Router("/contato", &controllers.SiteMainController{}, "get:Contato")
	beego.Router("/galeria-de-videos", &controllers.SiteMainController{}, "get:GaleriaDeVideos")
	beego.Router("/servicos", &controllers.SiteMainController{}, "get:Servicos")
	beego.Router("/pessoas-fisicas", &controllers.SiteMainController{}, "get:PessoasFisicas")
	beego.Router("/empresas", &controllers.SiteMainController{}, "get:Empresas")
	beego.Router("/prefeituras", &controllers.SiteMainController{}, "get:Prefeituras")
	beego.Router("/advocacia", &controllers.SiteMainController{}, "get:Advocacia")
	beego.Router("/imobiliarias", &controllers.SiteMainController{}, "get:Imobiliarias")
	beego.Router("/depoimento", &controllers.SiteMainController{}, "get:Depoimento")
	beego.Router("/legislacao", &controllers.SiteMainController{}, "get:Legislacao")
	










}
