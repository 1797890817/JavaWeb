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
		response.setHeader("refresh", "5;url=Login.jsp");
		session.invalidate(); //让会话失效
	%>
	<h3>您已经退出本系统，5秒后将跳转到登录页面。</h3>
	<h4>
		如果系统没有自动跳转，请点击<a href="Login.jsp">这里</a>
	</h4>

</body>
</html>