package com.sample.controllers;

import com.sample.model2.Controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ListController implements Controller{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("### ListController의 execute(request, response) 실행");
		
		// 업무로직 메소드 호출해서 값을 획득
		// 획득된 값을 요청객체의 속성에 저장한다.
		/*
		int currentPage = Integer.parseInt(request.getParameter("page"));
		
		PostDao postDao = PostDao.getInstance();
		
		int totalRows = postDao.getTotalRows();
		Pagination pagination = new Pagination(currentPage, totalRows);
		
		Map<String, object> param = new Hash<>();
		param.put("begin, pagination.getBegin());
		param.put("end, pagination.getEnd());
	
		List<Post> posts = postDao.getPosts(param);
		
		request.setAttribute("pagination", pagination);
		request.setAttribute("posts", posts);
		
		*/
		
		// 뷰 페이지 이름을 반환한다.
		return "list.jsp";
	}

}
