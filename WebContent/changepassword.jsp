<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> change password</title>
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

<%@include file="Header.jsp"%>
	<div class="container">
		<div class="row">
		
			<div class="col-sm-9 col-md-9">
				
					
		<h2 align = "center"> </h2>
		<!-- Content --> 
		
		<div id="display" align= "center">
		<h3 id="head">Change Password</h3>
		
		<div id="border">

<center>
<s:form action="changepassword" theme="simple" onsubmit="return check()" >
<h6></h6>
<table cellspacing="50">
<tr><td>
<label>Login ID :</label></td>
<td>
<%-- <s:textfield  name="userID" placeholder="Login ID" id="id"></s:textfield> --%>
<input name="userID" value="<%=session.getAttribute("uid") %>" readonly="true" />
</td></tr>
<tr><td>
<label>Password :</label></td>
<td>
<s:password  name="password"  placeholder="Current Password"  id="pwd"></s:password></td></tr>
<tr><td>
<label>New Password :</label></td>
<td>
<s:password  name="newpassword" placeholder="New Password" id="newpwd"></s:password></td></tr>
<tr><td>
<label>New Password confirm :</label></td>
<td>
<s:password  name="newpassword1"  placeholder="New Password Confirm" id="newpwd1"></s:password></td></tr>
<tr><td colspan="2" >&nbsp;</td></tr>
<tr><td>&nbsp;</td>
<td>

<s:submit value="CHANGE PASSWORD" cssClass="btn btn-primary"></s:submit></td></tr>
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