<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="user" action="uReg" method="post" enctype="multipart/form-data">
<table>
<tr>
<td>UserName</td><td><input type="text" name="uname"></td>
</tr>
<tr>
<td>PassWord</td><td><input type="password" name="upwd"></td>
</tr>
<tr>
<td>Gender</td><td><input type="radio" name="gender" value="Male">Male<input type="radio" name="gender" value="Female">Female</td>
</tr>
<tr>
<td>Email</td><td><input type="text" name="mail"></td>
</tr>
<tr>
<td>Mobile</td><td><input type="text" name="mob"></td>
</tr>
<tr>
<td>Address</td><td><textarea  name="addr" rows="6" cols="22"></textarea></td>
</tr>
<tr>
<td>AdharNo</td><td><input type="text" name="adrno"></td>
</tr>
<tr>
<td>Image</td><td><input type="file" name="imge"></td>
</tr>

<tr>
<td colspan="2" align="center"><input type="submit" name="LOGIN"></td>
</tr>
</table>


</form>
</body>
</html>