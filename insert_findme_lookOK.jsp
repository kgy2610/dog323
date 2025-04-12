<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %> 
<html>
    <head>
        <title>�ý��ϴ� ���</title>
        <link rel="stylesheet" href="./findme_result.css">
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
    margin-top: 180px;
 }
 font{
    font-size: 40px;
    color: #734D32;
    padding-top: 80px;
    font-family: 'nanumEB';
 }
 #table{
    width: 800px; height: 600px;
    margin-top: 50px;
    padding-top: 30px;
    background-color: #FFF2DC;
    border: 3px solid #B78B6C;
    border-radius: 30px;
    text-align: left;
 }
 table{
    margin: 30px 0 0 0;
 }
 table tr{
    margin-top: 20px;
 }
 table tr td:first-child{
    text-align: right;
    font-family: 'NanumSquareRound';
    font-size: 20px;
    color: #734D32;
 }
 #value-box{
    width: 550px; height: 60px;
    border: 3px solid #B78B6C;
    border-radius: 50px;
    font-size: 20px;
    padding: 0 20px 0 20px;
    background-color: #fff;
    color: #734D32;
 }
 #lookmemo {
    display: inline-block;
    margin-left: 63px;
}
 #lookmemo2 {
    width: 350px; height: 330px;
    border: 3px solid #B78B6C;
    border-radius: 30px;
    font-size: 20px;
    padding: 0 20px 0 20px;
    background-color: #fff;
    color: #734D32;
    vertical-align: top;
    padding-top: 15px;
 }

 button{
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
 button:hover{
    background-color: #B78B6C;
 }
		</style>
    </head>
<body>
<% 
   request.setCharacterEncoding("UTF-8");  // �Է������� ���۵� �ѱ۵����� ó��

   // �Է������� �޴� �����ʹ� ��� String����
   
   String looktitle = request.getParameter("looktitle");
   String lookadress = request.getParameter("lookadress");
   String lookmemo = request.getParameter("lookmemo");

try {
     String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  //  ������ DB��
     String DB_ID="gamjatec";  //  ������ ���̵�
     String DB_PASSWORD="abcd"; // ������ �н�����
     
    Class.forName("org.gjt.mm.mysql.Driver");  // JDBC ����̹� �ε�
     Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB�� ����           

   //SQL�� �ۼ� : ���̺� �ʵ��
    String jsql = "INSERT INTO findmelook  (looktitle, lookadress,  ";
   jsql = jsql + "lookmemo)  VALUES  (?, ?, ?)"; 
      
    //PreparedStatement ����(SQL���� ��Ʋ�� ������)
   PreparedStatement pstmt = con.prepareStatement(jsql); 

   //���� SQL������ ?�� �ش�Ǵ� ���� ������ ������ �ϳ��� �Ҵ��� (�μ� ����)
   //�������� ��쿡�� setInt()�� �����
    pstmt.setString(1, looktitle);
    pstmt.setString(2, lookadress);
    pstmt.setString(3, lookmemo);
   
    pstmt.executeUpdate(); // ���� ����
%>
<center>
    <font><b>���ε�Ǿ����ϴ�!</b></font>
    <div id="table">
       <table cellpadding="10">
          <tr>
             <td width="100">����</td>
             <td id="value-box"><%=lookadress%></td>
          </tr>
          <tr>
             <td></td>
          </tr>
          <tr>
             <td width="100">����</td>
             <td id="value-box"><%=looktitle%></td>
          </tr>
          <tr>
             <td></td>
          </tr>
          <tr>
             <td id="lookmemo">����</td>
             <td id="lookmemo2"><%=lookmemo%></td>
          </tr>
          <tr>
             <td></td>
          </tr>
       </table>
    </div>
    <% 
      } catch(Exception e) { 
          out.println(e);
    }
    %>
    <button onClick="fmMain()">�ý��ϴ� ��ü����</button>
    </center>
	<script type="text/javascript">
        function fmMain() {
            window.location.href = 'sub_findme_watch2.jsp';
        }
    </script>
</body>
</html>