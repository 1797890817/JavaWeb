package com.ddb.javaweb.filter;

import java.io.IOException;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginCheckFilter
 */
@WebFilter(dispatcherTypes = {
				DispatcherType.REQUEST, 
				DispatcherType.FORWARD, 
				DispatcherType.INCLUDE, 
				DispatcherType.ERROR
		}
					, urlPatterns = { "/servlet/InitOrderDemo" })
public class LoginCheckFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginCheckFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		System.out.println("LoginCheckFilter 销毁....");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("LoginCheckFilter check login or not....");
		HttpServletRequest hsr = (HttpServletRequest)request;
		HttpSession hSession = hsr.getSession();
		String uname = (String)hSession.getAttribute("userid");
		if ("".equals(uname) || uname ==null) {
			System.out.println("用户未登录，check login拦截！");
			HttpServletResponse hr= (HttpServletResponse)response;
			hr.sendRedirect("/JavaWebCore/filter/unlogin.html");
		} else {
			System.out.println("用户已经登录，check login放行！");
			chain.doFilter(request, response);
			
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("LoginCheckFilter 初始化....");
	}

}
