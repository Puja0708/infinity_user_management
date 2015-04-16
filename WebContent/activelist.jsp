<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="icon" type="image/jpeg" href="favicon_final.jpg">

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
		<center>
		<h2>Activate Customers</h2>
		<div id="border">
<s:form  theme="css_xhtml">

<table border="1" width="50:px">

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
          
          <td></td>
           </s:iterator>

</table>
    
  </s:form>

       </div>
         </center>
       </div>
       
       <div id="display" align= "center">
		
		<h2>Activate</h2>
		<div id="border">
		<center>
       <s:form  action="activation" theme="css_xhtml">
       <table cellspacing="50">
<tr><td>
<label>Customer ID :</label></td>
<td>
<s:textfield  name="customerId"  ></s:textfield></td></tr>
<tr><td>
<label>Operator Name :</label></td>
<td>
<s:select name="operatorName" list="operatorList"  />
</td></tr>
<tr><td>
<label>Retailer Name :</label></td>
<td>
<s:select name="retailerName" list="retailerList"  />
</td></tr>
<tr><td>
&nbsp;</td>
<td>
<s:submit value="Activate" cssClass="btn btn-primary"></s:submit>  
</td></tr>
</table>
     
        </s:form>
        </center>
        <br>
        <s:url var="home" action="Home" ></s:url>
       <s:a href="%{#home}"><font style="color:white">Back</font> </s:a>
  
      
			
		</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	<%@include file="Footer.jsp"%>

</body>
</html>