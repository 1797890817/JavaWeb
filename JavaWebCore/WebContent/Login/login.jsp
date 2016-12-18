<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<form name="myLoginForm" action="loginReceive.jsp" method="post">
			<span>用户名：</span><input name="userName" type="text" size="32"
				title="请输入用户名！" /> <br /> <span>密&nbsp;码：</span> <input
				name="passWord" type="password" size="32" title="请输入密码！" /> <br />
			<input name="submit" type="submit" value="登录" title="点击登录" /> <input
				name="reset" type="reset" value="重写" title="点击重写" />
		</form>
	</center>
</body>
</html>