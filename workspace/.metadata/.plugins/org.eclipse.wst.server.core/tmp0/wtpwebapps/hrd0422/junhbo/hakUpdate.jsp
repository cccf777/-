<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
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

<%@ include file="DBconnOracle.jsp" %>

<%

	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String id=request.getParameter("id");
	try{
		String sql="select * from stud0422 where studno=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			String name=rs.getString("name");
			String dept=rs.getString("dept");
			String position=rs.getString("position");
			String address=rs.getString("address");
			String phone=rs.getString("phone");
		
%>
<section>
<h3>학사 정보 등록 화면</h3>
<form name="form" method="post" action="hakUpdateProcess.jsp">
<table border="1" id="table1">
	<tr>
		<th width="30%">학번</th>
		<td><input type="text" name="studno" id="in1" value="<%=id %>"></td>
	</tr>
	<tr>
		<th width="30%">성명</th>
		<td><input type="text" name="name" id="in1" value="<%=name %>" ></td>
	</tr>
	<tr>
		<th width="30%">학과</th>
		<td>
		<select name="dept" id="in1">
		<option value="1" <%if(dept.equals("1")){%>selected<%} %>>컴퓨터공학과</option>
		<option value="2" <%if(dept.equals("2")){%>selected<%} %>>경영학과</option>
		<option value="3" <%if(dept.equals("3")){%>selected<%} %>>경제학과</option>
		</select>
		</td>
	</tr>
	<tr>
		<th width="30%">학년</th>
		<td>
		<select name="position" id="in1">
		<option value="1"<%if(position.equals("1")){%>selected<%} %>>1학년</option>
		<option value="2"<%if(position.equals("2")) {%>selected<%} %>>2학년</option>
		<option value="3"<%if(position.equals("3")) {%>selected<%} %>>3학년</option>
		</select>
		</td>
	</tr>
	<tr>
		<th width="30%">주소</th>
		<td><input type="text" name="address"  id="in1" value="<%=address%>"></td>
	</tr>
	<tr>
		<th width="30%">연락처</th>
		<td><input type="text" name="phone"  id="in1" value="<%=phone%>"></td>
	</tr>
	<tr>
		<td colspan=2 class="center">
		<input type="button" value="등록" onclick="javascript:check()">
		<input type="reset" value="취소">
		</td>
	</tr>
	<%}
		
		}catch(SQLException e){
			e.printStackTrace();
		}%>
</table>
</form>
<input type="button" value="학사정보추가" >
</section>
<%@ include file="footer.jsp" %>
</body>
</html>