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
	<jsp:useBean id="bb" class="com.ddb.javaweb.bean.BookBean" scope="page"></jsp:useBean>
	<p>使用JavaBean：</p>
	<c:set target="${bb}" property="bookName" value="JavaScript" />
	${'${'}bb.bookName}:${bb.bookName}<br/>
	<c:set target="${bb}" property="bookName">JavaCore</c:set>
	${'${'}bb.bookName}:${bb.bookName}<br/>
	<hr/>
	<p>outDemo:</p>
	<c:out value="China" escapeXml="true" /><br/>
	<c:out value="<China>" escapeXml="true" /><br/>
	<c:out value="China" escapeXml="false" /><br/>
	<c:out value="<China>" escapeXml="false" /><br/>
	<c:out value="<b><i>China</i></b>" escapeXml="true" /><br/>
	<c:out value="<b><i>China</i></b>" escapeXml="false" /><br/>
	<c:out value="****" default="这是默认值，仅当value为null时显示！"></c:out><br/>
	<%-- <c:out value=null default="这是默认值，仅当value为null时显示！"/> --%><!-- 这种方式不行！ -->
	<c:out value="${aaa}" default="这是默认值，仅当value为null时显示！"></c:out><br/>
	<c:out value="${aaa}" >这是默认值，仅当value为null时显示！</c:out><br/>
	<hr/>
	
	
</body>
</html>