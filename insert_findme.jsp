<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>찾습니다</title>

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
	}
	img{
	  border: 0px;
	}
	#wrap {
		margin: 0 auto;
		width: 100%;
	}
	#hd-line hr{
		width: 1615px;
		position: relative;
		top: 40px;
		border: 1.5px solid rgba(212, 171, 141, 0.3);

	}
	.fm-hd {
	  width: 100%; height: 200px;
	  margin-top: 20px;
	  padding-top: 100px;
	}
	.hd {
	  width: 400px; height: 100px;
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
	  width: 270px;
	  height: 6px;
	  border: 0;
	  border-radius: 10px;
	  float: left;
	  margin-left: 65px;
	  margin-top: 3px;
	  background-color: #FF9E00;
	}
	#table-bg{
		width:695px; height:780px;
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
	button{
		width: 240px; height:65px;
		margin-top:30px;
		font-size: 30px;
		color:#fff;
		background-color: #FF9E00;
		box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
		border:none;
		border-radius: 50px;
	}
	form label{
		font-size: 25px;
		color: #734D32;
		position: absolute;
		left: 645px;
		padding-top: 20px;
		font-weight: 800;
	}
	form input{
		width: 515px; height: 65px;
		float: left;
		position: absolute;
		left: 750px;
		box-sizing: border-box;
		background: #FFFFFF;
		border: 3px solid rgba(183, 139, 108, 0.5);
		border-radius: 40px;
		padding: 0 30px 0 30px;
		font-size: 23px;
		color: #734D32;
	}
	#ul-box{
		width: 520px; height: 480px;
		border: 3px solid rgba(183, 139, 108, 0.7);
		border-radius: 25px;
		margin-top: 120px;
	}
	 #uploadBtn {
		position: absolute;
        top: 1500px;
		left: 850px;
        background-color: #b78b6c;
        color: white;
        border: none;
        border-radius: 30px;
        cursor: pointer;
    }
	#imagePreview {
        max-width: 70%;
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
		width: 200px; height: 65px;
		box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
	}

</style>
</head>
<script language="javascript" src="js.package3.js"></script>

<body onLoad="idFocus()">
	<div id="wrap">
	<div id="hd-line">
		<hr>
	</div>
	<div class="fm-hd">
		<div class="hd">
			<h2>Find me</h2>
			<h1>실종강아지 등록</h1>
			<hr>
		</div>
	</div>
	<div id="con-box">
		<form name="findme" method=post action=insert_findme_OK.jsp>
			<div>
				<img src="./img/sub_findme/findme-user.png">
			</div>
			<br><br>
			
			<label for="guardian_name" style="padding-left: 40px;">이름</label>
			<input type="text" id="fmName" name="fmName" required>
			<br><br><br><br><br>

			<label for="contact_number" style="padding-left: 20px;">연락처</label>
			<input type="tel" id="fmPhone" name="fmPhone" required><br>
			<br><br><br><br><br><br>

			<div>
				<img src="./img/sub_findme/findme-dog.png">
			</div>
			<br><br>
			<label for="dog_name" style="padding-left: 40px;">견종</label>
			<input type="text" id="fmDkind" name="fmDkind" required><br>
			<br><br><br><br><br>

			<label for="age">실종위치</label>
			<input type="text" id="fmDplace" name="fmDplace" required><br>
			<br><br><br><br><br>

			<label for="breed">특이사항</label>
			<input type="text" id="fmDmemo" name="fmDmemo" required><br>
			
			<div id="ul-box">
				<div id="uploadMessage">사진을 업로드해주세요</div>
				<img id="imagePreview" src="#" alt="미리보기">
				<input type="file" style="display: none;" id="fmDphoto" name="fmDphoto" required>
				<button id="uploadBtn" onclick="chooseFile()">파일 선택</button>
			</div>
			<br><br>

			<button onClick="findmecheckValue()">등록하기</button>
		</form>
	  </div>
	  <script>
		function openPopup(url) {
			var width = 1400;
			var height = 900;
			var left = (screen.width - width) / 3;

			window.open(url, 'popup', 'width=' + width + ', height=' + height + ', left=' + left + ', top=' + top);
		}
		
	function chooseFile() {
    document.getElementById('fmDphoto').click();
}

document.getElementById('fmDphoto').addEventListener('change', function(event) {
    var file = event.target.files[0]; // 선택된 파일 가져오기
    var reader = new FileReader();

    reader.onload = function(event) {
        var img = document.getElementById('imagePreview');
        img.src = event.target.result; // 미리보기 이미지 업데이트
        img.style.display = 'block'; // 이미지 미리보기 보이기

        // 업로드 안내 메시지 숨기기
        document.getElementById('uploadMessage').style.display = 'none';

        // 파일을 선택한 후에만 required 속성 추가
        document.getElementById('fmDphoto').setAttribute('required', true);
    };

    // 이미지 파일을 data URL로 변환하여 미리보기에 표시
    reader.readAsDataURL(file);
});

function findmecheckValue() {
	window.scrollTo(0, 0);
    // 폼 유효성 검사 로직
}
		</script>
	</div>
<!-- <div id="table-bg">
	<center>
	
    강아지정보
    <label for="dog_name">견종:</label>
    <input type="text" id="fmDkind" name="fmDkind" required><br>

    <label for="age">실종위치:</label>
    <input type="text" id="fmDplace" name="fmDplace" required><br>

    <label for="breed">특이사항:</label>
    <input type="text" id="fmDmemo" name="fmDmemo" required><br>

    사진
    <label for="dog_image">사진업로드:</label>
    <input type="file" id="fmDphto" name="fmDphto" accept="image/*"><br>

   
   	<button onClick="checkValue()">JOIN US</button>
	</form>
	</center>
</div> -->
</body>
</html>