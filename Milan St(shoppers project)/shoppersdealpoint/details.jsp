<%@page import="java.sql.Connection"%>
<%@page import="dao.MySqlCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
  <%  
Integer pid=Integer.parseInt(request.getParameter("pid")); 
String query="select * from product where pid="+pid;
Connection con=new MySqlCon().mysqlCon(); 
Statement stmt= con.createStatement();

ResultSet rs =stmt.executeQuery(query);
while(rs.next())
{
	 
	Integer price1=Integer.parseInt(rs.getString(7));
	 
	price1=price1+(price1*10)/100;
	 
	
	 
	Integer pid1=rs.getInt(1);
	pid1=pid1+1;
	
	 
%>	 		 
<style>
#items li {float:left;width:195px;padding:10px;height:auto;position:relative; border:2px solid silver; display:inline-block}
	
	#items li:hover { border:2px solid #FF9F01;}
	#items a.title {height:18px; color:#000000; margin:10px;}
		#items a img {width:170px;border:1px solid #fff;-webkit-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);-moz-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2); border-radius:5px; }
		
	#items strong {border-bottom: 1px solid #ececec;display:block;padding-bottom:5px; color:#2797E8;}
		#items strong em {float:right;font-weight:normal;font-size:0.833em; }
        </style>
        <div class="container">
        	<div class="row" style="margin:10px">
 
 <ul id="items">
        <li>
<center><a class="aimg" href="moreinfo.jsp?pid=<%=rs.getString("pid")%>"><img src="<%=rs.getString(5)%>" style=" width:180px;  border-radius:2px;" alt="Elegant evening Dress"/></a></center>
            <a class="title" style="color:#007CCB; margin-top:5px;" href="moreinfo.jsp?pid=<%=rs.getString("pid")%>"><%=rs.getString("pname")%></a>           
            <div style="color:green; display:block">Availabilty:&nbsp;<%=rs.getInt(8)%> in Stock</div>
            <div  style="display:block; font-size:14px; font-weight:500;"><span class="reduce fa fa-inr">&nbsp<%=price1 %></span> <span class="price fa fa-inr"> <%=rs.getString(7) %></span>       
            </div>
           <a href="AddCart1?pid=<%=rs.getInt(1)%>" <button class="btn btn-primary" style="margin-top:10px;"><i class="fa fa-cart-plus">&nbsp Add To Cart </i> </button> </a>
        
 
          
      </li>
      </ul>
 
           
  <%} %>
  </div>
</div>   
