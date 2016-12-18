<%@page import="java.util.TreeSet"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ page isELIgnored="true" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here2</title>
<%
	//List
	List<String> list = new ArrayList<String>();
	list.add("abc");
	list.add("cde");
	list.add("def");
	list.add("efg");
	//list.get(index)
	pageContext.setAttribute("list", list);
	//map
	Map<String,String> map = new HashMap<String,String>();
	map.put("11", "AA11");
	map.put("12", "AA12");
	map.put("13", "AA13");
	map.put("14", "AA14");
	//map.get(key)
	pageContext.setAttribute("map", map);
	
	//set
	 Set<String> set = new HashSet<String>(); 
	/* Set<String> set = new TreeSet<String>(); */
	set.add("abc");
	set.add("cde");
	set.add("def");
	set.add("efg");
	//set.
	pageContext.setAttribute("set", set);
	
	//数组
	String[] strArray = {"A01","A02","A03","A04"};
	pageContext.setAttribute("strArray", strArray);
	
%>
</head>
<body>
	<p>${'${'}list}:</p>${list}
	<p>${'${'}list[0]}:</p>${list[0]}
	<p>${'${'}list[3]}:</p>${list[3]}
	<%-- <p>${'${'}list['abc']}:</p>${list['abc']} --%>
	<%-- <p>${'${'}list["abc"]}:</p>${list["abc"]} --%>
	<%-- <p>${'${'}list.abc}:</p>${list.abc} --%>
	<p>${'${'}list.get(0)}:</p>${list.get(0)}
	<p>list 只能通过索引获取</p>
	<hr/>
	<p>${'${'}map}: </p> ${map}
	<p>${'${'}map[0]}: </p> ${map[0]}<!-- 得不到值 -->
	<p>${'${'}map["11"]}: </p> ${map["11"]}
	<p>${'${'}map.get("13")}: </p> ${map.get("13")}
	<%-- <p>${'${'}map.11}: </p> ${map.11}
	<p>${'${'}map["14"]}: </p> ${map["14"]} --%>
	<p>map 获取元素是通过键Key！</p>
	<hr/>
	<p>${'${'}set}:</p>${set}
	<%-- <p>${'${'}set[0]}</p>${set[0]} --%>
	<%-- <p>${'${'}set["abc"]}</p>${set["abc"]} --%>
	<p>Set 目前无法获取直接获取其中的元素！</p>
	<hr/>
	<p>${'${'}strArray}:</p>${strArray}<br/>
	<p>${'${'}strArray[0]}:</p>${strArray[0]}<br/>
	<p>${'${'}strArray[2]}:</p>${strArray[2]}<br/>
	<p>${'${'}strArray[2]}:</p>${strArray[2]}<br/>
	<%-- <p>${'${'}strArray.A01}:</p>${strArray.A01}<br/> --%>
	<%-- <p>${'${'}strArray["A01"]}:</p>${strArray["A01"]}<br/> --%>
	<p>数组的取值，只能使用[]和索引来取值！</p>
</body>
</html>