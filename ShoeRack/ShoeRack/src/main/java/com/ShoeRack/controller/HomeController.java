package com.ShoeRack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	public HomeController(){
		System.out.println("Creating instance for home controller");
		
	}
	@RequestMapping("/home")
	public String home() 
	{
	return "home";
	}
	@RequestMapping("/aboutus")
	public String aboutUs() 
	{
	return "About Us";
	}
	@RequestMapping("/contactus")
	public String contactUs() 
	{
	return "Contact Us";
	}
	@RequestMapping("/login")
	public String logIn() 
	{
	return "Login";
	}
}
