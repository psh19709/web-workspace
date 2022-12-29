<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>애플리케이션</title>
</head>
<body>
<!-- 
	core.jsp의 PageContext객체에 속성을 추가한다.
	속성명 : "menu"
	속성값 : "core"
 -->
<c:set var="menu" value="core" />
<div class="container">
	<div class="row">
		<div class="col-12">
			<%@include file="common/header.jsp" %>
		</div>
	</div>

	<div class="row mb-3">
		<div class="col-12">
			<h1>코어 태그 라이브러리</h1>
		</div>
	</div>
	
	<div class="row mb-3">
		<div class="col-12">
			<h3>out 태그</h3>
			<p>EL 표현식으로 값 표현: ${content1 }</p>
			<p>EL 표현식으로 값 표현: ${content2 }</p>
			<%--
				EL 표현 방식과 c:out으로 표현 방식의 차이
				- html, 자바 스크립트 코드를 그대로 출력하지만 c:out은 텍스트로 표현해서 출력된다.
				- 그렇기 때문에 가능하면 c:out을 사용하는 것이 안전적인 표현 방식이다.
			 --%>
			<p>out 태그로 값 표현: <c:out value="${content1 }" /></p>
			<p>out 태그로 값 표현: <c:out value="${content2 }" escapeXml="false" /></p>
			<p>out 태그로 값 표현: <c:out value="${content2 }" /></p>
		</div>
	</div>
	
	<div class="row mb-3">
		<div class="col-12">
			<h3>if 태그</h3>
			
			<%--
				c:if 태그
					- 반드시 test라는 속성이 필수적으로 작성해야해야 한다. 
					- EL표현식이 포함되어야한다.
					- empty는 속성에서 지정한 값을 찾는데 그 속성의 존재여부를 확인하는 태그이다.
			 --%>
			<p>점수에 따라서 합격여부 출력하기</p>
			<c:if test="${score >= 60 }">
				<p>합격입니다.</p>
				<c:if test="${score >= 97 }">
					<p>장학금 지급 대상입니다.</p>
				</c:if>
			</c:if>
			
			<p>속성명을 조회한 값의 존재 여부로 컨텐츠 출력하기</p>
			<c:if test="${empty LOGIN_USER_ID }">
				<a href="loginForm.hta">로그인</a>
			</c:if>
			<c:if test="${not empty LOGIN_USER_ID }">
				<a href="logout,hta">로그아웃</a>
			</c:if>
			
			<p>속성명으로 조회된 객체가 가지고 있는 값에 따라서 컨텐츠 출력하기</p>
			<table class="table">
				<thead>
					<tr>
						<th>상품명</th>
						<th>할인가격 (가격)</th>
						<th>재고량</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${goods.name }</td>
						<td><strong class="text-danger">${goods.discountPrice }원 </strong><small>(${goods.price }원)</small></td>
						<td>${goods.stock }개</td>
						<td>
							<c:if test="${goods.stock == 0 }">
								<a href="addAlarm.hta?no=${goods.no }" class="btn btn-secondary btn-sm">입고시 알림받기</a>
							</c:if>
							<c:if test="${goods.stock > 0 && goods.stock < 5 }">
								<a href="order.hta?no=${goods.no }" class="btn btn-danger btn-sm">매진임박 지금주문하세요!!</a>
							</c:if>
							<c:if test="${goods.stock >= 5 }">
								<a href="order.hta?no=${goods.no }" class="btn btn-primary btn-sm">주문하기</a>
							</c:if>
						</td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td>${goods.name }</td>
						<td><strong class="text-danger">${goods.discountPrice }원 </strong><small>(${goods.price }원)</small></td>
						<td>${goods.stock }개</td>
						<td>
							<c:choose>
								<c:when test="${goods.stock == 0 }">
									<a href="addAlarm.hta?no=${goods.no }" class="btn btn-secondary btn-sm">입고시 알림받기</a>
								</c:when>
								<c:when test="${goods.stock < 5 }">
									<a href="order.hta?no=${goods.no }" class="btn btn-danger btn-sm">매진임박 지금주문하세요!!</a>
								</c:when>
								<c:otherwise>
									<a href="order.hta?no=${goods.no }" class="btn btn-primary btn-sm">주문하기</a>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
	<div class="row mb-3">
		<div class="col-12">
			<h3>choose ~ when ~ otherwise 태그</h3>	
			
			<%--
				choose ~ when ~ otherwise 태그는 if ~ else if~ 문을 따라할 수 있는 태그
				첫번째 when절의 조건식을 만족하면 아래의 조건식은 무시한다.
			 --%>
			<p>성적에 따라서 등급 출력하기</p>
			<c:choose>
				<c:when test="${score >= 90 }">
					<p>A 학점</p>
				</c:when>
				<c:when test="${score >= 80 }">
					<p>B 학점</p>
				</c:when>
				<c:when test="${score >= 70 }">
					<p>C 학점</p>
				</c:when>
				<c:when test="${score >= 60 }">
					<p>D 학점</p>
				</c:when>
				<c:otherwise>
					<p>F 학점</p>
				</c:otherwise>
			</c:choose>	
		</div>
	</div>
	<%--
		//forEach태그 
		
		1. var ~ items 용법
		 배열, List형태의 값을 반복처리 할 때 사용
		 items="${EL표현식}" : EL표현식으로 검색되는 값은 반드시 배열 혹은 콜렉션 객체다.
		 var="변수명" : 배열이나 콜렉션 객체에 저장된 값이 처음부터 끝까지 순서대로 한번씩 대입 되는 변수다.
		<c:forEach var="변수명" items="${EL표현식}">
			<p>${변수명}</p>
		</c:forEach>
		
		 배열이나 콜렉션 객체에 문자열 혹은 기본자료형 값이 여러개 저장되어 있는 경우
		 Controller
			 String[] array = {"홍길동", "김유신", "강감찬", "이순신"};
			 request.setAttribute("names", array);
		JSP
			<c:forEach var="name" items="${names}">
				<p>${name}</p>
			</c:forEach>
		출력결과
				<p>홍길동</p>
				<p>김유신</p>
				<p>강감찬</p>
				<p>이순신</p>
			
		 
		 배열이나 콜렉션 객체에 vo 객체가 여러 개 저장되어 있는 경우
		 VO
			 public class Category {
			 	private int no;
			 	private String name;
			 	
			 	getter, setter 포함}
		 Controller
			 List<Category> list = new ArrayList<>();
			 list.add(new Category(100, "국내도서"));
			 list.add(new Category(200, "외국도서"));
			 list.add(new Category(300, "전자책"));
			 request.setAttribute("categories" list);
		JSP
			<select name="catNo">
				<c:forEach var="cat" items="${categories}">		// cat에는 Category객체가 대입된다.
					<option value="${cat.no}">${cat.name}</option>
				</c:forEach>
			</select>
		출력결과
			<select name="catNo">
					<option value="100">국내도서</option>
					<option value="200">외국도서</option>
					<option value="300">전자책</option>
			</select>
			
		 
		 
		 배열이나 콜렉션 객체에 Map 객체가 여러 개 저장되어 있는 경우
		 - resultClass="hashmap"으로 지정되는 경우
		 Controller
		 	List<Map<String, Object>> list = employeeDao.getAllEmployees();
		 	
		 	<select id="getAllEmployees" resultClass="hashmap">
		 		select
		 			A.employee_id			as empId,
		 			A.first_name			as name,
		 			B.department_name		as deptName,
		 			A.salary				as salary
		 			C.first_name || '' C.last_name as managerName
		 		from 
		 			employees A, department B, employees C
		 		where
		 			A.depatment_no = B.department_no
		 			and A.managet_id = C.employee_no
		 		order by A.emp_no asc
		 	</select>
		 
		2. var ~ begin ~ end 용법
		 begin과 end에 지정된 값만큼 컨텐츠 반복출력할 때 사용
		 pagination 출력에 주로 사용
		 아래의 forEach 태그는 number의 값이 1부터 시작해서 5가 될 때까지 내부 컨텐츠를 출력한다.
		
		<c:forEach var="number" begin="1" end="5" step="1">
			<a herf="list.jsp?page=${number}">${number}</a>
		</c:forEach>
		
			<a herf="list.jsp?page=1">1</a>
			<a herf="list.jsp?page=2">2</a>
			<a herf="list.jsp?page=3">3</a>
			<a herf="list.jsp?page=4">4</a>
			<a herf="list.jsp?page=5">5</a>
	 --%>
	<div class="row mb-3">
		<div class="col-12">
			<h3>forEach 태그</h3>
			
			<p>기본자료형/문자열이 여러 개 저장된 배열 혹은 콜렉션 출력하기</p>
			<c:forEach var="name" items="${names }">
				<span class="badge bg-secondary">${name }</span>
			</c:forEach>
			
			<p>기본자료형/문자열이 여러 개 저장된 List 출력하기</p>
			<c:forEach var="menu" items="${menus }">
				<span class="badge bg-secondary">${menu }</span>
			</c:forEach>
			
			<p>VO 객체가 여러 개 저장된 List 출력하기</p>
			<select name="catNo">
				<c:forEach var="cat" items="${categories }">
					<option value="${cat.no }"> ${cat.name }</option>
				</c:forEach>
			</select>
			
			<table class="table">
				<thead>
					<tr>
						<th>번호</th>
						<th>상품명</th>
						<th>제조사</th>
						<th>할인가격 (가격)</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="product" items="${products }">
					<tr>
						<td>${product.no }</td>
						<td>${product.name }</td>
						<td>${product.maker }</td>
						<td><strong class="text-danger">${product.discountPrice } 만원</strong> <small>(${product.price }) 만원</small></td>
						<td>
							<a href="detail.hta?no=${product.no }">상세보기</a>
							<a href="order.hta?no=${product.no }">바로구매</a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			
			<p>Map객체를 여러 개 저장하고 있는 리스트 출력하기</p>
			<table class="table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>가격</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${empty books }">
						<tr>
							<td colspan="3" class="test-center">검색된 책이 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="book" items="${books }">
							<tr>
								<td>${book.no }</td>
								<td><a href="detail.hta?bookNo=${book.no }">${book.title }</a></td>
								<td>${book.price }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				</tbody>
			</table>
			
			<p>forEach의 varStatus 활용하기</p>
			<table class="table">
				<thead>
					<tr>
						<th>index</th>
						<th>count</th>
						<th>first</th>
						<th>last</th>
						<th>번호</th>
						<th>상품명</th>
						<th>가격</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="product" items="${products }" varStatus="x">
						<tr class="${x.first ? 'table-success' : '' }">
							<td>${x.index }</td>
							<td>${x.count }</td>
							<td>${x.first }</td>
							<td>${x.last }</td>
							<td>${product.no }</td>
							<td>${product.name }</td>
							<td>${product.price }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<p>페이지네이션 출력하기</p>
			<c:forEach var="number" begin="1" end="5" >
				<a href="list.hta?page=${number }">${number }</a>
			</c:forEach>
		</div> 
	</div>
	<div class="row mb-3">
		<div class="col-12">
			<p>url태그로 링크 생성하기</p>
			<c:url value="list.hta" var="link">
				<c:param name="page" value="2" />
				<c:param name="row" value="10" />
				<c:param name="sort" value="date" />
				<c:param name="direction" value="desc" />
			</c:url>
			<a href="${link }">링크</a>
		</div>
	</div>
	
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>