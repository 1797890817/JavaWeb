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
	<%-- <% 
	BookBean bb = new BookBean();
	pageContext.setAttribute("bb", bb);
	%> --%>
	<jsp:useBean id="bb" class="com.ddb.javaweb.bean.BookBean" scope="page"></jsp:useBean>
	<c:out value="Hello World!"></c:out><br/>
	<c:out value="null" >Hello World!</c:out><br/>
	<c:set var="name" value="value" scope="page" />
	${'${'}name}:${name}<br/>
	<%-- <c:set var="name2" value="value2" scope="page">100</c:set> --%>
	<c:set var="name2" scope="page">100</c:set> <!-- 没有value属性，有的话反而报错！ -->
	${'${'}name2}:${name2}<br/>
	<hr/>
	<p>使用JavaBean：</p>
	<c:set target="${bb}" property="bookName" value="JavaScript" />
	${'${'}bb.bookName}:${bb.bookName}<br/>
	<c:set target="${bb}" property="bookName">JavaCore</c:set>
	${'${'}bb.bookName}:${bb.bookName}<br/>
</body>
</html>