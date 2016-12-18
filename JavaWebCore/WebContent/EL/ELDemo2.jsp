<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ddb.javaweb.bean.*"%>
<jsp:useBean id="book" class="com.ddb.javaweb.bean.BookBean"
	scope="page">
	<%-- <jsp:setProperty name="book" property="*" /> --%>
<%-- 	<jsp:setProperty name="book" property="bookName" />
	<jsp:setProperty name="book" property="bookNum" /> --%>
	<jsp:setProperty name="book" property="bookName" value="AAAA"/>
	<jsp:setProperty name="book" property="bookNum" value="1111" />
<%-- 	<jsp:setProperty name="book" property="bookName" param="bookName"/>
	<jsp:setProperty name="book" property="bookNum" param="bookNum" /> --%>
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here2</title>
</head>
<body>
	<%
	 pageContext.setAttribute("book-addr", "hefei");
	 pageContext.setAttribute("book_addr", "hefei2");
	 %>
	<span>书名--${'${'}book.bookName}：</span>${book.bookName}<br/>
	<span>数量--${'${'}book.bookNum }：</span>${book.bookNum}<br/>
	<span>书名--${'${'}book['bookName']}：</span>${book['bookName']}<br/>
	<span>数量--${'${'}book[ 'bookNum ']}：</span>${book['bookNum']}<br/>
	<hr/>
	<%-- ${'${'}pageScope.book-addr}<br/> --%>
	<span>${'${'}pageScope['book-addr']}</span>${pageScope['book-addr']}<br/>
	<span>${'${'}pageScope.book_addr}</span>${pageScope.book_addr}<br/>
	<span>${'${'}pageScope['book_addr']}</span>${pageScope['book_addr']}<br/>
</body>
</html>