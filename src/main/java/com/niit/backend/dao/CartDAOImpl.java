package com.niit.backend.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.model.Cart;
import com.niit.backend.model.Category;

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
		
		@Autowired
		ProductDAO productDAO;
		
		@Autowired
		UserDAO userDAO;

		@Transactional
	public void AddToCart(Cart cart) {
		try{
		Session s=sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		System.out.println("before adding cart item");
		s.saveOrUpdate(cart);
		t.commit();
		System.out.println("Cart Item is Added");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

		@Transactional
	public void DeleteCartItem(Cart cart) {
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.beginTransaction();
			s.delete(cart);
			t.commit();
			s.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}
		
	}
	
		@Transactional
	public List<Cart> list() {
		Session s = sessionFactory.getCurrentSession();
		Transaction t = s.beginTransaction();
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<Cart> listCart = (List<Cart>) s.createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		t.commit();
		return listCart;
	}

		@Transactional
	public Cart getById(Integer id) {
		try {
			System.out.println("getById-Checking before return");
			String hql = "from Cart where prodid=" + id ;
			Session s = sessionFactory.openSession();
			Transaction t = s.beginTransaction();
			Query query = s.createQuery(hql);
			List<Cart> list = query.list();
			if (list == null) {
				return null;
			} else {
				return list.get(0);
			}
			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public void getCartItem(int id) {
		// TODO Auto-generated method stub
		
	}

}
