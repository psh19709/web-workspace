package com.sample.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;


//@WebFilter("/*")
public class SecondFilter implements Filter{
	
	private String secretKey;
	private String companyName;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("SecondFilter의 init()메소드 실행됨");
		
		// 애플리케이션의 초기화 파라미터값 조회하기
		ServletContext application = filterConfig.getServletContext();
		this.companyName = application.getInitParameter("company-name");
		// 필터의 초기화 파라미터값 조회하기
		this.secretKey = filterConfig.getInitParameter("secret-key");
	}
	
	@Override
	public void destroy() {
		System.out.println("SecondFilter의 destroy()메소드 실행됨");
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		System.out.println("SecondFilter의 doFilter() 메소드의 전처리 작업 수행됨");
		
		// 애플리케이션의 초기화 파라미터값 사용하기
		System.out.println("SecondFilter의 doFilter() 메소드레서 애플리케이션 초기화 파라미터 사용 - 회사명 : " + companyName);
		
		// 필터의 초기화 파라미터값 사용하기
		System.out.println("SecondFilter의 doFilter() 메소드레서 애플리케이션 초기화 파라미터 사용 - 비밀키 : " + secretKey);
		
		filterChain.doFilter(request, response);
		
		System.out.println("SecondFilter의 doFilter() 메소드의 후처리 작업 수행됨");
	}

}
