<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %> 
<html>
	<head>
		<title>찾습니다 등록 결과</title>
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
			#hd-line hr{
				width: 1615px;
				position: relative;
				top: 40px;
				border: 1.5px solid rgba(212, 171, 141, 0.3);
			}
			center{
				margin-top: 160px;
			}
			font{
				font-size: 30px;
				color: #734D32;
				padding-top: 80px;
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
	request.setCharacterEncoding("euc-kr");  // 입력폼에서 전송된 한글데이터 처리

	// 입력폼에서 받는 데이터는 모두 String형임
   
	String comTitle = request.getParameter("comTitle");
	String comMemo = request.getParameter("comMemo");
	String comPhoto = request.getParameter("comPhoto");


try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  //  접속할 DB명
     String DB_ID="gamjatec";  //  접속할 아이디
     String DB_PASSWORD="abcd"; // 접속할 패스워드
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속           

	//SQL문 작성 : 테이블 필드명
    String jsql = "INSERT INTO community  (comTitle, ";
	jsql = jsql + "comMemo, comPhoto)  VALUES  (?, ?, ?)"; 
      
    //PreparedStatement 생성(SQL문의 형틀을 정의함)
	PreparedStatement pstmt = con.prepareStatement(jsql); 

	//위의 SQL문에서 ?에 해당되는 곳에 다음의 값들을 하나씩 할당함 (인수 전달)
	//정수형의 경우에는 setInt()를 사용함
	pstmt.setString(1, comTitle);
	pstmt.setString(2, comMemo);
	pstmt.setString(3, comPhoto);
   
    pstmt.executeUpdate(); // 쿼리 실행
%>
	<div id="hd-line">
		<hr>
	</div>
<center>
<div id="check">
	<img src="./img/check.png">
</div>
<p>나를보개가 업로드되었습니다</p>
<% 
  } catch(Exception e) { 
		out.println(e);
}
%>
<button onClick="comMain()">community 전체보기</button>
</center>
<script type="text/javascript">
        function comMain() {
            window.location.href = 'sub_community_watchme.jsp';
        }
    </script>
</body>
</html>