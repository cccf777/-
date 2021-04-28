<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
        <title>
            test
        </title>
        <style>
        	hm{
        	font-size: 2em;
        	
        	}
        
            header{
                width:100%;
                height:15%;
                background-color: burlywood;
            }
            nav{
                width:100%;
                height:5%;
                background-color:red;
                padding-top:20px;
            }

            section{
                width:100%;
                height: 75%;
                background-color: lemonchiffon;
                float:left;
            }
            footer{
                width:100%;
                height: 5%;
                background-color: deeppink;
                clear:both;
            }
            html,body{
                width:100%;
                height:100%;
            }
            *{
                padding:0%;
                margin:0%;
            }
            ul{
                list-style:none;
                text-align:center;
            }
            ul li{
                display:inline;
                padding:30px;
                margin-top:20px;
                letter-spacing: 10px;
            }
            ul li a{
                text-decoration: none;
                color:black;
            }
 
        </style>
    </head>
    <body>
        <header> 
            <h1 align="center">서버프로그램 수행 평가 (인사관리)</h1>
        </header>
        <nav>
            <ul>
                <li><a href="select.jsp">조회</a></li>
                <li><a href="insertForm.html">사원등록</a></li>
                <li><a href="hwang_hugi.html">정보변경</a></li>
                <li><a href="hwang_add.html">퇴사처리</a></li>
                <li><a href="hwang_add.html">종료</a></li>
                <li><a href="hwang_add.html">홈으로</a></li>
            </ul>
        </nav>
        <section>
        <hm>직원 정보 조회</hm><br>
        
        </section>
        <footer>
            HRDKOEA Copyright~
        </footer>
    </body>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBconn.jsp" %>
<%
   PreparedStatement pstmt=null;
   ResultSet rs=null;
   
 
   try{
	   	String sql="select id,name,dept,position,duty,phone from person0412 where num=?";
	   	pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
	   	if(rs.next()){
		   String name=rs.getString("name");
		   String title=rs.getString("title");
		   String memo=rs.getString("memo");
		   String time=rs.getString("time");
		   int hit=rs.getInt("hit");
		   hit++;
		   sql="update board set hit=? where num=?";
		   pstmt=conn.prepareStatement(sql);
		   pstmt.setInt(1,hit);
		   pstmt.executeUpdate();
%>
<form name=form method=post action="#">
<table border=1 >
<tr><td colspan=2>내용</td></tr>
<tr><td width=100>글번호</td>
<td width=400></td></tr>
<tr><td>조회수</td>
<td><%=hit %></td></tr>
<tr><td>이름</td>
<td><%=name %></td></tr>
<tr><td>작성일</td>
<td><%=time %></td></tr>
<tr><td>제목</td>
<td><%=title %></td></tr>
<tr><td colspan=2>memo</td></tr>
<tr><td colspan=2><input type="button" value="글쓰기">

<input type="button" value="수정" onclick="window.location='modify.jsp'">
<input type="button" value="삭제" onclick="window.location='delete.jsp"></td>
<%
	
}
   }catch(SQLException e){
	   e.printStackTrace();
   }
%>
</table>
   
   
   <td width="7"><img src="images/table_right.gif" width="5" height="30" /></td>
</body>
</html>
