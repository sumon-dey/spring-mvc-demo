package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // @Controller extends @Component , so component scanning takes
			// place automatically
public class HomeController {

	@RequestMapping("/")
	public String showPage() {
		return "main-menu"; // This is the jsp page name and this will
							// automatially look for the page in the path
							// /WEB-INF/view/main-menu.jsp
	}

}
