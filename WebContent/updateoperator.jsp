<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Operator update</title>

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
		<h3 id="head">Update Operator</h3>
		
		 
		<div id="border">
		 <s:form  action="updateoperator1"  theme="simple" 
 >
		 
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
		<s:textfield name="opeartorFirstname" value="%{opeartorFirstname}" ></s:textfield>
</td>

		</tr>
	
		<tr>
<td>
<s:label>Last Name:</s:label> </td>
<td>
<s:textfield name="operatorLastname" value="%{operatorLastname}" ></s:textfield>
</td>

</tr>
<tr>
<td>
<s:label>Email ID:</s:label> </td>
<td><s:textfield name="operatorEmail" value="%{operatorEmail}" ></s:textfield>
</td>

</tr>
<tr>
<td>
<s:label>Phone Number:</s:label> </td>
<td><s:textfield name="operatorPhone" value="%{operatorPhone}" ></s:textfield>
</td>

</tr>
<tr>
<td>
<s:label>Shift Time Start:</s:label> </td>
<td><s:textfield name="operatorShiftstart" value="%{operatorShiftstart}" readonly="true" ></s:textfield>
</td>

<%-- <td><s:fielderror fieldName="opeartorFirstname" /></td> --%>
</tr>
<tr>
<td>
<s:label>Shift Time End:</s:label> </td>
<td><s:textfield name="operatorShiftend" value="%{operatorShiftend}" readonly="true"></s:textfield>
</td>

</tr>
<tr>
<td>
<s:label>Max No of Customers:</s:label> </td>
<td><s:textfield name="operatorMaxcustomer" value="%{operatorMaxcustomer}" ></s:textfield>
</td>

</tr>

<tr>
<td>
<s:label>Creation Date:</s:label> </td>
<td><s:textfield name="opeartorCreation"   id="updatedate" onclick="document.getElementById('updatedate').value=Date();" readonly="true"></s:textfield>

<%-- <s:textfield  name="opeartorCreation" id="date1" value="<%=ft.format(dnow) %>" ></s:textfield> --%>

</td>

</tr>
<tr>
<td>
<s:label>Total Active Customers:</s:label> </td>
<td>
<s:textfield name="operatorActivecustomer" value="%{operatorActivecustomer}" readonly="true"></s:textfield>

</td>
</tr>
<tr>
<td>
<s:label>Status :</s:label> </td>
<td><s:property value="operatorStatus"/>

</tr>

<tr> 
		<td>	
     
   &nbsp;
      </td>
   
	  <td>	
	 <s:submit value="UPDATE" cssClass="btn btn-primary"></s:submit>
    
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