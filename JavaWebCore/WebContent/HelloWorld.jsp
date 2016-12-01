<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 这是HTML的注释，浏览器可见！ -->
	<p>Hello World!</p>
	<%-- ...... --%>
	<% Date today = new Date();
	 	int hours = today.getHours();
	 	if (hours >0 && hours<12) {
	 		out.println("早上好！");
	 	}else {
	 		out.println("下午好！");
	 	}
	
	%>

	<%-- 这是JSP的注释！应该看不见 --%>
	<% out.println("Hello World!"); %>
</body>
</html>