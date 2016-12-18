<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- 获取page范围属性值  --%>
	<%
		String userName = (String) pageContext.getAttribute("name");
		String userBirth =(String) pageContext.getAttribute("birthday");
	%>
	<p>用户名:</p><%=userName %>
	<p>生&nbsp;日:</p><%=userBirth %>
	<%="********" %>
</body>
</html>