package com.niit.peri_park_front.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.dao.CartDAO;
import com.niit.backend.dao.CategoryDAO;
import com.niit.backend.model.Cart;
import com.niit.backend.model.Category;
import com.niit.backend.model.Product;

@Controller
public class CartController {
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping(value="/{prodid}/Cart")
	public ModelAndView showCart(Model model, @ModelAttribute("cart") Cart cart)
	{
		
		System.out.println(cart.getProdname());
		System.out.println("calling add2cart method");
		cartDAO.AddToCart(cart);
		ModelAndView mv=new ModelAndView("Cart");
		model.addAttribute("cat", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
		return mv;
	}
	@RequestMapping("/Paymentoption")
	public String showPayment()
	{
		return "Paymentoption";
	}
	
}
