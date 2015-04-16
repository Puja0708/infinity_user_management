<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.* "%>
    <%@ page import="java.io.*"%>
   <%@ page import="java.text.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>deleting</title>

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
		<h3 id="head"> Operator Details</h3>
		
		<div id="border">
 	 <s:form name = "myForm" action="deleteoperator1" prefix="a" theme="simple" method="post">
 	 <s:iterator value="operatorList">
  	<table  border="1">
  		<tr>
<td>
<s:label>Operator ID:</s:label> </td>
<td><s:property value="operatorId"/><s:hidden name="operatorId" value="%{operatorId}"></s:hidden>
</td>
</tr>
  		<tr>
		<td>
			<s:label>First Name:</s:label> </td>
		<td>
		<s:property value="opeartorFirstname"/>
</td>
		</tr>
	
		<tr>
<td>
<s:label>Last Name:</s:label> </td>
<td><s:property value="operatorLastname"/>
</td>
</tr>
<tr>
<td>
<s:label>Email ID:</s:label> </td>
<td><s:property value="operatorEmail"/>
</td>
</tr>
<tr>
<td>
<s:label>Phone Number:</s:label> </td>
<td><s:property value="operatorPhone"/>
</td>
</tr>
<tr>
<td>
<s:label>Shift Time Start:</s:label> </td>
<td><s:property value="operatorShiftstart"/>
</td>
</tr>
<tr>
<td>
<s:label>Shift Time End:</s:label> </td>
<td><s:property value="operatorShiftend"/>
</td>
</tr>
<tr>
<td>
<s:label>Max No of Customers:</s:label> </td>
<td><s:property value="operatorMaxcustomer"/>
</td>
</tr>

<tr>
<td>
<s:label>Creation Date:</s:label> </td>
<td><s:property value="opeartorCreation"/>

<%-- <s:textfield  name="opeartorCreation" id="date1" value="<%=ft.format(dnow) %>" ></s:textfield> --%>

</td>

</tr>
<tr>
<td>
<s:label>Total Active Customers:</s:label> </td>
<td><s:property value="operatorActivecustomer"/>
</td>
</tr>


<tr> 
		<td>	
     
   &nbsp;
      </td>
	  <td>	
	 <s:submit value="DELETE" cssClass="btn btn-primary" onclick="return confirm('Are you sure you want to continue delete')"></s:submit>
     </td>
</tr>

    
  
     </table>
     </s:iterator>
        </s:form>
 </div>
			
		</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="Footer.jsp"%>


</body>
</html>