package com.niit.peri_park_front.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.dao.UserDAO;
import com.niit.backend.model.Category;
import com.niit.backend.model.User;

@Controller
public class UserController {
	
	@RequestMapping("/Registration")
	public ModelAndView showRegister(Model model)
	{
		ModelAndView mv=new ModelAndView("Registration");
		model.addAttribute("user", new User());
		model.addAttribute("userList", this.userDAO.list());
		return mv;
	}
	
	@RequestMapping("/signout")
	public String signout()
	{
		return "Home";
	}
	
	
	@Autowired
	UserDAO userDAO;

	@RequestMapping(value="/adduser", method=RequestMethod.POST)
	public String addUser(@ModelAttribute("user") User user, BindingResult result, HttpServletRequest request)
	{
		user.setEnabled("true");
		user.setRole("ROLE_USER");
		
		if(user.getConpassword().equals(user.getPassword()))
		{
			userDAO.saveOrUpdate(user);
		}
		
		return "Login";
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
	@RequestMapping(value="/login_session_attributes")
	public String login_session_attributes(HttpSession session, Model model, @RequestParam(value="username")String id)
	{
		System.out.println("begin");
		String name=SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("name",name);
		System.out.println(name);
		User user=userDAO.get(id);
		System.out.println(id);
		int x=user.getUserid();
		System.out.println(x);
		session.setAttribute("email", user.getEmail());
		session.setAttribute("LoggedInUser", user.getUsername());
		session.setAttribute("userid", user.getUserid());
		session.setAttribute("LoggedInUserId",x);
		System.out.println("end");
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> authorities=(Collection<GrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String role="ROLE_USER";
		
		for(GrantedAuthority authority:authorities)
		{
			if(authority.getAuthority().equals(role))
			{
				return "Home";
			}
			else
			{
				session.setAttribute("isAdmin", "true");
			}
		}
		return "AdminHome";
	}
	
	@RequestMapping(value="/perform_logout")
	public ModelAndView showlogout(HttpServletRequest request, HttpSession session)
	{
		ModelAndView mv = new ModelAndView("Logout");
		session.setAttribute("LogOutMessage","You have Successfully Logged Out.");
		session.invalidate();
		session = request.getSession(true);
		mv.addObject("LogOutMessage","You have Successfully Logged Out.");
		mv.addObject("LoggedOut","true");
		return mv;
	}

	@ModelAttribute
	public User returnObject()
	{
		return new User();
	}
	
	
}
