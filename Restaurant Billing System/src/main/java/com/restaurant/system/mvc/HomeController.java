package com.restaurant.system.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home(Model themodel) {
		Restaurant rest = new Restaurant();
		themodel.addAttribute("restaurant",rest);
		return "homepage";
	}
	
	@RequestMapping("/total")
	public String total(@ModelAttribute("restaurant") Restaurant restaurant) {
		
		return "total";
	}

}
