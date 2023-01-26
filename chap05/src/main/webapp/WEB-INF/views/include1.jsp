<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<p>include1 그냥 x를 하면 가장 가까운 걸 봄. 여기서는 requestScope.x를 보여줌: ${x }</p>
<p>include1 page scope: ${pageScope.x }</p>
<p>include1 request scope: ${requestScope.x }</p>
<p>include1 session scope: ${sessionScope.x }</p>
<p>include1 application scope: ${applicationScope.x }</p>	
