package org.sakila.controller.backend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class IndexController {

	@RequestMapping(value = "/index")
	public String home(){
		return "backend/index";
	}
}
