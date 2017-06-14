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
<div>
<table><tr>
<td><a href="U_home.jsp">Home</a></td>
<td><a href="U_profile.jsp">Profile</a></td>
<td><a href="U_Loanregister.jsp">Loan-Request</a></td>
<td><a href="U_inbox.jsp">Inbox</a></td>
<td><a href="U_fundtransfer.jsp">Transfer Funds</a></td>
<td><a href="U_history.jsp">History</a></td>
<td><a href="Logout.jsp">Logout</a></td>
</tr></table>
</div>
<div>
<table>
<tr><th>Date</th><th>Message</th><th>Action</th></tr>
<%
String acc=(String)request.getSession().getAttribute("acc");
ResultSet rs=AllretriveMethods.getusermsg(acc);


while(rs.next())
{
%>
<tr><td><%=rs.getString(3)%></td><td><%=rs.getString(2)%></td><td><a href="Msgdel.jsp?acc=<%=rs.getString(1)%>">Delete</a></td></tr>
<%}
String action="checking their inbox for new messages"; 
AllretriveMethods.storehis(acc, action);
%>

</table>
</div>
</body>
</html>