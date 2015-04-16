package com.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.interceptor.validation.SkipValidation;

import com.bean.Operator;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.service.OperatorService;

public class OperatorAction extends ActionSupport implements  ModelDriven<Operator>, SessionAware {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Operator operator=new Operator();
	
	
	 private Map<String, Object> session;
		
		@Override
		public void setSession(Map<String, Object> session) {
			// TODO Auto-generated method stub
			this.session = session;
		}
	
	
	
	public Operator getOperator() {
		return operator;
	}
	public void setOperator(Operator operator) {
		this.operator = operator;
	}
	
	private ArrayList<Operator> operatorList=new ArrayList<Operator>();
	@Override
	public Operator getModel() {
		// TODO Auto-generated method stub
		return operator;
	}
OperatorService service=new OperatorService();

@Validations
	public String register()throws Exception{
	
		String flag="failure";
		int id=service.addoperator(operator);
		operator.setOperatorId(id);
		if(id>0)
		{
			flag="success";
			
		}
		return flag;
		
	}
	
	@SkipValidation
	public String viewall() throws Exception{
		operatorList=service.viewall();
		if(operatorList!=null)
		return "success";
		else 
			return "failure";
	}
	
	@SkipValidation
	public String deleterequestlist() throws Exception{
		operatorList=service.deleterequestlist();
		if(operatorList.size()>0)
		return "success";
		else 
			return "failure";
	}
	
	@SkipValidation
	public String search() throws Exception{
		
		operatorList=service.search(operator.getOperatorId());
		
		if(operatorList!=null)
			return "success";
		else 
			return "failure";
	}
	
	@SkipValidation
	public String search1() throws Exception{
		
		operatorList=service.search1(operator.getOperatorId());
		
		if(operatorList.size()>0)
			return "success";
		else 
			return "failure";
	}
	
	@SkipValidation
	public String search11() throws Exception{
		
		operatorList=service.search1(Integer.parseInt((String)session.get("uid")));
		
		if(operatorList.size()>0)
			return "success";
		else 
			return "failure";
	}
	
	public ArrayList<Operator> getOperatorList() {
		return operatorList;
	}

	public void setOperatorList(ArrayList<Operator> operatorList) {
		this.operatorList = operatorList;
	}
	
	@SkipValidation
	public String deleterequest1() throws Exception{
		
		String flag=service.deleterequest(Integer.parseInt((String)session.get("uid")));
		
		return flag;
	}
	
	//@SkipValidation
	
	@SkipValidation
	public String updateOperator() throws Exception{
		
		String flag=service.updateOperator(operator);
		
		return flag;
	}
	
	@SkipValidation
public String deleteOperator() throws Exception{
		
		String flag=service.deleteOperator(operator);
		
		return flag;
	}
	
	
	@SkipValidation
	public String deleteOperator1() throws Exception{
			
			String flag=service.deleteOperator1(operator.getOperatorId());
			
			return flag;
		}
	

public void validate(){
	
	
	String fname="^[a-zA-Z]+$";
	 Pattern patternname = Pattern.compile(fname);  
	  Matcher matchername = patternname.matcher(operator.getOpeartorFirstname());  
	   
	 if(operator.getOpeartorFirstname().equals("") )
	{
		addFieldError("opeartorFirstname","First name is required ");
	}
	if ((!(matchername.matches())) && (!(operator.getOpeartorFirstname().equals(""))))
	 {
		
		  
			   addFieldError("opeartorFirstname","Enter valid First Name ");
		   
	 }
	
	 String lname="^[a-zA-Z]+$";
	 Pattern patternlname = Pattern.compile(lname);  
	  Matcher matcherlname = patternlname.matcher(operator.getOperatorLastname());  
	  
	  if(operator.getOperatorLastname().equals(""))
		{
			addFieldError("operatorLastname","The lastname is required");
		}

	   if ((!(matcherlname.matches())) && (!(operator.getOperatorLastname().equals(""))))
		 {
			
				   addFieldError("operatorLastname","Enter valid Last Name ");
			   
		 }
	
	
	   
	   String email1 = "^([0-9a-zA-Z]+[-._+&amp;])*[0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$";
		Pattern patternmail = Pattern.compile(email1);
		Matcher matcher = patternmail.matcher(operator.getOperatorEmail());
		if (operator.getOperatorEmail().equals("")) {
			addFieldError("operatorEmail", "The Email can't be empty");
		}
	
		 if ((!(matcher.matches())) && (!(operator.getOperatorEmail().equals(""))))
		 {
			
				   addFieldError("operatorEmail","Enter valid email ID ");
			   
		 }
	
	
		 
		 String phoneno = "^[7|8|9]{1}[0-9]{9}$";
			Pattern patternphno = Pattern.compile(phoneno);
		
			
			String phone=operator.getOperatorPhone();
			Matcher matcherph = patternphno.matcher(phone);
			if (phone.equals(""))
			{
				addFieldError("operatorPhone", "The phoneNumber can't be empty");
			}
			if ((!(matcherph.matches())) && (!(phone.equals(""))))
			 {
				
					   addFieldError("operatorPhone","Enter 10 digits and should start with 7|8|9 ");
				   
			 }
			
			
			
	if("Select".equals(operator.getOperatorShiftstart())){
		addFieldError("operatorShiftstart", "Select Shift start time ");
	}
	
	
	 String maxCustNoReg="^[0-9]+$";
	 Pattern patternmaxCustNo = Pattern.compile(maxCustNoReg);
	 String maxCustNo=operator.getOperatorMaxcustomer();
	
	  Matcher matchermaxCustNo = patternmaxCustNo.matcher(maxCustNo);  
	  
	  if(maxCustNo.equals("") || (operator.getOperatorMaxcustomer()==""))
		{
			addFieldError("operatorMaxcustomer","Enter maximum no of customer");
		}

	   if ((!(matchermaxCustNo.matches())) && (!(maxCustNo.equals(""))))
		 {
			
				   addFieldError("operatorMaxcustomer","Enter valid Number");
			   
		 }
	
	
	
	if("".equals(operator.getOpeartorCreation())){
		addFieldError("opeartorCreation","please click ");
	}
	
	
	
	
	 String maxCustNoReg1="^[0-9]+$";
	 Pattern patternmaxCustNo1 = Pattern.compile(maxCustNoReg1);
	 String maxCustNo1=operator.getOperatorActivecustomer();
	
	  Matcher matchermaxCustNo1 = patternmaxCustNo1.matcher(maxCustNo1);  
	  
	 if(maxCustNo1.equals("") || (operator.getOperatorActivecustomer()==""))
		{
			addFieldError("operatorActivecustomer","Enter Active customers Initially as 0 ");
		}

	   if ((!(matchermaxCustNo1.matches())) && (!(maxCustNo1.equals(""))))
		 {
			
				   addFieldError("operatorActivecustomer","Enter valid Number ,0 Initially");
			   
		 }
	
	
	
	
}

}
