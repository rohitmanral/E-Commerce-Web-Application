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
int pcid=2;
int sid=7;
rs=stmt.executeQuery("select * from product where pcid="+pcid+" and sid="+sid+" LIMIT 4"); 
while(rs.next())
{
	Integer price1=Integer.parseInt(rs.getString(7));
	price1=price1+(price1*10)/100;
	Integer pid1=rs.getInt(1);
	pid1=pid1+1; 
%>

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=<%=rs.getString("pid")%>"><img src="<%=rs.getString(5)%>" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=<%=rs.getString("pid")%>"><%=rs.getString("pname")%></a>           
            <div style="color:green; display:block">Availabilty:&nbsp;<%=rs.getInt(8)%> in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp<%=price1 %></span> <span class="price fa fa-inr"> <%=rs.getString(7) %></span>       
            </div>
           <a href="AddCart1?pid=<%=rs.getInt(1)%>" <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  <%} %>
 
 </div>
 
 	<div class="row">
    
 <%

 Connection connection1=new MySqlCon().mysqlCon();
ResultSet rs1;
int price1=0 ,totalItems1=0;
Statement stmt1= connection1.createStatement();  
int pcid1=3;
int sid1=10;
rs1=stmt1.executeQuery("select * from product where pcid="+pcid1+" and sid="+sid1+" LIMIT 4"); 
while(rs1.next())
{
	Integer price2=Integer.parseInt(rs1.getString(7));
	price2=price2+(price2*10)/100;
	Integer pid2=rs1.getInt(1);
	pid2=pid2+1; 
%>

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=<%=rs1.getString("pid")%>"><img src="<%=rs1.getString(5)%>" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=<%=rs1.getString("pid")%>"><%=rs1.getString("pname")%></a>           
            <div style="color:green; display:block">Availabilty:&nbsp;<%=rs1.getInt(8)%> in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp<%=price2 %></span> <span class="price fa fa-inr"> <%=rs1.getString(7) %></span>       
            </div>
           <a href="AddCart1?pid=<%=rs1.getInt(1)%>" <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  <%} %>
 
 </div>
 
 	<div class="row">
    
 <%

 Connection connection2=new MySqlCon().mysqlCon();
ResultSet rs2;
int price2=0 ,totalItems2=0;
Statement stmt2= connection2.createStatement();  
int pcid2=1;
int sid2=4;
rs2=stmt2.executeQuery("select * from product where pcid="+pcid2+" and sid="+sid2+" LIMIT 4"); 
while(rs2.next())
{
	Integer price3=Integer.parseInt(rs2.getString(7));
	price3=price3+(price3*10)/100;
	Integer pid3=rs2.getInt(1);
	pid3=pid3+1; 
%>

        <div class="col-lg-3 col-md-3">
        <div class="pbox">
            <center><a class="aimg" href="moreinfo.jsp?pid=<%=rs2.getString("pid")%>"><img src="<%=rs2.getString(5)%>" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=<%=rs2.getString("pid")%>"><%=rs2.getString("pname")%></a>           
            <div style="color:green; display:block">Availabilty:&nbsp;<%=rs2.getInt(8)%> in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp<%=price3 %></span> <span class="price fa fa-inr"> <%=rs2.getString(7) %></span>       
            </div>
           <a href="AddCart1?pid=<%=rs2.getInt(1)%>" <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
           
            
            
            
            
            </div>
      </div>
      
   
  <%} %>
 
 </div>
 
 
  </div>