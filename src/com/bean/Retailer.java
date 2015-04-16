package com.bean;





import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;



public class Retailer {
	 @Id
	 @GeneratedValue(strategy=GenerationType.AUTO, generator="my_seq_gen")
	 @SequenceGenerator(name="my_seq_gen", sequenceName="retailer_sequence_p1")
	 
	 
     private int retailerId;
	 private String retailerName;
	 private String retailerContact1;
	 private String retailerContact2;
	 private String retailerAddress1;
	 private String retailerAddress2;
	 private String retailerCity;
	 private String retailerState;
	 private int retailerPinCode;
	 private int seTopBoxLimit;
	 private double creditLimit;
	 private int commissionPercentege;
	 private double serviceCharges;
	 private String retailerInventory;
	 private String retailerCreationdate;
	 private double totalInventoryCost=0.0;
	 private String retailerStatus="ACTIVE";
    
	 public int getRetailerId() {
		return retailerId;
	}
	public void setRetailerId(int retailerId) {
		this.retailerId = retailerId;
	}
	public String getRetailerName() {
		return retailerName;
	}
	public void setRetailerName(String retailerName) {
		this.retailerName = retailerName;
	}
	public String getRetailerContact1() {
		return retailerContact1;
	}
	public void setRetailerContact1(String retailerContact1) {
		this.retailerContact1 = retailerContact1;
	}
	public String getRetailerContact2() {
		return retailerContact2;
	}
	public void setRetailerContact2(String retailerContact2) {
		this.retailerContact2 = retailerContact2;
	}
	public String getRetailerAddress1() {
		return retailerAddress1;
	}
	public void setRetailerAddress1(String retailerAddress1) {
		this.retailerAddress1 = retailerAddress1;
	}
	public String getRetailerAddress2() {
		return retailerAddress2;
	}
	public void setRetailerAddress2(String retailerAddress2) {
		this.retailerAddress2 = retailerAddress2;
	}
	public String getRetailerCity() {
		return retailerCity;
	}
	public void setRetailerCity(String retailerCity) {
		this.retailerCity = retailerCity;
	}
	public String getRetailerState() {
		return retailerState;
	}
	public void setRetailerState(String retailerState) {
		this.retailerState = retailerState;
	}
	public int getRetailerPinCode() {
		return retailerPinCode;
	}
	public void setRetailerPinCode(int retailerPinCode) {
		this.retailerPinCode = retailerPinCode;
	}
	public int getSeTopBoxLimit() {
		return seTopBoxLimit;
	}
	public void setSeTopBoxLimit(int seTopBoxLimit) {
		this.seTopBoxLimit = seTopBoxLimit;
	}
	public double getCreditLimit() {
		return creditLimit;
	}
	public void setCreditLimit(double creditLimit) {
		this.creditLimit = creditLimit;
	}
	public int getCommissionPercentege() {
		return commissionPercentege;
	}
	public void setCommissionPercentege(int commissionPercentege) {
		this.commissionPercentege = commissionPercentege;
	}
	public double getServiceCharges() {
		return serviceCharges;
	}
	public void setServiceCharges(double serviceCharges) {
		this.serviceCharges = serviceCharges;
	}
	
	public String getRetailerCreationdate() {
		return retailerCreationdate;
	}
	public void setRetailerCreationdate(String retailerCreationdate) {
		this.retailerCreationdate = retailerCreationdate;
	}
	public double getTotalInventoryCost() {
		return totalInventoryCost;
	}
	public void setTotalInventoryCost(double totalInventoryCost) {
		this.totalInventoryCost = totalInventoryCost;
	}
// private String opeartorFirstname;
	public String getRetailerStatus() {
		return retailerStatus;
	}
	public void setRetailerStatus(String retailerStatus) {
		this.retailerStatus = retailerStatus;
	}
	public String getRetailerInventory() {
		return retailerInventory;
	}
	public void setRetailerInventory(String retailerInventory) {
		this.retailerInventory = retailerInventory;
	}
 




}
