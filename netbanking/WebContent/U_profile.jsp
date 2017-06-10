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
<td><a href="U_profile.jsp">Profile</a></td>
<td><a href="U_Loanregister.jsp">Loan-Request</a></td>
<td><a href="U_inbox.jsp">Inbox</a></td>
<td><a href="U_trfunds.jsp">Transfer Funds</a></td>
</tr></table>
</div>
<%
String acc,name,pwd,gen,email,mob,addr,adhar;
String acno=(String)request.getSession().getAttribute("acc");
ResultSet rs=AllretriveMethods.getuservalues(acno);
if(rs.next())
{
 acc=rs.getString(1);
 name=rs.getString(2);
 pwd=rs.getString(3);
 gen=rs.getString(4);
 email=rs.getString(5);
 mob=rs.getString(6);
 addr=rs.getString(7);
 adhar=rs.getString(8);

%>
<form name="user" action="URegUpdate" method="post" >
<table>
<tr>
<td>AccountNo</td><td><input type="text" name="acno" value=<%=acc %> readonly="readonly"></td>
</tr>
<tr>
<td>UserName</td><td><input type="text" name="uname" value=<%=name%> readonly="readonly" ></td>
</tr>
<tr>
<td>PassWord</td><td><input type="password" name="pwd" value=<%=pwd %>></td>
</tr>
<tr>
<td>Gender</td><td><label><%=gen %></label></td>
</tr>
<tr>
<td>Email</td><td><input type="text" name="email" value=<%=email %> ></td>
</tr>
<tr>
<td>Mobile</td><td><input type="text" name="mob" value=<%=mob %> readonly="readonly"></td>
</tr>
<tr>
<td>Address</td><td><textarea  name="addr" rows="6" cols="22" readonly="readonly" ><%=addr %></textarea></td>
</tr>
<tr>
<td>AdharNo</td><td><input type="text" name="adrno" value=<%=adhar %> readonly="readonly"></td>
</tr>

<tr>
<td colspan="2" align="center"><input type="submit" value="Update"></td>
</tr>
</table>


</form>
<%} %>
${message}
</body>
</html>