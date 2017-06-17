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
	public static ResultSet getAllvalues(int pageid,int total){
		sql="select * from userinfo limit "+pageid+","+total;
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getallusercount(){
		sql="select count(*) from userinfo";
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

	public static ResultSet getusername(String name){
		sql="select  * from userinfo where name='"+name+"' ";
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
	
	
	
	public static ResultSet getallloansreq(){
		String status="pending";
		sql="select * from loandetails where status='"+status+"'";
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
	
	public static ResultSet getsavedacs(String acno){
		sql="select *  from saveacc where account1='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getmyhis(String acno,int pageid,int total){
		sql="select *  from transactions  where Accno='"+acno+"' limit "+pageid+","+total;
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getmyhiscount(String acno){
		sql="select count(*) from transactions where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getallhis(int pageid,int total){
		sql="select *  from transactions limit "+pageid+","+total;
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getallhiscount(){
		sql="select count(*)  from transactions";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getusermsg(String acno,int pageid,int total){
		
		
		try {
			ResultSet rs1=getusermsgcount(acno);
			if(rs1.next())
			{
				int i=rs.getInt(1);
				if(i<2)
				{
					sql="select * from inbox where Accno='"+acno+"' limit 0,"+total ;
				}else{
					sql="select * from inbox where Accno='"+acno+"' limit "+pageid+","+total ;
				}
			}
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	
	public static ResultSet getusermsgcount(String acno){
		sql="select count(*) from inbox where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	
	public static ResultSet getfrndac(String acno){
		sql="select * from saveacc where account1='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	
	public static void storehis(String acno,String action){
		try {
		ResultSet rs1=todate();		
		String td = null;
		if(rs1.next()){
			td=rs1.getString(1);
		}
		
		sql="insert into transactions values('"+acno+"','"+action+"','"+td+"')";
		
			st=con.createStatement();
			st.executeUpdate(sql);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
		
		
		public static ResultSet getmymsgcount(String acno){
			sql="select count(*) from inbox where Accno='"+acno+"'";
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


