<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有在线用户</title>
</head>
<body>
<h1>所有在线用户</h1>
<%
	//从ａｐｐｌｉｃａｔｉｏｎ中取出所有用户的保存列表
	Set all = (Set)this.getServletContext().getAttribute("online");
	Iterator iter = all.iterator();
	while(iter.hasNext()){
%>		
		<%= iter.next()%>
<%		
	}

%>
</body>
</html>