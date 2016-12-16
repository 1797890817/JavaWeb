package com.ddb.javaweb.servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitOrderDemo
 */
/*@WebServlet(
		urlPatterns = {"/servlet/InitOrderDemo2"},
		loadOnStartup = 4
		)*/
public class InitOrderDemo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int level = 2;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitOrderDemo2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("InitOrderDemo2 初始化，Level：" + level );
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("InitOrderDemo2 销毁..." );
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("InitOrderDemo2 提供服务中...");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
