package com.ddb.javaweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginDemo
 */
@WebServlet("/LoginDemo")
public class LoginDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginDemo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");// 设置文档类型及字符集
		response.setCharacterEncoding("UTF-8");	//没有本行则会中文乱码
		PrintWriter out = response.getWriter();// 得到输出字符输出流
		out.println("<html>");
		out.println("<head>");
		out.println("<title>LoginPage</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<form method=\"post\" action=\"/JavaWebCore/EnterDemo\">");
		out.println("<table>");
		out.println("<tr>");
		out.println("<td>请输入用户名</td>");
		out.println("<td><input type=text name=username></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>请输入密码</td>");
		out.println("<td><input type=password name=password></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td><input type=submit value=登录></td>");
		out.println("<td><input type=reset value=重填></td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</form>");
		out.println("</body>");
		out.println("</Html>");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
