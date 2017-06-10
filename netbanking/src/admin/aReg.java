package admin;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcon.DbConnection;
import mymethods.AllretriveMethods;
/**
 * Servlet implementation class uReg
 */
@WebServlet("/aReg")
public class aReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public String autoacc(){
		
		return null;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try{
		String acc="ha201789697";
		String name="";
	ResultSet rs=AllretriveMethods.getuservalues(acc);
	if(rs.next())
	{
		name=rs.getString(2);
	}else{
		System.out.println("error");
	}
		String job=request.getParameter("jname");
	    String eid=request.getParameter("jiname");
	    String sal=request.getParameter("sal");
		String org=request.getParameter("org");
		String addr=request.getParameter("orgaddr");
		String doj=request.getParameter("doj");
		Float amt=Float.parseFloat(request.getParameter("amt"));
		String status="pending";
		
		Connection con=DbConnection.getConnection();
		String sql="insert into loandetails values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,acc);
		ps.setString(2,name);
		ps.setString(3,job);
		ps.setString(4,eid);
		ps.setString(5,sal);
		ps.setString(6,org);
		ps.setString(7,addr);
		ps.setString(8,doj);
		ps.setFloat(9, amt);
		ps.setString(10, status);
		
		
		int i=ps.executeUpdate();
		if(i==1)
		{
			
			request.getRequestDispatcher("A_login.jsp").forward(request, response);
		}
	}catch(Exception e){System.out.println("error is "+e);}
		
	}

}
