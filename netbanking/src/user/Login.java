package user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcon.DbConnection;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type=request.getParameter("type");
		String name=request.getParameter("uname");
		String pwd=request.getParameter("upwd");
		Connection con=DbConnection.getConnection();
		String sql="";
		if(type.equalsIgnoreCase("user")){
		try {
		sql="select * from userinfo where Accno=? and password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,pwd);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				response.sendRedirect("a.html");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	else if(type.equalsIgnoreCase("admin")){
	    sql="select * from server where username=? and password=?";
	   try {
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, pwd);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			response.sendRedirect("a.html");
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
		
	}
}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

