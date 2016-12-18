package com.ddb.javaweb.listener;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.util.Date;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListenerDemo
 *
 */
//@WebListener
public class ServletContextListenerDemo implements ServletContextListener {
	//private PrintStream print;

    /**
     * Default constructor. 
     * @throws FileNotFoundException 
     */
    public ServletContextListenerDemo() {
    	/*PrintStream out = null;
		try {
			out = new PrintStream(new FileOutputStream("/home/deepin/listener.log"));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	System.setOut(out);
    	print = System.out;*/
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
    	String date = new Date().toString();
    	System.out.println("####ServletContextListenerDemo 容器被销毁－－－>"+arg0.getServletContext().getContextPath());
    	//print.println(date+":####ServletContextListenerDemo 容器被销毁－－－>"+arg0.getServletContext().getContextPath());
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 
    	String date = new Date().toString();
       	System.out.println("####ServletContextListenerDemo 容器初始化－－－>"+arg0.getServletContext().getContextPath());
    	//print.println(date + ":####ServletContextListenerDemo 容器初始化－－－>"+arg0.getServletContext().getContextPath());
    }
	
}
