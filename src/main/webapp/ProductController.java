package com.niit.peri_park_front.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.dao.CategoryDAO;
import com.niit.backend.dao.ProductDAO;
import com.niit.backend.dao.SupplierDAO;
import com.niit.backend.model.Category;
import com.niit.backend.model.Product;
import com.niit.backend.model.Supplier;

@Controller
public class ProductController {


	/*This is Adding Product Section*/
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product prod;
	
	@Autowired
	Product product;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("/ManageProduct")
	public ModelAndView showManageProduct(Model model)
	{
		ModelAndView mv=new ModelAndView("ManageProduct");
		model.addAttribute("prod", new Product());
		model.addAttribute("productList", this.productDAO.list());
		return mv;
	}
	
	@RequestMapping("/AddProduct")
	public ModelAndView showAddProducts(@ModelAttribute("prod") Product prod,BindingResult result, HttpServletRequest request, Model model)
	{
		model.addAttribute("prod", new Product());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());
		ModelAndView mv=new ModelAndView("AddProduct");
		return mv;
	}
	
	@RequestMapping(value="/product/add", method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("prod") Product prod, Model model) {
		
		MultipartFile img=prod.getImg();
		Path path;
		path=Paths.get("C:\\Project1\\peri-park\\src\\main\\webapp\\Pics\\"+prod.getProdname()+".jpg");
		System.out.println("File Name"+ prod.getImg().getOriginalFilename());
		
		if(img!=null && !img.isEmpty())
		{
			try
			{
				img.transferTo(new File(path.toString()));
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		Category cat=categoryDAO.get(prod.getCategory().getCatname());
		categoryDAO.saveOrUpdate(cat);
		
		Supplier sup=supplierDAO.get(prod.getSupplier().getSupname());
		System.out.println(prod.getSupplier().getSupname());
		supplierDAO.saveOrUpdate(sup);
		
		prod.setCategory(cat);
		prod.setSupplier(sup);
		
		prod.setCatid(cat.getCatid());
		prod.setSupid(sup.getSupid());
		
		productDAO.saveOrUpdate(prod);
		
		System.out.println("started");
		ModelAndView mv=new ModelAndView("AddProduct");
		productDAO.saveOrUpdate(prod);
		System.out.println("commited");
		
		model.addAttribute("productList", productDAO.list());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());
		model.addAttribute("prod", prod);
		return "redirect:/AddProduct";
		
	}
	
	@RequestMapping(value="/deleteproduct{prodid}")
	public ModelAndView showdeleteproduct(@PathVariable("prodid")String prodid, Model model) throws Exception
	{
		
		System.out.println(prodid);
		product=productDAO.getById(prodid);
		ModelAndView mv=new ModelAndView("ManageCategory");
		productDAO.delete(product);
		mv.addObject("ManageCategory", "true");
		return mv;
		
	}
	
}
