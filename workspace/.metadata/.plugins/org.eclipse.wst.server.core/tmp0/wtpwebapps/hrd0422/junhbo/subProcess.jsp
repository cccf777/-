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
	String lecturer=request.getParameter("lecturer");
	int week=Integer.parseInt(request.getParameter("week"));
	int start_hour=Integer.parseInt(request.getParameter("start_hour"));
	int end_hour=Integer.parseInt(request.getParameter("end_hour"));
	
	PreparedStatement pstmt = null;
	
	try{
		String sql="insert into sub0422 values(?,?,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,subject_name);
		pstmt.setInt(3,credit);
		pstmt.setString(4,lecturer);
		pstmt.setInt(5,week);
		pstmt.setInt(6,start_hour);
		pstmt.setInt(7,end_hour);
		pstmt.executeUpdate();
		%>
		<script>
			alert("등록되었습니다");
			history.back(-1);
		</script>
		<%
	}catch(SQLException e){
		e.printStackTrace();
		%>
		<script>
			alert("등록실패");
			history.back(-1);
		</script>
		<%
	}
%>

</body>
</html>