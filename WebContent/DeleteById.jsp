<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete customer</title>
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
				
						<div id="display" align= "center">
	
		
		<div id="border">
		<h6 align = "center">Please enter the customer id of the customer to be deleted :</h6>


<s:form action="delete">
<s:textfield name="customerId"></s:textfield>
<s:submit value="DELETE" cssClass="btn btn-primary" ></s:submit>
</s:form>
</div>

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
	<%@include file="Footer.jsp"%>

</body>
</html>