package com.bean;



import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;



public class Customer {
	
	 @Id
	 @GeneratedValue(strategy=GenerationType.AUTO, generator="my_seq_gen")
	 @SequenceGenerator(name="my_seq_gen", sequenceName="customer_sequence_p1")
	 
	 
	private int customerId;
	private String firstName;
	private String lastName;
	private String emaiId;
	private String phoneNumber;
	private String address1;
	private String address2;
	private String landMark;
	private int pinCode;
	private String city;
	private String state;
	private String creationDate;
	private String operatorName;
	private String retailerName;
	private String customerStatus="ACTIVE";
	private String requestedForActivation = "None";
	private String requestedForDeactivation = "None";
	
	
	
	
	
	
	
	public String getRequestedForActivation() {
		return requestedForActivation;
	}

	public void setRequestedForActivation(String requestedForActivation) {
		this.requestedForActivation = requestedForActivation;
	}

	public String getRequestedForDeactivation() {
		return requestedForDeactivation;
	}

	public void setRequestedForDeactivation(String requestedForDeactivation) {
		this.requestedForDeactivation = requestedForDeactivation;
	}

	public String getCustomerStatus() {
		return customerStatus;
	}

	public void setCustomerStatus(String customerStatus) {
		this.customerStatus = customerStatus;
	}

	
	public String getFirstName() {
		return firstName;
	}
	
	
	public String getLastName() {
		return lastName;
	}
	public String getEmaiId() {
		return emaiId;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public String getAddress1() {
		return address1;
	}
	public String getAddress2() {
		return address2;
	}
	public String getLandMark() {
		return landMark;
	}
	public int getPinCode() {
		return pinCode;
	}
	public String getCity() {
		return city;
	}
	public String getState() {
		return state;
	}
	public String getCreationDate() {
		return creationDate;
	}
	public String getOperatorName() {
		return operatorName;
	}
	public String getRetailerName() {
		return retailerName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void setEmaiId(String emaiId) {
		this.emaiId = emaiId;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public void setLandMark(String landMark) {
		this.landMark = landMark;
	}
	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}
	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}
	public void setRetailerName(String retailerName) {
		this.retailerName = retailerName;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	
	
	

}

