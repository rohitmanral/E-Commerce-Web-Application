package addcart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MySqlCon;

public class ContactUs extends HttpServlet {

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
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String company=request.getParameter("company");
		String message=request.getParameter("message");
		//String msg=request.getParameter("msg");
		
		
		//out.print("name:::"+name +"<br>Email:::"+email +"<br>Phone:::"+phone +"<br>Company:::"+company  +"<br>Message:::"+message);
		
		Connection connection=new MySqlCon().mysqlCon();
		
			Statement stmt=connection.createStatement();
			stmt.executeUpdate("insert into contactus (name,email,phone,company,message) values ('"+name+"','"+email+"','"+phone+"','"+company+"','"+message+"')");
			//request.getSession().setAttribute("msg",msg);
			response.sendRedirect(request.getContextPath()+"/contact.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.print("Generated Exception :::::::"+e);
		}
		
		
		out.flush();
		out.close();
	}

}
