package addcart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

import dao.MySqlCon;

public class CheckOut extends HttpServlet {

String orderid; 
	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//out.print("hii form post");
		/*
		String emailid=request.getParameter("email");
		//String pass=request.getParameter("pass");
		String address=request.getParameter("address");
		String ship_address=request.getParameter("ship_address");
		String landmark=request.getParameter("landmark");
		String city=request.getParameter("city");
		String areacode=request.getParameter("areacode");
		String state=request.getParameter("state");
		//out.print("Email::::"+email +"Pass:::"+pass +"Address::::"+address +"ship_address::::"+ship_address +"Landmark:::"+landmark +"City:::"+city +"areacode:::"+areacode +"State::"+state);
		*/
		Connection con=new MySqlCon().mysqlCon();
		
		try {
HttpSession session=request.getSession(false);

	        String emailid=(String)session.getAttribute("email");
		//String pass=(String)session.getAttribute("pass");
		String address=(String)session.getAttribute("address");
		String ship_address=(String)session.getAttribute("ship_address");
		String landmark=(String)session.getAttribute("landmark");
		String city=(String)session.getAttribute("city");
		String areacode=(String)session.getAttribute("areacode");
		String state=(String)session.getAttribute("state");
	




session.setAttribute("emailid",emailid);
session.setAttribute("address",address);
session.setAttribute("ship_address",ship_address);
session.setAttribute("landmark",landmark);
session.setAttribute("city",city);
session.setAttribute("areacode",areacode);
session.setAttribute("state",state);


  ArrayList itemlist = (ArrayList) session.getAttribute("cartID");  
System.out.println("cart id1="+itemlist);
Integer userid=(Integer)session.getAttribute("userid");
System.out.println("user id1="+userid);
	
            Statement s=con.createStatement();

	ResultSet rs=s.executeQuery("select count(shipid) from shipingadd");
		while(rs.next())
		{
         int ss=rs.getInt(1);
	
         if(ss==0)
		{
			int i=1;
			orderid="SHOPEROORD00"+i;
			System.out.println("iddddddddddd="+userid);
			
		}
		
		else
		{
			Statement s1=con.createStatement();
			ResultSet rs1=s1.executeQuery("select shipid from shipingadd ORDER BY shipid DESC LIMIT 1");
			 	
				
			while(rs1.next())
			{
	         int shipid=rs1.getInt("shipid");
	         System.out.println("ajjjjjjjjjj="+shipid); 	
	 		
	         int uid = shipid+1;
	          orderid="SHOPEROORD00"+uid;
	       
		}
		}
}
			Statement stmt=con.createStatement();
			stmt.addBatch("insert into address(emailid,address1,address2,landmark,city,pincode,state,userid,orderid) values('"+emailid+ "','"+address+"','"+ship_address+"','"+landmark+"','"+city+"','"+areacode+"','"+state+"','"+userid+"','"+orderid+"')");

			stmt.addBatch("insert into shipingadd(emailid,address1,address2,landmark,city,pincode,state,userid,orderid) values('"+emailid+ "','"+address+"','"+ship_address+"','"+landmark+"','"+city+"','"+areacode+"','"+state+"','"+userid+"','"+orderid+"')");
			
			stmt.executeBatch();

                       Mailer.send(emailid,"hello","Your Order NO="+orderid);
                        

			response.sendRedirect(request.getContextPath()+"/invoce.jsp?orderid="+orderid+"");




		} catch (Exception e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.print("Generated Exception ::::::"+e);
		}
		
		out.flush();
		out.close();
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//out.print("hii form get");
		
		String emailid=request.getParameter("email");
		//String pass=request.getParameter("pass");
		String address=request.getParameter("address");
		String ship_address=request.getParameter("ship_address");
		String landmark=request.getParameter("landmark");
		String city=request.getParameter("city");
		String areacode=request.getParameter("areacode");
		String state=request.getParameter("state");
		//out.print("Email::::"+email +"Pass:::"+pass +"Address::::"+address +"ship_address::::"+ship_address +"Landmark:::"+landmark +"City:::"+city +"areacode:::"+areacode +"State::"+state);
		
		Connection con=new MySqlCon().mysqlCon();
		
		try {
			Statement stmt=con.createStatement();
			stmt.addBatch("insert into address (emailid,address1,address2,landmark,city,areacode,state) values('"+emailid+ "','"+address+"','"+ship_address+"','"+landmark+"','"+city+"','"+areacode+"','"+state+','+")");
			stmt.addBatch("insert into shipingadd (emailid,address1,address2,landmark,city,areacode,state) values('"+emailid+ "','"+address+"','"+ship_address+"','"+landmark+"','"+city+"','"+areacode+"','"+state+','+")");
			
			stmt.executeBatch();
			response.sendRedirect(request.getContextPath()+"/paymentgate.jsp");

		} catch (Exception e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.print("Generated Exception ::::::"+e);
		}
		
		
		out.flush();
		out.close();
}

}
