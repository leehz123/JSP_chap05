<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<%@ include file="/WEB-INF/views/jspf/taglib.jspf" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include 활용하기</title>
<%@ include file="/WEB-INF/views/jspf/bootstrap_header.jspf" %> <!-- jspf파일은 file만들기 들어가서 확장자 .jspf로 하면 됨 -->
<!-- 부트스트랩 쓰는 예 -->
</head>
<body>

	<h3># include</h3>
	
	<!-- jsp include가 뭐가 다른지 보기 위해 변수를 하나 만들어보자 -->
	<c:set var="x" value="10"/> <!-- scpoe는 기본으로 놔두면 page -->
	<!-- <c:set var="x" value="10" scope="page"/> -->
	<c:set var="x" value="10" scope="request"/>
	<c:set var="x" value="10" scope="session"/>
	<c:set var="x" value="10" scope="application"/>
	
	<p>x: ${x }</p>
	
	
			
	<%@ include file="/WEB-INF/views/include1.jsp" %>
	<jsp:include page="/WEB-INF/views/include2.jsp" />
	
	
	<dl>
		<dt>include directive</dt>
		<dd>꺽쇄 퍼센트에서 인클루드 문법을 사용할 수 있음. <br />
			해당 파일을 그대로 현재 파일에 포함시키는 방식(깔끔해서 선호한다고 하심~~~)</dd>
		
		<dt>jsp include</dt>
		<dd>해당 파일을 실행시킨 결과를 현재 파일에 포함시키는 방식</dd>
	</dl>


</body>
</html>