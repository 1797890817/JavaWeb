package com.ddb.javaweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MyLoginServletDemo
 */
@WebServlet(
		name="MyLoginServletDemo",
		urlPatterns={"/servlet/MyLoginServlet2"}
		)
public class MyLoginServletDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MyLoginServletDemo() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		response.setContentType("text/html;charset=GB2312");// 设置生成的文档类型  解决页面乱码问题
		//response.setCharacterEncoding("UTF-8");	//也可以解决页面乱码问题
		PrintWriter out = response.getWriter();// 得到输出字符输出流
		out.println("<HTML>");// 输出相应的HTML源文件
		out.println("<HEAD><TITLE>用servlet测试get/post方法</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("<H2>调用了doGet()方法</H2><p>");
		out.println("<H2>用户输入信息如下：</H2>");
		//request.setCharacterEncoding("UTF-8");	
		//解决中文参数乱码方式一：设定Request对象的字符集
		String username = request.getParameter("username");
		//username = new String(username.getBytes("ISO8859_1"),"UTF-8");
		if (username == null || username == "")
			username = "未输入";
		String userpwd = request.getParameter("password");
		//userpwd = new String(userpwd.getBytes("ISO8859-1"),"UTF-8");
		//解决中文参数乱码方式二：new 一个新的字串。
		if (userpwd == null || userpwd == "")
			userpwd = "未输入";
		if (!username.equals("未输入") && !userpwd.equals("未输入")) {
			HttpSession hs = request.getSession();
			hs.setAttribute("userid", username);
		} 
		out.println("<H2>用户名：" + username + "</H2>");
		out.println("<H2>密　码：" + userpwd + "</H2>");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();// 关闭输出流

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
