<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<html>
<head>
<title>후원하기 수정</title>

<style>
</style>
</head>

<script language="javascript" src="js_package2.js">
</script>


<body onLoad="idFocus()"> 
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

	 ResultSet rs = pstmt.executeQuery();
	 rs.next();
			
	 String sptName = rs.getString("sptName");  //  다음 각 함수들의 인수들은 테이블의 각 필드명들임
	 String sptPhone =  rs.getString("sptPhone");	
	 String  sptPtname = rs.getString("sptPtname");
 	 String  sptAddress = rs.getString("sptAddress");
	 String sptMoney = rs.getString("sptMoney");
	 String sptMoneyno = rs.getString("sptMoneyno");
	 String sptTitle = rs.getString("sptTitle");
	 String sptMemo = rs.getString("sptMemo");
	 String sptno = rs.getString("sptNo");
%>  
<div id="table-bg">
	<center>
		<br><br>
		<div id="log-title">
			<font color="#734D32" size='40px'><b>후원하기 수정</b></font><p>
		</div>
																				  <!--  form의 name속성의 속성값에 주목할 것!-->
	<form name="newMem" method=post action="updateSupportResult.jsp"  onsubmit="return checkValue()">
		<table cellpadding=5   style="font-size:10pt;font-family:NanumSquareRound">
			<tr>
			<td width=100>신청자 이름</td>
			<td><input type=hidden name="no" value="<%=no%>"><%=sptName%></td>
		</tr>
		<tr>
			<td>연락처</td>
			<td><input type=text name="sptPhone" value="<%=sptPhone%>"></td>
		</tr>
		<tr>
			<td>보호소이름</td>
			<td><input type=text name="sptPtname" value="<%=sptPtname%>"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type=text name="sptAddress" value="<%=sptAddress%>"></td>
		</tr>
		<tr>
			<td>모금액</td>
			<td><input type=text name="sptMoney" value="<%=sptMoney%>"></td>
		</tr>
		<tr>
			<td>모금 계좌</td>
			<td><input type=text name="sptMoneyno" value="<%=sptMoneyno%>"></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type=text name="sptTitle" value="<%=sptTitle%>"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type=text name="sptMemo" value="<%=sptMemo%>"></td>
		</tr>
		</table><p>     
		<p><input type=submit value=수정완료>
	</form>
<%
    } catch (Exception e) {
      out.println(e);	
}
%>

	</center>
</div>
</body>
</html>