<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RequestObjDemo</title>
</head>
<body>
	<%! int count = 0; %><%-- 定义全局变量 --%>
	<% 
		response.setHeader("refresh", "2");
		//response.setHeader("refresh", "4;url='http://www.baidu.com'");
	%>
	<p>当前刷新次数：</p><%= count++ %>
	<%
		if (count == 15){
			response.sendRedirect("../session2.jsp");
		}
	%>
	
</body>
</html>