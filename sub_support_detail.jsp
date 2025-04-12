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
     height: 1500px;
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

   #spt-details {
     width: 1430px; height: 1500px;
     margin-top: 100px;
   }

   #spt-img {
     float: left;
     margin-right: 65px;
   }
   #spt-img > img {
     border-radius: 10px;
   }
   #spt-hd {
     width: 550px; height: 126px;
     float: left;
     margin-top: 30px;
   }
   #spt-hd > h1 {
     font-size: 35px;
     color: #734D32;
     letter-spacing: -1px;
     text-align: left;
   }
   #spt-hd > h2 {
     font-size: 25px;
     color: #B78B6C;
     letter-spacing: -1px;
     margin-top: 20px;
     text-align: left;
     font-family: 'nanumR';
   }

   #spt-pcbox {
     width: 100%; height: 185px;
     margin-top: 46px;
     border: 3px solid #E6D7CB;
     border-radius: 20px;
   }
   #spt-pcbox2 {
     width: 129px; height: 40px;
     background-color: #FFDDA1;
     border-radius: 10px;
     float: left;
     margin: 34px 0px 0px 39px;
   }
   #spt-pcbox2 > h3 {
     font-size: 20px;
     color: #734D32;
     margin-top: 10px;
   }
   #spt-progress {
     width: 484px; height: 20px;
     margin-top: 25px;
     appearance: none;
   }
   #spt-progress::-webkit-progress-bar {
     background-color: #FFF2DC;
     border: none;
     border-radius: 50px;
   }
   #spt-progress::-webkit-progress-value {
     background-color: #FF9E00;
     border-radius: 50px;
   }
   #spt-pcbox > h1 {
     float: left;
     font-size: 20px;
     color: #734D32;
     letter-spacing: -1px;
     margin: 16px 0px 0px 44px;
   }
   #spt-pcbox > h2 {
     float: right;
     font-size: 20px;
     color: #734D32;
     letter-spacing: -1px;
     margin-top: 16px;
     margin-right: 40px;
   }
   #spt-pcbox3 {
     width: 549px; height: 200px;
     margin-top: 50px;
   }
   #spt-pcbox3 > h2 {
     font-size: 25px;
     color: #734D32;
     font-family: 'nanumR';
     letter-spacing: -1px;
   }
   #spt-pcbox3 > h1 {
     font-size: 27px;
     color: #734D32;
     font-family: 'nanumEB';
     letter-spacing: -1px;
     margin-top: 8px;
   }
   #spt-pcbox3 > button {
     width: 549px; height: 77px;
     margin-top: 27px;
     background-color: #FF9E00;
     border: 3px solid #B78B6C;
     border-radius: 50px;
     box-shadow: 0px 4px 4px 0px #E6D7CB;
     font-size: 34px;
     color: #ffffff;
     font-family: 'nanumB';
     letter-spacing: -1px;
     cursor: pointer;
   }
   #spt-story {
     width: 100%; height: 510px;
     display: inline-block;
     margin-top: 80px;
     border: 3px solid #E6D7CB;
     border-radius: 25px;
   }
   #spt-story-hd {
     width: 347px; height: 80px;
     margin-top: 64px;
     margin-left: 84px;
     float: left;
     display: block;

   }
   #spt-story-hd > h1 {
     font-size: 35px;
     color: #734D32;
     float: left;
     font-family: 'nanumB';
   }
   #spt-story-hd > img {
     float: left;
     margin-left: 13px;
   }
   #spt-story-hd > hr {
     width: 330px; height: 3px;
     border: 0;
     background-color: #E6D7CB;
     margin-top: 60px;
   }
   #spt-story-box {
     width: 1250px; height: 280px;
     margin: 40px;
     display: inline-block;

   }
   #spt-story-box > h2 {
     display: block;
     font-size: 25px;
     color: #734D32;
     text-align: left;
     line-height: 50px;
     font-family: 'nanumR';
   }
  </style>
<body>
<%
try {
     String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  //  접속할 DB명
     String DB_ID="gamjatec";  //  접속할 아이디
     String DB_PASSWORD="abcd"; // 접속할 패스워드
     
    Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
     Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

      String no = request.getParameter("no");

    String jsql = "SELECT * FROM support WHERE sptNo = ?";   
     PreparedStatement  pstmt  = con.prepareStatement(jsql);
    pstmt.setString(1, no);
    
    ResultSet rs = pstmt.executeQuery();//SQL문 실행   
    rs.next();

    String sptPtname = rs.getString("sptPtname");
     String sptMoney =  rs.getString("sptMoney");
    String sptTitle =  rs.getString("sptTitle");
    String sptMemo =  rs.getString("sptMemo");
%>
  <div id="wrap">
    <section id="helper-bg">
      <article id="helper-hd">
        <hr>
      </article>
      <div id="spt-details">
        <div id="spt-img">
          <img src="./support/<%=no%>.jpg" width="812px" height="636px">
        </div>
        <div id="spt-hd">
          <h1><%=sptTitle%></h1>
          <h2>평택 안다동물보호소</h2>
          <div id="spt-pcbox">
            <div id="spt-pcbox2">
              <h3>0% 달성 (0원)</h3>
            </div>
            <progress id="spt-progress" value="0" min="0" max="100"></progress>
            <h1>0원</h1>
            <h2><%=sptMoney%>원</h2>
          </div>
          <div id="spt-pcbox3">
            <h2>기부금 100% 전액은 보호소에 전달됩니다</h2>
            <h1>마음을 모아 함께 따뜻해져요</h1>
            <button id="donateButton">기부하기</button>
            <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
            <script>
               IMP.init("imp87480883");

               const button = document.querySelector("button");

               const onClickPay = async () => {
                  IMP.request_pay({
                     pg: "kakaopay",
                     pay_method: "card",
                     amount: "200000",
                     name: "후원하기",
                     merchant_uid: "ORD20240514-000001",
                  });
               };

               button.addEventListener("click", onClickPay);
            </script>
          </div>
        </div>
        <div id="spt-story">
          <div id="spt-story-hd">
          <h1><%=sptPtname%></h1><img src="img/spt-img.png" width="33px" height="33px">
          <hr>
          </div>
          <div id="spt-story-box">
          <h2> <%=sptMemo%></h2>
            </div>
        </div>
      </div>

    </section>
 <%
    } catch (Exception e) {
       out.println(e);
}
%>
  <script>
      // 각 'progress' 태그를 순회합니다.
$('progress').each(function () {
    // 'value' 속성을 읽어와 'max' 변수에 저장합니다.
    const max = $(this).attr('value');
    // 0에서 'max'까지 1초(1000ms) 동안 애니메이션 합니다.
    $(this).val(0).animate({ value: max }, 1000);
});
      x// progress 모든 요소를 선택합니다.
const $counters = $("progress");

// 노출 비율(%)과 애니메이션 반복 여부(true/false)를 설정합니다.
const exposurePercentage = 100; // ex) 스크롤 했을 때 $counters 컨텐츠가 화면에 100% 노출되면 숫자가 올라갑니다.
const loop = true; // 애니메이션 반복 여부를 설정합니다. (true로 설정할 경우, 요소가 화면에서 사라질 때 다시 숨겨집니다.)

// 각 progress 요소에 대한 value 속성값을 배열에 추가합니다.
const maxValues = [];
$counters.each(function() {
    const max = $(this).attr('value');
    maxValues.push(max);
    $(this).val(0);
});

// 윈도우의 스크롤 이벤트를 모니터링합니다.
$(window).on('scroll', function() {
    // 각 "scroll_on" 클래스를 가진 요소에 대해 반복합니다.
    $counters.each(function(i) {
        const $el = $(this);

        // 요소의 위치 정보를 가져옵니다.
        const rect = $el[0].getBoundingClientRect();
        const winHeight = window.innerHeight; // 현재 브라우저 창의 높이
        const contentHeight = rect.bottom - rect.top; // 요소의 높이
        
        // 요소가 화면에 특정 비율만큼 노출될 때 처리합니다.
        if (rect.top <= winHeight - (contentHeight * exposurePercentage / 100) && rect.bottom >= (contentHeight * exposurePercentage / 100)) {
            if (!$el.hasClass('animated')){
                $el.stop().animate({ value: maxValues[i] }, 1000).addClass('animated');
            }
        }

        // 요소가 화면에서 완전히 사라졌을 때 처리합니다.
        if (loop && (rect.bottom <= 0 || rect.top >= window.innerHeight)) {
            if ($el.hasClass('animated')){
                $el.stop().val(0).removeClass('animated');
            }
        }
    });
}).scroll();

  </script>
 
</body>
</html>