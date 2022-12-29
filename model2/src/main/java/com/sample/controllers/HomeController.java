package com.sample.controllers;

import java.util.HashMap;
import java.util.Map;

import com.sample.model2.Controller;
import com.sample.vo.Product;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HomeController implements Controller {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//System.out.println("HomeController의 execute(request, response) 실행");
		
		// 요청객체의 속성에 값 혹은 객체 저장하기
		request.setAttribute("message", "안녕하세요.");
		
		Product product = new Product(100, "갤럭시 폴더4", "삼성전자", 2000000, 1750000, 3);
		// 요청객체의 속성에 값 혹은 객체 저장하기
		request.setAttribute("bestGoods", product);
		
		String[] keywords = {"크리스마스", "연말", "선물", "산타"};
		// 요청객체의 속성에 값 혹은 객체 저장하기
		request.setAttribute("keywords", keywords);
		
		Map<String, Object> map = new HashMap<>();
		map.put("name", "홍길동");
		map.put("kor", 100);
		map.put("eng", 80);
		map.put("math", 90);
		// 요청객체의 속성에 값 혹은 객체 저장하기
		request.setAttribute("student", map);
		
		
		// 요청처리가 완료되면, 데이터를 표현할 뷰페이지이름을 반환한다.
		return "home.jsp";
	}
}
