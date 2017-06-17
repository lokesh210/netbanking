<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style1.css" type="text/css" rel="stylesheet">
<title>User Register</title>
<script>

function check(mob){
	var mobile=mob.length;
	if(mobile<10)
		{
		alert("mobile number requried");
		}
}
function Cname(name){
	var xmlhttp=new XMLHttpRequest();
	var url="./FindName?acno="+name;
	xmlhttp.open("POST",url,false);
	xmlhttp.send();
	var u="N";
	var s=xmlhttp.responseText;
	if(s.charAt(0)=="N"){		
		alert(s);
		
	}
}
</script>
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
<form name="user" action="uReg" method="post" enctype="multipart/form-data" onsubmit="check()" >
<table cellspacing="5" cellpadding="5">
<tr><th colspan="2" align="center" bgcolor="lightblue" style="font:caption;">Registration</th>
</tr>
<tr>
<td>UserName</td><td><input type="text" name="uname" required="required" onblur="Cname(this.value)"></td>
</tr>
<tr>
<td>PassWord</td><td><input type="password" name="upwd" required="required"></td>
</tr>
<tr>
<td>Gender</td><td><input type="radio" id="" name="gender" value="Male">Male<input type="radio" name="gender" value="Female">Female</td>
</tr>
<tr>
<td>Email</td><td><input type="email" name="mail" required="required"></td>
</tr>
<tr>
<td>Mobile</td><td><input type="text" name="mob" required="required" maxlength="10" onblur="check(this.value)"></td>
</tr>
<tr>
<td>Address</td><td><textarea  name="addr" rows="6" cols="22" required="required"></textarea></td>
</tr>
<tr>
<td>AdharNo</td><td><input type="text" name="adrno" required="required"></td>
</tr>
<tr>
<td>Image</td><td><input type="file" name="imge"></td>
</tr>

<tr>
<td colspan="2" align="center"><input type="submit" name="LOGIN"></td>
</tr>
</table>


</form>
</div>
        </div></td> </tr> 
<tr> <td>
        <div class="footer">footer</div></td> </tr>
</table>
        
        </div>
</body>
</html>