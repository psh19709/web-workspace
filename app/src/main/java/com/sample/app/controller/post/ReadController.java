package com.sample.app.controller.post;

import com.sample.app.dao.PostDao;
import com.sample.app.vo.Post;
import com.sample.model2.Controller;
import com.sample.util.StringUtils;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*
 *  요청 URI
 *  	/post/read.hta
 *  요청 파라미터
 *  	postNo
 *  반환값
 *  	redirect:detail.hta?postNo=100
 *  요청처리 내용
 *  	요청파라미터 값(게시글 번호)을 조회한다.
 *  	postDao객체의 getPostByNo(int postNo)를 실행해서 게시글 정보를 조회한다.
 *  	게시글 정보의 조회수를 1증가시킨다.
 *  	PostDao객체의 updatePost(Post post)를 실행해서 변경된 게시글 정보를 테이블에 반영시킨다.
 *  	게시글 상세정보를 요청하는 재요청 URL을 응답으로 보낸다.
 */
public class ReadController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// 요청파라미터 값(게시글 번호)를 조회한다.
		int postNo = StringUtils.stringToInt(request.getParameter("postNo"));
		
		PostDao postDao = PostDao.getInstance();
		// 게시글 번호에 해당하는 게시글 정보를 조회한다.
		Post post = postDao.getPostByNo(postNo);
		// 게시글 조회수를 1 증가 시킨다.
		post.setReadCount(post.getReadCount() + 1);
		// 변경된 게시글 정보를 테이블에 반영시킨다.
		postDao.updatePost(post);
		
		
		
		return "redirect:detail.hta?postNo=" + postNo;
	}
}
