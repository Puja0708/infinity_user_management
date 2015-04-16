package com.bean;



import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;



public class Operator {
	
	 
	 
	 
	 @Id
	 @GeneratedValue(strategy=GenerationType.AUTO, generator="my_seq_gen")
	 @SequenceGenerator(name="my_seq_gen", sequenceName="operator_sequence_p1")
	 
	 
 private int operatorId;
 private String opeartorFirstname;
 private String operatorLastname;
 private String operatorEmail;
 private String operatorPhone;
 private String operatorShiftstart;
 private String operatorShiftend;
 private String operatorMaxcustomer;
 private String opeartorCreation;
 private String operatorActivecustomer;
 private String operatorStatus="ACTIVE";


public String getOpeartorFirstname() {
	return opeartorFirstname;
}
public void setOpeartorFirstname(String opeartorFirstname) {
	this.opeartorFirstname = opeartorFirstname;
}
public String getOperatorLastname() {
	return operatorLastname;
}
public void setOperatorLastname(String operatorLastname) {
	this.operatorLastname = operatorLastname;
}
public String getOperatorEmail() {
	return operatorEmail;
}
public void setOperatorEmail(String operatorEmail) {
	this.operatorEmail = operatorEmail;
}
public String getOperatorPhone() {
	return operatorPhone;
}
public void setOperatorPhone(String operatorPhone) {
	this.operatorPhone = operatorPhone;
}
public String getOperatorShiftstart() {
	return operatorShiftstart;
}
public void setOperatorShiftstart(String operatorShiftstart) {
	this.operatorShiftstart = operatorShiftstart;
}
public String getOperatorShiftend() {
	return operatorShiftend;
}
public void setOperatorShiftend(String operatorShiftend) {
	this.operatorShiftend = operatorShiftend;
}
public String getOperatorMaxcustomer() {
	return operatorMaxcustomer;
}
public void setOperatorMaxcustomer(String operatorMaxcustomer) {
	this.operatorMaxcustomer = operatorMaxcustomer;
}
public String getOpeartorCreation() {
	return opeartorCreation;
}
public void setOpeartorCreation(String opeartorCreation) {
	this.opeartorCreation = opeartorCreation;
}
public String getOperatorActivecustomer() {
	return operatorActivecustomer;
}
public void setOperatorActivecustomer(String operatorActivecustomer) {
	this.operatorActivecustomer = operatorActivecustomer;
}
public String getOperatorStatus() {
	return operatorStatus;
}
public void setOperatorStatus(String operatorStatus) {
	this.operatorStatus = operatorStatus;
}
public int getOperatorId() {
	return operatorId;
}
public void setOperatorId(int operatorId) {
	this.operatorId = operatorId;
}




}
