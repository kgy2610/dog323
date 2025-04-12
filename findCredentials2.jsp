<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html>
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

        // 사용자로부터 입력받은 이메일과 이름
        String memEmail = request.getParameter("memEmail");
        String memName = request.getParameter("memName");

        // SQL 쿼리 작성
        String findIDQuery = "SELECT memId FROM member WHERE memEmail=? AND memName=?";

        // PreparedStatement 객체 생성
        pstmt = con.prepareStatement(findIDQuery);
        pstmt.setString(1, memEmail);
        pstmt.setString(2, memName);

        // 쿼리 실행 및 결과 가져오기
        rs = pstmt.executeQuery();

        // 결과가 있을 경우 아이디 출력
        if (rs.next()) {
            String memId = rs.getString("memId");
            out.println("입력하신 이메일과 이름으로 찾은 아이디는 " + memId + "입니다.");
        } else {
            out.println("해당 이메일과 이름으로 등록된 회원이 없습니다.");
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
</body>
</html>