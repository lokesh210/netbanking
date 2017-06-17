<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style1.css" type="text/css" rel="stylesheet">
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
		alert(xmlhttp.responseText);
		}
			
	
}

</script>
</head>
<body>


</div>
<div name="design">
<table height="100%" width="100%">
<tr> <td>
<div class="header">
       <img src="banker.jpg" height="120px" width="100%">
        </div></td> </tr>
<tr> <td>
        <div class="menu">
            <ul>
                <li><a href="U_home.jsp">Home</a></li>
                <li><a href="U_profile.jsp">Profile</a></li>
                <li><a href="U_Loanregister.jsp">Loan-Request</a></li>
                <li><a href="U_inbox.jsp?pageid=1">Inbox</a></li>
                <li><a href="U_fundtransfer.jsp">Transfer Funds</a></li>
                <li><a href="U_history.jsp?pageid=1">History</a></li>
                <li><a href="Logout.jsp">Logout</a></li>
            </ul>
        </div></td> </tr>
<tr> <td align="center">
        <div class="content">
<div>
<form name="aaf" action="AddFrnd" method="post">
<table cellspacing="10" cellpadding="5">
<tr><th colspan="2" align="center" bgcolor="lightblue" style="font:caption;">Add Creditor Account</th>
</tr>
<tr><td>Account Holder Number</td><td><input type="text" name="aano"  onblur="GetName(this.value)"></td></tr>
<tr><td>Account Holder Name</td><td><div id="hname"><input type="text" name="hname" ></div></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Add"></td></tr>
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