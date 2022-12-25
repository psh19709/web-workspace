<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체크박스, 라디오버튼 체크 선택/해제</title>
</head>
<body>
	<h1>체크박스, 라디오버튼 체크 선택/해제</h1>
	
		<form>
			<div>
				<label>전체 선택/해제</label>
				<input type="checkbox" id="checkbox-all-toggle" onchange="toggleAllCheckUnCheck()">
			</div>
		
			<div>
				<label>보유기술</label>
				<input type="checkbox" name="skill" value="java" checked>자바
				<input type="checkbox" name="skill" value="python" checked="checked">파이썬
				<input type="checkbox" name="skill" value="c">C언어
				<input type="checkbox" name="skill" value="c++">C++
			</div>
		</form>
		
		<button onclick="uncheck();">체크박스 선택해제하기</button>
		<button onclick="check();">체크박스 선택하기</button>
		<button onclick="toggleCheck();">체크박스 선택해제 토글하기</button>
		<button onclick="checkAll();">체크박스 전부 선택하기</button>
		<button onclick="uncheckAll();">체크박스 전부 선택 해제하기</button>
		<button onclick="checkOneMore();">체크박스 선택된것이 하나이상 있는지 조사하기</button>
		
		<script type="text/javascript">
			function toggleAllCheckUnCheck(){
				// 전체 선택/해제 체크박스의 체크상태를 조회한다.
				var el = document.querySelector("#checkbox-all-toggle");
				var currentChecked = el.checked;
				
				// 모든 보유기술 체크박스의 체크상태를 위에서 조회한 전체 선택/해제 체크박스의 체크상태와 같은 상태로 만든다.
				var collection = document.querySelectorAll('[name=skill]');
				for(var index = 0; index < collection.length; index++) {
					var el = collection[index];
					el.checked = currentChecked;
				}
			}
		
			function uncheck(){
				// 체크박스 자바를 선택해제하기
				var el = document.querySelectorAll('[name=skill]')[0];
				el.checked = false;
			}
			function check(){
				// 체크박스 자바를 해제하기
				var el = document.querySelectorAll('[name=skill]')[0];
				el.checked = true;
			}
			function toggleCheck(){
				// 체크박스 자바를 선택해제 토글하기
				var el = document.querySelectorAll('[name=skill]')[0];
				el.checked = !el.checked;
			}
			function checkAll(){
				// 체크박스 전부 선택하기
				var collection = document.querySelectorAll('[name=skill]');
				for(var index = 0; index < collection.length; index++) {
					var el = collection[index];
					el.checked = true;
				}
			}
			function uncheckAll(){
				// 체크박스 전부 선택 해제하기
				var collection = document.querySelectorAll('[name=skill]');
				for(var index = 0; index < collection.length; index++) {
					var el = collection[index];
					el.checked = false;
				}
			}
		
		</script>


	
</body>
</html>