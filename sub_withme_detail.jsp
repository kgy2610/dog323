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
  

/* withme_detail */

#withme_detail {
    width: 1400px; height: 750px;
    margin-top: 40px;
}
 #withme_detail > img {
     width: 700px; height: 700px;
     float: left;
     border-radius: 30px;
     margin-left: 20px;
     margin-right: 15px;
}
#withme_detail > table {
    width: 630px; height: 510px;
    border-radius: 30px;
    border: 3px solid #E6D7CB;
    color: #734D32;
    font-size: 20px;
    padding: 5px 45px 0 45px;
}
#withme_detail > tr, td {
    border-bottom: 1px solid #E6D7CB;
}
.wmD1 {
    font-family: 'nanumB';
}
.wmD2 {
    font-family: 'nanumEB';
    font-size: 23px;
}
#wmdetail_email {
    width: 630px; height: 65px;
    float: right;
    background-color: #FFF2DC;
    border-radius: 50px;
    border: 3px solid #E6D7CB;
    color: #734D32;
    margin: 30px 15px 0 0;
    text-align: left;
}
#wmdetail_email > h2 {
    display: inline-block;
    font-size: 20px;
    margin: 20px 10px 0px 35px;
    font-family: 'nanumB'
}
#wmdetail_email > h1 {
    font-size: 23px;
    display: inline-block;
    margin: 20px 10px 0px 20px;
    font-family: 'nanumEB';
}
#withme_detail > button {
    width: 630px; height: 65px;
    float: right;
    background-color: #FCBF49;
    border-radius: 50px;
    border: 3px solid #D4AB8D;
    color: #ffffff;
    margin: 20px 15px 0 0;
    cursor: pointer;
    font-size: 23px;
    font-family: 'nanumB';
}
#withme_detail > button:hover {
    background-color: #FF9E00;
}
#withme_detail2 {
    width: 1400px; height: 500px;
    margin: 20px 0 130px 0px;
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

			  String dogNo = request.getParameter("dogNo");

			String jsql = "SELECT * FROM withme WHERE dogNo = ?";   
			 PreparedStatement  pstmt  = con.prepareStatement(jsql);
			pstmt.setString(1, dogNo);
			
			ResultSet rs = pstmt.executeQuery();//SQL문 실행   
			rs.next();

			String wmDname = rs.getString("wmDname");
			String wmDsize =  rs.getString("wmDsize");   
			String  wmDkind = rs.getString("wmDkind");
			String wmDage =  rs.getString("wmDage");
			String wmDsex =  rs.getString("wmDsex");
			String wmDmemo =  rs.getString("wmDmemo");
			String wmProtec =  rs.getString("wmProtec");
			String wmEmail =  rs.getString("wmEmail");

		%>

		<div id="withme_detail">
		<img src="withme/<%=dogNo%>.jpg">

		<table>
			  <tr><td  class="wmD1" style="width: 85px;">이름</td><td class="wmD2"><%=wmDname%></td></tr>
			  <tr><td class="wmD1">크기</td><td class="wmD2"><%=wmDsize%></td></tr>
			  <tr><td class="wmD1">견종</td><td class="wmD2"><%=wmDkind%></td></tr>
			  <tr><td class="wmD1">나이</td><td class="wmD2"><%=wmDage%></td></tr>
			  <tr><td class="wmD1">성별</td><td class="wmD2"><%=wmDsex%></td></tr>
			  <tr><td class="wmD1">특징</td><td class="wmD2"><%=wmDmemo%></td></tr>
			  <tr  class="wmD1" style="border: none"><td style="border: none">보호소</td><td class="wmD2" style="border: none;"><%=wmProtec%></td></tr>
			</table>
			
			<div id="wmdetail_email">
				<h2>보호자 이메일</h2><h1><%=wmEmail%></h1>
			</div>
			<button type="button" id="downloadBtn">입양 신청하기</button>
		</div>
		<div id="withme_detail2">
			<img src="./img/sub_withme/withmeway.png" width="1370px" height="470px">
		</div>

		</center>

		<%
			} catch (Exception e) {
			   out.println(e);
		}
		%>
    </div>
    <script>
		function openPopup(url) {
		  var width = 1400;
		  var height = 900;
		  var left = (screen.width - width) / 3;
	  
		  window.open(url, 'popup', 'width=' + width + ', height=' + height + ', left=' + left + ', top=' + top);
	  }
            document.getElementById('downloadBtn').addEventListener('click', () => {
                window.location.href = 'http://localhost:8080/gamjatec/joinwithme.docx';
            });
    </script>
  </body>
  </html>