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
<%@ include file="DBconnOracle.jsp" %>
<h3>도서 대출 예약 수정하기</h3>
<form name=form method=post action="reUpdateProcess.jsp">
<table border=1>
<%
	String lentno=request.getParameter("lentno");
	request.setCharacterEncoding("utf-8");
	
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sel1="",sel2="";
	String custname="",bookno="",bookname="",outdate="",indate="",status="";
	try{
		String sql="select a.lentno,a.custname,a.bookno,to_char(a.outdata,'yyyy-mm-dd'),to_char(a.indate,'yyyy-mm-dd'),a.status,a.class1,b.bookname from reservation0415 a,bookinfo0415 b where a.bookno=b.bookno and lentno=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,lentno);
		rs=pstmt.executeQuery();
		if(rs.next()){
			 custname=rs.getString(2);
			 bookno=rs.getString(3);
			 bookname=rs.getString(8);
			 outdate=rs.getString(4);
			 indate=rs.getString(5);
			 status=rs.getString(6);
			 if(status.equals("1")){
				 sel1="checked";
				 sel2="";
			 }else{
				 sel1="";
				 sel2="checked";
			 }
%>

<tr>
<th width=20%>대출번호</th>
<td><input type="text" name="lentno" value="<%=lentno %>"></td>
<th width=20%>고객성명</th>
<td><input type="text" name="custname" value="<%=custname %>" %></td>
</tr>
<tr>
<th width=20%>도서코드</th>
<td><input type="text" name="bookno" value="<%=bookno %>"></td>
<th width=20%>도서이름</th>
<td><input type="text" name="bookname" value="<%=bookname %>"></td>
</tr>
<tr>
<th width=20%>대출일자</th>
<td><input type="text" name="outdate" value="<%=outdate %>"></td>
<th width=20%>반납일자</th>
<td><input type="text" name="indate" value="<%=indate %>"></td>
</tr>
<tr>
<th width=20%>대출상태</th>
<td><input type="radio" name="status" value="1"<%=sel1%>>대출
<input type="radio" name="status" value="2"<%=sel2%>>반납</td>
<th width=20%>등급</th>
<td><select name="class1">
	<option value="S">S</option>
	<option value="A">A</option>
	<option value="B">B</option>
	<option value="C">C</option>
</select></td>
</tr>
<tr>
<td colspan=4 align=center>
<input type="button" value="수정">
<input type="button" value="취소">
</table>

</form>
<%
		}
	}catch(SQLException e){
		e.printStackTrace();
	}

%>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>