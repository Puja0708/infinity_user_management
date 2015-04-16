<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>forgot</title>
<script>

function check()
{
	
	var userid=document.getElementById('id').value;
	var passwd=document.getElementById('pwd').value;
	var newpasswd=document.getElementById('newpwd').value;
	var newpasswd1=document.getElementById('newpwd1').value;
	/* if(userid=="" && userid!=session.getAttribute('uid'))
	{
		alert("Please enter valid Id ");
		return false;
	}
	if(passwd=="" && passwd!=session.getAttribute('password'))
		{
		alert("Please enter valid password ");
		return false;
		} */
		
		 if(userid=="" )
		{
			 alert("Please enter Login ID ");
				return false;
		}
		
		if(passwd=="" )
		{
			 alert("Please enter  password ");
				return false;
		}
		
	if(newpasswd=="" && newpasswd1=="" )
	{
		alert("Please enter new password and confirm ");
		return false;
		}
	
	if(newpasswd1!=newpasswd)
		{
		alert(" new password and confirm password should be same ");
		return false;
		}
	}
	
</script>
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

<%@include file="Header1.jsp"%>
	<div class="container">
		<div class="row">
		
			<div class="col-sm-9 col-md-9">
				
					
		<h2 align = "center"> </h2>
		<!-- Content --> 
		
		<div id="display" align= "center">
		<h3 id="head">Forgot Password..?
</h3>
		
		<div id="border">

<center>
<s:form action="forgot" theme="simple" onsubmit="return check()" >
<h6></h6>
<table cellspacing="50">
<tr><td>
<label>Enter Login ID :</label></td>
<td>

<s:textfield  name="userID" ></s:textfield></td></tr>

<tr><td colspan="2" >&nbsp;</td></tr>
<tr><td>&nbsp;</td>
<td>

<s:submit value="NEXT" cssClass="btn btn-primary"></s:submit></td></tr>
</table>
</s:form>
<s:url var="home" action="logout" ></s:url>
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