<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html>
<head>
	<title>로그인</title>
	<style>
		@font-face {
			font-family: 'NanumSquareRound';
			src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
			font-weight: bolder;
			font-style: normal;
		}
		*{
		  margin: 0 auto;
		  padding: 0 auto;
		}
		body{
			margin:0px;
			padding:0px;
			font-size: 14px;
			color:black;
			font-family: 'NanumSquareRound';
			letter-spacing: -1px;
			text-align:center;
		}
		p{
			font-size: 35px;
			font-weight: 800;
			color: #734D32;
			letter-spacing: -1px;
		}
		p > b{
			-webkit-text-stroke: #734D32 0.5px;
		}
		#table-bg{
			width: 610px; height: 580px;
			border-radius: 30px;
			border: #B78B6C 3px solid;
			background-color: #FFF2DC;
		}
		h1{
			font-size: 55px;
			font-weight: 800;
			color: #734D32;
			letter-spacing: -1px;
		}
		.id, .pw, .\id, .\pw{
			width: 470px; height: 80px;
			border-radius: 50px;
			border: 2px solid #B78B6C;
			padding: 5px 30px 0 110px;
			font-size: 23px;
			color: #734D32;
			font-family: 'NanumSquareRound';
		}
		#icon img{
			position: absolute;
			margin: -18px 0 0 45px;
		}
		#find a{
			text-decoration: none;
			color: #734D32;
			font-size: 23px;
			font-family: 'NanumSquareRound';
		}
		#find a:hover{
			font-weight: 800;
		}
		button{
			width: 190px; height:65px;
			background-color: #FF9E00;
			color: #fff;
			font-size: 30px;
			font-weight: 800;
			font-family: 'NanumSquareRound';
			border: none;
			border-radius: 50px;
			margin-top: 30px;
			box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
		}
		button:hover{
			background-color: #B78B6C;
		}
		#hp{
			margin-top:120px;
		}
	</style>
</head>

<!-- js_package.js에 정의된 자바스크립트함수 호출 -->
<script language="javascript" src="js.package3.js"> 
</script>



<body onLoad="login_focus()">  <!-- 로그인 페이지가 로딩되면 ID 입력부분에 커서 활성화시킴 -->
<center>
<br><br>
	<div id="header">
		<a href="./main.html"><img src="./img/login/login-logo.png" border=0></a>
	</div>
	<br>
	<p>세상의 모든 강아지들이<br><b>따뜻한 품에서 행복하길 소망합니다</b></p>
	<br>
<form name="login" method="post" action="loginOK.jsp" target=_parent onsubmit="login_check()"> 
	<div id="table-bg">
     <table border=0 cellpadding=5>
		 <tr>
		 	<br><br><br>
			<h1>LOGIN</h1>
			<br>
		 </tr>
         <tr colspan=3 align=center>
            <td id="icon"><img src="./img/login/lg-id.png"></td>
			<td><input type="text" name="id" class="id" placeholder="아이디를 입력해주세요"></td>
			<td rowspan=2><a href="javascript:login_check()"></td>
         </tr>
         <tr>
            <td id="icon"><br><img src="./img/login/lg-pw.png"></td>
            <td><br><input type="password" name="pass" class="pw" placeholder="비밀번호를 입력해주세요" onkeydown="onEnterSubmit()"></td>  <!-- js_package.js의 onEnterSubmit()함수부분 참조요망 -->
	     </tr>
		 <tr id="find">
            <td colspan=3 align=center><br>
			<a href="searchid.jsp">
				아이디 찾기&nbsp;&nbsp|&nbsp;&nbsp
			</a>
			<a href="searchpw.jsp">
				비밀번호 찾기&nbsp;&nbsp|&nbsp;&nbsp
			</a>
			<a href="member.jsp">
				회원가입
			</a>
			 </td>
         </tr>
      </table>
	  <button onClick="login_check()" >LOGIN</button>

	  <div id="hp">
		<img src="./img/login/help.png">
	  </div>
	</div>
  </form>

 </center>                
</body>  
</html> 