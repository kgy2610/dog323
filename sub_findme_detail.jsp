<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
	<head>
		<title>강아지 상세 정보 조회</title>
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
		/* findme_상세페이지 */

		#findme_detail {
			width: 1300px; height: 750px;
			margin-top: 230px;
		}
		 #findme_detail > img {
			 width: 500px; height: 500px;
			 float: left;
			 border-radius: 30px;
			 margin-left: 50px;
		}
		#findme_detail > h1 {
			color: #734D32;
			font-size: 40px;
			font-family: 'nanumEB';
			margin-bottom: 50px;
		}
		#findme_detail > table {
			width: 630px; height: 400px;
			border-radius: 30px;
			border: 3px solid #E6D7CB;
			color: #734D32;
			font-size: 20px;
			padding: 5px 45px 0 45px;
		}
		#findme_detail > tr, td {
			border-bottom: 1px solid #E6D7CB;
		}
		.fmD1 {
			width: 100px;
			font-family: 'nanumB';
			text-align: right;
			padding-right: 25px;
		}
		.fmD2 {
			font-family: 'nanumEB';
			font-size: 23px;
			
		}
		.fmD3 {
			font-family: 'nanumEB';
			border: none;
			text-align: right;
			padding-right: 25px;

		}
		.fmD4 {
			font-family: 'nanumEB';
			border: none;
		}
		#fmdetail_phone {
			width: 630px; height: 65px;
			float: right;
			background-color: #FFF2DC;
			border-radius: 50px;
			border: 3px solid #E6D7CB;
			color: #734D32;
			margin: 30px 15px 0 0;
			text-align: left;
			margin-right: 55px;
		}
		#fmdetail_phone > h2 {
			display: inline-block;
			font-size: 20px;
			margin: 20px 10px 0px 35px;
			font-family: 'nanumB'
		}
		#fmdetail_phone > h1 {
			font-size: 23px;
			display: inline-block;
			margin: 20px 10px 0px 20px;
			font-family: 'nanumEB';
		}
		</style>
	</head>
<body>
      <div id="wrap">

        <center>
<%
try {
     String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  //  접속할 DB명
     String DB_ID="gamjatec";  //  접속할 아이디
     String DB_PASSWORD="abcd"; // 접속할 패스워드
     
    Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
     Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

      String fmdogNo = request.getParameter("fmdogNo");

    String jsql = "SELECT * FROM findme WHERE fmdogNo = ?";   
     PreparedStatement  pstmt  = con.prepareStatement(jsql);
    pstmt.setString(1, fmdogNo);
    
    ResultSet rs = pstmt.executeQuery();//SQL문 실행   
    rs.next();

    String fmName = rs.getString("fmName");
    String fmPhone =  rs.getString("fmPhone");   
    String  fmDkind = rs.getString("fmDkind");
    String fmDplace =  rs.getString("fmDplace");
     String fmDmemo =  rs.getString("fmDmemo");
    String ctgfmdogNo=  rs.getString("fmdogNo");
%>

<section id="findme_detail">
    <h1>강아지를 찾습니다</h1>
    <img src="findme/<%=fmdogNo%>.jpg">
    <table>
      <tr><td class="fmD1">보호자 이름</td><td class="fmD2"><%=fmName%></td></tr>
      <tr><td class="fmD1">견종</td><td class="fmD2"><%=fmDkind%></td></tr>
      <tr><td class="fmD1">실종 위치</td><td class="fmD2"><%=fmDplace%></td></tr>
      <tr><td class="fmD3">특징</td><td class="fmD4"><%=fmDmemo%></td></tr>
    </table>

    <div id="fmdetail_phone">
        <h2>보호자 연락처</h2><h1><%=fmPhone%></h1>
    </div>
</section>

</center>
<%
    } catch (Exception e) {
       out.println(e);
}
%>
    
      </div>
    
    </body>
</html>