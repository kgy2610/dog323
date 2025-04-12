<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title>후원 상세</title></head>
<body><center>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="sub_support_detail.css">
  <link rel="icon" href="img/favicon-32x32.png">
  <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
  <style>
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
     margin:0px;
     padding:0px;
     text-align: center;
     font-family: 'nanumEB';
     letter-spacing: -1px;
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
   #wm-bg {
    width: 100%; height: auto;
    padding-top: 1px;
  }
  #wm-bg > hr {
    margin-top: 40px;
    margin-left: auto;
    margin-right: auto;
    width: 1614px;
    height: 1.5px;
    background-color: #D4AB8D4D;
    border: 0;
  }
  .wm-hd {
    width: 100%;
    height: auto;
    margin-top: 30px;
    padding-top: 40px;
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
   </style>
<body>
  <div id="wrap">
    <article id="wm-bg">
      <hr>
      <div class="wm-hd">
        <div class="hd">
          <h2>HELPER</h2>
          <h1>견종백과</h1>
          <hr>
        </div>
		<br><br><br>
    </article>
    
	<div>
		<img src="./img/sub_help_dictionary.png">
	</div>
  </body>
</body>
</html>