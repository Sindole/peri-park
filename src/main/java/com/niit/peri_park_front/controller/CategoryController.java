package com.niit.peri_park_front.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.dao.CategoryDAO;
import com.niit.backend.model.Category;

@Controller
public class CategoryController {

/*This is Adding Category Section*/
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	@RequestMapping("/ManageCategory")
	public ModelAndView showManageCategory(Model model)
	{
		ModelAndView mv=new ModelAndView("ManageCategory");
		model.addAttribute("cat", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
		return mv;
	}
	
	@RequestMapping("/AddCategory")
	public ModelAndView showAddCategory(@ModelAttribute("cat") Category cat,BindingResult result, HttpServletRequest request, Model model)
	{
		model.addAttribute("cat", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
		ModelAndView mv=new ModelAndView("AddCategory");
		return mv;
	}
	
	@RequestMapping(value="/category/add", method=RequestMethod.POST)
	public String addCategory(@ModelAttribute("cat") Category cat, Model model,HttpSession session) {
		
		ModelAndView mv=new ModelAndView("AddCategory");
		categoryDAO.saveOrUpdate(cat);
		session.setAttribute("message", "Records have been saved successfully");
		model.addAttribute("categoryList", categoryDAO.list());
		return "redirect:/AddCategory";
		
	}
	
	@RequestMapping(value="/deletecategory{catid}")
	public String showdeletecategory(@PathVariable("catid")String catid, Model model) throws Exception
	{
		System.out.println("Checking-Cat/id");
		System.out.println(catid);
		category=categoryDAO.getById(catid);
		ModelAndView mv=new ModelAndView("ManageCategory");
		categoryDAO.delete(category);
		mv.addObject("ManageCategory", "true");
		return "redirect:/ManageCategory";
	}
	
	@RequestMapping(value="/editcategory{catid}")
	public String showeditcategory(@PathVariable("catid")String catid, Model model)throws Exception
	{
		category=categoryDAO.getById(catid);
		System.out.println(category.getCatname());
		ModelAndView mv=new ModelAndView("ManageCategory");
		categoryDAO.saveOrUpdate(category);
		mv.addObject("ManageCategory", "true");
		return "redirect:/ManageCategory";		
	}
	
}
