<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconcar.jsp" %>
<%
   PreparedStatement pstmt=null;
   ResultSet rs=null;
   
   int idx=Integer.parseInt(request.getParameter("idx"));
   System.out.println("idx :"+idx);
   try{
	   	String sql="select name,title,memo,time,hit from board where num=?";
	   	pstmt=conn1.prepareStatement(sql);
	   	pstmt.setInt(1,idx);
		rs=pstmt.executeQuery();
	   	if(rs.next()){
		   String name=rs.getString("name");
		   String title=rs.getString("title");
		   String memo=rs.getString("memo");
		   String time=rs.getString("time");
		   int hit=rs.getInt("hit");
		   hit++;
		   sql="update board set hit=? where num=?";
		   pstmt=conn1.prepareStatement(sql);
		   pstmt.setInt(1,hit);
		   pstmt.setInt(2,idx);
		   pstmt.executeUpdate();
%>
<form name=form method=post action="#">
<table border=1 >
<tr><td colspan=2>내용</td></tr>
<tr><td width=100>글번호</td>
<td width=400></td></tr>
<tr><td>조회수</td>
<td><%=hit %></td></tr>
<tr><td>이름</td>
<td><%=name %></td></tr>
<tr><td>작성일</td>
<td><%=time %></td></tr>
<tr><td>제목</td>
<td><%=title %></td></tr>
<tr><td colspan=2>memo</td></tr>
<tr><td colspan=2><input type="button" value="글쓰기">
<input type="button" value="답글">
<input type="button" value="목록">
<input type="button" value="수정" onclick="window.location='modify.jsp?idx=<%=idx%>'">
<input type="button" value="삭제" onclick="window.location='delete.jsp?idx=<%=idx%>'"></td>
<%
	
}
   }catch(SQLException e){
	   e.printStackTrace();
   }
%>
</table>
   
   
   <td width="7"><img src="images/table_right.gif" width="5" height="30" /></td>
</body>
</html>