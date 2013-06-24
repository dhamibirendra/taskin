class UrlMappings {

	static mappings = {

        "/login/$action?"(controller: "login")
        "/logout/$action?"(controller: "logout")
        "/$action?"(controller: "login")

        "/"(controller: "main", action: "index")
		"500"(view:'/error')
	}
}
