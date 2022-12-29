package com.sample.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class FirstFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("FirstFilter의 init()메소드 실행됨");
	}
	
	@Override
	public void destroy() {
		System.out.println("FirstFilter의 destroy()메소드 실행됨");
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		System.out.println("FirstFilter의 doFilter() 메소드의 전처리 작업 수행됨");
		
		filterChain.doFilter(request, response);
		
		System.out.println("FirstFilter의 doFilter() 메소드의 후처리 작업 수행됨");
	}

}
