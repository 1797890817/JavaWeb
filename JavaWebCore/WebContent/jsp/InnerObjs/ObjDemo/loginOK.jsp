<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Success</title>
</head>
<body>
	<%
	String userid = (String)session.getAttribute("userid");
	%>

	<%
	if (null != userid) {
	%>
	<h2><%=userid %>
		您好，欢迎您登录本系统！
	</h2>
	<hr />
	<a href="loginOut.jsp">注销</a>
	<%	
	} else {
	%>
	<h2>
		请先进行系统登录！<a href="Login.jsp"> 登录</a>
	</h2>
	<% 
	}
	%>

</body>
</html>