class UrlMappings {

	static mappings = {
		"/$type/$to/$from"(controller: "fuckOff", action: "show") {
            constraints {
                type inList: ["off", "you", "donut", "shakespeare", "linus", "king", "chainsaw"]
            }
        }
        "/$type/$from"(controller: "fuckOff", action: "show")  {
            constraints {
                type inList: ["this", "that", "everything", "life", "everyone", "pink", "thanks"]
            }
        }
		
		"/surpriseMe"(controller: "fuckOff", action: "surpriseMe")

        "500"(view:'/error')
        "/**"(view:"/index")
	}
}
