package com.niit.peri_park_front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.backend.dao.CartDAO;

@Controller
public class CartController {
	
	@Autowired
	CartDAO cartDAO;
	
	@RequestMapping(value="/AddToCart")
	public String AddToCart()
	{
		return "Cart";
	}

}
