package com.niit;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.backend.dao.UserDAO;
import com.niit.backend.model.User;

public class UserTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
context.scan("com");
context.refresh();

UserDAO userDAO=(UserDAO)context.getBean("userDAO");
User user=(User)context.getBean("user");
//user.setUserid(9);
user.setUsername("Sri");
user.setFirstname("Sreshta");
user.setLastname("Sindole");
user.setAddress("Hyderabad");
user.setCity("Hyderabad");
user.setState("Telangana");
user.setZip(500032);
user.setConpassword("omnamah108");
user.setEmail("sri@gmail.com");
user.setPassword("omnamah108");
user.setPhone("9502099986");
user.setRole("ROLE_ADMIN");
userDAO.saveOrUpdate(user);
System.out.println("Saved");
/*user=userDAO.get("sindole777@gmail.com");
System.out.println(user.getUsername());*/
/*userDAO.delete(user);
System.out.println(user.getUsername());*/
	}

}
