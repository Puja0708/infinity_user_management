package com.action;


import com.bean.Customer;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.interceptor.validation.SkipValidation;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.validator.annotations.Validations;

import com.service.CustomerService;



public class CustomerAction extends ActionSupport implements ModelDriven<Customer>, SessionAware  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	Customer customer = new Customer();
	
	
	
	List<Customer> customerList = new ArrayList<Customer>();

	
	 private Map<String, Object> session;
		
		@Override
		public void setSession(Map<String, Object> session) {
			// TODO Auto-generated method stub
			this.session = session;
		}
	

	CustomerService service = new CustomerService();

	@Validations	
	public String execute() {
		String flag = "failure";
		
		int id = service.addCustomer(customer);
	
		customer.setCustomerId(id);
		if (id > 0) {
			flag = "success";
		}
		return flag;
	}

	@Validations
	public String register() {
		String flag = "failure";
		
		int id = service.addCustomer(customer);
	
		customer.setCustomerId(id);
		if (id > 0) {
			flag = "success";
		}
		return flag;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<Customer> getCustomerList() {
		return customerList;
	}

	public void setCustomerList(List<Customer> customerList) {
		this.customerList = customerList;
	}

	

	
	

	@SkipValidation
	public String listCustomer() {
		customerList = service.retrieveCustomers();
		
		if(customerList.size()>0)
		return "success";
		else
			return "failure";
	}


	@SkipValidation
	public String deleterequestlist() {
		customerList = service.deleterequestlist();
		
		if(customerList.size()>0)
		return "success";
		else
			return "failure";
	}

	@SkipValidation
	public String activationlist() {
		
this.operatorList=service.fetchOperator();
		
		this.retailerList=service.fetchRetailer();
		customerList = service.activationlist();
		
		if(customerList.size()>0)
		return "success";
		else
			return "failure";
	}
	
	@SkipValidation
	public String updateCustomer() {
		
		
		String flag = service.updateCustomer(customer);
		
		return flag;
	}

	@SkipValidation
	public String search() throws Exception{
		
		customerList=service.search(Integer.parseInt((String)session.get("uid")));
		
		if(customerList.size()>0)
			return "success";
		else 
			return "failure";
	}
	
	@SkipValidation
	public String deleterequest() throws Exception{
		
		String flag=service.deleterequest(Integer.parseInt((String)session.get("uid")));
		
		return flag;
	}
	
	@SkipValidation
	public String Activation() throws Exception{
		
		System.out.println("name:"+customer.getOperatorName());
		
		String flag=service.Activation(customer);
		
		return flag;
	}
	
	@SkipValidation
	public String retrieveCustomer() {

		customerList = service.retrieveCustomerDetail(customer.getCustomerId());
		if(customerList.size()>0)
			return "success";
		else
			return "failure";
	}

	@SkipValidation
	public String deleteCustomer()
	{
		String flag = service.deleteCustomerDetail(customer);
		
		return flag;
	}
	
	@SkipValidation
	public String deleteCustomer1()
	{
		
		String flag = service.deleteCustomerDetail1(customer.getCustomerId());
		
		return flag;
	}
	@Override
	public Customer getModel() {
		// TODO Auto-generated method stub
		return customer;
	}
	
	public void validate(){
	
this.operatorList=service.fetchOperator();
		
		this.retailerList=service.fetchRetailer();
		
		String fname="^[a-zA-Z]+$";
		 Pattern patternname = Pattern.compile(fname);  
		  Matcher matchername = patternname.matcher(customer.getFirstName());  
		   
		 if(customer.getFirstName().equals("") )
		{
			addFieldError("firstName","Enter First Name ");
			
			
		}
		if ((!(matchername.matches())) && (!(customer.getFirstName().equals(""))))
		 {
			
			  
				   addFieldError("firstName","Enter valid First Name ");
				  
			   
		 }
	
		
		String lname="^[a-zA-Z]+$";
		 Pattern patternlname = Pattern.compile(lname);  
		  Matcher matcherlname = patternlname.matcher(customer.getLastName());  
		  
		  if(customer.getLastName().equals(""))
			{
				addFieldError("lastName","Enter Last Name");
				
			}

		   if ((!(matcherlname.matches())) && (!(customer.getLastName().equals(""))))
			 {
				
					   addFieldError("lastName","Enter valid Last Name ");
					  
				   
			 }
		
		
		   String email1 = "^([0-9a-zA-Z]+[-._+&amp;])*[0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$";
			Pattern patternmail = Pattern.compile(email1);
			Matcher matcher = patternmail.matcher(customer.getEmaiId());
			if (customer.getEmaiId().equals("")) {
				addFieldError("emaiId", "The Email can't be empty");
			}
		
			 if ((!(matcher.matches())) && (!(customer.getEmaiId().equals(""))))
			 {
				
					   addFieldError("emaiId","Enter valid email ID ");
					   
			 }
		
		
		
		String phoneno = "^[7|8|9]{1}[0-9]{9}$";
		Pattern patternphno = Pattern.compile(phoneno);

		String phone = customer.getPhoneNumber();
		Matcher matcherph = patternphno.matcher(phone);
		if (phone.equals("")) {
			addFieldError("phoneNumber", "The phoneNumber can't be empty");
		}
		if ((!(matcherph.matches())) && (!(phone.equals("")))) {

			addFieldError("phoneNumber",
					"Enter 10 digits and should start with 7|8|9 ");
			

		}
		
		
		if("".equals(customer.getAddress1())){
			addFieldError("address1", "please enter address ");
			
		}
		
		if("".equals(customer.getAddress2())){
			addFieldError("address2", "please enter address");
			
		}
		
		if("".equals(customer.getLandMark())){
			addFieldError("landMark","please enter landmark ");
			
		}
		
		
		
	if(customer.getPinCode()==0 ){
			addFieldError("pinCode"," Enter pin code value ");
			
		}
	
		if("".equals(customer.getCity())){
			addFieldError("city"," Enter city name ");
			
		}
		if("".equals(customer.getState())){
			addFieldError("state"," Enter state name ");
			
		}
		if("".equals(customer.getCreationDate())){
			addFieldError("creationDate"," please click on creation date tab  ");
			
		}
		
		
	}
	
	
 ArrayList<String> operatorList=new ArrayList<String>();
	ArrayList<String> retailerList=new ArrayList<String>();
	
	ArrayList<String> operatorList1=new ArrayList<String>();
	ArrayList<String> retailerList1=new ArrayList<String>();
	
	@SkipValidation
	public String fetchoperator()
	{
		
		this.operatorList=service.fetchOperator();
		
	this.retailerList=service.fetchRetailer();
	
		session.put("operatorList", this.operatorList);
		
		session.put("retailerList", this.retailerList);
	
		if(operatorList.size()>0)
			return "success";
		else
			return "failure";
	}

	public ArrayList<String> getOperatorList1() {
		return operatorList1;
	}

	public void setOperatorList1(ArrayList<String> operatorList1) {
		this.operatorList1 = operatorList1;
	}

	public ArrayList<String> getRetailerList1() {
		return retailerList1;
	}

	public void setRetailerList1(ArrayList<String> retailerList1) {
		this.retailerList1 = retailerList1;
	}

	public ArrayList<String> getRetailerList() {
		return retailerList;
	}

	public void setRetailerList(ArrayList<String> retailerList) {
		this.retailerList = retailerList;
	}

	public ArrayList<String> getOperatorList() {
		return operatorList;
	}

	public void setOperatorList(ArrayList<String> operatorList) {
		this.operatorList = operatorList;
	}
}
