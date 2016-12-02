<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ddb.javaweb.bean.*"%>
<jsp:useBean id="book" class="com.ddb.javaweb.bean.BookBean"
	scope="page">
	<%-- <jsp:setProperty name="book" property="*" /> --%>
<%-- 	<jsp:setProperty name="book" property="bookName" />
	<jsp:setProperty name="book" property="bookNum" /> --%>
<%-- 	<jsp:setProperty name="book" property="bookName" value="AAAA"/>
	<jsp:setProperty name="book" property="bookNum" value="1111" /> --%>
	<jsp:setProperty name="book" property="bookName" param="bookName"/>
	<jsp:setProperty name="book" property="bookNum" param="bookNum" />
</jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bookReceive</title>
</head>
<body>
	<p>订 购 图 书 清 单</p>
	<hr>
	<span>书 名：</span> <jsp:getProperty property="bookName" name="book"/>
	<BR> 
	<span>数 量：</span> <jsp:getProperty property="bookNum" name="book"/>
	<BR>
</body>
</html>