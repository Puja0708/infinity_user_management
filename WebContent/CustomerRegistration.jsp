<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.util.ArrayList;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script src="/js/my_script.js" type="text/javascript"></script>

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>

<!-- javascript for autopopulate -->



<script>


 function validateForm() {
	
		 var ck_email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i ;
		 var phoneNumber = /^[7-9][0-9]{9}$/ ;
		 var pincode = /^[1-9][0-9]{5}$/ ;
		 var str = /^[A-Za-z]+$/ ;
		 var alphanum = /^[A-Za-z0-9]$/;
	
	     var x = document.forms["myForm"]["firstName"].value;
	     var y = document.forms["myForm"]["lastName"].value;
	     var z = document.forms["myForm"]["emaiId"].value;
	     var a = document.forms["myForm"]["phoneNumber"].value;
	     var b = document.forms["myForm"]["address1"].value;
	     var c = document.forms["myForm"]["pinCode"].value;
	     
	     var f = document.forms["myForm"]["creationDate"].value;
	    
	   
	    if(!str.test(x)){
	    	alert("Please enter a valid First name (Only alphabets allowed).");
	    	return false;
	    } 
	     
	       else  if(!str.test(y)){
	    	alert("Please enter a valid Last name(Only alphabets allowed)");
	    	return false;
	    } 
	    
	    if (z == null || z == "") {
	        alert("Email id must be filled out");
	        return false;
	    } 
	    
	    if(!ck_email.test(z)){
	    	alert("Please enter a valid email id.");
	    	return false;
	    }
	    
	    if (a == null || a == "") {
	        alert("Phone Number must be filled out");
	        return false;
	    } 
	    if(!phoneNumber.test(a)){
	    	alert("Please enter a valid Phone Number.");
	    	return false;
	    }
	    
	    if (b == null || b == "") {
	        alert("Address Line 1 must be filled out");
	        return false;
	    } 
	    
	    if (c == null || c == "") {
	        alert("Pincode must be filled out");
	        return false;
	    }  
	    if(!pincode.test(c)){
	    	alert("Please enter a valid 6 digit pin code.");
	    	return false;
	    }
	    
	    if (f == null || f == "") {
	        alert("Creation date must be filled out");
	        return false;
	    } 
	    
	    /* if(!str.test(x)){
	    	alert("Please enter a valid name (Only alphabets allowed).");
	    	return false;
	    } */
	    //document.getElementById('date').value = Date();
	} 

	
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


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>

<style>
h1,a {
	font-family: andalus;
	font-weight: bold;
	text-decoration: underline;
}
</style>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>

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
<body style="align:center">

<%@include file="Header.jsp"%>
 	<div class="container">
 		<div class="row">

			<div class="col-sm-9 col-md-9" align="center">
				
					
		<h2 align = "center"> </h2>
		<!-- Content --> 
		
		<div id="display" align= "center">
		<h3 id="head">Register Customer</h3>
		
		<div id="border">
 	 <s:form name = "myForm" action="add" prefix="a" theme="simple"   method="post" >
  	<table>
  	<tr>
  	<td>First Name : </td>
  	<td><s:textfield  placeholder="First Name" name="firstName" />
  </td><td><s:fielderror fieldName="firstName" /></td></tr>
  
  <tr>
  	<td>Last Name : </td>
  	<td><s:textfield  placeholder="Last Name" name="lastName" />
  </td><td><s:fielderror fieldName="lastName" /></td></tr>
  
  <tr>
  	<td>Email ID : </td>
  	<td><s:textfield  placeholder="Email ID must be unique" name="emaiId" />
  </td><td><s:fielderror fieldName="emaiId" /></td></tr>
  
  <tr>
  	<td>Phone Number : </td>
  	<td><s:textfield  placeholder="Phone Number" name="phoneNumber" />
  </td><td><s:fielderror fieldName="phoneNumber" /></td></tr>
  
  
  <tr>
  	<td>Address: </td>
  	</tr>
  
  <tr>
  	<td> &nbsp; </td>
  	<td>Address Line 1 : </td>
  	<td><s:textfield  placeholder="Address Line 1" name="address1" />
  </td><td><s:fielderror fieldName="address1" /></td></tr>
  
  <tr>
  	<td>&nbsp; </td>
  	<td>Address Line 2 : </td>
  	<td><s:textfield  placeholder="Address Line 2" name="address2" />
  </td><td><s:fielderror fieldName="address2" /></td></tr>
  
  <tr>
  	<td>&nbsp; </td>
  	<td>Land Mark: </td>
  	<td><s:textfield  placeholder="Land mark" name="landMark" />
  </td><td><s:fielderror fieldName="landMark" /></td></tr>
  
  <tr>
  	<td>&nbsp; </td>
  	<td>PinCode : </td>
  	<td><s:textfield  placeholder="Pincode" name="pinCode" id="zip-code" onblur="GetCity()"  />
  </td><td><s:fielderror fieldName="pinCode" /></td></tr>
  
  <tr>
  	<td>&nbsp; </td>
  	<td>City : </td>
  	<td><s:textfield placeholder="city" name="city" id="city-name" readonly="true"/>
  </td><td><s:fielderror fieldName="city" /></td></tr>
  
  <tr>
  	<td>&nbsp; </td>
  	<td>State : </td>
  	<td><s:textfield  placeholder="State" name="state" id="state-name" readonly="true"/>
  </td><td><s:fielderror fieldName="state" /></td></tr>
  
  <tr>
  	<td>Customer creation date : </td>
  	<td><s:textfield type = "text"  placeholder="Customer creation date" name="creationDate"  id = "date" onfocus="document.getElementById('date').value = Date()"/>
  </td><td><s:fielderror fieldName="creationDate" /></td></tr>
  
   <%String user=(String)session.getAttribute("role"); %>
   <% String username=(String)session.getAttribute("uname");%>
  <s:set var="flag">${user}</s:set>
  <s:set var="user1">${username}</s:set>
  
 

  <tr>
  	<td>Operator Name : </td>
  		<td>


  	<s:select name="operatorName" list="operatorList"  />
  	
  </td>
  <td><s:fielderror fieldName="operatorName" /></td>
  </tr>
 
  <tr>
  	<td>Retailer Name : </td>
  	<td>
  	




  		<s:select name="retailerName" list="retailerList"  />
  	
  </td>
  <td><s:fielderror fieldName="retailerName" /></td>
  </tr>
        <tr>
	<td>&nbsp; </td>
  	<td>
    &nbsp;
    </td></tr>
	<tr>
	<td>&nbsp; </td>
  	<td>
    <s:submit cssClass="btn btn-primary" value="REGISTER"/>
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