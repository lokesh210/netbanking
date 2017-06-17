<%@page import="mymethods.AllretriveMethods"%>
<%@page import="java.sql.ResultSet"%>
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
<table cellspacing="5" cellpadding="5">
<tr><th colspan="2" align="center" bgcolor="lightblue" style="font:caption;">History</th>
</tr>
<tr><th>Date</th><th>Message</th></tr>
<%
String acc=(String)request.getSession().getAttribute("acc");
int pid=Integer.parseInt(request.getParameter("pageid"));
int total=10;
if(pid==1){}
else{
	pid=pid-1;
	pid=pid*total+1;
}

ResultSet rs=AllretriveMethods.getmyhis(acc,pid,total);


while(rs.next())
{
%>
<tr><td><%=rs.getString(3)%></td><td><%=rs.getString(2)%></td></tr>
<%}

%>

</table>
<%
ResultSet rs1=AllretriveMethods.getmyhiscount(acc);
int n,n1=0,n2=0;
if(rs1.next()){
	n=rs1.getInt(1);
	n1=n/10;
	n2=n1+1;
}
for(int i=1;i<=n2;i++)
{
%>
<a href="U_history.jsp?pageid=<%=i %>"><%=i %></a>
<%} %>
</div>
</div></td> </tr> 
<tr> <td>
        <div class="footer">footer</div></td> </tr>
</table>
       
        </div>
</body>
</html>