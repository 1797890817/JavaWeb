package com.ddb.javaweb.listener;

import java.util.Date;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class
 * ServletContextAttributeListenerDemo
 *
 */
@WebListener
public class ServletContextAttributeListenerDemo implements ServletContextAttributeListener {

	/**
	 * Default constructor.
	 */
	public ServletContextAttributeListenerDemo() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletContextAttributeListener#attributeAdded(ServletContextAttributeEvent)
	 */
	public void attributeAdded(ServletContextAttributeEvent paramServletContextAttributeEvent) {
		String now = new Date().toString();
		System.out.println(now + ":ServletContextAttributeListenerDemo **增加属性－－－>属性名称："
				+ paramServletContextAttributeEvent.getName() + ",属性内容："
				+ paramServletContextAttributeEvent.getValue());
	}

	/**
	 * @see ServletContextAttributeListener#attributeRemoved(ServletContextAttributeEvent)
	 */
	public void attributeRemoved(ServletContextAttributeEvent paramServletContextAttributeEvent) {
		String now = new Date().toString();
		System.out.println(now + ":ServletContextAttributeListenerDemo **删除属性－－－>属性名称："
				+ paramServletContextAttributeEvent.getName() + ",属性内容："
				+ paramServletContextAttributeEvent.getValue());
	}

	/**
	 * @see ServletContextAttributeListener#attributeReplaced(ServletContextAttributeEvent)
	 */
	public void attributeReplaced(ServletContextAttributeEvent paramServletContextAttributeEvent) {
		String now = new Date().toString();
		System.out.println(now + ":ServletContextAttributeListenerDemo **增加替换－－－>属性名称："
				+ paramServletContextAttributeEvent.getName() + ",属性内容："
				+ paramServletContextAttributeEvent.getValue());
	}

}
