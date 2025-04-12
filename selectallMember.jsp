<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<title>회원 테이블 내용 조회</title>
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
		table{
			width: 1200px; height: auto;
			background-color: #FFF2DC;
			border: none;
			border-radius: 30px;
			padding: 10px 0 30px 20px;
			font-size: 25px;
			text-align: center;
		}
		table tr td{
			border-bottom: 1px 734D32 solid;
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
    String jsql = "SELECT * FROM member";   
    PreparedStatement pstmt = con.prepareStatement(jsql);
    ResultSet rs = pstmt.executeQuery();

%>

<center>
<font><b>## 전체 회원 조회 ##   </b></font><p>
<table>
	<tr id="title">
		<td>ID</td>
		<td>비밀번호</td>
		<td>성명</td>
		<td>이메일</td>
		<td>핸드폰번호</td>	
		<td><b>[삭제]</b></td>
	</tr>	

<%
		while(rs.next()){
			String id = rs.getString("memId");   //  다음 각 함수들의 인수들은 테이블의 각 필드명들임
    		String passwd =  rs.getString("memPw");	
			String name = rs.getString("memName");
    		String email =  rs.getString("memEmail");	
			String phone = rs.getString("memPhone");
    		
%>
   <tr>                     <!--  상세정보를 나타낼 페이지 링크부분에 회원 아이디를 함께 넘겨줌 -->
 	  <td> <a href="selectDetailMember.jsp?id=<%=id%>"><%=id%></a></td>
      <td><%=passwd%></td>
	  <td><%=name%></td>
	  <td><%=email%></td>
 	  <td><%=phone%></td>
  	  <td align=center><a href="deleteMember.jsp?id=<%=id%>">Yes</a></td>
  </tr>
<%
		}  // while문의 끝
%>
</table><p>
<br>
 <a href="manager_main.jsp">관리자모드 메인페이지</a>
 &nbsp&nbsp&nbsp

<%
    } catch (Exception e) {
      out.println(e);	
}
%>
</body>
</html>