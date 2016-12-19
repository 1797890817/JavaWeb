package com.ddb.javaweb.listener;

import java.util.Date;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Application Lifecycle Listener implementation class
 * HttpSessionAttributeListener
 *
 */
@WebListener
public class HttpSessionAttributeListenerDemo implements HttpSessionAttributeListener {
  
	/**
	 * Default constructor.
	 */
	public HttpSessionAttributeListenerDemo() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpSessionAttributeListenerDemo#attributeAdded(HttpSessionBindingEvent)
	 */
	public void attributeAdded(HttpSessionBindingEvent paramHttpSessionBindingEvent) {
		String now = new Date().toString();
		System.out.println(now + ":HttpSessionAttributeListenerDemo "
				+ paramHttpSessionBindingEvent.getSession().getId() + " **增加属性－－－>属性名称："
				+ paramHttpSessionBindingEvent.getName() + ",属性内容：" + paramHttpSessionBindingEvent.getValue());
	}

	/**
	 * @see HttpSessionAttributeListenerDemo#attributeRemoved(HttpSessionBindingEvent)
	 */
	public void attributeRemoved(HttpSessionBindingEvent paramHttpSessionBindingEvent) {
		String now = new Date().toString();
		System.out.println(now + ":HttpSessionAttributeListenerDemo "
				+ paramHttpSessionBindingEvent.getSession().getId() + " **删除属性－－－>属性名称："
				+ paramHttpSessionBindingEvent.getName() + ",属性内容：" + paramHttpSessionBindingEvent.getValue());
	}

	/**
	 * @see HttpSessionAttributeListenerDemo#attributeReplaced(HttpSessionBindingEvent)
	 */
	public void attributeReplaced(HttpSessionBindingEvent paramHttpSessionBindingEvent) {
		String now = new Date().toString();
		System.out.println(now + ":HttpSessionAttributeListenerDemo "
				+ paramHttpSessionBindingEvent.getSession().getId() + " **替换属性－－－>属性名称："
				+ paramHttpSessionBindingEvent.getName() + ",属性内容：" + paramHttpSessionBindingEvent.getValue());
	}

}
