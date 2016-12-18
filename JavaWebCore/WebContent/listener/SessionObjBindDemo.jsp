<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ddb.javaweb.listener.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>Session中绑定对象</p>
	<%
		HttpSessionBindListenerDemo hsbd = new HttpSessionBindListenerDemo("张三");//实例化对象
		session.setAttribute("user", hsbd);
	%>
</body>
</html>