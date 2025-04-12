<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>MYPAGE</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="./img/favicon-32x32.png">
</head>
<head>
  <meta charset="euc-kr">
  <title>MY PAGE - 프로필 수정</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="./img/favicon-32x32.png">
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
	#icon{
		position: relative;
		right: 180px;
		top: 16px;
	}
  	#icon > ul{
		width: 260px; height: 65px;
		list-style-type: none;
		color: #734D32;
		line-height: 100px;
		position: relative;
		clear:both;
		top: -88px; right: -120px;
		box-shadow: 0px 0px 3px 2px rgba(183, 139, 108, 0.2);
		float: right;
		border-radius: 20px;
	}
	#icon > ul > li:first-child{
		padding-top: 9px;
	}
	#icon > ul > li{
		float: left;
		margin-left: 13px;
		line-height: 70px;
	}
	#icon > ul > li > a{
		text-decoration: none;
		font-size: 18px;
		font-weight: 700;
		color: #734D32;
	}
	#icon > ul > li > a:hover{
		color: #FF9E00;
	}
	#icon > ul > li > p{
		color: #734D32;
		font-size: 20px;
		font-weight: 800;
	}
	#footer > ul > #info > ul > li > a{
		color: #fff;
		text-decoration: none;
	}
    #mypage-hd2 > hr {
    width: 180px;
    height: 6px;
    background-color: #FF9E00;
    border: 0;
    border-radius: 10px;
    }
    #profilie-img {
        width: 276px; height: 276px;
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
    width: 1400px; height: 300px;
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
  width: 760px; height: 330px;
  float: right;
  margin-top: -300px;
  margin-right: 450px;
  
}
#mp-profile-content > table {
  float: left;
  width: 530px; height: 345px;
  
}
#mp-profile-content > table > tr {
 margin-top:30px; 
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

  </style>
</head>
<body>
<%
   String id = (String)session.getAttribute("sid");  
   // 로그인 성공시 부여한 "sid" 속성의 속성값은 "특정회원의 아이디"를 나타내며, 
   // 이 속성값이 null인지 아닌지로 로그인 여부를 확인함. (로그인이 안된 경우, 이 값은 null값을 가짐)
   // login_ok.jsp의 초반부 코드 확인 요망!  ==> session.setAttribute("sid", id); 부분 확인요망!

if (id == null) 
{
%>
<center>
<br><br><br> 
<font style="font-size:10pt;font-family:맑은 고딕">
      로그인이 필요합니다! <br><br>   <a href="login.jsp" ></a>
</font>
</center>
<%
}
else
{
try {
     String DB_URL="jdbc:mysql://localhost:3306/gamjatec";
     String DB_ID="gamjatec"; 
     String DB_PASSWORD="abcd";
     
    Class.forName("org.gjt.mm.mysql.Driver");  
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
   

   String jsql = "select*from member where memId = ?";
   PreparedStatement pstmt = con.prepareStatement(jsql);
   pstmt.setString(1,id);

   ResultSet rs = pstmt.executeQuery();
   rs.next();

	
	 String memName =  rs.getString("memName");
	 String memEmail = rs.getString("memEmail");
 	 String memPhone = rs.getString("memPhone");
	
%>  
  <div id="wrap">

    <section id="mypage-bg">
        <article id="mypage-hd">
            <hr>
            <div id="mypage-hd2">
              <h2>MY PAGE</h2>
              <h1>프로필 수정</h1>
              <hr>
            </div>
      <div id="mypage-box">
        <div id="mypage-menu">
            <div id="mp-menu">
              <ul>
                 <li><a href="./mypage.jsp">내 프로필</a></li>
                <li><font color="#FF9E00">프로필 수정</font></li>
                <li><a href="./viewMypage2.jsp">비밀번호 변경</a></li>
                <li><a href="./viewMypage3.jsp">내가 쓴 글</a></li>
              </ul>
            </div>
            <img src="img/hr.png">
        </div>
        <div id="mp-profile">
          <div id="mp-profile-img">
            <div class="flex-container">
                <div class="wrapper">
               
                    
                  </label>
                </div>
              </div>
              </div>
          <div id="mp-profile-content">
		  <form method="post" action="updateMemResult.jsp"  onsubmit="return checkValue2()">
            <table>              
              <tr><td class="mp-pf1">이름</td><td class="mp-pf2"><input type="text" name="memName"  value="<%=memName%>"></td></tr>
              <tr><td class="mp-pf1">이메일</td><td class="mp-pf2"><input type="text" name="memEmail"  value="<%=memEmail%>"></td></tr>
              <tr><td class="mp-pf1">전화번호</td><td class="mp-pf2"><input type="text" name="memPhone"  value="<%=memPhone%>"></td></tr>
            </table>
          </div>
        </div>
        <button type="submit">프로필 수정 완료</button>
      </div>

    </section>


</form>
  </div>
 <%
          } catch (Exception e) {
              out.println(e);
          }
 %>
<%
}
%>
</body>
</html>