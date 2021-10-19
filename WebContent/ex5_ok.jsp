<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 요청시 한글처리
	request.setCharacterEncoding("utf-8");
%>
<%-- 파라미터 값을 저장할 변수선언 --%>
	<c:set var="s_id" value="${param.s_id}"/>
	
	<c:if test="${s_id eq 'admin'}"><%-- ==을 eq와 같다. --%>
		<h2>관리자님 환영합니다.</h2>
	</c:if>
	<c:if test="${s_id ne 'admin'}"><%-- !=을 ne와 같다. --%>
		<h2>${s_id} 회원님 환영합니다.</h2>
	</c:if>
</body>
</html>