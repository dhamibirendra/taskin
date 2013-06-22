class UrlMappings {

	static mappings = {

        "/login/$action?"(controller: "login")
        "/logout/$action?"(controller: "logout")
        "/$action?"(controller: "login")
		"500"(view:'/error')
	}
}
