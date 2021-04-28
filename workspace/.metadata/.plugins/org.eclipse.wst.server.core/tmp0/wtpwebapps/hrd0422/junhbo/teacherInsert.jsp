<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){
	if(document.form.idx.value==""){
		alert("강사id 입력되지 않음");
		document.form.idx.focus();
	}else if(document.form.name.value==""){
		alert("강사이름이 입력되지 않음");
		document.form.name.focus();
	}else if(document.form.major.value==""){
		alert("전공이 입력되지 않음");
		document.form.major.focus();
	}else if(document.form.field.value==""){
		alert("세부전공이 입력되지 않음");
		document.form.field.focus();
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
<form name="form" method="post" action="teacherProcess.jsp">
<table border="1" id="table1">
	<tr>
		<th width="30%">강사id</th>
		<td><input type="text" name="idx" id="in1" <%-- value="<%=no %>" --%>></td>
	</tr>
	<tr>
		<th width="30%">강사명</th>
		<td><input type="text" name="name" id="in1"></td>
	</tr>
	<tr>
		<th width="30%">전공</th>
		<td>
		<input type="text" name="major" id="in1">
		</td>
	</tr>
	<tr>
		<th width="30%">세부전공</th>
		<td>
		<input type="text" name="field" id="in1">
		</td>
	</tr>
	<tr>
		<td colspan=2 class="center">
		<input type="button" value="등록" onclick="javascript:check()">
		<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>