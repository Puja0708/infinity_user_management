<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="s" uri="/struts-tags"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<s:url value="/css/bootstrap.min.css"/>">
<script type="text/javascript" src=" <s:url value="/js/jquery.js"/>" ></script>

<script type="text/javascript" src=" <s:url value="/js/bootstrap.min.js"/>" ></script>
</head>
<body style="height:15%">
	<div class="navbar navbar-inverse navbar-static-top" style="height:10%" >
        <div class="container" style="height:10%">
            <div class="container" style="height:10%"> 
           
             
				
				
					
           
            <div class="collapse navbar-collapse navHeaderCollapse" id="bs-example-navbar-collapse-1">
          
           <h3 >   <img src="infi.jpg" alt="hello" /><font style="color:#FFFFFF">Infinity DTH Services</font> </h3> 
                <ul class="nav navbar-nav navbar-right">
					<li class="active">
					
					
					 
					  <s:url var="home" action="Home" ></s:url>  <s:a href="%{#home}"> Home </s:a>
					</li>
					
					<li class="active"> <a href="aboutus.jsp"> About </a> </li>
					<li class="active"> <a href="contactus.jsp"> Contact Us </a> </li>
					<li class="active"><a href="#"> Welcome : <%=session.getAttribute("uname") %></a></li>
					<li class="active"><s:url var="logout" action="logout" namespace="/"></s:url>  <s:a href="%{#logout}"> Logout </s:a></li>
				</ul>
            </div> 
        </div>
    </div>
   </div>
</body>
</html>