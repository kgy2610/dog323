<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "java.sql.*" %>
<html><head><title>회원 정보 삭제</title></head>
<body><center>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  
     String DB_ID="gamjatec";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	 String key = request.getParameter("id");
	
     String jsql = "select * from member where memId = ?";       
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1, key);

  	 ResultSet rs = pstmt.executeQuery();	
	 rs.next();

	String id = request.getParameter("id");   
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String Email = request.getParameter("Email");
	String Phone = request.getParameter("Phone");
%>

<font color="blue" size='6'><b>[회원 정보 삭제(탈퇴) 확인]</b></font><p>
<br><br>
<h4> 다음의 회원정보를 삭제하시겠습니까?</h4>
<table border="2" cellpadding="10" style="font-size:10pt;font-family:맑은 고딕">
		<tr><td width=100>ID</td><td width=200><%=id%></td></tr>
		<tr><td>비밀번호</td><td><%=pw%></td></tr>
		<tr><td>성명</td><td><%=name%></td></tr>
		<tr><td>이메일</td><td><%=Email%></td></tr>
		<tr><td>핸드폰번호</td><td><%=Phone%></td></tr>
		
</table><p>

<a href="deleteMemberResult.jsp?id=<%=id%>" style="font-size:10pt;font-family:맑은 고딕">삭제</a>&nbsp;&nbsp;
<a href="main.jsp" style="font-size:10pt;font-family:맑은 고딕">취소</a>
<%
    } catch (Exception e) {
    	out.println(e);
}
%>
</center>
</body>
</html>