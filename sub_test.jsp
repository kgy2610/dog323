<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>나와 잘 어울리는 강아지는?</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <link rel="stylesheet" href="./sub_test.css">
  <link rel="stylesheet" href="./sub_test_animation.css">
  <link rel="icon" href="./img/favicon-32x32.png">
  <style>
	.container{
		width: 100%; height: 2350px;
	}
	@font-face {
  font-family: 'NanumSquareRound';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
  font-weight: bolder;
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
.body{
  width: 100%; height: inherit;
  overflow-x: hidden;
  margin:0px;
  padding:0px;
  font-family: 'NanumSquareRound';
  font-size: 14px;
  color:black;
  background-color:#FFF;
}
img{
  border: 0px;
}
.container{
  width: 100%;height: auto;
}

/* main */
#main{
  width: 100%; height: 900px;
  background-color: #FFF;
  text-align: center;
  margin-top: 20px;
}
#main #logo{
  margin-top: 20px;
}
#main h3{
  font-size: 50px;
  text-align: center;
  color: #734D32;
  font-family: 'NanumSquareRound';
  font-weight: 800;
  letter-spacing: -1.5px;
  -webkit-text-stroke: #734D32 0.5px;
  padding-top: 30px;
}
.slide_contain{
  width: 100%; height: 347px;
  margin-top: 65px;
}
.slides{
  width: 1920px;
  display: flex;
  margin-left: -315px;
  transition: transform 0.5s ease;
}
.slide{
  min-width: 120%;height: 347px;
  margin-left: 16px;
  overflow: hidden;
}
.slide:last-child{
  margin-right: 0;
}
.slide img{
  width: 100%;height: 347px;
}
#main #test{
  clear: both;
  font-size: 30px;
  letter-spacing: -1px;
  color: #734D32;
  font-weight: 400;
  -webkit-text-stroke: 0.5px;
  padding-top: 30px;
}
#main #test b{
  -webkit-text-stroke: 0.5px;
}

#main button{
  margin-top: 60px;
  width: 440px;height: 90px;
  border-radius: 60px;
  background-color:rgba(255, 255, 0, 0);  
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
  border-color: #FF9E00;
  background-color: #FF9E00;
  font-size: 35px;
  font-weight: 800;
  text-align: center;
  line-height: 80px;
  color:#fff;
}
#main button:hover{
  background-color:#734D32;
  border: none;
  color: #ffffff;
  font-weight: 800;
}


/* QnA */
#qna{
  display: none;
  margin-top: 100px;
}
.qBox{
  margin-top: 150px;
  text-align: center;
  border-radius: 20px;
  font-size: 40px;
  color: #734D32;
  -webkit-text-stroke: 2px #734D32;
  letter-spacing: -1px;
}
.answerBox{
  margin-top: 100px;
}
.answerList{
  font-size: 30px;
  text-align: center;
  color: #734D32;
  font-weight: 700;
  background-color:#FFFAF0;
  border: #B78B6C solid 3px;
  border-radius: 60px;
  display: block;
  width: 80%;
}
.answerList:hover, .answerList:focus{
  background-color: #FFDDA1;
  color: #734D32;
  border: #B78B6C solid 3px;
}
.status{
  width: 80%; height: 30px;
  border-radius: 20px;
  background-color: #FFF2DC;
}
.statusBar{
  height: 100%;
  background: #FCBF49;
  border-radius: 20px;
  float: left;
}
.statusBar > #dog{
  float: right;
  margin-top: -18px;
  margin-right: -27px;
}
#doghouse{
  position: absolute;
  margin-left: 1000px;
  margin-top: -30px;
}

/* result */
#result{
  display: none;
  width: 70%; height: 1500px;
  text-align: center;
}
h3{
  margin-bottom: 20px;
  font-size: 40px;
  color: #734D32;
  letter-spacing: -1px;
  font-weight: 800;
  -webkit-text-stroke: 0.5px #734D32;
}
.resultname{
  width: 430px; height: 97px;
  position: absolute;
  background-color: #FF9E00;
  color: #fff;
  border-radius: 60px;
  border: #956B4D 4px solid;
  font-size: 45px;
  text-align: center;
  line-height: 97px;
  margin: 30px 0 15px 225px;
  font-weight: 800;
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
}
#resultImg{
  border-radius: 30px;
  margin-top: 100px;
}
#result > ul{
  list-style-type: none;
  margin-top: 45px;
  margin-left: 23px;
}
#result > ul > li{
  float: left;
  margin-left: 20px;
}
.resulttag1,.resulttag2, .resulttag3{
  width: 230px; height: 70px;
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
  border-radius: 60px;
  background-color: #FFFAF0;
  font-size: 27px;
  color: #734D32;
  font-weight: 700;
  -webkit-text-stroke: 0.5px #734D32;
  text-align: center;
  line-height: 75px;
  letter-spacing: -1px;
}
.resultDesc{
  clear: both;
  font-size: 17px;
  width: 100%; height: 270px;
  padding-top: 65px;
  font-size: 30px;
  font-weight: 800;
  color: #734D32;
  letter-spacing: -2px;
}
.resultDesc1{
  clear: both;
  font-size: 17px;
  width: 100%; height: 150px;
  font-size: 30px;
  font-weight: 800;
  color: #734D32;
  letter-spacing: -2px;
  border-bottom: dashed #B78B6C 2px;
}
#family{
  margin-top: 60px;
}
#family > p{
  font-size: 30px;
  color: #734D32;
  -webkit-text-stroke: 0.5px #734D32;
  letter-spacing: -2px;
}
#family > h1{
  font-size: 35px;
  font-weight: 800;
  color: #734D32;
  -webkit-text-stroke: #734D32 0.8px;
  letter-spacing: -2px;
}
#family > button{
  width: 645px; height: 100px;
  background-color: #FCBF49;
  color: #fff;
  font-size: 40px;
  -webkit-text-stroke: #fff 0.8px;
  border: #B78B6C 4px solid;
  border-radius: 25px;
  margin-top: 40px;
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
  letter-spacing: -2px;
}
hr{
  border: 2px #B78B6C solid;
  margin-top: 65px;
}
.return{
  width: 355px; height: 88px;
  font-size: 30px;
  background-color:#FFF2DC;
  border: 4px solid #B78B6C;
  border-radius: 60px;
  margin-top: 80px;
  margin-left: 20px;
}
.return a{
  color: #B78B6C;
  font-weight: 800;
  padding-top: 15px;
  text-decoration: none;
  letter-spacing: -2px;
}
.return a img{
  margin-left: 10px;
}
.return:hover, .return:focus{
  background-color: #FFDDA1;
  color:#734D32;
  border: 4px solid #B78B6C;
}
  </style>
</head>
<body class="body">
  <div class="container">
    <section id="main">
      <h3>나와 잘 어울리는 강아지는?</h3>
      <div class="slide_contain">
        <div class="slides">
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
          <div class="slide">
            <img src="./sub_test/Group 120.png">
          </div>
        </div>
      </div>

      <div id="test">
        성격유형 테스트를 통해 나와 잘 어울리는 강아지를 찾고,
        <b>새로운 가족이 되어주세요</b>
      </div>
      <button type="button" class="btn btn-outline-info" onclick="js:begin()">테스트 시작하기</button>
    </section>

    <section id="qna">
      <div class="status">
        <div class="statusBar">
          <div id="dog"><img src="./img/sub_test/dog.png"></div>
        </div>
        <div id="doghouse"><img src="./img/sub_test/doghouse.png"></div>
      </div>
      <div class="qBox">

      </div>
      <div class="answerBox">

      </div>
    </section>
    <section id="result" class="mx-auto my-4 py-5 px-3">
      <h3>나와 어울리는 강아지는</h3>
      <div class="resultname"></div>
      <div id="resultImg"></div>
      <ul>
        <li><div class="resulttag1"></div></li>
        <li><div class="resulttag2"></div></li>
        <li><div class="resulttag3"></div></li>
      </ul>
      <div class="resultDesc"></div>
      <br>
      <div class="resultDesc1"></div>
      <div id="family">
        <p>당신과 잘 어울리는 강아지가 당신을 기다리고 있어요!</p>
        <h1>나의 새로운 가족이 되어줄래요?</h1>
        <button onclick ="location.href='./sub_withme_main.jsp'">WITH ME에서 강아지 입양하기</button>
      </div>
      <hr>
      <button type="button" class="return"><a href="./sub_test.jsp">테스트 다시하기<img src="./img/sub_test/return.png"></a></button>
    </section>
    <script src="./sub_test.js"></script>
    <script src="./sub_test_data.js" charset="utf-8"></script>
    <script src="./sub_test_start.js" charset="utf-8"></script>
    <script src="./sub_test_share.js" charset="utf-8"></script>
  </div>
</body>
</html>