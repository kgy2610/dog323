<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %> 
<html>
<head>
	<title>�Ŀ� ��� �Ϸ�</title>
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
		  color:black;
		  /* overflow-y: hidden; */
		}
		img{
		  border: 0px;
		}
		#wrap {
			margin: 0 auto;
			width: 100%;
		}
		center{
			margin-top: 240px;
		}
		p{
			font-size: 60px;
			font-weight: 800;
			color: 734D32;
		}
		h1{
			font-size: 30px;
			font-weight: 800;
			color: 734D32;
		}
		button{
				width: 295px; height: 70px;
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
	request.setCharacterEncoding("euc-kr");  // �Է������� ���۵� �ѱ۵����� ó��

	// �Է������� �޴� �����ʹ� ��� String����
   
	String sptName = request.getParameter("sptName");
	String sptPhone = request.getParameter("sptPhone");
	String sptPtname = request.getParameter("sptPtname");
	String sptAddress = request.getParameter("sptAddress");
	String sptMoney = request.getParameter("sptMoney");
	String sptMoneyno = request.getParameter("sptMoneyno");
	String sptTitle = request.getParameter("sptTitle");
	String sptMemo = request.getParameter("sptMemo");
	String sptPhoto = request.getParameter("sptPhoto");


try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  //  ������ DB��
     String DB_ID="gamjatec";  //  ������ ���̵�
     String DB_PASSWORD="abcd"; // ������ �н�����
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC ����̹� �ε�
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB�� ����           

	//SQL�� �ۼ� : ���̺� �ʵ��
    String jsql = "INSERT INTO support  (sptName, sptPhone, sptPtname, sptAddress, ";
	jsql = jsql + "sptMoney,  sptMoneyno, sptTitle, sptMemo, sptPhoto)  VALUES  (?, ?, ?, ?, ?, ?, ?, ?, ?)"; 
      
    //PreparedStatement ����(SQL���� ��Ʋ�� ������)
	PreparedStatement pstmt = con.prepareStatement(jsql); 

	//���� SQL������ ?�� �ش�Ǵ� ���� ������ ������ �ϳ��� �Ҵ��� (�μ� ����)
	//�������� ��쿡�� setInt()�� �����
    pstmt.setString(1, sptName);
    pstmt.setString(2, sptPhone);
    pstmt.setString(3, sptPtname);
    pstmt.setString(4, sptAddress);
    pstmt.setString(5, sptMoney);
    pstmt.setString(6, sptMoneyno);
	pstmt.setString(7, sptTitle);
	pstmt.setString(8, sptMemo);
	pstmt.setString(9, sptPhoto);
   
    pstmt.executeUpdate(); // ���� ����
%>
<center>
<div id="check">
	<img src="./img/check.png">
</div>
<p>�Ŀ� ��û�� ���ε�Ǿ����ϴ�</p>
<% 
  } catch(Exception e) { 
		out.println(e);
}
%>
<p>
<button onClick="supportMain()">�Ŀ��������� ���ư���</button>
</center>
<script>
	function supportMain() {
            window.location.href = 'sub_support_main.jsp';
        }
</script>
</body>
</html>