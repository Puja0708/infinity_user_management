package com.service;

import java.util.ArrayList;

import com.bean.Login;
import com.dao.LoginDAO;

public class LoginService {

LoginDAO dao = new LoginDAO();
	
	public Login adminCredentials(Login log)
	{
		return dao.adminCredentials(log);
	}
	
	
	public String changePassword(Login login,String pwd)
	{
		return dao.changePassword(login,pwd);
	}
	
	public String setQuestion(String id,String ques,String ans)
	{
		return dao.setQuestion(id,ques,ans);
	}
	
	public ArrayList<Login> fetchQuestion(String id)
	{
		return dao.fetchQuestion(id);
	}
	public String fetchAns(String id,String ques,String ans)
	{
		return dao.fetchAns(id,ques,ans);
	}
	
	public String newpassword(Login log)
	{
		return dao.newpassword(log);
	}
}
