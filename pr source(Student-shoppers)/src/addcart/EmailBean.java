package addcart;
import java.sql.*;
import dao.MySqlCon;
public class EmailBean
{
boolean flag=false;
Connection con=null;
private String email;

public void setEmail(String email)
{
this.email=email;
}

public String getEmail()
{
return email;
}

public boolean check()
{
try
{

con=new MySqlCon().mysqlCon();
PreparedStatement pst=con.prepareStatement("select * from users where emailaddress=?");
pst.setString(1,email);

ResultSet rs=pst.executeQuery();
if(rs.next())
{

new SendMailExample(getEmail(),rs.getString("username"),rs.getString("password"));
flag=true;
}
else
{
flag=false;
}
return flag;
}
catch(Exception e)
{
System.out.println(e);
return flag;
}
}
}

