<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){
	if(document.form.id.value==""){
		alert("사번이 비었음메");
		document.form.id.focus();
	}
	if(document.form.name.value==""){
		alert("이름이 비었음메");
		document.form.name.focus();
	}
	if(document.form.dept.value==""){
		alert("소속부서가 비었음메");
		document.form.dept.focus();
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
<h3 id="h3">인사관리 사원 등록 화면</h3>
<form name="form" method="post" action="insertProcess.jsp">
<table border="1" id="table1">
	<tr>
		<th>사원번호</th>
		<%@include file="DBconnOracle.jsp" %>
		<%
			ResultSet rs=null;
			PreparedStatement pstmt=null;
			String sql="select max(id) from person0421";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			int no=0;
			if(rs.next()){
				no=rs.getInt(1);
			}
			no++;
		%>
		
		
		<td><input type="text" name="id" id="in1" value="<%=no %>"></td>
	</tr>
	<tr>
		<th>성명</th>
		<td><input type="text" name="name" id="in1"></td>
	</tr>
	<tr>
		<th>소속부서</th>
		<td>
		<select name="dept" id="in1">
		<option value="인사부" selected>인사부</option>
		<option value="기획부">기획부</option>
		<option value="영업부">영업부</option>
		</select>
		</td>
	</tr>
	<tr>
		<th>직급</th>
		<td>
		<select name="position" id="in1">
		<option value="1" selected>1급</option>
		<option value="2">2급</option>
		<option value="3">3급</option>
		</select>
		</td>
	</tr>
	<tr>
		<th>직책</th>
		<td><input type="text" name="duty"  id="in1"></td>
	</tr>
	<tr>
		<th>연락처</th>
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

</section>
<%@ include file="footer.jsp" %>
</body>
</html>