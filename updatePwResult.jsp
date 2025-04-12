<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>수정 완료</title></head>
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

    // 비밀번호 수정 쿼리
    String jsql = "update member SET memPw=? where memId=?";
    PreparedStatement pstmt = con.prepareStatement(jsql);     
    pstmt.setString(1, memPw);     
    pstmt.setString(2, id);
    
    // 비밀번호 수정 쿼리 실행
    pstmt.executeUpdate(); 

    // 수정된 비밀번호를 가져오는 쿼
     String jsql2 = "select * from member where memId=?";
     PreparedStatement pstmt2 = con.prepareStatement(jsql2);
     pstmt2.setString(1, id); // 'sptNo'

    // 수정된 비밀번호를 가져오는 쿼리 실행
   ResultSet rs = pstmt2.executeQuery();
	 rs.next();  //  next()함수를 처음 수행하면, 첫번째 레코드(즉, 수정시킨 레코드)를 가리키게 됨
%>
<p> 수정완료</p>
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