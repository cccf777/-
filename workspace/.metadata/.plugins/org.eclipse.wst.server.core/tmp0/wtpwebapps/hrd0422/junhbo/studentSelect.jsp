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
<h2>학사 정보 조회 </h2>
<%@ include file="DBconnOracle.jsp" %>
<%
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int cnt=0;
	String sql;
	try{
		sql="select count(*) from stud0422";
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
<p id="t1"><%=cnt %>명 있음</p>
<table id="table1" border="1">
<tr>
	<th width=10px>학번</th>
	<th width=20px>성명</th>
	<th width=30px>학과</th>
	<th width=20px>학년</th>
	<th width=80px>주소</th>
	<th width=10px>연락처</th>
	<th width=10px>관리</th>
</tr>

<%
	//PreparedStatement pstmt=null;
	//ResultSet rs=null;//데이터를 읽을것이기 때문에 쓴다
	
	try{
		sql="select *from stud0422";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		String id,name,address,phone,deptname;
		int dept,position;
		while(rs.next()){
			id=rs.getString("studNo");
			name=rs.getString("name");
			dept=rs.getInt("dept");
			position=rs.getInt("position");
			address=rs.getString("address");
			phone=rs.getString("phone");
			if(dept==1){
				deptname="컴퓨터공학과";
			}else if(dept==2){
				deptname="경영학과";
			}else deptname="경제학과";
%>
<tr>
	<td><%=id %></td>
	<td><%=name %></td>
	<td><%=deptname %></td>
	<td><%=position %></td>
	<td><%=address %></td>
	<td><%=phone %></td>
	<td><a href="hakUpdate.jsp?id=<%=id %>">수정</a>/
	<a href="hakDelete.jsp?id=<%=id %>">삭제</a></td>
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