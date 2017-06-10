<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="admin" action="aReg" method="post">
<table>
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
</body>
</html> 