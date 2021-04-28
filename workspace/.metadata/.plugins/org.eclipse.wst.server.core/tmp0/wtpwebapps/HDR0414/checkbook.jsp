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
            <h1 align="center">도서 회원관리 ver1.0</h1>
        </header>
        <nav> 
            <ul>
                <li><a href="regist.jsp">도서정보 등록</a></li>
                <li><a href="insertForm.html">도서 대출정보 등록</a></li>
                <li><a href="checkbook.jsp">도서 정보 조회</a></li>
                <li><a href="addtable.jsp">도서 대출 정보 조회</a></li>
                <li><a href="hwang_add.html">홈으로</a></li>
            </ul>
        </nav>
        <section>
        <hm>학사정보 목록</hm><br>
        <form name=form method=post action="#">
		<table border=1 >
		<tr>
			<td width=100>no</td>
			<td width=100>도서코드</td>
			<td width=100>저자</td>
			<td width=100>도서명</td>
		</tr>
        <%@ include file="DBconnOracle.jsp" %>
		<%
  		 PreparedStatement pstmt=null;
  		 ResultSet rs=null;
   
  		 try{
	  	 	String sql="select bookno,author,bookname from bookinfo_tbl";
	   		pstmt=conn.prepareStatement(sql);

			rs=pstmt.executeQuery();
			//변수no잡고 ++시키고 뿌리라
			int a=1;
	   		while(rs.next()){
	   			
		   		int bookno=rs.getInt("bookno");
		   		String author=rs.getString("author");
		   		String bookname=rs.getString("bookname");
		   
		   		
		   		/* pstmt=conn.prepareStatement(sql);
		   		pstmt.setInt(1,a);
		   		pstmt.setInt(2,bookno);
		   		pstmt.setString(3,author);
		   		pstmt.setString(4,bookname);
		   		pstmt.executeUpdate(); 필요없음 업데이트하는것임*/
		   		
		%>
	
	<tr>
		<td width=100><%=a %></td>
		<td width=100><%=bookno %></td>
		<td width=100><%=author %></td>
		<td width=100><%=bookname %></td>
	</tr>
	
	<%
	a++;}
  	}catch(SQLException e){
	   e.printStackTrace();
   	}
	%>
	<tr>
		<td colspan=4><input type="submit" value="추가" ></td>
	</tr>
	</table>
   	</form>
        </section>
        <footer>
            HRDKOEA Copyright~
        </footer>
    </body>
</html>