<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<html>
<head>
<title>회원가입</title>

<style>
	@font-face {
	  font-family: 'NanumSquareRound';
	  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
	  font-weight: bolder;
	  font-style: normal;
	}
	*{
	  margin: 0 auto;
	  padding: 0 auto;
	}
	body{
		margin:0px;
		padding:0px;
		font-size: 14px;
		color:black;
		font-family: 'NanumSquareRound';
		letter-spacing: -1px;
		text-align:center;
	}
	#table-bg{
		width:695px; height:780px;
		margin-top:80px;
		background-color:#FFF2DC;
		border:3px solid #B78B6C;
		border-radius:30px;
	}
	center > img{
		margin-top:10px;
	}
	center > #log-title{
		margin-top:30px;
	}
	table{
		margin-top:40px;
	}
	.id, .\id, .pw, .\pw, .name, .\name, .email, .\email, .phone, .\phone{
		width: 450px; height:60px;
		border-radius: 50px;
		border:2px solid #B78B6C;
		font-size:20px;
		padding-top: 5px;
		padding-left: 30px; 
	}
	a > img{
		position: absolute;
		top:267px;
		right:710px;
	}
	button{
		width: 240px; height:65px;
		margin-top:30px;
		font-size: 30px;
		color:#fff;
		background-color: #FF9E00;
		box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
		border:none;
		border-radius: 50px;
	}
	

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
	
	 String key = request.getParameter("id");   
	 String jsql = "select * from member where memId = ?";
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1,key);

	 ResultSet rs = pstmt.executeQuery();
	 rs.next();
			
	        String id = rs.getString("memId");   //  다음 각 함수들의 인수들은 테이블의 각 필드명들임
    		String passwd =  rs.getString("memPw");	
			String name = rs.getString("memName");
    		String email =  rs.getString("memEmail");	
			String phone = rs.getString("memPhone");
%>  
<div id="table-bg">
	<center>
		<br><br>
		<div id="log-title">
			<font color="#734D32" size='40px'><b>회원가입</b></font><p>
		</div>
																				  <!--  form의 name속성의 속성값에 주목할 것!-->
	<form name="newMem" method=post action="updateMemberResult.jsp"  onsubmit="return checkValue()">
		<table cellpadding=5   style="font-size:10pt;font-family:NanumSquareRound">
			<tr>
			<td width=100>ID</td>
			<td><input type=hidden name="id" value="<%=id%>"><%=id%></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type=text name="pw" value="<%=passwd%>"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type=text name="name" value="<%=name%>"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type=text name="name" value="<%=email%>"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type=text name="name" value="<%=phone%>"></td>
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