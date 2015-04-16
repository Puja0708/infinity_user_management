package com.action;

import java.util.ArrayList;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.interceptor.validation.SkipValidation;

import com.bean.Retailer;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.RetailerService;

public class RetailerAction extends ActionSupport implements  ModelDriven<Retailer>, SessionAware {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	 Retailer retailer=new Retailer();
	
	 private Map<String, Object> session;
		
		@Override
		public void setSession(Map<String, Object> session) {
			// TODO Auto-generated method stub
			this.session = session;
		}
	 
	public Retailer getRetailer() {
		return retailer;
	}
	public void setRetailer(Retailer retailer) {
		this.retailer = retailer;
	}
	
	private ArrayList<Retailer> retailerList=new ArrayList<Retailer>();
	
	RetailerService service=new RetailerService();

	public String register()throws Exception{
		
		String flag="failure";
		int id=service.addRetailer(retailer);
		retailer.setRetailerId(id);
		if(id>0)
		{
			flag="success";
			
		}
		return flag;
		
	}
	
	@SkipValidation
	public String viewall() throws Exception{
		retailerList=service.viewall();
		if(retailerList!=null)
		return "success";
		else 
			return "failure";
	}
	
	@SkipValidation
	public String search() throws Exception{
		
		retailerList=service.search(Integer.parseInt((String)session.get("uid")));
		
		if(retailerList!=null)
			return "success";
		else 
			return "failure";
	}
	
	@SkipValidation
	public String search1() throws Exception{
		
		//System.out.println(retailer.getRetailerId());
		
		retailerList=service.search1(retailer.getRetailerId());
		
		if(retailerList.size()>0)
			return "success";
		else 
			return "failure";
	}
	
	
	public ArrayList<Retailer> getRetailerList() {
		return retailerList;
	}

	public void setRetailerList(ArrayList<Retailer> retailerList) {
		this.retailerList = retailerList;
	}
	
	@SkipValidation
	public String updateRetailer() throws Exception{
		
		String flag=service.updateRetailer(retailer);
		
		return flag;
	}
	
	@SkipValidation
public String deleteRetailer() throws Exception{
		
		String flag=service.deleteRetailer(retailer);
		
		return flag;
	}
	

public void validate(){
	
	String fname="^[a-zA-Z]+$";
	 Pattern patternname = Pattern.compile(fname);  
	  Matcher matchername = patternname.matcher(retailer.getRetailerName());  
	   
	 if(retailer.getRetailerName().equals("") )
	{
		addFieldError("retailerName","Enter First Name ");
	}
	if ((!(matchername.matches())) && (!(retailer.getRetailerName().equals(""))))
	 {
		
		  
			   addFieldError("retailerName","Enter valid First Name ");
		   
	 }
	
	String phoneno = "^[7|8|9]{1}[0-9]{9}$";
	Pattern patternphno = Pattern.compile(phoneno);

	String phone = retailer.getRetailerContact1();
	Matcher matcherph = patternphno.matcher(phone);
	if (phone.equals("")) {
		addFieldError("retailerContact1", "The phoneNumber can't be empty");
	}
	if ((!(matcherph.matches())) && (!(phone.equals("")))) {

		addFieldError("retailerContact1",
				"Enter 10 digits and should start with 7|8|9 ");

	}
	
	String phoneno1 = "^[7|8|9]{1}[0-9]{9}$";
	Pattern patternphno1 = Pattern.compile(phoneno1);

	String phone1 = retailer.getRetailerContact2();
	Matcher matcherph1 = patternphno1.matcher(phone1);
	if (phone1.equals("")) {
		addFieldError("retailerContact2", "The phoneNumber can't be empty");
	}
	if ((!(matcherph1.matches())) && (!(phone1.equals("")))) {

		addFieldError("retailerContact2",
				"Enter 10 digits and should start with 7|8|9 ");

	}
	
	
	
	
	
	if("".equals(retailer.getRetailerAddress1()))
			{
		addFieldError("retailerAddress1", "Enter address");
	}
	
	if("".equals(retailer.getRetailerAddress2())){
		addFieldError("retailerAddress2", "Enter Address");
	}
	if(retailer.getRetailerPinCode()==0 ){
		addFieldError("retailerPinCode"," Enter pin code value ");
		
	}
	if("".equals(retailer.getRetailerCity())){
		addFieldError("retailerCity"," Enter city name ");
		
	}
	if("".equals(retailer.getRetailerState())){
		addFieldError("retailerState"," Enter state name ");
		
	}
	if("".equals(retailer.getRetailerCreationdate())){
		addFieldError("retailerCreationdate"," please click on creation date tab  ");
		
	}
	if(retailer.getSeTopBoxLimit()==0){
		addFieldError("seTopBoxLimit"," enter value   ");
		
	}
	if(retailer.getCreditLimit()==0.0){
		addFieldError("creditLimit"," enter credit limit  ");
		
	}
	if(retailer.getCommissionPercentege()==0){
		addFieldError("commissionPercentege"," enter commission percentage  ");
		
	}
	if(retailer.getServiceCharges()==0.0){
		addFieldError("serviceCharges"," enter services charges  ");
		
	}
	if("Select".equals(retailer.getRetailerInventory())){
		addFieldError("retailerInventory"," Please select a file ");
	}
	
	
}
public Retailer getModel() {
	// TODO Auto-generated method stub
	return retailer;
}

}
