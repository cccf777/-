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
<%
	String id=request.getParameter("id");
%>
<section>
<form name=form method=post action="hakDeleteProcess.jsp">
<table border=1>
	<tr>
		<th width=30%>학번</th>
		<td ><input type=text name=id size=30 id=in value="<%=id %>"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type=text name=name size=30 id=in > 
	</tr>
	<tr>
		<td colspan=2 align=center>
		<input type=submit value="삭제">
		<input type=reset value="취소">
	</tr>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>