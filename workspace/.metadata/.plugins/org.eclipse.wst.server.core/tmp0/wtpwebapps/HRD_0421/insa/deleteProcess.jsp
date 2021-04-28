<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBconnOracle.jsp" %>
<%
	PreparedStatement pstmt=null;
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	ResultSet rs=null;//값을 읽어오기위해서 쓰는것.
	try{
		String sql="select id,name from person0421 where id=?";//홈에서 넘어온 아이디를 체크하기위함
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			String ID=rs.getString(1);
			String NAME=rs.getString("name");
			if(name.equals(NAME)){
				sql="delete from person0421 where id=? and name=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1,id);
				pstmt.setString(2,name);
				pstmt.executeUpdate();
				%>
				<script>
					alert("삭제 되었습니다.");
					history.back(-1);				
				</script>
				<%
			}else{
				%>
				<script>
					alert("이름이 다릅니다.");
					history.back(-1);	
				</script>
				<%
			}
		}else{
			%>
			<script>
				alert("사번이 다릅니다.");
				history.back(-1);	
			</script>
			<%
		}
	}catch(SQLException e){
		
	}
%>
</body>
</html>