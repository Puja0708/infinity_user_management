<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Operator Home</title>
<script>

function check()
{
	
	var userid=document.getElementById('ques').value;
	var passwd=document.getElementById('ans').value;
	
		
		 if(userid=="Select" )
		{
			 alert("Please Select any Question ");
				return false;
		}
		
		if(passwd=="" )
		{
			 alert("Please enter  your answer  ");
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


<s:form action="setquestion" theme="simple" onsubmit="return check()" >

<table cellspacing="50">
<tr><td>
<label>Question :</label></td>
<td>
<s:select  list= "{'Select','your mother name','your pet name','your favourite thing'}" name="question" id="ques" ></s:select>

</td></tr>
<tr><td>
<label>Answer here :</label></td>
<td>
<s:textfield  name="answer" id="ans"></s:textfield></td></tr>

<tr><td colspan="2" >&nbsp;</td></tr>
<tr><td>&nbsp;</td>
<td>

<s:submit value="SUBMIT" cssClass="btn btn-primary"></s:submit></td></tr>

</table>
</s:form>
<s:url var="home" action="Home" ></s:url>
       <s:a href="%{#home}"><font style="color:white">Back </font></s:a>

 </div>
			
		</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="Footer.jsp"%>


</body>
</html>