<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function modifyCheck(){
	var form=document.modifyform;
	if(!form.password.value){
		alert("비밀번호를 적어주세요");
		form.password.focus();
		return;
	}
	if(!form.title.value){
		alert("제목을 적어주세요");
		form.title.focus();
		return;
	}
	if(!form.memo.value){
		alert("내용을 적어주세요");
		form.memo.focus();
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
	font-family:Verdana,Geneva,sans-serif;
	font-size: 14px;
	font-weight:bold;
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
table{
	align:center;
}
</style>
</head>
<body>

<% String checkName="";
	checkName=(String)session.getAttribute("s_Name");
	if(checkName==null){
	%>
		<script type="text/javascript">
		alert("먼저 로그인을 하세요.");
		history.back();
		</script>
		<% }else {%>
	<jsp:include page="header.jsp"></jsp:include>
	<nav>
		<ul>
		<li><a href="info.jsp">회사소개</a></li>
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
<% 
request.setCharacterEncoding("utf-8");
Connection conn = null;
PreparedStatement pstmt=null;
String sql="";
ResultSet rs=null;
String rst="";
String msg="";
String name=null;
String password=null;
String title=null;
String memo=null;

int idx=Integer.parseInt(request.getParameter("idx"));

System.out.println("idx:"+idx);

	//데이터베이스 연결관련 정보를 문자열로 선언
	String jdbc_driver="com.mysql.cj.jdbc.Driver";
	String jdbc_url="jdbc:mysql://127.0.0.1/yangjung?useUnicode=yes&characterEncoding=UTF-8";
	
	try{
		//jdbc드라이버로드
		Class.forName(jdbc_driver);
		//데이터베이스 연결정보를 이용해 Connection 인스턴스 확보
		conn=DriverManager.getConnection(jdbc_url,"root","1234");
		//connection 클래스의 인스턴스로부터 sql문 작성을 위한 스테이트먼트 준비
		Statement stmt=conn.createStatement();
		sql="select name,password,title,memo from board wher num="+idx;
		rs= stmt. executeQuery(sql);
		
		if(rs.next()){
			name=rs.getString(1);
			password=rs.getString(2);
			title=rs.getString(3);
			memo=rs.getString(4);
		}
		rs.close();
		stmt.close();
		conn.close();
	}catch(SQLException e){
		out.println(e.toString());
	}
	%>
	
<form name=modifyform method=post action="modift_ok.jsp?idx=<%= idx %>">
<table align=center>
<tr>
<td>
<table width=100% cellpadding=0 cellspacing=0 border=0>
<tr style="background:url('../images/table_mid.gif')repeat-x;text-align:center;">
<td width=5><img src="../images/table_left.gif" width=5 height=30></td>
<td>수정</td>
<td width=5><img src="../images/table_right.gif" width=5 height=30></td>
</tr>
</table>

<table>
<tr><td>&nbsp;</td>
<td align=center>제목</td>
<td><input type=text name=title size=50 maxlegth=50 value="<%=title %>"></td>
<td>&nbsp;</td></tr>
<tr height=1 bgcolor="#dddddd"><td colspan=4></td></tr>
<tr><td>&nbsp;</td>
<td align=center>이름</td>
<td><input type=text name=name size=50 maxlength=50 value="<%=name %>"></td>
<td>&nbsp;</td></tr>
<tr height=1 bgcolor="#dddddd"><td colspan=4></td></tr>
<tr><td>&nbsp;</td>
<td align=center>비밀번호</td>
<td><input type=password name=password size=50 maxlength=50></td>
<tr><td>&nbsp;</td>

<tr height=1 bgcolor="#dddddd"><td colspan=4></td></tr>
<tr><td>&nbsp;</td>
<td align=center>내용</td>
<td><textarea name=memo cols=50 rows=13><%=memo %></textarea></td>
<td>&nbsp;</td></tr>
<tr height=1 bgcolor="#dddddd"><td colspan=4></td></tr>
<tr height=1 bgcolor="#dddddd"><td colspan=4></td></tr>
<tr align=center>
<td>&nbsp;</td>
<td colspan=2><input type=button value="수정" OnClick="javascript:modifyCheck();">
<input type=button value="취소" onClick="javascript:history.back(-1)">
<td>&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table>
</form>
	</div>
	 <jsp:include page="footer.jsp"></jsp:include>
	 <%} %>
</body>
</html>





<%-- //jsp?idx=<%=idx %>를 넘겨줘야 어떤걸 삭제할지를 옮길수있다 a태그에서! 
 --%>
















