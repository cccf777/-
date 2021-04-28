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
		String sql="select count(*) from reservation0415";
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
<p id="p1">총<%=cnt %>권의 도서예약정보가 있습니다.</p>
<hr>
<table id="tab2" >
<tr>
	<th>no</th>
	<th>대출번호</th>
	<th>고객성명</th>
	<th>도서코드</th>
	<th>도서명</th>
	<th>대출일자</th>
	<th>반납일자</th>
	<th>대출상태</th>
	<th>등급</th>
</tr>
<%
	String sql="select a.lentno,a.custname,a.bookno,b.bookname,to_char(a.outdata,'yyyy-mm-dd'),to_char(a.indate,'yyyy-mm-dd'),a.status,a.class1 from reservation0415 a,bookinfo0415 b where a.bookno=b.bookno";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();//읽는것
	String lentno,custname,bookno,bookname,outdata,indate,status,class1;
	int no=0;
	while(rs.next()){
		lentno=rs.getString(1); 
		custname=rs.getString(2);
		bookno=rs.getString(3);
		bookname=rs.getString(4);
		outdata=rs.getString(5);
		indate=rs.getString(6);
		status=rs.getString(7);
		class1=rs.getString(8);
		no++;
%>
<tr>
	<td><%=no %></td>
	<td><a href="reservationUpdate.jsp?lentno=<%=lentno %>"><%=lentno %></a></td>
	<td><%=custname%></td>
	<td><%=bookno %></td>
	<td><%=bookname %></td>
	<td><%=outdata %></td>
	<td><%=indate %></td>
	<td><%=status %></td>
	<td><%=class1 %></td>
</tr>
<% }%>
</table>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>










