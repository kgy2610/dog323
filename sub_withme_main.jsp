<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>


<html lang="UTF-8">
<head>
  <meta charset="UTF-8">
  <title>입양하기</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="./img/favicon-32x32.png">
  
</head>
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
	  /* overflow-y: hidden; */
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
  width: 100%;
  margin-top: 40px;
  margin-bottom: 120px;
}
#wm-bg > hr {
  margin-top: 40px;
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
  margin-left: -10px;
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
}input[type="search"]{
  font-family: 'NanumSquareRound';
}
.sc-btn {
  width: 35px; height: 35px;
  background-image: url('img/sc-icon.png');
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
  margin-left: 720px;
  display: block;
  padding: 0px 10px 5px 10px;
}

/* with me 카드 */

#wm-card {
  width: 1600px; height: auto;
  margin-top: 15px;
  margin-left: 250px;
  margin-bottom: 2000px;
}

.card-list {
  width: 100%;
  padding: 0 auto;
  margin: 0 auto;
}
.card-item {
  list-style: none;
  width: 309px;height: 450px;
  margin: 5px 45px 20px 0px;
  float: left;
  border-radius: 20px;
  border: 3px solid #E6D7CB;
}
.card-item:hover{
  background-color: #FFF2DC;
  border: 3px solid #B78B6C;
}
.card-item > a {
  text-decoration: none;
}
.card-item > a > img {
  padding: 20px 0px 0px 0px;
  border-radius: 10px;
}
.card-namebox {
  width: 193px;
  height: 45px;
  background-color: #FF9E00;
  border-radius: 30px;
  padding-top: 15px;
  position: relative;
  bottom: 40px;
  box-shadow: #E6D7CB 0px 4px 4px 0px;
}
.card-namebox > p {
  color: white;
  text-align: center;
  font-size: 27px;
  font-family: 'NanumSquareRound';
}
.card-item > a > h1 {
  color: #734D32;
  text-align: center;
  font-size: 28px;
  font-family: 'NanumSquareRound';
  position: relative;
  margin-top: -5px;
  -webkit-text-stroke: #734D32 0.5px;
  bottom: 20px;
}
.card-item > a > h2 {
  color: #734D32;
  text-align: center;
  font-size: 21px;
  position: relative;
  bottom: 10px;
}
.cont-dropdown {
  width: 700px;
  display: inline-block;
  margin-top: 10px;
  margin-left: -80px;
}
.cont-dropdown > ul > li{
  width: 150px; height: 52px;
  list-style-type: none;
  float: left;
  margin-left: 15px;
}
.btn-dropdown {
  width: ;
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

/* with me card */
	a{
		text-decoration: none;
		color: 734D32;
	}
	#Clayout{
		margin-left: 155;
		margin-top: -100px;
	}
	#card{
		width: 362px;
		height: 525px;
		border: 3px solid #E6D7CB;
		border-radius: 20px;
		float: left;
		margin: 18px 15px 18px 15px;
	}
	#Cimg{
		width: 310px; height: 310px;
		border-radius: 10px;
		margin-top: 28px;
		margin-bottom: 23px;
		overflow: hidden;
	}
	#Cimg img{
		width: 100%; height: 100%
	}
	#Cname a{
		margin-top: 23px;
		font-size: 30px;
		font-weight: 800;
	}
	#card hr{
		border: none;
		background-color: B78B6C;
		width: 263px; height: 2px;
	}
	#Ckind a{
		font-size: 30px;
		font-weight: 800px;
	}
	#Caddress a{
		font-size: 20px;
		font-weight: 700px;
	}
</style>
<body>
  <div id="wrap">
   <article id="wm-bg">
      <hr>
      <div class="wm-hd">
        <div class="hd">
          <h2>With Me!</h2>
          <h1>입양하기</h1>
        </div>
        <div id="search">
          <form id="search-form">
            <input type="search" id="sc" placeholder="검색어를 입력하세요">
            <input type="image" src="./img/sub_withme/sc-Icon.png" class="sc-btn">
          </form>
        </div>
        <div class="allbtn">
          <a href="#" id="show-all-btn"><img src="./img/sub_withme/watchall.png"><p>전체보기</p></a>
        </div>
        <div id="category">
          <article class="cont-dropdown">
              <ul>
                <li><button class="btn-dropdown" type="button" onclick="filterBySize('소형')">소형견</button></li>
                <li><button class="btn-dropdown" type="button" onclick="filterBySize('중형')">중형견</button></li>
                <li><button class="btn-dropdown" type="button" onclick="filterBySize('대형')">대형견</button></li>
              </ul>
          </article>
        </div>
        <div class="newbtn">
          <a href="insert_withme.jsp"><p>등록하기</p></a><img src="./img/sub_withme/registration.png">
        </div>
      </div>
    </article>

  <% 
  try {
    String DB_URL = "jdbc:mysql://localhost:3306/gamjatec"; 
    String DB_ID = "gamjatec"; 
    String DB_PASSWORD = "abcd"; 

    Class.forName("org.gjt.mm.mysql.Driver");
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
    String jsql = "SELECT * FROM withme";   
    PreparedStatement pstmt = con.prepareStatement(jsql);
    ResultSet rs = pstmt.executeQuery();

    int counter = 1; 

    while(rs.next()) {
      String wmDname = rs.getString("wmDname");
      String wmDkind = rs.getString("wmDkind");
      String wmDsex = rs.getString("wmDsex");
     String wmAddress = rs.getString("wmAddress");
     String dogNo = rs.getString("dogNo");
     String wmDsize = rs.getString("wmDsize");
  %>
   <div id="Clayout" class="card" data-size="<%= wmDsize %>" data-kind="<%= wmDkind %>">
          <div id="card">
            <div id="Cimg">
               <a href="sub_withme_detail.jsp?dogNo=<%= dogNo %>"><img src="withme/<%= dogNo %>.jpg"></a>
            </div>
            <div id="Cname">
               <a href="sub_withme_detail.jsp?dogNo=<%= dogNo %>"><%= wmDname %></a>
            </div>
            <br>
            <hr>
            <br>
            <div id="Ckind">
               <a href="sub_withme_detail.jsp?dogNo=<%= dogNo %>"><%= wmDkind %> | </a><a href="sub_withme_detail.jsp?dogNo=<%= dogNo %>"><%= wmDsex %></a>
            </div>
            <div id="Caddress">
               <a href="sub_withme_detail.jsp?dogNo=<%= dogNo %>"><%= wmAddress %> | </a><a href="sub_withme_detail.jsp?dogNo=<%= dogNo %>"><%= wmDsize %></a>
            </div>
         </div>
        </div>
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
    </div>
    <script>
      document.getElementById('search-form').addEventListener('submit', function(event) {
        event.preventDefault();
        var keyword = document.getElementById('sc').value.toLowerCase();
        filterByKeyword(keyword);
      });

      document.getElementById('show-all-btn').addEventListener('click', function() {
        var cards = document.querySelectorAll('.card');
        cards.forEach(function(card) {
          card.style.display = 'block';
        });
      });

      function filterBySize(size) {
        var cards = document.querySelectorAll('.card');
        cards.forEach(function(card) {
          var sizeText = card.getAttribute('data-size');
          if (sizeText !== size) {
            card.style.display = 'none';
          } else {
            card.style.display = 'block';
          }
        });
      }

      function filterByKeyword(keyword) {
        var cards = document.querySelectorAll('.card');
        cards.forEach(function(card) {
          var kindText = card.getAttribute('data-kind').toLowerCase();
          if (!kindText.includes(keyword)) {
            card.style.display = 'none';
          } else {
            card.style.display = 'block';
          }
        });
      }
    </script>
</body>

    </html>