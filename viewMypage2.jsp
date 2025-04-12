<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>mypage</title>
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
/* mypage_profile */

#mypage-bg {
  width: 100%; height: 1500px;
  margin-top: 150px;
}
#mypage-hd > hr {
    margin-top: 40px;
    margin-left: auto;
    margin-right: auto;
    width: 1614px;
    height: 3px;
    background-color: #D4AB8D4D;
    border: 0;
  }
  #mypage-hd2 {
    width: 250px;
    height: 100px;
    margin-top: 85px;
  }
  #mypage-hd2 > h2 {
  font-size: 20px;
  color: #B78B6C;
  }
  #mypage-hd2 > h1 {
  font-size: 40px;
  color: #734D32;
  font-weight: 700;
  font-family: 'nanumEB';
  letter-spacing: -2px;
  transform : rotate(0.04deg); 
  
  }
  #mypage-hd2 > hr {
    width: 155px;
    height: 6px;
    background-color: #FF9E00;
    border: 0;
    border-radius: 10px;
}

#mypage-box {
    width: 1400px; height: 700px;
    margin-top: 70px;
}
#mypage-menu {
    width: 270px; height: 600px;
    float: left;
}
#mp-menu {
  width: 200px; height: 100%;
  float: left;
}
#mp-menu > ul > li {
  width: 150px;
  list-style: none;
  text-align: right;
  font-size: 25px;
  font-family: 'nanumEB';
  color: #734D32;
  margin-bottom: 40px;
  margin-right: 30px;
  cursor: pointer;
}
#mp-menu > ul > li:hover {
  color: #FF9E00;
}
#mp-menu > ul > li a {
  color: inherit; /* �θ� ��ҷκ��� ��ӵ� ���� ���� */
  text-decoration: none; /* ���� ���� */
}
#mypage-menu > img {
  float: right;
  margin-right: 30px;
}
#mp-profile {
  width: 1100px; height: 500px;
  float: right;
  border: 3px solid #E6D7CB;
  border-radius: 40px;
}
#mp-profile-img {
  width: 400px; height: 340px;
  margin: 75px 0px 0px 82px;
  float: left;
}
#profile-img {
  width: 330px; height: 330px;
  border-radius: 200px;
  border: 3px solid #734D32;
  margin-right: 57px;
}

#mp-profile-content {
  width: 530px; height: 345px;
  float: right;
  margin-top: 90px;
  margin-right: 50px;
}
#mp-profile-content > table {
  float: left;
  width: 530px; height: 345px;
}
.mp-pf1 {
  width: 80px;
  font-size: 21px;
  color: #734D32;
  font-family: 'nanumB';
  text-align: right;
}
.mp-pf2 {
  width: 360px;
  font-size: 29px;
  color: #734D32;
  font-family: 'nanumEB';
  text-align: left;
  padding-left: 20px;
}
.mp-pf2 > input {
  width: 350px; height: 50px;
  border-radius: 50px;
  border: 2.5px solid #B78B6C;
  font-size: 23px;
  color: #734D32;
  font-family: 'nanumB';
  padding-left: 30px;
  letter-spacing: -1px;
}

.flex-container {
  display: flex;
}
.wrapper {
  text-align: center;
  flex-grow: 1;
  
  .image-box {
    width: 280px;
    height: 280px;
    object-fit: cover;
    display: block;
    margin: 10px auto;
    border-radius: 150px;
  }

  .upload-btn {
    width: 194px; height: 30px;
    margin-top: 5px;
    border: 1px solid #B78B6C;
    background-color: #FFFAF0;
    border-radius: 20px;
    padding: 14px 0px 0px 0px;
    display: inline-block;
    cursor: pointer;
    font-size: 16px;
    color: #734D32;
    font-family: 'nanumEB';

    input[type=file] {
      display: none;
    }
  }
}

#mypage-box > button {
  width: 280px; height: 72px;
  margin-top: 55px;
  background-color: #ffffff;
  border: 3px solid #B78B6C;
  border-radius: 50px;
  color: #734D32;
  font-size: 25px;
  font-family: 'nanumEB';
  cursor: pointer;
}
#mypage-box > button:hover {
  background-color: #FFF2DC;
}


/* ��й�ȣ ���� */
#mp-pwchange {
  width: 1100px; height: 430px;
  float: right;
  border: 3px solid #E6D7CB;
  border-radius: 40px;
}
#mp-pwchange > table {
  width: 760px; height: 330px;
  margin-top: 55px;
  font-size: 22px;
  font-family: 'nanumEB';
  color: #734D32;
}
.pwcg {
  width: 180px;
  text-align: right;
}
.pwcg-input > input {
  width: 480px; height: 67px;
  border: 2.5px solid #B78B6C;
  border-radius: 50px;
  padding-left: 30px;
  color: #734D32;
  font-size: 21px;
  font-family: 'nanumB';
}
.pwcg-input > input::placeholder {
  color: #D4AB8D;
  font-size: 17px;
  font-family: 'nanumR';
}

/* ���� �� �� */
#mp-wrote {
  width: 1100px; height: 100%;
  float: right;
  border: 3px solid #E6D7CB;
  border-radius: 40px;
  padding-top: 10px;
}
#wrote-table {
  width: 1000px; height: 100%;
}
#wrote-table th {
  color: #B78B6C;
  font-size: 20px;
  font-family: 'nanumB';
  border-bottom: 2px solid #E6D7CB;
}
#wrote-table td {
  color: #734D32;
  font-size: 23px;
  font-family: 'nanumB';
  border-bottom: 1px solid #E6D7CB;

}
button{
   width:300px;
   height:70px;
   border-radius: 50px;
   background-color:#FFF2DC;
   border-color: #B78B6C;
   font-size:25px;
   margin-top:20px;
   font-family: 'nanumB';
   color: #734D32;
}


   </style>
</head>
<body>
<%
   String id = (String)session.getAttribute("sid");  
   // �α��� ������ �ο��� "sid" �Ӽ��� �Ӽ����� "Ư��ȸ���� ���̵�"�� ��Ÿ����, 
   // �� �Ӽ����� null���� �ƴ����� �α��� ���θ� Ȯ����. (�α����� �ȵ� ���, �� ���� null���� ����)
   // login_ok.jsp�� �ʹݺ� �ڵ� Ȯ�� ���!  ==> session.setAttribute("sid", id); �κ� Ȯ�ο��!

if (id == null) 
{
%>
<center>
<br><br><br> 
<font style="font-size:10pt;font-family:���� ���">
      �α����� �ʿ��մϴ�! <br><br>   <a href="login.jsp" ></a>
</font>
</center>
<%
}
else
{
 try {
   String DB_URL="jdbc:mysql://localhost:3306/gamjatec";
     String DB_ID="gamjatec"; 
     String DB_PASSWORD="abcd";
     
    Class.forName("org.gjt.mm.mysql.Driver");  
     Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
   

   String jsql = "select memPw from member where memId = ?";
   PreparedStatement pstmt = con.prepareStatement(jsql);
   pstmt.setString(1,id);

   ResultSet rs = pstmt.executeQuery();
   rs.next();

   String memPw = rs.getString("memPw");
   
   
%>

   <section id="mypage-bg">
        <article id="mypage-hd">
            <hr>
            <div id="mypage-hd2">
              <h2>MY PAGE</h2>
              <h1>��й�ȣ ����</h1>
              <hr>
            </div>
      <div id="mypage-box">
        <div id="mypage-menu">
            <div id="mp-menu">
              <ul>
                <li><a href="./mypage.jsp">�� ������</a></li>
                <li><a href="./viewMypage1.jsp">������ ����</a></li>
                <li><font color="#FF9E00">��й�ȣ ����</font></li>
                <li><a href="./viewMypage3.jsp">���� �� ��</a></li>
              </ul>
            </div>
            <img src="img/hr.png">
        </div>
      <form method="post" action="updatePwResult.jsp"  onsubmit="return checkValue2()">
        <div id="mp-pwchange">
            <table>
                <tr>
         <td lass="pwcg">���� ��й�ȣ</td>
         <td><input type="hidden" name="no" value="<%=id%>"><%=memPw%></td>
      </tr>
                <tr><td class="pwcg">�� ��й�ȣ</td><td class="pwcg-input"><input type="password" name="memPw" value="<%=memPw%>" required></td></tr>
                <tr><td class="pwcg">�� ��й�ȣ Ȯ��</td><td class="pwcg-input"><input type="password" placeholder="�� ��й�ȣ�� �ٽ� �Է��ϼ���"></td></tr>
            </table>
         
        </div>
        <button type="submit">�����ϱ�</button>
      </div>
</form>
    </section>
   <%
          } catch (Exception e) {
              out.println(e);
          }
 %>
<%
}
%>
</body>
</html>