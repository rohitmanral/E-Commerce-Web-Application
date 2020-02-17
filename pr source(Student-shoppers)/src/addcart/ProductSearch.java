package addcart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MySqlCon;

public class ProductSearch  
{
         private int pid;
	 private int pcompid;
	 private int pcid;
	 private String pname;
	 private String pimageurl;
	 private String pdescription;
	 private int price;
	 private int pquantity;
	 private String pmodel;
	 private int sid;
	 


	
	 public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getPcompid() {
		return pcompid;
	}
	public void setPcompid(int pcompid) {
		this.pcompid = pcompid;
	}
	public int getPcid() {
		return pcid;
	}
	public void setPcid(int pcid) {
		this.pcid = pcid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPimageurl() {
		return pimageurl;
	}
	public void setPimageurl(String pimageurl) {
		this.pimageurl = pimageurl;
	}
	public String getPdescription() {
		return pdescription;
	}
	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPquantity() {
		return pquantity;
	}
	public void setPquantity(int pquantity) {
		this.pquantity = pquantity;
	}
	public String getPmodel() {
		return pmodel;
	}
	public void setPmodel(String pmodel) {
		this.pmodel = pmodel;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}

  /*   
    public int insert()
{
           
                         int n=0;
        
        try{
 

              Connection con=new MySqlCon().mysqlCon();
              PreparedStatement  ps= con.prepareStatement("insert into MOVIES(m_id,m_name,m_director,m_actor,m_actress,m_image,m_trailer) values(?,?,?,?,?,?,?)");
      ps.setString(1, movieId);
      ps.setString(2, movieName);
      ps.setString(3, movieDirector);
      ps.setString(4, movieActor);
      ps.setString(5, movieActress);
      ps.setString(6, movieImage);
      ps.setString(7, movieTrailer);
      n=ps.executeUpdate();
      con.close();
      }
      catch(Exception e){
      e.printStackTrace();
      }
  return n;
  }

*/

 public  int getMNameResult(String productName)
{
     int c=0;
     int r=0;
     String msg;
     try{
         Connection con=new MySqlCon().mysqlCon();
         String sql="select * from product where pname like'"+productName+"%'";
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery(sql);
         /*if(!rs.next())
         {
            r=-1;
         } */     
         while(rs.next())
{
            pid=rs.getInt("pid");
            this.pcompid=rs.getInt("pcompid");
             pcid=rs.getInt("pcid");
             pname=rs.getString("pname");
            pimageurl=rs.getString("pimageurl");  
            pdescription=rs.getString("pdescription");  
             price=rs.getInt("price");
           pquantity=rs.getInt("pquantity");
          pmodel=rs.getString("pmodel");        
          sid=rs.getInt("sid");

         c=1;
         
         }
            System.out.println(c);
           System.out.println(this.pname);
         st.close();
         con.close();
     }
     catch(Exception e){
     e.printStackTrace();}
 return r;
 }

/*
  public  int getMIdResult(String movieId){
     int c=0;
     int r=0;
     String msg;
     try{
         Connection con=new MySqlCon().mysqlCon();
         System.out.println(movieName);
         String sql="select * from movies where m_Id='"+movieId+"'";
         Statement st=con.createStatement();
         ResultSet rs = st.executeQuery(sql);
               
         while(rs.next()){
            movieId=rs.getString("m_id");
            this.movieName=rs.getString("m_name");
            movieDirector=rs.getString("m_director");
            movieActor=rs.getString("m_actor");
            movieActress=rs.getString("m_actress");
            movieImage=rs.getString("m_image");
            movieTrailer=rs.getString("m_Trailer");
             c=1;
         
         }
            System.out.println(c);
          st.close();
         con.close();
     }
     catch(Exception e){
     e.printStackTrace();}
 return r;
 }
 */
   
}
       
            