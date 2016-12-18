<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 设定session范围属性 --%>
	<%
	session.setAttribute("name", "lisi");
	session.setAttribute("birthday", "1984-11-21");
	%>
	
	<%-- 获取session范围属性值  --%>
	<%
		String userName = (String) session.getAttribute("name");
		String userBirth =(String) session.getAttribute("birthday");
	%>
	<p>用户名:</p><%=userName %>
	<p>生&nbsp;日:</p><%=userBirth %>
	<a href="session2.jsp">跳转 </a>
	<%-- <jsp:forward page="session2.jsp"></jsp:forward> --%>
</body>
</html>