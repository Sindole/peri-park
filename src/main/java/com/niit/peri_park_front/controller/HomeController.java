package com.niit.peri_park_front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showHome()
	{
		return "Hello";
	}
	
	@RequestMapping("/Registration")
	public ModelAndView showRegister()
	{
		ModelAndView mv=new ModelAndView("Registration");
		return mv;
	}
	
	@RequestMapping("/Login")
	public ModelAndView showLogin()
	{
		ModelAndView mv=new ModelAndView("Login");
		return mv;
	}
	
	@RequestMapping("/LedMonitors")
	public ModelAndView showLed()
	{
		ModelAndView mv=new ModelAndView("LedMonitors");
		return mv;
	}
	
	@RequestMapping("/LcdMonitors")
	public ModelAndView showLcd()
	{
		ModelAndView mv=new ModelAndView("LcdMonitors");
		return mv;
	}
	
	@RequestMapping("/AppSoftwares")
	public ModelAndView softwares()
	{
		ModelAndView mv=new ModelAndView("AppSoftwares");
		return mv;
	}
	
	@RequestMapping("/Home")
	public String showHome1()
	{
		return "Hello";
	}
	
	@RequestMapping("/Check")
	public ModelAndView CheckData(@RequestParam("UserName")String str1,@RequestParam("userPassword")String str2)
	{
		if(str1.equals(str2))
		{
			ModelAndView mv=new ModelAndView("Paymentoption");
			mv.addObject("loggedInUser","User");
			
			return mv;
		}
		else
		{
			ModelAndView mv=new ModelAndView("Registration");
			return mv;
		}
		
	}

	@RequestMapping("/Checking")
	public ModelAndView CheckingData(@RequestParam("password")String str1,@RequestParam("password_confirmation")String str2)
	{
		if(str1.equals(str2))
		{
			ModelAndView mv=new ModelAndView("Login");
			return mv;
		}
		else
		{
			ModelAndView mv=new ModelAndView("Hello");
			return mv;
		}
	
}
}

