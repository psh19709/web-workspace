<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 버블링</title>
<style>
   div, p {padding: 30px; border: 1px solid black; }
</style>
</head>
<body>
   <h1>이벤트 버블링</h1>
   
   <div id="outter-box" onclick="handler4(event)">
      <div id="inner-box" onkeyup="handler3(event)">
         <p onclick="handler2(event)">
            <img src="../resources/images/sample.png" width="40" height="100" onclick="handler1(event);">
         </p>
      </div>
   </div>
   
   <script type="text/javascript">
      function handler1(event) {
    	  // 이벤트 버블링을 차단시킨다.
    	 event.stopPropagation();
         console.log("handler11111 실행됨");
         console.log("handler1111 -> ", event.target)
      }
      function handler2(event) {
         console.log("handler2222 실행됨");
         console.log("handler2222 -> ", event.target)
         
      }
      function handler3(event) {
         console.log("handler3333 실행됨");
         console.log("handler3333 -> ", event.target)
         
      }
      function handler4(event) {
         console.log("handler4444 실행됨");
         console.log("handler4444 -> ", event.target)
         
      }
   </script>
</body>
</html>