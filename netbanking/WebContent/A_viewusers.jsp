<%@page import="java.sql.*"%>
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
<div>
<table>
<tr><th>AccountNo</th><th>Name</th><th>Gender</th><th>Email</th><th>Phone</th><th>Address</th><th>AdharNo</th></tr>

<%
ResultSet rs=AllretriveMethods.getAllvalues();
while(rs.next())
{%>
<tr><td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getString(4) %></td><td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td><td><%=rs.getString(7) %></td><td><%=rs.getString(8) %></td></tr>	
<%}
%>
</table>
</div>
</body>
</html>