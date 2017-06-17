<%@page import="mymethods.AllretriveMethods"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="style1.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String acc,name,pwd,gen,email,mob,addr,adhar;
String acno=(String)request.getSession().getAttribute("acc");
ResultSet rs=AllretriveMethods.getuservalues(acno);
if(rs.next())
{
 acc=rs.getString(1);
 name=rs.getString(2);
 pwd=rs.getString(4);
 gen=rs.getString(5);
 email=rs.getString(6);
 mob=rs.getString(7);
 addr=rs.getString(8);
 adhar=rs.getString(9);
 
 
%>

<div name="design">
<table height="100%" width="100%">
<tr> <td>
<div class="header">
<img src="banker.jpg" height="120px" width="100%">
       
        </div></td> </tr> 
<tr> <td>
        <div class="menu">
            <ul>
                 <li><a href="U_home.jsp">Home</a></li>
                <li><a href="U_profile.jsp">Profile</a></li>
                <li><a href="U_Loanregister.jsp">Loan-Request</a></li>
                <li><a href="U_inbox.jsp?pageid=1">Inbox</a></li>
                <li><a href="U_fundtransfer.jsp">Transfer Funds</a></li>
                <li><a href="U_history.jsp?pageid=1">History</a></li>
                <li><a href="Logout.jsp">Logout</a></li>
            </ul>
        </div></td> </tr> 
<tr> <td align="center">
        <div class="content">
<div>
<form name="user" action="URegUpdate" method="post" >
<table cellspacing="5" cellpadding="5">
<tr><th colspan="2" align="center" bgcolor="lightblue" style="font:caption;">Profile</th>
</tr>
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
</div>
</div></td> </tr> 
<tr> <td>
        <div class="footer">footer</div></td> </tr>
</table>
        
        </div>
</body>
</html>