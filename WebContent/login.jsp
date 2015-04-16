<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="<s:url value="/css/bootstrap.min.css"/>">
<script type="text/javascript" src=" <s:url value="/js/jquery.js"/>"></script>
<script type="text/javascript"
	src=" <s:url value="/js/bootstrap.min.js"/>"></script>
	
	
	
<title>Login</title>

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
background-image:url("download111.jpg");
background-repeat: no-repeat;
}
</style>

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

<body>
	<%@include file="Header1.jsp"%>
	<div class="container">
		<br/><br/><br/>
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading" align = "center">
						<strong> Sign in</strong>
					</div>
					<div class="panel-body">
						<form role="form" action="login" method="POST">
							<fieldset>
								<div class="row">
									<div class="center-block">
										<center><img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120" alt=""></center>
									</div>
									<br/>
								</div>
								<div class="row">
									<div class="col-sm-11 col-md-8  col-md-offset-1 ">
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span> 
<!-- 												<input class="form-control" placeholder="Username" name="userID" type="text" autofocus required> -->
												<s:textfield class="form-control" placeholder="Username" name="userID" />
											
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-lock"></i>
												</span>

										<s:password class="form-control" placeholder="Password" name="password" />

<!-- 												<input class="form-control" placeholder="Password" name="password" type="password" value="" required> -->

											</div>
										</div>
										<div class="form-group">
										
										<s:submit cssClass="btn btn-lg btn-primary btn-block" value="LOGIN"/>
<!-- 											<input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in"> -->
											
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
					<div class="panel-footer ">
						Not an existing customer? <a href="customerregister.jsp" onClick="customerregister.jsp"> Sign Up Here </a>
						<br>
							Forgot Password ? <a href="forgot.jsp" onClick="forgot.jsp"> Click Here </a>
					</div>
					<div class="panel-footer ">
				
					</div>
                </div>
			</div>
		</div>
		
		
		</div>
				
	<%@include file="Footer.jsp"%>
</body>
</html>