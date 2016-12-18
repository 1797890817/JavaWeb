<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>ｒｅｑｕｅｓｔ属性的添加与替换</p>
	<%
	//设置ｒｅｑｕｅｓｔ范围的属性
	request.setAttribute("request", "www.baidu.com");
	
	//替换ｒｅｑｕｅｓｔ范围的属性
	request.setAttribute("request", "www.163.com");
	
	%>
</body>
</html>