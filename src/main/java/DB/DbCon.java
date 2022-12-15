package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
	
	public static Connection getConn() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "Mysql@localhost:3306/flyaway";
		String user = "root";
		String password = "colonel1412";
		Connection conn = DriverManager.getConnection(url, user, password);
		System.out.println("Connection is Successful");
		return conn;
		
		
		
	}
	
	
	
}
	

