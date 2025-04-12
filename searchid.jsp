<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=euc-kr">
    <meta name="generator" content="Namo WebEditor(Trial)">
</head>
<style>
	@font-face {
    font-family: 'NanumSquareRound';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
    font-weight: bolder;
    font-style: normal;
  }
  @font-face {
    font-family: 'nanumL';
    src: url('font/NanumSquareRoundL.ttf');
    font-weight: normal;
    font-style: normal;
  }
  @font-face {
    font-family: 'nanumR';
    src: url('font/NanumSquareRoundR.ttf');
    font-weight: normal;
    font-style: normal;
  }
  @font-face {
    font-family: 'nanumB';
    src: url('font/NanumSquareRoundB.ttf');
    font-weight: normal;
    font-style: normal;
  }
  @font-face {
    font-family: 'nanumEB';
    src: url('font/NanumSquareRoundEB.ttf');
    font-weight: normal;
    font-style: normal;
  }
  /* 나눔 스퀘어 라운드
  Light(300)
  Regular(400)
  Bold(700)
  Extra Bold(800) */
  
  *{
    margin: 0 auto;
    padding: 0 auto;
  }
  body{
    margin:0px;
    padding:0px;
    text-align: center;
    font-family: 'NanumSquareRound';
    font-size: 14px;
    color:#734D32;
  }
  center{
    margin-top: 90px;
 }
 #table > p {
    font-size: 40px;
    color: #734D32;
    padding-top: 70px;
    font-family: 'nanumEB';
 }
 #table{
    width: 700px; height: 600px;
    margin-top: 80px;
    padding-top: 30px;
    background-color: #FFF2DC;
    border: 3px solid #B78B6C;
    border-radius: 30px;
 }
 table{
    margin: 55px 0 0 0;
    width: 1200px; height: 200px;
 }

 table tr td:first-child{
    text-align: right;
    font-family: 'NanumSquareRound';
    font-size: 20px;
    color: #734D32;
    padding-right: 10px;
}

 #value-box > input {
    width: 450px; height: 70px;
    border: 3px solid #B78B6C;
    border-radius: 50px;
    font-size: 20px;
    padding: 0 30px 0 30px;
    background-color: #fff;
    color: #734D32; 
    font-family: 'nanumB';
}
#value-box > input::placeholder {
    color: #E4CFBB;
}

 #table > form > input {
    width: 230px; height: 55px;
    margin-top: 50px;
    background-color: #FF9E00;
    border: none;
    border-radius: 50px;
    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
    color: #fff;
    font-size: 20px;
    font-weight: 800;
    font-family: 'NanumSquareRound';
 }
 #table > form > input:hover{
    background-color: #B78B6C;
 }
</style>
<body>


<div id="table">
    <p>아이디 찾기</p>

    <form method="post" action="findCredentials2.jsp">
        <table>
            <tr>
                <td>이메일</td>
                <td id="value-box"><input type="email" name="memEmail" id="textbox" placeholder= "이메일을 입력해주세요." required></td>
            </tr>
			<tr>
                <td>이름</td>
                <td id="value-box"><input type="text" name="memName" id="textbox" placeholder= "이름을 입력해주세요." required></td>
            </tr>
		</table>
			<br>
			<input type="submit" class="submit" value="확인">
		</form>

</div>
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