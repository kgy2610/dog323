<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<title>����������</title>
	<link rel="icon" href="./img/favicon-32x32.png">
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
	/* ���� ������ ����
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
	/* ���� ��� */
	#banner_main{
	  clear: both;
	  margin-top: 40px;
	  width: 100%;height: 890px;
	  background-image: url('./img/main_bg1.png');
	  background-repeat: no-repeat;
	}
	.banner_contain{
	  display: flex;
	  justify-content: space-between;
	}
	.bn_item:not(2){
	  width: 350px;height: 500px; 
	}
	.bn_item:first-child{
	  width: 370px; height: 530px;
	  margin-left: 123px;
	  margin-top: 160px;
	  position: relative;
	  overflow: hidden;
	}
	.bn_item img {
	  position: absolute;
	  top: 0;
	  left: 0;
	  opacity: 0;
	  transition: opacity 1s ease-in-out;
	  width: 100%;
	  height: 100%;
	}
	.bn_item img.active {
	  opacity: 1;
	}
	.bn_item:nth-child(2){
	  width: 650px;
	  text-align: center;
	  margin-top: 120px;
	  margin-left: 45px;
	}
	.bn_item > ul{
	  list-style-type: none;
	  margin: 0 auto;
	}
	.bn_item > ul > #mini{
	  font-size: 22px;
	  font-weight: 700;
	  letter-spacing: -1px;
	  color: #B78B6C;
	  margin-top: -50px;
	  width: 480px; height: 45px;
	  background-color: #FFDDA1;
	  border-radius: 10px;
	  line-height: 45px;
	}
	.bn_item > ul > #mini > b{
	  font-weight: 800;
	  letter-spacing: -1px;
	}
	.bn_item > ul > #from{
	  color: #734D32;
	  font-size: 60px;
	  font-weight: 700;
	  margin-top: 35px;
	  letter-spacing: -1px;
	}
	.bn_item > ul > #from > b{
	  font-size: 80px;
	  letter-spacing: -1px;
	  -webkit-text-stroke: 2px #734D32;
	}
	.bn_item > ul:nth-child(3){
	  padding-top: -30px;
	}
	.bn_item > ul > #family{
	  color: #734D32;
	  font-size: 50px;
	  font-weight: 800;
	  letter-spacing: -1px;
	  line-height: 50px;
	  line-height: 70px;
	}
	.bn_item > ul > #hope{
	  width: 750px;height: 25px;
	  margin-top: 30px;
	  margin-left: -70px;
	  text-align: center;
	  color: #734D32;
	  letter-spacing: -1px;
	  font-size: 25px;
	  font-weight: 700;
	  -webkit-text-stroke: #734D32 0.3px;
	}
	.bn_item > #average{
	  font-size: 20px;
	  margin-top: 110px;
	  margin-left: 65px;
	}
	.bn_item > #average > div{
	  float: left;
	  line-height: 10px;
	  margin-left: 20px;
	  color: #fff;
	}
	.bn_item > #average > div > p{
	  padding-left: 3px;
	}
	.bn_item > #average > div > hr{
	  width: 210px;height: 1px;
	  background-color: white;
	  border: none;
	}
	.bn_item > #average > div > hr:last-child{
	  margin-left: -2px;
	}
	.bn_item > #num{
	  clear: both;
	  padding-top: 40px;
	}
	.bn_item > #num > ul{
	  list-style-type: none;
	  margin-left: -25px;
	}
	.bn_item > #num > ul > li{
	  float: left;
	}
	.bn_item > #num > ul > #counter{
	  margin-left: 60px;
	  font-size: 24px;
	  color: #fff;
	  font-weight: 600;
	}
	.bn_item > #num > ul > #counter > .count1, .count2{
	  font-size: 35px;
	  color: #fff;
	  -webkit-text-stroke: 1px #fff;
	}
	.bn_item > #num > ul > #counter > p{
	  margin-top: 15px;
	}
	.bn_item:last-child{
	  width: 370px; height: 530px;
	  margin-right: 103px;
	  margin-top: 160px;
	  position: relative;
	  overflow: hidden;
	}

	/* with me ���� */
	.withme_map{
	  margin: 0 auto;
	  width: 100%;height: 850px;
	  margin-top: 250px;
	}

	.withme_map > iframe{
	  clear: both;
	  width: 1200px; height: 775px;
	  margin-top: 10px;
	  margin-left: -100px;
	  margin-right: -80px;
	  border-radius: 30px;
	  border: 4px #B78B6C solid;
	}
	.withme_map> #search > #wait{
	  list-style-type: none;
	  margin-left: -150px;
	}
	.withme_map> #search > #wait > li > #withme_map{
	  width: 250px; height: 60px;
	  background-image: url('./img/main_withme.png');
	  background-repeat: no-repeat;
	}
	.withme_map > #search > #wait > li{
	  clear: both;
	  color: #734D32;
	  font-size: 35px;
	  font-weight: 800;
	  letter-spacing: -1px;
	  float: left;
	  margin-top: 40px;
	  margin-left: 15px;
	  text-align: left;
	}
	.withme_map > #search{
	  list-style-type: none;
	  float: right;
	  margin-top: 100px;
	  margin-right: 100px;
	  margin-left: -50px;
	  font-size: 55px;
	}
	.withme_map > #search > li > hr{
	  width: 280px; height: 1px;
	  background-color: #734D32;
	}
	.withme_map > #search > #fast{
	  width: 280px; height: 102px;
	  padding-top: 20px;
	  padding-bottom: 20px;
	  margin-left: -40px;
	  text-align: left;
	  color: #734D32;
	  line-height: 80px;
	}
	.withme_map > #search > li > img{
	  width: 55px; height: 55px;
	  clear: both;
	  margin-top: 20px;
	}
	.withme_map > #search > li > button{
	  width: 370px; height: 70px;
	  border-radius: 40px;
	  font-size: 25px;
	  margin-top: 35px;
	  margin-left: -100px;
	  color: #734D32;
	  font-weight: 800;
	  border: 3px solid #734D32;
	  background-color: #fff;
	  font-family: 'NanumSquareRound'; 
	}
	.withme_map > #search > li > button > a{
	  font-family: 'NanumSquareRound'; 
	  color: #734D32;
	  text-decoration: none;
	}
	.withme_map > #search > li > button:hover{
	  background-color: #FFF2DC;
	}

	/* �Ծ����� */
	.withme_sequen{
	  margin: 0 auto;
	  margin-top: 200px;
	  width: 1710px;height: 597px;
	  background-image: url('./img/main_step.png');
	  background-repeat: no-repeat;
	}
	.withme_sequen > p{
	  padding-top: 20px;
	  float: right;
	  padding-right: 90px;
	}
	.withme_sequen > p > a{
	  font-size: 28px;
	  font-weight: 800;
	  color: #734D32;
	  text-decoration: none;
	}
	.withme_sequen > p > a:hover{
	  font-weight: 800;
	  color: #FF9E00;
	}
	.withme_sequen > ul{
	  list-style-type: none;
	  padding: 160px 0 0 35px;
	}
	.withme_sequen > ul > li{
	  float: left;
	  margin-left: 10px;
	  opacity: 0;
	  transition: opacity 2s ease;
	}
	.withme_sequen > ul > li:nth-child(2){
	  margin-left: 25px;
	}

	/* test */
	.main-test{
	  margin-top: 370px;
	  width: 100%; height: 555px;
	  background-image: url('./img/main_test.png');
	  background-repeat: no-repeat;
	}
	.main-test > #list{
	  float: left;
	  width: 1010px; height: 475px;
	  /* background-color: red; */
	  list-style-type: none;
	  margin-top: 70px;
	  letter-spacing: -2px;
	  color: #734D32;
	  -webkit-text-stroke: #734D32 1px;
	}
	.main-test > #list > ul > li{
	  font-size: 23px;
	}
	.main-test > #list > #first{
	  margin-left: 190px;
	  list-style-type: none;
	}
	.main-test > #list > #first > li > #img {
	  list-style-type: none;
	  float: left;
	}
	.main-test > #list > #second{
	  clear: both ;
	  list-style-type: none;
	  margin-left: 190px;
	}
	.main-test > #list > #second > li > #img{
	  list-style-type: none;
	  float: left;
	  margin-top: 20px;
	}
	.go-test{
	  width: 790px; height: 555px;
	  margin-top: 90px;
	  letter-spacing: -1px;
	  color: #734D32;
	  float: right;
	}
	.go-test > ul{
	  list-style-type: none;
	  font-size: 30px;
	  text-align: left;
	  float: left;
	}
	.go-test > ul > li:first-child{
	  font-weight: 800;
	}
	.go-test > ul > li:nth-child(2){
	  margin-top: 20px;
	}
	.go-test > ul > li:nth-child(3){
	  -webkit-text-stroke: 0.8px #734D32;
	  margin-top: 30px;
	}
	.go-test > ul > li > button{
	  margin-top: 35px;
	  width: 510px; height: 95px;
	  font-family: 'NanumSquareRound';
	  line-height: 90px;
	  font-weight: 800;
	  font-size: 35px;
	  color: white;
	  background-color: #FCBF49;
	  border: #B78B6C 3px solid;
	  box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.2);
	  border-radius: 50px;
	}
	.go-test > ul > li > button:hover{
	  background-color: #B78B6C;
	}

	/* find me */
	.findme_contain{
	  clear: both;
	  width: 100%;height: 720px;
	  margin-top: 240px;
	  background-image: url('./img/main_bg2.png');
	  background-repeat: no-repeat;
	}
	.findme_contain > ul{
	  float: left;
	  margin-top: 80px;
	  list-style-type: none;
	}
	.findme_contain > ul:first-child > li:hover{
	  background-color: #B78B6C;
	  color: #FFFAF0;
	  -webkit-text-stroke: 0.3px #FFFAF0;
	}
	.findme_contain > ul > li > button{
	  float: left;
	  width: 380px;height: 95px;
	  margin-top: 410px;
	  margin-left: 150px;
	  border-radius: 55px;
	  border: #734D32 3px solid;
	  background-color: #FFF2DC;
	  box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.2);
	  cursor: pointer;
	  color: #734D32;
	  text-decoration: none;
	  font-size: 30px;
	  font-weight: bold;
	  font-family: 'NanumSquareRound';
	  -webkit-text-stroke: 0.3px #734D32;
	  display: block;
	}
	.findme_contain > ul > li > button:last-child{
	  margin-left: 40px;
	  width: 390px;height: 95px;
	  line-height: 90px;
	}
	.findme_contain > ul > li > button:hover{
	  background-color: #FFDDA1;
	}
	.findme_contain > .balloons{
	  clear: both;
	  float: right;
	  margin-top: -420px;
	  margin-right: 200px;
	}
	.findme_contain > .balloons > li:first-child{
	  margin-left: 1250px;
	}
	.findme_contain > .balloons > li:nth-child(2){
	  margin-left: 800px;
	}
	.findme_contain > .balloons > li:last-child{
	  margin-left: 1250px;
	  margin-top: 20px;
	}
	.balloon1, .balloon2, .balloon3{
	  opacity: 0;
	  transition: opacity 2s ease;
	  animation: move 0.7s ease-in 0s infinite alternate; 
	}
	@keyframes move {
		0% {margin-top: 0px;}
		100% {margin-top: 5px;}
	}
	.show{
	  opacity: 1;
	}

	.findme_contain > img{
	  width: 615px;height: 360px;
	  float: right;
	  margin-top: 150px;
	  margin-right: 200px;
	  padding-left: -100px;
	}

	/* find you �����̵� ��� */
	#findyou{
	  margin-top: 420px;
	  text-align: center;
	}
	#findyou > ul{
	  list-style: none;
	  display: inline-block;
	}
	#findyou > ul >li{
	  float: left;
	  margin-left: 12px;
	  line-height: 70px;
	}
	#findyou > ul >li:nth-child(1){
	  padding-top: 12px;
	  font-weight: 700;
	  color: #734D32;
	}
	#findyou > ul >li:last-child{
	  font-size: 55px;
	  font-weight: 800;
	  color: #734D32;
	  padding-top: 8px;
	  letter-spacing: -1px;
	}
	#findyou > ul > li > p{
	  font-size: 35px;
	  font-weight: 800;
	  letter-spacing: -1.5px;
	}
	.slide_contain{
	  width: 1580px;
	  padding-top: 50px;
	  position: relative;
	  overflow: hidden;
	}
	.slides{
	  display: flex;
	  transition: transform 0.5s ease;
	}
	.slide{
	  min-width: 300px;
	  margin-right: 20px;
	  overflow: hidden;
	}
	.slide:last-child{
	  margin-right: 0;
	}
	.slide img{
	  width: 100%;height: auto;
	}


	/* ���� ���� */
	.watchme > #watchme{
	  margin-top: 350px;
	  width: 345px; height: 78px;
	  background-image: url("./img/main_watchme_title.png");
	  background-repeat: no-repeat;
	  background-position: center;
	}
	.watchme > h1{
	  text-align: center;
	  font-size: 30px;
	  color: #734D32;
	  font-weight: 700;
	  margin-top: 30px;
	  letter-spacing: -1px;
	}
	.watchme > .group {
	  width: 100%; height: 1080px;
	  margin-top: 50px;
	  text-align: center;
	  white-space: nowrap;
	  overflow: hidden;
	}

	.watchme > .group > .item {
	  width: 70px;height: 670px;
	  background-position: center;
	  background-size: 550px 605px;
	  background-repeat: no-repeat;
	  margin: 1vw;
	  border-radius: 2vw;
	  border: 3px #734D32 solid;
	  display: inline-block;
	  cursor: pointer;
	}

	/* �Ŀ��ϱ� */
	#funding {
	  width: 100%; 
	  height: 560px;
	  background-image: url('./img/main_fund.png');
	  background-repeat: no-repeat;
	  overflow: hidden;
	}

	#funding > .member-list1 {
	  clear: both;
	  width: 1920px; /* �ʺ� �ڵ����� �����ϵ��� ���� */
	  display: flex;
	  margin-top: 200px;
	  transition: transform 0.5s ease;
	}

	#funding > .member-list1 > .list {
	  min-width: 100%; /* �ʺ� 100%�� �����Ͽ� ���η� ä�쵵�� ���� */
	  height: 100px;
	  margin-right: 160px;
	}
	#funding > .member-list2 {
	  clear: both;
	  width: 1920px; /* �ʺ� �ڵ����� �����ϵ��� ���� */
	  display: flex;
	  margin-top: 5px;
	  transition: transform 0.5s ease;
	}

	#funding > .member-list2 > .listt {
	  min-width: 100%; /* �ʺ� 100%�� �����Ͽ� ���η� ä�쵵�� ���� */
	  height: 100px;
	  margin-right: 430px;
	}
	#withus > ul{
	  width: 700px; height: 60px;
	  list-style-type: none;
	  margin-top: 60px;
	  margin-left: 215px;
	}
	#withus > ul > li{
	  float: left;
	  letter-spacing: -1px;
	}
	#withus > ul > #withus-now{
	  font-size: 35px;
	  color: #734D32;
	  -webkit-text-stroke: #734D32 1px;
	  line-height: 60px;
	}
	#withus > ul > #counter0{
	  font-size: 40px;
	  font-weight: 800;
	  color: #734D32;
	  padding-top: 5px;
	}
	#withus > ul > #counter0 > .count0{
	  margin-left: 10px;
	}
	#withus > #withus-btn{
	  clear: both;
	  float: right;
	  margin-top: -70px;
	  margin-right: 200px;
	}
	#withus > #withus-btn > button{
	  width: 380px; height: 90px;
	  font-size: 32px;
	  letter-spacing: -1px;
	  font-family: 'NanumSquareRound';
	  font-weight: 800;
	  border-radius: 50px;
	  border: #B78B6C 3px solid;
	  background-color: #FCBF49;
	  color: #fff;
	}
	#withus > #withus-btn > button:hover{
	  background-color: #B78B6C;
	}

	/* join us */
	#joinus{
	  text-align: center;
	  height: 760px;
	  margin-top: 600px;
	  background: linear-gradient(360deg, #FCBF49 0%, #FFD185 18.25%, #FFFFFF 50%);
	}
	#joinus > #join_con{
	  padding-top: 150px;
	}
	#joinus > #join_con > #hug > hr{
	  width: 140px; height: 12px;
	  margin-left: 885px;
	  border: none;
	  border-radius: 50px;
	  background-color: #FF9E00;
	}
	#joinus > #join_con > #hug > ul{
	  list-style-type: none;
	  margin-top: 140px;
	  margin-left: 700px;
	}
	#joinus > #join_con > #hug > ul > li{
	  float: left;
	  color: #734D32;
	  line-height: 50px;
	  letter-spacing: -1px;
	}
	#joinus > #join_con > #hug > ul > #now{
	  font-size: 40px;
	  padding-top: 3px;
	  font-weight: 700;
	}
	#joinus > #join_con > #hug > ul > #dogg{
	  margin-left: 10px;
	  font-size: 55px;
	  font-weight: 800;
	  color: #FF9E00;
	}
	#joinus > #join_con > #hug-dog > p{
	  margin-top: 200px;
	  font-size: 45px;
	  color: #734D32;
	  font-weight: 800;
	  letter-spacing: -1px;
	}
	#joinus > #join_con > #btn_join{
	  clear: both;
	  margin-top: 90px;
	}
	#joinus > #join_con > #btn_join > button{
	  width: 380px; height: 90px;
	  border-radius: 50px;
	  border: 3px solid #734D32;
	  color: #fff;
	  background-color: #FF9E00;
	  font-size: 40px;
	  font-family: 'NanumSquareRound';
	  font-weight: 800;
	  box-shadow: 0px 4px 10px rgba(0, 4, 4, 0.2);
	}
	#joinus > #join_con > #btn_join > button:hover{
	  background-color: #B78B6C;
	  color: #fff;
	}
	.watchme p a{
		font-size: 25px;
		text-decoration: none;
		color: #734D32;
		float: right;
		margin-top: 50px;
		margin-right: 160px;
	}
	.watchme p a:hover{
		font-weight: 800;
	}
  </style>
</head>
<body>
  <div id="wrap">
     <div id="banner_main" class="banner_contain">
        <div class="bn_item">
          <img src="./img/./banner_withme/banner_withme1.png" class="active">
          <img src="./img/./banner_withme/banner_withme2.png">
          <img src="./img/./banner_withme/banner_withme3.png">
          <img src="./img/./banner_withme/banner_withme4.png">
          <img src="./img/./banner_withme/banner_withme5.png">
          <img src="./img/./banner_withme/banner_withme6.png">
          <img src="./img/./banner_withme/banner_withme7.png">
          <img src="./img/./banner_withme/banner_withme8.png">
          <img src="./img/./banner_withme/banner_withme9.png">
        </div>
        <div class="bn_item">
          <ul>
            <li id="mini">���� �������� �� <b>3�� 23��</b>, ���� ���� �Ծ��ؿ�!</li>
            <li id="from"><b>DOG323</b> ����</li>
            <li id="family">���ο� ������ ������</li>
            <li id="family">�Ҿ���� ������ ��ã������</li>
            <li id="hope">DOG323�� ������ ��� ���������� ������ ǰ���� �ູ�ϱ� �Ҹ��մϴ�</li>
          </ul>
          <div id="average">
            <div><hr></div>
            <div><p>Today</p></div>
            <div><hr></div>
          </div>
          <div id="num">
            <ul>
              <li id="counter">
                <span class="count1" data-count="372">0</span> ������
                <p>����� ��ٸ��� �־��</p>
              </li>
              <li id="counter">
                <span class="count2" data-count="146">0</span> ������
                <p>���ο� ������ �������!</p>
              </li>
            </ul>
          </div>
        </div>
        <div class="bn_item">
          <img src="./img/banner_findme/banner_findme1.png" class="active">
          <img src="./img/banner_findme/banner_findme2.png">
          <img src="./img/banner_findme/banner_findme3.png">
          <img src="./img/banner_findme/banner_findme4.png">
          <img src="./img/banner_findme/banner_findme5.png">
          <img src="./img/banner_findme/banner_findme6.png">
          <img src="./img/banner_findme/banner_findme7.png">
          <img src="./img/banner_findme/banner_findme8.png">
          <img src="./img/banner_findme/banner_findme9.png">
        </div>
      </div>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="./main_average.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="./main_banner.js"></script>

      <div class="withme_map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1179.5748379336962!2d127.1425016579271!3d36.907428668410006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b2f9e85bba181%3A0x79c5568c34a792a8!2z7LKc7JWI7IucIOyEse2ZmOydjSDrgqjshJzsmrjrjIDtlZnqtZAg6rO17ZWZMeq0gA!5e0!3m2!1sko!2skr!4v1712640492186!5m2!1sko!2skr" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        <ul id="search">
          <ul id="wait">
            <li><div id="withme_map"></div></li>
            <li>������ ������ ����������<br> ����� ��ٸ��� �־��</li>
          </ul>
          <li id="btn">
            <button>
            <a href="https://www.google.com/maps/search/%EC%9C%A0%EA%B8%B0%EA%B2%AC+%EB%B3%B4%ED%98%B8%EC%86%8C/data=!3m1!4b1?hl=ko&entry=ttu" target="_blank">
              �ֺ� ��ȣ�� ã��
            </a>
            </button>
          </li>
          <li>
            <button onclick="openPopup('sub_test.html')">���� ��︮�� ������</button>
          </li>
          <li>
            <button onclick ="location.href='./sub_withme_main.jsp'">������ �Ծ��ϱ�</button>
          </li>
        </ul>
          </div>

      <div class="withme_sequen">
        <p><a href="sub_withme_main.jsp">WITH ME ></a></p>
        <ul>
          <li><img src="./img/main_step1.png"></li>
          <li><img src="./img/main_step2.png"></li>
          <li><img src="./img/main_step3.png"></li>
          <li><img src="./img/main_step4.png"></li>
        </ul>
      </div>
      <script>
        document.addEventListener("DOMContentLoaded", function() {
          const images = document.querySelectorAll(".withme_sequen ul li");
        
          function fadeInImages() {
            images.forEach((image, index) => {
              // �̹����� ȭ�鿡 ���� �� ������ 1�� �����Ͽ� ���̵��� ȿ��
              if (isElementInViewport(image) && image.style.opacity !== "1") {
                setTimeout(() => {
                  image.style.opacity = 1;
                }, index * 300); // ������ ���� �ణ�� ���� �ð� ����
              }
            });
          }
        
          function isElementInViewport(el) {
            const rect = el.getBoundingClientRect();
            return (
              rect.top >= 0 &&
              rect.bottom <= (window.innerHeight || document.documentElement.clientHeight)
            );
          }
        
          // ��ũ���� ������ fadeInImages �Լ� ȣ��
          document.addEventListener("scroll", fadeInImages);
        
          // ������ �ε�ÿ��� �̹��� ���̵��� Ȯ��
          fadeInImages();
        });
        </script>

      <div class="main-test">
        <div id="list">
          <ul id="first">
            <li>
              <ul id="img">
                <li><img src="./img/main_test1.png"></li>
                <li>�۱�</li>
              </ul>
              <ul id="img">
                <li><img src="./img/main_test2.png"></li>
                <li>�ú����� �㽺Ű</li>
              </ul>
              <ul id="img">
                <li><img src="./img/main_test3.png"></li>
                <li>��� ��Ʈ����</li>
              </ul>
              <ul id="img">
                <li><img src="./img/main_test4.png"></li>
                <li>��� ������</li>
              </ul>
            </li>
          </ul>
          <ul id="second">
            <li>
              <ul id="img">
                <li><img src="./img/main_test5.png"></li>
                <li>���޶�Ͼ�</li>
              </ul>
              <ul id="img">
                <li><img src="./img/main_test6.png"></li>
                <li>�ڽ���Ʈ</li>
              </ul>
              <ul id="img">
                <li><img src="./img/main_test7.png"></li>
                <li>����� ��Ʈ����</li>
              </ul>
              <ul id="img">
                <li><img src="./img/main_test8.png"></li>
                <li>������</li>
              </ul>
            </li>
          </ul>
        </div>
        <div class="go-test">
          <ul>
            <li>� �������� �Ծ����� �𸣰ڴٸ�?</li>
            <li><img src="./img/main_test-text.png"></li>
            <li>�׽�Ʈ�� ���� ���� ��︮�� �������� ã��<br>���ο� ������ �Ǿ��ּ���</li>
            <li><button onclick="openPopup('sub_test.html')">�׽�Ʈ�Ϸ� ����</button></li>
          </ul>
        </div>
      </div>

      <div class="findme_contain">
        <ul>
          <li>
            <button onclick ="location.href='./findmemake.html'">����� ������ �����</button>
            <button onclick ="location.href='./sub_findme_main.jsp'">FIND ME�� ���ε��ϱ�</button>
          </li>
        </ul>
        <ul class="balloons">
          <li><img class="balloon1" src="./img/main_balloon1.png"></li>
          <li><img class="balloon2" src="./img/main_balloon2.png"></li>
          <li><img class="balloon3" src="./img/main_balloon3.png"></li>
        </ul>
      </div>
      <script src="./main_balloons.js"></script>

      <div id="findyou">
        <ul>
          <li><p>��𼱰� ��Ű� ���� �츮 ������,</p></li>
          <li>���� ����ϴ� ������ ã���ּ���</li>
        </ul>
      </div>
      <div class="slide_contain">
        <div class="slides">
          <div class="slide">
            <img src="./img/main_findyou/main_findyou-1.png" onmouseover="this.src='./img/main_findyou/main_findyou-1-hover.png'" onmouseout="this.src='./img/main_findyou/main_findyou-1.png'">
          </div>
          <div class="slide">
            <img src="./img/main_findyou/main_findyou-2.png" onmouseover="this.src='./img/main_findyou/main_findyou-2-hover.png'" onmouseout="this.src='./img/main_findyou/main_findyou-2.png'">
          </div>
          <div class="slide">
            <img src="./img/main_findyou/main_findyou-3.png" onmouseover="this.src='./img/main_findyou/main_findyou-3-hover.png'" onmouseout="this.src='./img/main_findyou/main_findyou-3.png'">
          </div>
          <div class="slide">
            <img src="./img/main_findyou/main_findyou-4.png" onmouseover="this.src='./img/main_findyou/main_findyou-4-hover.png'" onmouseout="this.src='./img/main_findyou/main_findyou-4.png'">
          </div>
          <div class="slide">
            <img src="./img/main_findyou/main_findyou-5.png" onmouseover="this.src='./img/main_findyou/main_findyou-5-hover.png'" onmouseout="this.src='./img/main_findyou/main_findyou-5.png'">
          </div>
          <div class="slide">
            <img src="./img/main_findyou/main_findyou-6.png" onmouseover="this.src='./img/main_findyou/main_findyou-6-hover.png'" onmouseout="this.src='./img/main_findyou/main_findyou-6.png'">
          </div>
          <div class="slide">
            <img src="./img/main_findyou/main_findyou-7.png" onmouseover="this.src='./img/main_findyou/main_findyou-7-hover.png'" onmouseout="this.src='./img/main_findyou/main_findyou-7.png'">
          </div>
          <div class="slide">
            <img src="./img/main_findyou/main_findyou-8.png" onmouseover="this.src='./img/main_findyou/main_findyou-8-hover.png'" onmouseout="this.src='./img/main_findyou/main_findyou-8.png'">
          </div>
          <div class="slide">
            <img src="./img/main_findyou/main_findyou-9.png" onmouseover="this.src='./img/main_findyou/main_findyou-9-hover.png'" onmouseout="this.src='./img/main_findyou/main_findyou-9.png'">
          </div>
          <div class="slide">
            <img src="./img/main_findyou/main_findyou-10.png" onmouseover="this.src='./img/main_findyou/main_findyou-10-hover.png'" onmouseout="this.src='./img/main_findyou/main_findyou-10.png'">
          </div>
        </div>
      </div>
      <script src="main_findyou.js"></script>
  

  <!-- �������� -->
    <div class="watchme">
      <p id="watchme"></p>
      <h1>���� ���� �Ʊ�� ��������� �� �������� �ڶ��غ�����</h1>
      <div class="group">
        <div class="item" style="background-image: url(./img/main_watchme/main_watchme1.png)"></div>
        <div class="item" style="background-image: url(./img/main_watchme/main_watchme2.png)"></div>
        <div class="item" style="background-image: url(./img/main_watchme/main_watchme3.png)"></div>
        <div class="item" style="background-image: url(./img/main_watchme/main_watchme4.png)"></div>
        <div class="item" style="background-image: url(./img/main_watchme/main_watchme5.png)"></div>
        <div class="item" style="background-image: url(./img/main_watchme/main_watchme6.png)"></div>
        <div class="item" style="background-image: url(./img/main_watchme/main_watchme7.png)"></div>
        <div class="item" style="background-image: url(./img/main_watchme/main_watchme8.png)"></div>
        <div class="item" style="background-image: url(./img/main_watchme/main_watchme9.png)"></div>
      </div>
	  <div>
	  	<p><a href="#">�������� ></a></p>
	  </div>
      <script src='https://unpkg.co/gsap@3/dist/gsap.min.js'></script>
      <script src="./main_watchme.js"></script>
    </div>

    <!-- �Ŀ��ϱ� -->
    <div id="funding">
      <div class="member-list1">
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
        <div class="list">
          <img src="./img/member-list1.png">
        </div>
      </div>
      <div class="member-list2">
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
        <div class="listt">
          <img src="./img/member-list2.png">
        </div>
      </div>
      

      <div id="withus">
        <ul>
          <li id="withus-now">2024�� 5�� ����, </li>
          <li id="counter0">
            <span class="count0" data-count="304">0</span>
          </li>
          <li id="counter0">��</li>
          <li id="withus-now">�� �Բ��߽��ϴ�</li>
        </ul>
        <div id="withus-btn">
          <button onclick ="location.href='sub_support_main.jsp'">������ ���� �Բ��ϱ�</button>
        </div>
      </div>
      <script src="./main-test-list.js"></script>
    </div>

    <!-- join us -->
    <div id="joinus">
      <div id="join_con">
        <div id="hug">
          <hr>
          <ul>
            <li id="now">����</li>
            <li id="dogg">DOG323</li>
            <li id="now">�� �����Ͽ�</li>
          </ul>
        </div>
        <div id="hug-dog">
          <p>������ ��� �������� �����ϰ� �Ⱦ��ּ���</p>
        </div>
        <div id="btn_join">
          <button onclick ="location.href='./member.jsp'">JOIN US</button>
        </div>
      </div>
    </div>
  </div>
  <script>
  function openPopup(url) {
    var width = 1400;
    var height = 900;
    var left = (screen.width - width) / 3;

    window.open(url, 'popup', 'width=' + width + ', height=' + height + ', left=' + left + ', top=' + top);
}
  </script>
</body>
</html>