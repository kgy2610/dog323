<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
	<title>관리자 로그인 결과 </title>
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
			overflow: hidden;
		}
		#con-box{
			float: left;
		}
		#con-box #manager{
			width: 465px; height: 360px;
			position: relative;
			top: 335px;
			left: 260px;
		}
		#con-box #manager #mg-id{
			width: 460px; height: 65px;
			background-color: #FFF2DC;
			color: #734D32;
			border: 2px solid #734D32;
			border-radius: 50px;
			font-size: 30px;
			font-weight: 800;
			line-height: 65px;
		}
		#con-box #manager #time{
			width: 460px; height: 100px;
			background-color: #FFF2DC;
			color: #734D32;
			border: 2px solid #734D32;
			border-radius: 50px;
			font-size: 30px;
			font-weight: 800;
			line-height: 50px;
		}
		#con-box #line{
			width: 20px; height: 830px; 
			position: relative;
			left: 750px;
			top: -260px;
		}
		#con-box #care{
			/* width:465px; height: 466px; */
		}
	</style>
</head>
<body>
<center>
	<%

	String id = (String)session.getAttribute("sid"); 
	java.util.Date date = new java.util.Date(); // Date date 타입의 객체 생성
	 String curDate = date.toLocaleString(); // curDate ( . . : : ) 변수 에 현재시각 년월일시분초을

	%>
	<div id="con-box">
		<div id="manager">
			<div id="logo">
				<img src="./img/main_logo.png">
			</div>
			<br><br><br>
			<div id="mg-id">
				<p>접속 관리자 ID : <%=id%></p>
			</div>
			<br>
			<div id="time">
				<p>접속 시각<br><%=curDate %></p>
			</div>
		</div>
		<div id="line">
			<img src="./img/mg-line.png">
		</div>
		<div id="care">
			<div id="member">
				<img src="./img/mg-member.png">
			</div>
			<div id="support">
				<img src="./img/mg-support.png">
			</div>
		</div>
	</div>
</center>
</body>
</html>