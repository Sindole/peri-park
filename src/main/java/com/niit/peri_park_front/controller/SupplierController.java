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

import com.niit.backend.dao.SupplierDAO;
import com.niit.backend.model.Supplier;

@Controller
public class SupplierController {

	/*This is Adding Supplier Section*/
@Autowired
SupplierDAO supplierDAO;

@Autowired
Supplier supplier;

@RequestMapping("/ManageSupplier")
public ModelAndView showManageSupplier(Model model)
{
	ModelAndView mv=new ModelAndView("ManageSupplier");
	model.addAttribute("sup", new Supplier());
	model.addAttribute("supplierList", this.supplierDAO.list());
	return mv;
}

@RequestMapping("/ViewSupplier")
public ModelAndView showViewSupplier(Model model)
{
	ModelAndView mv=new ModelAndView("ViewSupplier");
	model.addAttribute("sup", new Supplier());
	model.addAttribute("supplierList", this.supplierDAO.list());
	return mv;
}

@RequestMapping("/AddSupplier")
public ModelAndView showAddSupplier(@ModelAttribute("sup") Supplier sup,BindingResult result, HttpServletRequest request, Model model)
{
model.addAttribute("sup", new Supplier());
model.addAttribute("supplierList", this.supplierDAO.list());
ModelAndView mv=new ModelAndView("AddSupplier");
return mv;
}

@RequestMapping(value="/supplier/add", method=RequestMethod.POST)
public String addSupplier(@ModelAttribute("sup") Supplier sup, Model model, HttpSession session) {

System.out.println("started");
ModelAndView mv=new ModelAndView("AddSupplier");
supplierDAO.saveOrUpdate(sup);
System.out.println("commited");
session.setAttribute("message", "Records have been saved successfully");

model.addAttribute("supplierList", supplierDAO.list());
return "redirect:/AddSupplier";

}

@RequestMapping(value="/deletesupplier{supid}")
public String showdeletesupplier(@PathVariable("supid")String supid, Model model) throws Exception
{
	System.out.println("Checking-Cat/id");
	System.out.println(supid);
	supplier=supplierDAO.getById(supid);
	ModelAndView mv=new ModelAndView("ManageCategory");
	supplierDAO.delete(supplier);
	mv.addObject("ManageCategory", "true");
	return "redirect:/ManageSupplier";
	
}

	
}
