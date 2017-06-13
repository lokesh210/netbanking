package records;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mymethods.AllretriveMethods;

/**
 * Servlet implementation class FindAc
 */
@WebServlet("/FindAc")
public class FindAc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
		String acno=request.getParameter("acno");
		ResultSet rs=AllretriveMethods.getuservalues(acno);
		if(rs.next()){
			
				String name=rs.getString(2);
				out.println("<input type='text' name='hname' value='"+name+"' readonly='readonly'>");
			
		}else{
			out.println("Invalid Account");
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

}
