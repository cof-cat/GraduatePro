package edu.td.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class UserDao extends ImpDAO {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public Object findById(String hql) {
		
		try {
			Session session = this.sessionFactory.openSession();
			Query query = session.createQuery(hql);			
			List list = query.list();		
			session.close();
			return list.get(0);
		} catch (Exception e) {
			System.out.println("xxxx"+e.getMessage());
			return null;
		}

	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Object> findAll(String hql) {
		try {
			Session session = this.sessionFactory.openSession();
			Query query = session.createQuery(hql);
			List list = query.list();
			session.close();
			return list;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}
}
