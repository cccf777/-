<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	Connection conn=null;
	//System.out.println("error");
	try{
	String url="jdbc:oracle:thin:@//localhost:1521/xe";
	String user="system";
	String pwd="1234";
	String jdbc_Driver="oracle.jdbc.OracleDriver";
	Class.forName(jdbc_Driver);
	
	conn = DriverManager.getConnection(url,user,pwd);
	System.out.println("db연결 성공");
	
	}catch (SQLException e){
		
		System.out.println("db연결 실패~!");
		System.out.println("SQLException: "+e.getMessage()); 
		e.printStackTrace();
	} 
%> 
</body>
</html>
