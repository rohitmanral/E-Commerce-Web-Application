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
/*** Main product view ***/
#mainview #breadcrumb {margin-bottom:10px;}
#description {float:right;width:500px;}
	#description h1 {font-family: 'Terminal Dosis', "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, sans-serif;font-size:2em;font-weight:300;}
	#description p {padding:0px 0px 14px 0px;}
	#price {font-size:1.333em;display:block;color:#ff5454;padding:14px 0px;}
		#price span {color:#333;font-size:0.722em;float:right;}
	#description select {width:240px;margin-right:10px;}
	#description .continue {width:240px;margin-right:10px;}
	#images {float:left;width:460px;position:relative;}
		#images div, #images a {float:left;}
		#images a img {float:left;border:1px solid #fff;-webkit-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);-moz-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.2);}
			#images a:hover img {-webkit-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.8);-moz-box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.8);box-shadow:0px 0px 5px 0px rgba(180, 160, 145, 0.8);}
	#images p {background:#0DAEE8;padding:5px 0px;margin:0px 20px 10px 0px;width:440px;text-align:center;}
	#productthumbs a {margin:0px 10px 10px 0px;}
		#images #productthumbs a img {width:auto;}
		#images #productthumbs a:hover img {border-color:#fff;}
	#images .sale {position:absolute;top:20px;right:40px;padding:5px;line-height:normal;text-align:right;color:#fff;background:#ff5454;font-family: 'Terminal Dosis', "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, sans-serif;text-transform:uppercase;-webkit-animation: delay 1.5s;-moz-animation: delay 1.5s;}
	#items a {display:block;text-decoration:none;}
</style>
 <div class="container" style=" margin-top:10px" >
 	<div class="row bg-primary ">
 	<div class="col-lg-12">
    	<div class="col-lg-6 ">
        	
           	<a href="#"><img src="<%=rs.getString(5)%>" class="img-responsive img-thumbnail img-hover center-block" style="height:400px; margin-top:25px; "/></a>
        <p class="text-center bg-primary" style="margin:10px; font-size:18px;">Rollover to zoom. Click to enlarge.</p>
        
        <div class="col-lg-12" style="padding:5px;">
        	<div class="col-lg-4 img-thumbnail text-center img-hover"  style="padding:5px;"  >
            <a href="#"><img src="<%=rs.getString(5)%>" class="center-block img-responsive" style="width:130px;"/></a>
            </div>
            <div class="col-lg-4 img-thumbnail " style="padding:5px;">
            <a href="#"><img src="<%=rs.getString(5)%>" class="center-block img-responsive"   style="width:130px;" /></a>
            </div>
            <div class="col-lg-4 img-thumbnail " style="padding:5px;"   >
            <a href="#"><img src="<%=rs.getString(5)%>" class="center-block img-responsive"   style="width:130px;" /></a>
            </div>
        </div>

    	</div>
      <div class="col-lg-6 bg-primary">
      <article id="mainview">

<div id="description">
        <h1><%=rs.getString("pname")%></h1>
                   <h3> <div style="color:yellow; display:block">Availabilty:&nbsp;<%=rs.getInt(8)%> in Stock</div>
            <div  color="red"; style="display:block;"><span class="reduce fa fa-inr">&nbsp<%=price1 %></span> <span class="price fa fa-inr"> <%=rs.getString(7) %></span>       
            </div></strong></h3><h2><p><%=rs.getString("pdescription")%></p></h2>
       
        <p><a href="AddCart1?pid=<%=rs.getInt(1)%>"<button type="submit" class="btn btn-success">Add To Cart &nbsp <i class="fa fa-shopping-cart "></i></button></a></p>
       
        <div id="tabs">
           <h3> <ul>
                <li><a href="#tabs-1" class="first">Delivery</a></li>
                <li><a href="#tabs-2">Returns</a></li>
                <li><a href="#tabs-3">Info &amp; Care</a></li>
            </ul><h3>
           
             
        </div>
    </div>
    
    </article>
      </div>
    	

    	</div>
    </div>
</div>
  
 <%} %>