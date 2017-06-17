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
                <li><a href="index.jsp">Home</a></li>
                <li><a href="U_login.jsp">User</a></li>
                <li><a href="A_login.jsp">Admin</a></li>
                 
            </ul>
        </div></td> </tr>
<tr> <td align="center">
        <div class="content">
<div>
<div>
<form name="admin" action="Login?type=admin" method="post">
<table cellspacing="10" cellpadding="5">
<tr><th colspan="2" align="center" bgcolor="lightblue" style="font:caption;">Login Here</th>
</tr>
<tr>
<td>UserName</td><td><input type="text" name="uname" required="required"></td>
</tr>
<tr>
<td>PassWord</td><td><input type="password" name="upwd" required="required"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" name="LOGIN"></td>
</tr>
</table>
</form>
</div>
${message}
</div>
</div></td> </tr>
<tr> <td>
        <div class="footer">footer</div></td> </tr>
</table>
       
        </div>
</body>
</html>