<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title>후원 상세 정보 조회   </title></head>
<body>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  
     String DB_ID="gamjatec";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

  	 String no = request.getParameter("sptNo");  //  상세정보를 나타낼 회원 아이디를 전달받아 옮
	 String jsql = "select * from support where sptNo = ?";   
     PreparedStatement  pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1, no);

	 ResultSet rs = pstmt.executeQuery();  //SQL문 실행	
	 rs.next();

	 String sptName = rs.getString("sptName");  //  다음 각 함수들의 인수들은 테이블의 각 필드명들임
	 String sptPhone =  rs.getString("sptPhone");	
	 String  sptPtname = rs.getString("sptPtname");
 	 String  sptAddress = rs.getString("sptAddress");
	 String sptMoney = rs.getString("sptMoney");
	 String sptTitle = rs.getString("sptTitle");
	 String sptMemo = rs.getString("sptMemo");
	 String no = rs.getString("sptNo");
	 
%>

<center>
<font color="blue" size='6'><b>후원 상세정보 조회   </b></font><p>
<table border="2" cellpadding="10"  style="font-size:10pt;font-family:맑은 고딕">
		<tr><td width=100>번호</td><td width=200><%=no%></td></tr>
		<tr><td>신청자 이름</td><td><%=sptName%></td></tr>
		<tr><td>연락처</td><td><%=sptPhone%></td></tr>
		<tr><td>보호소 이름</td><td><%=sptPtname%></td></tr>
		<tr><td>주소</td><td><%=sptAddress%></td></tr>
		<tr><td>후원금액</td><td><%=sptMoney%></td>원</tr>
		<tr><td>제목</td><td><%=sptTitle%></td></tr>
		<tr><td>내용</td><td><%=sptMemo%></td></tr>
    </table><p>

<a href="updatesupport.jsp?id=<%=no%>" style="font-size:10pt;font-family:맑은 고딕">수정</a>&nbsp;&nbsp;
<a href="deletesupport.jsp?id=<%=no%>" style="font-size:10pt;font-family:맑은 고딕">삭제</a>
</center>

<%
    } catch (Exception e) {
    	out.println(e);
}
%>
</body>
</html>