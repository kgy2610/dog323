<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title> 남서울 멀티쇼핑몰  </title>

 <style type="text/css">
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
	#icon{
		position: relative;
		right: 0px;
		top: -5px;
	}
  	#icon > ul{
		width: 260px; height: 65px;
		list-style-type: none;
		color: #734D32;
		line-height: 100px;
		position: relative;
		clear:both;
		top: -67px; right: 60px;
		box-shadow: 0px 0px 3px 2px rgba(183, 139, 108, 0.2);
		float: right;
		border-radius: 20px;
	}
	#icon > ul > li:first-child{
		padding-top: 9px;
		margin-left: -5px;
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

	 /* footer */
	#footer{
	  width: 100%; height: 280px;
	  background-color: #734D32;
	}
	#footer > ul{
	  list-style-type: none;
	}
	#footer > ul > #info{
	  float: left;
	  margin-left: 100px;
	  margin-top: 80px;
	}
	#footer > ul > #info > ul{
	  list-style-type: none;
	  text-align: left;
	}
	#footer > ul > #info > ul > li{
	  color: #fff;
	  font-size: 18px;
	}
	#footer > ul > #footer_logo{
	  float: right;
	  margin-right: 200px;
	  margin-top: 100px;
	}
	#footer > ul > #footer_logo > ul{
	  list-style-type: none;
	  text-align: right;
	}
	#footer > ul > #footer_logo > ul > li{
	  color: #fff;
	  font-size: 18px;
	}
	#footer > ul > #info > ul > li > a{
		color: #fff;
		text-decoration: none;
	}
 </style>
<script>
    function resizeIframe(iframe) {
      var doc = iframe.contentDocument || iframe.contentWindow.document;
      if (doc.body) {
        iframe.style.height = (doc.body.scrollHeight + 120) + 'px';
      }
    }

    function onIframeLoad() {
      var iframe = document.querySelector('iframe[name="main"]');
      resizeIframe(iframe);
      iframe.contentWindow.addEventListener('resize', function() {
        resizeIframe(iframe);
      });
    }

    window.addEventListener('message', function(event) {
      if (event.data && event.data.iframeHeight) {
        var iframe = document.querySelector('iframe[name="main"]');
        iframe.style.height = (event.data.iframeHeight + 120) + 'px';
      }
    });
  </script>
</head>


<body width="100%" height="auto">

<%
     //   로그인 상태를 유지하기 위하여, sid에 저장되었던 접속한 ID값을 
     //   session 객체로부터 가져와서 변수 id에 저장시킴 (loginOK.jsp의 43행부분 확인요망!)
   String id = (String)session.getAttribute("sid");  
   // String id = session.getAttribute("sid").toString(); 와  동일함
                                                                                         
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
							<li><a href="./sub_withme_main.jsp">입양하기</a></li>
							<li><a href="./insert_withme.jsp">유기견 등록</a></li>
							<li><a href="#" onclick="openPopup('sub_test.html')">성격유형테스트</a></li>
						</ul>
						<ul class="list_lnb">
							<li><a href="./sub_findme_main.jsp">찾습니다</a></li>
							<li><a href="./sub_findme_watch2.jsp">봤습니다</a></li>
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
							<li><a href="./sub_withme_main.jsp">입양하기</a></li>
							<li><a href="./insert_withme.jsp">유기견 등록</a></li>
							<li><a href="#" onclick="openPopup('sub_test.html')">성격유형테스트</a></li>
						</ul>
						<ul class="list_lnb">
							<li><a href="./sub_findme_main.jsp">찾습니다</a></li>
							<li><a href="./sub_findme_watch2.jsp">봤습니다</a></li>
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
							<li><a href="./sub_withme_main.jsp">입양하기</a></li>
							<li><a href="./insert_withme.jsp">유기견 등록</a></li>
							<li><a href="#" onclick="openPopup('sub_test.html')">성격유형테스트</a></li>
						</ul>
						<ul class="list_lnb">
							<li><a href="./sub_findme_main.jsp">찾습니다</a></li>
							<li><a href="./sub_findme_watch2.jsp">봤습니다</a></li>
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
							<li><a href="./sub_withme_main.jsp">입양하기</a></li>
							<li><a href="./insert_withme.jsp">유기견 등록</a></li>
							<li><a href="#" onclick="openPopup('sub_test.html')">성격유형테스트</a></li>
						</ul>
						<ul class="list_lnb">
							<li><a href="./sub_findme_main.jsp">찾습니다</a></li>
							<li><a href="./sub_findme_watch2.jsp">봤습니다</a></li>
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
							<li><a href="./sub_withme_main.jsp">입양하기</a></li>
							<li><a href="./insert_withme.jsp">유기견 등록</a></li>
							<li><a href="#" onclick="openPopup('sub_test.html')">성격유형테스트</a></li>
						</ul>
						<ul class="list_lnb">
							<li><a href="./sub_findme_main.jsp">찾습니다</a></li>
							<li><a href="./sub_findme_watch2.jsp">봤습니다</a></li>
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
				<img src="./img/main_user.png" width="33px" height="33px">
			  </li>	
			<li>
			  <a href="./logout.jsp"><p>LOGOUT</p></a>
			</li>
			<li>
			  <p>|</p>
			</li>
			<li>
			  <a href="#"><p>MYPAGE</P></a>
			</li>
		  </ul>
		</div>
		</header>

		<iframe src="main.html" width="100%" frameborder="0" scrolling="no" name=main onload="onIframeLoad()""></iframe> 
		<!-- iframe 사용,  iframe의 name속성값은 "main" 임에 유의할 것 -->

		<div id="footer">
			<ul>
				<li id="info">
					<ul>
						<li><a href="personalinformation.html">개인정보처리방침&nbsp;&nbsp;|&nbsp;&nbsp;<a href="conditions.html">이용약관&nbsp;&nbsp;|&nbsp;&nbsp;<a href="manager_login.jsp">관리자로그인</a></li>
						<li>&nbsp;</li>
						<li>상호명: (주)DOG323&nbsp;대표: 신서희</li>
						<li>충청남도 천안시 두정로 1708 2층&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;010-3831-5022</li>
						<li>rlagptmd1021@naver.com</li>
						<li>평일 09:00 - 18:00</li>
					</ul>
				</li>
				<li id="footer_logo">
					<ul>
						<li><img src="./img/footer_logo.png"></li>
						<li>ⓒCopyright 2024 DOG323 CO.LTD All Rights Reserved.</li>
					</ul>
				</li>
			</ul>
		</div>
    </div>

    

</body>
</html>