package com.dao;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import org.hibernate.Transaction;






import com.bean.Customer;
import com.bean.Operator;


import com.helper.SessionHelper;

public class CustomerDAO {
	
	public int addCustomer(Customer customer) {
		
		 Session session=SessionHelper.getHibernateSession();
		Transaction tx = session.beginTransaction();
		int id=0;
		String flag="success";
		
		if((customer.getOperatorName()!=null) && (customer.getRetailerName()!=null)){customer.setRequestedForActivation("Activated");}
		else {customer.setRequestedForActivation("Not_Activated");}
		
		
		
		
		
		
		
		if(customer.getRequestedForActivation().equals("Activated"))
		{
			int max=0;
			Query q2 = session.createSQLQuery("SELECT operatormaxcustomer FROM TBL_OPERATOR_1C  where opeartorfirstname=?" );
			 q2.setParameter(0, customer.getOperatorName());
		ArrayList<String> plList2= (ArrayList<String>) q2.list();

		Iterator<String> it2=plList2.iterator();
		while(it2.hasNext())
		{
		String opp2=it2.next();
			max=Integer.parseInt(opp2);
			
		}
			
			
			
		 Query q1 = session.createSQLQuery("SELECT operatoractivecustomer FROM TBL_OPERATOR_1C  where opeartorfirstname=?" );
			 q1.setParameter(0, customer.getOperatorName());
		ArrayList<String> plList1= (ArrayList<String>) q1.list();

		Iterator<String> it=plList1.iterator();
			
			while(it.hasNext())
			{
			String opp=it.next();
				int active=Integer.parseInt(opp);
				if(max>active){
				int active1=active+1;
				 Query qry1 = session.createSQLQuery("UPDATE TBL_OPERATOR_1C SET operatoractivecustomer=? where opeartorfirstname=? " );
				
				 qry1.setParameter(0, active1);
				 qry1.setParameter(1, customer.getOperatorName());
				 qry1.executeUpdate();
				flag="success";
				}
				else
				{
					flag="failure";
				}
				
			}
		}
			
		
		
		if(flag=="success")
		{
		 id = (Integer) session.save(customer);
			
			 Query q = session.createSQLQuery("INSERT INTO Login_p1(userid,username,password,role)values(?,?,?,?)" );
				
		 q.setParameter(0, customer.getCustomerId());
		 q.setParameter(1, customer.getFirstName());
		  String email = customer.getEmaiId();
		 String email1 = md5(email);
		// System.out.println("email in hex is :" + email1);
		 
		 q.setParameter(2, email1);
		  q.setParameter(3, "CUSTOMER");
			q.executeUpdate();
			flag="success";
		}
		
		
		
		
		tx.commit();
		SessionHelper.closeHibernateSession(session);
		
		
		return id;
		
	}
	
	
	public ArrayList<Customer> retrieveCustomers() {
		 Session session=SessionHelper.getHibernateSession();
		 Query q = session
					.createQuery("from Customer c where c.customerStatus=?  ");
			//q.setParameter(0, customerId);
			q.setParameter(0, "ACTIVE");
			ArrayList<Customer> customerList=(ArrayList<Customer>) q.list();
			
		System.out.println(customerList.size());
		SessionHelper.closeHibernateSession(session);
		return customerList;

	}
	
	
	
	public ArrayList<Customer> deleterequestlist() {
		 Session session=SessionHelper.getHibernateSession();
		 Query q = session
					.createQuery("from Customer c where c.customerStatus=? and c.requestedForDeactivation=? ");
			//q.setParameter(0, customerId);
			q.setParameter(0, "ACTIVE");
			q.setParameter(1, "DELETE REQUEST");
			ArrayList<Customer> customerList=(ArrayList<Customer>) q.list();
			
		System.out.println(customerList.size());
		SessionHelper.closeHibernateSession(session);
		return customerList;

	}
	
	public ArrayList<Customer> activationlist() {
		 Session session=SessionHelper.getHibernateSession();
		 Query q = session
					.createQuery("from Customer c where c.customerStatus=? and c.requestedForActivation=? ");
			//q.setParameter(0, customerId);
			q.setParameter(0, "ACTIVE");
			q.setParameter(1, "Not_Activated");
			ArrayList<Customer> customerList=(ArrayList<Customer>) q.list();
			
		System.out.println(customerList.size());
		SessionHelper.closeHibernateSession(session);
		return customerList;

	}
	
	
	
	public ArrayList<String> fetchOperator()
	{
		
		 Session session=SessionHelper.getHibernateSession();
			Query q = session
					.createQuery("select o.opeartorFirstname from Operator o ");
			
			ArrayList<String> prolist = (ArrayList<String>) q.list();
			SessionHelper.closeHibernateSession(session);
			
			
			return prolist;
	}
	
	public ArrayList<String> fetchRetailer()
	{
		
		 Session session=SessionHelper.getHibernateSession();
			Query q = session
					.createQuery("select r.retailerName from Retailer r ");
			
			ArrayList<String> prolist = (ArrayList<String>) q.list();
			SessionHelper.closeHibernateSession(session);
			
			
			return prolist;
	}
	
	public String updateCustomer(Customer cust) {
		
		
		String flag = "failure";
		 Session session=SessionHelper.getHibernateSession();

		Transaction tx = session.beginTransaction();
		
		Query q = session
				.createQuery("from Customer c where c.customerId = ? and c.customerStatus=?  ");
		q.setParameter(0, cust.getCustomerId());
		q.setParameter(1, "ACTIVE");

		ArrayList<Customer> plList=(ArrayList<Customer>) q.list();
		Iterator<Customer> it=plList.iterator();
		
		
		
		while(it.hasNext())
		{
			Customer c=it.next();
		
		c.setFirstName(cust.getFirstName());
		c.setLastName(cust.getLastName());
		c.setEmaiId(cust.getEmaiId());
		c.setPhoneNumber(cust.getPhoneNumber());
		c.setAddress1(cust.getAddress1());
		c.setAddress2(cust.getAddress2());
		c.setPinCode(cust.getPinCode());
		c.setCity(cust.getCity());
		c.setState(cust.getState());
		c.setOperatorName(cust.getOperatorName());
		c.setRetailerName(cust.getRetailerName());
		session.update(c);
		}
		flag = "success";

		
		tx.commit();

		
		
		SessionHelper.closeHibernateSession(session);
		return flag;
		
	}
	
	
public String deleterequest(int id) {
		
		
		String flag = "failure";
		 Session session=SessionHelper.getHibernateSession();

		Transaction tx = session.beginTransaction();
		Query q = session
				.createQuery("from Customer c where c.customerId = ? and c.customerStatus=?  ");
		q.setParameter(0, id);
		q.setParameter(1, "ACTIVE");

		//Customer a = (Customer) q.list();

		ArrayList<Customer> plList=(ArrayList<Customer>) q.list();
		Iterator<Customer> it=plList.iterator();
		
		
		
		while(it.hasNext())
		{
			Customer a=it.next();
		
		
		a.setRequestedForDeactivation("DELETE REQUEST");
		
		
		session.update(a);
		}
		flag = "success";

		
		tx.commit();

		SessionHelper.closeHibernateSession(session);
		return flag;
		
	}
	
public String Activation(Customer c) {
	
	
	String flag = "failure";
	
	 Session session=SessionHelper.getHibernateSession();

	Transaction tx = session.beginTransaction();
	
	 Query q1 = session.createSQLQuery("SELECT operatoractivecustomer FROM TBL_OPERATOR_1C  where opeartorfirstname=?" );
	 q1.setParameter(0, c.getOperatorName());
ArrayList<String> plList1= (ArrayList<String>) q1.list();

Iterator<String> it1=plList1.iterator();
	
	while(it1.hasNext())
	{
	String opp=it1.next();
		int max=Integer.parseInt(opp);
		
		int max1=max+1;
		 Query qry1 = session.createSQLQuery("UPDATE TBL_OPERATOR_1C SET operatoractivecustomer=? where opeartorfirstname=? " );
		
		 qry1.setParameter(0, max1);
		 qry1.setParameter(1, c.getOperatorName());
		 qry1.executeUpdate();
		flag="success";
	
	
	
	
	}
	
if(flag=="success")
{
	Query q = session
			.createQuery("from Customer c where c.customerId = ? and c.customerStatus=? and c.requestedForActivation=? ");
	q.setParameter(0, c.getCustomerId());
	q.setParameter(1, "ACTIVE");
	q.setParameter(2, "Not_Activated");
//	Customer a = (Customer) q.list();

	ArrayList<Customer> plList=(ArrayList<Customer>) q.list();
	
	if(plList.size()>0){flag="success";}
	else
	{
		flag="failure";
	}
	Iterator<Customer> it=plList.iterator();
	
	
	
	while(it.hasNext())
	{
		
		Customer a=it.next();
		
	System.out.println(a.getOperatorName());
		a.setOperatorName(c.getOperatorName());
		a.setRetailerName(c.getRetailerName());
	a.setRequestedForActivation("Activated");
	session.update(a);
		
	}
}
	
	tx.commit();

	SessionHelper.closeHibernateSession(session);
	return flag;
	
}
	
	
	
	public List<Customer> retrieveCustomerDetail(int customerId) {
		//System.out.println(customerId);
		 Session session=SessionHelper.getHibernateSession();
		 Query q = session
					.createQuery("from Customer c where c.customerId = ? and c.customerStatus=? ");
			q.setParameter(0, customerId);
			q.setParameter(1, "ACTIVE");
			ArrayList<Customer> customerList=(ArrayList<Customer>) q.list();
		System.out.println(customerList.size());
		SessionHelper.closeHibernateSession(session);
		return customerList;

	}
	
	public  ArrayList<Customer>  search(int customerId)
	{
		 Session session=SessionHelper.getHibernateSession();
		 Query q = session
					.createQuery("from Customer c where c.customerId = ? and c.customerStatus=?" );
			q.setParameter(0, customerId);
			q.setParameter(1, "ACTIVE");
			ArrayList<Customer> plList=(ArrayList<Customer>) q.list();
			SessionHelper.closeHibernateSession(session);
			 return plList;
   }
		
	
	public String deleteCustomerDetail(Customer customer) {
		
		String flag = "failure";
		 Session session=SessionHelper.getHibernateSession();

		Transaction tx = session.beginTransaction();
		
		Query q = session
				.createQuery("from Customer c where c.customerId = ? and c.customerStatus=? ");
		q.setParameter(0, customer.getCustomerId());
		q.setParameter(1, "ACTIVE");

		//Customer a = (Customer) q.list();
		ArrayList<Customer> plList=(ArrayList<Customer>) q.list();
		Iterator<Customer> it=plList.iterator();
		
		
		
		while(it.hasNext())
		{
			Customer a=it.next();
		
		a.setCustomerStatus("INACTIVE");
		
		
		session.update(a);
		}
		Query q1 = session
				.createSQLQuery("DELETE FROM Login_p1 where userid=? and role=?");
		q1.setParameter(0, customer.getCustomerId());
		// q1.setParameter(1,opp.getOperatorEmail());
		q1.setParameter(1, "CUSTOMER");
		q1.executeUpdate();

tx.commit();
SessionHelper.closeHibernateSession(session);

flag = "success";

return flag;
}

public String deleteCustomerDetail1(int id) {
		
		String flag = "failure";
		 Session session=SessionHelper.getHibernateSession();
System.out.println(id);
		Transaction tx = session.beginTransaction();
		
		Query q = session
				.createQuery("from Customer c where c.customerId = ? and c.customerStatus=? and c.requestedForDeactivation=? ");
		q.setParameter(0, id);
		q.setParameter(1, "ACTIVE");
		q.setParameter(2, "DELETE REQUEST");

	//	Customer a = (Customer) q.list();

		ArrayList<Customer> plList=(ArrayList<Customer>) q.list();
		if(plList.size()>0){flag="success";}
		Iterator<Customer> it=plList.iterator();
		
		
		
		while(it.hasNext())
		{
			Customer a=it.next();
		a.setCustomerStatus("INACTIVE");;
		
		
		session.update(a);
		}
		Query q1 = session
				.createSQLQuery("DELETE FROM Login_p1 where userid=? and role=?");
		q1.setParameter(0, id);
		
		q1.setParameter(1, "CUSTOMER");
		q1.executeUpdate();

tx.commit();
SessionHelper.closeHibernateSession(session);



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

