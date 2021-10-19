<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	현재 페이지는 str이라는 파라미터를 받는다.
	받은 파라미터의 값 길이를 구해보자!
 --%>
 	<h2>str파라미터의 값: ${param.str}</h2>
 	<h2>str의 길이: ${param.str.length()}</h2>
 	<h2>str.substring(0,3)의 길이: ${param.str.substring(0,3)}</h2>
 
 
 	<c:set var="s1" value="${param.str}"/>
 
 
 	<h2>substring(s1,0,3): ${fn:substring(s1,0,3)}</h2>
 	<h2>toUpperCase(s1,0,3): ${fn:toUpperCase(param.str)}</h2>
 	<h2>indexOf(s1,"c"): ${fn:indexOf(param.str,"c")}</h2>
 	<h2>replace(s1,"c"): ${fn:replace(s1,"c","C")}</h2>
 	<h2>replace(s1,"cd"): ${fn:replace(s1,"cd","CD")}</h2>
 	<h2>replace(s1,"cd"): ${fn:contains(s1,"cd")}</h2>
 	<h2>contains(s1," "): ${fn:contains(s1," ")}</h2>
 	<h2>length(s1): ${fn:length(s1)}</h2>
</body>
</html>