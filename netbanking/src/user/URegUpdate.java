package user;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcon.DbConnection;

/**
 * Servlet implementation class URegUpdate
 */
@WebServlet("/URegUpdate")
public class URegUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String acc=(String)request.getSession().getAttribute("acc");			
			String pwd=request.getParameter("pwd");
			String email=request.getParameter("email");
			
					
			Connection con=DbConnection.getConnection();
			String sql="update userinfo set password=?,email=? where Accno=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, pwd);
			ps.setString(2, email);
			ps.setString(3, acc);
			int i=ps.executeUpdate();
			if(i==1)
			{
				request.getSession().setAttribute("acc",acc);
				String message="Update success";
				request.setAttribute("message", message);
				request.getRequestDispatcher("U_profile.jsp").forward(request, response);
				
			}
			
		}catch(Exception e){
			System.out.println("error is "+e);
		}
		
	}

}
