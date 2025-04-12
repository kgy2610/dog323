<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>후원 조회</title>
        <style>
            font {
                font-size: 30px;
                color: #734D32;
            }
            table {
                border: 2px solid #734D32;
                border-collapse: collapse;
                margin-top: 20px;
            }
            th {
                background-color: #B78B6C;
                color: white;
                border: 1px solid #E6D7CB;
                padding: 10px;
            }
            td {
                background-color: #FFF2DC;
                border: 1px solid #E6D7CB;
                padding: 10px;
                text-align: center;
            }
            a {
                color:#734D32;
            }
        </style>
    </head>
<body>

<%
try {
     String DB_URL="jdbc:mysql://localhost:3306/gamjatec"; 
     String DB_ID="gamjatec";  
     String DB_PASSWORD="abcd"; 
     
    Class.forName("org.gjt.mm.mysql.Driver"); 
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
    String jsql = "SELECT * FROM support";   
    PreparedStatement pstmt = con.prepareStatement(jsql);
    ResultSet rs = pstmt.executeQuery();

%>

<center>
    <br><br><br>

<font><b>[전체 후원 조회]</b></font><p>
<table>
   <tr>
      <th width="180px">번호</th><th width="150px">신청자 이름</th><th width="200px">보호소 이름</th>
   </tr>   

<%
      while(rs.next()){
           String no = rs.getString("sptNo");
         String name = rs.getString("sptName");   //  다음 각 함수들의 인수들은 테이블의 각 필드명들임
          String ptname =  rs.getString("sptPtname");   
         
          
%>
   <tr>                     <!--  상세정보를 나타낼 페이지 링크부분에 회원 아이디를 함께 넘겨줌 -->
      <td> <a href="selectDetailsupport.jsp?sptNo=<%=no%>"><%=no%></a></td>
      <td><%=name%></td>
     <td><%=ptname%></td>
     
  </tr>
<%
      }  // while문의 끝
%>
</table><p>
<br>
<a href="insert_support.jsp">후원 등록하기</a>
 <a href="manager_main.jsp">관리자모드 메인페이지</a>
 &nbsp&nbsp&nbsp

<%
    } catch (Exception e) {
      out.println(e);   
}
%>
</body>
</html>