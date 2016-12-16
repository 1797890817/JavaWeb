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
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class PasswordFilter
 */
@WebFilter(
		filterName="f03",
		dispatcherTypes = {
				DispatcherType.REQUEST, 
				DispatcherType.FORWARD, 
				DispatcherType.INCLUDE, 
				DispatcherType.ERROR
		},
		//urlPatterns = { "/servlet/MyLoginServlet2" },
		servletNames={"MyLoginServletDemo"}
		)
public class PasswordFilter implements Filter {

    /**
     * Default constructor. 
     */
    public PasswordFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		System.out.println("PasswordFilter 销毁......");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("PasswordFilter 过滤器执行中......");
		String password = request.getParameter("password");
		if (password !=null && !"".equals(password)) {
			System.out.println("PasswordFilter放行，即将进入...");
			chain.doFilter(request, response);
			//System.out.println("UserNameFilter 过滤器执行结束！");
		} else {
			HttpServletResponse hr= (HttpServletResponse)response;
			hr.sendRedirect("/JavaWebCore/filter/loginPasswordLost.html");
		}
		System.out.println("PasswordFilter 过滤器执行中......");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("PasswordFilter 初始化......");
	}

}
