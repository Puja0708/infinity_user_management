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
		<h3 id="head">Manage Operators</h3>
		
		<div id="border">
 	
<center>
 <s:url var="addOperator" action="addOperator" ></s:url>
       <s:a href="%{#addOperator}"><font style="color:white">Add Operator</font></s:a>
       <br>
       <s:url var="viewOperator" action="viewAllOperator" ></s:url>
       <s:a href="%{#viewOperator}"><font style="color:white">View Operators</font></s:a>
       <br>
       <s:url var="updateOperator" action="updateOperator" ></s:url>
       <s:a href="%{#updateOperator}"><font style="color:white">Update Operator</font></s:a>
       <br>
       <s:url var="deleteOperator" action="deleteOperator" ></s:url>
       <s:a href="%{#deleteOperator}"><font style="color:white">Delete Operator</font></s:a>
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