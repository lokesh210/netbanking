package mymethods;

import java.sql.*;
import dbcon.DbConnection;

public class AllretriveMethods {
	static Connection con=DbConnection.getConnection();
	static String sql=null;
	static Statement st=null;
	static PreparedStatement ps=null;
	static ResultSet rs;
	
	public static ResultSet todate(){
		sql="SELECT DATE_FORMAT(SYSDATE(), '%d-%m-%Y')";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
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

	public static ResultSet getusername(){
		sql="select  name from userinfo ";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getusernumber(){
		sql="select Accno  from userinfo";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	
	
	public static ResultSet getuseremail(){
		sql="select email from userinfo ";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getusermobile(){
		sql="select mobile from userinfo ";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	
	public static ResultSet getuseraddress(){
		sql="select address from userinfo ";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getuseradharno(){
		sql="select adharno from userinfo ";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	
	public static ResultSet getuserimage(String acno){
		sql="select image from userinfo where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	
}
	public static ResultSet getallloansreq(){
		sql="select * from loandetails";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getloanreq(String acno){
		sql="select * from loandetails where account='"+acno+"'";
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


