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
String bookno=request.getParameter("bookno");
String author=request.getParameter("author");
String bookname=request.getParameter("bookname");
PreparedStatement pstmt=null;
try{
String sql="insert into bookinfo_tbl(bookno,author,bookname) values(?,?,?)"; 
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, bookno);
pstmt.setString(2, author);
pstmt.setString(3, bookname);
pstmt.executeUpdate();
System.out.println("저장 완료");
}catch(SQLException e){
e.printStackTrace();
System.out.println("저장 완료");
} 
%>
<script language = javascript>
    location.href="checkbook.jsp";
</script>
</body>
</html>