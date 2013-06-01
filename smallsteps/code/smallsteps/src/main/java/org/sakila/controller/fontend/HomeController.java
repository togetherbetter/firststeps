package org.sakila.controller.fontend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/fontend")
public class HomeController {

	@RequestMapping(value = "/home",method = RequestMethod.GET)
	public String home() {
		return "fontend/home";
	}

}
