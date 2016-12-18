<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RequestObjDemo</title>
</head>
<body>
	<%-- 获取request范围属性值  --%>
	<%
		String changeSessionId = request.changeSessionId();
		AsyncContext getAsyncContext = request.getAsyncContext();
		String AuthType= request.getAuthType();
		String CharacterEncoding =request.getCharacterEncoding();
		int contentLength= request.getContentLength();
		String ContentType = request.getContentType();
		String contextPath= request.getContextPath();
		String QueryString =request.getQueryString();
	%>
	<span>changeSessionId : </span> <%=changeSessionId %>
	<br/>
	<span>getAsyncContext : </span> <%=getAsyncContext %>
	<br/>
	<span>AuthType : </span> <%=AuthType %>
	<br/>
	<span>CharacterEncoding : </span> <%=CharacterEncoding %>
	<br/>
	<span>contentLength : </span> <%=contentLength %>
	<br/>
	<span>ContentType : </span> <%=ContentType %>
	<br/>
	<span>contextPath : </span> <%=contextPath %>
	<br/>
	<span>QueryString : </span> <%=QueryString %>
	
</body>
</html>