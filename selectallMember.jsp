<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<title>ȸ�� ���̺� ���� ��ȸ</title>
	<style>
		@font-face {
		  font-family: 'NanumSquareRound';
		  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
		  font-weight: bolder;
		  font-style: normal;
		}
		@font-face {
		  font-family: 'nanumL';
		  src: url('font/NanumSquareRoundL.ttf');
		  font-weight: normal;
		  font-style: normal;
		}
		@font-face {
		  font-family: 'nanumR';
		  src: url('font/NanumSquareRoundR.ttf');
		  font-weight: normal;
		  font-style: normal;
		}
		@font-face {
		  font-family: 'nanumB';
		  src: url('font/NanumSquareRoundB.ttf');
		  font-weight: normal;
		  font-style: normal;
		}
		@font-face {
		  font-family: 'nanumEB';
		  src: url('font/NanumSquareRoundEB.ttf');
		  font-weight: normal;
		  font-style: normal;
		}
		/* ���� ������ ����
		Light(300)
		Regular(400)
		Bold(700)
		Extra Bold(800) */

		*{
		  margin: 0 auto;
		  padding: 0 auto;
		}
		body{
		  margin:0px;
		  padding:0px;
		  text-align: center;
		  font-family: 'NanumSquareRound';
		  font-size: 14px;
		  color:black;
		  /* overflow-y: hidden; */
		}
		table{
			width: 1200px; height: auto;
			background-color: #FFF2DC;
			border: none;
			border-radius: 30px;
			padding: 10px 0 30px 20px;
			font-size: 25px;
			text-align: center;
		}
		table tr td{
			border-bottom: 1px 734D32 solid;
		}
	</style>
</head>
<body>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/gamjatec"; 
     String DB_ID="gamjatec";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
    String jsql = "SELECT * FROM member";   
    PreparedStatement pstmt = con.prepareStatement(jsql);
    ResultSet rs = pstmt.executeQuery();

%>

<center>
<font><b>## ��ü ȸ�� ��ȸ ##   </b></font><p>
<table>
	<tr id="title">
		<td>ID</td>
		<td>��й�ȣ</td>
		<td>����</td>
		<td>�̸���</td>
		<td>�ڵ�����ȣ</td>	
		<td><b>[����]</b></td>
	</tr>	

<%
		while(rs.next()){
			String id = rs.getString("memId");   //  ���� �� �Լ����� �μ����� ���̺��� �� �ʵ�����
    		String passwd =  rs.getString("memPw");	
			String name = rs.getString("memName");
    		String email =  rs.getString("memEmail");	
			String phone = rs.getString("memPhone");
    		
%>
   <tr>                     <!--  �������� ��Ÿ�� ������ ��ũ�κп� ȸ�� ���̵� �Բ� �Ѱ��� -->
 	  <td> <a href="selectDetailMember.jsp?id=<%=id%>"><%=id%></a></td>
      <td><%=passwd%></td>
	  <td><%=name%></td>
	  <td><%=email%></td>
 	  <td><%=phone%></td>
  	  <td align=center><a href="deleteMember.jsp?id=<%=id%>">Yes</a></td>
  </tr>
<%
		}  // while���� ��
%>
</table><p>
<br>
 <a href="manager_main.jsp">�����ڸ�� ����������</a>
 &nbsp&nbsp&nbsp

<%
    } catch (Exception e) {
      out.println(e);	
}
%>
</body>
</html>