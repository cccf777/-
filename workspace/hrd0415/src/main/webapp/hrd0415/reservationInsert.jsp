<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 회원 관리</title>
<script type="text/javascript">
function check1(str){
	if(document.form.lentno.value==""){
		alert("대출번호가 입력되지 않음");
		document.form.lentno.focus();
	}
	if(document.form.custname.value==""){
		alert("고객이름이 입력되지 않음");
		document.form.custname.focus();
	}
	if(document.form.bookno.value==""){
		alert("도서번호가 입력되지 않음");
		document.form.bookno.focus();
	}
	if(document.form.outdate.value==""){
		alert("대출일자가 입력되지 않음");
		document.form.outdate.focus();
	}else if(str=="insert"){
		form.action="reservationProcess.jsp";
	}
}
function changesubmit(){
	document.form.submit();
}
</script>

</head>

<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<%@ include file="DBconnOracle.jsp" %>
<%
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String bookno=request.getParameter("bookno");
	//System.out.println("북네임 에러1"+bookno);
	String lentno=request.getParameter("lentno");
	String custname=request.getParameter("custname");
	String outdate=request.getParameter("outdate"); //폼에서 가져오는 파라미터임
	String indate=request.getParameter("indate");
	
	
	//
	//System.out.println("error : "+bookno);
	//
	
	
	String bookname="";
	int sel=0;
	if(bookno==null){
		bookno="";
		bookname="";
		lentno="";
		custname="";
		outdate="";
		indate="";
	}else{
		
	
	String sql="select bookno,bookname from bookinfo0415 where bookno=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, bookno);
	rs=pstmt.executeQuery();
	if(rs.next()){
		bookname=rs.getString("bookname");
	}else{
		%>
		<script>
			alert("등록되지 않은 코드입니다.");
			history.back(-1);
		</script>
		<%
	}
	}
%>
<h3 id="r3">도서 예약 정보 등록 화면</h3>
<form name="form" method=post action="reservationInsert.jsp">
<table border=1 id="tab1">
<tr>
	<th width="20%">대출번호</th>
	<td><input id="in1" type="text" name="lentno" value="<%=lentno%>"></td>
	<th width="20%">고객성명</th>
	<td><input id="in1" type="text" name="custname" value="<%=custname%>"></td>
</tr>
<tr>
	<th width="20%">도서코드</th>
	<td><input id="in1" type="text" name="bookno" value="<%=bookno %>" onchange="javascript:changesubmit();"></td>
	<th width="20%">도서이름</th>
	<td><input id="in1" type="text" name="bookname" value="<%=bookname %>"></td>
</tr><tr>
	<th width="20%">대출일자</th>
	<td><input id="in1" type="text" name="outdate" value="<%=outdate %>"></td>
	<th width="20%">반납일자</th>
	<td><input id="in1" type="text" name="indate" value="<%=indate %>" onchange="javascript:changesubmit();"
		<% if(indate==""){sel=1;}else{sel=0;}%>></td>
</tr>
<tr>
	<th width="20%">대출상태</th>
	<td><input type="radio" name="status" value="1" onchange="javascript:changesubmit();"
		<% if(sel==1){%>checked<%} %>>대출
		<input type="radio" name="status" value="2" onchange="javascript:changesubmit();"
		<% if(sel==0){%>checked<%} %>>반납</td>
	<th width="20%">등급</th>
	<td>
		<select id="in1" name="class1">
			<option value="S" selected>S</option>
			<option value="a" >a</option>
			<option value="b" >b</option>
			<option value="c" >c</option>
		</select>
	</td>
</tr>
<tr>
	<th colspan=4 align=center>
	<button id="in2" type="submit" onclick='check1("insert")'>저장</button>
	<button id="in2" type="reset" >취소</button>
	</th>
</tr>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>