<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
	<title>로그인 결과</title>
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
				#logo img{
					margin: 100px 0 0 0;
				}
				#error{
					font-size: 35px;
					font-weight: 800;
					color: #734D32;
				}
				#error-r{
					font-size: 30px;
					color: #734D32;
				}
				#back{
					width: 465px; height: 310px;
					background-color: #FFF2DC;
					border: 3px #B78B6C solid;
					border-radius: 30px;
					float: left;
					margin: 50px 0 0 70px;
				}
				#back:first-child{
					margin-left: 440px;
				}
				#back p{
					font-size: 35px;
					color: #734D32;
					font-weight: 800;
					margin-top: 60px;
					line-height: 50px;
				}
				#back button{
					width: 190px; height: 65px;
					margin-top: 40px;
					background-color: #FF9E00;
					border: none;
					border-radius: 50px;
					box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
				}
				#back button:hover{
					background-color: #B78B6C;
				}
				#back button a{
					text-decoration: none;
					color: #fff;
					font-size: 30px;
					font-family: 'NanumSquareRound';
					font-weight: 800;
				}
	</style>
</head>
<body>
	<div id="logo">
		<img src="./img/main_logo.png">
	</div>
<center>
	<%
	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";
	 String DB_ID="gamjatec"; 
	 String DB_PASSWORD="abcd";
	 
	Class.forName("org.gjt.mm.mysql.Driver"); 
	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	 String id = request.getParameter("id");
	 String pass = request.getParameter("pass"); 

	 String jsql = "select * from manager where managerId = ? ";
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1, id);
	 ResultSet rs = pstmt.executeQuery(); 

	 if( rs.next() ) 

	 if (pass.equals(rs.getString("managerPasswd")))

	 {
	 session.setAttribute("sid", id);
	 
	 response.sendRedirect("manager_main.jsp");
	 } else { 

	%>
 <br><br><br>
	
 <font id="error">!! 관리자용 로그인 오류 !!</font><br><br>
 <font id="error-r"> 입력하신 비밀번호가 일치하지 않습니다<br>다시 확인해주세요</font>
 <div id="box">
 	<div id="back">
 		<p>로그인 페이지로<br>돌아가기</p>
 		<button><a href="manager_login.jsp">LOGIN</a></button>
 	</div>
 	<div id="back">
 		<p>메인페이지로<br>돌아가기</p>
		<button><a href="main.html">HOME</a></button>
	</div>
 </div>
<% 
 } else { 
%>
 <br><br><br>
 <font id="error">!! 관리자용 로그인 오류 !!</font><br><br><br>
 <font id="error-r"> 입력하신 아이디가 존재하지 않습니다<br>다시 확인해주세요</font>
 <div id="box">
	<div id="back">
		<p>로그인 페이지로<br>돌아가기</p>
		<button><a href="manager_login.jsp">LOGIN</a></button>
	</div>
	<div id="back">
		<p>메인페이지로<br>돌아가기</p>
		<button><a href="main.html">HOME</a></button>
	</div>
 </div>
<%
 } 
%>
</center>
</body>
</html>