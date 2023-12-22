package com.example.biddingSys;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Rest {
	@GetMapping("/home")
	public String home() {
		return "home";
	}
	@GetMapping("/Livebidding")
	public String Livebidding() {
		return "Livebidding";
	}
	@GetMapping("/biddinghistory")
	public String biddinghistory() {
		return "biddinghistory";
	}
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	@GetMapping("/about")
	public String about() {
		return "about";
	}
	@GetMapping("/contact")
	public String contact() {
		return "contact";
	}
	@GetMapping("/feedback")
	public String feedback() {
		return "feedback";
	}

}
