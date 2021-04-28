<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>
            test
        </title>
        <script>
            function check1(){
		        if(document.form.bookno.value==""){
			        alert('사원번호를 입력하세요');
			        document.form.bookno.focus();
                }
                if(document.form.author.value==""){
                    alert('성명을 입력하세요');
			        document.form.author.focus();
                }
               if(document.form.bookname.value==""){
                    alert('소속부서 선택하세요');
			        document.form.bookname.focus();
                }
               document.form.submit();
	        } 
        </script>
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
        <hm>도서정보 등록 화면</hm><br>
        <form name="form" method="post" action="registprocess.jsp">
        <table border="1"style="TABLE-LAYOUT: fixed"> <!---->
            <style>
                table{
                    width: 500px;
                }
                td{
                    /*text-align: center;*/
                    padding:0;
                }
            </style>
            <tr>
                <td bgcolor="grey">도서코드</td>
                <td colspan="4">
                    <input type="text" name="bookno">
                </td>

            </tr>
            <tr>
                <td bgcolor="grey">저자</td>
                <td colspan="4"><input type="text" name="author"></td>
            </tr>
            <tr>
                <td bgcolor="grey">도서이름</td>
                <td colspan="4">
                <input type="text" name="bookname">
                </td>
            </tr>
            <tr>
                <td colspan="5">
                <input type="button" value="등록" onclick="javascript:check1()">
                <input type="button" value="취소" onclick="location.href='index.html'">
                </td>
               
            </tr>
        </table>
    </form>
        </section>
        <footer>
            HRDKOEA Copyright~
        </footer>
    </body>
</html>