<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>웹 애플리케이션</title>
</head>
<body>
<div class="container">
   	<h1>jQuery 이벤트 처리</h1>
   	
   	<div class="border p-3 mb-3">
   	<%--
   		<%
   		for(Replay reply : replayList) {
   		%>
   			<div class="mb-1" id="box-<%=replay.getNo() %>">
   				<%=replay.getContent>
   				<button class="btn btn-outline-danger btn-sm" data-replay-target="#box-<%=replay.getNo() %> ">감추기</button>
   			</div>
   		<%	
   		}
   		%>
   	 --%>
		<div class="mb-1" id="box-10">
			첫번째 댓글입니다.
			<button class="btn btn-outline-danger btn-sm" data-replay-target="#box-10">감추기</button>
		</div>
		<div class="mb-1" id="box-13">
			두번째 댓글입니다.
			<button class="btn btn-outline-danger btn-sm" data-replay-target="#box-13">감추기</button>
		</div>
		<div class="mb-1" id="box-21">
			세번째 댓글입니다.
			<button class="btn btn-outline-danger btn-sm" data-replay-target="#box-21">감추기</button>
		</div>
   	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	// $()함수로 이벤트를 증록할 엘리먼트를 선택하고, .on()메소드로 이벤트핸들러함수를 바인딩 시킨다.
	$(".btn-outline-danger").on('click', function(){
		//jQuery의 이벤트핸들러 함수에서 this는 이벤트가 발생한 엘리먼트 객체다.
		//console.log(this);
		// el에는 이벤트가 발생한 엘리먼트 객체가 대입된다.
		//var el = this;
		// id에는 이벤트가 발생한 버튼 엘리먼트의 date-replat-target 속성값이 대입된다. '#box-10'
		//var id = el.getAttribute("data-replay-target");
		
		//$(this); // this는 이벤트가 발생한 엘리먼트 객체다. $(this)는 엘리먼트 객체를 포함하고 있는 jQuery 객체가 반환된다.
		// this 	-> <button class="" data-replay-target="#box-10">감추기</button>
		//$(this)	-> jQuery객체<button class="" data-replay-target="#box-10">감추기</button>와 jQuery객체의 다양한 메소드
		var targetId = $(this).attr("data-replay-target");
		alert("targetId ->" + targetId);
		//alert("targetId -> targetId");
		
		// id에는 "#box-10"
		$(targetId).hide();	//$("#box-10").hide();
	})
	
</script>

</body>
</html>