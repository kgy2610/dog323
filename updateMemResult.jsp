<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
	<head><title>���� �Ϸ�</title></head>
	<body>

<%
	 request.setCharacterEncoding("euc-kr");
    String id = (String)session.getAttribute("sid");  
	String memName = request.getParameter("memName");   
	String memEmail = request.getParameter("memEmail");
	String memPhone = request.getParameter("memPhone");
	
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";
     String DB_ID="gamjatec";  
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "update member SET memName=?, memEmail=?, memPhone=? where memId=?";
	 PreparedStatement pstmt = con.prepareStatement(jsql);
     pstmt.setString(1, memName);
     pstmt.setString(2, memEmail);
     pstmt.setString(3, memPhone);
     pstmt.setString(4, id);
     
	 
	 pstmt.executeUpdate(); 

	 String jsql2 = "select * from member where memId=?";
     PreparedStatement pstmt2 = con.prepareStatement(jsql2);
     pstmt2.setString(1, id); // 'sptNo'�� ����Ͽ� ������ �������� ����

	 ResultSet rs = pstmt2.executeQuery();
	 rs.next();  //  next()�Լ��� ó�� �����ϸ�, ù��° ���ڵ�(��, ������Ų ���ڵ�)�� ����Ű�� ��

%>
<center>
<br><br><br>
<font color="blue" size='6'><b>[������ ȸ�� ���� ����]</b></font><p>
	<table border=1 cellpadding=5   style="font-size:10pt;font-family:���� ���">
        
		<tr>
			<td width=100>�̸�</td>
			<td><%=rs.getString("memName")%></td>
		</tr>
		<tr>
			<td>�̸���</td>
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