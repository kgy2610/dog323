<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title>�Ŀ� ��</title></head>
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
     String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  //  ������ DB��
     String DB_ID="gamjatec";  //  ������ ���̵�
     String DB_PASSWORD="abcd"; // ������ �н�����
     
    Class.forName("org.gjt.mm.mysql.Driver");  // JDBC ����̹� �ε�
     Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

      String no = request.getParameter("no");

    String jsql = "SELECT * FROM support WHERE sptNo = ?";   
     PreparedStatement  pstmt  = con.prepareStatement(jsql);
    pstmt.setString(1, no);
    
    ResultSet rs = pstmt.executeQuery();//SQL�� ����   
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
          <h2>���� �ȴٵ�����ȣ��</h2>
          <div id="spt-pcbox">
            <div id="spt-pcbox2">
              <h3>0% �޼� (0��)</h3>
            </div>
            <progress id="spt-progress" value="0" min="0" max="100"></progress>
            <h1>0��</h1>
            <h2><%=sptMoney%>��</h2>
          </div>
          <div id="spt-pcbox3">
            <h2>��α� 100% ������ ��ȣ�ҿ� ���޵˴ϴ�</h2>
            <h1>������ ��� �Բ� ����������</h1>
            <button id="donateButton">����ϱ�</button>
            <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
            <script>
               IMP.init("imp87480883");

               const button = document.querySelector("button");

               const onClickPay = async () => {
                  IMP.request_pay({
                     pg: "kakaopay",
                     pay_method: "card",
                     amount: "200000",
                     name: "�Ŀ��ϱ�",
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
      // �� 'progress' �±׸� ��ȸ�մϴ�.
$('progress').each(function () {
    // 'value' �Ӽ��� �о�� 'max' ������ �����մϴ�.
    const max = $(this).attr('value');
    // 0���� 'max'���� 1��(1000ms) ���� �ִϸ��̼� �մϴ�.
    $(this).val(0).animate({ value: max }, 1000);
});
      x// progress ��� ��Ҹ� �����մϴ�.
const $counters = $("progress");

// ���� ����(%)�� �ִϸ��̼� �ݺ� ����(true/false)�� �����մϴ�.
const exposurePercentage = 100; // ex) ��ũ�� ���� �� $counters �������� ȭ�鿡 100% ����Ǹ� ���ڰ� �ö󰩴ϴ�.
const loop = true; // �ִϸ��̼� �ݺ� ���θ� �����մϴ�. (true�� ������ ���, ��Ұ� ȭ�鿡�� ����� �� �ٽ� �������ϴ�.)

// �� progress ��ҿ� ���� value �Ӽ����� �迭�� �߰��մϴ�.
const maxValues = [];
$counters.each(function() {
    const max = $(this).attr('value');
    maxValues.push(max);
    $(this).val(0);
});

// �������� ��ũ�� �̺�Ʈ�� ����͸��մϴ�.
$(window).on('scroll', function() {
    // �� "scroll_on" Ŭ������ ���� ��ҿ� ���� �ݺ��մϴ�.
    $counters.each(function(i) {
        const $el = $(this);

        // ����� ��ġ ������ �����ɴϴ�.
        const rect = $el[0].getBoundingClientRect();
        const winHeight = window.innerHeight; // ���� ������ â�� ����
        const contentHeight = rect.bottom - rect.top; // ����� ����
        
        // ��Ұ� ȭ�鿡 Ư�� ������ŭ ����� �� ó���մϴ�.
        if (rect.top <= winHeight - (contentHeight * exposurePercentage / 100) && rect.bottom >= (contentHeight * exposurePercentage / 100)) {
            if (!$el.hasClass('animated')){
                $el.stop().animate({ value: maxValues[i] }, 1000).addClass('animated');
            }
        }

        // ��Ұ� ȭ�鿡�� ������ ������� �� ó���մϴ�.
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