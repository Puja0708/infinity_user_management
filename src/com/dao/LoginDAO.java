package com.dao;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Login;
import com.helper.SessionHelper;

public class LoginDAO {
	
	public Login adminCredentials(Login log) {
		
Session session = SessionHelper.getHibernateSession();
		
		
		Transaction tx=session.beginTransaction();
		
		Query qry = session.createQuery(" FROM Login l WHERE l.userID =? and l.password=? ");
		
		
String encryp = log.getUserID();
		
		
		if(encryp.equals("123")){
			qry.setString(0,log.getUserID());
			qry.setString(1, log.getPassword());
		}
		else{
			qry.setString(0,log.getUserID());
			String pass = log.getPassword();
			String encPass = md5(pass);
			
			
			qry.setString(1, encPass);
		}
		
		
		
	
		
		@SuppressWarnings("unchecked")
		List<Login> credentials=qry.list();
		
		
		
	Iterator<Login> it=credentials.iterator();
	Login login=new Login();
	if(it.hasNext())
	{
		 login=it.next();
		
	}
	tx.commit();
	SessionHelper.closeHibernateSession(session);
	return login;
		}
	
	
	
	
	public String newpassword(Login log) {
		
		Session session = SessionHelper.getHibernateSession();
				String flag="failure";
		String pass = log.getPassword();
		String encPass = md5(pass);
				Transaction tx=session.beginTransaction();
				
				Query qry = session.createQuery(" FROM Login l WHERE l.userID =?  ");
				qry.setString(0,log.getUserID());
				List<Login> credentials=qry.list();
				
				
				
				Iterator<Login> it=credentials.iterator();
				Login login=new Login();
				if(it.hasNext())
				{
					 login=it.next();
					 login.setPassword(encPass);
					 session.update(login);
					 flag="success";
				}
				tx.commit();
				SessionHelper.closeHibernateSession(session);
				return flag;
	}
					 
	
	public String changePassword(Login log,String newpwd) {
		// TODO Auto-generated method stub
		String flag="failure";
		Session session = SessionHelper.getHibernateSession();
		Transaction tx=session.beginTransaction();
		String encPassnew = md5(newpwd);
		Query qry = session.createQuery("FROM Login L WHERE L.userID = ? and L.password=?");
		
		qry.setString(0,log.getUserID());
		String pass = log.getPassword();
		String encPass = md5(pass);
		
		
		qry.setString(1, encPass);
		
		List<Login> credentials=qry.list();	
		Iterator<Login> it=credentials.iterator();
		
		while(it.hasNext())
		{
		Login login=it.next();
		
			login.setPassword(encPassnew) ;
			
			
			
			session.update(login);
			
			/*Query qry1 = session.createQuery("UPDATE Login L  SET L.password=? WHERE L.userID = ? ");
			qry1.setString(0,login.getPassword());
			qry1.setString(1,login.getUserID());
			int i=qry1.executeUpdate();
			if(i>0){
			flag="success";}*/
			
			flag="success";
		}
		
		tx.commit();
		SessionHelper.closeHibernateSession(session);
		
		return flag;
	}
	
	public String setQuestion(String id,String ques,String ans)
	{
Session session = SessionHelper.getHibernateSession();
String flag="failure";
		
		Transaction tx=session.beginTransaction();
Query qry = session.createQuery("FROM Login L WHERE L.userID = ?");
		
		qry.setString(0,id);
		List<Login> credentials=qry.list();	
		Iterator<Login> it=credentials.iterator();
		
		while(it.hasNext())
		{
		Login login=it.next();
		
			login.setQuestion(ques);
			login.setAnswer(ans);
			session.update(login);
			flag="success";
		}
		
		tx.commit();
		SessionHelper.closeHibernateSession(session);
		
		return flag;
	}
	
	
	public ArrayList<Login> fetchQuestion(String id)
	{
Session session = SessionHelper.getHibernateSession();
String question=null;
String flag="failure";
		Transaction tx=session.beginTransaction();
Query qry = session.createQuery("FROM Login L WHERE L.userID = ?");
		
		qry.setString(0,id);
		ArrayList<Login> credentials=(ArrayList<Login>) qry.list();	


		
		tx.commit();
		
		if(credentials.size()>0){
			flag="success";
		}
		SessionHelper.closeHibernateSession(session);
		
		return credentials;
	}
	
	public String fetchAns(String id,String ques,String ans)
	{
Session session = SessionHelper.getHibernateSession();
String answer=null;
String flag="failure";
		Transaction tx=session.beginTransaction();
Query qry = session.createQuery("FROM Login L WHERE L.userID = ? and L.question=?");
		
		qry.setString(0,id);
		qry.setString(1,ques);
		List<Login> credentials=qry.list();	
		Iterator<Login> it=credentials.iterator();
		
		while(it.hasNext())
		{
		Login login=it.next();
answer=login.getAnswer();


		}
		
		if(answer.equals(ans));
		{
			flag="success";
		}
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
