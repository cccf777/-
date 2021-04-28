<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function deleteCheck()
{
	var form = document.deleteform;
	
	if(!form.password.value)
	{
		alert("비밀번호적어");
		form.password.focus();
		return;
	}
		form.submit();
	}
</script>
<style>
nav{
	margin:0 0 0 0;
	float:left;
	width:100%;
	background-color:aqua;
	font-family:Verdana,Geneve,sans-serif;
	font-size:14px;
	font-weight: bold;
	color:#ff0099;
}
nav ul{
	list-style:none;
}
nav ul li{
	float:left;
	margin:0 5px;
	list-style:none;
}

nav a{
	display:block;
	padding:5px 5px 8px 5px;
	height:20px;
	text-decoration:none;
	color:#000000;
	border-style:hidden hidden solid hidden;
	border-color:transparent;
}
.section{
	height:580px;
	width:100%;
}

div>img{
	border:none;
	height:77%;
	width:100%;
}
</style>
</head>
<body>
<%
	int idx=Integer.parseInt(request.getParameter("idx"));
	String checkName="";
	checkName=(String)session.getAttribute("s_Name");
	if(checkName==null){
	%>
		<script type="text/javascript">
		alert("로그인부터");
		history.back();
		</script>
		<%}else{ %>
		<jsp:include page="header.jsp"></jsp:include>
		<nav><ul><li><a href="info.jsp">회사소개</a></li>
		<li><a href="insert_custom.jsp">고객정보 등록</a></li>
		<li><a href="insert_part.jsp">부품정보 등록</a></li>
		<li><a href="member_list.jsp">고객정보 목록</a></li>
		<li><a href="select_list.jsp">부품정보 목록</a></li>
		<li><a href="member_list.jsp">회원정보 목록</a></li>
		<li><a href="list.jsp">게시판</a></li>
		<li><a href="main.jsp">홈으로</a></li>
		</ul>
	</nav>
	
<div class="section">
<form name=deleteform method=post action="delete_ok.jsp?idx=<%=idx %>">
<table align=center>

	<tr><td>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr style="background:url('images/table_mid.gif') repeat=x; text-align:center;">
		<td width="5"><img src="images/table_left.gif" width="5" height="30" /></td>
		<td>삭제</td>
		<td width="5"></td><img src="images/table.right.gif" width="5" height="30" />
		</tr>
	</table>
	<table>
		<tr>
		<td>&nbsp;</td>
		<td align=center>비밀번호</td>
		<td><input type="password" name="password" size="50" maxlegth="100"></td>
		<td>&nbsp;</td>
		</tr>
		<tr height=1 bgcolor="#dddddd"><td colspan=4></td></tr>
		<tr height=1 bgcolor="#82B5DF"><td colspan=4></td></tr>
		<tr align=center>
		<td>&nbsp;</td>
		<td colspan=2><input type=button value="삭제" OnClick="javascript:deleteCheck();">
		<input type=button value="취소" onClick="javascript:history.back(-1)">
		<td>&nbsp;</td>
		<tr></table></td></tr>
</table></form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
	<%}%>

</body>
</html>











