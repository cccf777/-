<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 회원 관리</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>

<%@ include file="DBconnOracle.jsp" %>
<%
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int cnt=0;
	try{
		String sql="select count(*) from bookinfo0415";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		if(rs.next()){//while문은 보통 여러건 읽을떄 씁니다.
			cnt=rs.getInt(1);
		}
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
<h2>도서 정보 목록</h2>
<p id="p1">총<%=cnt %>권의 도서정보가 있습니다.</p>
<hr>
<table id="tab2" >
<tr>
	<th>no</th>
	<th>도서코드</th>
	<th>저자</th>
	<th>도서명</th>
</tr>
<%
	String sql="select *from bookinfo0415 order by bookno";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();//읽는것
	String bookno,author,bookname;
	int no=0;
	while(rs.next()){
		bookno=rs.getString("bookno");
		author=rs.getString("author");
		bookname=rs.getString("bookname");
		no++;

%>
<tr>
	<td><%=no %></td>
	<td><%=bookno %></td>
	<td><%=author%></td>
	<td><%=bookname %></td>
</tr>
<% }%>
</table>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>










