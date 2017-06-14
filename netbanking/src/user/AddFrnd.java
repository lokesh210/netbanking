package user;

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
 * Servlet implementation class AddFrnd
 */
@WebServlet("/AddFrnd")
public class AddFrnd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ResultSet rs;
	String sql="";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Connection con=DbConnection.getConnection();
		String acc=(String)request.getSession().getAttribute("acc");
		String name="";
		String name1=request.getParameter("hname");
		String acc1=request.getParameter("aano");
		rs=AllretriveMethods.getuservalues(acc);
		if(rs.next())
		{
			name=rs.getString(2);
		}
		sql="insert into saveacc values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, acc);
		ps.setString(2, name);
		ps.setString(3, acc1);
		ps.setString(4, name1);
		int i=ps.executeUpdate();
		if(i==1){
			String action="Adding friend account to addresslist"; 
			 AllretriveMethods.storehis(acc, action);
			request.setAttribute("message", "account saved successfully");
			request.getRequestDispatcher("U_fundtransfer.jsp").forward(request, response);
		}
		}catch(Exception e){System.err.println(e);}
	}

}
