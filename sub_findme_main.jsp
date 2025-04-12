<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>찾습니다</title>
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
	  width: 100%; height: auto;
	  padding-top: 20px;
	}
	#wm-bg > hr {
	  margin-top: 20px;
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
	  display: block;
	  padding: 0px 10px 5px 10px;
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
	  width: 176;
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


	/* find me card */
	a{
		text-decoration: none;
		color: 734D32;
	}
	#Clayout{
		margin-left: 155;
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
		font-size: 30px;
		font-weight: 800;
	}
	#Cplace a{
		margin-top: 20px;
		font-size: 30px;
		font-weight: 800;
	}
	#card hr{
		border: none;
		background-color: B78B6C;
		width: 263px; height: 2px;
	}
	#Ckind a{
		font-size: 25px;
		font-weight: 700;
	}
	#Cmemo a{
		font-size: 20px;
		font-weight: 700;
	}
	#Csize a{
		font-size: 15px;
		font-weight: 700;
	}
</style>
<body>
  <div id="wrap"> 
    <article id="wm-bg">
      <hr>
      <div class="wm-hd">
        <div class="hd">
          <h2>Find me</h2>
          <h1>찾습니다</h1>
          <hr>
        </div>
        <div id="search">
          <form action="sub_findme_main.jsp" method="get">
            <input type="search" id="sc" name="keyword" placeholder="검색어를 입력하세요">
            <input type="image" src="./img/sub_withme/sc-Icon.png" class="sc-btn">
          </form>
        </div>
        <div class="allbtn">
          <a href="sub_findme_main.jsp"><img src="./img/sub_withme/watchall.png"><p>전체보기</p></a>
        </div>
        <div id="category">
          <article class="cont-dropdown">
            <form action="">
              <button class="btn-dropdown" id="regionButton" type="button" onclick="toggleDropdown()">지역</button>
              <ul class="ul-language" id="dropdown-menu">
                <li>
                  <button class="btn-language" type="button" onclick="filterByRegion('서울')">서울</button>
                </li>
                <li>
                  <button class="btn-language" type="button" onclick="filterByRegion('경기도')">경기도</button>
                </li>
                <li>
                  <button class="btn-language" type="button" onclick="filterByRegion('인천')">인천</button>
                </li>
                <li>
                  <button class="btn-language" type="button" onclick="filterByRegion('충북')">충북</button>
                </li>
                <li>
                  <button class="btn-language" type="button" onclick="filterByRegion('충남')">충남</button>
                </li>
                <li>
                  <button class="btn-language" type="button" onclick="filterByRegion('대전')">대전</button>
                </li>
              </ul>
            </form>
          </article>
        </div>
        <div class="newbtn">
          <a href="insert_findme.jsp"><p>등록하기</p></a><img src="./img/sub_withme/registration.png">
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

        String keyword = request.getParameter("keyword"); // 사용자가 입력한 키워드 받기
        String jsql = "SELECT * FROM findme";
        if (keyword != null && !keyword.isEmpty()) {
          jsql += " WHERE fmDkind LIKE ?";
        }

        PreparedStatement pstmt = con.prepareStatement(jsql);
        if (keyword != null && !keyword.isEmpty()) {
          pstmt.setString(1, "%" + keyword + "%"); // 키워드를 SQL 쿼리에 설정
        }

        ResultSet rs = pstmt.executeQuery();

        int counter = 1;

        while(rs.next()) {
          String fmDplace = rs.getString("fmDplace");
          String fmDkind = rs.getString("fmDkind");
          String fmDmemo = rs.getString("fmDmemo");
          String fmdogNo = rs.getString("fmdogNo");

    %>
        <div id="Clayout">
          <div id="card">
            <div id="Cimg">
               <a href="sub_findme_detail.jsp?fmdogNo=<%=fmdogNo%>"><img src="findme/<%=fmdogNo%>.jpg"></a>
            </div>
            <div id="Cplace">
               <a href="sub_findme_detail.jsp?fmdogNo=<%=fmdogNo%>"><%= fmDplace%></a>
            </div>
            <br>
            <hr>
            <br>
            <div id="Ckind">
               <a href="sub_findme_detail.jsp?fmdogNo=<%=fmdogNo%>"><%= fmDkind%></a>
            </div>
            <div id="Cmemo">
               <a href="sub_findme_detail.jsp?fmdogNo=<%=fmdogNo%>"><%= fmDmemo%></a>
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
    function toggleDropdown() {
        var dropdownMenu = document.getElementById("dropdown-menu");
        if (dropdownMenu.style.display === "none" || dropdownMenu.style.display === "") {
            dropdownMenu.style.display = "block";
        } else {
            dropdownMenu.style.display = "none";
        }
    }

    function selectRegion(regionName) {
        document.getElementById("regionButton").innerText = regionName;
        document.getElementById("dropdown-menu").style.display = "none";
    }

    function filterByRegion(region) {
        var cards = document.querySelectorAll("#Clayout");
        cards.forEach(function(card) {
            var placeDiv = card.querySelector("#Cplace");
            if (placeDiv) {
                var placeText = placeDiv.innerText.trim();
                if (!placeText.includes(region)) {
                    card.style.display = "none";
                } else {
                    card.style.display = "block";
                }
            }
        });
    }

    // 드롭다운 외부 클릭 시 메뉴 닫기
    window.onclick = function(event) {
        if (!event.target.matches('.btn-dropdown')) {
            var dropdownMenu = document.getElementById("dropdown-menu");
            if (dropdownMenu.style.display === "block") {
                dropdownMenu.style.display = "none";
            }
        }
    }
  </script>
</body>

    </html>