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
<form name="admin" action="aReg" method="post">
<table cellspacing="10" cellpadding="5">
<tr><th colspan="2" align="center" bgcolor="lightblue" style="font:caption;">Loan Form</th>
</tr>
<tr>
<td>Job</td><td><input type="text" name="jname"></td>
</tr>
<tr>
<td>EmployeeID</td><td><input type="text" name="jiname"></td>
</tr>
<tr>
<td>Salary(in year)</td><td><input type="text" name="sal"></td>
</tr>
<tr>
<td>Organization</td><td><input type="text" name="org"></td>
</tr>
<tr>
<td>Location</td><td><textarea  name="orgaddr" rows="6" cols="40"></textarea></td>
</tr>
<tr>
<td>Date of Joining</td><td><input type="text" name="doj"></td>
</tr>
<tr>
<td>Loan Amount</td><td><input type="text" name="amt"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" name="Apply"></td>
</tr>
</table>
</form>

${message}
</div>
        </div></td> </tr>
<tr> <td>
        <div class="footer">footer</div></td> </tr>
</table>
       
        </div>
</body>
</html> 