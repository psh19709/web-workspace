package com.sample.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//@WebServlet("/hello")
public class HelloServlet extends HttpServlet{
	
	@Override
	public void init() throws ServletException {
		//System.out.println("HelloServlet의 init() 메소드 실행됨....");
		
	}
	
	@Override
	public void destroy() {
		//System.out.println("HelloServlet의 destroy() 메소드 실행됨....");
		
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("HelloServlet의 service() 메소드 실행됨....");
		
		
		// 애플리케이션의 초기화 파라미터 정보를 제공하는 ServletContext 객체를 획득한다.
		ServletContext application = getServletContext();
		// String getInitParameter(String name) 메소드로 초기화 파라미터값을 조회한다.
		String companyNameValue = application.getInitParameter("company-name");
		
		
		// 초기화 파라미터 정보를 제공하는 ServletConfig 객체를 획득한다.
		ServletConfig config = getServletConfig();
		
		// String getInitParameter(String name) 메소드로 초기화 파라미터값을 조회한다.
		String emailValue = config.getInitParameter("email");
		String telValue = config.getInitParameter("tel");
		
		response.setContentType("text/html; charset=utf-8");
		// 텍스트 데이터를 브라우저로 출력하는 PrintWriter 객체를 획득한다.
		PrintWriter out = response.getWriter();
		// PrintWriter 객체의 println() 메소드를 사용해서 HTML 컨텐츠를 브라우저로 출력한다.
		out.println("<!doctype html>");
		out.println("<html lang='ko'>");
		out.println("<head>");
		out.println("<meta charset='utf-8'>");
		out.println("<title>헬로 서블릿</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>헬로 서블릿</h1>");
		out.println("<p>나는 서블릿입니다.</p>");
		out.println("<p>서블릿 라이프 사이클이 실행됩니다.</p>");
		out.println("<p>회사명 : " + companyNameValue + "</p>");
		out.println("<p>이메일 : " + emailValue + "</p>");
		out.println("<p>연락처 : " + telValue + "</p>");
		out.println("</body>");
		out.println("</html>");
	}
}
