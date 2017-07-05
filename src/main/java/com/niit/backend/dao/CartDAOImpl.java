package com.niit.backend.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.backend.model.Cart;

@Repository(value="cartDAO")
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

		public CartDAOImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}	
		public CartDAOImpl() {
			super();
			// TODO Auto-generated constructor stub
		}

	public void AddToCart(Cart cart) {
		try{
		Session s=sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		s.saveOrUpdate(cart);
		System.out.println("before adding cart item");
		t.commit();
		System.out.println("Cart Item is Added");
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	public void DeleteCartItem(Cart cart) {
		// TODO Auto-generated method stub
		
	}

	public void getCartItem(int id) {
		// TODO Auto-generated method stub
		
	}

	public List<Cart> list() {
		// TODO Auto-generated method stub
		return null;
	}

	public Cart getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}


}
