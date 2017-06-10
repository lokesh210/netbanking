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
 * Servlet implementation class Funddeduct
 */
@WebServlet("/Funddeduct")
public class Funddeduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String msg,acc1,acc2;
	Float amt,amt1,amt2;
	ResultSet rs=null;
	PreparedStatement st;
	Connection con=DbConnection.getConnection();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String acc1=(String)request.getSession().getAttribute("acc");
			String acc2=request.getParameter("credit");
			Float amt=Float.parseFloat(request.getParameter("amt"));
			String msg=request.getParameter("message");
			rs=AllretriveMethods.getuservalues(acc1);
			{
				amt1=rs.getFloat(3);
				if(amt1>=amt){
					rs=AllretriveMethods.getuservalues(acc2);
					if(rs.next()){
						amt2=rs.getFloat(3);
					}
					Float x=amt2+amt;
					String sql="update userinfo set amount=? where Accno=?";
					st=con.prepareStatement(sql);
					st.setFloat(1, x);
					st.setString(2, acc2);
					int i=st.executeUpdate();
					Float y=amt1-amt;
					String sql1="update userinfo set amount=? where Accno=?";
					st=con.prepareStatement(sql1);
					st.setFloat(1, y);
					st.setString(2, acc1);
					int j=st.executeUpdate();				
					request.setAttribute("message", "fund transfered successfully");
					request.getRequestDispatcher("U_fundtransfer.jsp").forward(request, response);
					                                                       
				}else{
					request.setAttribute("message", "No Sufficient Funds!please deposit in local bank branch");
					request.getRequestDispatcher("U_fundtransfer.jsp").forward(request, response);
				}
			}
			
		}catch(Exception e){
			System.err.println("error is "+e);
		}
	}

}
