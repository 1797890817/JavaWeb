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
 * Servlet Filter implementation class NoCacheFilter
 */
@WebFilter(dispatcherTypes = {
				DispatcherType.REQUEST, 
				DispatcherType.FORWARD, 
				DispatcherType.INCLUDE, 
				DispatcherType.ERROR
		}
					, urlPatterns = { "/*" })
public class NoCacheFilter implements Filter {

    /**
     * Default constructor. 
     */
    public NoCacheFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		System.out.println("禁止浏览器缓存过滤器正在销毁....");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("禁止浏览器缓存过滤器正在执行....");
		HttpServletResponse hsr	 = (HttpServletResponse)response;
		hsr.setDateHeader("Expires", -1);
		hsr.setHeader("Cache-Control","no-cache");
		hsr.setHeader("Pragma","no-cache");
		chain.doFilter(request, response);
		System.out.println("禁止浏览器缓存过滤器执行结束....");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("禁止浏览器缓存过滤器正在初始化....");
	}

}
