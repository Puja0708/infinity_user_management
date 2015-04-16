package com.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.interceptor.validation.SkipValidation;

import com.bean.Login;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.LoginService;

public class LoginAction extends ActionSupport implements ModelDriven<Login>, SessionAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	Login log = new Login();

private Map<String, Object> session;
	
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
		
	}
	LoginService service = new LoginService();
	public String execute() throws Exception 
	{
			
		
		
		String flag  = "failure";
		
		
		Login credentials = service.adminCredentials( log);
		
		
		if(credentials!=null)
		{
			/*if(credentials.getUserID().equalsIgnoreCase(log.getUserID()) && credentials.getPassword().equalsIgnoreCase(log.getPassword())) */
		
				if(credentials.getRole().equals("ADMIN"))
				{
					session.put("role","ADMIN");
					session.put("uid",credentials.getUserID());
					
					session.put("uname",credentials.getUserName());
					flag="admin";
				}
				else if(credentials.getRole().equals("OPERATOR"))
				{
					session.put("role","OPERATOR");
					session.put("uid",credentials.getUserID());
					session.put("uname",credentials.getUserName());
					flag= "operator";
				}
				else if(credentials.getRole().equals("CUSTOMER"))
				{
					session.put("role","CUSTOMER");
					session.put("uid",credentials.getUserID());
					session.put("uname",credentials.getUserName());
					flag= "customer";
				}
				else if(credentials.getRole().equals("RETAILER"))
				{
					session.put("role","RETAILER");
					session.put("uid",credentials.getUserID());
					session.put("uname",credentials.getUserName());
					flag= "retailer";
				}
		}
		else if(credentials==null){
			//addActionError("Invalid Credentials..!!");
			return "failure";
		}
			return flag;
	}

		

		public Login getLog() {
		return log;
	}



	public void setLog(Login log) {
		this.log = log;
	}



	@Override
	public Login getModel() {
		// TODO Auto-generated method stub
		return log;
	}

	@SkipValidation
	public String getrole()
	{
		String flag="none";
		String userRole=(String) session.get("role");
		if(userRole.equals("ADMIN"))
		{
			flag="admin";
		}
		if(userRole.equals("CUSTOMER"))
		{
			flag="customer";
		}
		if(userRole.equals("RETAILER"))
		{
			flag="retailer";
		}
		if(userRole.equals("OPERATOR"))
		{
			flag="operator";
		}
		return flag;
	}
	
	
	String newpassword;
	
	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	@SkipValidation
	public String changePassword()
	{
		String flag="failure";
        flag=service.changePassword(log,newpassword);

		return flag;
	}
	@SkipValidation
	public String setQuestion()
	{
		log.setUserID(session.get("uid").toString());

		String flag="failure";
        flag=service.setQuestion(log.getUserID(),log.getQuestion(),log.getAnswer());

		return flag;
	}
	
	ArrayList<Login> questionList=new ArrayList<Login>();
	
	
	public ArrayList<Login> getQuestionList() {
		return questionList;
	}



	public void setQuestionList(ArrayList<Login> questionList) {
		this.questionList = questionList;
	}



	@SkipValidation
	public String fetchques()
	{
		String flag="failure";
		 questionList=service.fetchQuestion(log.getUserID());
if(questionList.size()>0){flag="success";}
		return flag;
	}
	
	@SkipValidation
	public String fetchans()
	{
		String flag="failure";
        flag=service.fetchAns(log.getUserID(),log.getQuestion(),log.getAnswer());

		return flag;
	}
	
	
	@SkipValidation
	public String newpassword()
	{
		String flag="failure";
        flag=service.newpassword(log);

		return flag;
	}
	
	
	
	
	public void validate() {
		
		
		if(log.getUserID()==null ||log.getUserID().trim().equals(""))
		{
			addFieldError("userID","Enter user Id");
			
		}
		if(log.getPassword()==null ||log.getPassword().trim().equals(""))
		{
			addFieldError("password","Enter password");
		}
		else if(log.getUserID().equals(log.getPassword()))
		{
			addFieldError("password"," password and username cant be same");
		}
		
	  }

		

}
