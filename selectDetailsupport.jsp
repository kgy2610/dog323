<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title>�Ŀ� �� ���� ��ȸ   </title></head>
<body>

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

	 ResultSet rs = pstmt.executeQuery();  //SQL�� ����	
	 rs.next();

	 String sptName = rs.getString("sptName");  //  ���� �� �Լ����� �μ����� ���̺��� �� �ʵ�����
	 String sptPhone =  rs.getString("sptPhone");	
	 String  sptPtname = rs.getString("sptPtname");
 	 String  sptAddress = rs.getString("sptAddress");
	 String sptMoney = rs.getString("sptMoney");
	 String sptTitle = rs.getString("sptTitle");
	 String sptMemo = rs.getString("sptMemo");
	 String no = rs.getString("sptNo");
	 
%>

<center>
<font color="blue" size='6'><b>�Ŀ� ������ ��ȸ   </b></font><p>
<table border="2" cellpadding="10"  style="font-size:10pt;font-family:���� ���">
		<tr><td width=100>��ȣ</td><td width=200><%=no%></td></tr>
		<tr><td>��û�� �̸�</td><td><%=sptName%></td></tr>
		<tr><td>����ó</td><td><%=sptPhone%></td></tr>
		<tr><td>��ȣ�� �̸�</td><td><%=sptPtname%></td></tr>
		<tr><td>�ּ�</td><td><%=sptAddress%></td></tr>
		<tr><td>�Ŀ��ݾ�</td><td><%=sptMoney%></td>��</tr>
		<tr><td>����</td><td><%=sptTitle%></td></tr>
		<tr><td>����</td><td><%=sptMemo%></td></tr>
    </table><p>

<a href="updatesupport.jsp?id=<%=no%>" style="font-size:10pt;font-family:���� ���">����</a>&nbsp;&nbsp;
<a href="deletesupport.jsp?id=<%=no%>" style="font-size:10pt;font-family:���� ���">����</a>
</center>

<%
    } catch (Exception e) {
    	out.println(e);
}
%>
</body>
</html>