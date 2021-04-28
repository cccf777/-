<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check1(){
	if(document.form.name.value==""){
		alert("성명이 입력되지 않음");
		document.form.name.focus();
	}else if(document.form.id.value==""){
		alert("사번이 입력되지 않음");
		document.form.id.focus();
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
<h3 id="h3">인사관리 사원정보 퇴사처리</h3>
<form name=form method=post action="deleteProcess.jsp">
<table border=1 id="table1">
<tr>
	<th>성명</th>
	<td><input type="text" name="name" id="in1"></td>
</tr>
<tr>
	<th>사원번호</th>
	<td><input type="text" name="id" id="in1"></td>
</tr>
<tr>
	<td colspan=2 class="center">
	<input type="button" value="삭제" onclick="javascript:check1()">
	<input type="reset" value="취소">
</tr>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>