<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="<s:url value="/css/bootstrap.min.css"/>">
<script type="text/javascript" src=" <s:url value="/js/jquery.js"/>"></script>
<script type="text/javascript" src=" <s:url value="/js/bootstrap.min.js"/>"></script>
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

<style>
#prepaid {
	margin-left: 500px;
	margin-top: 40px;
}

#postpaid {
	margin-left: 200px;
	margin-top: 40px;
}

label {
	font-family: andalus;
	font-size: 20px;
}

#display {
	width: 350px;
	margin: auto;
}

#head {
	font-family: andalus;
	margin-top: 40px;
	font-weight: bold;
}
body{
background-image:url("download11.jpg");
background-repeat: no-repeat;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<%@include file="Header.jsp"%>
	<div class="container">
		<div class="row">

			<div class="col-sm-9 col-md-9" align = "center">
				
<div id="display" align= "center">
		<h3 id="head">Update Customer</h3>
		
		<div id="border">
<s:form action="updatecust" theme="simple"  >
<table >
<s:iterator value="customerList">
<tr>
<td>customerId :</td>
<td><s:property value="customerId"/><s:hidden name="customerId" value="%{customerId}" /></td> </tr>
<tr>
<td>firstName :</td>
<td><s:textfield  name="firstName" value="%{firstName}" ></s:textfield></td> </tr>

<tr>
<td>lastName :</td>

 <td><s:textfield  name="lastName"  value="%{lastName}"></s:textfield></td> </tr>
 
 <tr>
 <td>emaiId :</td>
 <td>
 <s:textfield  name="emaiId"  value="%{emaiId}" ></s:textfield>
 </td>
 </tr>
         
         <tr> 
         <td>phoneNumber :</td>
         <td><s:textfield  name="phoneNumber"  value="%{phoneNumber}" ></s:textfield></td>
         </tr>
          
          <tr>
          <td>address1 :</td>
          <td><s:textfield name="address1"  value="%{address1}" ></s:textfield></td>
          </tr>
          
          <tr> 
          <td> address2 :</td>
          <td><s:textarea  name="address2"  value="%{address2}"></s:textarea></td>
          </tr>
          
          <tr>
          <td> landMark :</td>
          <td><s:textarea  name="landMark"  value="%{landMark}"></s:textarea></td>
           </tr>
          
          <tr>
          <td> pinCode :</td>
          <td><s:textarea  name="pinCode"  value="%{pinCode}" id="zip-code" onblur="GetCity()"></s:textarea></td>
           </tr>
          
          <tr>
          <td> city :</td>
          <td><s:textarea  name="city"  value="%{city}" id="city-name" readonly="true"></s:textarea></td>
           </tr>
          
          <tr>
          <td> state :</td>
          <td><s:textarea  name="state"  value="%{state}" id="state-name" readonly="true"></s:textarea></td>
           </tr>
          
          <tr>
          <td> Created On :</td>
          <td><s:textarea  name="creationDate"  value="%{creationDate}" id = "date" onclick="document.getElementById('date').value = Date()" readonly="true"></s:textarea></td>
           </tr>
          
          <tr>
          <td> operatorName :</td>
          <td><s:textarea  name="operatorName"  value="%{operatorName}" readonly="true"></s:textarea></td>
           </tr>
          
          <tr>
          <td> retailerName :</td>
          <td><s:textarea  name="retailerName"  value="%{retailerName}" readonly="true"></s:textarea></td>
          </tr>
          <tr>
           <td>&nbsp;</td>
           <td><s:submit value="UPDATE" cssClass="btn btn-primary"></s:submit></td>
           </tr>
          
</s:iterator>
</table>
</s:form>
<div id="display" align = "center">
			
			
		</div>
		<br>
<s:url var="home" action="Home" ></s:url>
       <s:a href="%{#home}"><font style="color:white">Back</font> </s:a>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<%@include file="Footer.jsp"%>

</body>
</html>


