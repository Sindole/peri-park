package com.niit.peri_park_front.controller;

import javax.persistence.Transient;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.dao.CartDAO;
import com.niit.backend.dao.CategoryDAO;
import com.niit.backend.dao.ProductDAO;
import com.niit.backend.dao.UserDAO;
import com.niit.backend.model.Cart;
import com.niit.backend.model.Category;
import com.niit.backend.model.Product;
import com.niit.backend.model.User;

@Controller
public class CartController {
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	@Autowired
	Cart cart;
	
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value="/Cart", method=RequestMethod.GET)
	public String Cart(Model model, HttpSession session)
	{
		Integer loggedInUserId=(Integer)session.getAttribute("LoggedInUserId");
		String uname;
		System.out.println(loggedInUserId);
		if(loggedInUserId==-1)
		{
			Authentication auth=SecurityContextHolder.getContext().getAuthentication();
			uname=auth.getName();
		}
		
		return "/Cart";
	}
	
	@RequestMapping(value="/{prodid}/Cart", method=RequestMethod.POST)
	public ModelAndView showCart(@Valid @PathVariable("prodid") int prodid, Model model, HttpServletRequest request)
	{
		model.addAttribute("cart",new Cart());
		
		HttpSession session=request.getSession(false);
		String name1=(String) session.getAttribute("LoggedInUser");
		
		if(name1==null)
		{
			ModelAndView mv=new ModelAndView("Login");
					System.out.println("Checking LoggedIn User");
			return mv;
		}
		
		int x1=(Integer)session.getAttribute("loggedInUserId");
		
		product=productDAO.getById(prodid);
		session.setAttribute("price", product.getPrice());
		int price=(Integer)session.getAttribute("price");
	
		cart.setQuantity(product.getQuantity());
		cart.setProdid(prodid);
		cart.setUserid(x1);
		cart.setCartuser(userDAO.getById(x1));
		cart.setCartproduct(product);
		cart.setPrice(price);
		cartDAO.AddToCart(cart);
		
		session.setAttribute("cartpic", cart.getCartproduct().getProdname());
		
		ModelAndView mv=new ModelAndView("Cart");
		model.addAttribute("prodList",productDAO.list());
		mv.addObject("cartlist",cartDAO.list());
		
		return mv;
	}
	
	@RequestMapping("/Paymentoption")
	public String showPayment()
	{
		return "Paymentoption";
	}
	
	@RequestMapping(value="/Cart{cartid}")
	public ModelAndView viewCart(@PathVariable("cartid")int cartid)
	{
		ModelAndView mv=new ModelAndView("Cart");
		mv.addObject("cartlist",cartDAO.list());
		return mv;
	}
	
	
}
