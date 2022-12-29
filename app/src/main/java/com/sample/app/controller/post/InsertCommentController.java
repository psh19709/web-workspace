package com.sample.app.controller.post;

import com.sample.app.dao.CommentDao;
import com.sample.app.dao.PostDao;
import com.sample.app.vo.Comment;
import com.sample.app.vo.Post;
import com.sample.model2.Controller;
import com.sample.util.StringUtils;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/*
 *  요청 URI
 *  	redirect:/app/user/loginform.hta?error=deny
 *  	/post/insertComment.hta
 *  요청 파라미터
 *  	postNo
 *  	content
 *  반환값
 *  	redirect:detail.hta?postNo=100
 *  요청처리 내용
 *  	세션에서 로그인된 사용자 정보를 조회한다.
 *  	사용자 정보가 존재하지 않으면 로그인폼을 요청하는 재요청 URL("redirect:/app/user/loginform.hta?error=deny")을 반환한다.
 *  	요청파라미터 값(게시글번호, 댓글내용)을 조회한다.
 *  	Comment 객체를 생성해서 작성자 아이디, 내용, 게시글 번호를 저장한다.
 *  	CommentDao 객체의 insertComment(Comment comment)를 호출해서 댓글정보를 저장시킨다.
 *  	게시글 번호로 PostDao의 getPostByNo(int postNo)를 실행해서 게시글 정보를 조회한다.
 *  	게시글 정보릐 댓글갯수를 1증가 시킨다.
 *  	postDao의 updatePost(Post post)를 실행시켜서 변경된 정보를 반영시킨다.
 *  	
 *  	게시글 상세정보를 요청하는 재요청 URL을 응답으로 보낸다.
 */
public class InsertCommentController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// 세션객체에서 로그인된 사용자정보를 조회한다.
		HttpSession session = request.getSession();
		String loginUserId = (String) session.getAttribute("loginUserId");
		
		// 만약 세션객체에 저장이 되어있는 로그인 유저가 null인 상태이면 로그인을 요청하는 재요청 URL를 응답으로 보낸다.
		if(loginUserId == null) {
			return "redirect:/app/user/loginform.hta?error=deny";
		}
		
		// 요청 파라미터 값을 조회한다.
		int postNo = StringUtils.stringToInt(request.getParameter("postNo"));
		String content = request.getParameter("content");
		
		// Comment객체를 생성해서 작성자아이디, 내용, 게시글 번호를 저장한다.
		Comment comment = new Comment();
		comment.setUserId(loginUserId);;
		comment.setContent(content);
		comment.setPostNo(postNo);
		
		CommentDao commentDao = CommentDao.getInstance();
		PostDao postDao = PostDao.getInstance();
		
		// CommentDao의 insertComment(Comment comment)를 실행해서 댓글 정보를 테이블에 저장시킨다.
		commentDao.insertComment(comment);
		
		// 게시글 번호로 게시글 정보를 조회한다.
		Post post = postDao.getPostByNo(postNo);
		// 게시글 정보의 댓글 수를 1 증가시킨다.
		post.setCommentCount(post.getCommentCount() + 1);
		
		// PostDao 객체의 updatePost(Post post)를 실행해서 변경된 게시글 정보로 갱신시킨다.
		postDao.updatePost(post);
		
		return "redirect:detail.hta?postNo=" +postNo;
	}
}
