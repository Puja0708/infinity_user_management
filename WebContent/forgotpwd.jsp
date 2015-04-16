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
	
	
	var passwd=document.getElementById('pwd').value;
	
		
		
		if(passwd=="" )
		{
			 alert("Please enter  answer ");
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
		<h3 id="head">Forgot Password..</h3>
		
		<div id="border">

<center>
<s:form action="forgotpwd" theme="simple" onsubmit="return check()" >
<h6></h6>

<table cellspacing="50">
<s:iterator value="questionList">
<tr><td>
<label>Question :</label></td>
<td>
<s:property value="question"/><s:hidden name="question"  value="%{question}" ></s:hidden>
<s:hidden name="userID"  value="%{userID}" ></s:hidden>
<%-- <s:textfield  name="questionList" readonly="true" ></s:textfield> --%>

</td></tr>
</s:iterator>
<tr><td>
<label>Answer here :</label></td>
<td>
<s:textfield  name="answer" id="pwd" placeholder="write answer" ></s:textfield></td></tr>

<tr><td colspan="2" >&nbsp;</td></tr>
<tr><td>&nbsp;</td>
<td>

<s:submit value="SUBMIT" cssClass="btn btn-primary"></s:submit></td></tr>
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