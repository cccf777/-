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
	if(document.form.name.value==""){
		alert("이름이 비었음메");
		document.form.name.focus();
	}
	else if(document.form.id.value==""){
		alert("사번이 비었음메");
		document.form.id.focus();
	}
	else if(document.form.dept.value==""){
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
<%@ include file="DBconnOracle.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	try{
		String sql="select *from person0421 where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			String name=rs.getString("name");
			String position= rs.getString("position");
			String dept=rs.getString("dept");
			String duty=rs.getString("duty");
			String phone=rs.getString("phone");
%>



<h3 id="h3">인사관리 사원정보 변경 </h3>
<form name=form method=post action="updateProcess.jsp">
<table border=1>
	<tr>
		<th>성명</th>
		<td><input type="text" name="name" id="in1" value="<%=name%>"></td>
	</tr>
	<tr>
		<th>사원번호</th>
		<td><input type="text" name="id" id="in1" value="<%=id%>"></td>
	</tr>
	<tr>
		<th>소속부서</th>
		<td><select name="dept" id="in1">
			<option value="인사부"<%if(dept.equals("인사부")){%>selected<%}%>
			>인사부</option>
			<option value="기획부"<%if(dept.equals("기획부")){%>selected<%}%>
			>기획부</option>
			<option value="영업부"<%if(dept.equals("영업부")){%>selected<%}%>
			>영업부</option>
			<option value="경리부"<%if(dept.equals("경리부")){%>selected<%}%>
			>경리부</option>
			<option value="홍보부"<%if(dept.equals("홍보부")){%>selected<%}%>
			>홍보부</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>직급</th>
		<td>
		<select name="position" id="in1">
		<option value="1"<%if(position.equals("1")){%>selected<%}%>
		>1급</option>
		<option value="2"<%if(position.equals("2")){%>selected<%}%>
		>2급</option>
		<option value="3"<%if(position.equals("3")){%>selected<%}%>
		>3급</option>
		<option value="4"<%if(position.equals("4")){%>selected<%}%>
		>4급</option>
		<option value="5"<%if(position.equals("5")){%>selected<%}%>
		>5급</option>
		</select>
		</td>
	</tr>
	<tr>
		<th>직책</th>
		<td><input type="text" name="duty"  id="in1" value="<%=duty%>"></td>
	</tr>
	<tr>
		<th>연락처</th>
		<td><input type="text" name="phone"  id="in1" value="<%=phone%>"></td>
	</tr>
	<tr>
		<td colspan=2 class="center">
		<input type="button" value="변경" onclick="javascript:check()">
		<input type="reset" value="취소">
		</td>
	</tr>
	<%
	
		}
	}catch(SQLException e){
		e.printStackTrace();
	}
	%>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>