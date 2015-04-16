<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="icon" type="image/jpeg" href="favicon_final.jpg">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

<style>
h1,a {
	font-family: andalus;
	font-weight: bold;
	text-decoration: underline;
	
}
body{
background-image:url("download11.jpg");
background-repeat: no-repeat;
}
</style>

</head>
<body>

<%@include file="Header.jsp"%>
	<div class="container">
		<div class="row">

			<div class="col-sm-9 col-md-9">
				
					
		<h2 align = "center">Manage Customers</h2>
		<!-- Content --> 
		
		<div id="display" align= "center">
		<h6 id="head"></h6>
		
		<s:url var="addCustomer" action="addCustomer" namespace="/">
		</s:url>

		<s:a href="%{#addCustomer}" > <font style="color:white">Add Customer</font> </s:a>
		<br/>
		
<%-- 		<s:url var="viewById" action="viewById" namespace="/"> --%>
<%-- 		</s:url> --%>
		
<%-- 		<s:a href="%{#viewById}" > View a Customer by Id </s:a> --%>
<!-- 		<br/> -->

		
		<s:url var="viewAllCustomers" action="viewAllCustomers" namespace="/">
		</s:url>
		
		<s:a href="%{#viewAllCustomers}" > <font style="color:white">View  Customers </font></s:a>
		<br/>
		
		<s:url var="updateCustomer" action="updateCustomer" namespace="/">
		</s:url>
		
		<s:a href="%{#updateCustomer}" > <font style="color:white">Update  Customer </font></s:a>
		<br/>
		<s:url var="deleteCustomer" action="deleteCustomer" namespace="/">
		</s:url>
		
		<s:a href="%{#deleteCustomer}" > <font style="color:white">Delete  Customer</font> </s:a>
		<br/>	
		</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="Footer.jsp"%>


</body>
</html>