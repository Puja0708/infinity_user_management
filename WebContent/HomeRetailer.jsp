<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Home</title>

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
				
					
		<h2 align = "center"> </h2>
		<!-- Content --> 
		
		<div id="display" align= "center">
		<h3 id="head">Manage Retailers</h3>
		
		<div id="border">
 	
<center>
 <s:url var="addRetailer" action="addRetailer" ></s:url>
       <s:a href="%{#addRetailer}"><font style="color:white">Add Retailer</font></s:a>
       <br>
       <s:url var="viewRetailer" action="viewAllRetailer" ></s:url>
       <s:a href="%{#viewRetailer}"><font style="color:white">View Retailers</font></s:a>
       <br>
       <s:url var="updateRetailer" action="updateRetailer" ></s:url>
       <s:a href="%{#updateRetailer}"><font style="color:white">Update Retailer</font></s:a>
       <br>
       <s:url var="deleteRetailer" action="deleteRetailer" ></s:url>
       <s:a href="%{#deleteRetailer}"><font style="color:white">Delete Retailer</font></s:a>
</center>


 </div>
			
		</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="Footer.jsp"%>


</body>
</html>