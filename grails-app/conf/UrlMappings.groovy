class UrlMappings {


	static mappings = {

        "/$type/$name/$from"(controller: "fuckOff", action: "show") {
            constraints {
                type inList: grailsApplication.config.fuckOff.types.findAll {it.paramCount == 2}.collect {it.type} << "random"
            }
        }

        "/$type/$from"(controller: "fuckOff", action: "show")  {
            constraints {
                type inList: grailsApplication.config.fuckOff.types.findAll {it.paramCount == 1}.collect {it.type} << "random"
            }
        }

        "/$thing/$from"(controller: "fuckOff", action: "thing") { }


        "500"(view:'/error')
        "/**"(view:"/index")
	}
}
