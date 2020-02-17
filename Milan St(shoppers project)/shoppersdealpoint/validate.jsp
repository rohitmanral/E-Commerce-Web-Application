<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dao.MySqlCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>


<% 
try
{

if(session.getAttribute("user")!=null)
{	
 
 session.getAttribute("user");
Integer userid=(Integer)session.getAttribute("userid");
response.sendRedirect("checkOut.jsp");

 }
 else
 {
response.sendRedirect("signup.jsp"); 
 }
}
catch(Exception e)
{
out.println(e);
}
%>
                
 