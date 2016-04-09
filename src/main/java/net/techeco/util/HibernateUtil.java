package net.techeco.util;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {

    private static SessionFactory ourSessionFactory;
    private static ServiceRegistry serviceRegistry;

//    static {
//        try {
//            Configuration configuration = new Configuration();
//            configuration.configure();
//
//            serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
//            ourSessionFactory = configuration.buildSessionFactory(serviceRegistry);
//        } catch (Throwable ex) {
//            System.out.println(ex.getMessage());
//        }
//    }

    public static SessionFactory getSessionFactory() {
        if (ourSessionFactory==null) {
            try {
                Configuration configuration = new Configuration();
                configuration.configure();
                serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
                ourSessionFactory = configuration.buildSessionFactory(serviceRegistry);
            } catch (Throwable ex) {
                System.out.println(ex.getMessage());
            }
        }
        return ourSessionFactory;
    }

    public static Session getSession() throws HibernateException {
        return ourSessionFactory.openSession();
    }

//    private static SessionFactory sessionFactory;
//    private static ServiceRegistry serviceRegistry;
//
//
//    private static SessionFactory buildSessionFactory() {
//        try {
//            Configuration configuration = new Configuration();
//            configuration.configure();
//            serviceRegistry = new StandardServiceRegistryBuilder().applySettings(
//                    configuration.getProperties()).build();
//            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
//        } catch (Throwable ex) {
//            System.out.println(ex.getCause());
//        }
//        return sessionFactory;
//    }
//
//    public static SessionFactory getSessionFactory() {
//        return buildSessionFactory();
//    }
//
//    public static void shutdown() {
//        getSessionFactory().close();
//    }
}
