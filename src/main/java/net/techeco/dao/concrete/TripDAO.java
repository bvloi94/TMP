package net.techeco.dao.concrete;

import net.techeco.dao.ITripDAO;
import net.techeco.model.Trip;
import net.techeco.util.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.type.IntegerType;


public class TripDAO implements ITripDAO {

	SessionFactory sessionFactory;

	public TripDAO() {
		sessionFactory = HibernateUtil.getSessionFactory();
	}

	public boolean createTrip(Trip trip) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.getTransaction().begin();

			session.save(trip);

			session.getTransaction().commit();
			return true;
		} catch (HibernateException e) {
			session.getTransaction().rollback();
			System.out.println(e);
		}

		return false;
	}

	public boolean updateTrip(Trip trip) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.getTransaction().begin();

			session.update(trip);

			session.getTransaction().commit();
			return true;
		} catch (HibernateException e) {
			session.getTransaction().rollback();
			System.out.println(e);
		}
		return false;
	}

	public boolean cancelTrip(int tripId) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.getTransaction().begin();
			
			String sql = "delete from Trip where Id = :Id";
			Query query = session.createSQLQuery(sql).addScalar("Id", IntegerType.INSTANCE);
			query.setParameter("Id", tripId);
			
			int result = query.executeUpdate();

			session.getTransaction().commit();
			
			if(result != -1) {
				return true;
			}
		} catch (HibernateException e) {
			session.getTransaction().rollback();
			System.out.println(e);
		}
		return false;
	}

}
