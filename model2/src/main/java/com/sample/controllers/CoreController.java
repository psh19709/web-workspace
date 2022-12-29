package com.sample.controllers;

import java.util.ArrayList;

import java.util.List;
import java.util.Map;

import com.sample.model2.Controller;
import com.sample.vo.Category;
import com.sample.vo.Product;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class CoreController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setAttribute("content1", "안녕하세요");
		request.setAttribute("content2", "<button>버튼</button>");
		request.setAttribute("score", 100);
		
		HttpSession session = request.getSession();
		session.setAttribute("LOGIN_USER_ID", "hong");
		
		Product product = new Product(100, "맥북 프로", "애플", 2500000, 2450000, 10);
		request.setAttribute("goods", product);
		
		String[] names = {"홍길동", "김유신", "강감찬", "이순신"};
		List<String> menus = new ArrayList<>();
		menus.add("아메리카노");
		menus.add("바닐라라떼");
		menus.add("카페모카");
		menus.add("에소프레소");
		menus.add("카라멜 마키야또");
		
		request.setAttribute("names", names);
		request.setAttribute("menus", menus);
		
		List<Category> categories = new ArrayList<>();
		categories.add(new Category(100, "국내도서"));
		categories.add(new Category(200, "외국도서"));
		categories.add(new Category(300, "전자책"));
		categories.add(new Category(400, "음반/CD"));
		
		request.setAttribute("categories", categories);
		
		List<Product> products = new ArrayList<>();
		products.add(new Product(100, "맥북 프로", "애플", 250, 245, 10));
		products.add(new Product(101, "맥북 에어", "애플", 250, 245, 10));
		products.add(new Product(102, "레노버 싱크패드", "레노버", 280, 255, 10));
		products.add(new Product(103, "아수스 게이밍 노트북", "아수스", 450, 445, 10));
		products.add(new Product(104, "LG 그램", "LG", 350, 345, 10));
		products.add(new Product(105, "맥프로", "애플", 650, 600, 10));
		
		request.setAttribute("products", products);
		
		List<Map<String, Object>> list = List.of(
				Map.of("no", 100, "title", "이것이 자바다", "price", 35000),
				Map.of("no", 200, "title", "자바의 정석", "price", 30000),
				Map.of("no", 300, "title", "혼자서 공부하는 자바", "price", 37000)
			);
		
		request.setAttribute("books", list);
		
		return "core.jsp"; 
	}
}
