<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
			
	// 세션에 저장하기 위해 파라미터 받기
	String s_id = request.getParameter("s_id");
	session.setAttribute("m_id", s_id);
%>
	<h1>s_pw : ${param.s_pw}</h1>
	<h1>
		${paramValues.s_phone[0]} -
		${paramValues.s_phone[1]} -
		${paramValues.s_phone[2]}
	</h1>
	
	<button type="button" onclick="javascript:location.href='ex2_res.jsp?m_pw=${param.s_pw}'">다음</button>
</body>
</html>