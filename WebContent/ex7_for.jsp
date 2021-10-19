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
	<h1>JSPL for 연습</h1>
	<%
		String[] ar = {"자바","MyBatis","Spring","Lombok"};
		request.setAttribute("ar", ar);
	 	/* 스트립트 영역과 JSTL의 영역은 다르기 때문에 같이 사용할 수 없다 만약 같이 사용하고 싶으면 requset에 저장하여 사용해야 한다. */
	%>
	<ul>
		<%-- for(String str : ar){ --%>
		<c:forEach var="str" items="${ar}" varStatus="st">
			<li>(${st.index+1})${str}</li>
		</c:forEach>
	</ul>
	
	<ol>
		<c:forEach begin="1" end="10" varStatus="">
			<li>INCREPAS</li>
		</c:forEach>
	</ol>
	
	
</body>
</html>