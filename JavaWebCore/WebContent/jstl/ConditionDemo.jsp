<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		请输入百分制成绩：<input type="text" name="score" /> <input type="submit"
			value="提交" />&nbsp;&nbsp; <input type="reset" value="重置" />
	</form>
	<c:set var="color" value="red" />
	<c:set var="n" value="${param.score}" />
	<c:if test="${n>=60}">
		<c:set var="color" value="blue" />
	</c:if>
	<font color="${color}" size="6"> <c:choose>
	
			<c:when test="${n>100||n<0}">
                   请输入正确的百分值！
     </c:when>
			<c:when test="${n>=90 && n<=100}">
                    您的成绩优秀！
     </c:when>
			<c:when test="${n>=80&&n<90}">
                    您的成绩良好！
     </c:when>
			<c:when test="${n>=70&&n<80}">
                    您的成绩中等！
     </c:when>
			<c:when test="${n>=60&&n<70}">
                    您的成绩及格！
     </c:when>
			<c:otherwise>
                    您的成绩不及格！
     </c:otherwise>
		</c:choose>
	</font>
</body>
</html>