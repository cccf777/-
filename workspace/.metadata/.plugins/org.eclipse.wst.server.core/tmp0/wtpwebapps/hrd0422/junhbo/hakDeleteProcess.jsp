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
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	//System.out.println("삭제하려는게"+studNo+","+name+"이 맞습니까?");
	
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	try{
		String sql="select studno,name from stud0422 where studno=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		
		rs=pstmt.executeQuery();
		if(rs.next()){
			String studNo=rs.getString(1);
			String studName=rs.getString(2);
			if(name.equals(studName)){
				 sql="delete from stud0422 where studNo=?";
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1,id);
					pstmt.executeUpdate();
					%>
					<script>
						alert("삭제되었습니다");
						history.back(-1);
					</script>
					<%	
			}else{
			%>
			<script type="text/javascript">
				alert("이름이 다릅니다");
				history.back(-1);
			</script>
			<%
			}
		}else{
			%>
			<script type="text/javascript">
				alert("학번이 다릅니다");
				history.back(-1);
			</script>
			<%
		}
		}catch(SQLException e){
			e.printStackTrace();
			%>
			<script type="text/javascript">
				alert("삭제 실패");
				history.back(-1);
			</script>
			<%
		}
%>
</body>
</html>















