<!doctype html>
<head>
<title>Home</title>
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

<body>
 				<%@include file="header.jsp" %>
                <%
 
String emailid=request.getParameter("email");
		//String pass=request.getParameter("pass");
		String address=request.getParameter("address");
		String ship_address=request.getParameter("ship_address");
		String landmark=request.getParameter("landmark");
		String city=request.getParameter("city");
		String areacode=request.getParameter("areacode");
		String state=request.getParameter("state");
		out.println("<h5><font color='blue'>");	
		session.setAttribute("email",emailid);
		session.setAttribute("address",address);
		session.setAttribute("ship_address",ship_address);
		session.setAttribute("landmark",landmark);
		session.setAttribute("city",city);
		session.setAttribute("areacode",areacode);
		session.setAttribute("state",state);
		
		
		%>
                </br>
                
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                
  <table class="table table-hover " style="color:black; border:2px solid #1296DF;">  
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
 
  <% out.println("<a href='checkOut.jsp'><font color=red>EditAddress</font></a>");
  
  %> 
     
  

</table>
<form action="CheckOut" method="post">





<input type="submit" value="Cash On Delivery" class="btn btn-danger">
<input type="submit" value="Pay Now" class="btn btn-success pull-right">

</form>  

</div>

</br>




  
  
			<%@include file="footer.html" %>
 </body>
</html>
