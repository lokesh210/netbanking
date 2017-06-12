<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="dbcon.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.*,java.text.*"%>
<%@page import="mymethods.AllretriveMethods"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String acno=request.getParameter("acno");
String name,salary;
String doj=null;
String td=null;
String sql;
PreparedStatement ps,ps1,ps2;
float amount,balance;
float interest=3.5f;
Connection con=DbConnection.getConnection();
try{

ResultSet rs=AllretriveMethods.getloanreq(acno);
if(rs.next())
{
	name=rs.getString(2);
	salary=rs.getString(5);
	doj=rs.getString(8);
	amount=rs.getFloat(9);
}
ResultSet rs1=AllretriveMethods.todate();
if(rs1.next()){
	td=rs1.getString(1);
}
ResultSet rs2=AllretriveMethods.getuservalues(acno);
if(rs.next()){
	balance=rs.getFloat(3);
}
Date doj1=new SimpleDateFormat("dd-MM-yyyy").parse(doj);
Date td1=new SimpleDateFormat("dd-MM-yyyy").parse(td);
String doj2[]=doj.split("-");
String td2[]=td.split("-");
int d=Integer.parseInt(doj2[0]);
int m=Integer.parseInt(doj2[1]);
int y=Integer.parseInt(doj2[2]);
int d1=Integer.parseInt(td2[0]);
int m1=Integer.parseInt(td2[1]);
int y1=Integer.parseInt(td2[2]);
if(doj1.before(td1))
{
	if(y==y1){
		if(m<6){
			String message ="your loan rejected due to your relationship with your company should not less than 6 months";
			
			String status="rejected";
			sql="update loandetails set status=? where Accno=?";
			 ps1=con.prepareStatement(sql);
			ps1.setString(1, status);
			ps1.setString(2,acno);
			ps1.executeUpdate();
			
			ps=con.prepareStatement("insert into inbox values(?,?,?)");
			ps.setString(1, acno);
			ps.setString(2,message);
			ps.setString(3,td);
			ps.executeUpdate();
		}else {
			String message ="your loan accepted please check your balance";
			String status="accepted";
			sql="update loandetails set status=? where Accno=?";
			 ps1=con.prepareStatement(sql);
			ps1.setString(1, status);
			ps1.setString(2,acno);
			ps1.executeUpdate();
            balance=balance+amount;
			
			sql="update userinfo set Balance=? where Accno=?";
			ps1=con.prepareStatement(sql);
			ps1.setFloat(1, balance);
			ps1.setString(2,acno);
			ps1.executeUpdate();
			
			ps=con.prepareStatement("insert into inbox values(?,?,?)");
			ps.setString(1, acno);
			ps.setString(2,message);
			ps.setString(3,td);
			ps.executeUpdate();
		}
	}else{
		int x1,x2,x3,x4;
		int x=y1-y;
		if(x>1){
			x1=x-1;
			x2=12-m;
			x3=x1*12;
			x4=x3+x2+m1;
			if(x4<6){
				String message ="your loan rejected due to your relationship with your company should not less than 6 months";
				
				String status="rejected";
				sql="update loandetails set status=? where Accno=?";
				 ps1=con.prepareStatement(sql);
				ps1.setString(1, status);
				ps1.setString(2,acno);
				ps1.executeUpdate();
				
				ps=con.prepareStatement("insert into inbox values(?,?,?)");
				ps.setString(1, acno);
				ps.setString(2,message);
				ps.setString(3,td);
				ps.executeUpdate();
				
			}else {
				String message ="your loan accepted please check your balance";
				
				String status="accepted";
				sql="update loandetails set status=? where Accno=?";
				 ps1=con.prepareStatement(sql);
				ps1.setString(1, status);
				ps1.setString(2,acno);
				ps1.executeUpdate();
                balance=balance+amount;
				
				sql="update userinfo set Balance=? where Accno=?";
				ps1=con.prepareStatement(sql);
				ps1.setFloat(1, balance);
				ps1.setString(2,acno);
				ps1.executeUpdate();
				
				ps=con.prepareStatement("insert into inbox values(?,?,?)");
				ps.setString(1, acno);
				ps.setString(2,message);
				ps.setString(3,td);
				ps.executeUpdate();
			}
		}else{
			x1=12-m;
			x2=x1+m1;
			if(x2<6){
				String message ="your loan rejected due to your relationship with your company should not less than 6 months";
				
				String status="rejected";
				sql="update loandetails set status=? where Accno=?";
				 ps1=con.prepareStatement(sql);
				ps1.setString(1, status);
				ps1.setString(2,acno);
				ps1.executeUpdate();
				
				ps=con.prepareStatement("insert into inbox values(?,?,?)");
				ps.setString(1, acno);
				ps.setString(2,message);
				ps.setString(3,td);
				ps.executeUpdate();
				
			}else {
				String message ="your loan accepted please check your balance";
				String status="accepted";
				sql="update loandetails set status=? where Accno=?";
				 ps1=con.prepareStatement(sql);
				ps1.setString(1, status);
				ps1.setString(2,acno);
				ps1.executeUpdate();
				
				balance=balance+amount;				
				sql="update userinfo set Balance=? where Accno=?";
				 ps1=con.prepareStatement(sql);
				ps1.setFloat(1, balance);
				ps1.setString(2,acno);
				ps1.executeUpdate();
				
				ps=con.prepareStatement("insert into inbox values(?,?,?)");
				ps.setString(1, acno);
				ps.setString(2,message);
				ps.setString(3,td);
				ps.executeUpdate();
				
				
			}
		}
	}
}

}catch(Exception e){
	System.out.println("error is "+e);
}
%>
</body>
</html>