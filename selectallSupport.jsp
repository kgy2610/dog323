<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>�Ŀ� ��ȸ</title>
        <style>
            font {
                font-size: 30px;
                color: #734D32;
            }
            table {
                border: 2px solid #734D32;
                border-collapse: collapse;
                margin-top: 20px;
            }
            th {
                background-color: #B78B6C;
                color: white;
                border: 1px solid #E6D7CB;
                padding: 10px;
            }
            td {
                background-color: #FFF2DC;
                border: 1px solid #E6D7CB;
                padding: 10px;
                text-align: center;
            }
            a {
                color:#734D32;
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
    String jsql = "SELECT * FROM support";   
    PreparedStatement pstmt = con.prepareStatement(jsql);
    ResultSet rs = pstmt.executeQuery();

%>

<center>
    <br><br><br>

<font><b>[��ü �Ŀ� ��ȸ]</b></font><p>
<table>
   <tr>
      <th width="180px">��ȣ</th><th width="150px">��û�� �̸�</th><th width="200px">��ȣ�� �̸�</th>
   </tr>   

<%
      while(rs.next()){
           String no = rs.getString("sptNo");
         String name = rs.getString("sptName");   //  ���� �� �Լ����� �μ����� ���̺��� �� �ʵ�����
          String ptname =  rs.getString("sptPtname");   
         
          
%>
   <tr>                     <!--  �������� ��Ÿ�� ������ ��ũ�κп� ȸ�� ���̵� �Բ� �Ѱ��� -->
      <td> <a href="selectDetailsupport.jsp?sptNo=<%=no%>"><%=no%></a></td>
      <td><%=name%></td>
     <td><%=ptname%></td>
     
  </tr>
<%
      }  // while���� ��
%>
</table><p>
<br>
<a href="insert_support.jsp">�Ŀ� ����ϱ�</a>
 <a href="manager_main.jsp">�����ڸ�� ����������</a>
 &nbsp&nbsp&nbsp

<%
    } catch (Exception e) {
      out.println(e);   
}
%>
</body>
</html>