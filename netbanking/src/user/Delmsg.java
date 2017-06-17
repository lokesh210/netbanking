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
 * Servlet implementation class Delmsg
 */
@WebServlet("/Delmsg")
public class Delmsg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delmsg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("mid");
		String sql="delete from inbox where id="+id;
		Connection con=DbConnection.getConnection();
		try {
			Statement st=con.createStatement();
			int i=st.executeUpdate(sql);
			if(i>0)
			{
				request.getRequestDispatcher("U_inbox.jsp?pageid=1").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
