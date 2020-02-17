package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class OracleCon {
	Connection con;
	
	public Connection oracleCon()
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println(e);
		}
		return con;
	}

}
