package edu.td.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import edu.td.model.Uinfo;
import edu.td.model.User;

public class OprationDao extends ImpDAO {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public int insert(Object instance) {
		int rs = 0;
		try {
			Session session = this.sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.save(instance);
			tx.commit();
			rs = 1;
			session.close();			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			rs = 0;
		}
		return rs;
	}

	@Override
	public int update(Object instance) {
		try {
			Session session = this.sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.update(instance);
			tx.commit();
			session.close();		
			return 1;
		} catch (Exception e) {
			System.out.println(e.getMessage());			
			return 0;
		}
	}

	@Override
	public int delete(String id) {	
		
		try {			
			Session session = this.sessionFactory.openSession();
			Transaction tx = session.beginTransaction();

			Uinfo infoDB = (Uinfo) session.load(Uinfo.class, id);
			User userDB = (User) session.load(User.class, id);

			infoDB.setUser(userDB);
			userDB.setUinfo(infoDB);

			 session.delete(userDB);
			//session.delete(infoDB);			
			tx.commit();
			session.flush();
			session.close();			
			return 1;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			
			return 0;
		}

	}
}
