<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
session.removeAttribute("acc");
session.invalidate();
response.sendRedirect("index.jsp");
%>
<head>
 <meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0"> 
<title>Insert title here</title>
<script type="text/javascript">
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

</body>
</html>