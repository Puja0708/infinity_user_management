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
<link rel="stylesheet" type="text/css"
	href="<s:url value="/css/bootstrap.min.css"/>">
<script type="text/javascript" src=" <s:url value="/js/jquery.js"/>"></script>
<script type="text/javascript"
	src=" <s:url value="/js/bootstrap.min.js"/>"></script>
<script type="text/javascript">
			google.load('visualization', '1.0', {'packages':['corechart']});  // The second script loads the Google Visualization and chart libraries..
			google.setOnLoadCallback(drawChart);
     // ... draw the chart...
	</script><script src="https://www.google.com/uds/?file=visualization&v=1.0&packages=corechart" type="text/javascript"></script><link href="https://www.google.com/uds/api/visualization/1.0/ce7a9bd29458c92c2c25b7969aaf2727/ui+en.css" type="text/css" rel="stylesheet">
	<script src="https://www.google.com/uds/api/visualization/1.0/ce7a9bd29458c92c2c25b7969aaf2727/format+en,default+en,ui+en,corechart+en.I.js" type="text/javascript"> </script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Operator Report</title>

<%

/* Pie Part */

Session session1=SessionHelper.getHibernateSession();

// Configuration cfg=new Configuration();
// cfg.configure("hibernate.cfg.xml");
// SessionFactory factory=cfg.buildSessionFactory();
// Session session1=factory.openSession();

Transaction tx=session1.beginTransaction();
Query query1=session1.createSQLQuery("SELECT count(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPERATORSHIFTSTART LIKE '%8am%'");
double operatornumberpie1 = Double.parseDouble(query1.uniqueResult().toString());
Query query2=session1.createSQLQuery("SELECT count(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPERATORSHIFTSTART LIKE '%2pm%'");
double operatornumberpie2 = Double.parseDouble(query2.uniqueResult().toString());
Query query3=session1.createSQLQuery("SELECT count(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPERATORSHIFTSTART LIKE '%8pm%'");
double operatornumberpie3 = Double.parseDouble(query3.uniqueResult().toString());
Query query4=session1.createSQLQuery("SELECT count(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPERATORSHIFTSTART LIKE '%11pm%'");
double operatornumberpie4 = Double.parseDouble(query4.uniqueResult().toString());

/*Bar Part*/
Query query11=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% Jan %'");
double operatorNumberBar1 = Double.parseDouble(query11.uniqueResult().toString());
Query query22=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% Feb %'");
double operatorNumberBar2 = Double.parseDouble(query22.uniqueResult().toString());
Query query33=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% Mar %'");
double operatorNumberBar3 = Double.parseDouble(query33.uniqueResult().toString());
Query query44=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% Apr %'");
double operatorNumberBar4 = Double.parseDouble(query44.uniqueResult().toString());
Query query55=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% May %'");
double operatorNumberBar5 = Double.parseDouble(query55.uniqueResult().toString());
Query query6=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% Jun %'");
double operatorNumberBar6 = Double.parseDouble(query6.uniqueResult().toString());
Query query7=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% Jul %'");
double operatorNumberBar7 = Double.parseDouble(query7.uniqueResult().toString());
Query query8=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% Aug %'");
double operatorNumberBar8 = Double.parseDouble(query8.uniqueResult().toString());
Query query9=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% Sep %'");
double operatorNumberBar9 = Double.parseDouble(query9.uniqueResult().toString());
Query query10=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% Oct %'");
double operatorNumberBar10 = Double.parseDouble(query10.uniqueResult().toString());
Query query111=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% Nov %'");
double operatorNumberBar11 = Double.parseDouble(query111.uniqueResult().toString());
Query query12=session1.createSQLQuery("SELECT COUNT(OPERATORID) FROM TBL_OPERATOR_1C WHERE OPEARTORCREATION LIKE '% Dec %'");
double operatorNumberBar12 = Double.parseDouble(query12.uniqueResult().toString());
 


tx.commit();
SessionHelper.closeHibernateSession(session1);

%>
 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {

        var dataPie = google.visualization.arrayToDataTable([
          ['Shift time', 'Number of operators'],
          ['Shift 1',     <%=operatornumberpie1%>],
          ['Shift 2',     <%=operatornumberpie2%>],
          ['Shift 3',  		<%=operatornumberpie3%>],
		  ['Shift 4',  		<%=operatornumberpie4%>]
        ]);
        
        
        
        var dataBar = google.visualization.arrayToDataTable([
                                                          ['Month', 'Number of operators'],
                                                          ['January',     <%=operatorNumberBar1%>],
                                                          ['February',  		<%=operatorNumberBar2%>],
                                                          ['March',  		<%=operatorNumberBar3%>],
                                                          ['April',     <%=operatorNumberBar4%>],
                                                          ['May',  		<%=operatorNumberBar5%>] ,
                                                          ['June',  		<%=operatorNumberBar6%>] ,
                                                          ['July',  		<%=operatorNumberBar7%>] ,
                                                          ['August',  		<%=operatorNumberBar8%>] ,
                                                          ['September',  		<%=operatorNumberBar9%>] ,
                                                          ['October',  		<%=operatorNumberBar10%>] ,
                                                          ['November',  		<%=operatorNumberBar11%>] ,
                                                          ['December',  		<%=operatorNumberBar12%>] 
                                                        ]);
		
		

        var optionsPie = {
          title: 'Operator and shifts',
          is3D: true
        };
       
        
        
        var optionsBar = {
                title: 'Operators per Month',
                colors: ['blue'],
      		  width: 600,
      		  height: 400,
                bar: {groupWidth: "95%"},
                legend: { position: "none" },
                is3D: true,
      		  isStacked: true,
              };
        
        /* Draw the pie chart */
        var chart = new google.visualization.PieChart(document.getElementById('dompiechart1'));

        chart.draw(dataPie, optionsPie);
        
        /*Draw the bar chart*/
        var chart = new google.visualization.ColumnChart(document.getElementById('dombarchart2'));

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
							
							

   <td>	 <div id="dombarchart2" style="width: 550px; height: 400px;"></div> </td>
   

	
</tr>
</table>

<br/>
<hr/>
<div align="center">
			<s:url var="home" action="Home" ></s:url>
      			 <s:a href="%{#home}">Back </s:a>
      			 <%@include file="Footer.jsp"%>
      			 </div>
</body>
</html>