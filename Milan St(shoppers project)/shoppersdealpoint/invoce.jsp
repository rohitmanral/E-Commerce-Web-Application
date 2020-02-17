<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*"  %>
<%@page import="dao.MySqlCon" %>

<!doctype html><head>
<title>Invoice</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="css/style01.css" rel="stylesheet" type="text/css"/>
<link href="css/style01.css" rel="stylesheet" type="text/css"/>
<script src="scripts/jquery-1.11.3.min.js"></script>
<script src="scripts/bootstrap.min.js"></script>
<script type="text/javascript" src="js/boxOver.js"></script>
<style>
.pbox{width:auto; height:300px; text-align:center; border:1px solid black; display:block; margin-top:10px; margin-bottom:10px;}
.pbox .aimg{display:block; text-align:center; vertical-align:top; padding:5px;}
.pbox .aimg img{width:100%; height:190px;}
.title{font-size:16px; color:black; text-align:center; padding:5px; font-weight:500}
.tocart{
width:auto;
height:27px;
display:block;
background:url(images/other/addtocart.gif) no-repeat left;
padding-left:35px;
text-decoration:none;
color:#1c4a52; text-align:left; padding-top:5px; font-weight:bold; margin-top:5px; margin-bottom:5px; margin-left:10px;
}
</style>
</head>
<%@include file="header.jsp"%>

<%
ArrayList itemlist = (ArrayList) session.getAttribute("cartID");  
	   Connection connection=new MySqlCon().mysqlCon(); 
	   Statement stmt=connection.createStatement(); 
	//  out.print("connection::::"+connection); 
	  int price=0;
	    String pdesc=null;
         String img=null;




String orderid=request.getParameter("orderid");
 	
				
				//javax.servlet.http.HttpSession session=request.getSession(false);


String emailid=(String)session.getAttribute("emailid");
String address=(String)session.getAttribute("address");
String ship_address=(String)session.getAttribute("ship_address");
String landmark=(String)session.getAttribute("landmark");
String city=(String)session.getAttribute("city");
String areacode=(String)session.getAttribute("areacode");
String state=(String)session.getAttribute("state");
		  %>
          </br>
                
                <div class="col-lg-2"></div>
                <div class="col-lg-9">
                 
 
<div class="container">
	<div class="row">
<div class="col-lg-10">
<form action="payment_msg.jsp">
	<table class="table table-bordered table-hover" style="color:black; font-size:14px; background:#61C1E4;;">
    
    <tr><th colspan="5">Your Order Id Is.....=<%=orderid%></th></tr>
   <tr>
    <th width="100">Product</th>
    <th width="400px">Discription</th>
    <th width="100">Quantity</th>
    <th width="100">Price</th>
    <th width="100">Total</th>
    
    </tr>
    <tr>

<%
				
  

				if(itemlist != null){
				ResultSet rs=null;
				//Integer pid[]=new Integer[itemlist.size()];
					for(int i=0 ; i< itemlist.size();i++){
						
						//pid[i]=(Integer)itemlist.get(i);<%=itemlist.get(i) 
						rs=stmt.executeQuery("select * from product where pid="+itemlist.get(i));
						while(rs.next())
						{
						//out.print(rs.getInt(1) +".."+rs.getString(5));
						
						price=price+Integer.parseInt(rs.getString(7));
						pdesc=rs.getString(6);
						img=rs.getString(5);

 
						%>
						    <th width="100"><img src=<%=img%> alt="Product"/></th>
    <th width="400px"><%=pdesc%></th>
    <th width="100"><%=rs.getInt(8)%></th>
    <th width="100"><i class="fa fa-inr"></i>&nbsp <%=rs.getString(7)%></th>
    <th width="100"><i class="fa fa-inr"></i>&nbsp  <%=rs.getString(7)%></th>
    </tr>

						 
						 <%	
						}				
						}%>





    <tr>
    <th colspan="3">Total Quntity</th>
    <th colspan="2">&nbsp <%=itemlist.size() %></th>
    
    </tr>

    <tr>
    <th colspan="3">Total Price</th>
    <th colspan="2"><i class="fa fa-inr"></i>&nbsp <%=price %></th>
    
    </tr>
    <tr>
    <th colspan="3">Shipping Charge</th>
    <th colspan="2"><i class="fa fa-inr"></i>&nbsp 50.00</th>
    
    </tr>
    <tr>
    <th colspan="3">Amount Payable</th>
    <th colspan="2"><i class="fa fa-inr"></i>&nbsp <%=price+50 %></th>
    
    </tr>
    
    
    
    </table>
     
	 
						<%
				}
				
				 %>
    
    
</div>
</div>
</div> 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
                
  <table class="table table-hover " style="color:black; border:2px solid #1296DF;" cellspacing="0" cols="0">  
  
  <tr>
  <td class="border_box">Your Email Address</td>
  <td class="border_box"><%=emailid%></td>
  </tr>
  <tr>
  <td class="border_box">Your Address</td>
  <td class="border_box"><%=address%></td>
  </tr>   
  <tr>
  <td class="border_box">Shipping Address</td>
  <td class="border_box"><%=ship_address%></td>
  </tr>  
  <tr>
  <td class="border_box">Landmark</td>
  <td class="border_box"><%=landmark%></td>
  </tr>    
  <tr>
  <td class="border_box">City</td>
  <td class="border_box"><%=city%></td>
  </tr>   
  <tr>
  <td class="border_box">Areacode</td>
  <td class="border_box"><%=areacode%></td>
  </tr> 
  <tr>
  <td class="border_box">State</td>
  <td class="border_box"><%=state%></td>
  </tr> 
 
   </table>
  
   <button class="btn btn-danger pull-left">Finish Shopping>></button>
   
    </form>
   </div>
             
			
<%@include file="footer.html"%>                 
			 
				 
		 