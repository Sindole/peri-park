package com.niit;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.backend.dao.CategoryDAO;
import com.niit.backend.model.Category;

public class CategoryTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		
		CategoryDAO catDAO=(CategoryDAO)context.getBean("categoryDAO");
		Category cat=(Category)context.getBean("cat");
		
	cat.setCatid("PPCPUS01");	
	cat.setCatname("CPUs");
	cat.setCatdesc("We have Branded & Assembled CPUs");
	catDAO.saveOrUpdate(cat);
	System.out.println("Inserted");
	
	
	}

}
