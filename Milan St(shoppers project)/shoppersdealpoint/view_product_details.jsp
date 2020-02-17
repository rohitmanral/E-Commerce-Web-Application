<%@page import="java.sql.Connection"%>
<%@page import="dao.MySqlCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%! int i=1,pid1[]=new int[12]; %>

<div class="container">
	<div class="row">
 <%

 Connection connection=new MySqlCon().mysqlCon();
ResultSet rs;
int price=0 ,totalItems=0;
Statement stmt= connection.createStatement();  
int pcid=Integer.parseInt(request.getParameter("pcid"));
int sid=Integer.parseInt(request.getParameter("sid"));
rs=stmt.executeQuery("select * from product where pcid="+pcid+" and sid="+sid+"");
 
while(rs.next())
{
	Integer price1=Integer.parseInt(rs.getString(7));
	price1=price1+(price1*10)/100;
	Integer pid1=rs.getInt(1);
	pid1=pid1+1; 
%>
<div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=<%=(--pid1)%>"><img src="<%=rs.getString(5)%>" alt="Elegant evening Dress"/></a></center>
            <a href="moreinfo.jsp?pid=<%=pid1%>" class="title"><%=rs.getString(4)%></a>           
            <div style="color:green; display:block">Availabilty:&nbsp;<%=rs.getInt(8)%> in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp<%=price1 %></span> <span class="price fa fa-inr"> <%=rs.getString(7) %></span>       
            </div>
            <a href="AddCart1?pid=<%=rs.getInt(1)%>" <button class="btn btn-primary" style="margin-top:2px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
            
            
            
            
            </div>
      </div>
   
  <%} %>
 </div>
  </div>

