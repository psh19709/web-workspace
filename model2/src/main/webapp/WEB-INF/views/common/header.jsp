<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<p>메뉴 : ${menu }</p>
<div>
	<ul>
		<li><a href="home.hta" class="${menu eq 'home' ? 'bg-dark text-white' : ''}">홈</a></li>
		<li><a href="core.hta"  class="${menu eq 'core' ? 'bg-dark text-white' : ''}">코어 태그 라이브러리 연습</a></li>
		<li><a href="fmt.hta"  class="${menu eq 'fmt' ? 'bg-dark text-white' : ''}">포맷팅 태그 라이브러리 연습</a></li>
	</ul>
</div>