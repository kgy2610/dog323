<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>�α��� ó��/�Ǻ�   </title>

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
				  font-size: 14px;
				  color:black;
				  font-family: 'NanumSquareRound';
				  letter-spacing: -1px;
				  text-align:center;
			   }
				#logo img{
					margin: 180px 0 0 0;
				}
				#error{
					font-size: 35px;
					font-weight: 800;
					color: #734D32;
				}
				#error-r{
					font-size: 30px;
					color: #734D32;
				}
				#back{
					width: 465px; height: 310px;
					background-color: #FFF2DC;
					border: 3px #B78B6C solid;
					border-radius: 30px;
					float: left;
					margin: 50px 0 0 70px;
				}
				#back:first-child{
					margin-left: 440px;
				}
				#back p{
					font-size: 35px;
					color: #734D32;
					font-weight: 800;
					margin-top: 60px;
					line-height: 50px;
				}
				#back button{
					width: 190px; height: 65px;
					margin-top: 40px;
					background-color: #FF9E00;
					border: none;
					border-radius: 50px;
					box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
				}
				#back button:hover{
					background-color: #B78B6C;
				}
				#back button a{
					text-decoration: none;
					color: #fff;
					font-size: 30px;
					font-family: 'NanumSquareRound';
					font-weight: 800;
				}
				#wrap {
					margin: 0 auto;
					width: 100%;
				}
				/* ��� */
				header{
				  width: 100%;height: 120px;
				  background-color: rgba(255, 255, 255, 0.8);
				  position: relative;
				  padding-top: 30px;
				  position: fixed;
				  z-index: 9999;
				  top: 0;
				}
				header > #logo > a > img{
				  float: left;
				  margin: 0px 0 0 130px;
				}

				header > #nav{
				  width: 1045px; height: 85px;
				  margin-left: 430px;
				  background-color: #fff;
				  border-radius: 70px;
				  box-shadow: 0px 0px 3px 2px rgba(183, 139, 108, 0.2);
				  position: fixed;
				}
				header > #nav > ul{
				  width: 925px; height: 85px;
				  list-style-type: none;
				}
				header > #nav > ul > li{
				  float: left;
				  margin-left: 90px;
				  line-height: 90px;
				}
				header > #nav > ul > li:first-child{
				  margin: 0;
				}
				header > #nav > ul > li > a{
				  padding-bottom: 20px;
				  font-size: 25px;
				  letter-spacing: -1px;
				  display: block;
				  color: #734D32;
				  font-family: 'nanumEB';
				  transform : rotate(0.04deg); 
				  text-decoration: none;
				}
				header > #nav > ul > li > a:hover{
				  color: #FF9E00;
				  -webkit-text-stroke: #FF9E00 0.2px;
				}
				header > #nav > ul > li:hover > #mega-menu{
				  display: block;
				}
				#mega-menu{
				  width: 1045px; height: 200px;
				  background-color: white;
				  position: absolute;
				  top: 110px; left: 0px;
				  display: none;
				  background: rgba(255, 255, 255, 0.95);
				  box-shadow: 0px 0px 3px 2px rgba(183, 139, 108, 0.2);
				  border-radius: 30px;
				  z-index: 9999;
				}
				.list_lnb{
				  padding: 0;
				  margin: 25px 3px 0px 28px;
				  list-style: none;
				  float: left;
				  line-height: 50px;
				  width: 15%;height: inherit;
				}
				.list_lnb:first-child{
				  margin-left: 50px;
				}
				.list_lnb:nth-child(4){
				  margin-left: 55px;
				}
				.list_lnb:last-child{
				  margin-left: 45px;
				  text-align: center;
				}
				.list_lnb > li > a{
				  font-size: 18px;
				  font-family: 'nanumB';
				  letter-spacing: -1px;
				  transform : rotate(0.04deg); 
				  color: #734D32;
				  text-decoration: none;
				  text-align: center;
				  display: block;
				}
				.list_lnb > li > a:hover{
				  color: #FF9E00;
				}
				<style>
				#icon{
					/* float: right; */
					margin-right: 20px;
				}
				#icon > ul{
					width: 260px; height: 65px;
					list-style-type: none;
					color: #734D32;
					line-height: 100px;
					position: relative;
					clear:both;
					top: -67px; right: 60px;
					box-shadow: 0px 0px 3px 2px rgba(183, 139, 108, 0.2);
					float: right;
					border-radius: 20px;
				}
				#icon > ul > li:first-child{
					padding-top: 9px;
					margin-left: -5px;
				}
				#icon > ul > li{
					float: left;
					margin-left: 13px;
					line-height: 70px;
				}
				#icon > ul > li > a{
					text-decoration: none;
					font-size: 18px;
					font-weight: 700;
					color: #734D32;
				}
				#icon > ul > li > a:hover{
					color: #FF9E00;
				}
				#icon > ul > li > p{
					color: #734D32;
					font-size: 20px;
					font-weight: 800;
				}
			/* ��� �� */
				center{
					margin-top: 300px;
				}
				#warn-img{
					width: 80px; height: 80px;

				}
</style>	

</head>
<body>
  <div id="wrap">
	<div id="logo">
		<img src="./img/main_logo.png">
	</div>
<%
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";   //  DB���� project�ӿ� ����!(��� �ҽ��ڵ� Ȯ��!)
     String DB_ID="gamjatec"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

    String id = request.getParameter("id");            //  �α�����(login.jsp)���� �Է��� ID�� �Ѱܹ���
    String pass = request.getParameter("pass");  //  �α�����(login.jsp)���� �Է��� PW�� �Ѱܹ���

     //  �α�����(login.jsp)���� �Է��� ID�� ������ ���ڵ带 member ���̺��� ��ȸ��
    String jsql = "select * from member where memId = ? "; 
    PreparedStatement pstmt = con.prepareStatement(jsql);
    pstmt.setString(1, id);

    ResultSet rs = pstmt.executeQuery(); 

    if( rs.next() )   //  (1) �Է��� ID�� ������ ���ڵ尡 member���̺� �����ϴ� ���
    {
        if (pass.equals(rs.getString("memPw")))  
    	//  (1.1) �Է��� ID�� ������ ���ڵ尡 �����ϸ鼭, 
	    //	        �Է��� ��й�ȣ�� member���̺���� ��й�ȣ�͵� ��ġ�ϴ� ���
        {
             session.setAttribute("sid", id);
 	      // �α��� ������, ������ ������� ID�� "sid" �Ӽ��� �Ӽ������� ������.
          // ���� �α��� �� ���¿��� ���� ID�� ���õ� ������ �ʿ�� �Ҷ�,
	      // (String)session.getAttribute("sid")�� �̿��Ͽ� ���� ID ������ ������ �� �ִ�.
     	  // �ܼ���, �α��� ���� �Ǻ��� �� �Ӽ����� null���� �ƴ����� �α��� ���θ� Ȯ����. 
	      //  (�α����� �ȵ� ���, �� ���� null���� ����)

             response.sendRedirect("a_main.jsp");   	//  <jsp:forward page="index.jsp"/> �� ������

		 } else {   // (1.2) �Է��� ID�� ������ ���ڵ尡 member���̺� ����������, ��й�ȣ�� ����ġ�� ���
%>
      <br><br><br>

	  <div>
	  	<img src="./img/lg-ok/warning.png">
	  </div>
      <font id="error">!! �α��� ��й�ȣ ���� !!</font><p><br><br>
      <font id="error-r"> �Է��Ͻ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�<br>�ٽ� Ȯ�����ּ���</font>
	  <div id="box">
		  <div id="back">
			<p>�α��� ��������<br>���ư���</p>
			<button><a href="login.jsp">LOGIN</a></button>
		  </div>
		  <div id="back">
			<p>������������<br>���ư���</p>
			<button><a href="a_main_r.jsp">HOME</a></button>
		  </div>
	  </div>
<%       
        }   //  �ι�° if-else���� ��      
    } else {    //  (2)  �Է��� ID�� ������ ���ڵ尡 member���̺� �������� �ʴ� ���
 %>
       <br><br><br>
	  <font id="error">!! �α��� ���̵� ���� !!</font><br><br><br>
	 <font id="error-r"> �Է��Ͻ� ���̵� �������� �ʽ��ϴ�<br>�ٽ� Ȯ�����ּ���</font>
	 <div id="box">
		<div id="back">
			<p>�α��� ��������<br>���ư���</p>
			<button><a href="login.jsp">LOGIN</a></button>
		</div>
		<div id="back">
			<p>������������<br>���ư���</p>
			<button><a href="a_main_r.html">HOME</a></button>
		</div>
	 </div>
<%
   }  // ù��° if-else���� ��
%>

</body>
</html>

