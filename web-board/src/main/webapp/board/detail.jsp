<%@page import="com.sample.vo.User"%>
<%@page import="com.sample.vo.Review"%>
<%@page import="com.sample.dao.ReviewDao"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.vo.Board"%>
<%@page import="com.sample.dao.BoardDao"%>
<%@page import="com.sample.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>익명 게시판</title>
<style>
	textarea {
		resize: none;
	}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp">
	<jsp:param name="menu" value="board"/>
</jsp:include>
<div class="container my-3">
	<h1 class="mb-3 fs-4 border p-2 bg-light">게시글 상세정보</h1>
	
	<p>
		게시글 상세정보를 확인하세요
		<button type="button" class="btn btn-outline-dark btn-sm float-end" data-bs-toggle="modal" data-bs-target="#review-modal">리뷰쓰기</button>
	</p>
	<%
		String errorCode = request.getParameter("error");
		if("deny".equals(errorCode)) {
	%>
		<div class="alert alert-danger">
			<strong>수정/삭제 거부</strong> 다른 사용자가 작성한 게시글은 수정/삭제 할 수 없습니다.
		</div>
	<%
		}
	%>
	
	<%
	
		// 인증된 사용자 정보를 조회한다.
		User user = (User) session.getAttribute("loginedUser");
		
		// 글번호를 조회한다.
		int boardNo = StringUtils.stringToInt(request.getParameter("no"));
	
		// BoardDao객체를 생성하고, getBoardByNo(int boardNo)를 실행해서 게시글 정보를 조회하고 출력한다.
		BoardDao boardDao = new BoardDao();
		Board board = boardDao.getBoardByNo(boardNo);
		
		// 조회수를 1 증가시키고, 테이블에도 반영시킨다.
		board.setReadCount(board.getReadCount() + 1);
		boardDao.updateBoard(board);
	%>
	
	<table class="table table-bordered">
		<tbody>
			<tr>
				<th>번호</th><td><%=board.getNo() %></td>
				<th>등록일</th><td><%=StringUtils.dateToText(board.getCreatedDate()) %></td>
			</tr>
			<tr>
				<th>제목</th><td><%=board.getTitle() %></td>
				<th>작성자</th><td><%=board.getWriter() %></td>
			</tr>
			<tr>
				<th>조회수</th><td><%=board.getReadCount() %></td>
				<th>리뷰갯수</th><td><%=board.getReviewCount() %></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td colspan="3"><%=board.getFileName() != null ? board.getFileName() : "첨부파일 없음" %>
<%
				if(board.getFileName() != null) {
					
%>
				<!-- 
					현재 URL : http://localhost/web-board/board/detail.jsp?no=글번호
					요청 URL : http://localhost/web-board/board/download?no=글번호
					
					기준 URL : http://localhost/web-board/board/
					링크 URL : ../downlaod?no=글번호
				 -->
				<a href="../download?no=<%=board.getNo() %>" class="ms-5 btn btn-success" 
					style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .4rem; --bs-btn-font-size: .65rem;">다운로드</a>
<%					
				}
%>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"><textarea rows="6" class="form-control border-0" readonly="readonly"><%=board.getContent() %></textarea> </td>
			</tr>
		</tbody>
	</table>
	<div class="mb-3">
	<%
		// 인증된(로그인한) 사용자 정보가 존재하고, 로그인한 사용자의 아이디와 게시글 작성자의 아이디가 일치하는 경우 삭제/수정 링크 출력
		if(user != null && user.getId().equals(board.getWriter())) {
	%>
		<a href="delete.jsp?no=<%=board.getNo() %>" class="btn btn-danger">삭제</a>
		<a href="modifyform.jsp?no=<%=board.getNo() %>" class="btn btn-warning">수정</a>
	<%
		}
	%>
		<a href="list.jsp" class="btn btn-outline-primary float-end">목록</a>
	</div>
	
<!-- 
		게시글 리뷰 리스트 시작
	 -->
	<%
		// ReviewDao객체를 생성해서 getReviewsByBoardNo(int boardNo)를 실행해서 리뷰를 조회한다.
		ReviewDao reviewDao = new ReviewDao();
		List<Review> reviewList = reviewDao.getReviewsByBoardNo(boardNo);
	%>
	<ul class="list-group">
	<%
		if (!reviewList.isEmpty()) {
			for (Review review : reviewList) {
	%>
		<li class="list-group-item">
			<div class="row">
				<div class="col-12">
					<span class="fw-bold"><%=review.getWriter() %></span> <small class="float-end"><%=StringUtils.dateToText(review.getCreatedDate()) %> </small>
				</div>
				<div class="col-10"><%=review.getContent() %></div>
				<div class="col-2 text-end"><a href="deleteReview.jsp?boardNo=<%=boardNo %>&reviewNo=<%=review.getNo() %>" class="text-danger"><i class="bi bi-trash"></i></a></div>
			</div>
		</li>
	<%
			}
		}
	%>
	</ul>
	<!-- 
		게시글 리뷰 리스트 끝
	 -->
	
	<!-- 
		리뷰 등록폼이 포함된 모달창 시작
	 -->
	<div class="modal fade" id="review-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<form method="post" action="addReview.jsp">
				<!-- 
					이 리뷰가 몇번 게시글의 리뷰인지를 저장하기 위해서 hidden 필드에 이 게시글의 번호를 지정한다.
					이 입력폼을 서버로 제출하면 게시글번호(boardNo), 작성자(writer), 내용(content)이 전달된다.
				 -->
				<input type="hidden" name="boardNo" value="<%=boardNo %>">
				<div class="modal-content">
					<div class="modal-header py-2">
						<h1 class="modal-title fs-6" id="exampleModalLabel">리뷰 작성폼</h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body py-1">
						<!-- 
							작성자, 내용 입력요소를 확인하세요.
						 -->
						<div class="mb-3">
							<label class="form-label">작성자</label>
							<input type="text" class="form-control form-control-sm" name="writer" />
						</div>
						<div class="mb-3">
							<label class="form-label">내용</label>
							<textarea class="form-control" rows="3" name="content"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">닫기</button>
						<button type="submit" class="btn btn-primary btn-sm">리뷰등록</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- 
		리뷰 등록폼이 포함된 모달창 끝
	 -->	
</div>
</body>
</html>