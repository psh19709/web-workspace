<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트의 반복문</title>
</head>
<body>
	<h1>break와 continue 사용하기</h1>
	
	<script type="text/javascript">
		// break문을 사용해서 반복문 탈출하기
		for(var num = 1; num <= 10; num++){
			if(num == 5){
				break;			// 반복문을 탈출한다.	
			}
			console.log("num -> ", num);
		}
		// 출력결과 : 1 2 3 4 
		
		// continue문을 사용해서 반복문의 처음으로 돌아가기()
		for(var num = 1; num <= 10; num++){
			if(num == 5){
				continue;		// 남아 있는 수행문을 수행하지 않고, 증감식으로 이동해서 다음번 반복을 이어간다.		
			}
			console.log("num -> ", num);
		}
		// 출력결과 : 1 2 3 4 6 7 8 9 10
	</script>
</body>
</html>