<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=euc-kr">
    <meta name="generator" content="Namo WebEditor(Trial)">
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
  /* ���� ������ ����
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
    width: 700px; height: 680px;
    margin-top: 80px;
    padding-top: 30px;
    background-color: #FFF2DC;
    border: 3px solid #B78B6C;
    border-radius: 30px;
 }
 table{
    margin: 55px 0 0 0;
    width: 880px; height: 300px;
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
</head>
<body>

<div id="table">
    <p>��й�ȣ ã��</p>
    <form method="post" action="findCredentials.jsp">
        <table>
            <tr>
                <td>���̵�</td>
                <td id="value-box"><input type="text" name="memId" id="textbox" placeholder= "���̵� �Է��ϼ���."></td>
            </tr> 
            <tr>
                <td>�̸���</td>
                <td id="value-box"><input type="email" name="memEmail" id="textbox" placeholder= "�̸����� �Է��ϼ���." required></td>
            </tr>
            <tr>
                <td>�޴��� ��ȣ</td> 
                <td id="value-box"><input type="phone" name="memPhone" id="textbox" placeholder= "�޴��� ��ȣ�� �Է��ϼ���." required></td>
            </tr>
        </table>  
        <br>
        <input type="submit" class="submit" value="Ȯ��">
    </form>
</div>


<%
    String DB_URL = "jdbc:mysql://localhost:3306/gamjatec";
    String DB_ID = "gamjatec";
    String DB_PASSWORD = "abcd";

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

        // ���⼭ searchType�� �������� �κ��� �����ϴ�.
        // ���� searchType�� null�� �� �����Ƿ� NullPointerException�� �߻��մϴ�.
        String searchType = request.getParameter("searchType");

        String memId = request.getParameter("memId");          
        String memEmail = request.getParameter("memEmail");
        String memPhone = request.getParameter("memPhone");

        // searchType�� null�� �ƴ��� Ȯ���ؾ� �մϴ�.
        if (searchType != null && searchType.equals("findPassword")) {
            String findPasswordQuery = "SELECT memPw FROM member WHERE memId=? AND memEmail=? AND memPhone=?";
            pstmt = con.prepareStatement(findPasswordQuery);
            pstmt.setString(1, memId);
            pstmt.setString(2, memEmail);
            pstmt.setString(3, memPhone);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                String memPw = rs.getString("memPw");
                out.println("�Է��� ������ ��ġ�ϴ� ��й�ȣ�� " + memPw + "�Դϴ�.");
            } else {
                out.println("�Է��� ������ ��ġ�ϴ� ȸ���� �����ϴ�.");
            }
        }
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
    } finally {
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