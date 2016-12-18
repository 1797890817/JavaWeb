<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.ddb.javaweb.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>urlImportDemo</title>
</head>
<body>
	<%-- <c:import url="../HelloWorld.jsp"/>	<!-- 这样可以引入页面的内容 ，加上var和scope反而不行！ --> --%>
	<c:import url="../HelloWorld.jsp" var="HelloWorld" scope="page" />
	<%-- ${HelloWorld} --%>	<!-- 有var属性时需要单独用EL表达式输出 -->
	<%-- <c:import url="http://www.baidu.com" var="baidu" scope="page" charEncoding="UTF-8"/>
	${baidu} --%>
	
	<c:redirect url="${HelloWorld}"></c:redirect>	<!-- 不能转向，此处的URL的内容不是url而是网页的内容 -->
</body>
</html>