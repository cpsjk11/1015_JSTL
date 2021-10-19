
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		width: 600px;
		border-collapse: collapse;
		
	}
	table th, table td{
		border: 1px solid black;
		padding: 4px;
	}
	table caption{
		text-indent: -9999px;
		height: 0;
	}
	.popup{
		display: none;
	}
	.disable {
	    padding:3px 7px;
	    border:1px solid silver;
	    color:silver;
	}
	.paging{
		list-style: none;
	}
		table tfoot ol.paging li {
	    float:left;
	    margin-right:8px;
	}
</style>

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
</head>
<body>
	<div id="wrap">
		<header>
			<h1>회원 목록</h1>
		</header>
		<article>
			<table>
				<caption>도시목록</caption>
				<colgroup>
					<col width="30px"/>
					<col width="100px"/>
					<col width="150px"/>
					<col width="*"/>
				</colgroup>
				<thead>
					<tr>
						<td colspan="4">
							<input type="button"value="추가" onclick="addWin()"/>
							<input type="button"value="검색" onclick="searchWin()"/>
						</td>
					</tr>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>전화번호</th>
						<th>이메일</th>
					</tr>
				</thead>
				<tbody>
				<%
					request.setCharacterEncoding("utf-8");
				%>
					<c:forEach var="ar" items="${sessionScope.list}" varStatus="st">
						<tr>
							<td>${st.index + 1}</td>
							<td>${ar["name"]}</td>
							<td>${ar.phone}</td>
							<td>${ar.email}</td>
							
						</tr>
				    </c:forEach>
					
				</tbody>
			</table>
		</article>
	</div>

</body>
</html>