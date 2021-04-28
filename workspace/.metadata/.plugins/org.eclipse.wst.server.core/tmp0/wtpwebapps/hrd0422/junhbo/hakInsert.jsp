<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){
	if(document.form.studno.value==""){
		alert("학번이 입력되지 않음");
		document.form.studno.focus();
	}else if(document.form.name.value==""){
		alert("이름이 입력되지 않음");
		document.form.name.focus();
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
<form name="form" method="post" action="hakInsertProcess.jsp">
<table border="1" id="table1">
	<tr>
		<th width="30%">학번</th>
		<td><input type="text" name="studno" id="in1" <%-- value="<%=no %>" --%>></td>
	</tr>
	<tr>
		<th width="30%">성명</th>
		<td><input type="text" name="name" id="in1"></td>
	</tr>
	<tr>
		<th width="30%">학과</th>
		<td>
		<select name="dept" id="in1">
		<option value="1" selected>컴퓨터공학과</option>
		<option value="2">경영학과</option>
		<option value="3">경제학과</option>
		</select>
		</td>
	</tr>
	<tr>
		<th width="30%">학년</th>
		<td>
		<select name="position" id="in1">
		<option value="1" selected>1학년</option>
		<option value="2">2학년</option>
		<option value="3">3학년</option>
		</select>
		</td>
	</tr>
	<tr>
		<th width="30%">주소</th>
		<td><input type="text" name="address"  id="in1"></td>
	</tr>
	<tr>
		<th width="30%">연락처</th>
		<td><input type="text" name="phone"  id="in1"></td>
	</tr>
	<tr>
		<td colspan=2 class="center">
		<input type="button" value="등록" onclick="javascript:check()">
		<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>
<input type="button" value="학사정보추가" >
</section>
<%@ include file="footer.jsp" %>
</body>
</html>