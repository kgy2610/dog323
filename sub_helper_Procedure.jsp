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
   #helper-bg {
  width: 100%;
  height: 1100px;
  position: relative;
  top: 1px;
}

#helper-hd > hr {
  margin-top: 40px;
  margin-left: auto;
  margin-right: auto;
  width: 1614px;
  height: 3px;
  background-color: #D4AB8D4D;
  border: 0;
}
#helper-hd2 {
  width: 200px;
  height: 100px;
  margin-top: 85px;
}
#helper-hd2 > h2 {
font-size: 20px;
color: #B78B6C;
}
#helper-hd2 > h1 {
font-size: 40px;
color: #734D32;
font-weight: 700;
font-family: 'nanumEB';
letter-spacing: -2px;
transform : rotate(0.04deg); 

}
#helper-hd2 > hr {
  width: 140px;
  height: 6px;
  background-color: #FF9E00;
  border: 0;
  border-radius: 10px;
  margin-left: 31px;
}
#helper-main {
  width: 100%; height: 700px;
  padding-top: 70px;
}
#hp-withme {
  width: 462px; height: 80px;
  margin-top: 70px;
}
#hp-withme > button {
  width: 462px; height: 80px;
  background-color: #FF9E00;
  border: 3px solid #B78B6C;
  border-radius: 30px;
}
#hp-withme > button > a {
  text-decoration: none;
  color: white;
  font-size: 27px;
  font-family: 'nanumEB';
  letter-spacing: -1px;
  transform : rotate(0.04deg); 

}
   </style>
<body>
  <div id="wrap">

    <section id="helper-bg">
      <article id="helper-hd">
        <hr>
        <div id="helper-hd2">
          <h2>HELPER</h2>
          <h1>입양절차</h1>
          <hr>
        </div>
      </article>
      <article id="helper-main">
        <img src="./img/step.png" width="1696px" height="495px">
        <div id="hp-withme">
          <button><a href="sub_withme_main.jsp">WITH ME에서 새로운 가족 만나기</a></button>
        </div>
      </article>
    </section>
      

  

  </div>
</body>
</html>