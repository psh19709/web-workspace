<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 if문</title>
</head>
<body>
	<h1>자바스크립트 if문</h1>
	
	<h3>시험 성적</h3>
	<form>
		<div>
			<label>국어점수</label> : <input type="number" name="kor"	/>
		</div>
		<div>
			<label>영어점수</label> : <input type="number" name="eng"	/>
		</div>
		<div>
			<label>수학점수</label> : <input type="number" name="math"	/>
		</div>
		<button type="button" onclick="checkScore();">판정하기</button>
	</form>
	
	<script type="text/javascript">
		function checkScore(){
			
			/*
				document
					브라우저 내장 객체다.
					HTML 문서를 표현한 Document 객체가 저장되어 있다.
					주요 메소드
						getElementById(아이디)
							지정된 아이디에 해당하는 태그를 표현하는 Element 객체를 반환한다.
						getElementsByTagName(태그명)
							지정된 태그명에 해당하는 모든 Element 객체를 포함하고 있는 HTMLCollection 객체를 반환한다.
						querySelector(선택자)
							지정된 선택자에 해당하는 첫번째 Element 객체를 반환한다.
						querySelectorAll(선택자)
							지정된 선택자에 해당하는 모든 Element 객체를 포함하고 있는 HTMLCollection 객체를 반환한다.
				Element
					태그를 표현하는 객체다.
					태그명, 태그의 속성, 태그의 텍스트 컨텐츠, 태그의 프로퍼티 값을 포함하고 있다.
			*/
			var korScore = document.querySelector("[name=kor]").value;
			var engScore = document.querySelector("[name=eng]").value;
			var mathScore = document.querySelector("[name=math]").value;
			
			var totalScore = parseInt(korScore) + parseInt(engScore) + parseInt(mathScore);
			var avgScore = totalScore/3;
			
			console.log("총점", totalScore);
			console.log("평균", avgScore);
			
			if(avgScore >= 60){
				console.log("합격입니다.");				
			} else {
				console.log("불합격입니다.");
			}
		}
	
		/*
			if(조건식) {
				조건식이 true로 판정 될때 실행되는 수행문
			} else {
				조건식이 false로 판정 될 때 실행되는 수행문
			}
		
		if(조건식1) {
			조건식1이 true로 판정될 때 실행되는 수행문
		} else if(조건식2) {
			조건식2이 true로 판정될 때 실행되는 수행문
		} else if(조건식3) {
			조건식3이 true로 판정될 때 실행되는 수행문
		} else {
			
		}
		*/
		
	</script>	

</body>
 
</html>