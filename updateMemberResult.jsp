<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
	<head><title>ȸ�� ���� ���� �Ϸ�</title></head>
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
	 rs.next();  //  next()�Լ��� ó�� �����ϸ�, ù��° ���ڵ�(��, ������Ų ���ڵ�)�� ����Ű�� ��
%>
<center>
<br><br><br>
<font color="blue" size='6'><b>[������ ȸ�� ���� ����]</b></font><p>
	<table border=1 cellpadding=5   style="font-size:10pt;font-family:���� ���">
		<tr>
			<td width=100>ID</td>
			<td width=300><%=rs.getString("memId")%></td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td><%=rs.getString("memPw")%></td>
		</tr>
		<tr>
			<td>����</td>
			<td><%=rs.getString("memName")%></td>
		</tr>
		<tr>
			<td>�ֹι�ȣ</td>
			<td><%=rs.getString("memEmail")%></td>
		</tr>
		<tr>
			<td>��ȭ��ȣ</td>
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