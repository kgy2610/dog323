<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title>find me 상세페이지</title>
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
#fm_look {
    width: 1380px; height: 660px;
    margin-top: 80px;
    margin-bottom: 100px;
    border-radius: 40px;
    border: 3px solid #E6D7CB;
}
#fm_look_hd {
    width: 1230px; height: 120px;
    margin: 60px 75px 35px 75px;
}
#look_hd_left {
    width: auto; height: 120px;
    float: left;
}
#fm_look_adress {
    width: auto; height: 55px;
    background-color: #FFF2DC;
    border: 3px solid #E6D7CB;
    border-radius: 20px;
    float: left;
}
#fm_look_adress > h1 {
    color: #734D32;
    font-size: 20px;
    font-family: 'nanumB';
    margin: 17px 37px 0 37px;
}
#fm_look_title {
    width: auto; height: 35px;
    margin-top: 80px;
    float: none;
}
#fm_look_title > h1 {
    color: #734D32;
    font-size: 31px;
    font-family: 'nanumEB';
    text-align: left;
}
#fm_look_date {
    width: auto; height: 25px;
    float: right;
    margin-top: 90px;
}
#fm_look_date > h2 {
    color: #734D32;
    font-size: 20px;
    font-family: 'nanumR';
}
#fm_look_memo {
    width: 1220px; height: 350px;
    margin-top: 45px;
}
#fm_look_memo > h1 {
    color: #734D32;
    font-size: 25px;
    font-family: 'nanumB';
    line-height: 50px;
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
	margin-top: 80px;
}
</style>
</head>
<body><center>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  //  접속할 DB명
     String DB_ID="gamjatec";  //  접속할 아이디
     String DB_PASSWORD="abcd"; // 접속할 패스워드
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

  	 String key = request.getParameter("lookno");

	 String jsql = "SELECT * FROM findmelook WHERE lookno = ?";   
     PreparedStatement  pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1, key);
	 
	 ResultSet rs = pstmt.executeQuery();//SQL문 실행	
	 rs.next();

	 String title = rs.getString("looktitle");
	 String lookadress =  rs.getString("lookadress");	
	 String lookmemo =  rs.getString("lookmemo");
	 String lookno =  rs.getString("lookno");
	 
%>
<%

String id = (String)session.getAttribute("sid"); 
java.util.Date date = new java.util.Date(); // Date date 타입의 객체 생성
 String curDate = date.toLocaleString(); // curDate ( . . : : ) 변수 에 현재시각 년월일시분초을

%>

<div id="fm_look">
        <div id="fm_look_hd">
            <div id="look_hd_left">
            <div id="fm_look_adress">
                <h1><%=lookadress%></h1>
            </div>
            <div id="fm_look_title">
                <h1><%=title%></h1>
            </div>
            </div>
            <div id="fm_look_date">
                <h2><%=curDate%></h2>
            </div>
        </div>
        <img src="img/look_hr.png">
        <div id="fm_look_memo">
            <h1><%=lookmemo%></h1>
        </div>
<%
    } catch (Exception e) {
    	out.println(e);
}
%>
<button onclick="location.href='sub_findme_watch2.jsp'"> 봤습니다 전체보기 </button>
</body>
</html>

