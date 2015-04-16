package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

public class SessionHelper {
	public static Session getHibernateSession()
	{
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sessionFactory=cfg.buildSessionFactory();
		Session session=sessionFactory.openSession();
		return session;
	}
	public static void closeHibernateSession(org.hibernate.Session session)
	{
		session.close();
		System.out.println("Session successfuly closed");
		
	}
}
