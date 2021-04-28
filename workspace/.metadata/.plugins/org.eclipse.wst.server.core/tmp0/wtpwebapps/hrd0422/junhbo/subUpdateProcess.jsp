<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBconnOracle.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String subject_name=request.getParameter("subject_name");
	int credit=Integer.parseInt(request.getParameter("credit"));
	String position=request.getParameter("position");
	String address=request.getParameter("address");
	String phone=request.getParameter("phone");
	
	PreparedStatement pstmt = null;
	
	try{
		String sql="update stud0422 set name=?,dept=?,position=?,address=?,phone=? where studNo=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(6,studNo);
		pstmt.setString(1,name);
		pstmt.setString(2,dept);
		pstmt.setString(3,position);
		pstmt.setString(4,address);
		pstmt.setString(5,phone);
		pstmt.executeUpdate();
		%>
		<script>
			alert("수정되었습니다");
			history.back(-1);
		</script>
		<%
	}catch(SQLException e){
		e.printStackTrace();
		%>
		<script>
			alert("수정실패");
			history.back(-1);
		</script>
		<%
	}
%>

</body>
</html>