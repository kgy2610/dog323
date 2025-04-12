<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
	<head>
		<title>커뮤니티 상세페이지</title>
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

			  #com-details-box {
    width: 1500px; height: 1300px;
    padding-top: 110px;
}
#com-det-hd {
    width: 1322px; height: 134px;
}
#det-hd-left {
    text-align: left;
    float: left;
    width: 600px;
	margin-top: 20px;
}
#det-hd-left > h1 {
    font-size: 35px;
    font-family: 'nanumEB';
    color: #734D32;
    margin-top: 15px;
}
#det-hd-left > h2 {
    font-size: 20px;
    font-family: 'nanumR';
    color: #734D32;
    margin-top: 15px;
}
#det-hd-right {
    width: 300px; height: 100%;
    float: right;
}
#det-hd-right1 {
    float: right;
    width: 180px;
    text-align: right;
	margin-right: 10px;
}
#det-hd-right1 > h1 {
    font-size: 24px;
    font-family: 'nanumEB';
    color: #734D32;
    margin-top: 100px;
}
#det-hd-right1 > h2 {
    font-size: 18px;
    font-family: 'nanumR';
    color: #734D32;
    margin-top: 8px;
}
#det-hd-right > img {
    float: left;
    margin: 20px 0 0 20px;
}
#com-det {
    width: 1322px; height: 1000px;
    background-color: white;
    border-radius: 30px;
    border: 4px solid #E6D7CB;
}
#com-det > img {
    margin-top: 63px;
	width: 745px; height: 550px;
	border-radius: 40px;
}
#com-det-content {
    width: 1200px; height: 223px;
    margin-top: 60px;
}
#com-det-content > h1 {
    font-size: 27px;
    font-family: 'nanumB';
    line-height: 50px;
    color: #734D32;
    text-align: left;
}
button{
	width: 427px; height: 90px;
	border: none;
	border-radius: 50px;
	background-color: FF9E00;
	color: #fff;
	font-size: 30px;
	font-family: 'NanumSquareRound';
	font-weight: 800;
	margin-top: -80px;

}
		</style>
	</head>
<body>
	<% 
		  try {
			String DB_URL = "jdbc:mysql://localhost:3306/gamjatec"; 
			String DB_ID = "gamjatec"; 
			String DB_PASSWORD = "abcd"; 
		
			Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
			 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

			 String comNo = request.getParameter("comNo");

			String jsql = "SELECT * FROM community WHERE comNo = ?";   
			 PreparedStatement  pstmt  = con.prepareStatement(jsql);
			pstmt.setString(1, comNo);
			
			ResultSet rs = pstmt.executeQuery();//SQL문 실행   
			rs.next();

			String comTitle = rs.getString("comTitle");
			 String comMemo =  rs.getString("comMemo");
			String ctgcomNo=  rs.getString("comNo");
		%>
	<section id="commu-bg">
		<div id="com-details-box">
            <div id="com-det-hd">
                <div id="det-hd-left">
                <img src="img/com-details-hd.png">
                <h1><%=comTitle%></h1>
                </div>
                <div id="det-hd-right">
                    <div id="det-hd-right1">
                    </div>
                </div>
            </div>
            <div id="com-det">
                <img src="community/<%=comNo%>.jpg">
                <div id="com-det-content">
                <h1><%=comMemo%></h1>
                </div>
            </div>
        </div>
    </section>
	<%
    } catch (Exception e) {
       out.println(e);
}
%>
<button onclick="location.href='sub_community_watchme.jsp'"> 나를보개 전체보기 </button>
</html>