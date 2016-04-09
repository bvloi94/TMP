package net.techeco.dao;

import net.techeco.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

/**
 * Created by vanloibui on 4/9/16.
 */
public abstract class CommonDAO<T> {


    public <T> List<T> getAll(final Class<T> type) {
        List<T> obj = null;
        final Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            final Criteria crit = session.createCriteria(type);
            obj = crit.list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
            System.out.println(e);
        } finally {
            session.close();
        }
        return obj;

    }

    public void save(T tEntity) {
        final Session session = HibernateUtil.getSessionFactory().openSession();

        try {
            session.getTransaction().begin();
            session.merge(tEntity);
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }

    }

    public void delete(final Object obj) {
        final Session session = HibernateUtil.getSessionFactory().openSession();

        try {
            session.getTransaction().begin();
            session.delete(obj);
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }

    }

    public T getByKey(Class<T> type, int id) {
        T result = null;
        final Session session = HibernateUtil.getSessionFactory().openSession();

        try {
            session.getTransaction().begin();
            result = (T) session.get(type, id);
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }

        return result;
    }

}

