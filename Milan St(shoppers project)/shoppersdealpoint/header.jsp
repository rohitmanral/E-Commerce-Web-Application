<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dao.MySqlCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<script type="text/javascript" src="scripts/jquery-1.6.4.min.js"></script>
<div class="containerwrapper" >
	<div class="row" id="header_wrapper">
    	<header class="center-block"> 
       		<div class="col-lg-3 col-md-3 col-sm-3" id="logo">
        	<a href="#"><img src="images/Logo-Shopper07.png" alt="shopperdealpoint" width="200" class="img-responsive" /></a>
          </div>
<form action="search_result.jsp" method="post">
			<div class="col-lg-5 col-md-5 col-sm-5 " id="search" >
            	<div class="search ">
					  <input type="text" name="query" onfocus="this.value = '';" 
                      onblur="if (this.value == '') {this.value = 'Search';}">
					<input type="submit" value="">
				</div>
          	</div>
            </form>
			 
            
            <div class="col-lg-3 col-md-3">
            	<div class="login">	
            	<ul class="list-inline">
                
                 
<%

 
try
{

if(session.getAttribute("user")!=null)
{
	
out.print("<font color='pink' size='5px'>");
out.print("Hi:&nbsp;"+session.getAttribute("user"));
out.print("</font>");
out.print("<li><a href='logout.jsp'><i class='fa fa-user'></i><span>LogOut</span> </a></li>");
out.print("<li><a href='change.jsp'><i class='fa fa-lock'></i><span>ChangePassword</span> </a></li>");

 }
 else
 {
	 out.println("<li><a href='signup.jsp'  ><i class='fa fa-user'></i><span> Sign Up </span> </a></li><li><a href='login_01.jsp' ><i class='fa fa-user'> </i><span> Sign In </span></a></li>");
 }
}
catch(Exception e)
{
out.println(e);
}
%>
                
 
                </ul>
         		</div> 
         	</div>
  
            <div class="col-lg-8 header-link ">
            	<ul class="list-inline">
                <li><a href="#"><i class="fa fa-user"> </i> &nbsp; &nbsp; Sell </a></li>
                <li><a href="todaydeal.jsp"><i class=" fa fa-gift"> </i> &nbsp;&nbsp; Today's Deal </a></li>
                <li><a href="#"><i class=" fa fa-phone"> </i>&nbsp;&nbsp; 24x7</a></li>
                <li><a href="#"><i class=" fa fa-map-marker"> </i>&nbsp;&nbsp; Track Order</a></li>
                <li><a href="viewCart.jsp"><i class=" fa fa-cart-plus"> </i>&nbsp;&nbsp; Cart</a>


  
				<%
           ArrayList al = (ArrayList) session.getAttribute("cartID"); 
	   			
			 
				 
							   							                                                 int ttt = 0;
							if (al != null)                                                                                                 {
								ttt = al.size();
							}
if(ttt==0){
out.print("0 Item in Bag");
}
else{
							out.print(ttt+" Item in Bag");
}
						%>
				




</li>
                </ul>
                                                       
                         
                </div>
         </header>
         </div>         
	</div><!--header _wrapper-->
<!--mega menu ---> 

<div class="container01">
<div class="container">
<div class="row center-blcok">
  <nav class="navbar navbar-default ">
    <div class="collapse navbar-collapse js-navbar-collapse ">
      <ul class="nav navbar-nav" id="dropdown-menu mega-dropdown-menu">
      <li class="dropdown mega-dropdown"> <a href="index.jsp" class="dropdown-toggle" data-toggle=""> <i class="fa fa-home"></i></a>


         <li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="">MOBILE &nbsp; &nbsp;<i class="fa fa-angle-down"></i></a>
          <ul class="dropdown-menu mega-dropdown-menu row">
            <div class="megamenu-headline">
              <h2>MOBILE</h2>
            </div>
            <li class="divider"></li>
            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=1&sid=1' style="color:#010101">Samsung</li></a>
   <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=1 and sid=1");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                 <li class="dropdown-header"><a href='viewproduct.jsp?pcid=1&sid=2' style="color:#010101">Nokia</li></a>
     
                  <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=1 and sid=2");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>

            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=1&sid=3' style="color:#010101">BlackBerry</li></a>
                   <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=1 and sid=3");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>
			
			            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=1&sid=4' style="color:#010101">Apple</li></a>
                  <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=1 and sid=4");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
          </ul>
            </li>
			
			
			
			
			
          </ul>
          
        </li>

        <li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="">LAPTOP & NOTEBOOK &nbsp; &nbsp;<i class="fa fa-angle-down"></i></a>
          <ul class="dropdown-menu mega-dropdown-menu row">
            <div class="megamenu-headline">
              <h2>LAPTOP & NOTEBOOK</h2>
            </div>
            <li class="divider"></li>
            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=2&sid=5' style="color:#010101">Dell</li></a>
   <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=2 and sid=5");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                 <li class="dropdown-header"><a href='viewproduct.jsp?pcid=2&sid=6' style="color:#010101">HP</li></a>
     
                  <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=2 and sid=6");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>

            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=2&sid=7' style="color:#010101">Sony</li></a>
                   <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=2 and sid=7");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>
			
			            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=2&sid=8' style="color:#010101">Samsung</li></a>
                  <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=2 and sid=8");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
          </ul>
            </li>
			
			
			
			
			
          </ul>
          
        </li>
		
<li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="">DESKTOP COMPUTERS  &nbsp; &nbsp;<i class="fa fa-angle-down"></i></a>
          <ul class="dropdown-menu mega-dropdown-menu row">
            <div class="megamenu-headline">
              <h2>DESKTOP COMPUTERS </h2>
            </div>
            <li class="divider"></li>
            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=4&sid=13' style="color:#010101">Desktop</li></a>
   <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=4 and sid=13");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>
            	
          </ul>
          
        </li>
		
		
		
        <li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="">CAMERA &nbsp; &nbsp;<i class="fa fa-angle-down"></i></a>
          <ul class="dropdown-menu mega-dropdown-menu row">
            <div class="megamenu-headline">
              <h2>CAMERA</h2>
            </div>
            <li class="divider"></li>
            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=3&sid=9' style="color:#010101">Sony</li></a>
   <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=3 and sid=9");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>
            <li class="col-sm-3">
              <ul>
                 <li class="dropdown-header"><a href='viewproduct.jsp?pcid=3&sid=10' style="color:#010101">Canon</li></a>
     
                  <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=3 and sid=10");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>

            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=3&sid=11' style="color:#010101">Nikon</li></a>
                   <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=3 and sid=11");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
              </ul>
            </li>
			
			            <li class="col-sm-3">
              <ul>
                <li class="dropdown-header"><a href='viewproduct.jsp?pcid=3&sid=12' style="color:#010101">Philips</li></a>
                  <%
try
{
Connection connection=new MySqlCon().mysqlCon();
Statement stmt= connection.createStatement();
ResultSet rs= stmt.executeQuery("select * from product where pcid=3 and sid=12");

if(rs!=null)
{
	while(rs.next())
     {
 int i=rs.getInt(1);
out.print("<html><li><a href='detail.jsp?pid="+i+"'>");

 out.print(rs.getString("pname")); 
 out.print("</a></li></hmtl>");

    }
	
}

}
catch(Exception e)
{
out.println(e);
}
     
%>
          </ul>
            </li>
			
			
			
			
			
          </ul>
          
        </li>
                
		
 
		   
          
  </li>       
      </ul>
    </div>
    <!-- /.nav-collapse --> 
  </nav>
  </div>
</div>
</div>