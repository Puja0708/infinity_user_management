<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="<s:url value="/css/bootstrap.min.css"/>">
<script type="text/javascript" src=" <s:url value="/js/jquery.js"/>"></script>
<script type="text/javascript"
	src=" <s:url value="/js/bootstrap.min.js"/>"></script>
<title>view</title>

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

}
</style>

</head>
<body>
<%@include file="Header.jsp"%>
	<div class="container">
		<div class="row">

			<div class="col-sm-9 col-md-9" >
				 
		<h2>View All Customers</h2>
		<div id="border" align= "center">
<s:form theme="simple" >
<center>
<table border="1" >
<tr>
<td colspan="14"> 
<s:url var="home" action="Home" ></s:url>
       <s:a href="%{#home}" align="center"><font style="color:white"> Back</font> </s:a>
       </td>
       </tr>
          <tr>
          <th>customerId</th>
          <th>firstName</th>
          <th>lastName</th>
          <th>emaiId</th>
          <th>phoneNumber</th>
          <th>address1</th>
          <th>address2</th>
          <th>landMark</th>
          <th>pinCode</th>
          <th>city</th>
          <th>state</th>
          <th>creationDate</th>
          <th>operatorName</th>
          <th>retailerName</th>
          
          </tr>
          
          
          
          <s:iterator value="customerList">
          <tr>
           <td><s:property value="customerId"/></td>
          <td><s:property value="firstName"/></td>
          <td><s:property value="lastName"/></td>
          <td><s:property value="emaiId"/></td>
          <td><s:property value="phoneNumber"/></td>
          <td><s:property value="address1"/></td>
          <td><s:property value="address2"/></td>
          <td><s:property value="landMark"/></td>
           <td><s:property value="pinCode"/></td>
          <td><s:property value="city"/></td>
          <td><s:property value="state"/></td>
          <td><s:property value="creationDate"/></td>
          <td><s:property value="operatorName"/></td>
          <td><s:property value="retailerName"/></td>
          </tr>
           </s:iterator>


</table>
    
  </center>     
        
  
       
</s:form>


			
			
		</div>
				</div>
			</div>
		</div>
	
	<%@include file="Footer.jsp"%>

</body>
</html>