<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utd-8");
	Connection conn1 =null;
	PreparedStatement pstmt=null;
	String sql="";
	ResultSet rs=null;
	String rst="";
	String msg="";
	String password="";
	
	int idx=Integer.parseInt(request.getParameter("idx"));
	
	String title=request.getParameter("title");
	String memo = request.getParameter("memo");
	String passw=request.getParameter("password");
	
	//데이터베이스 연결관련 정보를 문자열로 선언
	String jdbc_driver="com.mysql.cj.jdbc.Driver";
	String jdbc_url="jdbc:mysql://127.0.0.1/yangjung?useUnicode=yes&characterEncoding=UTF-8";
	
	try{
		//jdbc드라이버 로드
		Class.forName(jdbc_driver);
		
		//데이터베이스 연결정보를 이용해 Connection 인스턴스 확보
		conn1=DriverManager.getConnection(jdbc_url,"root","1234");
		//connection클래스의 인스턴스로부터 에스큐엘 문 작성을 위한 스테이트먼트 준비
		Statement stmt=conn1.createStatement();
		
		sql="select password from board wher num="+idx;
		rs= stmt. executeQuery(sql);
		
		if(rs.next()){
			password=rs.getString(1);
		}
		if(password.equals(passw)){
			sql="update board set title='"+title+"',memo="+memo+"'where num="+idx;
			stmt.executeUpdate(sql);
		%>
		<script type="text/javascript">
			self.window.alert("글이 수정되었습니다.");
			location.href="view.jsp?idx=<%=idx%>";
		</script>
		<%
		rs.close();
		stmt.close();
		conn1.close();
		
		}else{
			%>
			<script type="text/javascript">
				self.window.alert("비밀번호가 틀렸습니다.");
				location.href="javascript:history.back()";
			</script>
			<%
		}
	}catch(SQLException e){
		out.println(e.toString());
	}
		%>
</body>
</html>












