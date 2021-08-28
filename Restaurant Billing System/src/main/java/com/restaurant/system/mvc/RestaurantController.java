package com.restaurant.system.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {

	@RequestMapping("/restaurant")
	public String restaurant(Model themodel) {
		Restaurant rest = new Restaurant();
		themodel.addAttribute("restaurant",rest);
		return "billingpage";
	}
}
