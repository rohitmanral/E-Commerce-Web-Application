<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Contacts</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
</head>
<body>

<div id="main_container">
  <div class="top_bar">
    <div class="top_search">
      <div class="search_text"><a href="">Advanced Search</a></div>
      <input type="text" class="search_input" name="search" />
      <input type="image" src="images/other/search.gif" class="search_bt"/>
    </div>
    <div class="languages">
      <div class="lang_text">Languages:</div>
      <a href="" class="lang"><img src="images/other/en.gif" alt="" border="0" /></a> <a href="" class="lang"><img src="images/other/de.gif" alt="" border="0" /></a> </div>
  </div>
  <div id="header">
    <div id="logo"> <a href=""><img src="images/other/logo.png" alt="" border="0" width="237" height="140" /></a> </div>
    <div class="oferte_content">
      <div class="top_divider"><img src="images/other/header_divider.png" alt="" width="1" height="164" /></div>
      <div class="oferta">
        <div class="oferta_content"> <img src="images/other/laptop.png" width="94" height="92" alt="" border="0" class="oferta_img" />
          <div class="oferta_details">
            <div class="oferta_title">Samsung GX 2004 LM</div>
            <div class="oferta_text"> </div>
            <!-- <a href="" class="details">admin</a> --> </div>
        </div>
        <div class="oferta_pagination"> <span class="current">1</span> <a href="">2</a> <a href="">3</a> <a href="">4</a> <a href="">5</a> </div>
      </div>
      <div class="top_divider"><img src="images/other/header_divider.png" alt="" width="1" height="164" /></div>
    </div>
    <!-- end of oferte_content-->
  </div>
  <div id="main_content">
    <div id="menu_tab">
      <div class="left_menu_corner"></div>
      <ul class="menu">
        <li><a href="index.jsp" class="nav1"> Home</a></li>
        <li class="divider"></li>
        <li><a href="#" class="nav2">Products</a>
              <!--
        	        <ul >
						<li><a href="#" style="text-decoration: none ;">Mobiles</a></li>
						<li><a href="#" >Laptops</a></li>
						<li><a href="#">Cameras</a></li>
						<li><a href="#">Desktops</a></li>
					</ul>-->
        
        </li>
        <li class="divider"></li>
        <li><a href="viewSpecialCart.jsp" class="nav3">Specials</a></li>
        <li class="divider"></li>
        <li><a href="#" class="nav4">My account</a></li>
        <li class="divider"></li>
        <li><a href="signup.jsp" class="nav4">Sign Up</a></li>
        <li class="divider"></li>
        <li><a href="checkOut.jsp" class="nav5">Shipping</a></li>
        <li class="divider"></li>
        <li><a href="contact.jsp" class="nav6">Contact Us</a></li>
        
        <li class="currencies">Currencies
          <select>
          	<option>Rupees</option>
            <option>US Dollar</option>
            <option>Euro</option>
          </select>
        </li>
      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <a href="index.jsp" style="text-decoration: none">Home</a></div>
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
        <li class="odd"><a href="canoncamera.jsp">CAMERAS &amp; RECORDS</a></li>
        <li class="even"><a href="sony_camera.jsp">Sony</a></li>
		<li class="odd"><a href="canon_camera.jsp">Canon &amp; Nikon</a></li>
		<li class="even"><a href="philips_camera.jsp">Philips</a></li>
		<li class="odd"><a href="desktops.jsp">DESKTOPS</a></li>
      </ul>
      <div class="title_box">Special Products</div>
      <div class="border_box">
        <div class="product_title">Motorola 156 MX-VL</div>
        <div class="product_img"><a href=""><img src="images/other/laptop.png" alt="" border="0" /></a></div>
        <div class="prod_price"><span class="reduce">35000 RS</span> <span class="price">27000 RS</span></div>
      </div>
      <div class="title_box">Newsletter</div>
      <div class="border_box">
      <form method="get" action="join.jsp">
        <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
        <input type="submit" value="join" /></form> </div>
      <div class="banner_adds"> <a href=""><img src="images/other/bann2.jpg" alt="" border="0" /></a> </div>
    </div>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">Contact Us</div>
     
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
          <div class="contact_form">
          <form action="ContactUs" method="get"  name="contactus" onsubmit="return check()">
            <div class="form_row">
              <label class="contact"><strong>Name:</strong></label>
              <input type="text" class="contact_input"  name="name" onchange="return check()"/>
            </div>
            <div class="form_row">
              <label class="contact"><strong>Email:</strong></label>
              <input type="text" class="contact_input" name="email" onchange="return check()" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>Phone:</strong></label>
              <input type="text" class="contact_input" name="phone" onchange="return check()"/>
            </div>
            <div class="form_row">
              <label class="contact"><strong>Company:</strong></label>
              <input type="text" class="contact_input" name="company"/ onchange="return check()">
            </div>
            <div class="form_row" >
              <label class="contact"><strong>Message:</strong></label>
             <div style="margin-left: 78px;"> <textarea   class="contact_textarea" name="message" onchange="return check()"></textarea></div>
            </div>
            <div class="form_row"> <input type="submit" value="send details" /> </div>
            </form>
          </div>
        </div>
        <div class="bottom_prod_box_big"></div>
      </div>
    </div>
    <!-- end of center content -->
    <div class="right_content">
      <!-- <div class="shopping_cart">
        <div class="cart_title">Shopping cart</div>
        <div class="cart_details"> 3 items <br />
          <span class="border_cart"></span> Total: <span class="price">350 RS</span> </div>
        <div class="cart_icon"><a href="" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img src="images/other/shoppingcart.png" alt="" width="48" height="48" border="0" /></a></div>
      </div> -->
      <div class="title_box">What’s new</div>
      <div class="border_box">
        <div class="product_title">Motorola 156 MX-VL</div>
        <div class="product_img"><a href=""><img src="images/other/p2.gif" alt="" border="0" /></a></div>
        <div class="prod_price"><span class="reduce">350 RS</span> <span class="price">270 RS</span></div>
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
      <div class="banner_adds"> <a href=""><img src="images/other/bann1.jpg" alt="" border="0" /></a> </div>
    </div>
    <!-- end of right content -->
  </div>
  <!-- end of main content -->
  <div class="footer">
    <div class="left_footer"> <img src="images/other/footer_logo.png" alt="" width="170" height="49"/> </div>
    <div class="center_footer">All Rights Reserved by Apex tgi india pvt. ltd.2013<br />
      <img src="images/other/payment.gif" alt="" /> </div>
    <div class="right_footer"> <a href="">home</a> <a href="">about</a> <a href="">sitemap</a> <a href="">rss</a> <a href="contact.html">contact us</a> </div>
  </div>
</div>
<!-- end of main_container -->
<div align=center></div>
</body>
</html>
