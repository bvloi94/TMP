package net.techeco.dao.concrete;

import java.util.ArrayList;
import java.util.List;

import net.techeco.dao.IAccountDAO;
import net.techeco.model.Account;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.type.StandardBasicTypes;
import org.hibernate.type.StringType;

import net.techeco.util.HibernateUtil;

public class AccountDAO implements IAccountDAO {

    SessionFactory sessionFactory;

    public AccountDAO() {
        sessionFactory = HibernateUtil.getSessionFactory();
    }

    public List<Account> getAllUser() {
        List<Account> accounts = null;
        Session session = sessionFactory.openSession();
        try {
            session.getTransaction().begin();
            String sql = "select * from Account";
            Query query = session.createSQLQuery(sql);
            accounts = new ArrayList<Account>();
            accounts = query.list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
            System.out.println(e);
        } finally {
            session.close();
        }

        return accounts;
    }

    public Object getAccount(String email) {
        Session session = sessionFactory.openSession();
        Object user = null;
        try {
            session.getTransaction().begin();

            String sql = "select * from Account a where a.Email = :Email";
            Query query = session.createSQLQuery(sql)
                    .addScalar("Id", StandardBasicTypes.INTEGER)
                    .addScalar("Email", StandardBasicTypes.STRING)
                    .addScalar("Password", StandardBasicTypes.STRING)
                    .addScalar("Phone", StandardBasicTypes.STRING)
                    .addScalar("Avatar", StandardBasicTypes.STRING)
                    .addScalar("Fullname", StandardBasicTypes.STRING)
                    .addScalar("RoleId", StandardBasicTypes.INTEGER)
                    .addScalar("IsActive", StandardBasicTypes.BOOLEAN);

            query.setParameter("Email", email);
            user = query.uniqueResult();

            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return user;
    }

    public boolean checkLogin(String email, String password) {
        Session session = sessionFactory.openSession();
        try {
            session.getTransaction().begin();

            String sql = "select * from Account a where a.Email = :Email and a.Password = :Password";
            Query query = session.createSQLQuery(sql)
                    .addScalar("Email", StringType.INSTANCE)
                    .addScalar("Password", StringType.INSTANCE);
            query.setParameter("Email", email);
            query.setParameter("Password", password);

            Object account = query.uniqueResult();

            if (account != null) {
                session.getTransaction().commit();
                return true;
            }

        } catch (HibernateException e) {
            session.getTransaction().rollback();
            System.out.println(e);
        } finally {
            session.close();
        }

        return false;
    }

    public void registerUser(Account account) {
        Session session = sessionFactory.openSession();
        try {
            session.getTransaction().begin();

            session.save(account);

            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
            System.out.println(e);
        } finally {
            session.close();
        }
    }

    public void updateUserInfo(Account account) {
        Session session = sessionFactory.openSession();
        try {
            session.getTransaction().begin();
            // ?????????
            session.update((String) account.getEmail(), account);

            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
            System.out.println(e);
        } finally {
            session.close();
        }
    }

    public boolean deactiveUser(String email) {
        Session session = sessionFactory.openSession();
        try {
            session.getTransaction().begin();

            Account user = (Account) session.get(Account.class, email);

            user.setIsActive(false);
            session.update(user);

            session.getTransaction().commit();
            return true;
        } catch (HibernateException e) {
            session.getTransaction().rollback();
            System.out.println(e);
        } finally {
            session.close();
        }
        return false;
    }

    public boolean activeUser(String email) {
        Session session = sessionFactory.openSession();
        try {
            session.getTransaction().begin();

            Account user = (Account) session.get(Account.class, email);
            user.setIsActive(true);
            session.update(user);

            session.getTransaction().commit();
            return true;
        } catch (HibernateException e) {
            session.getTransaction().rollback();
            System.out.println(e);
        } finally {
            session.close();
        }
        return false;
    }

}
