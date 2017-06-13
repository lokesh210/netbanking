<%@page import="mymethods.AllretriveMethods"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>


</script>
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
</tr></table>
</div>

<div>
<form action="Funddeduct" method="post">
<table>
<tr>
<td>Select Account</td>
<td>
<select name="credit">
<option>CHOOSE</option>
<%String acno=(String)request.getSession().getAttribute("acc");
ResultSet rs=AllretriveMethods.getfrndac(acno);
while(rs.next()){
	String dname=rs.getString(2);
	String cid=rs.getString(3);
	String cname=rs.getString(4);
%>
<option><%=cid %></option>
<%} %>
</select></td>
<tr>
<tr>
<td>Amount</td><td><input type="text" name="amt"></td>
<tr>
<tr>
<td>Message</td><td><input type="text" name="message"></td>
<tr>
<tr>
<td colspan="2" align="center"><input type="submit" name="Transfer"></td>
<tr>
</table>
</form>
<table>
<tr><td>For Adding Account <a href="U_addacc.jsp">click-here</a></td></tr>
</table>
</div>
${message}
</body>
</html>