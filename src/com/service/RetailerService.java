package com.service;

import java.util.ArrayList;

import com.bean.Retailer;

import com.dao.RetailerDAO;



public class RetailerService {
	public int addRetailer(Retailer ret)
	{
		RetailerDAO dao=new RetailerDAO();
		int cust=dao.addRetailer(ret);
		return cust;
		
		
	}
	public ArrayList<Retailer> viewall()
	{
		RetailerDAO dao=new RetailerDAO();
		 ArrayList<Retailer> retailerList=dao.viewall();
		 return retailerList;
	}
	
	public ArrayList<Retailer> search(int retailerId)
	{
		RetailerDAO dao=new RetailerDAO();
		 ArrayList<Retailer> retailerList=dao.search(retailerId);
		 return retailerList;
	}
	
	public ArrayList<Retailer> search1(int retailerId)
	{
		RetailerDAO dao=new RetailerDAO();
		 ArrayList<Retailer> retailerList=dao.search1(retailerId);
		
		 return retailerList;
	}
	
	public String updateRetailer(Retailer r) {
		RetailerDAO dao=new RetailerDAO();
		String flag=dao.updateRetailer(r);
		return flag;
	}
	public String deleteRetailer(Retailer r) {
		RetailerDAO dao=new RetailerDAO();
		String flag=dao.deleteRetailer(r);
		return flag;
	}
}
