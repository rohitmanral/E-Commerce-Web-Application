package addcart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MySqlCon;

public class SignUp extends HttpServlet {

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
	
	Connection connection;
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
 

		//Integer userid=Integer.parseInt(request.getParameter("user_id"));


		String name=request.getParameter("s_name");
		String pass=request.getParameter("s_password");
		String rpass=request.getParameter("sr_password");
		String email=request.getParameter("s_email");
		 String mobile=request.getParameter("s_no");
		 		//Boolean status=Boolean.parseBoolean(request.getParameter("isAdmin"));
		
	 out.print(name+" "+pass+" "+rpass+" "+email+" "+mobile);



 
		String query="insert into users (username,password,cpass,emailaddress,phonenumber) values( '"+name+"', '"+pass+"','"+rpass+"', '"+email+"', '"+mobile+"') ";
		connection=new MySqlCon().mysqlCon();
		System.out.println("connn:::"+connection);



		try {
 
                    //   PreparedStatement ps=connection.prepareStatement("");
                     //ps.set


			
			Statement st=connection.createStatement();
			st.executeUpdate(query);

 			RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
//			rd.include(request, response);
			//out.print("Patrh::"+request.getContextPath());
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Generate Exception :::"+e);
			out.print("Generated Exception........"+e);
		}

 		out.flush();
		out.close();
	}

}
