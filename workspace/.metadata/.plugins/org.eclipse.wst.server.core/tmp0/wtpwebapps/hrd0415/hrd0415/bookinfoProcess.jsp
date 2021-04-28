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
	String bookno=request.getParameter("bookno"); //오른쪽이 폼에서 들고오는것 왼쪽은 여기꺼
	String author=request.getParameter("author");
	String bookname=request.getParameter("bookname");
	
	PreparedStatement pstmt=null;
	//result set은 select할때만 필요합니다
	try{
		String sql="insert into bookinfo0415 values(?,?,?)";//db에있는 파라미터만 들고오셈
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,bookno);
		pstmt.setString(2,author);
		pstmt.setString(3,bookname);
		pstmt.executeUpdate();
		%>
		<script type="text/javascript">
		alert("등록이 완료!");
		history.back(-1);
		</script>
		<%
		}catch(SQLException e){
			e.printStackTrace(); //등록실패 메시지를 보고싶을때!
			%>
			<script type="text/javascript">
			alert("등록실패!");
			history.back(-1);
			</script>
			<%
		}
%>
</body>
</html>