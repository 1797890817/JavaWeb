<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head><title>��������</title></head>
<body>
<%	
	Enumeration enu = this.getServletContext().getAttributeNames() ;	// ȡ��ȫ��������
	while(enu.hasMoreElements()){
		String name = (String) enu.nextElement() ;
%>
		<h4><%=name%> --> <%=this.getServletContext().getAttribute(name)%></h4>
<%
	}
%>
</body>
</html>