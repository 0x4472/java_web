package com.javalearn.listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyContextListener implements ServletContextListener{
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("Web Application initlized");
        servletContextEvent.getServletContext().setAttribute("key","value");
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
