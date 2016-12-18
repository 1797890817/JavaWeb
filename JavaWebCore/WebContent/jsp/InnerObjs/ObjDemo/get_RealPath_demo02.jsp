<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>获取真实路径2</title></head>
<body>
<%	
	String path = this.getServletContext().getRealPath("/") ;
	
%>
<h3>真实路径：<%=path%></h3>
</body>
</html>