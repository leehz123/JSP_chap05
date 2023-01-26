<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="./header.jspf" %>
	<div style="width: 300px; height: 300px; background-color: red"></div>
	<div style="width: 300px; height: 300px; background-color: blue"></div>
	<div style="width: 300px; height: 300px; background-color: green"></div>
	
	<%@ include file="./footer.jspf" %>
	<!-- 이런 식으로 분업이 가능함 -->
</body>
</html>


<!-- 여기는 IncludeServlet로 포워드 돼서 오는 거니까 http://localhost:8888/chap05/include/abcfdsafdsa로 접속하면 됨 -->