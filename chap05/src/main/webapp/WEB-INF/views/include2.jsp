<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- �׳� x��� �ϸ� ���� ����� �� ��. (request�� �� ��) -->
<p>include2 �׳� x�� �ϸ� ���� ����� �� ��. ���⼭�� requestScope.x�� ������: ${x }</p>
<p>include2 page scope: ${pageScope.x }</p> <!-- ���⼭�� ���ٷ�(�³�?)�� �Ŷ� ����Ѱ��� �׷��� �ٸ� �������� ������ ������ ������ �� �� ���� ����-->
<p>include2 request scope: ${requestScope.x }</p>
<p>include2 session scope: ${sessionScope.x }</p>
<p>include2 application scope: ${applicationScope.x }</p>	
    