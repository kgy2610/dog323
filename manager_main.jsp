<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
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
		#con-box #manager a{
			text-decoration: none;
			font-size: 20px;
			color: #734D32;
		}
		#con-box #manager a:hover{
			color: #FF9E00;
		}
		#con-box #line{
			width: 20px; height: 830px; 
			position: absolute;
			left: 950px;
			top: 60px;
		}
		#con-box #care{
			clear: both;
			width:465px; height: 466px;
			position: relative;
			top: -50px;
			left: 1200px;
		}
		#member button{
			width: 465px; height: 165px;
			border: 3px solid #B78B6C;
			border-radius: 30px;
			font-family: 'NanumSquareRound';
			font-size: 35px;
			font-weight: 800;
			letter-spacing: -1px;
			color: #734D32;
			background-color: #FFF2DC;
		}
		#support button{
			width: 465px; height: 165px;
			border: 3px solid #B78B6C;
			border-radius: 30px;
			font-family: 'NanumSquareRound';
			font-size: 35px;
			font-weight: 800;
			letter-spacing: -1px;
			color: #734D32;
			background-color: #FFF2DC;
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
		<br>
		<p><a href="logout.jsp" target=_parent>로그아웃</p>
	</div>
	
	<div id="line">
		<img src="./img/mg-line.png">
	</div>
	<div id="care">
		 <div id="member">
        <button id="memberButton" onClick="mgMember(event)">회원 정보 조회</button>
		</div>
		<br><br>
		<div id="support">
			<button id="supportButton" onClick ="mgMain(event)">후원페이지 관리</button>
		</div>
	</div>
</div>

</center>
<script type="text/javascript">
        // 후원페이지 관리 함수
        function mgMain(event) {
            if (event) {
                event.preventDefault();
            }
            console.log("mgMain function called");
            window.location.href = 'selectallSupport.jsp';
        }

        // 회원 정보 조회 함수
        function mgMember(event) {
            if (event) {
                event.preventDefault();
            }
            console.log("mgMember function called");
            window.location.href = 'selectallMember.jsp';
        }

        document.addEventListener('DOMContentLoaded', function() {
            // 후원페이지 관리 버튼 요소를 가져옴
            var supportButton = document.getElementById('supportButton');
            if (supportButton) {
                supportButton.addEventListener('click', function(event) {
                    event.preventDefault();
                    mgMain(event);
                });
            } else {
                console.error('Element with id "supportButton" not found.');
            }

            // 회원 정보 조회 버튼 요소를 가져옴
            var memberButton = document.getElementById('memberButton');
            if (memberButton) {
                memberButton.addEventListener('click', function(event) {
                    event.preventDefault();
                    mgMember(event);
                });
            } else {
                console.error('Element with id "memberButton" not found.');
            }
        });
    </script>
</body>
</html>