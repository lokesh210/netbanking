<%@page import="java.util.*,java.text.*"%>
<%@page import="mymethods.AllretriveMethods"%>
<%@page import="java.sql.ResultSet"%>
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
float amount,interest;
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
Date doj1=new SimpleDateFormat("dd-MM-yyyy").parse(doj);
Date td1=new SimpleDateFormat("dd-MM-yyyy").parse(td);
System.out.println(doj1.before(td1));

}catch(Exception e){
	System.out.println("error is "+e);
}
%>
</body>
</html>