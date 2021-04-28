<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	Connection conn = null;
	try {
		String url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
		String user = "root";
		String pwd = "1234";
		String jdbc_Driver="com.mysql.cj.jdbc.Driver";
		Class.forName(jdbc_Driver);
		
		conn = DriverManager.getConnection(url, user, pwd);
		System.out.println("db 연결 완료");
		
		
	} catch (Exception e) {
		out.println("SQLException : "+e.getMessage());
		e.printStackTrace(); 
	}
%>