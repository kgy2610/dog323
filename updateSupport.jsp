<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<html>
<head>
<title>�Ŀ��ϱ� ����</title>

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
	
	 String no = request.getParameter("sptNo");  //  �������� ��Ÿ�� ȸ�� ���̵� ���޹޾� ��
	 String jsql = "select * from support where sptNo = ?";   
     PreparedStatement  pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1, no);

	 ResultSet rs = pstmt.executeQuery();
	 rs.next();
			
	 String sptName = rs.getString("sptName");  //  ���� �� �Լ����� �μ����� ���̺��� �� �ʵ�����
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
			<font color="#734D32" size='40px'><b>�Ŀ��ϱ� ����</b></font><p>
		</div>
																				  <!--  form�� name�Ӽ��� �Ӽ����� �ָ��� ��!-->
	<form name="newMem" method=post action="updateSupportResult.jsp"  onsubmit="return checkValue()">
		<table cellpadding=5   style="font-size:10pt;font-family:NanumSquareRound">
			<tr>
			<td width=100>��û�� �̸�</td>
			<td><input type=hidden name="no" value="<%=no%>"><%=sptName%></td>
		</tr>
		<tr>
			<td>����ó</td>
			<td><input type=text name="sptPhone" value="<%=sptPhone%>"></td>
		</tr>
		<tr>
			<td>��ȣ���̸�</td>
			<td><input type=text name="sptPtname" value="<%=sptPtname%>"></td>
		</tr>
		<tr>
			<td>�ּ�</td>
			<td><input type=text name="sptAddress" value="<%=sptAddress%>"></td>
		</tr>
		<tr>
			<td>��ݾ�</td>
			<td><input type=text name="sptMoney" value="<%=sptMoney%>"></td>
		</tr>
		<tr>
			<td>��� ����</td>
			<td><input type=text name="sptMoneyno" value="<%=sptMoneyno%>"></td>
		</tr>
		<tr>
			<td>����</td>
			<td><input type=text name="sptTitle" value="<%=sptTitle%>"></td>
		</tr>
		<tr>
			<td>����</td>
			<td><input type=text name="sptMemo" value="<%=sptMemo%>"></td>
		</tr>
		</table><p>     
		<p><input type=submit value=�����Ϸ�>
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