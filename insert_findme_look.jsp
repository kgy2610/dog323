<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>봤습니다 등록</title>

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

	center{
		margin-top: 40px;
	}
	.hd {
	  width: 200px;
	  height: 100px;
	  text-align: center;
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
	  width: 140px;
	  height: 6px;
	  border: 0;
	  border-radius: 10px;
	  float: left;
	  margin-left: 32px;
	  margin-top: 3px;
	  background-color: #FF9E00;
	}
	button{
		width: 240px; height:65px;
		margin: 640px 0 0 1000px;
		font-size: 30px;
		font-weight: 800;
		font-family: 'NanumSquareRound';
		color:#fff;
		background-color: #B78B6C;
		box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
		border:none;
		border-radius: 50px;
	}
	form{
		margin-top: 30px;
	}
	label{
		position: relative;
		left: -20px;
		font-size: 30px;
		font-weight: 800;
		color: #734D32;
		text-align: right;
	}
	#re{
		position: absolute;
		top: 360px;
		left: 320px;
	}
	#lookadress{
		position: absolute;
		top: 345px;
		left: 400px;
		width: 395px; height: 67px;
		border: 3px solid #E6D7CB;
		border-radius: 40px;
		padding: 0 20px 0 20px;
		color: #D4AB8D;
		font-size: 20px;
		font-weight: 800;
		font-family: 'NanumSquareRound';
	}
	#line{
		position: absolute;
		top: 440px;
		left: 270px;
	}
	#line2{
		position: absolute;
		top: 1080px;
		left: 270px;
	}
	#ti{
		position: absolute;
		top: 490px;
		left: 320px;
	}
	#looktitle{
		position: absolute;
		top: 475px;
		left: 400px;
		width: 560px; height: 67px;
		border: 3px solid #E6D7CB;
		border-radius: 40px;
		padding: 0 20px 0 20px;
		color: #D4AB8D;
		font-size: 20px;
		font-weight: 800;
		font-family: 'NanumSquareRound';
	}
	#co{
		position: absolute;
		top: 590px;
		left: 320px;
	}
	#lookmemo{
		position: absolute;
		top: 580px;
		left: 400px;
		width: 1165px; height: 423px;
		border: 3px solid #E6D7CB;
		border-radius: 40px;
		padding: 20px;
		color: #D4AB8D;
		font-size: 20px;
		font-weight: 800;
		font-family: 'NanumSquareRound';
	}
</style>
</head>

<script language="javascript" src="js.package3.js">
</script>


<body onLoad="idFocus()">
	<center>
		<br><br>
		<div class="hd">
          <h2>Find me</h2>
          <h1>제보하기</h1>
          <hr>
        </div>
																				 
	<form name="withme" method=post action=insert_findme_lookOK.jsp>
   
		<label for="dog_name" id="re">지역</label>
		<input type="text" id="lookadress" name="lookadress" required placeholder="지역을 입력해주세요">
		<br><br><br>
		<div id="line">
			<img src="./img/sub_findme/findme-line.png">
		</div>

		<label for="breed" id="ti">제목</label>
		<input type="text" id="looktitle" name="looktitle" required placeholder="제목을 입력해주세요 (20자 이내)">
		<br><br><br>

	   
		<label for="special_notes" id="co">내용</label>
		<textarea id="lookmemo" name="lookmemo" placeholder="내용을 입력해주세요 (100자 이내)"></textarea>
		<br><br><br>
		<div id="line2">
			<img src="./img/sub_findme/findme-line.png">
		</div>

    <!-- 제출 버튼 -->
   	<button onClick="checkValue()">등록하기</button>
	</form>
</center>

</body>
</html>