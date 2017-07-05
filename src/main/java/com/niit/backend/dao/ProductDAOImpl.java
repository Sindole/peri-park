package com.niit.backend.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.backend.model.Category;
import com.niit.backend.model.Product;

@Repository(value="productDAO")
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		super();
		this.sessionFactory=sessionFactory;
	}

	public ProductDAOImpl() {
		super();
		// TODO Auto-generated constructor stub
	}

	public boolean saveOrUpdate(Product prod) {
		try{
		Session s=sessionFactory.getCurrentSession();
		Transaction t=s.beginTransaction();
		s.saveOrUpdate(prod);
		t.commit();
		return true;
		}
		
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	public boolean delete(Product prod) {
		try
		{
			Session s=sessionFactory.getCurrentSession();
			Transaction t=s.beginTransaction();
			s.delete(prod);
			t.commit();
			sessionFactory.getCurrentSession().delete(prod);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public Product get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Product> list() {
		Session s=sessionFactory.getCurrentSession();
		Transaction t=s.beginTransaction();
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<Product>listProduct=(List<Product>)s.createCriteria(Product.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	
		t.commit();
	return listProduct;
	}

	public Product getById(String id) {
		try
		{
			return sessionFactory.openSession().createQuery("from Product where prodid=:id", Product.class).setParameter("prodid", id).getSingleResult();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}

}
