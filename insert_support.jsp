<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>후원 등록하기</title>

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
	#table-bg{
		width:695px; height:780px;
		/* margin-top: 20px; */
		background-color:#FFF2DC;
		border:3px solid #B78B6C;
		border-radius:30px;
	}
	center > img{
		margin-top:10px;
	}
	center > #log-title{
		margin-top:30px;
	}
	table{
		margin-top:40px;
	}
	.id, .\id, .pw, .\pw, .name, .\name, .email, .\email, .phone, .\phone{
		width: 450px; height:60px;
		border-radius: 50px;
		border:2px solid #B78B6C;
		font-size:20px;
		padding-top: 5px;
		padding-left: 30px; 
	}
	a > img{
		position: absolute;
		top:267px;
		right:710px;
	}
	button{
		width: 460px; height:65px;
		margin-top:700px;
		font-family: 'NanumSquareRound';
		font-weight: 800;
		font-size: 30px;
		color: 734D32;
		background-color: FFF2DC;
		box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
		border: 2px solid 734D32;
		border-radius: 50px;
	}
	.hd {
	  width: 400px; height: 100px;
	  text-align: center;
	  margin-top: 50px;
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
	  width: 150px;
	  height: 6px;
	  border: 0;
	  border-radius: 10px;
	  float: left;
	  margin-left: 125px;
	  margin-top: 3px;
	  background-color: #FF9E00;
	}
	label{
		position: absolute;
		right: 1070;
		font-size: 25px;
		font-weight: 800;
		color: 734D32;
	}
	input{
		position: absolute;
		right: 670;
		width: 385px;
		height: 64px;
		border: 3px solid rgba(183, 139, 108, 0.5);
		border-radius: 40px;
		padding: 0 20 0 20;
		color: 734D32;
		font-size: 23px;
		font-family: 'NanumSquareRound';
	}
	#uName{
		top: 210px;
	}
	#sptName{
		top: 200;
	}
	#uPhone{
		top: 300px;
	}
	#sptPhone{
		top: 280;
	}
	#uPName{
		top: 375px;
	}
	#sptPtname{
		top: 360;
	}
	#uAddress{
		top: 460;
	}
	#sptAddress{
		top: 440;
	}
	#uMoney{
		top: 535;
	}
	#sptMoney{
		top: 520;
	}
	#uMoneyno{
		top: 620;
	}
	#sptMoneyno{
		top: 600;
	}
	#uTitle{
		top: 700px;
	}
	#sptTitle{
		top: 680;
	}
	#uMemo{
		top: 780;
	}
	#sptMemo{
		top: 760;
		position: absolute;
		right: 670;
		width: 385px;
		height: 90px;
		border: 3px solid rgba(183, 139, 108, 0.5);
		border-radius: 40px;
		padding: 10 20 0 20;
		color: 734D32;
		font-size: 23px;
		font-family: 'NanumSquareRound';
	}
	#uPhoto{
		top: 875;
	}
	#sptPhoto{
		top: 860;
		padding-top: 10px;
		border:none;
	}

</style>
</head>

<script language="javascript" src="js.package3.js">
</script>


<body onLoad="idFocus()">
	<div class="hd">
		<h2>SUPPORT</h2>
		<h1>모금신청</h1>
		<hr>
	</div>
<div id="table-bg">
	<center>
		
																				 
	<form name="support" method=post action=insert_support_OK.jsp>
		<div id="user">
			<label for="sptName" id="uName">신청자 이름</label>
			<input type="text" id="sptName" name="sptName" required><br>

			<label for="sptPhone" id="uPhone">연락처</label>
			<input type="tel" id="sptPhone" name="sptPhone" required><br>

			<label for="sptPtname" id="uPName">보호소 이름</label>
			<input type="text" id="sptPtname" name="sptPtname" required><br>

			<label for="sptAddress" id="uAddress">주소</label>
			<input type="text" id="sptAddress" name="sptAddress" required><br>

			<label for="sptMoney" id="uMoney">모금액</label>
			<input type="text" id="sptMoney" name="sptMoney" required><br>

			<label for="sptMoneyno" id="uMoneyno">모금계좌</label>
			<input type="text" id="sptMoneyno" name="sptMoneyno" required><br>

			<label for="sptTitle" id="uTitle">제목</label>
			<input type="text" id="sptTitle" name="sptTitle" required><br>

			<label for="breed" id="uMemo">내용</label>
			<textarea id="sptMemo" name="sptMemo" required></textarea>

			<!-- 사진 -->
			<label for="sptPhoto" id="uPhoto">사진업로드</label>
			<input type="file" id="sptPhoto" name="sptPhoto"><br>
		</div>

   
   	<button onClick="checkValue()">등록하기</button>
	</form>
	</center>
</div>
</body>
</html>