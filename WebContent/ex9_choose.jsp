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
<%--
	현재 페이지는 money라는 파라미터를 받는다.
	money에 따라 과일을 선택할 수 있다.
	사과 : 700
	배 : 1000
	샤인머스켓 : 1800
 --%>
 
 <c:choose><%-- elseif같은 효과를 발휘하는 것이 choose문이다. --%>
 	<c:when test="${param.money >= 1800 }">
 		사과,배,샤인머스켓 중 하나를 선택!
 	</c:when>
 	<c:when test="${param.money >= 1000 }">
 		사과,배 중 하나를 선택!
 	</c:when>
 	<c:when test="${param.money >= 700 }">
 		사과를 선택!
 	</c:when>
 	<c:otherwise><%-- 그 밖에 일들을 처리하는 공간 즉 700 보다 작을 때 수행하는 공간이다 --%>
 		선택할 수 있는 과일이 없습니다.
 	</c:otherwise>
 </c:choose>
 
<%--  	<c:if test="${param.money >= 1800 }">
 		사과,배,샤인머스켓 중 하나를 선택!
 	</c:if>
 	<c:if test="${param.money >= 1000 and param.money <= 1799}">
 		사과,배 중 하나를 선택!
 	</c:if>
 	<c:if test="${param.money >= 700 and param.money <= 999}">
 		사과를 선택!
 	</c:if> --%>
 	
</body>
</html>