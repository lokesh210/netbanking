package user;

import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import java.sql.*;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dbcon.DbConnection;
/**
 * Servlet implementation class uReg
 */
@WebServlet("/uReg")
@MultipartConfig
public class uReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	static String ab = "0123456789";
	static SecureRandom rand = new SecureRandom();
	String yea,ent;
	static String randomString(int len){
		   StringBuilder sb = new StringBuilder( len );
		   for( int i = 0; i < len; i++ ) 
		      sb.append( ab.charAt( rand.nextInt(ab.length()) ) );
		   return sb.toString();
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try{
	Part filepart=request.getPart("imge");
	InputStream is=filepart.getInputStream();
		String name=request.getParameter("uname");
		String pwd=request.getParameter("upwd");
		String email=request.getParameter("mail");
		String gender=request.getParameter("gender");
		String phone=request.getParameter("mob");
		String addr=request.getParameter("addr");
		String adhar=request.getParameter("adrno");
		int i1=name.length();
		String b=String.valueOf(name.charAt(0));
		String c=String.valueOf(name.charAt(i1-1));
		String k=randomString(5);
		
		Connection con=DbConnection.getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("SELECT DATE_FORMAT(SYSDATE(), '%d-%m-%Y')");
		if(rs.next())
		{
			 ent=rs.getString(1);
			
			System.out.println(ent);
			String g[]=ent.split("-");
			
			 yea=g[2];
			 System.out.println(yea);
			
		}
		String acc=b+c+yea+k;
		String sql="insert into userinfo values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,acc);
		ps.setString(2,name);
		ps.setString(3,pwd);
		ps.setString(4,gender);
		ps.setString(5,email);
		ps.setString(6,phone);
		ps.setString(7,addr);
		ps.setString(8,adhar);
		ps.setString(9, ent);
		ps.setBlob(10, is);
		int i=ps.executeUpdate();
		if(i==1)
		{
			String message="register success";
			request.setAttribute("message", message);
			request.getRequestDispatcher("U_login.jsp").forward(request, response);
		}
	}catch(Exception e){}
		
	}

}
