<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reatiler update</title>

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
		<h3 id="head">Update Retailer</h3>
		
		<div id="border">
		 <s:form  action="updateRetailer1"  theme="simple" >
		 
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
<s:label>Name:</s:label> </td>
<td>
<s:textfield name="retailerName" value="%{retailerName}" ></s:textfield>
</td>
</tr>
	
<tr>
<td>
<s:label>Contact 1:</s:label> </td>
<td>
<s:textfield name="retailerContact1" value="%{retailerContact1}" ></s:textfield>
</td>
</tr>
<tr>
<td>
<s:label>Contact 2:</s:label> </td>
<td><s:textfield name="retailerContact2" value="%{retailerContact2}" ></s:textfield>
</td>
</tr>
<tr>
<td>
<s:label>Address 1:</s:label> </td>
<td><s:textfield name="retailerAddress1" value="%{retailerAddress1}" ></s:textfield>
</td>
</tr>
<tr>
<td>
<s:label>Address 2:</s:label> </td>
<td><s:textfield name="retailerAddress2" value="%{retailerAddress2}" ></s:textfield>
</td>
</tr>
<tr>
<td>
<s:label>Pin Code:</s:label> </td>
<td><s:textfield name="retailerPinCode" value="%{retailerPinCode}" ></s:textfield>
</td>
</tr>

<tr>
<td>
<s:label>City:</s:label> </td>
<td><s:textfield name="retailerState" value="%{retailerState}" ></s:textfield>
</td>
</tr> 

<tr>
<td>
<s:label>State:</s:label> </td>
<td><s:textfield name="retailerCity" value="%{retailerCity}" ></s:textfield>
</td>
</tr>

<tr>
<td>
<s:label>Set Top Box Limit:</s:label> </td>
<td><s:textfield name="seTopBoxLimit" value="%{seTopBoxLimit}" ></s:textfield>
</td>
</tr>

<tr>
<td>
<s:label>Credit Limit:</s:label> </td>
<td><s:textfield name="creditLimit" value="%{creditLimit}" ></s:textfield>
</td>
</tr>

<tr>
<td>
<s:label>Commission Percentege:</s:label> </td>
<td><s:textfield name="commissionPercentege" value="%{commissionPercentege}" ></s:textfield>
</td>
</tr>

<tr>
<td>
<s:label>Service Charges:</s:label> </td>
<td><s:textfield name="serviceCharges" value="%{serviceCharges}" ></s:textfield>
</td>
</tr>

<tr>
<td>
<s:label>Creation Date:</s:label> </td>
<td><s:textfield name="retailerCreationdate"   id="updatedate" onclick="document.getElementById('updatedate').value=Date();" ></s:textfield>

<%-- <s:textfield  name="opeartorCreation" id="date1" value="<%=ft.format(dnow) %>" ></s:textfield> --%>

</td>

</tr>

<tr>
<td>
<s:label>Total Inventory Cost:</s:label> </td>
<td><s:textfield name="totalInventoryCost" value="%{totalInventoryCost}" ></s:textfield>
</td>
</tr>

<tr>
<td>
<s:label>Status :</s:label> </td>
<td><s:property value="retailerStatus"/>
</td>
</tr>

<tr> 
		<td>	
     
   &nbsp;
      </td>
	  <td>	
	 <s:submit value="UPDATE" cssClass="btn btn-primary"></s:submit>
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