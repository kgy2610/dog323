<%@ page contentType="text/html; charset=euc-kr" %>
<%
    session.invalidate();    //  ���Ǽ����� ��ȿȭ��Ŵ
    response.sendRedirect("a_main_r.jsp");     //  <jsp:forward page="index.html"/>�� ������ �ǹ�
%>