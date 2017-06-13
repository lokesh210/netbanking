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
<td><a href="U_login.jsp">User</a></td>
<td><a href="A_login.jsp">Staff</a></td></tr></table>
</div>
<div>
<form name="user" action="Login?type=user" method="post">
<table>
<tr>
<td>AccountNo</td><td><input type="text" name="uname"></td>
</tr>
<tr>
<td>PassWord</td><td><input type="password" name="upwd"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" name="LOGIN"></td>
</tr>
</table>
</form>
<table>
<tr><td>For New Registration <a href="U_register.jsp">click here</a></td></tr>
</table>
</div>
${message}
</body>
</html>