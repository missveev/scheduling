package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Connection;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("     <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <!-- Custom fonts for this template -->\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <!-- Custom styles for this template -->\n");
      out.write("  <link href=\"css/one-page-wonder.min.css\" rel=\"stylesheet\">\n");
      out.write("   <link href=\"css/main.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js\"></script>\n");
      out.write("    <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("    <script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body id=\"page-top\" class=\"index\">\n");
      out.write("\n");
      out.write(" <nav class=\"navbar navbar-expand-lg navbar-dark navbar-custom fixed-top\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <a class=\"navbar-brand\" href=\"home.jsp\">SCHEDULING</a>\n");
      out.write("      <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("        <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("      </button>\n");
      out.write("      <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("         \n");
      out.write("         <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"addcourse.jsp\"><span></span> Add Course</a></li>\n");
      out.write("        \n");
      out.write("\t\t <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"addroom.jsp\"><span></span> Add Room</a></li>\n");
      out.write("\t\t<li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"opencourse.jsp\"><span></span> Add CourseOpening</a></li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"timetable.jsp\"><span></span> Generate Timetable</a></li>\n");
      out.write("         <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"manage\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"><span></span> Manage</a>\n");
      out.write("                            <ul class=\"dropdown-menu\" aria-labelledby=\"manage\">\n");
      out.write("                                \n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"roomlist.jsp\"><span></span> View Room</a></li>\n");
      out.write("                                \n");
      out.write("                                <li> <a class=\"dropdown-item\" href=\"courselist.jsp\"><span></span> View Course</a></li>\n");
      out.write("                                \n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"opencourselist.jsp\"><span></span> View CourseOpening</a></li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"view.jsp\"><span></span> View Timetable</a></li>\n");
      out.write("                            </ul>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("                                                        \n");
      out.write("            \n");
      out.write("    \t</ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("\t<div class=\"page-wrapper bg-dark p-t-100 p-b-50\">\n");
      out.write("        <div class=\"wrapper wrapper--w900\">\n");
      out.write("            <div class=\"card card-6\">\n");
      out.write("                <div class=\"card-heading\">\n");
      out.write("\t\t\t\t\t<h2 class=\"title\">LOGIN HERE</h2>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("\t\t\t <form method=\"post\" action=\"login\">\n");
      out.write("\t\t\t<div class=\"form-row\">\n");
      out.write("\t\t\t  <div class=\"name\" for=\"username\">Username</div>  \n");
      out.write("\t\t\t  <div class=\"value\">\n");
      out.write("\t\t\t  <input id=\"username\" name=\"username\" type=\"text\" placeholder=\"\" class=\"input--style-6\" required=\"\">\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"form-row\">\n");
      out.write("\t\t\t  <div class=\"name\" for=\"password\">Password</div>\n");
      out.write("\t\t\t  <div class=\"value\">\n");
      out.write("\t\t\t\t<input id=\"password\" name=\"password\" type=\"password\" placeholder=\"\" class=\"input--style-6\" required=\"\">\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                             <div class=\"form-row\">\n");
      out.write("\t\t\t  <div class=\"name\" for=\"password\">Department</div>\n");
      out.write("\t\t\t  <div class=\"value\">\n");
      out.write("                              <select name=\"department\" name=\"department\" value=\"select your department\" class=\"input--style-6\" >\n");
      out.write("                                  ");
 
Connection con=null;
ResultSet rs=null;

try
{
     Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?", "root", "");
     HttpSession ss=request.getSession();
     
     PreparedStatement pst=con.prepareStatement("select * from department");
     
     rs=pst.executeQuery();
     while(rs.next())
     {
          String name = rs.getString("name");

      out.write("\n");
      out.write("\n");
      out.write("          <option value=\"");
      out.print(name);
      out.write('"');
      out.write('>');
      out.print(name);
      out.write("</option>\n");

     }
}catch(Exception e)
{    out.print(e);
}

      out.write("\n");
      out.write("</select>\n");
      out.write("                          </div>\n");
      out.write("                             </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t<div class=\"footer\" >\n");
      out.write("\t\t\t <input class=\"btn btn--radius-2 btn--blue-2\" name=\"lgn\" type=\"submit\" value=\"LOGIN\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</form>\n");
      out.write("\t\t\n");
      out.write("\t\t <div class=\"label--desc\">Don't have an account?</font> <a href=\"register.jsp\">Register here </a></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
