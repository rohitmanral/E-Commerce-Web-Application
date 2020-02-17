<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>About Us</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
</head>
  
  <body>
    <table align="center">
    	<tr>
    	<td><%@include file="header.html" %></td>
    	</tr>
    	<tr>
    	<td>
    	<h1>Content</h1>
    	</td>
    	</tr>
    	<tr>
    		<td><%@include file="footer.html" %></td>
    	</tr>
    </table>
  </body>
</html>
