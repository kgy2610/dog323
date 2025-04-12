<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<body>
<%
	request.setCharacterEncoding("euc-kr");

	String memId = request.getParameter("memId");   
	String memPasswd = request.getParameter("memPasswd");
	String	memName = request.getParameter("memName");

	String	memJoomin = request.getParameter("memJoomin");

	String	memEmail = request.getParameter("memEmail");
	String	memPhone = request.getParameter("memPhone");

try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec";  
     String DB_ID="gamjatec";
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "INSERT INTO member (memId, memPasswd, memName, ";
	 jsql = jsql + "memJoomin, memEmail, memPhone) VALUES (?,?,?,?,?,?)";	
	

	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,memId);
	 pstmt.setString(2,memPasswd);
	 pstmt.setString(3,memName);
	 pstmt.setString(4,memJoomin);
	 pstmt.setString(5,memEmail);
	 pstmt.setString(6,memPhone);
	

	 pstmt.executeUpdate();
  } catch(Exception e) { 
		out.println(e);
}
%>
 <h3> 축하합니다.  다음과 같이 회원 가입되었습니다! </h3><p>
</body>
</html>