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
<h2>교과목 목록 </h2>
<%@ include file="DBconnOracle.jsp" %>
<%
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int cnt=0;
	String sql;
	try{
		sql="select count(*) from sub0422";
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
<p id="t1"><%=cnt %>개의 교과목이 있음</p>
<table id="table1" border="1">
<tr>
	<th width=15px>과목코드</th>
	<th width=20px>과목명</th>
	<th width=30px>학점</th>
	<th width=20px>담당강사</th>
	<th width=15px>요일</th>
	<th width=15px>시작시간</th>
	<th width=15px>종료시간</th>
	<th width=15px>관리</th>
</tr>

<%
	//PreparedStatement pstmt=null;
	//ResultSet rs=null;//데이터를 읽을것이기 때문에 쓴다
	
	try{
		sql="select a.id,a.subject_name,a.credit,b.name,a.week,a.start_hour,a.end_hour from sub0422 a,teach0422 b where a.lecturer = b.idx order by a.id asc";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		String id,subject_name,name,lecturer_name,lecturer;
		int credit,week,start_hour,end_hour;
		while(rs.next()){
			id=rs.getString("id");
			subject_name=rs.getString("subject_name");
			credit=rs.getInt("credit");
			lecturer_name=rs.getString(4);
			week=rs.getInt("week");
			start_hour=rs.getInt("start_hour");
			end_hour=rs.getInt("end_hour");
		/* 	if(lecturer=="1"){
				lecturername="김교수";
			}else if(lecturer=="2"){
				lecturername="이교수";
			}else if(lecturer=="3"){
				lecturername="박교수";
			}else if(lecturer=="4"){
				lecturername="우교수";
			}else if(lecturer=="5"){
				lecturername="최교수";
			}else if(lecturer=="6"){
				lecturername="강교수";
			}else lecturername="황교수"; */
%>
<tr>
	<td><%=id %></td>
	<td><%=subject_name %></td>
	<td><%=credit %></td>
	<td><%=lecturer_name %></td>
	<td><%=week %></td>
	<td><%=start_hour %></td>
	<td><%=end_hour %></td>
	<td><a href="subUpdate.jsp?id=<%=id %>">수정</a>/
	<a href="subDelete.jsp?id=<%=id %>">삭제</td>
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