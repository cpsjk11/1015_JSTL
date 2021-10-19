<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="now" value="<%=new Date()%>"/><%--현재 날짜 --%>


	<h2>${now }</h2>
	<h2><fmt:formatDate value="${now}" pattern="yyyy년MM월dd일"/></h2><%-- 소문자 mm은 분을 의미한다. --%>
	<h2><fmt:formatDate value="${now}" pattern="(a)hh:mm:ss"/></h2>
	
	<h2>-----------------------------------------숫자 형식----------------------------------------------</h2>
	<h2><fmt:formatNumber value="1200000000"/></h2>
	<h2><fmt:formatNumber value="1200000000" groupingUsed="false"/></h2>
	<h2><fmt:formatNumber value="0001200000000000" pattern="#,##0.00"/></h2><%-- 여기서 "#"은 아무 의미가 없으면 출력하지 마라는 뜻이다 아무런 값이 없어도 표현을 원한다면
																				"0"을 지정을해 아무 값이 없어도 표현을 하라는 의미이다. --%>
	<h2><fmt:formatNumber value="0.195" type="percent" pattern="0.00%"/></h2><%-- 타입에는 퍼센트 넘버 currency = 금액을 의미한다 --%>
	<h2><fmt:formatNumber value="10000000" type="currency" currencySymbol="￦" /></h2>
</body>
</html>