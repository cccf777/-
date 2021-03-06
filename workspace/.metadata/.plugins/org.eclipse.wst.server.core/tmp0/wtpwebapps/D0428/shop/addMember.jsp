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
	int id=Integer.parseInt(request.getParameter("id"));
	try{
		String sql="select * from pMember where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,id);
		rs=pstmt.executeQuery();
		if(rs.next()){
			String password=rs.getString("password");
			String dept=rs.getString("name");
			String position=rs.getString("gender");
			String birth=rs.getString("birth");
			String mail=rs.getString("mail");
			String phone=rs.getString("phone");
			String address=rs.getString("address");
			String timestamp=rs.getString("timestamp");
			
		
%>
<section>
<form name="form" method="post" action="addMemberProcess.jsp">
<table border="1" id="table1">
	<tr>
		<th width="30%">아이디</th>
		<td><input type="text" name="id" id="in1" value="<%=id%>"></td>
	</tr>
	<tr>
		<th width="30%">성명</th>
		<td><input type="text" name="name" id="in1"></td>
	</tr>
	<tr>
		<th width="30%">비밀번호</th>
		<td><input type="text" name="name" id="in1"></td>
	</tr>
	<tr>
		<th width="30%">비밀번호 확인</th>
		<td><input type="text" name="name" id="in1"></td>
	</tr>
	<tr>
		<th width="30%">성별</th>
		<td>
		<input type="radio" name="gender" id="in1">남성
		<input type="radio" name="gender" id="in1">여성
		</td>
	</tr>
	<tr>
		<th width="30%">생일</th>
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
		<th width="30%">연락처</th>
		<td><input type="text" name="phone"  id="in1"></td>
	</tr>
	<tr>
		<th width="30%">주소</th>
		<td><input type="text" name="address"  id="in1"></td>
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

</section>
<%@ include file="footer.jsp" %>
</body>
</html>