<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>유기견 등록</title>

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
	*{
	  margin: 0 auto;
	  padding: 0 auto;
	}
	body{
		height: 1730px;
		margin:0px;
		padding:0px;
		font-size: 14px;
		color:black;
		font-family: 'NanumSquareRound';
		letter-spacing: -1px;
		text-align:center;
	}
	
	#table-bg > hr {
	  margin-top: 40px;
	  margin-left: auto;
	  margin-right: auto;
	  width: 1614px;
	  height: 1.5px;
	  background-color: rgba(212, 171, 141, 0.3);
	  border: 0;
}
	.hd {
	  width: 200px;
	  height: 100px;
	  margin-top: 40px;
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
	#title p{
		font-size: 30px;
		font-weight: 800;
		color: 734D32;
	}
	#user{
		width: 650px; height: 460px;
		position: absolute;
		top: 320px; left: 225px;
	}
	label{
		font-size: 25px;
		font-weight: 800;
		color: 734D32;
		text-align: right;
	}
	input{
		width: 385px; height: 65px;
		border: 3px solid rgba(183, 139, 108, 0.5);
		border-radius: 40px;
		padding: 0 20px 0 20px;
		font-size: 23px;
		font-weight: 800;
		font-family: 'NanumSquareRound';
		color: 734D32;
	}
	{
		width:20px; height: 20px;
	}
	#user #wmProtec{
		width: 385px; height: 65px;
		border: 3px solid rgba(183, 139, 108, 0.5);
		border-radius: 40px;
		padding: 0 20px 0 20px;
		font-size: 23px;
		font-weight: 800;
		font-family: 'NanumSquareRound';
		color: 734D32;
		position: absolute;
		right: 35px;
	}
	#dog #wmDsize{
		width: 385px; height: 65px;
		border: 3px solid rgba(183, 139, 108, 0.5);
		border-radius: 40px;
		padding: 0 20px 0 20px;
		font-size: 23px;
		font-weight: 800;
		font-family: 'NanumSquareRound';
		color: 734D32;
		position: absolute;
		right: 35px;
	}
	#dog #dog-gender{
		position: absolute;
		right: 53;
	}
	#male, #female, #gender{
		width: 20px; height: 20px;
		margin: 0 5px 0 20px;
	}
	#line{
		position: absolute;
		top: 300px; left: 960px;
	}
	#dog{
		width: 585px; height: 690px;
		position: absolute;
		top: 300px; right: 253px;
	}
	#upload-img{
		width: 620px; height: 620px;
		position: absolute;
		top: 1100px; left: 659px;
	}

	#user-name{
		position: absolute;
		top: 157;right: 440;
	}
	#wmName{
		position: absolute;
		right: 35px;
	}
	#user-phone{
		position: absolute;
		top: 237; right: 440;
	}
	#wmPhone{
		position: absolute;
		right: 35px;
	}
	#user-email{
		position: absolute;
		top: 307px;right: 440;
	}
	#wmEmail{
		position: absolute;
		right: 35px;
	}
	#user-protect{
		position: absolute;
		top: 382px; right: 440;
	}
	#user-address{
		position: absolute;
		top: 450px;right: 440;
	}
	#wmAddress{
		position: absolute;
		right: 35px;
	}
	#user-address2{
		position: absolute;
		top: 522px;right: 440;
	}
	#dog #dname{
		position: absolute;
		top: 157; right: 410;
	}
	#dog #wmDname{
		position: absolute;
		right: 5;
	}
	#dog #dage{
		position: absolute;
		top: 237; right: 410;
	}
	#dog #wmDage{
		position: absolute;
		right: 5;
	}
	#dog #dbreed{
		position: absolute;
		top: 307; right: 410;
	}
	#dog #wmDkind{
		position: absolute;
		right: 5;
	}
	#dog #dsize{
		position: absolute;
		top: 378; right: 410;
	}
	#dog #wmDsize{
		position: absolute;
		right: 5;
	}
	#dog #dgender{
		position: absolute;
		top: 465; right: 410;
	}
	#dog #dmemo{
		position: absolute;
		top: 550; right: 410;
	}
	#dog #wmDmemo{
		position: absolute;
		right: 5;
		width: 385px; height: 115px;
		border: 3px solid rgba(183, 139, 108, 0.5);
		border-radius: 30px;
		padding: 20px;
		font-size: 23px;
		font-weight: 800;
		font-family: 'NanumSquareRound';
		color: 734D32;
	}
	#upload-img{
		width: 400; height: 500;
		border: 3px solid rgba(183, 139, 108, 0.5);
		border-radius: 40px;
		margin-left: 80px;
		padding: 0 20px 0 20px;
		font-size: 23px;
		font-weight: 800;
		font-family: 'NanumSquareRound';
		color: 734D32;
	}
	#uploadBtn {
		position: absolute;
        top: 387; left: 72;
		width: 295px; height: 73px;
        background-color: #FFF2DC;
        color: 734D32;
		font-weight: 800;
		font-family: 'NanumSquareRound';
        border: none;
        border-radius: 30px;
        cursor: pointer;
    }
	#imagePreview {
        max-width: 100%;
        margin-top: 40px;
        display: none;
    }
	#uploadMessage {
		margin-top: 185px;
        font-size: 30px;
		font-weight: 800;
		color: #734D32;
    }
	button{
		width: 240px; height:65px;
		position: absolute;
		top: 1650px; left: 840px;
		font-size: 30px;
		font-weight: 800;
		font-family: 'NanumSquareRound';
		color:#fff;
		background-color: #FF9E00;
		box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
		border:none;
		border-radius: 50px;
	}
</style>
</head>

<script language="javascript" src="js.package3.js">
</script>


<body onLoad="idFocus()">
<div id="table-bg">
	<hr>
	<center>
		<br><br>
		<div class="hd">
          <h2>With Me!</h2>
          <h1>유기견 등록</h1>
          <hr>
        </div>
		
																				 
	<form name="withme" method=post action=insert_withme_OK.jsp>
    <!-- 보호자 정보 -->
		<div id="user">
			<div id="title">
				<img src="./img/sub_withme/withme-user.png">
				<p>보호자 정보</p>
			</div>
			<br><br><br>
			<label for="guardian_name" id="user-name">보호자 이름</label>
			<input type="text" id="wmName" name="wmName" required>
			<br><br><br><br>

			<label for="contact_number" id="user-phone">연락처</label>
			<input type="tel" id="wmPhone" name="wmPhone" required>
			<br><br><br><br>

			<label for="email" id="user-email">이메일</label>
			<input type="email" id="wmEmail" name="wmEmail" required>
			<br><br><br><br>

			<label for="protec" id="user-protect">보호여부</label>
			<select id="wmProtec" name="wmProtec">
				<option value="보호소">보호소</option>
				<option value="임시보호">임시보호</option>
			</select>
			<br><br><br><br>

			<label for="address" id="user-address">보호 주소</label>
			<input type="text" id="wmAddress" name="wmAddress1" required>
			<br><br><br><br>

			<label for="detailed_address" id="user-address2">상세 주소</label>
			<input type="text" id="wmAddress" name="wmAddress2">
		</div>
		<div id="line">
			<img src="./img/sub_withme/withme-line.png">
		</div>

    <!-- 강아지 정보 -->
	<div id="dog">
		<div id="title">
				<img src="./img/sub_withme/withme-step.png">
				<p>강아지 정보</p>
			</div>
		<br><br><br>
		<label for="dog_name" id="dname">강아지 이름</label>
		<input type="text" id="wmDname" name="wmDname" required>
		<br><br><br><br>

		<label for="age" id="dage">나이</label>
		<input type="number" id="wmDage" name="wmDage" required>
		<br><br><br><br>

		<label for="breed" id="dbreed">견종</label>
		<input type="text" id="wmDkind" name="wmDkind" required>
		<br><br><br><br>

		<label for="size" id="dsize">크기</label>
		<select id="wmDsize" name="wmDsize">
			<option value="소형">소형</option>
			<option value="중형">중형</option>
			<option value="대형">대형</option>
		</select>
		<br><br><br><br><br><br>

		<label for="gender" id="dgender">성별</label>
		<div id="dog-gender">
			<input type="radio" id="male" name="wmDsex" value="수컷" checked>
			<label for="수컷">수컷</label>
			<input type="radio" id="female" name="wmDsex" value="암컷">
			<label for="암컷">암컷</label>
			<input type="radio" id="gender" name="wmDsex" value="중성화">
			<label for="중성화">중성화</label>
		</div>
		<br><br><br><br>

		<label for="special_notes" id="dmemo">특징</label>
		<textarea id="wmDmemo" name="wmDmemo"></textarea><br>
	</div>

    <!-- 사진 업로드 -->
	<div id="upload-img">
		<div id="uploadMessage">강아지 사진을 등록해주세요</div>
		<img id="imagePreview" src="#" alt="미리보기">
		<input type="file" style="display: none;" id="wmDphoto" name="wmDphoto" required>
		<button id="uploadBtn" onclick="chooseFile()">파일 선택</button>
	</div>
    <!-- 제출 버튼 -->
   	<button onClick="checkValue()">JOIN US</button>
	</form>
	</center>
	</div>
</div>
<script>
		function chooseFile() {
			document.getElementById('wmDphoto').click();
		}

		document.getElementById('wmDphoto').addEventListener('change', function(event) {
			var file = event.target.files[0]; // 선택된 파일 가져오기
			var reader = new FileReader();

			reader.onload = function(event) {
				var img = document.getElementById('imagePreview');
				img.src = event.target.result; // 미리보기 이미지 업데이트
				img.style.display = 'block'; // 이미지 미리보기 보이기

				// 업로드 안내 메시지 숨기기
				document.getElementById('uploadMessage').style.display = 'none';

				// 파일을 선택한 후에만 required 속성 추가
				document.getElementById('wmDphoto').setAttribute('required', true);
			};

			// 이미지 파일을 data URL로 변환하여 미리보기에 표시
			reader.readAsDataURL(file);
		});

		function findmecheckValue() {
			// 폼 유효성 검사 로직
		}
</script>
</body>
</html>