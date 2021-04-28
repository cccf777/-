<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 회원 관리</title>
<script type="text/javascript">
function check1(){
	if(document.form.bookno.value==""){
		alert("도서코드가 입력되지 않음");
		document.form.bookno.focus();
	}
	if(document.form.author.value==""){
		alert("저자가 입력되지 않음");
		document.form.author.focus();
	}
	if(document.form.bookname.value==""){
		alert("도서명이 입력되지 않음");
		document.form.bookname.focus();
	}else{
		document.form.submit();
	}
}
</script>

</head>

<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<%@ include file="DBconnOracle.jsp" %>
<%
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sql="select bookno_seq.nextval from dual";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	int no=0;
	if(rs.next()){
		no=rs.getInt(1);
	}else{
		no=0;
	}
	
	%>
<h3>도서 정보 등록 화면</h3>
<form name="form" method=post action="bookinfoProcess.jsp">
<table border=1 id="tab1">
<tr>
	<th width="30%">도서코드</th>
	<td><input id="in1" type="text" name="bookno" value="<%=no %>"></td>
</tr>
<tr>
	<th width="30%">저자</th>
	<td><input id="in1" type="text" name="author"></td>
</tr>
<tr>
	<th width="30%">도서이름</th>
	<td><input id="in1" type="text" name="bookname"></td>
</tr>
<tr>
	<th colspan=4 align=center>
	<input id="in2" type="button" value="저장" onclick="javascript:check1()">
	<input id="in2" type="reset" value="취소">
	</th>
</tr>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>