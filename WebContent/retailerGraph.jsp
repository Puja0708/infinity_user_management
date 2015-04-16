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
<title>Insert title here</title>

<%
Session session1=SessionHelper.getHibernateSession();
/* Configuration cfg=new Configuration();
cfg.configure("hibernate.cfg.xml");
SessionFactory factory=cfg.buildSessionFactory();
Session session1=factory.openSession(); */

Transaction tx=session1.beginTransaction();


/*Pie chart part */

Query query1=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Andhra Pradesh%'");
double retailernumberPie1 = Double.parseDouble(query1.uniqueResult().toString()); 


Query query2=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Arunachal Pradesh%'");
double retailernumberPie2 = Double.parseDouble(query2.uniqueResult().toString());
Query query3=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Assam%'");
double retailernumberPie3 = Double.parseDouble(query3.uniqueResult().toString());
Query query4=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Bihar%'");
double retailernumberPie4 = Double.parseDouble(query4.uniqueResult().toString());
Query query5=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Chhattisgarh%'");
double retailernumberPie5 = Double.parseDouble(query5.uniqueResult().toString());
Query query6=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Goa%'");
double retailernumberPie6 = Double.parseDouble(query6.uniqueResult().toString());
Query query7=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Gujarat%'");
double retailernumberPie7 = Double.parseDouble(query7.uniqueResult().toString());
Query query8=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Haryana%'");
double retailernumberPie8 = Double.parseDouble(query8.uniqueResult().toString());
Query query9=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Himachal Pradesh%'");
double retailernumberPie9 = Double.parseDouble(query9.uniqueResult().toString());
Query query10=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Jammu & Kashmir%'");
double retailernumberPie10 = Double.parseDouble(query10.uniqueResult().toString()); 


Query query11=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Jharkhand%'");
double retailernumberPie11 = Double.parseDouble(query11.uniqueResult().toString());

Query query12=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Karnataka%'");
double retailernumberPie12 = Double.parseDouble(query12.uniqueResult().toString());
Query query13=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Kerala%'");
double retailernumberPie13 = Double.parseDouble(query13.uniqueResult().toString());

Query query14=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Madhya Pradesh%'");
double retailernumberPie14 = Double.parseDouble(query14.uniqueResult().toString());
Query query15=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Maharashtra%'");
double retailernumberPie15 = Double.parseDouble(query15.uniqueResult().toString());
Query query16=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Manipur%'");
double retailernumberPie16 = Double.parseDouble(query16.uniqueResult().toString());
Query query17=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Meghalaya%'");
double retailernumberPie17 = Double.parseDouble(query17.uniqueResult().toString());
Query query18=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Mizoram%'");
double retailernumberPie18 = Double.parseDouble(query18.uniqueResult().toString());
Query query19=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Nagaland%'");
double retailernumberPie19 = Double.parseDouble(query19.uniqueResult().toString());
Query query20=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Orissa%'");
double retailernumberPie20 = Double.parseDouble(query20.uniqueResult().toString());
Query query21=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Punjab%'");
double retailernumberPie21 = Double.parseDouble(query21.uniqueResult().toString());
Query query22=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Rajasthan%'");
double retailernumberPie22 = Double.parseDouble(query22.uniqueResult().toString());
Query query23=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Sikkim%'");
double retailernumberPie23 = Double.parseDouble(query23.uniqueResult().toString());
Query query24=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Tamil Nadu%'");
double retailernumberPie24 = Double.parseDouble(query24.uniqueResult().toString());
Query query25=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Telangana%'");
double retailernumberPie25 = Double.parseDouble(query25.uniqueResult().toString());
Query query26=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Tripura%'");
double retailernumberPie26 = Double.parseDouble(query26.uniqueResult().toString());
Query query27=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Uttar Pradesh%'");
double retailernumberPie27 = Double.parseDouble(query27.uniqueResult().toString());
Query query28=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%Uttarakhand%'");
double retailernumberPie28 = Double.parseDouble(query28.uniqueResult().toString());
Query query29=session1.createSQLQuery("SELECT count(RETAILERID) FROM RETAILER_1C WHERE RETAILERSTATE LIKE '%West Bengal%'");
double retailernumberPie29 = Double.parseDouble(query29.uniqueResult().toString());


/*Bar chart part */

Query query111=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% Jan %'");
double retailerNumberBar1 = Double.parseDouble(query111.uniqueResult().toString());
Query query211=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% Feb %'");
double retailerNumberBar2 = Double.parseDouble(query211.uniqueResult().toString());
Query query311=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% Mar %'");
double retailerNumberBar3 = Double.parseDouble(query311.uniqueResult().toString());
Query query411=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% Apr %'");
double retailerNumberBar4 = Double.parseDouble(query411.uniqueResult().toString());
Query query511=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% May %'");
double retailerNumberBar5 = Double.parseDouble(query511.uniqueResult().toString());
Query query611=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% Jun %'");
double retailerNumberBar6 = Double.parseDouble(query611.uniqueResult().toString());
Query query711=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% Jul %'");
double retailerNumberBar7 = Double.parseDouble(query711.uniqueResult().toString());
Query query811=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% Aug %'");
double retailerNumberBar8 = Double.parseDouble(query811.uniqueResult().toString());
Query query911=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% Sep %'");
double retailerNumberBar9 = Double.parseDouble(query911.uniqueResult().toString());
Query query1011=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% Oct %'");
double retailerNumberBar10 = Double.parseDouble(query1011.uniqueResult().toString());
Query query1111=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% Nov %'");
double retailerNumberBar11 = Double.parseDouble(query1111.uniqueResult().toString());
Query query1211=session1.createSQLQuery("SELECT COUNT(RETAILERID) FROM RETAILER_1C WHERE RETAILERCREATIONDATE LIKE '% Dec %'");
double retailerNumberBar12 = Double.parseDouble(query1211.uniqueResult().toString());
 



tx.commit();
SessionHelper.closeHibernateSession(session1);

%>
 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {

        var dataPie = google.visualization.arrayToDataTable([
          ['Name of the state', 'Number of retailers'],
          ['Andhra Pradesh',     <%=retailernumberPie1%>],
          ['Arunachal Pradesh',     <%=retailernumberPie2%>],
          ['Assam',  		<%=retailernumberPie3%>],
		  ['Bihar',  		<%=retailernumberPie4%>],
		  ['Chhattisgarh',     <%=retailernumberPie5%>],
          ['Goa',     <%=retailernumberPie6%>],
          ['Gujarat',  		<%=retailernumberPie7%>],
		  ['Haryana',  		<%=retailernumberPie8%>],
		  ['Himachal Pradesh',     <%=retailernumberPie9%>],
          ['Jammu & Kashmir',     <%=retailernumberPie10%>],
          ['Jharkhand',  		<%=retailernumberPie11%>],
		  ['Karnataka',  		<%=retailernumberPie12%>],
		  ['Kerala',     <%=retailernumberPie13%>],
          ['Madhya Pradesh',     <%=retailernumberPie14%>],
          ['Maharashtra',  		<%=retailernumberPie15%>],
		  ['Manipur',  		<%=retailernumberPie16%>],
		  ['Meghalaya',     <%=retailernumberPie17%>],
          ['Mizoram',     <%=retailernumberPie18%>],
          ['Nagaland',  		<%=retailernumberPie19%>],
		  ['Orissa',  		<%=retailernumberPie20%>],
		  ['Punjab',     <%=retailernumberPie21%>],
          ['Rajasthan',     <%=retailernumberPie22%>],
          ['Sikkim',  		<%=retailernumberPie23%>],
		  ['Tamil Nadu',  		<%=retailernumberPie24%>],
		  ['Telangana',     <%=retailernumberPie25%>],
          ['Tripura',     <%=retailernumberPie26%>],
          ['Uttar Pradesh',  		<%=retailernumberPie27%>],
		  ['Uttarakhand',  		<%=retailernumberPie28%>],
        ]);
        
        
        var dataBar = google.visualization.arrayToDataTable([
                                                          ['Month', 'Number of operators'],
                                                          ['January',     <%=retailerNumberBar1%>],
                                                          ['February',  		<%=retailerNumberBar2%>],
                                                          ['March',  		<%=retailerNumberBar3%>],
                                                          ['April',     <%=retailerNumberBar4%>],
                                                          ['May',  		<%=retailerNumberBar5%>] ,
                                                          ['June',  		<%=retailerNumberBar6%>] ,
                                                          ['July',  		<%=retailerNumberBar7%>] ,
                                                          ['August',  		<%=retailerNumberBar8%>] ,
                                                          ['September',  		<%=retailerNumberBar9%>] ,
                                                          ['October',  		<%=retailerNumberBar10%>] ,
                                                          ['November',  		<%=retailerNumberBar11%>] ,
                                                          ['December',  		<%=retailerNumberBar12%>] 
                                                        ]);
        
        
        
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
		
		

        var optionsPie = {
          title: 'State wise count of retailers',
          is3D: true
        };

        
        /*Pie Chart*/
        var chart = new google.visualization.PieChart(document.getElementById('dompiechart1'));

        chart.draw(dataPie, optionsPie);
        
        /*Bar chart*/
        var chart = new google.visualization.ColumnChart(document.getElementById('dombarchart3'));

        chart.draw(dataBar, optionsBar);
        
      }
    </script>





</head>
<body> 
<%@include file="Header.jsp"%>
							<br/>
<table>
<tr>
							
	<td>&nbsp</td>						

   <td>	 <div id="dompiechart1" style="width: 550px; height: 400px;"></div> </td>
   
   <td>	
   
    <div id="dombarchart3" style="width: 550px; height: 400px;"></div> </td>
   
   
							

  
   
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