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
	<h1>JSTL for문 연습</h1>
	<c:set var="cnt" value="10" scope="page"/>
	<ul>
		<c:forEach begin="0" end="${cnt}" varStatus="st" ><!-- varStatus="st" : 원래 for문의 i와 같은 존재 이다 하지만 .index를 사용해야지만 begin값부터 시작할 수 있다. -->
			<li>${st.index} /<c:out value="${st.index}"/> </li>
		</c:forEach>
	</ul>
	
	<c:set var="str" value="<strong>INCREPAS</Strong>"/>
	<h1>${str}</h1>
	<h1><c:out value="${str}" escapeXml="true"/></h1>
</body>
</html>