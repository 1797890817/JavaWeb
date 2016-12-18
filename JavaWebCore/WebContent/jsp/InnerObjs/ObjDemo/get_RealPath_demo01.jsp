<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>获取真实路径</title></head>
<body>
<%	// http://localhost/mldn/
	String path = application.getRealPath("/") ;
%>
<h3>真实路径：<%=path%></h3>
</body>
</html>