<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Home</title>

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

<!-- disable back buttton of the browser -->
<script type="text/javascript" language="javascript">   
function disableBackButton()
{
window.history.forward()
}  
disableBackButton();  
window.onload=disableBackButton();  
window.onpageshow=function(evt) { if(evt.persisted) disableBackButton() }  
window.onunload=function() { void(0) }  
</script>


</head>
<body>

<%@include file="Header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-3 col-md-3">
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree"><span
									class="glyphicon glyphicon-user"> </span>Account</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<table class="table">
								<tr>
										<td>
										<s:url var="viewRetailer" action="viewRetailerDetails" >

		</s:url>

		<s:a href="%{#viewRetailer}" >View My Account </s:a>
		</td>
									</tr>
									
									<tr>
										<td><s:a href="changepassword.jsp">Change
												Password</s:a></td>
									</tr>
									
									<tr>
										<td><s:a href="secretquestion.jsp">Set
												Secret Question</s:a></td>
									</tr>
									
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-9 col-md-9">
				
					
		<h2 align = "center"> </h2>
		<!-- Content --> 
		
		<div id="display" align= "center">
		<h6></h6>
		<h4 id="head">  </h4>
		
		<div id="border">
		
		
					
		<h2 align = "center"><font style="color:white">Welcome to Infinity DTH Services</font></h2>
		<!-- Content --> 
		
		<div id="display" align= "center">
		<h6 id="head"></h6>
		<table>
		<tr>
		<td>
		<s:url var="viewRetailer" action="viewRetailerDetails" >

		</s:url>

		<s:a href="%{#viewRetailer}" ><img src="customerview.jpg" alt="hello" /></s:a>
		</td>
		</tr>
		<tr>
		<td>
		<s:url var="viewRetailer" action="viewRetailerDetails" >

		</s:url>

		<s:a href="%{#viewRetailer}" ><font style="color:white">View My Account </font></s:a>
		</td>
		</tr>
	</table>
		
		</div>
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