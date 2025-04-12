<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html>
<head>
	<meta charset="euc-kr">
	<title>찾습니다</title>
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
	}
	img{
	  border: 0px;
	}
	#wrap {
		margin: 0 auto;
		width: 100%;
	}
	/* -------community-------- */

	#wm-bg {
	  width: 100%;
	  margin-top: 40px;
	}
	#wm-bg > hr {
	  width: 1614px;
	  height: 1.5px;
	  background-color: rgba(212, 171, 141, 0.3);
	  border: 0;
	}
	.wm-hd {
	  width: 100%;
	  height: 300px;
	  margin-top: 30px;
	  padding-top: 40px;
	}
	.hd {
	  width: 200px;
	  height: 100px;
	  text-align: center;
	  letter-spacing: -1px;
	}
	.hd > h2{
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
	  width: 158px;
	  height: 6px;
	  border: 0;
	  border-radius: 10px;
	  float: left;
	  margin-left: 20px;
	  margin-top: 3px;
	  background-color: #FF9E00;
	}


	/* community 카드 */
	#com-card {
	  width: 420px; height: 480px;
	  margin-top: -100px;
	  margin-left: 40px;
	  margin-bottom: 150px;
	  float: left;
	}

	.card-list {
	  width: 100%; height: 370px;
	  padding: 0 auto;
	  margin: 0 auto;
	  float: left;
	}
	.card-item {
	  list-style: none;
	  width: 370px;height: 430px;
	  margin: 5px 25px 20px 0px;
	  padding: 20px 0 0 25px;
	  float: left;
	  border-radius: 20px;
	  border: 3px solid #E6D7CB;
	  letter-spacing: -1px;
	  text-align: left;
	}
	.card-item:hover{
	  background-color: #FFF2DC;
	  border: 3px solid #B78B6C;
	}
	.card-item a {
	  text-decoration: none;
	  color: #734D32;
	}
	.card-item #Cimg img {
	  width: 343px; height: 257px;
	  padding: 10px 0px 0px 0;
	  border-radius: 20px;
	}
	.card-namebox {
	  border-radius: 30px;
	  padding-top: 30px;
	}
	.card-namebox #Ctitle a {
	  color: #734D32;
	  margin-left: 30px;
	  text-align: left;
	  font-size: 24px;
	  font-family: 'NanumSquareRound';
	  letter-spacing: -1px;
	  font-weight: 800;
	  -webkit-text-stroke: #734D32 0.1px;
	}
	.card-item > #Ctitle a{
	    margin-top: 20px;
	    font-size: 25px;
		text-decoration: none;
	    text-align: left;
	    color: #734D32;
	    font-weight: 800;
	    letter-spacing: -1px;
	    line-height: 25px;
	}
	.card-item #Cmemo{
		width: 330px; height: 100px;
		overflow: hidden;
		margin-left: 3px;
	}
	.card-item #Cmemo a{
	    margin-top: 20px;
	    font-size: 23px;
		text-decoration: none;
	    text-align: left;
	    color: #734D32;
	    font-weight: 800;
	    letter-spacing: -1px;
	    line-height: 25px;
	}

	#nametag{
	    width: 270px; height: 490px;
	    position: fixed;
	    right: 150px;
	    top: 300px;
	}
	button{
	    letter-spacing: -1px;
	    width: 265px; height: 67px;
	    font-family: 'NanumSquareRound';
	    font-size: 23px;
	    font-weight: 800;
	    color: #734D32;
	    border: #B78B6C 3px solid;
	    border-radius: 40px;
	    background-color: #FFF2DC;
		position: relative;
		top: -710px;
		left: -700px
	}
	#name-box{
	    width: 265px; height: 395px;
	    margin-top: 30px;
	    letter-spacing: 1px;
	    border: #B78B6C 3px solid;
	    border-radius: 30px;
	    background-color: #FFFAF0;
	}
	#name-box > #pro-img{
	    margin: 30px 0 15px 0;
	}
	#name-box > #nickname{
	    font-size: 30px;
	    font-weight: 800;
	    color: #734D32;
	    margin-bottom: 15px;
	}
	#name-box > hr{
	    width: 180px; height: 1px;
	    background-color: #B78B6C;
	    border: none;
	}
	#name-box > #pro-info{
	    letter-spacing: -1px;
	    font-size: 20px;
	    font-weight: 800;
	    color: #734D32;
	    margin: 15px 0 15px 0;
	}
	#name-box > #mywrite{
	    margin-top: 23px;
	}
	#name-box > #mywrite > a{
	    text-decoration: none;
	    font-size: 20px;
	    font-weight: 800;
	    color: #734D32;
	    letter-spacing: -1px;
	}
	#name-box > #mywrite > a:hover{
	    color: #FF9E00;
	}
	#name-box > #pro-rewrite > a{
	    text-decoration: none;
	    font-size: 20px;
	    font-weight: 800;
	    color: #734D32;
	    letter-spacing: -1px;
	}
	#name-box > #pro-rewrite > a:hover{
	    color: #FF9E00;
	}

	#name-box > #mywrite > a:hover{
	    color: #FF9E00;
	}
	#name-box > #pro-rewrite > a{
	    text-decoration: none;
	    font-size: 20px;
	    font-weight: 800;
	    color: #734D32;
	    letter-spacing: -1px;
	}
	#name-box > #pro-rewrite > a:hover{
	    color: #FF9E00;
	}
	#box{
		width: 1600px; height: auto;
		margin-left: 5px;
	}
	.newbtn{
  width: 130px;height: 30px;
  float: right;
  margin: -50px 280px 0px 0px;
}
.newbtn > a{
  text-decoration: none;
  line-height: 1px;
}
.newbtn > a > p{
  font-size: 20px;
  margin-right: 5px;
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
  margin-top: -10px;
}
#contain{
	margin-left: 20px;
}
</style>
<body>
	<div id="wrap">
		<article id="wm-bg">
		<hr>
		<div class="wm-hd">
			<div class="hd">
				<h2>COMMUNITY</h2>
				<h1>나를 보개</h1>
				<hr>
			</div>
			<div class="newbtn">
			  <a href="insert_community.jsp"><p>등록하기</p></a><img src="./img/sub_withme/registration.png">
			</div>
		</div>
		</article>
		<div id="box">
		<% 
		  try {
			String DB_URL = "jdbc:mysql://localhost:3306/gamjatec"; 
			String DB_ID = "gamjatec"; 
			String DB_PASSWORD = "abcd"; 
		
			Class.forName("org.gjt.mm.mysql.Driver");
			Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

			String jsql = "SELECT * FROM community";   
			PreparedStatement pstmt = con.prepareStatement(jsql);
			ResultSet rs = pstmt.executeQuery();
		
			int counter = 1; 
		
			while(rs.next()) {
			  String comTitle = rs.getString("comTitle");
			  String comMemo = rs.getString("comMemo");
			  String comNo = rs.getString("comNo");
		  %>
		<article id="com-card">
			<div class="card-list" id="card-list">
			
				<div class="card-item">
					  <div id="Ctitle">
						<a href="sub_community_detail.jsp?comNo=<%=comNo%>"><%=comTitle%></a>
					  </div>
					  <div id="Cimg">
						<a href="sub_community_detail.jsp?comNo=<%=comNo%>"><img src="community\<%=comNo%>.jpg">
					  </div>
					  <br>
					  <div id="Cmemo">
						<a href="sub_community_detail.jsp?comNo=<%=comNo%>"><%=comMemo%></a>
					  </div>
				</div>
			</div>
		</article>
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
		 
</body>
</html>