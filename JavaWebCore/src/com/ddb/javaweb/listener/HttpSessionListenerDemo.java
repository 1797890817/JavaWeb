package com.ddb.javaweb.listener;

import java.util.Date;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class HttpSessionListenerDemo
 *
 */
//@WebListener
public class HttpSessionListenerDemo implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public HttpSessionListenerDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent paramHttpSessionEvent)  { 
    	String now = new Date().toString();
		System.out.println(now + ":HttpSessionListenerDemo SESSION 创建，SESSION ID="
				+paramHttpSessionEvent.getSession().getId());
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent paramHttpSessionEvent)  { 
    	String now = new Date().toString();
		System.out.println(now + ":HttpSessionListenerDemo SESSION 销毁，SESSION ID="
				+paramHttpSessionEvent.getSession().getId());
    }
	
}
