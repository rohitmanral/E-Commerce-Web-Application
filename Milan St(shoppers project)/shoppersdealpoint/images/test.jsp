
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dao.MySqlCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Apple Mobile</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/windowopen.js"></script>
<script type="text/javascript" src="js/boxOver.js"></script>
</head>
<body>
<%

ArrayList itemlist=(ArrayList)session.getAttribute("cartID");
Connection connection=new MySqlCon().mysqlCon();
ResultSet rs;
int price=0 ,totalItems=0;

Statement stmt= connection.createStatement();
if(itemlist!=null)
{
	totalItems = itemlist.size();
	for(int i=0 ; i< itemlist.size();i++){
		
		rs=stmt.executeQuery("select * from product where pid="+itemlist.get(i));
		while(rs.next()){
		price=price+Integer.parseInt(rs.getString(7));
		}				
		}
}
%>
<div id="main_content">
   
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <div class="left_content">
      <div class="title_box">Categories</div>
      <ul class="left_menu">
       <li class="odd"><a href="apple_mobiles.jsp">MOBILES</a></li>
        <li class="even"><a href="samsung_mobiles.jsp">Samsung</a></li>
        <li class="odd"><a href="nokia_mobiles.jsp">Nokia</a></li>
        <li class="even"><a href="blackberry_mobiles.jsp">Blackberry</a></li>
        <li class="odd"><a href="apple_mobiles.jsp">Apple</a></li>
        <li class="even"><a href="hp_laptops.jsp">LAPTOPS &amp; NOTEBOOKS</a></li>
        <li class="odd"><a href="dell_laptops.jsp">Dell</a></li>
        <li class="even"><a href="hp_laptops.jsp">Hp</a></li>
        <li class="odd"><a href="sony_laptops.jsp">Sony</a></li>
        <li class="even"><a href="samsung_laptops.jsp">Samsung</a></li>
        <li class="odd"><a href="canon_camera.jsp">CAMERAS &amp; RECORDS</a></li>
        <li class="even"><a href="sony_camera.jsp">Sony</a></li>
		<li class="odd"><a href="canon_camera.jsp">Canon &amp; Nikon</a></li>
		<li class="even"><a href="philips_camera.jsp">Philips</a></li>
		<li class="odd"><a href="desktops.jsp">DESKTOPS</a></li>
      </ul>
      <div class="title_box">Special Products</div>
      <div class="border_box">
        <div class="product_title"><a href="detail.jsp?pid=46">Apple  800 I Phone</a></div>
        <div class="product_img"><a href="detail.jsp?pid=46"><img src="images/applemobiles/apple11.jpg" alt="Apple -  - Smartphone - I Phone - Unlocked - GSM - WCDMA - 3.7 inch screen - Quad-band - 8 megapixel camera - 13 hour talk time" border="0" height="92" width="94" /></a></div>
        <div class="prod_price"><span class="reduce">31680 RS</span> <span class="price">28800 RS</span></div>
      </div>
      <div class="title_box">Newsletter</div>
      <div class="border_box">
        <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
        <a href="signup.jsp" class="join">join</a> </div>
      <div class="banner_adds"> <a href="signup.jsp"><img src="images/bann2.jpg" alt="" border="0" /></a> </div>
    </div>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">Latest Products</div>
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"><a href="detail.jsp?pid=36">Apple  521</a></div>
          <div class="product_img"><a href="detail.jsp?pid=36"><img src="images/applemobiles/apple1.jpg" alt="Apple -  - Smart- I Phone - Unlocked - GSM - WCDMA - 3.7 inch screen - Quad-band - 8 megapixel camera - 13 hour talk time" border="0" height="92" width="94" /></a></div>
          <div class="prod_price"><span class="reduce">23100 RS</span> <span class="price">21000 RS</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="AddCart?pid=36" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="SpecialCart?pid=36" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="detail.jsp?pid=36" class="prod_details">details</a> </div>
      </div>
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"><a href="detail.jsp?pid=37">Apple  920 </a></div>
          <div class="product_img"><a href="detail.jsp?pid=37"><img src="images/applemobiles/apple2.jpg" alt="Apple  920 I Phone -4.5 inch screen - Quad-band - 8.7 megapixel camera - With Front-facing Camera - 17 hour talk time" border="0" height="92" width="94" /></a></div>
          <div class="prod_price"><span class="reduce">31680 RS</span> <span class="price">28800 RS</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="AddCart?pid=37" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="SpecialCart?pid=37" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="detail.jsp?pid=37" class="prod_details">details</a> </div>
      </div>
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"><a href="detail.jsp?pid=38">Apple iPhone 4 (White, 8GB)</a></div>
          <div class="product_img"><a href="detail.jsp?pid=38"><img src="images/applemobiles/apple3.jpg" alt="
Apple iPhone 4 (White, 8GB)" border="0" height="92" width="94" /></a></div>
          <div class="prod_price"><span class="reduce">35000 RS</span> <span class="price">27000 RS</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="AddCart?pid=38" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="SpecialCart?pid=38" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="detail.jsp?pid=38" class="prod_details">details</a> </div>
      </div>
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"><a href="detail.jsp?pid=39">Apple X2 Cellular phone</a></div>
          <div class="product_img"><a href="detail.jsp?pid=39"><img src="images/applemobiles/apple4.jpg" alt="Apple X2 Cellular phone" border="0" height="92" width="94"/></a></div>
          <div class="prod_price"><span class="reduce">24200 RS</span> <span class="price">22000 RS</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="AddCart?pid=39" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="SpecialCart?pid=39" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="detail.jsp?pid=39" class="prod_details">details</a> </div>
      </div>
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"><a href="detail.jsp?pid=40">Apple Slide</a></div>
          <div class="product_img"><a href="detail.jsp?pid=40"><img src="images/applemobiles/apple5.jpg" alt="Apple Slider" border="0" height="92" width="94" /></a></div>
          <div class="prod_price"><span class="reduce">34760 RS</span> <span class="price">31600 RS</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="AddCart?pid=40" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="SpecialCart?pid=40" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="detail.jsp?pid=40" class="prod_details">details</a> </div>
      </div>
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"><a href="detail.jsp?pid=41">Apple  710 IPhone</a><a href="detail.jsp"></a></div>
          <div class="product_img"><a href="detail.jsp?pid=41"><img src="images/applemobiles/apple6.jpg" alt="Apple  710 IPhone " border="0" height="92" width="94" /></a></div>
          <div class="prod_price"><span class="reduce">18700 RS</span> <span class="price">17000 RS</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="AddCart?pid=41" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="SpecialCart?pid=41" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="detail.jsp?pid=41" class="prod_details">details</a> </div>
      </div>
      <div class="center_title_bar">Recommended Products</div>
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"><a href="detail.jsp?pid=42">Apple Tab </a></div>
          <div class="product_img"><a href="detail.jsp?pid=42"><img src="images/applemobiles/apple7.jpg" alt="Window Based Tab" border="0" height="92" width="94" /></a></div>
          <div class="prod_price"><span class="reduce">33000 RS</span> <span class="price">30000 RS</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="AddCart?pid=42" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="SpecialCart?pid=42" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="detail.jsp?pid=42" class="prod_details">details</a> </div>
      </div>
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"><a href="detail.jsp?pid=43">Apple C5 </a></div>
          <div class="product_img"><a href="detail.jsp?pid=43"><img src="images/applemobiles/apple8.jpg" alt="Apple c5 8Gb smartphone" border="0"  height="92" width="94"/></a></div>
          <div class="prod_price"><span class="reduce">14190 RS</span> <span class="price">12900 RS</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="AddCart?pid=43" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="SpecialCart?pid=43" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="detail.jsp?pid=43" class="prod_details">details</a> </div>
      </div>
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"><a href="detail.jsp?pid=44">Apple Classic Asha </a></div>
          <div class="product_img"><a href="detail.jsp?pid=44"><img src="images/applemobiles/apple9.jpg" alt="Apple Classic" border="0" height="92" width="94" /></a></div>
          <div class="prod_price"><span class="reduce">35200 RS</span> <span class="price">32000 RS</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="AddCart?pid=44" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="SpecialCart?pid=44" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="detail.jsp?pid=44" class="prod_details">details</a> </div>
      </div>
    </div>
    <!-- end of center content -->
    <div class="right_content">
      <div class="shopping_cart">
        <div class="cart_title">Shopping cart</div>
        <div class="cart_details"> 
			
							
						<%=totalItems%>
					items <br />
          <span class="border_cart"></span> Total: <span class="price"><%=price %> Rs</span> </div>
        <div class="cart_icon"><a href="viewCart.jsp" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img src="images/shoppingcart.png" alt="" width="48" height="48" border="0" /></a></div>
      </div>
      <div class="title_box">What’s new</div>
      <div class="border_box">
        <div class="product_title"><a href="detail.jsp?pid=45">Apple E71 Smartphone</a></div>
        <div class="product_img"><a href="detail.jsp?pid=45"><img src="images/applemobiles/apple10.jpg" alt="Apple - Smartphone - Symbian - Unlocked - With QWERTY Keyboard - GSM - WCDMA - 2.4 inch screen - Quad-band - 3.2 megapixel camera - With Front-facing Camera - 4.5 hour talk time" border="0" height="92" width="94" /></a></div>
        <div class="prod_price"><span class="reduce">23100 RS</span> <span class="price">21000 RS</span></div>
      </div>
      <div class="title_box">Manufacturers</div>
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
      <div class="banner_adds"> <a href="#"><img src="images/bann1.jpg" alt="" border="0" /></a> </div>
    </div>
    <!-- end of right content -->
  </div>
  </body>
</html>
