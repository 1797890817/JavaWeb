<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>增加ＳｅｒｖｌｅｔＣｏｎｔｅｘｔ的属性</p>
	<% 
		//设置ａｐｐｌｉｃａｔｉｏｎ的范围属性
		this.getServletContext().setAttribute("XARCW", "培训中心");
	%>
</body>
</html>