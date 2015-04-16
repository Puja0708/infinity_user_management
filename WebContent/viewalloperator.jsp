<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.* "%>
    <%@ page import="java.io.*"%>
   <%@ page import="java.text.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Operator</title>

<style>
h1,a {
	font-family: andalus;
	font-weight: bold;
	text-decoration: underline;
}
body{
background-image:url("download11.jpg");

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
		<h3 id="head">View Operators</h3>
		
		<div id="border">
 	 <s:form name = "myForm" >
 	 
        
  <table border="1">
<tr>
<td colspan="11"> 
<s:url var="home" action="Home" ></s:url>
       <s:a href="%{#home}" align="center"><font style="color:white"> Back</font> </s:a>
       </td>
       </tr>
          <tr>
          <th>Operator Id</th>
          <th>Operator Firstname</th>
          <th>Operator Lastname</th>
          <th>Email Id</th>
         
          <th>Phone no</th>
          <th>Shift Start Time</th>
          <th>Shift Start Time</th>
          <th>Max Customers</th>
          
          <th>Creation Date</th>
          <th>Active Customer</th>
          <th>Status</th>
         
          
          </tr>
          
          
          
          <s:iterator value="operatorList">
          <tr>
           <td><s:property value="operatorId"/></td>
          <td><s:property value="opeartorFirstname"/></td>
          <td><s:property value="operatorLastname"/></td>
          <td><s:property value="operatorEmail"/></td>
          <td><s:property value="operatorPhone"/></td>
          <td><s:property value="operatorShiftstart"/></td>
          <td><s:property value="operatorShiftend"/></td>
          <td><s:property value="operatorMaxcustomer"/></td>
          <td><s:property value="opeartorCreation"/></td>
          <td><s:property value="operatorActivecustomer"/></td>
          <td><s:property value="operatorStatus"/></td>
           </s:iterator>

</table>
    
  
  
 </s:form>
 </div>
			
		</div>
				</div>
			</div>
		</div>
	
	<%@include file="Footer.jsp"%>


</body>
</html>
