<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
<%
String message=(String)request.getAttribute("message");
%>
{{message}}
</body>
</html>