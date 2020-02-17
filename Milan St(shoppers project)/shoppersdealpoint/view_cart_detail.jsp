

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.MySqlCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
 
	<% 
	   ArrayList itemlist = (ArrayList) session.getAttribute("cartID"); 
	   Connection connection=new MySqlCon().mysqlCon();
	   Statement stmt=connection.createStatement();
	   int price=0;
	  //out.print("connection::::"+connection);
	   
	%>
    
    
    <br/>
    
    <div class="container">
	<div class="row" >
    <div class="col-lg-9">
    <div class="table-responsive" style="color:black;">
  	<table class=" table table-bordered table-hover">
    <tr  style="color:#525252; background-color:#C9C9C9; font-family:Roboto; font-style:inherit; font-variant:normal; font-size:18px;">
            <td class="text-center">Product</td>
            <td class="text-center" style="width:400px;">Discription</td>
            <td class="text-center" style="width:50px;">Product Model</td>
            <td class="text-center"style="width:50px; ">Quantity</td>
            <td class="text-center" >Sub Total</td>
            <td class="text-center" ></td>
  		<%
				
				if(itemlist == null)
				{
					out.println("<h1>Have No cart!</h1>");
				}
				else{
				ResultSet rs;
				//Integer pid[]=new Integer[itemlist.size()];
					for(int i=0 ; i< itemlist.size();i++){
						
						//pid[i]=(Integer)itemlist.get(i);<%=itemlist.get(i) 
						rs=stmt.executeQuery("select * from product where pid="+itemlist.get(i));
						while(rs.next())
						{
						//out.print(rs.getInt(1) +".."+rs.getString(5));
						price=price+Integer.parseInt(rs.getString(7));
						%>
            
            </tr>
            <tr style="font-size:16px; ">
             <td><img src="<%=rs.getString(5)%>" alt="<%=rs.getString(6)%>" height="92" width="80" ></td>
                               <td><%=rs.getString(6)%></td>
                               <td class="text-center"><%=rs.getString(9)%></td>
                               <td class="text-center"><%=rs.getInt(8)%></td>
                               <td class="text-right"><%=rs.getString(7)%></td>
                               <td class="text-center" onclick="window.location.href='DeleteCart?pid=<%=rs.getInt(1) %>';" style="cursor:pointer;"><i class="fa fa-trash"> </i></td>
                               
</tr>
            
            
            
            
            
             <%	
						}				
						}%>
                        
            <tr class="text-right">
            <td colspan="4">
          <h3 class="text-primary">  Amount Payable</h3></td>
          <td colspan="2"> <h3 class="text-primary "> <i class="fa fa-inr"></i> &nbsp  <%=price %> </h3>
          </td>
            </tr>
           <tr>
           <td colspan="6"> <button class="btn btn-danger pull-left" value="Submit" onClick="window.location.href='index.jsp';"> Continue Shopping</button>
							 <button class="btn btn-primary pull-right" value="Submit" onClick="window.location.href='validate.jsp';"> Process to Check</button></td>
           </tr>
           <%
				}
				
				 %>
                      </table>		
             </div>	
        
        </div>
				 
				 
				 
			</div>
           </div>
		 
		</div>
     
