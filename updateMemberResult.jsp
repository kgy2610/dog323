<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
	<head><title>회원 정보 수정 완료</title></head>
	<body>

<%
	 request.setCharacterEncoding("euc-kr");

	 String id = request.getParameter("memId");   
	String passwd = request.getParameter("memPw");
	String name = request.getParameter("memName");
	String email = request.getParameter("memEmail");
	String phone = request.getParameter("memPhone");

try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";
     String DB_ID="gamjatec";  
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "update member set memPw=?, memName=?, ";
	 jsql = jsql + "memEmail=?, memPhone=?where memId=? ";	
	 PreparedStatement pstmt = con.prepareStatement(jsql);
     pstmt.setString(1,passwd);
	 pstmt.setString(2,name);
	 pstmt.setString(3,email);
	 pstmt.setString(4,phone);
	 pstmt.setString(5,id);
	 
	 pstmt.executeUpdate();  
	 String jsql2 = "select * from member where memId=?";
	 PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	 pstmt2.setString(1,id);

	 ResultSet rs = pstmt2.executeQuery();
	 rs.next();  //  next()함수를 처음 수행하면, 첫번째 레코드(즉, 수정시킨 레코드)를 가리키게 됨
%>
<center>
<br><br><br>
<font color="blue" size='6'><b>[수정된 회원 정보 내역]</b></font><p>
	<table border=1 cellpadding=5   style="font-size:10pt;font-family:맑은 고딕">
		<tr>
			<td width=100>ID</td>
			<td width=300><%=rs.getString("memId")%></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=rs.getString("memPw")%></td>
		</tr>
		<tr>
			<td>성명</td>
			<td><%=rs.getString("memName")%></td>
		</tr>
		<tr>
			<td>주민번호</td>
			<td><%=rs.getString("memEmail")%></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><%=rs.getString("memPhone")%></td>
		</tr>
	</table>
<%
    } catch (Exception e) {
    	out.println(e);
}
%>
<p>
 <br>
</center>
</body>
</html>