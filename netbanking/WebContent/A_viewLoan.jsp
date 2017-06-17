<%@page import="mymethods.AllretriveMethods"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style1.css" type="text/css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>


<div name="design">
<table height="100%" width="100%">
<tr> <td>
<div class="header">
       <img src="banker.jpg" height="120px" width="100%">
        </div></td> </tr> 
<tr> <td>
        <div class="menu">
            <ul>
                 <li><a href="Admin_home.jsp">Home</a></li>
                <li><a href="A_viewusers.jsp?pageid=1">View-Customers</a></li>
                <li><a href="A_viewLoan.jsp">Loan-Section</a></li>
                <li><a href="A_history.jsp?pageid=1">History</a></li>
                <li><a href="Logout.jsp">Logout</a></li>
            </ul>
        </div></td> </tr>
<tr> <td align="center">
        <div class="content">
<div>
<table cellspacing="10" cellpadding="5">
<tr><th colspan="6" align="center" bgcolor="lightblue" style="font:caption;">Loans Verification</th>
</tr>
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
</div></td> </tr>
<tr> <td>
        <div class="footer">footer</div></td> </tr>
</table>
        
        </div>
</body>
</html>