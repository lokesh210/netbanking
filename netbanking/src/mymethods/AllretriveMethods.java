package mymethods;

import java.sql.*;
import dbcon.DbConnection;

public class AllretriveMethods {
	static Connection con=DbConnection.getConnection();
	static String sql=null;
	static Statement st=null;
	static PreparedStatement ps=null;
	static ResultSet rs;
	
	
	public static ResultSet getAllvalues(){
		sql="select * from userinfo";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getuservalues(String acno){
		sql="select * from userinfo where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}

}
