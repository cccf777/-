<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 회원 관리</title>
</head>
<body>
<%@ include file="DBconnOracle.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String lentno=request.getParameter("lentno");
	String custname=request.getParameter("custname");
	String bookno=request.getParameter("bookno");
	String outdate=request.getParameter("outdate");
	String indate=request.getParameter("indate");
	String status=request.getParameter("status");
	String class1=request.getParameter("class1");
	
	PreparedStatement pstmt=null;
	try{
		String sql="insert into reservation0415 values(?,?,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,lentno);
		pstmt.setString(2,custname);
		pstmt.setString(3,bookno);
		pstmt.setString(4,outdate);
		pstmt.setString(5,indate);
		pstmt.setString(6,status);
		pstmt.setString(7,class1);
		pstmt.executeUpdate();
		%>
		<script type="text/javascript">
			alert("등록완료");
			history.back(-1);
		</script>
		<% 
	}catch(SQLException e){
		e.printStackTrace();
	%>
	<script type="text/javascript">
	alert("등록이 아직인데수");
	history.back(-1);
	</script>
	<%
	}
%>
</body>
</html>






