package com.niit.backend.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.backend.model.Category;
import com.niit.backend.model.Supplier;

@Repository(value="supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public SupplierDAOImpl() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SupplierDAOImpl(SessionFactory sessionFactory)
	{
		super();
		this.sessionFactory=sessionFactory;
	}

	public boolean saveOrUpdate(Supplier sup) {
		try{
		Session s=sessionFactory.getCurrentSession();
		Transaction t=s.beginTransaction();
		s.saveOrUpdate(sup);
		t.commit();
		return true;
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean delete(Supplier sup) {
		try
		{
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			s.delete(sup);
			t.commit();
			s.close();
			//sessionFactory.getCurrentSession().delete(cat);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public Supplier get(String name) {
		Session s=sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		
		String hql="from Supplier where supname='"+name +"'";
		Query query = s.createQuery(hql);
		List<Supplier>listSupplier=(List<Supplier>)query.list();
		
		if(listSupplier!=null && !listSupplier.isEmpty())
		{
			return listSupplier.get(0);
		}
		t.commit();
		return null;
	}

	public List<Supplier> list() {
		Session s=sessionFactory.getCurrentSession();
		Transaction t=s.beginTransaction();
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<Supplier>listSupplier=(List<Supplier>)s.createCriteria(Supplier.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	t.commit();
	return listSupplier;
	}

	public Supplier getById(String id) {
		try
		{
			System.out.println("getById-Checking before return");
			String hql="from Supplier where supid='"+id+"'";
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
		Query query=s.createQuery(hql);
		List<Supplier>list=query.list();
		if(list==null)
		{
			return null;
		}
		else
		{
			return list.get(0);
		}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		
		
	}


}
