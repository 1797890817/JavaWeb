<%@page import="com.ddb.javaweb.bean.BookBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.ddb.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<hr/>
	<c:set var="name2" scope="page">100</c:set> 
	${'${'}name2}:${name2}
	<p>现在移除变量</p>
	<c:remove var="name2" />
	${'${'}name2}:${name2}
	<hr/>
	<p>异常：</p>
	<c:catch var="errMsg">
		${param.a+1}
	</c:catch>
	<%-- 错误信息：${errMsg} --%>
	<c:out value="${errMsg}" />
	
</body>
</html>