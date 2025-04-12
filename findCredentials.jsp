<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html lang="en">
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

        // ����ڷκ��� �Է¹��� ���̵�, �̸���, �޴��� ��ȣ
        String memId = request.getParameter("memId");
        String memEmail = request.getParameter("memEmail");
        String memPhone = request.getParameter("memPhone");

        // SQL ���� �ۼ�
        String findPasswordQuery = "SELECT memPw FROM member WHERE memId=? AND memEmail=? AND memPhone=?";

        // PreparedStatement ��ü ����
        pstmt = con.prepareStatement(findPasswordQuery);
        pstmt.setString(1, memId);
        pstmt.setString(2, memEmail);
        pstmt.setString(3, memPhone);

        // ���� ���� �� ��� ��������
        rs = pstmt.executeQuery();

        // ����� ���� ��� ��й�ȣ ���
        if (rs.next()) {
            String memPw = rs.getString("memPw");
            out.println("�Է��Ͻ� ������ ã�� ��й�ȣ�� " + memPw + "�Դϴ�.");
        } else {
            out.println("�Է��Ͻ� ������ ��й�ȣ�� ã�� �� �����ϴ�.");
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
<button onclick="location.href='login.jsp'">�α������� ���ư���</button>
</body>
</html>