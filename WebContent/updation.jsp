<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.* "%>
    <%@ page import="java.io.*"%>
   <%@ page import="java.text.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>


function endTime()
{
	
	var a=document.getElementById('starttime').value;
	
	if(a=="8am")
		{
		document.getElementById('endtime').value="4pm";
	}
	else if(a=="2pm")
		{
		document.getElementById('endtime').value="10pm";
		}
	
	else if(a=="8pm")
	{
	document.getElementById('endtime').value="4am";
	}
	else if(a=="11pm")
		{
		document.getElementById('endtime').value="7am";
		}
	else if(a=="Select")
	{
	document.getElementById('endtime').value="";
	}
	
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updation</title>

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
<body >

<%@include file="Header.jsp"%>
	<div class="container" >
		<div class="row" >

			<div class="col-sm-9 col-md-9">
				
					
		<h2 align = "center"> </h2>
		<!-- Content --> 
		
		<div id="display" align= "center" >
		<h3 id="head">Register Operator</h3>
		
		<div id="border">
		
		<%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
		<h6>Date: <%= df.format(new java.util.Date()) %></h6>
		<%String dp=df.format(new java.util.Date());%>
		<s:set var="date1">${dp}</s:set>
		
 	 <s:form name = "myForm" action="addingoperator" prefix="a" theme="simple"   method="post">
 	



  	<table cellpadding="10">
  		<tr>
		<td>
			<s:label>First Name:</s:label> </td>
		<td>
<s:textfield  name="opeartorFirstname" id="fname"></s:textfield></td><td><s:fielderror fieldName="opeartorFirstname" /></td>
		</tr>
	
		<tr>
<td>
<s:label>Last Name:</s:label> </td>
<td>
<s:textfield  name="operatorLastname" id="lname"></s:textfield></td><td><s:fielderror fieldName="operatorLastname" /></td>
</tr>
<tr>
<td>
<s:label>Email ID:</s:label> </td>
<td>
<s:textfield  name="operatorEmail" id="email"></s:textfield></td><td> <s:fielderror fieldName="operatorEmail" /></td>
</tr>
<tr>
<td>
<s:label>Phone Number:</s:label> </td>
<td>
<s:textfield  name="operatorPhone" id="phone"></s:textfield></td><td> <s:fielderror fieldName="operatorPhone" /></td>
</tr>
<tr>
<td>
<s:label>Shift Time Start:</s:label> </td>
<td><s:select list="{'Select','8am','2pm','8pm','11pm'}" name="operatorShiftstart" id="starttime" onchange="endTime()" ></s:select></td><td><s:fielderror fieldName="operatorShiftstart" /></td>
</tr>
<tr>
<td>
<s:label>Shift Time End:</s:label> </td>
<td>
<s:textfield  name="operatorShiftend"  id="endtime" readonly="true"></s:textfield></td><td> &nbsp;</td>
</tr>
<tr>
<td>
<s:label>Max No of Customers:</s:label> </td>
<td>
<s:textfield  name="operatorMaxcustomer" id="maxcust"></s:textfield></td><td><s:fielderror fieldName="operatorMaxcustomer" /></td>
</tr>

<tr>
<td>
<s:label>Creation Date:</s:label> </td>
<td>




  <s:textfield  name="opeartorCreation" id="date1" onfocus="document.getElementById('date1').value=Date()" readonly="true"></s:textfield> 
  
<%-- <s:hidden name="opeartorCreation" value="%{#dp}" visible="true"></s:hidden> --%>



<%--  <s:textfield  name="opeartorCreation"  value="%{#df.format(new java.util.Date())}"  ></s:textfield>  --%>

</td><td> <s:fielderror fieldName="opeartorCreation" /></td>

</tr>
<tr>
<td>
<s:label>Total Active Customers:</s:label> </td>
<td>
<s:textfield  name="operatorActivecustomer" id="customer"></s:textfield></td><td> <s:fielderror fieldName="operatorActivecustomer" /></td>
</tr>
<tr> 
		<td>	
     
   &nbsp;
      </td>
	  <td>	
	 &nbsp;
     </td>
</tr>

<tr> 
		<td>	
     &nbsp;
  
      </td>
	  <td>	
	 <s:submit value="REGISTER" cssClass="btn btn-primary"></s:submit>
     </td>
</tr>

    
  
     </table>
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