package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Timetable index</title>\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom fonts for this template -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"css/one-page-wonder.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/main.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js\"></script>\n");
      out.write("        <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("        <script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body id=\"page-top\" class=\"index\">\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark navbar-custom fixed-top\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                <a class=\"navbar-brand\" href=\"home.jsp\">SCHEDULING</a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"addcourse.jsp\"><span></span> Add Course</a></li>\n");
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"addroom.jsp\"><span></span> Add Room</a></li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"opencourse.jsp\"><span></span> Add CourseOpening</a></li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"timetable.jsp\"><span></span> Generate Timetable</a></li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"manage\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"><span></span> Manage</a>\n");
      out.write("                            <ul class=\"dropdown-menu\" aria-labelledby=\"manage\">\n");
      out.write("\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"roomlist.jsp\"><span></span> View Room</a></li>\n");
      out.write("\n");
      out.write("                                <li> <a class=\"dropdown-item\" href=\"courselist.jsp\"><span></span> View Course</a></li>\n");
      out.write("\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"opencourselist.jsp\"><span></span> View CourseOpening</a></li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"view.jsp\"><span></span> View Timetable</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Header -->\n");
      out.write("        <div class=\"page-wrapper bg-dark p-t-100 p-b-50\">\n");
      out.write("            <div class=\"wrapper wrapper--w900\">\n");
      out.write("                <div class=\"contentArea\">\n");
      out.write("                    <h4 class=\"subheading\"><font color=\"GOLD\">Introduction &nbsp </font></h4>\n");
      out.write("\n");
      out.write("                    <p class=\"text-muted\"><font color=\"white\">\n");
      out.write("                        This is a free site to generate\n");
      out.write("                        complete college schedule for which would be a tedious and\n");
      out.write("                        error prone task to do by hand (on paper). We provide a very\n");
      out.write("                        user friendly interface to work with and you will get your\n");
      out.write("                        time table generated in seconds.</font></p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <h4 class=\"subheading\"><font color=\"GOLD\">How to Proceed &nbsp </font></h4>\n");
      out.write("\n");
      out.write("                <p class=\"text-muted\"><font color=\"white\">You need to be logged in to make use\n");
      out.write("                    of this free software. Once logged in, you will need to\n");
      out.write("                    provide important details like batch names,subjects, faculties\n");
      out.write("                    in college etc and you are ready to go.</font></p>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <h4 class=\"subheading\"><font color=\"GOLD\">Quality of Timetable &nbsp</font> </h4>\n");
      out.write("\n");
      out.write("                <p class=\"text-muted\"><font color=\"white\">The software makes sure that the\n");
      out.write("                    generated time table is feasible at the least (there is no\n");
      out.write("                    clash) ,students get required hours each week and teachers are\n");
      out.write("                    given equal load. The user will be given more options to\n");
      out.write("                    refine timetable using some soft constraints(like setting\n");
      out.write("                    preference for a teacher,guest faculty, lab consideration etc)\n");
      out.write("                    in a later version.</font></p>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <a href=\"login.jsp\" class=\"btn btn--radius-2 btn--blue-2\">\n");
      out.write("                    <div class=\"timeline-image\">\n");
      out.write("\n");
      out.write("                        <h4>LOGIN</h4>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
