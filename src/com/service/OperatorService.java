package com.service;

import java.util.ArrayList;

import com.bean.Operator;

import com.dao.CustomerDAO;
import com.dao.OperatorDAO;



public class OperatorService {
	public int addoperator(Operator op)
	{
		OperatorDAO dao=new OperatorDAO();
		int cust=dao.addoperator(op);
		return cust;
		
		
	}
	public ArrayList<Operator> viewall()
	{
		OperatorDAO dao=new OperatorDAO();
		 ArrayList<Operator> operatorList=dao.viewall();
		 return operatorList;
	}
	public ArrayList<Operator> deleterequestlist()
	{
		OperatorDAO dao=new OperatorDAO();
		 ArrayList<Operator> operatorList=dao.deleterequestlist();
		 return operatorList;
	}
	public ArrayList<Operator> search(int operatorId)
	{
		OperatorDAO dao=new OperatorDAO();
		 ArrayList<Operator> operatorList=dao.search(operatorId);
		 return operatorList;
	}
	
	
	public String deleterequest(int id)
	{
		OperatorDAO dao = new OperatorDAO();
		return dao.deleterequest(id);
	}
	
	public ArrayList<Operator> search1(int operatorId)
	{
		OperatorDAO dao=new OperatorDAO();
		 ArrayList<Operator> operatorList=dao.search1(operatorId);
		 
		 return operatorList;
	}
	
	public String updateOperator(Operator op) {
		OperatorDAO dao=new OperatorDAO();
		String flag=dao.updateOperator(op);
		return flag;
	}
	public String deleteOperator(Operator op) {
		OperatorDAO dao=new OperatorDAO();
		String flag=dao.deleteOperator(op);
		return flag;
	}
	
	public String deleteOperator1(int op) {
		OperatorDAO dao=new OperatorDAO();
		String flag=dao.deleteOperator1(op);
		return flag;
	}
}
