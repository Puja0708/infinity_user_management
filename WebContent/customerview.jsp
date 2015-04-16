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
<script type="text/javascript"
	src=" <s:url value="/js/bootstrap.min.js"/>"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View</title>
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
</head>


<body>
<%@include file="Header.jsp"%>
	<div class="container">
		<div class="row">

			<div class="col-sm-9 col-md-9" align = "center">
				
				<div id="display" align= "center">
		<h3 id="head">View My Account</h3>
		
		<div id="border">
<s:form action="viewcustomer" theme="css_xhtml"  method="post">
<table >
<s:iterator value="customerList">
<tr>
<td>customerId</td>
<td><s:property value="customerId"/><s:hidden name="customerId" value="%{customerId}" /></td> </tr>
<tr>
<td>firstName</td>
<td><s:property value="firstName"/></td> </tr>

<tr>
<td>lastName</td>

 <td><s:property value="lastName"/></td> </tr>
 
 <tr>
 <td>emaiId</td>
 <td><s:property value="emaiId"/></td>
 </tr>
         
         <tr> 
         <td>phoneNumber</td>
         <td><s:property value="phoneNumber"/></td>
         </tr>
          
          <tr>
          <td>address1</td>
          <td><s:property value="address1"/></td>
          </tr>
          
          <tr> 
          <td> address1</td>
          <td><s:property value="address2"/></td>
          </tr>
          
          <tr>
          <td> landMark</td>
          <td><s:property value="landMark"/></td>
           </tr>
          
          <tr>
          <td> pinCode</td>
          <td><s:property value="pinCode"/></td>
           </tr>
          
          <tr>
          <td> city</td>
         <td><s:property value="city"/></td>
           </tr>
          
          <tr>
          <td> state</td>
          <td><s:property value="state"/></td>
           </tr>
          
          <tr>
          <td> Created On</td>
          
          <td><s:property value="creationDate"/>
          </td>
           </tr>
          
          <tr>
          <td> operatorName</td>
          <td><s:property value="operatorName"/></td>
           </tr>
          
          <tr>
          <td> retailerName</td>
         <td><s:property value="retailerName"/></td>
           </tr>
          
          
           </s:iterator>
		
</table>
    <s:submit value="UPDATE"  cssClass="btn btn-primary" onclick="return confirm('Are you sure you want to update')"></s:submit>
</s:form>
</div>
<div id="display" align = "center">
		
			
				<br>
<s:url var="home" action="Home" ></s:url>
       <s:a href="%{#home}"><font style="color:white">Back </font></s:a>
		<div id="display" align = "center">
		</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<%@include file="Footer.jsp"%>


</body>
</html>