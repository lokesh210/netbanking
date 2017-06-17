<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="style1.css" type="text/css" rel="stylesheet">
<script type="text/javascript">
var x=window.history.length;
if (window.history[x]!=window.location)
{
    window.history.forward();
    window.history.go(1);
}

//	window.history.forward();
	//function noBack(){ window.history.forward(); }
</script>
</head>
<body>

<div name="design">
<table height="100%" width="100%">
<tr> <td>
<div class="header">
	<img src="banker.jpg" height="120px" width="100%">
       <font color=red size=7> <center></center></font>
        </div></td> </tr> 
<tr> <td>
        <div class="menu">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="U_login.jsp">User</a></li>
                <li><a href="A_login.jsp">Admin</a></li>
               
            </ul>
        </div></td> </tr>
<tr class="content"> <td>
        <div>
          </div></td> </tr>
<tr> <td>
        <div class="footer">footer</div></td> </tr>
</table>
        
        </div>
</body>
</html>