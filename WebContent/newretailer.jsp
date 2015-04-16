<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.* "%>
    <%@ page import="java.io.*"%>
   <%@ page import="java.text.*"%>

<%@page import="java.util.Date"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>
function validateForm() {
    var x = document.forms["myForm"]["retailerName"].value;
    if (x == null || x == "") {
        alert("Name must be filled out");
        return false;
    }
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Retailer Registration</title>

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
<script>  

  function GetCity()
        {
	debugger;
                var zip=$("#zip-code").val();
$.getJSON("http://maps.googleapis.com/maps/api/geocode/json?address="+zip+"&sensor=true", function(data, status){
debugger;          
//alert("Data: " + JSON.stringify(data) + "\nStatus: " + status);
var address=data.status;
if(address=="OK"){
	if(+(data.results[0].address_components.length)==3){
		$("#state-name").val(data.results[0].address_components[1].long_name);
		$("#long_name").val(data.results[0].address_components[2].long_name);
	}
if(+(data.results[0].address_components.length)==5){
		$("#city-name").val(data.results[0].address_components[2].long_name);
		$("#state-name").val(data.results[0].address_components[3].long_name);
		$("#long_name").val(data.results[0].address_components[4].long_name);
	}
else{
		$("#city-name").val(data.results[0].address_components[1].long_name);
		$("#state-name").val(data.results[0].address_components[2].long_name);
		$("#long_name").val(data.results[0].address_components[3].long_name);
	}
}else{
	$("#city-name").val('');
	$("#state-name").val('');
	$("#long_name").val('');
	alert("Invalid Zip Code !!");
}

        });


        }

</script>
</head>
<body>

<%@include file="Header.jsp"%>
	<div class="container">
		<div class="row">

			<div class="col-sm-9 col-md-9">
				
					
		<h2 align = "center"> </h2>
		<!-- Content --> 
		
		<div id="display" align= "center">
		<h3 id="head">Register Retailer</h3>
		
		<div id="border">
		<%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
		<h6>date: <%= df.format(new java.util.Date()) %></h6>
 	 <s:form name = "myForm" action="addingRetailer" theme="simple"  method="post">

  	<table>
  	<tr>
  	<td>Name : </td>
  	<td><s:textfield label = "Name:" placeholder="Name" name="retailerName" />
  </td>
  <td><s:fielderror fieldName="retailerName" /></td>
  </tr>
  
  <tr>
  	<td>Contact No1 : </td>
  	<td><s:textfield label = "Contact 1:" placeholder="Contact 1" name="retailerContact1" />
  </td>
  <td><s:fielderror fieldName="retailerContact1" /></td>
  </tr>
  
  <tr>
  	<td>Contact No2 : </td>
  	<td><s:textfield label = "Contact 2:" placeholder="Contact 2" name="retailerContact2" />
  </td>
  <td><s:fielderror fieldName="retailerContact2" /></td>
  </tr>
  
  <tr>
  	<td>Address 1 : </td>
  	<td><s:textfield label = "Address 1:" placeholder="Address 1" name="retailerAddress1" />
  </td>
  
  <td><s:fielderror fieldName="retailerAddress1" /></td>
  </tr>
   <tr>
  	<td>Address 2 : </td>
  	
  	<td><s:textfield label = "Address 2:" placeholder="Address 2" name="retailerAddress2" />
  </td>
  
  <td><s:fielderror fieldName="retailerAddress2" /></td>
  </tr>
  

  <tr>
  
  	<td>Pin Code : </td>
  	<td><s:textfield label = "Pincode:" placeholder="Pincode" name="retailerPinCode"  id="zip-code" onblur="GetCity()"/>
  </td>
  <td><s:fielderror fieldName="retailerPinCode" /></td>
  
  </tr>
  
  <tr>
  	
  	<td>City : </td>
  	<td><s:textfield label = "City:" placeholder="city" name="retailerCity" readonly="true" id="city-name"  />
  </td>
  <td><s:fielderror fieldName="retailerCity" /></td>
  </tr>
  
  <tr>
  
  	<td>State : </td>
  	<td><s:textfield label = "State:" placeholder="State" name="retailerState" readonly="true" id="state-name"/>
  </td>
  <td><s:fielderror fieldName="retailerState" /></td>
  
  </tr>
  
  <tr>
  	<td>Set Top Limit : </td>
  	<td><s:textfield type = "text"  placeholder="Set Top Limit" name="seTopBoxLimit" />
  </td>
  
  <td><s:fielderror fieldName="seTopBoxLimit" /></td>
  </tr>
  
  <tr>
  	<td>Credit Limit : </td>
  	<td><s:textfield label = "credit Limit:" placeholder="credit Limit" name="creditLimit" />
  </td>
  <td><s:fielderror fieldName="creditLimit" /></td>
  
  </tr>
  
  <tr>
  	<td>Commission Percentege: </td>
  	<td><s:textfield label = "commission Percentege :" placeholder="commission Percentege" name="commissionPercentege" />
  </td>
  <td><s:fielderror fieldName="commissionPercentege" /></td>
  </tr>
  <tr>
  	<td>Service Charges : </td>
  	<td><s:textfield label = "service Charges :" placeholder="service Charges" name="serviceCharges" />
  </td>
  <td><s:fielderror fieldName="serviceCharges" /></td>
  
  </tr>
  <tr>
  	<td>Retailer Inventory List: </td>
  	<td><s:select  list= "{'Select','HD','Standard','IP','IPTV'}" placeholder="retailer Inventory" name="retailerInventory" ></s:select>
  </td>
  <td><s:fielderror fieldName="retailerInventory" /></td>
  </tr>
  <tr>
  	<td>Retailer Creation Date: </td>
  	<%String d1= df.format(new java.util.Date());%>
  	<td><s:textfield  name="retailerCreationdate" id="date1" onfocus="document.getElementById('date1').value=Date()" ></s:textfield> 
 </td>
  
  <td><s:fielderror fieldName="retailerCreationdate" /></td>
  </tr>
 
  
	<tr>
	<td>&nbsp </td>
  	<td>
    <s:submit value="REGISTER" cssClass="btn btn-primary"/>
    </td></tr>
  
    
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