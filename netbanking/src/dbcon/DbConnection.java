package dbcon;

import java.sql.*;

public class DbConnection {
	 static Connection  con=null;
	private static  String url="jdbc:mysql://localhost:3306/net";
	private static String user="root";
	private static String pwd="root";
	
	public static Connection getConnection(){
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pwd);
			System.out.println("Connection started");
		} catch (Exception e) {
			
			System.err.println("error is : "+e);
		}
		
		
		return con;
		
	}

}
