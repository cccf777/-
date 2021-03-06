<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
</head>
<body>
<%
//데이터베이스 연결관련 변수 선언
Connection conn = null;
PreparedStatement pstmt = null;
String sql="";
ResultSet rs = null;
String rst = "";
String msg = "";
int total = 0;

// 데이터베이스 연결관련 정보를 문자열로 선언
String jdbc_driver = "com.mysql.jdbc.Driver";
String jdbc_url = "jdbc:mysql://127.0.0.1/yangjung?useUnicode=yes&characterEncoding=UTF-8";

try{
   // JDBC 드라이버 로드
   Class.forName(jdbc_driver);
   
   // 데이터베이스 연결정보를 이용해 Connection 인스턴스 확보
   conn=DriverManager.getConnection(jdbc_url,"root","1234");
   //  Connection 클래스의 인스턴스로 부터 SQL 문 작성을 위한 Statement 준비
   Statement stmt = conn.createStatement();
   
   String sqlCount = "SELECT COUNT(*) FROM board";
   rs = stmt.executeQuery(sqlCount);
   
   if(rs.next()){
   total = rs.getInt(1);
   }
   rs.close();
   out.print("총 게시물 : " + total + "개");
   
   String sqlList = "SELECT NUM, NAME, TITLE, TIME, HIT from board order by NUM DESC";
   rs = stmt.executeQuery(sqlList);
   
   %>
   <table width="100%" cellpadding="0" cellspacing="0" border="0">
   <tr height="5"><td width="5"></td></tr>
   <tr style="background:url('images/table_mid.gif') repeat-x; text-align:center;">
   <td width="5"><img src="images/table_Left.gif" width="5" height="30" /></td>
   <td width="73">번호</td>
   <td width="379">제목</td>
   <td width="73">작성자</td>
   <td width="164">작성일</td>
   <td width="58">조회수</td>
   <td width="7"><img src="images/table_right.gif" width="5" height="30" /></td>
   </tr>
   <%
   if(total==0) {
   %>
   <tr align="center" bgcolor="#FFFFFF" height="30">
   <td colspan="6">등록된 글이 없습니다.</td>
   </tr>
   <%
   } else {
   
   while(rs.next()){
   int idx = rs.getInt(1);
   String name = rs.getString(2);
   String title = rs.getString(3);
   String time = rs.getString(4);
   int hit = rs.getInt(5);
   %>
   <tr height="25" align="center">
   <td>&nbsp;</td>
   <td><%=idx %></td>
   <td align="left"><a href="view.jsp?idx=<%=idx %>"><%=title %></td>
   <td align="center"><%=name %></td>
   <td align="center"><%=time %></td>
   <td align="center"><%=hit %></td>
   <td>&nbsp;</td>
   </tr>
   <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
   <%
   }
   }
   rs.close();
   stmt.close();
   conn.close();
   } catch(SQLException e) {
   out.println( e.toString());
   }
   %>
   <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
   </table>
   
   <table width="100%" cellpadding="0" cellspacing="0" border="0">
   <tr><td colspan="4" height="5"></td></tr>
   <tr align="center">
   <td><input type=button value="글쓰기" onclick="window.location='write.jsp'"></td>
   </tr>
   </table>
</body>
</html>