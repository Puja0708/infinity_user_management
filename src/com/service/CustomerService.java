package com.service;






import java.util.ArrayList;
import java.util.List;

import com.bean.Customer;
import com.bean.Retailer;



import com.dao.CustomerDAO;
import com.dao.RetailerDAO;

public class CustomerService {
	CustomerDAO dao=new CustomerDAO();
	
	public int addCustomer(Customer app)
	{
		
		return dao.addCustomer(app);
	}
	
	public ArrayList<Customer>  retrieveCustomers()
	{
		CustomerDAO dao=new CustomerDAO();
		return dao.retrieveCustomers();
	}
	
	public ArrayList<Customer>  deleterequestlist()
	{
		CustomerDAO dao=new CustomerDAO();
		return dao.deleterequestlist();
	}
	public ArrayList<Customer>  activationlist()
	{
		CustomerDAO dao=new CustomerDAO();
		return dao.activationlist();
	}
	public ArrayList<Customer> search(int customerId)
	{
		CustomerDAO dao=new CustomerDAO();
		 ArrayList<Customer> customerList=dao.search(customerId);
		 return customerList;
	}
	
	public String updateCustomer(Customer c)
	{
		CustomerDAO dao = new CustomerDAO();
		return dao.updateCustomer(c);
	}
	
	public String deleterequest(int id)
	{
		CustomerDAO dao = new CustomerDAO();
		return dao.deleterequest(id);
	}
	public String Activation(Customer c)
	{
		CustomerDAO dao = new CustomerDAO();
		return dao.Activation(c);
	}
	public List<Customer>  retrieveCustomerDetail(int customerId)
	{
		
		return dao.retrieveCustomerDetail(customerId);
	}
	
	public String deleteCustomerDetail(Customer cObj)
	{
		
		return dao.deleteCustomerDetail(cObj);
	}
	
	
	public String deleteCustomerDetail1(int id)
	{
		
		return dao.deleteCustomerDetail1(id);
	}
	
	
	
	public ArrayList<String> fetchOperator()
	{
		
		CustomerDAO dao=new CustomerDAO();
		
		return dao.fetchOperator();
	}
	public ArrayList<String> fetchRetailer()
	{
		
		CustomerDAO dao=new CustomerDAO();
		
		return dao.fetchRetailer();
	}
}

