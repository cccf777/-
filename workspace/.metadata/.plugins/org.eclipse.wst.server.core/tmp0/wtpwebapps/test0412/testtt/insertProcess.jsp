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
    	
    	int id = Integer.parseInt(request.getParameter("id"));
    	String name = request.getParameter("name");
    	String dept = request.getParameter("dept");
    	String position = request.getParameter("position");
    	String duty = request.getParameter("duty");
    	String phone = request.getParameter("phone");
    	sql = "INSERT INTO person0412(id,name,dept,position,duty,phone) VALUES(?,?,?,?,?,?)";
    
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setInt(0, id);
    	pstmt.setString(1, name);
    	pstmt.setString(2, dept);
    	pstmt.setString(3, position);
    	pstmt.setString(4, duty);
    	pstmt.setString(5, phone);
    	
    	pstmt.execute();
    	pstmt.close();
    	
    	conn.close();
    } catch(SQLException e) {
    	out.println( e.toString() );
    }
    %>
    <script language = javascript>
    self.window.alert("입력한 글을 저장하였습니다.");
    location.href="index.html";
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