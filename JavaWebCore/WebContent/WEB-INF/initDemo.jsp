
<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>��ȡ��ʼ����Ϣ</title></head>
<body>
<%
	String dbDriver = config.getInitParameter("driver") ;
	String dbUrl = config.getInitParameter("url") ;
%>
<h3>��������<%=dbDriver%></h3>
<h3>���ӵ�ַ��<%=dbUrl%></h3>
</body>
</html>