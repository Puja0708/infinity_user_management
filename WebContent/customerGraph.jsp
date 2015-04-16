<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.List"%>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.helper.SessionHelper" %>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import=" org.hibernate.HibernateException"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import=" org.hibernate.Session"%>
<%@ page import="org.hibernate.SQLQuery"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import=" org.hibernate.Transaction"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="icon" type="image/jpeg" href="favicon_final.jpg">
<script type="text/javascript">
			google.load('visualization', '1.0', {'packages':['corechart']});  // The second script loads the Google Visualization and chart libraries..
			google.setOnLoadCallback(drawChart);
     // ... draw the chart...
	</script><script src="https://www.google.com/uds/?file=visualization&v=1.0&packages=corechart" type="text/javascript"></script><link href="https://www.google.com/uds/api/visualization/1.0/ce7a9bd29458c92c2c25b7969aaf2727/ui+en.css" type="text/css" rel="stylesheet">
	<script src="https://www.google.com/uds/api/visualization/1.0/ce7a9bd29458c92c2c25b7969aaf2727/format+en,default+en,ui+en,corechart+en.I.js" type="text/javascript"> </script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Reports</title>

<%

Session session1=SessionHelper.getHibernateSession();
// Configuration cfg=new Configuration();
// cfg.configure("hibernate.cfg.xml");
// SessionFactory factory=cfg.buildSessionFactory();
// Session session1=factory.openSession();
 Transaction tx=session1.beginTransaction();


Query query1=session1.createSQLQuery("SELECT count(CUSTOMERID) FROM CUSTOMER_1C WHERE RETAILERNAME LIKE 'Monica'");
double customerPie1 = Double.parseDouble(query1.uniqueResult().toString());
Query query2=session1.createSQLQuery("SELECT count(CUSTOMERID) FROM CUSTOMER_1C WHERE RETAILERNAME LIKE 'Ross'");
double customerPie2 = Double.parseDouble(query2.uniqueResult().toString());
Query query3=session1.createSQLQuery("SELECT count(CUSTOMERID) FROM CUSTOMER_1C WHERE RETAILERNAME LIKE 'Rajashree'");
double customerPie3 = Double.parseDouble(query3.uniqueResult().toString());
Query query4=session1.createSQLQuery("SELECT count(CUSTOMERID) FROM CUSTOMER_1C WHERE RETAILERNAME LIKE 'Meghna'");
double customerPie4 = Double.parseDouble(query3.uniqueResult().toString());


/*bar part*/
Query query111=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% Jan %'");
double customerNumber1 = Double.parseDouble(query111.uniqueResult().toString());
Query query211=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% Feb %'");
double customerNumber2 = Double.parseDouble(query211.uniqueResult().toString());
Query query311=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% Mar %'");
double customerNumber3 = Double.parseDouble(query311.uniqueResult().toString());
Query query411=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% Apr %'");
double customerNumber4 = Double.parseDouble(query411.uniqueResult().toString());
Query query5=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% May %'");
double customerNumber5 = Double.parseDouble(query5.uniqueResult().toString());
Query query6=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% Jun %'");
double customerNumber6 = Double.parseDouble(query6.uniqueResult().toString());
Query query7=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% Jul %'");
double customerNumber7 = Double.parseDouble(query7.uniqueResult().toString());
Query query8=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% Aug %'");
double customerNumber8 = Double.parseDouble(query8.uniqueResult().toString());
Query query9=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% Sep %'");
double customerNumber9 = Double.parseDouble(query9.uniqueResult().toString());
Query query10=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% Oct %'");
double customerNumber10 = Double.parseDouble(query10.uniqueResult().toString());
Query query11=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% Nov %'");
double customerNumber11 = Double.parseDouble(query11.uniqueResult().toString());
Query query12=session1.createSQLQuery("SELECT COUNT(CUSTOMERID) FROM CUSTOMER_1C WHERE CREATIONDATE LIKE '% Dec %'");
double customerNumber12 = Double.parseDouble(query12.uniqueResult().toString());
 


tx.commit();
SessionHelper.closeHibernateSession(session1);

%>
 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {

        var dataPie = google.visualization.arrayToDataTable([
          ['Retailer name', 'Number of customers'],
          ['Monica',     <%=customerPie1%>],
          ['Ross',     <%=customerPie2%>],
          ['Rajashree',  		<%=customerPie3%>],
		  ['reni',  		<%=customerPie4%>]
        ]);
        
        
        var dataBar = google.visualization.arrayToDataTable([
                                                             ['Month', 'Number of customers'],
                                                             ['January',     <%=customerNumber1%>],
                                                             ['February',  		<%=customerNumber2%>],
                                                             ['March',  		<%=customerNumber3%>],
                                                             ['April',     <%=customerNumber4%>],
                                                             ['May',  		<%=customerNumber5%>] ,
                                                             ['June',  		<%=customerNumber6%>] ,
                                                             ['July',  		<%=customerNumber7%>] ,
                                                             ['August',  		<%=customerNumber8%>] ,
                                                             ['September',  		<%=customerNumber9%>] ,
                                                             ['October',  		<%=customerNumber10%>] ,
                                                             ['November',  		<%=customerNumber11%>] ,
                                                             ['December',  		<%=customerNumber12%>] 
                                                           ]);

		
		

        var optionsPie = {
          title: 'Retailer wise customer count',
          is3D: true
        };
        
        var optionsBar = {
                title: 'Customers per Month',
                colors: ['blue'],
      		  width: 600,
      		  height: 400,
                bar: {groupWidth: "95%"},
                legend: { position: "none" },
                is3D: true,
      		  isStacked: true,
              };

        var chart = new google.visualization.PieChart(document.getElementById('dompiechart1'));

        chart.draw(dataPie, optionsPie);
        
        var chart = new google.visualization.ColumnChart(document.getElementById('dombarchart1'));

        chart.draw(dataBar, optionsBar);
      }
    </script>





</head>
<body> 
		<%@include file="Header.jsp"%>
<br/>
<table>
<tr>
							<!-- <h3>OPERATOR</h3> -->
	<td>&nbsp</td>						

   <td>	 <div id="dompiechart1" style="width: 550px; height: 400px;"></div> </td>
   
    <!-- <h3>BAR CHART FOR OPERATOR</h3> -->
							
							

   <td>	  <div id="dombarchart1" style="width: 550px; height: 400px;"></div> </td>
   

	
</tr>
</table>

<br/>
<hr/>
<div align="center">
			<s:url var="home" action="Home" ></s:url>
      			 <s:a href="%{#home}">Back </s:a></div>
      			 <%@include file="Footer.jsp"%>
      			 					
							

   	 
   
    

	


</body>
</html>