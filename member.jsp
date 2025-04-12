<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<html>
<head>
<title>회원가입</title>

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
      margin-top:80px;
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
      width: 240px; height:65px;
      margin-top:30px;
      font-size: 30px;
      color:#fff;
      background-color: #FF9E00;
      box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
      border:none;
      border-radius: 50px;
   }
   

</style>
</head>

<script language="javascript" src="js_package3.js"></script>


<body onLoad="idFocus()">     <!--  body태그가 실행 되면 idFocus()함수가 자동으로 호출됨 -->        
<div id="table-bg">
   <center>
      <br><br>
      <div id="log-title">
         <font color="#734D32" size='40px'><b>회원가입</b></font><p>
      </div>
                                                              <!--  form의 name속성의 속성값에 주목할 것!-->
   <form name="newMem" method=post action=memberOK.jsp  onsubmit="return checkValue()">
      <table cellpadding=5   style="font-size:10pt;font-family:NanumSquareRound">
         <tr>
            <td width=40><img src="./img/login/login-id.png"></td>
            <td>
               <input type=text name="id" class="id" placeholder="아이디 10~17자">
               <a href="javascript:checkID()"> <img src="./img/login/id-check.png"  border=0></a>
            </td>      
         </tr>
         <tr>
            <td><img src="./img/login/login-pw.png"></td>
            <td><input type=password name="password" placeholder="비밀번호 10~17자 (영문+숫자)" size=21 class="pw"></td>
         </tr>
         <tr>
            <td></td>
            <td><input type="password" name="confirmPassword" id="confirmPassword" placeholder="비밀번호 확인" size="21" class="pw"></td>
         </tr>
         <tr id="passwordMatchError" style="display: none;">
            <td colspan="2">*비밀번호를 확인해주세요!</td>
         </tr>
         <tr>
            <td><img src="./img/login/login-name.png"></td>
            <td><input type=text name="name" class="name" placeholder="이름"></td>
         </tr>
         <tr>
            <td><img src="./img/login/login-email.png"></td>
            <td>
               <input type=text name="Email" class="email" placeholder="이메일">
            </td>
         </tr>
         <tr>
            <td><img src="./img/login/login-phone.png"></td>
            <td>
               <input type=text name="Phone" class="phone" placeholder="휴대폰번호">
            </td>
         </tr>
         
      </table><p>     
      
      <!--  input태그의 type속성의 속성값이 "submit"이 아니라 "button"임에 주의할 것!-->
      <!--  회원가입 버튼을 클릭하게 되면 checkValue()함수가 자동으로 호출됨에 주의할 것!-->
      <button onClick="checkValue()">JOIN US</button>
   </form>
   </center>
</div>
</body>
</html>