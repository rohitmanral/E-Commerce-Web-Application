  
<%

		    String s1=null,s2=null;
            
        
            String email=request.getParameter("emailId");
            String opwd=request.getParameter("currentpassword");
            String npwd=request.getParameter("newpassword");
            String cnpwd=request.getParameter("newcpassword");
			
			
			try
			{
			    java.sql.Connection con=new dao.MySqlCon().mysqlCon();	 
            

//out.println(email);
//out.println(opwd);
//out.println(npwd);
//out.println(cnpwd);
 

 
			
                java.sql.Statement st=con.createStatement();
				java.sql.ResultSet rs=st.executeQuery("select password,cpass from users where emailaddress='"+email+"'");
				while(rs.next())
				{
					 s1=rs.getString(1);
					 s2=rs.getString(2);
				      
				}
				if(s1.equals(opwd))
				{
                    java.sql.Statement st1=con.createStatement();
                    st1.executeUpdate("update users set password='"+npwd+"' where emailaddress='"+email+"'");
					st1.executeUpdate("update users set cpass='"+npwd+"' where emailaddress='"+email+"'");
                    //out.println("Password changed successfully");
					//response.sendRedirect("index.jsp");
					out.println("<script type=\"text/javascript\">");
			out.println("alert(\"Password changed successfully\")");
			out.println("location='./index.jsp';");
			out.println("</script>");
                }
                   else{
					   //out.println("Password incorrect");
					   					   out.println("<script type=\"text/javascript\">");
			out.println("alert(\"Current password is incorrect.. !! Please enter carefully\")");
			out.println("location='./change.jsp';");
			out.println("</script>");
						}
 
			}
			catch(Exception e)
			{
				out.println("Please enter the information carefully.......");
				RequestDispatcher rd=request.getRequestDispatcher("change.jsp");  
                rd.forward(request, response);
					 
			}
	
    %>
	
	
	
	