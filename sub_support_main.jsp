<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>


<html>
<head>
  <title>입양하기</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="./img/favicon-32x32.png">
</head>
<style>
@font-face {
  font-family: 'NanumSquareRound';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
  font-weight: bolder;
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
  width: 100%; height: 1500px;
}
img{
  border: 0px;
}
#wrap {
	margin: 0 auto;
	width: 100%;
  margin-top: 10px;
}

/* -------With me-------- */

#wm-bg {
  width: 100%;
  margin-top: 40px;
}
#wm-bg > hr {
  margin-top: 40px;
  margin-left: auto;
  margin-right: auto;
  width: 1614px;
  height: 1.5px;
  background-color: rgba(212, 171, 141, 0.3);
  border: 0;
}
.wm-hd {
  width: 100%; height: 160px;
  margin-top: 30px;
  padding-top: 40px;
}
.hd {
  width: 200px;
  height: 100px;
  text-align: center;
}
.hd > h2 {
  font-weight:bolder;
  font-size: 20px;
  color: #B78B6C;
} 
.hd > h1 {
  font-weight:bolder;
  font-size: 40px;
  letter-spacing: -1.5px;
  color: #734D32;
}
.hd > hr {
  width: 140px;
  height: 6px;
  border: 0;
  border-radius: 10px;
  float: left;
  margin-left: 32px;
  margin-top: 3px;
  background-color: #FF9E00;
}
#category {
  width: 600px;
  height: 80px;
  margin-top: 5px;
  display: block;
  padding: 0px 10px 5px 10px;
}

/* with me 카드 */

#wm-card {
  width: 1600px; height: auto;
  margin-top: 15px;
  margin-left: 250px;
  margin-bottom: 2000px;
}

.card-list {
  width: 100%;
  padding: 0 auto;
  margin: 0 auto;
}
.card-item {
  list-style: none;
  width: 309px;height: 450px;
  margin: 5px 45px 20px 0px;
  float: left;
  border-radius: 20px;
  border: 3px solid #E6D7CB;
}
.card-item:hover{
  background-color: #FFF2DC;
  border: 3px solid #B78B6C;
}
.card-item > a {
  text-decoration: none;
}
.card-item > a > img {
  padding: 20px 0px 0px 0px;
  border-radius: 10px;
}
.card-namebox {
  width: 193px;
  height: 45px;
  background-color: #FF9E00;
  border-radius: 30px;
  padding-top: 15px;
  position: relative;
  bottom: 40px;
  box-shadow: #E6D7CB 0px 4px 4px 0px;
}
.card-namebox > p {
  color: white;
  text-align: center;
  font-size: 27px;
  font-family: 'NanumSquareRound';
}
.card-item > a > h1 {
  color: #734D32;
  text-align: center;
  font-size: 28px;
  font-family: 'NanumSquareRound';
  position: relative;
  margin-top: -5px;
  -webkit-text-stroke: #734D32 0.5px;
  bottom: 20px;
}
.card-item > a > h2 {
  color: #734D32;
  text-align: center;
  font-size: 21px;
  position: relative;
  bottom: 10px;
}
.cont-dropdown {
  width: 700px;
  display: inline-block;
  margin-top: 10px;
  margin-left: -80px;
}
.cont-dropdown > ul > li{
  width: 150px; height: 52px;
  list-style-type: none;
  float: left;
  margin-left: 15px;
}
.btn-dropdown {
  width: 100%;
  height: 52px;
  margin-bottom: 9px;
  padding: 12px 30px 12px 30px;
  border: 2px solid #B78B6C;
  border-radius: 30px;
  box-sizing: border-box;
  font-size: 20px;
  letter-spacing: -1px;
  font-family: 'NanumSquareRound';
  line-height: 26px;
  background-color: white;
  color: #734D32;
  -webkit-text-stroke: #734D32 0.5px;
  cursor: pointer;
}

.btn-dropdown:focus {
  border: 2px solid #B78B6C;
}

.btn-dropdown.on + .ul-language {
  display: block;
}

ul.ul-language {
  display: none;
  width: 100%;
  background: #ffffff;
  border: 2px solid #B78B6C;
  box-sizing: border-box;
  box-shadow: 2px 2px 10px #B78B6C(218, 218, 218, 0.3);
  border-radius: 30px;
  padding: 4px 0;
  position: relative;
}
.ul-language > li {
  list-style: none;
}

.ul-language.on {
  display: block;
}

.btn-language {
  width: 157px;
  height: 40px;
  font-weight: 600;
  font-size: 17px;
  padding: 7px 0px 7px 0px;
  margin: 5px 8px;
  border: 2px;
  background-color: white;
  color: #734D32;
  letter-spacing: -1px;
  font-family: 'NanumSquareRound';
}

.btn-language:hover {
  background-color: #B78B6C;
  color: white;
  outline: 1px solid #f8e4ff;
  border-radius: 30px;
}
#box{
	width: 1600px; height: auto;
	position: relative;
	top: -110px;
	margin-left: 150px;
	margin-top: -230px;
}
#card{
	width: 487px; height: 577px;
	border: 3px solid #E6D7CB;
	border-radius: 20px;
	margin-top: 50px;
	margin-left: 30px;
	float: left;
}
#card:hover{
	background-color: #FFF2DC;
	  border: 3px solid #B78B6C;
}
#card-img{
	width: 439px; height: 344px;
	margin-top: 20px;
}
#card-img a img{
	width: 439px; height: 344px;
	border-radius: 10px;
}
#card-title{
	width: 427px; height: 34px;
	text-align: left;
}
#card-title a{
	font-size: 25px;
	font-weight: 800;
	color: 734D32;
	text-decoration: none;
}
#card-center{
	width: 427px; height: 20px;
	text-align: left;
	margin-top: 10px;
}
#card-center a{
	text-decoration: none;
	color: B78B6C;
	font-size: 20px;
	font-weight: 800;
}
.progress-container {
      width: 427px;
      background-color: #e0e0e0;
      border-radius: 10px;
      overflow: hidden;
      height: 20px;
    }

    .progress-bar {
      width: 0%; /* 진행 바의 값 */
	  float: left;
      background-color: #734D32;
      height: 100%;
      border-radius: 10px;
      transition: width 0.25s;
    }
	#card-start{
		float: left;
		margin-top: 5px;
	}
	#card-start a{
		text-decoration: none;
		color: 734D32;
		font-size: 17px;
		font-weight: 800;
		margin: 0 0 0 30px;
	}
	#card-ing a{
		text-decoration: none;
		color: 734D32;
		font-size: 17px;
		font-weight: 800;
		margin: 0 30 0 0;
		padding-top: 5px;
	}
	#card-ing{
		float: right;
		margin-top: 8px;
	}
	.newbtn{
	  width: 150px;height: 30px;
	  position: relative;
	  top: -100px; left: 1550px;
	  margin: 10px 280px 0px 0px;
	}
	.newbtn > a{
	  text-decoration: none;
	  line-height: 1px;
	}
	.newbtn > a > p{
	  font-size: 20px;
	  margin-right: 25px;
	  color: #734D32;
	  -webkit-text-stroke: 0.5px #734D32;
	  text-decoration: none;
	  font-family: 'NanumSquareRound';
	}
	.newbtn > a > p:hover{
	  -webkit-text-stroke: 1px #734D32;
	}
	.newbtn > img{
	  float: right;
	  margin-top: -13px;
	}
</style>
<body>
  <div id="wrap">
    <article id="wm-bg">
      <hr>
      <div class="wm-hd">
        <div class="hd">
          <h2>SUPPORT</h2>
          <h1>후원하기</h1>
          <hr>
        </div>
	  </div>
    </article>
	<div class="newbtn">
		<a href="insert_support.jsp"><p>후원 등록하기</p></a><img src="./img/sub_withme/registration.png">
    </div>
<% 
  try {
    String DB_URL = "jdbc:mysql://localhost:3306/gamjatec"; 
    String DB_ID = "gamjatec"; 
    String DB_PASSWORD = "abcd"; 

    Class.forName("org.gjt.mm.mysql.Driver");
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
    String jsql = "SELECT * FROM support";   
    PreparedStatement pstmt = con.prepareStatement(jsql);
    ResultSet rs = pstmt.executeQuery();

    int counter = 1; 

    while(rs.next()) {
		String sptTitle = rs.getString("sptTitle");
      String sptPtname = rs.getString("sptPtname");
      String sptMoney = rs.getString("sptMoney");
	  String no = rs.getString("sptNo");
     
      
  %>
<div id="box">
	<div id="card">
		<div id="card-detail">
			<div id="card-img">
				<a href="sub_support_detail.jsp?no=<%=no%>"><img src="support\<%=no%>.jpg"></a>
			</div>
			<br>
			<div id="card-title">
				<a href="sub_support_detail.jsp?no=<%=no%>"><%=sptTitle%></a>
			</div>
			<br><br>
			<div id="card-center">
				<a href="sub_support_detail.jsp?no=<%=no%>"><%=sptPtname%></a>
			</div>
			<br><br>
			<div id="card-bar">
				<div class="progress-container">
					<div class="progress-bar"></div>
				</div>
			</div>
			<div id="card-start">
				<a>0원 | (0%)</a>
			</div>
			<div id="card-ing">
				<a href="sub_support_detail.jsp?no=<%=no%>"><%= sptMoney%>원</a>
			</div>
		</div>
	</div>
</div>
  <% 
      counter++; 
    }
    rs.close();
    pstmt.close();
    con.close();
  } catch (Exception e) {
    e.printStackTrace();
  }
  %>
</table>
    
    </body>
    </html>