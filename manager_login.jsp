<%@ page contentType="text/html;charset=euc-kr" %>
<html>
	<head>
		<title>�α���</title>
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
				#logo img{
					margin: 100px 0 30px 0;
				}
				b{
					font-size: 35px;
					color: #734D32;
				}
				#table{
					width: 660px; height: 510px;
					background-color: #FFF2DC;
					border: 3px solid #B78B6C;
					border-radius: 30px;
				}
				#login{
					font-size: 55px;
					color: #734D32;
					font-weight: 800;
				}
				table img{
					position: relative;
					left: 65px;
					z-index: 1;
				}
				table input{
					width:470px; height:80px;
					border: 2px solid #B78B6C;
					border-radius: 50px;
					left: -30px;
					position:relative;
					padding-left: 100px;
					padding-right: 30px;
					font-size: 20px;
					color: #734D32;
				}
				button{
					margin-top: 35px;
					width: 190px; height: 65px;
					background-color: #FF9E00;
					color: #fff;
					font-size: 30px;
					font-weight: 700;
					font-family: 'NanumSquareRound';
					border: none;
					border-radius: 50px;
					box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
				}
		</style>
	</head>
<script language="javascript" src="js.package3.js">
</script>
<body onLoad="login_focus()"> <!-- ID �α��� �������� �ε��Ǹ� �Էºκп� Ŀ�� Ȱ��ȭ��Ŵ
-->
<center>
<div id="logo">
	<img src="./img/main_logo.png">
 </div>
<b>�����ڿ� �α��� �������Դϴ�.</b>
<br><br><br>
 <div id=table>
	<form name="login" method="post" action="manager_loginOK.jsp" target=_parent> 
	 <table border=0 cellpadding=5>
	 <br><br><br>
	 <tr>
		<td colspan=3 align=center id="login">LOGIN</td>
	 </tr>
	 <tr>
		<td></td>
	 </tr>
	 <tr>
		<td></td>
	 </tr>
	 <tr>
		<td><img src="./img/login/lg-id.png"></td>
		<td><input type="text" name="id" placeholder="���̵� �Է����ּ���"></td>
	 </tr>
	 <tr>
		<td></td>
	 </tr>
	 <tr>
		 <td><img src="./img/login/lg-pw.png"></td>
		 <td><input type="password" name="pass" placeholder="��й�ȣ�� �Է����ּ���" onkeydown="onEnterSubmit()"></td>
		<!-- js_package.js onEnterSubmit() �� �Լ��κ� ������� -->
	 </tr>
	 </table>
	 <button>LOGIN</button>
	 </form>
</div>
</center>
<script type="text/javascript">
    function login_focus() {
        // ID �Է� �ʵ忡 ��Ŀ�� ����
        document.forms["login"]["id"].focus();
    }

    function onEnterSubmit(event) {
        // Enter Ű�� ������ �� �� ����
        if (event.key === "Enter") {
            event.preventDefault();
            document.forms["login"].submit();
        }
    }
</script>
</body> 
</html>