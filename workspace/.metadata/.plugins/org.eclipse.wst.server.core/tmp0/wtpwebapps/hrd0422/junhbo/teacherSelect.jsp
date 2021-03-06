<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h2>강사 목록 </h2>
<%@ include file="DBconnOracle.jsp" %>
<%
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int cnt=0;
	String sql;
	try{
		sql="select count(*) from teach0422";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		if(rs.next()){
			cnt=rs.getInt(1);
		}else{
			cnt=0;
		}
	}catch(SQLException e){
		e.printStackTrace();
	}

%>
<p id="t1"><%=cnt %>명의 강사 있음</p>
<table id="table1" border="1">
<tr>
	<th width=15px>강사코드</th>
	<th width=20px>강사명</th>
	<th width=30px>전공</th>
	<th width=20px>세부전공</th>
	<th width=15px>관리</th>
</tr>

<%
	//PreparedStatement pstmt=null;
	//ResultSet rs=null;//데이터를 읽을것이기 때문에 쓴다
	
	try{
		sql="select *from teach0422";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		String name,major,field;
		int idx;
		while(rs.next()){
			idx=rs.getInt("idx");
			name=rs.getString("name");
			major=rs.getString("major");
			field=rs.getString("field");
			
%>
<tr>
	<td><%=idx %></td>
	<td><%=name %></td>
	<td><%=major %></td>
	<td><%=field %></td>
	<td>수정/삭제</td>
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