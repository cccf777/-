<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function deleteCheck(){
	var form=document.deleteform;
	if(!form.password.value){
		alert("비밀번호를 적어주세요");
		form.password.focus();
		return;
	}
	form.submit();
}

</script>
</head>
<body>
<% int idx = Integer.parseInt(request.getParameter("idx"));
String checkName="";
checkName=(String)session.getAttribute("s_Name");
if(checkName==null){
	%>
	<script type="text/javascript">
	alert("먼저 로그인을 하세요.");
	history.back();	
	</script>
	<%}else { %>
<form name="deleteform" method="post" action="delete_ok.jsp?idx=<%=idx%>">


<table>

<tr>
<td>
<table width="100%" border=0 cellpadding=0 cellspacing=0>
<tr style="background:url('../IMG/table_mid.gif') repeat-x; text-align:center;">
<td width="5"><img src="../IMG/table_left.gif" width="5" height="30"/></td>
<td>내용</td>
<td width="5"><img src="../IMG/table_right.gif" width="5" height="30"/></td>
</tr>
</table>

<table>

<tr>
<td>&nbsp;</td>
<td align="center">비밀번호</td>
<td><input type="password" name="password" size="50" maxlength="50"></td>
<td>&nbsp;</td>
</tr>

<tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>

<tr align="center" >
<td>&nbsp;</td>
<td colspan="2">

<input type="button" value="삭제" onclick="javascript:deleteCheck();">
<input type="button" value="취소" onclick="javascript:history.back(-1)">

<td>&nbsp;</td>
</tr>

</table>

</td>
</tr>
</table>






</form>
<%} %>

</body>
</html>