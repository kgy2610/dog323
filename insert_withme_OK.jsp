<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %> 

<html>
	<head>
		<title>����� ��� ���</title>
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

	  /* withme ��� �Ϸ� */
#withme_ok {
    width: 100%; height: 900px;
    margin-top: 130px;
  }
#withme_ok > hr {
    margin-top: 40px;
    margin-left: auto;
    margin-right: auto;
    width: 1614px;
    height: 3px;
    background-color: #D4AB8D4D;
    border: 0;
  }
#withme_ok_box {
    width: 740px; height: 460px;
    margin-top: 200px;
}
#withme_ok_box > h1 {
    color: #734D32;
    font-size: 50px;
    font-family: 'nanumEB';
    margin-top: 40px;
}
#withme_ok_box > h2 {
    color: #734D32;
    font-size: 30px;
    font-family: 'nanumB';
    letter-spacing: -1px;
    margin-top: 45px;
    line-height: 45px;
}
#withme_ok_box > button {
    width: 622px; height: 77px;
    background-color: #FCBF49;
    border-radius: 20px;
    border: none;
    margin-top: 47px;
    color: white;
    font-size: 30px;
    font-family: 'nanumB';
    cursor: pointer;
}
#withme_ok_box > button:hover {
    background-color: #FF9E00;
}
			</style>
		</head>
	<body>

<% 
	request.setCharacterEncoding("euc-kr");  // �Է������� ���۵� �ѱ۵����� ó��

	// �Է������� �޴� �����ʹ� ��� String����
   
	String wmName = request.getParameter("wmName");
	String wmPhone = request.getParameter("wmPhone");
	String wmEmail = request.getParameter("wmEmail");
	String wmProtec = request.getParameter("wmProtec");

	String	wmAddress1 = request.getParameter("wmAddress1");
	String	wmAddress2 = request.getParameter("wmAddress2");
	String wmAddress = wmAddress1 + "-" + wmAddress2;

	String wmDname = request.getParameter("wmDname");
	String wmDage = request.getParameter("wmDage");
	String wmDkind = request.getParameter("wmDkind");
	String wmDsize = request.getParameter("wmDsize");
	String wmDsex = request.getParameter("wmDsex");
	String wmDmemo = request.getParameter("wmDmemo");
	String wmDphoto = request.getParameter("wmDphoto");


try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  //  ������ DB��
     String DB_ID="gamjatec";  //  ������ ���̵�
     String DB_PASSWORD="abcd"; // ������ �н�����
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC ����̹� �ε�
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB�� ����           

	//SQL�� �ۼ� : ���̺� �ʵ��
    String jsql = "INSERT INTO withme  (wmName, wmPhone, wmEmail, wmProtec, wmAddress, ";
	jsql = jsql + "wmDname,  wmDage, wmDkind, wmDsize, wmDsex, wmDmemo, wmDphoto)  VALUES  (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"; 
      
    //PreparedStatement ����(SQL���� ��Ʋ�� ������)
	PreparedStatement pstmt = con.prepareStatement(jsql); 

	//���� SQL������ ?�� �ش�Ǵ� ���� ������ ������ �ϳ��� �Ҵ��� (�μ� ����)
	//�������� ��쿡�� setInt()�� �����
    pstmt.setString(1, wmName);
    pstmt.setString(2, wmPhone);
    pstmt.setString(3, wmEmail);
    pstmt.setString(4, wmProtec);
    pstmt.setString(5, wmAddress);
    pstmt.setString(6, wmDname);
    pstmt.setString(7, wmDage);
    pstmt.setString(8, wmDkind);
    pstmt.setString(9, wmDsize);
    pstmt.setString(10, wmDsex);
    pstmt.setString(11, wmDmemo);
    pstmt.setString(12, wmDphoto);
    
    pstmt.executeUpdate(); // ���� ����
%>
<section id="withme_ok">
        <hr>
        <div id="withme_ok_box">
            <img src="img/withme_ok.png">
            <h1>����� �Ϸ�Ǿ����ϴ�</h1>
            <h2>������ ����� �Ϸ�Ǿ����ϴ�.<br>���ο� ��ȣ�ڰ� ��û���� �ۼ��Ͽ� �̸��Ϸ� ������ ���Դϴ�!</h2>
            <button type="button" onclick="location.href='./sub_withme_main.jsp'">WITH ME ��ü ����</button>
        </div>
    </section>
<% 
  } catch(Exception e) { 
		out.println(e);
}
%>
</body>
</html>