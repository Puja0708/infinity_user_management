package com.dao;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;


import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;


import com.bean.Retailer;

import com.helper.SessionHelper;

public class RetailerDAO {
	public int addRetailer(Retailer retail)
	 {
		 Session session=SessionHelper.getHibernateSession();
			
			
			Transaction tx=session.beginTransaction();
			
			int id=(Integer)session.save(retail);
			

			  Query q = session.createSQLQuery("INSERT INTO Login_p1(userid,username,password,role)values(?,?,?,?)" );
			
			  
			  
			  q.setParameter(0, retail.getRetailerId());
				 q.setParameter(1, retail.getRetailerName());
				  String email = retail.getRetailerContact1();
				 String email1 = md5(email);
				
				 
				 q.setParameter(2, email1);
				  q.setParameter(3, "RETAILER");
					q.executeUpdate();
			tx.commit();
			SessionHelper.closeHibernateSession(session);
			
			return id;
	 }
	
	 
	
	public ArrayList<Retailer> viewall()
	 {
		 Session session=SessionHelper.getHibernateSession();
		 
		 Query query=session.createQuery(" from Retailer r");
		 
		 ArrayList<Retailer> plList=(ArrayList<Retailer>) query.list();
		
		SessionHelper.closeHibernateSession(session);
		 return plList;
		 
	 }
	 
		
	
	public  ArrayList<Retailer>  search(int retailerId)
	{
		 Session session=SessionHelper.getHibernateSession();
		 Query q = session
					.createQuery("from Retailer r where r.retailerId = ? and r.retailerStatus=?" );
			q.setParameter(0, retailerId);
			q.setParameter(1, "ACTIVE");
			ArrayList<Retailer> plList=(ArrayList<Retailer>) q.list();
			SessionHelper.closeHibernateSession(session);
			 return plList;
   }
		
		

	public  ArrayList<Retailer>  search1(int retailerId)
	{
		 Session session=SessionHelper.getHibernateSession();
		 Query q = session
					.createQuery("from Retailer r where r.retailerId = ? and r.retailerStatus=? ");
			q.setParameter(0, retailerId);
			q.setParameter(1, "ACTIVE");
			ArrayList<Retailer> plList=(ArrayList<Retailer>) q.list();
			
			Iterator<Retailer> it=plList.iterator();
			while(it.hasNext())
			{
				Retailer op=it.next();
			
			}
			SessionHelper.closeHibernateSession(session);
			 return plList;
	 }
		
		
	public String updateRetailer(Retailer retail)
	{
		
			
			String flag = "failure";
			Session session=SessionHelper.getHibernateSession();
			Transaction tx=session.beginTransaction();
			
			 Query q = session
						.createQuery("from Retailer r where r.retailerId = ? and r.retailerStatus=? ");
				q.setParameter(0, retail.getRetailerId());
				q.setParameter(1, "ACTIVE");
				
				ArrayList<Retailer> plList=(ArrayList<Retailer>) q.list();
				// a=(Retailer) q.list();
			
		//	Operator a=(Operator)session.load(Operator.class,opp.getOperatorId());
				Iterator<Retailer> it=plList.iterator();
				
		
			
			while(it.hasNext())
			{
				Retailer a=it.next();
			
			
           a.setRetailerName(retail.getRetailerName());

           a.setRetailerContact1(retail.getRetailerContact1());
           a.setRetailerContact2(retail.getRetailerContact2());
           a.setRetailerAddress1(retail.getRetailerAddress1());
           a.setRetailerAddress2(retail.getRetailerAddress2());
           a.setRetailerCity(retail.getRetailerCity());
           a.setRetailerState(retail.getRetailerState());
           a.setRetailerPinCode(retail.getRetailerPinCode());
           a.setSeTopBoxLimit(retail.getSeTopBoxLimit());
           a.setCreditLimit(retail.getCreditLimit());
           a.setCommissionPercentege(retail.getCommissionPercentege());
           a.setServiceCharges(retail.getServiceCharges());
           a.setRetailerInventory(retail.getRetailerInventory());
           a.setTotalInventoryCost(retail.getTotalInventoryCost());
			
           //a.setServiceCharges(ret.getServiceCharges());
			session.update(a);
			}
			
			tx.commit();
			SessionHelper.closeHibernateSession(session);
			
			flag = "success";

			
			

			
			
			return flag;
		}
		
		
		
		public String deleteRetailer(Retailer retail) {
			
			String flag = "failure";
			Session session=SessionHelper.getHibernateSession();
			Transaction tx=session.beginTransaction();
			
			 Query q = session
						.createQuery("from Retailer r where r.retailerId = ? and r.retailerStatus=? ");
				q.setParameter(0, retail.getRetailerId());
				q.setParameter(1, "ACTIVE");
				
				
				ArrayList<Retailer> plList=(ArrayList<Retailer>) q.list();
			
			//Operator a=(Operator)session.load(Operator.class,opp.getOperatorId());
				
			
			Iterator<Retailer> it=plList.iterator();
			while(it.hasNext())
			{
				Retailer a=it.next();
		
			
a.setRetailerStatus("INACTIVE");
session.update(a);
			}
			
			Query q1 = session
					.createSQLQuery("DELETE FROM Login_p1 where userid=? and role=?");
			q1.setParameter(0, retail.getRetailerId());
			// q1.setParameter(1,opp.getOperatorEmail());
			q1.setParameter(1, "RETAILER");
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
