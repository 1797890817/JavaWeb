<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session</title>
</head>
<body>
	<form action="Login.jsp" method="post">
		<span>用户名：</span> <input name="userName" type="text" />
		<br/>
		<span>密&nbsp;码：</span> <input name="passWord" type="password" />
		<br/>
		<input name="submit" type="submit" value="登录"/>
		<input name="submit" type="reset" value="重置"/>
	</form>
	
	<%
	String userName = request.getParameter("userName");
	String passWord = request.getParameter("passWord");
	if(null != userName && null !=passWord && "zhangsan".equals(userName) && passWord.equals("123456")){
		response.setHeader("refresh", "3;url=loginOK.jsp");
		session.setAttribute("userid", userName);
	%>
		<h1>登录成功！3秒后跳转到登录成功的页面！</h1>
		<h3>如果没有成功跳转，请点击<a href="loginOK.jsp">这里</a>进行手动跳转</h3>
	<%	
	} else{
	%>
		<h1>登录失败，错误的用户名或者密码</h1>
	<% 
	}
	%>
</body>
</html>