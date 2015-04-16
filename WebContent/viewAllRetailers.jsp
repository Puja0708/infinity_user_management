<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.* "%>
    <%@ page import="java.io.*"%>
   <%@ page import="java.text.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Reatiler</title>

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
		<h3 id="head">Retailer Details</h3>
		
		<div id="border">
 	 <s:form name = "myForm" >
  <table border="1">
<tr>
<td colspan="17"> 
<s:url var="home" action="Home" ></s:url>
       <s:a href="%{#home}" align="center"><font style="color:white"> Back</font> </s:a>
       </td>
       </tr>
          <tr>
          <th>Retailer Id</th>
          <th>Retailer Name</th>
          <th>Contact 1</th>
          <th>Contact 2</th>
         
          <th>Address1</th>
          <th>Address2</th>
          <th>Pin Code</th>
          <th>City</th>
          
          <th>State</th>
          <th>Set Top Box Limit</th>
          <th>Credit Limit</th>
          <th>Commission Percentage</th>
          
          <th>Service Charges</th>
          <th>Inventory type</th>
           <th>Total Inventory Cost</th>
         
          <th>Creation Date</th>
          <th>Status</th>
          <th>
          
          </tr>
          
          
          
          <s:iterator value="retailerList">
          <tr>
           <td><s:property value="retailerId"/></td>
          <td><s:property value="retailerName"/></td>
          <td><s:property value="retailerContact1"/></td>
          <td><s:property value="retailerContact2"/></td>
          <td><s:property value="retailerAddress1"/></td>
          <td><s:property value="retailerAddress2"/></td>
          <td><s:property value="retailerPinCode"/></td>
          <td><s:property value="retailerCity"/></td>
          <td><s:property value="retailerState"/></td>
          <td><s:property value="seTopBoxLimit"/></td>
          <td><s:property value="creditLimit"/></td>
          <td><s:property value="commissionPercentege"/></td>
          <td><s:property value="serviceCharges"/></td>
          <td><s:property value="retailerInventory"/></td>
          <td><s:property value="retailerCreationdate"/></td>
          <td><s:property value="totalInventoryCost"/></td>
          <td><s:property value="retailerStatus"/></td>
          
           </s:iterator>

</table>
    
        <s:url var="home" action="Home" ></s:url>
       <s:a href="%{#home}"><font style="color:white">Back</font> </s:a>
  
  
 </s:form>
 </div>
			
		</div>
				</div>
			</div>
		</div>
	
	<%@include file="Footer.jsp"%>


</body>
</html>
