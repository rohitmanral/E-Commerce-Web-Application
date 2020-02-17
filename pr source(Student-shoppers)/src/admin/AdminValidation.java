package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MySqlCon;

public class AdminValidation extends HttpServlet {
	Connection connection;

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
		String name = "";
		String admin_name=request.getParameter("admin_name"); 
		String password=request.getParameter("password");
		boolean valid=false;
		HttpSession session=request.getSession();
			 
		connection=new MySqlCon().mysqlCon();
		Statement stmt;
		try {
			stmt = connection.createStatement();
		
		String query="select * from admin";
		//PreparedStatement ps = con.prepareStatement("select * from admin");
		ResultSet rs=stmt.executeQuery(query);
		while(rs.next())
		{
			if(admin_name.equals(rs.getString(1)) && password.equals(rs.getString(2)))
			{
				valid=true;
				name = rs.getString(1);
			}
		}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.print("Generated Exception........"+e);
		}
		if(valid)
		{
			session.setAttribute("name",name);
     		out.print("Name:::"+name  +"Path:::::"+request.getContextPath()+"/admin_select_product.jsp");
			RequestDispatcher rd=request.getRequestDispatcher("/valid_admin.jsp");
			rd.include(request, response);
     		//response.sendRedirect(request.getContextPath()+"/admin_select_product.jsp");
		}
		else
		{
			out.println("<div style='position:absolute; top:350px; left:460px'><font color='read'><b>User Name and password are invalid</b></font></div>");
			RequestDispatcher rd=request.getRequestDispatcher("/invalid_admin.jsp");//admin_login.jsp
			rd.forward(request, response);
		}
	
		out.flush();
		out.close();
	}

}
