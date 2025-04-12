<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
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
	/* 헤더 */
	header{
	  width: 100%;height: 120px;
	  background-color: rgba(255, 255, 255, 0.8);
	  position: relative;
	  padding-top: 30px;
	  position: fixed;
	  z-index: 9999;
	  top: 0;
	}
	header > #logo > a > img{
	  float: left;
	  margin: 0px 0 0 130px;
	}

	header > #nav{
	  width: 1045px; height: 85px;
	  margin-left: 430px;
	  background-color: #fff;
	  border-radius: 70px;
	  box-shadow: 0px 0px 3px 2px rgba(183, 139, 108, 0.2);
	  position: fixed;
	}
	header > #nav > ul{
	  width: 925px; height: 85px;
	  list-style-type: none;
	}
	header > #nav > ul > li{
	  float: left;
	  margin-left: 90px;
	  line-height: 90px;
	}
	header > #nav > ul > li:first-child{
	  margin: 0;
	}
	header > #nav > ul > li > a{
	  padding-bottom: 20px;
	  font-size: 25px;
	  letter-spacing: -1px;
	  display: block;
	  color: #734D32;
	  font-family: 'nanumEB';
	  transform : rotate(0.04deg); 
	  text-decoration: none;
	}
	header > #nav > ul > li > a:hover{
	  color: #FF9E00;
	  -webkit-text-stroke: #FF9E00 0.2px;
	}
	header > #nav > ul > li:hover > #mega-menu{
	  display: block;
	}
	#mega-menu{
	  width: 1045px; height: 200px;
	  background-color: white;
	  position: absolute;
	  top: 110px; left: 0px;
	  display: none;
	  background: rgba(255, 255, 255, 0.95);
	  box-shadow: 0px 0px 3px 2px rgba(183, 139, 108, 0.2);
	  border-radius: 30px;
	  z-index: 9999;
	}
	.list_lnb{
	  padding: 0;
	  margin: 25px 3px 0px 28px;
	  list-style: none;
	  float: left;
	  line-height: 50px;
	  width: 15%;height: inherit;
	}
	.list_lnb:first-child{
	  margin-left: 50px;
	}
	.list_lnb:nth-child(4){
	  margin-left: 55px;
	}
	.list_lnb:last-child{
	  margin-left: 45px;
	  text-align: center;
	}
	.list_lnb > li > a{
	  font-size: 18px;
	  font-family: 'nanumB';
	  letter-spacing: -1px;
	  transform : rotate(0.04deg); 
	  color: #734D32;
	  text-decoration: none;
	  text-align: center;
	  display: block;
	}
	.list_lnb > li > a:hover{
	  color: #FF9E00;
	}
	#icon > ul{
	  list-style-type: none;
	  float: right;
	  margin-top: 20px;
	  margin-right: 160px;
	  line-height: 70px;
	}
	#icon > ul > li{
	  float: left;
	  margin-left: 25px;
	}
	#search > .mn{
	  border: none;
	}
	h3{
		font-size: 50px;
		color: #734D32;
		margin-top: 50px;
	}
	#check{
		margin-top: 250px;
	}
	button{
		width:260px; height:80px;
		border-radius: 50px;
		border: none;
		background-color: #FCBF49;
		color: #fff;
		font-size: 35px;
		font-weight: 800;
		font-family: 'NanumSquareRound';
		margin-top: 80px;
	}
	button:hover{
		background-color: #B78B6C;
	}
	button:last-child{
		margin-left: 50px;
	}
</style>
</head>
<body>
<%

	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");   
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String Email = request.getParameter("Email");
	String Phone = request.getParameter("Phone");

try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  
     String DB_ID="gamjatec";
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("com.mysql.jdbc.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "INSERT INTO member (memId, memPw, memName, ";
	 jsql = jsql + "memEmail, memPhone) VALUES (?,?,?,?,?)";	
	

	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,id);
	 pstmt.setString(2,password);
	 pstmt.setString(3,name);
	 pstmt.setString(4,Email);
	 pstmt.setString(5,Phone);
	

	 pstmt.executeUpdate();
  } catch(Exception e) { 
		out.println(e);
}
%>
<div id="wrap">
    <header>
      <div id="logo">
        <a href="./main.html"><img src="./img/main_logo_r.png"></a>
      </div>
      <div id="nav">
        <ul>
            <li>
                <a href="#">WITH ME</a>
                <div id="mega-menu">
                    <ul class="list_lnb">
                        <li><a href="./sub_withme_main.html">입양하기</a></li>
                        <li><a href="./insert_withme.jsp">유기견 등록</a></li>
                        <li><a href="#" onclick="openPopup('sub_test.html')">성격유형테스트</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_findme_main.html">찾습니다</a></li>
                        <li><a href="./sub_findme_watch.html">봤습니다</a></li>
                        <li><a href="./findmemake.html">전단지 제작</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_support_main.html">후원하기</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_community_watchme.html">나를보개</a></li>
                        <li><a href="#">입양후기</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_helper_Procedure.html">입양 절차</a></li>
                        <li><a href="./sub_helper_dictionary.html">견종백과</a></li>
                        <li><a href="./sub_helper_guide.html">반려 가이드</a></li>
                    </ul>
                </div>
            </li>
            <li>
              <a href="#">FIND ME</a>
              <div id="mega-menu">
                    <ul class="list_lnb">
                        <li><a href="./sub_withme_main.html">입양하기</a></li>
                        <li><a href="./insert_withme.jsp">유기견 등록</a></li>
                        <li><a href="#" onclick="openPopup('sub_test.html')">성격유형테스트</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_findme_main.html">찾습니다</a></li>
                        <li><a href="./sub_findme_watch.html">봤습니다</a></li>
                        <li><a href="./findmemake.html">전단지 제작</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_support_main.html">후원하기</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_community_watchme.html">나를보개</a></li>
                        <li><a href="#">입양후기</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_helper_Procedure.html">입양 절차</a></li>
                        <li><a href="./sub_helper_dictionary.html">견종백과</a></li>
                        <li><a href="./sub_helper_guide.html">반려 가이드</a></li>
                    </ul>
                </div>
            </li>
            <li>
              <a href="#">SUPPORT</a>
              <div id="mega-menu">
                    <ul class="list_lnb">
                        <li><a href="./sub_withme_main.html">입양하기</a></li>
                        <li><a href="./insert_withme.jsp">유기견 등록</a></li>
                        <li><a href="#" onclick="openPopup('sub_test.html')">성격유형테스트</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_findme_main.html">찾습니다</a></li>
                        <li><a href="./sub_findme_watch.html">봤습니다</a></li>
                        <li><a href="./findmemake.html">전단지 제작</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_support_main.html">후원하기</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_community_watchme.html">나를보개</a></li>
                        <li><a href="#">입양후기</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_helper_Procedure.html">입양 절차</a></li>
                        <li><a href="./sub_helper_dictionary.html">견종백과</a></li>
                        <li><a href="./sub_helper_guide.html">반려 가이드</a></li>
                    </ul>
                </div>
            </li>
            <li>
              <a href="./sub_community_main.html">COMMUNITY</a>
              <div id="mega-menu">
                    <ul class="list_lnb">
                        <li><a href="./sub_withme_main.html">입양하기</a></li>
                        <li><a href="./insert_withme.jsp">유기견 등록</a></li>
                        <li><a href="#" onclick="openPopup('sub_test.html')">성격유형테스트</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_findme_main.html">찾습니다</a></li>
                        <li><a href="./sub_findme_watch.html">봤습니다</a></li>
                        <li><a href="./findmemake.html">전단지 제작</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_support_main.html">후원하기</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_community_watchme.html">나를보개</a></li>
                        <li><a href="#">입양후기</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_helper_Procedure.html">입양 절차</a></li>
                        <li><a href="./sub_helper_dictionary.html">견종백과</a></li>
                        <li><a href="./sub_helper_guide.html">반려 가이드</a></li>
                    </ul>
                </div>
            </li>
            <li>
              <a href="#">HELPER</a>
              <div id="mega-menu">
                    <ul class="list_lnb">
                        <li><a href="./sub_withme_main.html">입양하기</a></li>
                        <li><a href="./insert_withme.jsp">유기견 등록</a></li>
                        <li><a href="#" onclick="openPopup('sub_test.html')">성격유형테스트</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_findme_main.html">찾습니다</a></li>
                        <li><a href="./sub_findme_watch.html">봤습니다</a></li>
                        <li><a href="./findmemake.html">전단지 제작</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_support_main.html">후원하기</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_community_watchme.html">나를보개</a></li>
                        <li><a href="#">입양후기</a></li>
                    </ul>
                    <ul class="list_lnb">
                        <li><a href="./sub_helper_Procedure.html">입양 절차</a></li>
                        <li><a href="./sub_helper_dictionary.html">견종백과</a></li>
                        <li><a href="./sub_helper_guide.html">반려 가이드</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
    <div id="icon">
      <ul>
		  <li>
		  	<img src="./img/main_user_r.png" width="33px" height="33px">
		  </li>	
        <li>
          <a href="./login.jsp"><p>LOGIN</p></a>
        </li>
		<li>
          <p>|</p>
        </li>
        <li>
          <a href="./member.jsp"><p>SIGN UP</P></a>
        </li>
      </ul>
    </div>
    </header>
 <div id="check">
	<img src="./img/lg-ok/check.png">
 </div>
 <h3> 축하합니다. <br>회원 가입되었습니다! </h3>
 <a href="./main.html"><button>메인으로</button></a>
 <a href="./login.jsp"><button>로그인하기</button></a>
</body>
</html>