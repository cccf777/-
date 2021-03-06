<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){
	if(document.form.id.value==""){
		alert("교과목코드 입력되지 않음");
		document.form.id.focus();
	}else if(document.form.subject_name.value==""){
		alert("교과명 입력되지 않음");
		document.form.subject_name.focus();
	}else if(document.form.credit.value==""){
		alert("학점 입력되지 않음");
		document.form.credit.focus();
	}else if(document.form.lecturer.value==""){
		alert("담당강사 입력되지 않음");
		document.form.lecturer.focus();
	}else if(document.form.start_hour.value==""){
		alert("시작시간 입력되지 않음");
		document.form.start_hour.focus();
	}else if(document.form.end_hour.value==""){
		alert("종료시간 입력되지 않음");
		document.form.end_hour.focus();
	}
	else{
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
		String sql="select * from sub0422 where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			String subject_name=rs.getString("subject_name");
			String dept=rs.getString("dept");
			int credit=rs.getInt("credit");
			String lecturer=rs.getString("lecturer");
			int week=rs.getInt("week");
			int start_hour=rs.getInt("start_hour");
			int end_hour=rs.getInt("end_hour");
		
%>

<section>

<form name="form" method="post" action="subUpdateProcess.jsp">
<table border="1" id="table1">
	<tr>
		<th width="30%">교과목코드</th>
		<td><input type="text" name="id" id="in1" value="<%=id%>"></td>
	</tr>
	<tr>
		<th width="30%">과목명</th>
		<td><input type="text" name="subject_name" id="in1" value="<%=dept %>"></td>
	</tr>
	<tr>
		<th width="30%">학점</th>
		<td><input type="text" name="credit" id="in1" value="<%=credit %>"></td>
	</tr>
	<tr>
		<th width="30%">담당강사</th>
		<td>
		<select name="lecturer" id="in1" >
		<option>담당강사 선택</option>
		<option value="1">김교수</option>
		<option value="2">이교수</option>
		<option value="3">박교수</option>
		<option value="4">우교수</option>
		<option value="5">최교수</option>
		<option value="6">강교수</option>
		<option value="7">황교수</option>
		</select>
		</td>
	</tr>
	<tr>
		<th width="30%">요일</th>
		<td>
		<input type="radio" name="week"  value="1" id="in1">월
		<input type="radio" name="week"  value="2" id="in1">화
		<input type="radio" name="week"  value="3" id="in1">수
		<input type="radio" name="week"  value="4" id="in1">목
		<input type="radio" name="week"  value="5" id="in1">금
		<input type="radio" name="week"  value="6" id="in1">토
		</td>
	</tr>
	<tr>
		<th width="30%">시작</th>
		<td><input type="text" name="start_hour"  id="in1" value="<%=start_hour %>"></td>
	</tr>
	<tr>
		<th width="30%">종료</th>
		<td><input type="text" name="end_hour"  id="in1" value="<%=end_hour %>"></td>
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
<input id="in1" type="button" value="학사정보추가" >
</section>
<%@ include file="footer.jsp" %>
</body>
</html>