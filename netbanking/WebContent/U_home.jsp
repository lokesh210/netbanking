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
<div>
<table><tr>
<td><a href="U_home.jsp">Home</a></td>
<td><a href="U_profile.jsp">Profile</a></td>
<td><a href="U_Loanregister.jsp">Loan-Request</a></td>
<td><a href="U_inbox.jsp">Inbox</a></td>
<td><a href="U_fundtransfer.jsp">Transfer Funds</a></td>
<td><a href="U_history.jsp">History</a></td>
</tr></table>
</div>
<div>
<table>
<tr>
<td></td>
<td>
<div>

<table>
<tr>
<%
String acc=(String)request.getSession().getAttribute("acc");
ResultSet rs=AllretriveMethods.getuservalues(acc);
String acno,name;
float bal;
if(rs.next())
{
	acno=rs.getString(1);
	name=rs.getString(2);
	bal=rs.getFloat(3);


%>
<th align="left">Account Number</th><td><%=acno %></td></tr>
<tr><th align="left">Holder Name</th><td><%=name %></td></tr>
<tr><th align="left">Balance</th><td><%=bal %></td>
</tr>
</table>
<%} %>
</div>
</td>
</tr>
</table>
</div>
</body>
</html>