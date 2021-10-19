<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>폼 연습</h1>
	<form action="ex1_ok.jsp" method="post">
		<label for="s_id">ID:</label>
		<input type="text" id="s_id" name="s_id"/><br/>
		
		<label for="s_pw">PW:</label>
		<input type="password" name="s_pw" id="s_pw"/>
		
		<input type="hidden" name="cPage" value="5"/>
		
		<input type="button" value="보내기" onclick="sendData(this.form)"/>
	</form>
	<script>
		function sendData(frm){
			// 유효성 검사..
			frm.submit();
		}
	</script>
</body>
</html>