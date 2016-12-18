<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Login Page</title>
</head>
<body>
	<h1>用户登录监控</h1>
	<form action="UserLogin.jsp" method="post">
		<span>用户ＩＤ：</span><input type="text" name="userid" /> <br /> <input
			type="submit" value="登录">
	</form>
	<%
		String userid  = request.getParameter("userid");
	   if(!(userid ==null || "".equals(userid))){
		   session.setAttribute("userid", userid);
		   response.sendRedirect("./UserList.jsp");
	   }
	
	%>

</body>
</html>