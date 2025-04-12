<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>봤습니다</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="./img/favicon-32x32.png">
</head>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Roboto:wght@100&display=swap');
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

	/* -------With me-------- */

	#wm-bg {
	  width: 100%; height: 450px;
	  margin-top: 40px;
	}
	#wm-bg > hr {
	  margin-left: auto;
	  margin-right: auto;
	  width: 1614px;
	  height: 1.5px;
	  background-color: rgba(212, 171, 141, 0.3);
	  border: 0;
	}
	.wm-hd {
	  width: 100%;
	  height: 300px;
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
	#search {
	  width: 700px;
	  height: 100px;
	  margin-top: 5px;
	}
	#sc {
	  width: 680px;
	  height: 68px;
	  margin-top: 10px;
	  margin-left: 10px;
	  padding-right: 70px;
	  border-radius: 50px;
	  padding-left: 30px;
	  border: 2px solid #B78B6C;
	  outline: #B78B6C;
	  font-size: 20px;
	  color: #734D32;
	  background-color: #FFF2DC;
	  font-family: 'NanumSquareRound';
	  letter-spacing: -1px;
	  
	}
	input[type="submit"] {
	  display: none;
	}
	.sc-btn {
	  width: 35px; height: 35px;
	  border: 0;
	  float:right;
	  position: relative;
	  bottom: 50px;
	  right: 35px;
	  cursor: pointer;
	}
	.allbtn {
	  width: 130px;height: 30px;
	  float: left;
	  margin: 40px 0px 0px 250px;
	}
	.allbtn > a{
	  text-decoration: none;
	}
	.allbtn > a > img{
	  float: left;
	  padding-left: 20px;
	}
	.allbtn > a > p{
	  font-size: 20px;
	  color: #734D32;
	  -webkit-text-stroke: 0.5px #734D32;
	  text-decoration: none;
	  font-family: 'NanumSquareRound';
	  line-height: 22px;
	}
	.allbtn > a > p:hover{
	  -webkit-text-stroke: 1px #734D32;
	}
	.newbtn{
	  width: 130px;height: 30px;
	  float: right;
	  margin: -50px 280px 0px 0px;
	}
	.newbtn > a{
	  text-decoration: none;
	  line-height: 1px;
	}
	.newbtn > a > p{
	  font-size: 20px;
	  margin-right: 5px;
	  color: #734D32;
	  -webkit-text-stroke: 0.5px #734D32;
	  text-decoration: none;
	  font-family: 'NanumSquareRound';
	}
	.newbtn > a > p:hover{
	  -webkit-text-stroke: 1px #734D32;
	}
	.newbtn > img{
	  float: right;
	  margin-top: -10px;
	}
	#category {
	  width: 600px;
	  height: 80px;
	  margin-top: 5px;
	  display: block;
	  padding: 0px 10px 5px 10px;
	}

	.community-list {
	  width: 1490px; height: auto;
	  border: #E6D7CB 3px solid;
	  border-radius: 50px;
	  list-style: none;
	  margin-left: 230px;
	  padding: 0;
	}
	.community-item {
	  width: 1380px;
	  height: 75px;
	  margin-bottom: 10px;
	  padding-bottom: 10px;
	  display: flex;
	  align-items: center;
	  border-bottom: 2px #E6D7CB solid;
	}
	.community-item:last-child{
	  border: none;
	}
	.community-item > .reg, .title1{
	  border-right: #E6D7CB 1px solid;
	}
	.community-item:first-child{
	  color: #B78B6C;
	  font-size: 20px;
	}

	.community-item .reg {
	  width: 340px;
	  text-align: center;
	  font-size: 20px;
	  margin-top: 15px;
	  font-weight: 800;
	}
	.community-item .region{
	  width: 20%;
	  text-align: center;
	  font-size: 25px;
	  color: #734D32;
	  -webkit-text-stroke: 1px #734D32;
	}
	.community-item .title1{
	  width: 837px;
	  padding: 0 10px;
	  text-align: center;
	  font-size: 20px;
	  margin-top: 15px;
	  font-weight: 800;
	}
	.community-item .title {
	  width: 60%;
	  font-size: 24px;
	  color: #734D32;
	  text-align: left;
	  padding-left: 50px;
	  -webkit-text-stroke: 0.5px #734D32;
	}

	.community-item .date1 {
	  width: 263px;
	  text-align: center;
	  font-size: 20px;
	  margin-top: 15px;
	  font-weight: 800;
	}
	.community-item .date {
	  width: 10%;
	  text-align: right;
	  padding-right: 60px;
	  font-size: 21px;
	  color: #734D32;
	  -webkit-text-stroke: 0.5px #734D32;
	}
	#page{
	  margin-top: 50px;
	  font-size: 30px;
	  color: #734D32;
	}
	.blind {
	  position: absolute;
	  clip: rect(0 0 0 0);
	  width: 1px;
	  height: 1px;
	  margin: -1px;
	  overflow: hidden;
	}

	.cont-dropdown {
	  width: 176px;
	  display: inline-block;
	  margin-top: 10px;
	}

	.btn-dropdown {
	  width: 100%;
	  height: 52px;
	  margin-bottom: 9px;
	  padding: 12px 30px 12px 30px;
	  border: 2px solid #B78B6C;
	  border-radius: 30px;
	  box-sizing: border-box;
	  font-size: 20px;
	  letter-spacing: -1px;
	  font-family: 'NanumSquareRound';
	  line-height: 26px;
	  background-color: white;
	  color: #734D32;
	  -webkit-text-stroke: #734D32 0.5px;
	  cursor: pointer;
	}

	.btn-dropdown:focus {
	  border: 2px solid #B78B6C;
	}

	.btn-dropdown.on + .ul-language {
	  display: block;
	}

	ul.ul-language {
	  display: none;
	  width: 100%;
	  background: #ffffff;
	  border: 2px solid #B78B6C;
	  box-sizing: border-box;
	  box-shadow: 2px 2px 10px #B78B6C(218, 218, 218, 0.3);
	  border-radius: 30px;
	  padding: 4px 0;
	  position: relative;
	}
	.ul-language > li {
	  list-style: none;
	}

	.ul-language.on {
	  display: block;
	}

	.btn-language {
	  width: 157px;
	  height: 40px;
	  font-weight: 600;
	  font-size: 17px;
	  padding: 7px 0px 7px 0px;
	  margin: 5px 8px;
	  border: 2px;
	  background-color: white;
	  color: #734D32;
	  letter-spacing: -1px;
	  font-family: 'NanumSquareRound';
	}

	.btn-language:hover {
	  background-color: #B78B6C;
	  color: white;
	  outline: 1px solid #f8e4ff;
	  border-radius: 30px;
	}
	#table{
		width: 1550px; height: auto;
		margin-top: 110px;
		border: #E6D7CB 3px solid;
		border-radius: 50px;
	}
	#dataTable{
		border-collapse: collapse;
	}
	tr {
		padding-top: 20px;
		border-bottom: 1px solid #E6D7CB;
		
	}
	tr:last-child {
		border-bottom: none;
	}
	#title td {
		font-weight: bold;
		padding: 20px 0 20px 0;
	}
	#title{
		font-size: 25px;
		color: #B78B6C;
	}
	#title #line{
		font-size: 20px;
		line-height: 20px;
	}
	#add a{
		text-decoration: none;
		color: #734D32;
		font-size: 30px;
		font-weight: 800;
		line-height: 30px;
	}
	#tit a{
		font-size: 28px;
		text-decoration: none;
		color: #734D32;
		padding-left: 15px;
		line-height: 30px;
	}


</style>
<body>
  <div id="wrap">
    <article id="wm-bg">
  <hr>
  <div class="wm-hd">
    <div class="hd">
      <h2>Find me</h2>
      <h1>봤습니다</h1>
      <hr>
    </div>
    <div id="search">
        <input type="search" id="sc" onkeyup="searchTable()" placeholder="검색어를 입력하세요">
    </div>
    <div class="allbtn">
        <a href="insert_findme_look.jsp"><img src="./img/sub_withme/registration.png"><p>제보하기</p></a>
    </div>

    <div id="table">
        <table id="dataTable">
            <tr id="title">
                <td align="center" width="360px" id="reg">지역</td>
                <td align="center" id="line"> | </td>
                <td align="center" width="1100px" id="content">내용</td>
            </tr>
            <% 
            try {
                String DB_URL = "jdbc:mysql://localhost:3306/gamjatec"; 
                String DB_ID = "gamjatec"; 
                String DB_PASSWORD = "abcd"; 

                Class.forName("org.gjt.mm.mysql.Driver"); 
                Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
                String jsql = "SELECT * FROM findmelook";   
                PreparedStatement pstmt = con.prepareStatement(jsql);
                ResultSet rs = pstmt.executeQuery();

                int counter = 1; 

                while(rs.next()) {
                    String lookadress = rs.getString("lookadress");
                    String title = rs.getString("looktitle");
                    String lookno = rs.getString("lookno");
            %>
            <tr>
                <td style="padding: 20px 0 20px 0;" align="center" id="add"><a href="sub_findme_watch_detail.jsp?lookno=<%=lookno%>"><%= lookadress %></a></td>
                <td></td>
                <td style="padding: 20px 0 20px 0;" align="left" id="tit"><a href="sub_findme_watch_detail.jsp?lookno=<%=lookno%>"><%= title %></a></td>
            </tr>
            <% 
                    counter++; 
                }
                rs.close();
                pstmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            %>
        </table>
    </div>

	<script>
        function searchTable() {
            var input, filter, table, tr, td, i, j, txtValue;
            input = document.getElementById("sc");
            filter = input.value.toLowerCase();
            table = document.getElementById("dataTable");
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) {
                tr[i].style.display = "none";
                td = tr[i].getElementsByTagName("td");
                for (j = 0; j < td.length; j++) {
                    if (td[j]) {
                        txtValue = td[j].textContent || td[j].innerText;
                        if (txtValue.toLowerCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                            break;
                        }
                    }
                }
            }
        }
    </script>
    <script>
      const btn = document.querySelector('.btn-dropdown');
      const list = document.querySelector('.ul-language');
      btn.addEventListener('click', () => {
        list.classList.toggle('on');
      });
      list.addEventListener('click', (event) => {
        if (event.target.nodeName === 'BUTTON') {
          btn.innerText = event.target.innerText;
          list.classList.remove('on');
        }
      });
    </script>
    </body>
    </html>