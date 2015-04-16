<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="icon" type="image/jpeg" href="favicon_final.jpg">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>customer</title>

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
		<h3 id="head">Deletion page of customer</h3>
		
		<div id="border">
		<center>
<s:form action="DeleteRequestsend" theme="simple">

<table cellspacing="50">
<tr><td>
<label>Are You Sure To Send Delete Request ?</label></td>
<td>&nbsp;
</td></tr>
<tr><td colspan="2" >&nbsp;</td></tr>
<tr><td>&nbsp;</td>
<td>

<s:submit value=" SEND DELETE REQUEST" cssClass="btn btn-primary"></s:submit></td></tr>
</table>
</s:form>
<s:url var="home" action="Home" ></s:url>
       <s:a href="%{#home}"><font style="color:white">Back</font> </s:a>
</center>
		
 </div>
			
		</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="Footer.jsp"%>


</body>
</html>