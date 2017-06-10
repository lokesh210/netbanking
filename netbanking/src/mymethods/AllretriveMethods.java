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

	public static ResultSet getusername(String acno){
		sql="select  name from userinfo where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getusernumber(String acno){
		sql="select Accno  from userinfo where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getuserpassword(String acno){
		sql="select  password from userinfo where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getusergender(String acno){
		sql="select gender from userinfo where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getuseremail(String acno){
		sql="select email from userinfo where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getusermobile(String acno){
		sql="select mobile from userinfo where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	
	public static ResultSet getuseraddress(String acno){
		sql="select address from userinfo where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getuseradharno(String acno){
		sql="select adharno from userinfo where Accno='"+acno+"'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getuserjd(String acno){
		sql="select jd from userinfo where Accno='"+acno+"'";
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
	public static ResultSet getloanaccount(String acno){
		sql="select L.account from loandetails L,userinfo U where L.account=U.Accno & L.name=U.name & U.Accno='"+acno+"'&";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getloanname(String acno){
		sql="select L.name from loandetails L,userinfo U where L.account=U.Accno & L.name=U.name  U.Accno='"+acno+"'&";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getloanjob(String acno){
		sql="select L.job from loandetails L,userinfo U where L.account=U.Accno & L.name=U.name  U.Accno='"+acno+"'&";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	public static ResultSet getloanjobid(String acno){
		sql="select L.jobid from loandetails L,userinfo U where L.account=U.Accno & L.name=U.name  U.Accno='"+acno+"'&";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getloansalary(String acno){
		sql="select L.salary from loandetails L,userinfo U where L.account=U.Accno & L.name=U.name  U.Accno='"+acno+"'&";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getloanorg(String acno){
		sql="select L.organization from loandetails L,userinfo U where L.account=U.Accno & L.name=U.name  U.Accno='"+acno+"'&";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getloanaddress(String acno){
		sql="select L.address from loandetails L,userinfo U where L.account=U.Accno & L.name=U.name  U.Accno='"+acno+"'&";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}public static ResultSet getloandoj(String acno){
		sql="select L.doj from loandetails L,userinfo U where L.account=U.Accno & L.name=U.name  U.Accno='"+acno+"'&";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getloanamount(String acno){
		sql="select L.amount from loandetails L,userinfo U where L.account=U.Accno & L.name=U.name  U.Accno='"+acno+"'&";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
	public static ResultSet getloanstatus(String acno){
		sql="select L.status from loandetails L,userinfo U where L.account=U.Accno & L.name=U.name  U.Accno='"+acno+"'&";
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


