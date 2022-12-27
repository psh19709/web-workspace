<%@page import="com.sample.util.Pagination"%>
<%@page import="com.sample.vo.User"%>
<%@page import="com.sample.vo.Board"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.dao.BoardDao"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.sample.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>익명 게시판</title>
</head>
<body>
<jsp:include page="../common/header.jsp">
	<jsp:param name="menu" value="board"/>
</jsp:include>
<div class="container my-3">
<%
	// 행 갯수, 정렬방식, 요청한 페이지 번호, 검색 옵션, 검색 키워드를 조회한다.
	// 값이 존재하지 않으면 기본값을 설정한다.
	int rows = StringUtils.stringToInt(request.getParameter("rows"), 10);
	String sort = StringUtils.nullToValue(request.getParameter("sort"), "date");
	int currentPage = StringUtils.stringToInt(request.getParameter("page"), 1);
	String opt = StringUtils.nullToValue(request.getParameter("opt"), "title");
	String keyword = StringUtils.nullToValue(request.getParameter("keyword"), "");
	
	BoardDao boardDao = new BoardDao();
	
	Map<String, Object> param = new HashMap<>();
	if (!opt.isEmpty() && !keyword.isEmpty()) {
		param.put("opt", opt);		
		param.put("keyword", keyword);		
	}
	
	// 게시글 갯수 조회
	int totalRows = boardDao.getTotalRows(param);
	
	// Pagination객체를 생성
	Pagination pagination = new Pagination(currentPage, totalRows, rows);
	
	// 게시글 목록 조회
	param.put("sort", sort);
	param.put("begin", pagination.getBegin());
	param.put("end", pagination.getEnd());
	
	List<Board> boardList = boardDao.getBoards(param);

%>
	<h1 class="mb-3 fs-4 border p-2 bg-light">게시글 리스트</h1>
	<div class="d-flex justify-content-between">
		<div>
			<a href="list.jsp?rows=5" class="btn btn-sm <%=rows == 5 ? "btn-dark" : "btn-outline-dark" %>" onclick="changeRows(event, 5)">5개씩</a>
			<a href="list.jsp?rows=10" class="btn btn-sm <%=rows == 10 ? "btn-dark" : "btn-outline-dark" %>" onclick="changeRows(event, 10)">10개씩</a>
			<a href="list.jsp?rows=20" class="btn btn-sm <%=rows == 20 ? "btn-dark" : "btn-outline-dark" %>" onclick="changeRows(event, 20)">20개씩</a>
		</div> 
		
		<div>
			<a href="list.jsp?sort=date" class="btn btn-sm <%="date".equals(sort) ? "btn-dark" : "btn-outline-dark" %>" onclick="changeSort(event, 'date')" >최신순</a>
			<a href="list.jsp?sort=title" class="btn btn-sm <%="title".equals(sort) ? "btn-dark" : "btn-outline-dark" %>" onclick="changeSort(event, 'title')">제목순</a>
			<a href="list.jsp?sort=read" class="btn btn-sm <%="read".equals(sort) ? "btn-dark" : "btn-outline-dark" %>" onclick="changeSort(event, 'read')">조회수가 많은 순</a>
		</div>
		<form class="row row-cols-lg-auto g-3 align-items-center" action="list.jsp">
			<input type="hidden" name="page" value="<%=currentPage %>" />
			<input type="hidden" name="rows" value="<%=rows %>" />
			<input type="hidden" name="sort" value="<%=sort %>" />
			<div class="col-12">
            <select class="form-select form-select-sm" name="opt">
               <option value="title" <%="title".equals(opt) ? "selected" : "" %>> 제목</option>
               <option value="writer" <%="writer".equals(opt) ? "selected" : "" %>> 작성자</option>
               <option value="content" <%="content".equals(opt) ? "selected" : "" %>> 내용</option>
            </select>
         </div>
			<div class="col-12">
				<input type="text" class="form-control form-control-sm" name="keyword" value="<%=keyword %>">
			</div>
			<div class="col-12">
				<button type="button" class="btn btn-primary btn-sm" onclick="submitForm(1)">검색</button>
			</div>
		</form>
	</div>
	
	<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>리뷰갯수</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
<%
	if (boardList.isEmpty()) {
%>
			<tr><td class="text-center" colspan="6"> 게시글 정보가 없습니다. </td></tr>
<%
	} else {
		for (Board board : boardList) {
%>
			<tr>
				<td><%=board.getNo() %></td>
				<td><a href="detail.jsp?no=<%=board.getNo() %>"><%=board.getTitle() %></a></td>
				<td><%=board.getWriter() %></td>
				<td><%=board.getReadCount() %></td>
				<td><%=board.getReviewCount() %></td>
				<td><%=StringUtils.dateToText(board.getCreatedDate()) %></td>
			</tr>
<%		
		}
	}
%>
		</tbody>
	</table>
	
<%
	if(!boardList.isEmpty()) {
		int beginPage = pagination.getBeginPage();	// 시작 페이지번호
		int endPage = pagination.getEndPage();		// 끝 페이지번호
		boolean isFirst = pagination.isFirst();		// 첫 페이지인지 여부, 이전 버튼의 비활성화에서 사용
		boolean isLast = pagination.isLast();		// 마지막 페이지인지 여부, 다음 버튼의 비활성화에서 사용
		int prevPage = pagination.getPrevPage();	// 이전 페이지번호, 이전 버튼에서 사용
		int nextPage = pagination.getNextPage();	// 다음 페이지번호, 다음 버튼에서 사용
%>
	<div aria-label="navigation">
		<ul class="pagination justify-content-center">
			<li class="page-item">
				<a class="page-link <%=isFirst ? "disabled" : "" %>"  
					href="list.jsp?page=<%=prevPage %>"
					onclick="changePage(event, <%=prevPage %>)">이전</a>
			</li>
<%
	for (int number = beginPage; number <= endPage; number++) {
%>
			<li class="page-item">
				<a class="page-link <%=currentPage == number ? "active" : "" %>"  
					href="list.jsp?page=<%=number %>" 
					onclick="changePage(event, <%=number %>)"><%=number %></a>
			</li>
<%
	}
%>
			<li class="page-item">
				<a class="page-link <%=isLast ? "disabled" : "" %>" 
					href="list.jsp?page=<%=nextPage %>" 
					onclick="changePage(event, <%=nextPage %>)">다음</a>
			</li>
		</ul>
	</div>
<%
	}
%>
	<div>
		<a href="form.jsp" class="btn btn-primary btn-sm float-end">새 글 등록</a>
	</div>
</div>
<script type="text/javascript">
	// 표시할 행 갯수를 클릭했을 때 실행되는 이벤트 핸들러 함수다.
	function changeRows(event, rows) {
		event.preventDefault();	// 링크의 기본동작이 일어나지 않게 한다.
		var rowsField = document.querySelector("[name=rows]");	// <input type="hidden" name="rows" /> input 엘리먼트를 조회한다.
		rowsField.value = rows;									// 위에서 조회한 input 엘리먼트의 값을 변경한다. rows 값이 변경된다.
		
		submitForm(1);	// 폼 입력값을 서버로 제출하는 함수를 실행한다. 한번에 표시할 행의 갯수를 변경했기 때문에 페이지번호는 1이 되어야 한다.
	}
	
	//정렬방식을 클릭했을 때 실행되는 이벤트 핸들러 함수다
	function changeSort(event, sort) {
		event.preventDefault();
		var sortField = document.querySelector("[name=sort]");	// <input type="hidden" name="sort" /> input 엘리먼트를 조회한다.
		sortField.value = sort;									// 위에서 조회한 input 엘리먼트의 값을 변경한다. sort 값이 변경된다.
		
		submitForm(1);	// 폼 입력값을 서버로 제출하는 함수를 실행한다. 한번에 표시할 행의 갯수를 변경했기 때문에 페이지번호는 1이 되어야 한다.
	}
	
	// 페이지번호를 클릭했을 때 실행되는 이벤트 핸들러 함수다.
	function changePage(event, page) {
		event.preventDefault();	// 링크의 기본동작이 일어나지 않게 한다.
		
		submitForm(page);// 폼 입력값을 서버로 제출하는 함수를 실행한다. 
	}
	
	// 검색버튼을 클릭했을 때 실행되는 이벤트 핸들러 함수다.
	function submitForm(page) {
		var pageField = document.querySelector("[name=page]");	// <input type="hidden" name="page" /> input 엘리먼트를 조회한다.
		pageField.value = page;									// 위에서 조회한 input 엘리먼트의 값을 변경한다. page 번호가 변경된다.
		
		var form = document.querySelector("form");				// <form /> 엘리먼트를 조회한다.
		form.submit();	// 폼 입력값을 서버로 제출한다. rows, page, keyboard가 한번에 서버로 제출된다.
	}
</script>
</body>
</html>