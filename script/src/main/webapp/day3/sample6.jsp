<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 입력요소의 값 조회/변경</title>
</head>
<body>
	<h1>폼 입력요소의 값 조회/변경</h1>
	
	<form>
		<div>
			<label>대출금액</label>
			<!-- 
				type="text"일 때는 onkeyup 이벤트로 입력필드와 이벤트 핸들러 함수를 바인딩해야한다.
			<input type="text" name="amount" value="100000000" step="10000000" onkeyup="handler();">
			 -->
			<!-- 
				type="number"일 때는 onkeyup, onchange 이벤트로 입력필드와 이벤트 핸들러 함수를 바인딩해야한다.
			 -->
			<input type="number" name="amount" value="100000000" step="10000000" onchange="handler();">
		</div>
		<div>
			<label>상환기간</label>
			<select name="months" onchange="handler();">
				<option value="12">12개월</option>
				<option value="24">24개월</option>
				<option value="36">36개월</option>
				<option value="48">48개월</option>
				<option value="60">60개월</option>
			</select>
		</div>
		<div>
			<label>대출금리</label>
			<select name="rate" onchange="handler();">
				<option value="0.03">3%</option>
				<option value="0.04">4%</option>
				<option value="0.05">5%</option>
				<option value="0.06">6%</option>
				<option value="0.07">7%</option>
				<option value="0.08">8%</option>
				<option value="0.09">9%</option>
				<option value="0.1">10%</option>
			</select>
		</div>
		<div>
			<label>전체이자</label>
			<input type="number" name="money1">
		</div>
		<div>
			<label>납입원금</label>
			<input type="number" name="money2">
		</div>
		<div>
			<label>납입금액</label>
			<input type="number" name="money3">
		</div>
		<button type="button" onclick="handler()">계산하기</button>
	</form>
	
	<script type="text/javascript">
		function handler() {
			// 값을 조회/변경할 대상 엘리먼트 객체를 조회한다.
			var el1 = document.querySelector("[name=amount]");
			var el2 = document.querySelector("[name=months]");
			var el3 = document.querySelector("[name=rate]");
			var el4 = document.querySelector("[name=money1]");
			var el5 = document.querySelector("[name=money2]");
			var el6 = document.querySelector("[name=money3]");
			
			// 값을 조회한다.
			var 대출금액 = parseInt(el1.value);
			var 납입기간 = parseInt(el2.value);
			var 대출금리 = parseFloat(el3.value);
			
			var 총이자 = parseInt(대출금액*대출금리*(납입기간/12));
			var 납입원금 = 대출금액 + 총이자;
			var 월납입액 = parseInt(납입원금/납입기간);
			
			el4.value = 총이자;
			el5.value = 납입원금;
			el6.value = 월납입액;
		}
	</script>

</body>
</html>