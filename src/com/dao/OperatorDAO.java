package com.dao;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;



import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;

import com.bean.Customer;
import com.bean.Operator;
import com.bean.Retailer;

import com.helper.SessionHelper;

public class OperatorDAO {
	public int addoperator(Operator op) {
		Session session = SessionHelper.getHibernateSession();
		
System.out.println(op.getOperatorId());

		Transaction tx = session.beginTransaction();
		
		int id1 =  (Integer) session.save(op);

		
		  Query q = session.createSQLQuery("INSERT INTO Login_p1(userid,username,password,role)values(?,?,?,?)" );
		
		 		
		  
		  q.setParameter(0, op.getOperatorId());
			 q.setParameter(1, op.getOpeartorFirstname());
			  String email = op.getOperatorEmail();
			 String email1 = md5(email);
			
			 
			 q.setParameter(2, email1);
			  q.setParameter(3, "OPERATOR");
				q.executeUpdate();
		  
		  
		  
		  tx.commit();
		 		
		 		
		 		
		SessionHelper.closeHibernateSession(session);

		return id1;
	}


	public ArrayList<Operator> deleterequestlist() {
		Session session = SessionHelper.getHibernateSession();

		org.hibernate.Query query = session.createQuery(" from Operator o where o.operatorStatus=?");
		query.setParameter(0,"DELETE_REQUEST");
		ArrayList<Operator> plList = (ArrayList<Operator>) query.list();
		SessionHelper.closeHibernateSession(session);
		return plList;

	}

	
	public ArrayList<Operator> viewall() {
		Session session = SessionHelper.getHibernateSession();

		org.hibernate.Query query = session.createQuery(" from Operator o");

		ArrayList<Operator> plList = (ArrayList<Operator>) query.list();
		SessionHelper.closeHibernateSession(session);
		return plList;

	}
	
	public ArrayList<Operator> search(int operatorId) {
		Session session = SessionHelper.getHibernateSession();
		Query q = session
				.createQuery("from Operator o where o.operatorId = ? and o.operatorStatus=?");
		q.setParameter(0, operatorId);
		q.setParameter(1, "ACTIVE");
		ArrayList<Operator> plList = (ArrayList<Operator>) q.list();
		SessionHelper.closeHibernateSession(session);
		return plList;
	}

	public ArrayList<Operator> search1(int operatorId) {
		Session session = SessionHelper.getHibernateSession();
		Query q = session
				.createQuery("from Operator o where o.operatorId = ? and o.operatorStatus=? ");
		q.setParameter(0, operatorId);
		q.setParameter(1, "ACTIVE");
		ArrayList<Operator> plList = (ArrayList<Operator>) q.list();

		
		SessionHelper.closeHibernateSession(session);
		return plList;
	}

	public String updateOperator(Operator opp) {

		String flag = "failure";
		Session session = SessionHelper.getHibernateSession();
		Transaction tx = session.beginTransaction();

		Query q = session
				.createQuery("from Operator o where o.operatorId = ? and o.operatorStatus=? ");
		q.setParameter(0, opp.getOperatorId());
		q.setParameter(1, "ACTIVE");

	//	Operator a = (Operator) q.list();

		ArrayList<Operator> plList=(ArrayList<Operator>) q.list();
		Iterator<Operator> it=plList.iterator();
		
		
		
		while(it.hasNext())
		{
			Operator a=it.next();

		a.setOpeartorFirstname(opp.getOpeartorFirstname());

		a.setOperatorLastname(opp.getOperatorLastname());
		a.setOperatorEmail(opp.getOperatorEmail());
		a.setOperatorPhone(opp.getOperatorPhone());
		a.setOperatorShiftstart(opp.getOperatorShiftstart());
		a.setOperatorShiftend(opp.getOperatorShiftend());
		a.setOperatorMaxcustomer(opp.getOperatorMaxcustomer());
		a.setOpeartorCreation(opp.getOpeartorCreation());

		session.update(a);
		}
		tx.commit();
		SessionHelper.closeHibernateSession(session);

		flag = "success";

		

		return flag;
	}

	
public String deleterequest(int id) {
		
		
		String flag = "failure";
		 Session session=SessionHelper.getHibernateSession();

		Transaction tx = session.beginTransaction();
		Query q = session
				.createQuery("from Operator o where o.operatorId = ? and o.operatorStatus=? ");
		q.setParameter(0,id);
		q.setParameter(1, "ACTIVE");

		
		ArrayList<Operator> plList=(ArrayList<Operator>) q.list();
		
		
		if(plList.size()>0) {flag="success"; }
		Iterator<Operator> it=plList.iterator();
		
		
		
		while(it.hasNext())
		{
			Operator a=it.next();
			
		a.setOperatorStatus("DELETE_REQUEST");
		
		
		session.update(a);
		}
	
	

		
		tx.commit();

		SessionHelper.closeHibernateSession(session);
		return flag;
		
	}
	
	
	public String deleteOperator(Operator opp) {

		String flag = "failure";
		Session session = SessionHelper.getHibernateSession();
		Transaction tx = session.beginTransaction();

		Query q = session
				.createQuery("from Operator o where o.operatorId = ? and o.operatorStatus=? ");
		q.setParameter(0, opp.getOperatorId());
		q.setParameter(1, "ACTIVE");

		

		ArrayList<Operator> plList=(ArrayList<Operator>) q.list();
		Iterator<Operator> it=plList.iterator();
		
		
		
		while(it.hasNext())
		{
			Operator a=it.next();
		

		a.setOperatorStatus("INACTIVE");
		session.update(a);
		}
		Query q1 = session
				.createSQLQuery("DELETE FROM Login_p1 where userid=? and role=?");
		q1.setParameter(0, opp.getOperatorId());
	
		q1.setParameter(1, "OPERATOR");
		q1.executeUpdate();

		tx.commit();
		SessionHelper.closeHibernateSession(session);

		flag = "success";

		

		return flag;
	}

	public String deleteOperator1(int id) {

		String flag = "failure";
		Session session = SessionHelper.getHibernateSession();
		Transaction tx = session.beginTransaction();

		Query q = session
				.createQuery("from Operator o where o.operatorId = ? and o.operatorStatus=? ");
		q.setParameter(0, id);
		q.setParameter(1, "DELETE_REQUEST");

	
		ArrayList<Operator> plList=(ArrayList<Operator>) q.list();
		Iterator<Operator> it=plList.iterator();
		
		
		
		while(it.hasNext())
		{
			Operator a=it.next();
		

		a.setOperatorStatus("INACTIVE");
		session.update(a);
		}
		Query q1 = session
				.createSQLQuery("DELETE FROM Login_p1 where userid=? and role=?");
		q1.setParameter(0, id);
	
		q1.setParameter(1, "OPERATOR");
		q1.executeUpdate();

		tx.commit();
		SessionHelper.closeHibernateSession(session);

		flag = "success";

		

		return flag;
	}
	
	
	
	/*trying md5 encryption*/
	public static String md5(String input) {
        
        String md5 = null;
         
        if(null == input) return null;
         
        try {
             
        //Create MessageDigest object for MD5
        MessageDigest digest = MessageDigest.getInstance("MD5");
         
        //Update input string in message digest
        digest.update(input.getBytes(), 0, input.length());
 
        //Converts message digest value in base 16 (hex) 
        md5 = new BigInteger(1, digest.digest()).toString(16);
 
        } catch (Exception e) {
 
            e.printStackTrace();
        }
        return md5;
    }
}
