<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginReceive</title>
</head>
<body>
	<% 
	String uname = request.getParameter("userName");
	String upword = request.getParameter("passWord");
	
	if(uname.equals("zhangsan") && upword.equals("123456")) {
	%>
	<jsp:forward page="loginSuccess.html" />
		<%
	} else{
	%>
		<jsp:forward page="loginFailed.html" />
			<%
	}
	%>
		</body>
</html>