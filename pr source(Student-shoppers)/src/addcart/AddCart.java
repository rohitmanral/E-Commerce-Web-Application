package addcart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddCart extends HttpServlet {

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
		//out.print("Helloo");
		HttpSession session=request.getSession();
		Integer pid=Integer.parseInt(request.getParameter("pid"));
		
		ArrayList itemlist= (ArrayList)session.getAttribute("cartID");
		if(itemlist == null){
			itemlist = new ArrayList();
		}
		
		itemlist.add(pid);
		 
		session.setAttribute("cartID", itemlist);

		//Integer userid=(Integer)session.getAttribute("userid");
//		session.setAttribute("pid",pid);
		
		

		response.sendRedirect(request.getContextPath()+"/viewCart.jsp");
		
		out.flush();
		out.close();
	}

}
