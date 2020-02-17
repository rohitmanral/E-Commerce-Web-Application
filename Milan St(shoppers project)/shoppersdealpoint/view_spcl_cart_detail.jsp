
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.MySqlCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%! int price=0; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>View Special Cartl</title>
		<meta http-equiv="Content-Type"
			content="text/html; charset=windows-1252" />
		<link rel="stylesheet" type="text/css" href="style.css" />
		<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
		<script type="text/javascript" src="js/windowopen.js">
</script>
		<script type="text/javascript" src="js/boxOver.js">
</script>
	</head>
	<body>
	<% ArrayList spcl_itemlist = (ArrayList) session.getAttribute("spcl_CartID"); 
	   Connection connection=new MySqlCon().mysqlCon();
	   Statement stmt=connection.createStatement();
	 // out.print("connection::::"+connection);
	   
	%>
	 
			<div class="center_content">
				<div class="center_title_bar">
					Cart Details
				</div>
				<%
				
				if(spcl_itemlist != null){
				ResultSet rs;
				//Integer pid[]=new Integer[itemlist.size()];
					for(int i=0 ; i< spcl_itemlist.size();i++){
						
						//pid[i]=(Integer)itemlist.get(i);<%=itemlist.get(i) 
						rs=stmt.executeQuery("select * from product where pid="+spcl_itemlist.get(i));
						while(rs.next())
						{
						//out.print(rs.getInt(1) +".."+rs.getString(5));
						price=price+Integer.parseInt(rs.getString(7));
						%>
						
						 <div class="cart_data">
						   <table width="100%" border="0" height="50" style="font-family: Georgia, 'Times New Roman', Times, serif;">
						   	
						   	<tr style="border-top: grey solid thin; border-bottom: grey solid thin; "  >
						   	<th width="10%" >Special_Product</th><th width="27%">Description</th><th width="30%">Product_Model</th><th width="20%">Quantity</th><th width="28%">SubTotals</th>
						   	</tr>
                             <tr style="border-bottom: grey solid thin;" > 
                               <td><img src="<%=rs.getString(5)%>" alt="<%=rs.getString(6)%>" height="92" width="80" ></td>
                               <td><%=rs.getString(6)%></td>
                               <td><%=rs.getString(9)%></td>
                               <td><%=rs.getInt(8)%></td>
                               <td><%=rs.getString(7)%></td>
                               <td><input type="button" value="Delete" align="middle" onclick="window.location.href='DeleteSpecialCart?pid=<%=rs.getInt(1) %>';"/></td>
                             </tr>
                           </table>
						  </div>
						 
						 <%	
						}				
						}%>
						<br/>
						<br/>
						
						 <table width="100%" border="0" align="center" >
							<tr > 
							<td><strong>Total Payable Amountfor specialCart ::</strong><%=price %></td>
   							<td align="right"><input name="btnContinue" type="button" id="btnContinue" value="&lt;&lt; Continue Shopping" onClick="window.location.href='index.jsp';" class="box"></td>
							<td align="left"><input name="btnCheckout" type="button" id="btnCheckout" value="Proceed To Checkout &gt;&gt;" onClick="window.location.href='checkOut.jsp';" class="box"></td>
  
 							</tr>
							</table>
						<%
				}
				
				 %>
			
				<div class="center_title_bar">
					Shilping Details
				</div>
	  </div>
			<!-- end of center content -->
			<div class="right_content" >
				<div class="shopping_cart">
					<div class="cart_title">
						Shopping cart
					</div>
					<div class="cart_details">
						<%
							
							int total_spcl_Items = 0;
							if (spcl_itemlist != null) {
								total_spcl_Items = spcl_itemlist.size();
							}
							out.print("Special Items::"+total_spcl_Items);
						%>
						items
						<br />
						<span class="border_cart"></span> Total: <span class="price"><%=price %></span>
					</div>
					<div class="cart_icon">
						<a href="viewCart.jsp" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img
								src="images/shoppingcart.png" alt="" width="48" height="48"
								border="0" />
						</a>
					</div>
				</div>
				<div class="title_box">What’s new</div>
				<div class="border_box" >
					<div class="product_title"><a href="detail.jsp?pid=22">Nokia E-71 Smartphone</a></div>
					<div class="product_img"><a href="detail.jsp?pid=22"><img src="images/nokiamobiles\n10.jpg" alt="Nokia - Smartphone - Symbian - Unlocked - With QWERTY Keyboard - GSM - WCDMA - 2.4 inch screen - Quad-band - 3.2 megapixel camera - With Front-facing Camera - 4.5 hour talk time" border="0" height="92" width="94" /></a></div>
					<div class="prod_price"><span class="reduce">23100 RS</span><span class="price"> 21100 RS</span></div>
				</div>
				<div class="title_box">Manufacturers
				</div>
				<ul class="left_menu">
        <li class="odd"><a href="http://www.sony.com" target="new">Sony</a></li>
        <li class="even"><a href="http://www.samsung.com" target="new">Samsung</a></li>
        <li class="odd"><a href="http://www.lenovo.com" target="new">Lenovo</a></li>
        <li class="even"><a href="http://www.lg.com" target="new">LG</a></li>
        <li class="odd"><a href="http://www.hp.com" target="new">Hp</a></li>
        <li class="even"><a href="http://www.nokia.com" target="new">Nokia</a></li>
        <li class="odd"><a href="http://www.philips.com" target="new">Phillips</a></li>
        <li class="even"><a href="http://www.nikon.com" target="new">Nikon</a></li>
		<li class="odd"><a href="http://www.canon.com" target="new">Canon</a></li>
		<li class="even"><a href="http://www.apple.com" target="new">Apple</a></li>
		<li class="odd"><a href="http://www.acer.com" target="new">Acer</a></li>
		<li class="even"><a href="http://www.dell.com" target="new">Dell</a></li>
      </ul>
				<div class="banner_adds">
					<a href="#"><img src="images/bann1.jpg" alt="" border="0" />
					</a>
				</div>
			</div>
			<!-- end of right content -->
		</div>
	</body>
</html>
