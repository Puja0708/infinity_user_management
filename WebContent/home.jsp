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
<script language="JavaScript" type="text/javascript">

javascript:window.history.forward(1);

</script>

<script type="text/javascript" language="javascript">

function disableBackButton()
{
window.history.forward();
javascript:window.history.forward(1);
}  
disableBackButton();  
window.onload=disableBackButton();  
window.onpageshow=function(evt) { if(evt.persisted) disableBackButton(); }  
window.onunload=function() { void(0); }  
</script>




</head>
<body >

<%@include file="Header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-3 col-md-3">
				<div class="panel-group" id="accordion">
					
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo"><span class="glyphicon glyphicon-th">
								</span>Modules</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">
								<table class="table">
									<tr>
										<td><a>Product Management </a></td>
									</tr>
									<tr>
										<td><a>Customer package and Charging</a></td>
									</tr>
									
								</table>
							</div>
						</div>
					</div>
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
									<!-- <tr>
										<td><a href="changepassword.jsp ">Change
												Password</a></td>
									</tr> -->
									<tr>
										<td><s:url var="activationlist1" action="activationlist" >
		</s:url>
										
										
										<s:a href="%{#activationlist1}">Customer Activation Requests</s:a>
											</td>
									</tr>
									<tr>
										<td><s:url var="viewcustomerlist1" action="viewcustomerlist" >
		</s:url>
										
										<s:a href="%{#viewcustomerlist1}" >Customer De-acivation Requests</s:a>
										</td>
									</tr>
									<tr>
										<td>
										<s:url var="viewoperatorlist1" action="viewoperatorlist" >
		</s:url>
										<s:a href="%{#viewoperatorlist1}" >Operator De-acivation Requests</s:a></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseFour"><span class="glyphicon glyphicon-file">
								</span>Reports</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse">
							<div class="panel-body">
								<table class="table">
									
									<tr>
										<td><span class="glyphicon glyphicon-user"></span>
										
										<a href="customerGraph.jsp">Customers</a> </td>
									</tr>
									<tr>
										<td><span class="glyphicon glyphicon-tasks"></span><a
											href="operatorsGraph.jsp">Operator</a></td>
									</tr>
									<tr>
										<td><span class="glyphicon glyphicon-shopping-cart"></span><a
											href="retailerGraph.jsp">Retailer</a></td>
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
		<h4 id="head"><font style="color:white"></font></h4>
		
		<div id="border">
		
		
					
		<h2 align = "center"><font style="color:white">Welcome to Infinity DTH Services</font></h2>
		<!-- Content --> 
		
		<div id="display" align= "center">
		<h6 id="head"></h6>
		<table cellspacing="20px" cellpadding="20px">
		
		<tr><td>
		<s:url var="manageCustomer" action="manageCustomer" 
>
		</s:url>
		
		<s:a href="%{#manageCustomer}" >
		<img src="customerimage.jpg" alt="hello" /></s:a>
		</td>
		<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
	<td>
	
	<s:url var="manageOperator" action="manageOperator" 
>
		</s:url>
	<s:a href="%{#manageOperator}" >
	<img src="operatorimages.jpg" alt="hello" /></s:a></td>
	<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
	
		<td>
		<s:url var="manageRetailer" action="manageRetailer" 
>
		</s:url><s:a href="%{#manageRetailer}" >
		<img src="retailerimage.jpg" alt="hello" /></s:a>
		</td>
		
		</tr>
		
		<tr>
		<td>
		<s:url var="manageCustomer" action="manageCustomer" 
>
		</s:url>

		<s:a href="%{#manageCustomer}" ><font style="color:white">Manage Customers </font></s:a>
		
	</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
	<td>
		<s:url var="manageOperator" action="manageOperator" 
>
		</s:url>

		<s:a href="%{#manageOperator}" ><font style="color:white">Manage Operators</font> </s:a>
		</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
		<td>
		<s:url var="manageRetailer" action="manageRetailer" 
>
		</s:url>

		<s:a href="%{#manageRetailer}" > <font style="color:white">Manage Retailers</font> </s:a>
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