<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>���� �Ϸ�</title></head>
<body>
<%
    request.setCharacterEncoding("euc-kr");
	String id = (String)session.getAttribute("sid");
    String memPw = request.getParameter("memPw");
   
   

 try {
    String DB_URL="jdbc:mysql://localhost:3306/gamjatec";
    String DB_ID="gamjatec";  
    String DB_PASSWORD="abcd";
     
    Class.forName("org.gjt.mm.mysql.Driver");  
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

    // ��й�ȣ ���� ����
    String jsql = "update member SET memPw=? where memId=?";
    PreparedStatement pstmt = con.prepareStatement(jsql);     
    pstmt.setString(1, memPw);     
    pstmt.setString(2, id);
    
    // ��й�ȣ ���� ���� ����
    pstmt.executeUpdate(); 

    // ������ ��й�ȣ�� �������� ��
     String jsql2 = "select * from member where memId=?";
     PreparedStatement pstmt2 = con.prepareStatement(jsql2);
     pstmt2.setString(1, id); // 'sptNo'

    // ������ ��й�ȣ�� �������� ���� ����
   ResultSet rs = pstmt2.executeQuery();
	 rs.next();  //  next()�Լ��� ó�� �����ϸ�, ù��° ���ڵ�(��, ������Ų ���ڵ�)�� ����Ű�� ��
%>
<p> �����Ϸ�</p>
<br>
<%=rs.getString("memPw")%>
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