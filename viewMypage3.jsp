<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<head>
    <title>mypage</title>
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
/* mypage_profile */

#mypage-bg {
  width: 100%; height: 1500px;
  margin-top: 150px;
}
#mypage-hd > hr {
    margin-top: 40px;
    margin-left: auto;
    margin-right: auto;
    width: 1614px;
    height: 3px;
    background-color: #D4AB8D4D;
    border: 0;
  }
  #mypage-hd2 {
    width: 250px;
    height: 100px;
    margin-top: 85px;
  }
  #mypage-hd2 > h2 {
  font-size: 20px;
  color: #B78B6C;
  }
  #mypage-hd2 > h1 {
  font-size: 40px;
  color: #734D32;
  font-weight: 700;
  font-family: 'nanumEB';
  letter-spacing: -2px;
  transform : rotate(0.04deg); 
  
  }
  #mypage-hd2 > hr {
    width: 155px;
    height: 6px;
    background-color: #FF9E00;
    border: 0;
    border-radius: 10px;
}

#mypage-box {
    width: 1400px; height: 700px;
    margin-top: 70px;
}
#mypage-menu {
    width: 270px; height: 600px;
    float: left;
}
#mp-menu {
  width: 200px; height: 100%;
  float: left;
}
#mp-menu > ul > li {
  width: 150px;
  list-style: none;
  text-align: right;
  font-size: 25px;
  font-family: 'nanumEB';
  color: #734D32;
  margin-bottom: 40px;
  margin-right: 30px;
  cursor: pointer;
}
#mp-menu > ul > li:hover {
  color: #FF9E00;
}
#mp-menu > ul > li a {
  color: inherit; /* 부모 요소로부터 상속된 색상 유지 */
  text-decoration: none; /* 밑줄 제거 */
}
#mypage-menu > img {
  float: right;
  margin-right: 30px;
}
#mp-profile {
  width: 1100px; height: 500px;
  float: right;
  border: 3px solid #E6D7CB;
  border-radius: 40px;
}
#mp-profile-img {
  width: 400px; height: 340px;
  margin: 75px 0px 0px 82px;
  float: left;
}
#profile-img {
  width: 330px; height: 330px;
  border-radius: 200px;
  border: 3px solid #734D32;
  margin-right: 57px;
}

#mp-profile-content {
  width: 530px; height: 345px;
  float: right;
  margin-top: 90px;
  margin-right: 50px;
}
#mp-profile-content > table {
  float: left;
  width: 530px; height: 345px;
}
.mp-pf1 {
  width: 80px;
  font-size: 21px;
  color: #734D32;
  font-family: 'nanumB';
  text-align: right;
}
.mp-pf2 {
  width: 360px;
  font-size: 29px;
  color: #734D32;
  font-family: 'nanumEB';
  text-align: left;
  padding-left: 20px;
}
.mp-pf2 > input {
  width: 350px; height: 50px;
  border-radius: 50px;
  border: 2.5px solid #B78B6C;
  font-size: 23px;
  color: #734D32;
  font-family: 'nanumB';
  padding-left: 30px;
  letter-spacing: -1px;
}

.flex-container {
  display: flex;
}
.wrapper {
  text-align: center;
  flex-grow: 1;
  
  .image-box {
    width: 280px;
    height: 280px;
    object-fit: cover;
    display: block;
    margin: 10px auto;
    border-radius: 150px;
  }

  .upload-btn {
    width: 194px; height: 30px;
    margin-top: 5px;
    border: 1px solid #B78B6C;
    background-color: #FFFAF0;
    border-radius: 20px;
    padding: 14px 0px 0px 0px;
    display: inline-block;
    cursor: pointer;
    font-size: 16px;
    color: #734D32;
    font-family: 'nanumEB';

    input[type=file] {
      display: none;
    }
  }
}

#mypage-box > button {
  width: 280px; height: 72px;
  margin-top: 55px;
  background-color: #ffffff;
  border: 3px solid #B78B6C;
  border-radius: 50px;
  color: #734D32;
  font-size: 25px;
  font-family: 'nanumEB';
  cursor: pointer;
}
#mypage-box > button:hover {
  background-color: #FFF2DC;
}



/* 내가 쓴 글 */
#mp-wrote {
  width: 1100px; height: auto;
  float: right;
  border: 3px solid #E6D7CB;
  border-radius: 40px;
  padding-top: 10px;
}
#wrote-table {
  width: 1000px; height: auto;
}
#wrote-table th {
  color: #B78B6C;
  font-size: 20px;
  font-family: 'nanumB';
  border-bottom: 2px solid #E6D7CB;
}
#wrote-table td {
  color: #734D32;
  font-size: 23px;
  font-family: 'nanumB';
  border-bottom: 1px solid #E6D7CB;
}
#wrote-table td > a{
  text-decoration: none;
}


   </style>
</head>
<body>
<%
try {
   // 데이터베이스 연결 설정
   String DB_URL="jdbc:mysql://localhost:3306/gamjatec";
   String DB_ID="gamjatec"; 
   String DB_PASSWORD="abcd";
     
   Class.forName("com.mysql.jdbc.Driver");  
   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
   
   // 각 테이블에서 제목을 가져오는 쿼리
   String sql1 = "SELECT wmDname AS title, dogNo FROM withme";
   String sql2 = "SELECT fmName AS title, fmdogNo FROM findme";
   String sql3 = "SELECT looktitle AS title, lookno FROM findmelook";
   
   // 테이블 1
   PreparedStatement pstmt1 = con.prepareStatement(sql1);
   ResultSet rs1 = pstmt1.executeQuery();
   
   // 테이블 2
   PreparedStatement pstmt2 = con.prepareStatement(sql2);
   ResultSet rs2 = pstmt2.executeQuery();
   
   // 테이블 3
   PreparedStatement pstmt3 = con.prepareStatement(sql3);
   ResultSet rs3 = pstmt3.executeQuery();
%>
<section id="mypage-bg">
    <article id="mypage-hd">
        <div id="mypage-hd2">
              <h2>MY PAGE</h2>
              <h1>내가 쓴 글</h1>
              <hr>
			  
            </div>
    </article>
    <div id="mypage-box">
        <div id="mp-menu">
              <ul>
                 <li><a href="./mypage.jsp">내 프로필</a></li>
                <li><a href="./viewMypage1.jsp">프로필 수정</a></li>
                <li><a href="./viewMypage2.jsp">비밀번호 변경</a></li>
                <li><font color="#FF9E00">내가 쓴 글</font></li>
              </ul>
            </div>
			<img src="img/hr.png">
        <div id="mp-wrote">
            <table id="wrote-table">
                <tr><th>게시판</th><th>제목</th></tr>
                <% 
                // 테이블 1의 결과 출력
                while(rs1.next()) { 
                %>
                <tr>
                    <td>WITH ME</td>
                    <td><a href="sub_withme_detail.jsp?dogNo=<%= rs1.getString("dogNo") %>"><%= rs1.getString("title") %></a></td>
                </tr>
                <% 
                }
                
                // 테이블 2의 결과 출력
                while(rs2.next()) { 
                %>
                <tr>
                    <td>FIND ME</td>
                    <td><a href="sub_findme_detail.jsp?fmdogNo=<%= rs2.getInt("fmdogNo") %>"><%= rs2.getString("title") %></a></td>
                </tr>
                <% 
                }
                
                // 테이블 3의 결과 출력
                while(rs3.next()) { 
                %>
                <tr>
                    <td>봤습니다</td>
                    <td><a href="sub_findme_watch_detail.jsp?lookno=<%= rs3.getInt("lookno") %>"><%= rs3.getString("title") %></a></td>
                </tr>
                <% 
                }
                %>
            </table>
        </div>
    </div>
</section>
<%
} catch (Exception e) {
   out.println(e);
}
%>
</body>
</html>