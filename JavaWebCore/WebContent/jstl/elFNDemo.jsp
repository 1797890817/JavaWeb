<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>urlImportDemo</title>
</head>
<body>
	<%
		String[] video = { "电影", "电视剧", "动画片", "记录片" };
		request.setAttribute("video", video);
	%>
	大写转小写：I LOVE CHINA!&nbsp;&nbsp;${fn:toLowerCase("I LOVE CHINA!")}
	<br /> 取长度：I LOVE CHINA!的长度为${fn:length("I LOVE CHINA!")}
	<br /> video的长度为：${fn:length(video)}
	<br /> video的值连接成一个字符串为：${fn:join(video,"、")}
	<br /> video的值连接成一个字符串为：${fn:join(video,"+")}
	<br /> video的值连接成一个字符串为：${fn:join(video,"*")}
	<br /> video的值连接成一个字符串为：${fn:join(video," ")}
</body>
</html>