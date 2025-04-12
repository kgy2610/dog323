<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
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
	/* community-write */
#commu-bg {
  width: 100%; height: 1500px;
  margin-top: 150px;
}
#commuwrite-hd > hr {
    margin-top: 40px;
    margin-left: auto;
    margin-right: auto;
    width: 1614px;
    height: 1.5px;
    background-color: #D4AB8D4D;
    border: 0;
  }
  #commuwrite-hd2 {
    width: 250px;
    height: 100px;
    margin-top: 85px;
  }
  #commuwrite-hd2 > h2 {
  font-size: 20px;
  color: #B78B6C;
  }
  #commuwrite-hd2 > h1 {
  font-size: 40px;
  color: #734D32;
  font-weight: 700;
  font-family: 'nanumEB';
  letter-spacing: -2px;
  transform : rotate(0.04deg); 
  
  }
  #commuwrite-hd2 > hr {
    width: 185px;
    height: 6px;
    background-color: #FF9E00;
    border: 0;
    border-radius: 10px;
}

#commu-writebox {
    width: 1400px; height: 1000px;
    margin-top: 80px;
}
#write1 {
    width: 600px; height: 70px;
    font-family: 'nanumEB';
    font-size: 30px;
    color: #734D32;
    float: left;
    text-align: left;
    padding: 10px 0px 0px 20px;
    margin-bottom: 48px;
}

#board {
    width: 400px; height: 67px;
    border-radius: 50px;
    border: 3px solid #E6D7CB;
    display: inline-block;
    margin-left: 30px;
    padding-left: 38px;
    font-size: 19px;
    font-family: 'nanumB';
    color: #D4AB8D;
}
.commu-write-hr {
    width: 1380px;
    border: 1.5px dashed #B78B6C;
}

#write2 {
    width: 640px; height: 70px;
    margin-top: 50px;
    float: left;
    text-align: left;
    font-family: 'nanumEB';
    font-size: 30px;
    color: #734D32;
}
#write2 > label {
    margin-left: 45px;
}
#comTitle {
    width: 400px; height: 67px;
    border-radius: 50px;
    display: inline-block;
    margin-left: 30px;
    padding-left: 38px;
    font-size: 19px;
    font-family: 'nanumB';
    color: #734D32;
    border: 3px solid #E6D7CB;
}
#comTitle::placeholder {
    color: #D4AB8D;
}
#write3 {
    width: 1350px; height: 425px;
    margin-top: 50px;
    float: left;
    text-align: left;
    font-family: 'nanumEB';
    font-size: 30px;
    color: #734D32;
    text-align: left;
}
#comMemo {
    width: 1100px; height: 400px;
    border-radius: 50px;
    border: 3px solid #E6D7CB;
    /* display: inline-block; */
    margin-left: 30px;
    padding: 30px 45px 0 45px;
    font-size: 19px;
    font-family: 'nanumB';
	line-height: 35px;
    color: #734D32;
}
#comMemo::placeholder {
    color: #D4AB8D;
}
#write3 > label {
    margin: 30px 10px 0 45px;
    float: left;
}

#write4 {
    width: 505px; height: 70px;
    float: left;
    margin-top: 5px;
    margin-bottom: 50px;
}
#write4 > label {
    margin: 10px 0px 0px 60px;
    float: left;
}
#write4 > label > img {
    float: left;
    margin-right: 40px;
}
#write-img {
    float: left;
    width: 235px; height: 70px;
    margin-top: 10px;
    font-size: 19px;
    font-family: 'nanumB';
    color: #734D32;
}
#write5 {
    width: 235px; height: 70px;
    float: right;
    margin: 57px 90px 0px 0px;
}
#write5 > button {
    width: 235px; height: 67px;
    border-radius: 50px;
    border: none;
    background-color: #B78B6C;
    color: white;
    font-size: 24px;
    font-family: 'nanumB';
}

</style>
</head>
<script language="javascript" src="js.package3.js"></script>

<body onLoad="idFocus()">
	<div id="wrap">
	<div id="hd-line">
		<hr>
	</div>
	<article id="commuwrite-hd">
            <hr>
            <div id="commuwrite-hd2">
              <h2>COMMUNITY</h2>
              <h1>게시물 작성</h1>
              <hr>
            </div>
		<form name="community" method="post" action="insert_communityOk.jsp">
			<div id="commu-writebox">
			<div id="write2">
				<label for="comTitle">제목</label>
				<input type="text" id="comTitle" name="comTitle" placeholder="제목을 입력해주세요 (20자 이내)">
			</div>
			<div id="write3">
				<label for="comMemo">내용</label>
				<textarea id="comMemo" name="comMemo" name="comMemo" placeholder="내용을 입력해주세요 (200자 이내)"></textarea>
			</div>
			<div id="write4">
				<label for="comPhoto"><img src="img/write-img.png">
				<input type="file" id="comPhoto" name="comPhoto" accept="image/*"><br>
			</div>
			<hr class="commu-write-hr">
			<div id="write5">
				<button type="submit" onClick="checkValue()">등록하기</button>
			</div>
		  </div>
		</form>
	</section>
<!-- <div id="table-bg">
	<center>
	
    강아지정보
    <label for="comTitle">제목:</label>
    <input type="text" id="comTitle" name="comTitle" required placeholder="제목을 입력해주세요 (20자 이내)"><br>

    <label for="comMemo">내용:</label>
    <input type="text" id="comMemo" name="comMemo" required placeholder="내용을 입력해주세요 (200자 이내)"><br>

    사진
    <label for="comPhoto">사진업로드:</label>
    <input type="file" id="comPhoto" name="comPhoto" accept="image/*"><br>

   
   	<button type="submit" onClick="checkValue()">JOIN US</button>
	</form>
	</center> -->
</div>
</body>
</html>