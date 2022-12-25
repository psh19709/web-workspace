<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>자바스크립트 폼 이벤트</title>

</head>
<body>
<div class="container my-3">
   <h1>자바스크립트 폼 이벤트</h1>
   
   <form class="bg-light border p-3" method="post" action="register.jsp">
      <div class="mb-3">
      	<label class="form-label">직위</label>
      	<select class="form-control" name="position" onchange="checkPosition();">
      		<option value="">직위를 선택하세요</option>
      		<option value="100">사원</option>
      		<option value="200">대리</option>
      		<option value="300">과장</option>
      		<option value="400">차장</option>
      		<option value="500">부장</option>
      	</select>
      </div>
      <div class="mb-3">
      	<label class="form-label">급여</label>
      	<input type="number" class="form-control" name="salary">
      </div>
      <div class="mb-3">
      	<label class="form-label">입사구분</label>
         <div class="form-check">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="type" value="신입" checked="checked" onchange="toggleYearBox(event);">
                <label class="form-check-label">신입</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="type" value="경력" onchange="toggleYearBox(event);">
                <label class="form-check-label">경력</label>
            </div>
         </div>
      </div>
      <div id="box-year" class="mb-3" style="display : none;">
      	<label class="form-label">개발경력(년)</label>
      	<input type="text" class="form-control" name="year" />
      </div>
   </form>
</div>
<script type="text/javascript">
	function toggleYearBox(event){
		// Event 객체의 target 프로퍼티는 지금 이벤트가 발생한 엘리먼트가 저장되어 있다.
		var el = event.target;
		var checkedValue = el.value;
		
		var el2 = document.querySelector("#box-year");
		if(checkedValue === '신입') {
			el2.style.display = "none";
		} else if(checkedValue === '경력') {
			el2.style.display = "";
			
		}
	}

	function checkPosition() {
		// console.log("checkPosition()이 실행됨");
		
		var el = document.querySelector("select[name=position]");
		var selectedValue = el.value;
		// console.log("선택된 옵션 값 ->", selectedValue);
		
		var el2 = document.querySelector("input[name=salary]");
		el2.value = selectedValue
	}
</script>
</body>
</html>