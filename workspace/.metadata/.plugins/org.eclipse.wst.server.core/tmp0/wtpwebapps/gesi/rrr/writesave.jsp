<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%
    request.setCharacterEncoding("utf-8");
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    String sql="";
    ResultSet rs = null;
    String rst = "";
    String msg = "";
    
    
    String jdbc_driver = "com.mysql.jdbc.Driver";
    String jdbc_url = "jdbc:mysql://127.0.0.1/yangjung?useUnicode=yes&characterEncoding=UTF-8";
    
    try{
    	Class.forName(jdbc_driver);
    	
    	conn = DriverManager.getConnection(jdbc_url,"root","1234");
    	
    	String title = request.getParameter("title");
    	String name = request.getParameter("name");
    	String password = request.getParameter("password");
    	String standard = request.getParameter("standard");
    	String memo = request.getParameter("memo");
    	sql = "INSERT INTO board(name,password,title,memo,time) VALUES(?,?,?,?,sysdate())";
    
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, name);
    	pstmt.setString(2, password);
    	pstmt.setString(3, title);
    	pstmt.setString(4, memo);
    	
    	pstmt.execute();
    	pstmt.close();
    	
    	conn.close();
    } catch(SQLException e) {
    	out.println( e.toString() );
    }
    %>
    <script language = javascript>
    self.window.alert("입력한 글을 저장하였습니다.");
    location.href="list.jsp";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>