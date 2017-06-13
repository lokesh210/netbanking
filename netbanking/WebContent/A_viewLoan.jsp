<%@page import="mymethods.AllretriveMethods"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<table><tr>
<td><a href="Admin_home.jsp">Home</a></td>
<td><a href="A_viewusers.jsp">View-Customers</a></td>
<td><a href="A_viewLoan.jsp">Loan-Section</a></td>
<td><a href="A_history.jsp">History</a></td>
</tr></table></div>
<div>
<table>
<tr><th>AccountNo</th><th>Name</th><th>Job Role</th><th>Salary</th><th>Loan</th><th>Status</th></tr>

<%
ResultSet rs=AllretriveMethods.getallloansreq();
while(rs.next())
{%>
<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getString(3) %></td><td><%=rs.getString(5) %></td>
<td><%=rs.getString(9) %></td><td><a href="A_Issueloan.jsp?acno=<%=rs.getString(1) %>"><%=rs.getString(10) %></a></td></tr>	
<%}
%>
</table>
</div>
<div>
${message}</div>
</body>
</html>