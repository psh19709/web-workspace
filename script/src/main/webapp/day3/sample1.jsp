<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOM API</title>
</head>
<body>
	<h1>HTML Document 객체의 주요 API</h1>
	
	<h3>도서 베스트 셀러</h3>
	<ol>
		<li id="top-rank-book" class="book-item">이것이 자바다</li>
		<li class="book-item">자바의 정석</li>
		<li class="book-item">이펙티브 자바</li>
		<li class="book-item">혼자서 공부하는 자바</li>
	</ol>
	<h3>음반 베스트 셀러</h3>
	<ol>
		<li id="top-rank-cd" class="cd-item">BTS 음반</li>
		<li class="cd-item">뉴진스</li>
		<li class="cd-item">아이브</li>
		<li class="cd-item">트와이스</li>
	</ol>
	<script type="text/javascript">
		// Document 객체의 주요 메소드
		
		// 1. Element getElementById("아이디속성값") : 지정된 id속성값에 해당하는 엘리먼트 객체를 반환한다.
		var el1 = document.getElementById('top-rank-book');
		console.log("앨리먼트 -> ", el1);
		
		var el2 = document.getElementById('top-rank-cd');
		console.log("앨리먼트 -> ", el2);
		
		// 2. Element querySelector("#아이디 속성값") : 지정된 id 속성잢에 해당하는 엘리먼트 객체를 반환한다.
		
		var el3 = document.querySelector("#top-rank-book");
		var el4 = document.querySelector("#top-rank-cd");
		
		console.log("앨리먼트 -> ", el3);
		console.log("앨리먼트 -> ", el4);
		
		// 3. HTMLCollection getElementsByTagName("태그명") : 지정된 태그명에 해당하는 모든 엘리먼트 객체를
		//	  HTMLCollection 객체에 담아서 반환한다.
		var collection1 = document.getElementsByTagName("h1");
		var collection2 = document.getElementsByTagName("h3");
		var collection3 = document.getElementsByTagName("li");
		
		console.log("검색된 엘리먼트 갯수 -> ", collection1.length);
		console.log("검색된 엘리먼트 갯수 -> ", collection2.length);
		console.log("검색된 엘리먼트 갯수 -> ", collection3.length);
		
		console.log("검색된 엘리먼트들 -> ", collection1);
		console.log("검색된 엘리먼트들 -> ", collection2);
		console.log("검색된 엘리먼트들 -> ", collection3);
		
		// 4. NodeList HTMLCollection querySelectorAll("태그명") : 지정된 태그명에 해당하는 모든 엘리먼트 객체르르
		//	  NodeList HTMLCollection 객체에 담아서 반환한다.
		
		var collection4 = document.querySelectorAll("h1");
		var collection5 = document.querySelectorAll("h3");
		var collection6 = document.querySelectorAll("li");
		
		console.log("검색된 엘리먼트 갯수 -> ", collection4.length);
		console.log("검색된 엘리먼트 갯수 -> ", collection5.length);
		console.log("검색된 엘리먼트 갯수 -> ", collection6.length);
		
		console.log("검색된 엘리먼트들 -> ", collection4);
		console.log("검색된 엘리먼트들 -> ", collection5);
		console.log("검색된 엘리먼트들 -> ", collection6);
		
		// 5. HTMLCollection getElementsByClassName("클래스속성값") : 지정된 클래스 속성값을 포함하고 있는
		//	  모든 엘리먼트들을 HTMLCollection 객체에 담아서 반환한다.
		var collection7 = document.getElementsByClassName("book-item");
		
		console.log("검색된 엘리먼트 갯수 -> ", collection7.length);
		console.log("검색된 엘리먼트들 -> ", collection7);
		
		// 6. NodeList querySelectorAll("클래스속성값") : 지정된 클래스 속성값을 포함하고 있는
		//	  모든 엘리먼트들을 NodeList객체에 담아서 반환한다.
		var collection8 = document.querySelectorAll(".book-item");
		
		console.log("검색된 엘리먼트 갯수 -> ", collection8.length);
		console.log("검색된 엘리먼트들 -> ", collection8);
		
		for(var index = 0; index < collection8.length; index++){
			var el = collection8[index];
			var bookTitle = el.textContent;
			console.log("책 제목", bookTitle);
			
			
		}
	</script>
</body>
</html>