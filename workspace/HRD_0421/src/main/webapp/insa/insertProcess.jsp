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
	String name=request.getParameter("name");
	String dept=request.getParameter("dept");
	String position=request.getParameter("position");
	String duty=request.getParameter("duty");
	String phone=request.getParameter("phone");
	
	PreparedStatement pstmt = null;
	
	try{
		String sql="insert into person0421 values(?,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,name);
		pstmt.setString(3,dept);
		pstmt.setString(4,position);
		pstmt.setString(5,duty);
		pstmt.setString(6,phone);
		pstmt.executeUpdate();
		%>
		<script>
			alert("등록되었습니다");
			history.back(-1);
		</script>
		<%
	}catch(SQLException e){
		e.printStackTrace();
	}
%>

</body>
</html>