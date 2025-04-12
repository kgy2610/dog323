<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=euc-kr">
    <meta name="generator" content="Namo WebEditor(Trial)">
</head>
<body>
<%
    // 데이터베이스 연결 정보
    String DB_URL = "jdbc:mysql://localhost:3306/gamjatec";
    String DB_ID = "gamjatec";
    String DB_PASSWORD = "abcd";

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // JDBC 드라이버 로드
        Class.forName("com.mysql.jdbc.Driver");

        // 데이터베이스 연결
        con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

        // 사용자로부터 입력받은 아이디, 이메일, 휴대폰 번호
        String memId = request.getParameter("memId");
        String memEmail = request.getParameter("memEmail");
        String memPhone = request.getParameter("memPhone");

        // SQL 쿼리 작성
        String findPasswordQuery = "SELECT memPw FROM member WHERE memId=? AND memEmail=? AND memPhone=?";

        // PreparedStatement 객체 생성
        pstmt = con.prepareStatement(findPasswordQuery);
        pstmt.setString(1, memId);
        pstmt.setString(2, memEmail);
        pstmt.setString(3, memPhone);

        // 쿼리 실행 및 결과 가져오기
        rs = pstmt.executeQuery();

        // 결과가 있을 경우 비밀번호 출력
        if (rs.next()) {
            String memPw = rs.getString("memPw");
            out.println("입력하신 정보로 찾은 비밀번호는 " + memPw + "입니다.");
        } else {
            out.println("입력하신 정보로 비밀번호를 찾을 수 없습니다.");
        }
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
    } finally {
        // 자원 해제
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<button onclick="location.href='login.jsp'">로그인으로 돌아가기</button>
</body>
</html>