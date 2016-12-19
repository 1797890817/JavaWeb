package com.ddb.javaweb.listener;

import java.util.Date;

import javax.servlet.AsyncEvent;
import javax.servlet.AsyncListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class
 * ServletRequestAllListenerDemo
 *
 */
@WebListener
public class ServletRequestAllListenerDemo
		implements ServletRequestListener, ServletRequestAttributeListener, AsyncListener {

	/**
	 * Default constructor.
	 */
	public ServletRequestAllListenerDemo() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see AsyncListener#onComplete(AsyncEvent)
	 */
	public void onComplete(AsyncEvent paramAsyncEvent) throws java.io.IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletRequestListener#requestDestroyed(ServletRequestEvent)
	 */
	public void requestDestroyed(ServletRequestEvent paramServletRequestEvent) {
		String now = new Date().toString();
		System.out.println(now + "：***request 销毁。http://" + paramServletRequestEvent.getServletRequest().getRemoteAddr()
				+ paramServletRequestEvent.getServletContext().getContextPath());
	}

	/**
	 * @see ServletRequestAttributeListener#attributeRemoved(ServletRequestAttributeEvent)
	 */
	public void attributeRemoved(ServletRequestAttributeEvent paramServletRequestAttributeEvent) {
		String now = new Date().toString();
		System.out.println(now + ":ServletRequestAllListenerDemo " + " **删除ｒｅｑｕｅｓｔ属性－－－>属性名称："
				+ paramServletRequestAttributeEvent.getName() + ",属性内容："
				+ paramServletRequestAttributeEvent.getValue());
	}

	/**
	 * @see AsyncListener#onError(AsyncEvent)
	 */
	public void onError(AsyncEvent paramAsyncEvent) throws java.io.IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see AsyncListener#onStartAsync(AsyncEvent)
	 */
	public void onStartAsync(AsyncEvent paramAsyncEvent) throws java.io.IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletRequestListener#requestInitialized(ServletRequestEvent)
	 */
	public void requestInitialized(ServletRequestEvent paramServletRequestEvent) {
		String now = new Date().toString();
		System.out
				.println(now + "：***request 初始化。http://" + paramServletRequestEvent.getServletRequest().getRemoteAddr()
						+ paramServletRequestEvent.getServletContext().getContextPath());
	}

	/**
	 * @see ServletRequestAttributeListener#attributeAdded(ServletRequestAttributeEvent)
	 */
	public void attributeAdded(ServletRequestAttributeEvent paramServletRequestAttributeEvent) {
		String now = new Date().toString();
		System.out.println(now + ":ServletRequestAllListenerDemo " + " **增加ｒｅｑｕｅｓｔ属性－－－>属性名称："
				+ paramServletRequestAttributeEvent.getName() + ",属性内容："
				+ paramServletRequestAttributeEvent.getValue());
	}

	/**
	 * @see AsyncListener#onTimeout(AsyncEvent)
	 */
	public void onTimeout(AsyncEvent paramAsyncEvent) throws java.io.IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletRequestAttributeListener#attributeReplaced(ServletRequestAttributeEvent)
	 */
	public void attributeReplaced(ServletRequestAttributeEvent paramServletRequestAttributeEvent) {
		String now = new Date().toString();
		System.out.println(now + ":ServletRequestAllListenerDemo " + " **替换ｒｅｑｕｅｓｔ属性－－－>属性名称："
				+ paramServletRequestAttributeEvent.getName() + ",属性内容："
				+ paramServletRequestAttributeEvent.getValue());
		System.out.println(now + ":ServletRequestAllListenerDemo " + " **新的ｒｅｑｕｅｓｔ属性－－－>属性名称："
				+ paramServletRequestAttributeEvent.getName() + ",属性内容："
				+ paramServletRequestAttributeEvent.getServletRequest().getAttribute(paramServletRequestAttributeEvent.getName()));
		
	}

}
