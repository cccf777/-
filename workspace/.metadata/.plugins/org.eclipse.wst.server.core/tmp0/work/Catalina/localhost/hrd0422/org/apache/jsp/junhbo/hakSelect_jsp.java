/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.44
 * Generated at: 2021-04-26 03:39:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.junhbo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.*;

public final class hakSelect_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/junhbo/footer.jsp", Long.valueOf(1618965581611L));
    _jspx_dependants.put("/junhbo/header.jsp", Long.valueOf(1619050604180L));
    _jspx_dependants.put("/junhbo/nav.jsp", Long.valueOf(1619407619696L));
    _jspx_dependants.put("/junhbo/DBconnOracle.jsp", Long.valueOf(1618983171625L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.PreparedStatement");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"common.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<header>학사/수강정보 관리 ver1.0\r\n");
      out.write("\r\n");
      out.write("</header>\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"common.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<nav>\r\n");
      out.write("\t<ul>\r\n");
      out.write("\t\t<li><a href=\"hakInsert.jsp\">학사정보추가</a></li>\r\n");
      out.write("\t\t<li><a href=\"subInsert.jsp\">교과목추가</a></li>\r\n");
      out.write("\t\t<li><a href=\"teacherInsert.jsp\">강사추가</a></li>\r\n");
      out.write("\t\t<li><a href=\"hakSelect.jsp\">학사정보조회</a></li>\r\n");
      out.write("\t\t<li><a href=\"subSelect.jsp\">교과목조회</a></li>\r\n");
      out.write("\t\t<li><a href=\"teacherSelect.jsp\">강사조회</a></li>\r\n");
      out.write("\t\t<li><a href=\"index.jsp\">홈으로</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("</nav>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<section>\r\n");
      out.write("<h2>학사 정보 조회 </h2>\r\n");
      out.write("\r\n");
      out.write("    \r\n");

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

      out.write(" \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write('\r');
      out.write('\n');

	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int cnt=0;
	String sql;
	try{
		sql="select count(*) from stud0422";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		if(rs.next()){
			cnt=rs.getInt(1);
		}else{
			cnt=0;
		}
	}catch(SQLException e){
		e.printStackTrace();
	}


      out.write("\r\n");
      out.write("<p id=\"t1\">");
      out.print(cnt );
      out.write("명 있음</p>\r\n");
      out.write("<table id=\"table1\" border=\"1\">\r\n");
      out.write("<tr>\r\n");
      out.write("\t<th width=10px>학번</th>\r\n");
      out.write("\t<th width=20px>성명</th>\r\n");
      out.write("\t<th width=30px>학과</th>\r\n");
      out.write("\t<th width=20px>학년</th>\r\n");
      out.write("\t<th width=80px>주소</th>\r\n");
      out.write("\t<th width=10px>연락처</th>\r\n");
      out.write("\t<th width=10px>관리</th>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");

	//PreparedStatement pstmt=null;
	//ResultSet rs=null;//데이터를 읽을것이기 때문에 쓴다
	
	try{
		sql="select *from stud0422";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		String id,name,address,phone,deptname;
		int dept,position;
		while(rs.next()){
			id=rs.getString("studNo");
			name=rs.getString("name");
			dept=rs.getInt("dept");
			position=rs.getInt("position");
			address=rs.getString("address");
			phone=rs.getString("phone");
			if(dept==1){
				deptname="컴퓨터공학과";
			}else if(dept==2){
				deptname="경영학과";
			}else deptname="경제학과";

      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td>");
      out.print(id );
      out.write("</td>\r\n");
      out.write("\t<td>");
      out.print(name );
      out.write("</td>\r\n");
      out.write("\t<td>");
      out.print(deptname );
      out.write("</td>\r\n");
      out.write("\t<td>");
      out.print(position );
      out.write("</td>\r\n");
      out.write("\t<td>");
      out.print(address );
      out.write("</td>\r\n");
      out.write("\t<td>");
      out.print(phone );
      out.write("</td>\r\n");
      out.write("\t<td><a href=\"hakUpdate.jsp?id=");
      out.print(id );
      out.write("\">수정</a>/\r\n");
      out.write("\t<a href=\"hakDelete.jsp?id=");
      out.print(id );
      out.write("\" onclick=\"if(!confirm('정말로 삭제하시겠습니까?')) return false;\">삭제</a></td>\r\n");
      out.write("</tr>\r\n");

		}
	}catch(SQLException e){
		e.printStackTrace();
	}

      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"common.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<footer>\r\n");
      out.write("HRDKorea Copyright2021\r\n");
      out.write("</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
