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
 *  	/post/deleteComment.hta
 *  요청 파라미터
 *  	postNo
 *  	commentNo
 *  반환값
 *  	redirect:/app/user/loginform.hta?error=deny		: 로그인 상태가 아닐 때
 *  	redirect:detail.hta?postNo=100&error=comment 	: 댓글 작성자와 로그인한 사용자가 다를 때
 *  	redirect:detail.hta?postNo=100					: 댓글삭제가 완료되었을 때
 *  요청처리 내용
 *  	사용자정보가 존재하지 않으면 로그인폼을 요청하는 재요청 URL("redirect:/app/user/loginform.hta?error=deny")을 반환한다.
 *  	요청파리미터 값(게시글번호, 댓글번호)를 조회한다.
 *  	CommentDao객체의 getCommentByNo(int commentNo)을 실행해서 댓글 정보를 조회한다.
 *  	댓글 작성자 아이디와 로그인한 사용자 아이디가 일치하지 않으면 재요청 URL("redirect:detail.hta?postNo=100&error=comment")을 반환한다.
 *  	CommentDao객체의 deleteComment(int commentNo)을 실행해서 댓글을 삭제한다.
 *  	PostDao객체의 getPostByNo(int postNo)를 실행해서 게시글 정보를 조회한다.
 *  	게시글 정보의 댓글 갯수를 1 감소시킨다.
 *  	postDao객체의 updatePost(Post post)를 실행해서 변경된 게시글 정보를 테이블에 반영시킨다.
 *  
 *  	게시글 상세화면을 요청하는 재요청 URL을 반환한다.
 */
public class DeleteCommentController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// 세션에 로그인 정보를 조회한다.
		HttpSession session = request.getSession();
		String loginUserId = (String) session.getAttribute("loginUserId");
		if(loginUserId == null) {
			return "redirect:/app/user/loginform.hta?error=deny";
		}
		
		// 요청 파라미터 값(게시글 번호, 댓글 번호)를 조회한다.
		int postNo = StringUtils.stringToInt(request.getParameter("postNo"));
		int commentNo = StringUtils.stringToInt(request.getParameter("commentNo"));
		
		CommentDao commentDao = CommentDao.getInstance();
		PostDao postDao = PostDao.getInstance();
		
		// 댓글번호로 댓글정보를 조회한다.
		Comment comment = commentDao.getCommentByNo(commentNo);
		// 댓글정보의 댓글 작성자 아이디와 로그인한 사용자 아이디가 일치하는지 확인한다.
		if(!comment.getUserId().equals(loginUserId)) {
			return "redirect:detail.hta?postNo=" + postNo + "&error=comment";
		}
		
		// 댓글정보 삭제하기
		commentDao.deleteComment(commentNo);
		
		// 게시글 번호에 해당하는 게시글 정보 조회하기
		Post post = postDao.getPostByNo(postNo);
		// 댓글수 1감소시키기
		post.setCommentCount(post.getCommentCount() - 1);
		//변경된 게시글 정보를 테이블에 반영시키기
		postDao.updatePost(post);

		return "redirect:detail.hta?postNo=" + postNo;
	}
}
