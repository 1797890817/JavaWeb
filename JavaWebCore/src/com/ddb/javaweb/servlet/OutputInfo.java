package com.ddb.javaweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OutputInfo
 */
@WebServlet("/servlet/OutputInfo")
public class OutputInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OutputInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");// 设置生成的文档类型
		PrintWriter out = response.getWriter();// 得到输出字符输出流
		out.println("<HTML>");
		out.println("<HEAD><TITLE>输出报头有关信息</TITLE></HEAD>");
		out.println("<BODY>");
		// 获取请求头信息，返回枚举类型
		Enumeration headers = request.getHeaderNames();
		while (headers.hasMoreElements()) {// 用循环逐一输出请求头信息
			String name = (String) headers.nextElement();
			String value = request.getHeader(name);
			out.println("<h3>" + name + "：" + value + "</h3>");
		}
		out.println("<h3>客户端的IP地址：" + request.getRemoteAddr() + "</h3>");
		out.println("<h3>客户端的端口号：" + request.getRemotePort() + "</h3>");
		out.println("<h3>服务器的IP地址：" + request.getLocalAddr() + "</h3>");
		out.println("<h3>服务器的端口号：" + request.getLocalPort() + "</h3>");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();// 关闭输出流

	}

}
