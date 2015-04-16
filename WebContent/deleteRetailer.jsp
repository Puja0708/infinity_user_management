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
		<h3 id="head"> Retailer Details</h3>
		
		<div id="border">
 	 <s:form name = "myForm" action="deleteRetailer1" prefix="a" theme="simple"  method="post">
 	 <s:iterator value="retailerList">
  	<table  border="1">
  		<tr>
<td>
<s:label>Retailer ID:</s:label> </td>
<td><s:property value="retailerId"/><s:hidden name="retailerId" value="%{retailerId}"></s:hidden>
</td>
</tr>
  		<tr>
		<td>
			<s:label>Retailer:</s:label> </td>
		<td>
		<s:property value="retailerName"/>
</td>
		</tr>
	
		<tr>
<td>
<s:label>Contact 1:</s:label> </td>
<td><s:property value="retailerContact1"/>
</td>
</tr>
<tr>
<td>
<s:label>Contact 2:</s:label> </td>
<td><s:property value="retailerContact2"/>
</td>
</tr>
<tr>
<td>
<s:label>Address 1:</s:label> </td>
<td><s:property value="retailerAddress1"/>
</td>
</tr>
<tr>
<td>
<s:label>Address 2:</s:label> </td>
<td><s:property value="retailerAddress2"/>
</td>
</tr>
<tr>
<td>
<s:label>City:</s:label> </td>
<td><s:property value="retailerCity"/>
</td>
</tr>
<tr>
<td>
<s:label>State:</s:label> </td>
<td><s:property value="retailerState"/>
</td>
</tr>

<tr>
<td>
<s:label>Pin Code:</s:label> </td>
<td><s:property value="retailerPinCode"/>

<%-- <s:textfield  name="opeartorCreation" id="date1" value="<%=ft.format(dnow) %>" ></s:textfield> --%>

</td>

</tr>
<tr>
<td>
<s:label>Set Top Box Limit:</s:label> </td>
<td><s:property value="seTopBoxLimit"/>
</td>
</tr>
<tr>
<td>
<s:label>Credit Limit:</s:label> </td>
<td><s:property value="creditLimit"/>
</td>
</tr>

<tr>
<td>
<s:label>Commission Percentage:</s:label> </td>
<td><s:property value="commissionPercentege"/>
</td>
</tr>

<tr>
<td>
<s:label>Service Charges:</s:label> </td>
<td><s:property value="serviceCharges"/>
</td>
</tr>

<tr>
<td>
<s:label>Inventory Type:</s:label> </td>
<td><s:property value="retailerInventory"/>
</td>
</tr>

<tr>
<td>
<s:label>Creation Date:</s:label> </td>
<td><s:property value="retailerCreationdate"/>
</td>
</tr>

<tr>
<td>
<s:label>Total Inventory Cost:</s:label> </td>
<td><s:property value="totalInventoryCost"/>
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