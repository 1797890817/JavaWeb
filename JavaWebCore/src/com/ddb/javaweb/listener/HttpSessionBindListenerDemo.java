package com.ddb.javaweb.listener;

import java.util.Date;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * Application Lifecycle Listener implementation class
 * HttpSessionBindListenerDemo
 *
 */
//@WebListener //注解不能有，有了，ｔｏｍｃａｔ反而不能启动
public class HttpSessionBindListenerDemo implements HttpSessionBindingListener {
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	/**
	 * Default constructor.
	 */
	public HttpSessionBindListenerDemo(String name) {
		this.setName(name);
	}

	/**
	 * @see HttpSessionBindingListener#valueBound(HttpSessionBindingEvent)
	 */
	public void valueBound(HttpSessionBindingEvent paramHttpSessionBindingEvent) {//在Ｓｅｅｓｓｉｏｎ绑定对象
		String now = new Date().toString();
		System.out.println(now + ":在session 中保存的HttpSessionBindListenerDemo 对象，（name= " + this.getName()
				+ "),session id =" + paramHttpSessionBindingEvent.getSession().getId());
	}

	/**
	 * @see HttpSessionBindingListener#valueUnbound(HttpSessionBindingEvent)
	 */
	public void valueUnbound(HttpSessionBindingEvent paramHttpSessionBindingEvent) {//从Session中移除
		String now = new Date().toString();
		System.out.println(now + ":从session 中移除的HttpSessionBindListenerDemo 对象，（name= " + this.getName()
				+ "),session id =" + paramHttpSessionBindingEvent.getSession().getId());
	}

}
