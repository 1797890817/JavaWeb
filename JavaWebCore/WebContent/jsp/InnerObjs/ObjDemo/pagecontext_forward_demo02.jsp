<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>pageContext页面转发2</title></head>
<body>
<%
	// 直接从pageContext对象中取得了request
	String info = pageContext.getRequest().getParameter("info") ;
%>
<h3>info = <%=info%></h3>
<h3>realpath = <%=pageContext.getServletContext().getRealPath("/")%></h3>
</body>
</html>