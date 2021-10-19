<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="ex8.TestVO"%>
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
	TestVO t1 = new TestVO("마루치","010","maruchi@korea.com");
	TestVO t2 = new TestVO("아루치","010","arauchi@korea.com");
	TestVO t3 = new TestVO("커피","010","coffee@korea.com");
	
	// 위 객체들을 저장할 ArrayList 생성
	List<TestVO> list = new ArrayList<TestVO>();
	
	list.add(t1);
	list.add(t2);
	list.add(t3);
	
	session.setAttribute("list", list); // 세션에 저장
%>

	<button type="button" onclick="javascript:location.href='ex8_for2.jsp'">다음</button>

</body>
</html>