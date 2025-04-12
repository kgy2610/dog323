<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=euc-kr">
    <meta name="generator" content="Namo WebEditor(Trial)">
</head>
<body>
<%
    // �����ͺ��̽� ���� ����
    String DB_URL = "jdbc:mysql://localhost:3306/gamjatec";
    String DB_ID = "gamjatec";
    String DB_PASSWORD = "abcd";

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // JDBC ����̹� �ε�
        Class.forName("com.mysql.jdbc.Driver");

        // �����ͺ��̽� ����
        con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

        // ����ڷκ��� �Է¹��� �̸��ϰ� �̸�
        String memEmail = request.getParameter("memEmail");
        String memName = request.getParameter("memName");

        // SQL ���� �ۼ�
        String findIDQuery = "SELECT memId FROM member WHERE memEmail=? AND memName=?";

        // PreparedStatement ��ü ����
        pstmt = con.prepareStatement(findIDQuery);
        pstmt.setString(1, memEmail);
        pstmt.setString(2, memName);

        // ���� ���� �� ��� ��������
        rs = pstmt.executeQuery();

        // ����� ���� ��� ���̵� ���
        if (rs.next()) {
            String memId = rs.getString("memId");
            out.println("�Է��Ͻ� �̸��ϰ� �̸����� ã�� ���̵�� " + memId + "�Դϴ�.");
        } else {
            out.println("�ش� �̸��ϰ� �̸����� ��ϵ� ȸ���� �����ϴ�.");
        }
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
    } finally {
        // �ڿ� ����
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>