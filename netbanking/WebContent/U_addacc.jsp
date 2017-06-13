<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
var id=aaf.aano.value;
function GetName(id){
	if(id=="")
		{
		alert("enter account");
		return false;
		}
	var xmlhttp=new XMLHttpRequest();
	var url="./FindAc?acno="+id;
		xmlhttp.open("POST",url,false);
	xmlhttp.send();
	document.getElementById("hname").innerHTML=xmlhttp.responseText;
	var status=xmlhttp.responseText
	if(status.CharAt(0)=="I")
		{
		alert(status);
		}
			
	
}

</script>
</head>
<body>
<div>
<table><tr>
<td><a href="U_home.jsp">Home</a></td>
<td><a href="U_profile.jsp">Profile</a></td>
<td><a href="U_Loanregister.jsp">Loan-Request</a></td>
<td><a href="U_inbox.jsp">Inbox</a></td>
<td><a href="U_fundtransfer.jsp">Transfer Funds</a></td>
<td><a href="U_history.jsp">History</a></td>
</tr></table>
</div>
<form name="aaf" action="AddFrnd" method="post">
<table>
<tr><td>Account Holder Number</td><td><input type="text" name="aano"  onblur="GetName(this.value)"></td></tr>
<tr><td>Account Holder Name</td><td><div id="hname"><input type="text" name="hname" ></div></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Add"></td></tr>
</table>
</form>
</div>
</body>
</html>