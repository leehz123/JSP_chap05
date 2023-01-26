<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- 그냥 x라고 하면 가장 가까운 걸 봄. (request를 본 거) -->
<p>include2 그냥 x를 하면 가장 가까운 걸 봄. 여기서는 requestScope.x를 보여줌: ${x }</p>
<p>include2 page scope: ${pageScope.x }</p> <!-- 여기서는 리다렉(맞나?)쓴 거랑 비슷한가봄 그래서 다른 페이지라 페이지 스코프 변수를 알 수 없느 ㄴ것-->
<p>include2 request scope: ${requestScope.x }</p>
<p>include2 session scope: ${sessionScope.x }</p>
<p>include2 application scope: ${applicationScope.x }</p>	
    