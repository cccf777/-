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

<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<%@ include file="DBconnOracle.jsp" %>
<h3 id="h3">직원정보조회</h3>
<table border="1">
<tr>
	<th>no</th>
	<th>성명</th>
	<th>사번</th>
	<th>직급</th>
	<th>직책</th>
	<th>연락처</th>
	<th>소속부서</th>
</tr>
<%
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	try{
		String sql="select *from person0421";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		int no=0;
		while(rs.next()){
			String name=rs.getString("name");
			String id=rs.getString("id");
			String position=rs.getString("position");
			String duty=rs.getString("duty");
			String phone=rs.getString("phone");
			String dept=rs.getString("dept");
			no++;
%>
<tr class="center">
	<td><%=no %></td>
	<td><%=name %></td>
	<td><a href="update.jsp?id=<%=id%>"><%=id %></a></td>
	<td><%=position %></td>
	<td><%=duty %></td>
	<td><%=phone%></td>
	<td><%=dept%></td>
</tr>

<%
		}
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
</table>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>