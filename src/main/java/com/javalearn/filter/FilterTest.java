package com.javalearn.filter;

import javax.servlet.*;
import java.io.IOException;

public class FilterTest implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("sdfad");
        System.out.println("12344");
        filterChain.doFilter(servletRequest,servletResponse);
        System.out.println("******");
    }

    @Override
    public void destroy() {

    }
}
