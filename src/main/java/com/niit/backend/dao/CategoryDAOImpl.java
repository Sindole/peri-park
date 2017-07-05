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

import com.niit.backend.model.Category;
import com.niit.backend.model.User;

@Repository(value = "categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public CategoryDAOImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	public CategoryDAOImpl() {
		super();
		// TODO Auto-generated constructor stub
	}

	public boolean saveOrUpdate(Category cat) {
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.beginTransaction();
			s.saveOrUpdate(cat);
			System.out.println("before commit");
			t.commit();
			return true;
		}

		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean delete(Category cat) {
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.beginTransaction();
			s.delete(cat);
			t.commit();
			s.close();
			// sessionFactory.getCurrentSession().delete(cat);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public Category get(String name) {
		Session s = sessionFactory.openSession();
		Transaction t = s.beginTransaction();

		String hql = "from Category where catname='" + name + "'";
		Query query = s.createQuery(hql);
		List<Category> listCategory = (List<Category>) query.list();

		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		t.commit();
		return null;
	}

	public List<Category> list() {
		Session s = sessionFactory.getCurrentSession();
		Transaction t = s.beginTransaction();
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<Category> listCategory = (List<Category>) s.createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		t.commit();
		return listCategory;
	}

	public Category getById(String id) {
		try {
			System.out.println("getById-Checking before return");
			String hql = "from Category where catid='" + id + "'";
			Session s = sessionFactory.openSession();
			Transaction t = s.beginTransaction();
			Query query = s.createQuery(hql);
			List<Category> list = query.list();
			if (list == null) {
				return null;
			} else {
				return list.get(0);
			}
			// return sessionFactory.openSession().createQuery("from Category
			// where catid=:id", Category.class).setParameter("catid",
			// id).getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

}
