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
<form action="Funddeduct" method="post">
<table>
<tr>
<td>Select Account</td><td><div id="choose"><select name="credit"></select></div></td>
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