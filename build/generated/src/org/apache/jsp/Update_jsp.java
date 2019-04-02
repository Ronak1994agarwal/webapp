package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Update_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Updation</h1>\n");
      out.write("        <form>\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td><lable for=\"firstname\">First Name:</lable></td> \n");
      out.write("                    <td><input type=\"text\" name=\"fname\" id=\"firstname\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td><lable for=\"lastname\">Last Name:</lable></td> \n");
      out.write("                    <td><input type=\"text\" name=\"lname\" id=\"lastname\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td><lable for=\"email\">Email:</lable></td> \n");
      out.write("                    <td><input type=\"email\" name=\"email\" id=\"email\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td><lable for=\"password\">Password:</lable></td> \n");
      out.write("                    <td><input type=\"password\" name=\"pwd\" id=\"password\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td><lable for=\"contact\">Contact:</lable></td> \n");
      out.write("                    <td><input type=\"text\" name=\"cont\" id=\"contctno\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                      <td><label for=\"gender\">Gender:</label></td> \n");
      out.write("                      <td><input type=\"radio\" name=\"gender\" value=\"Male\"> Male\n");
      out.write("                        <input type=\"radio\" name=\"gender\" value=\"Female\"> Female</td> \n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("\t\t\t<td><label for=\"dob\">Date of Birth:</label></td>\n");
      out.write("\t\t\t<td> \n");
      out.write("                            <select id=\"dd\" name=\"date\">\n");
      out.write("                                <option value=\"dd\">DD</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                                <script type=\"text/javascript\">\n");
      out.write("                                    for(var i=1;i<32;i++)\n");
      out.write("                                    document.write(\"<option value='\"+i+\"'>\" + i+\"</option> \");\n");
      out.write("                                </script>\n");
      out.write("                            </select>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t<select id=\"mmm\" name=\"date\">\n");
      out.write("                                <option value=\"mmm\">MMM</option>\n");
      out.write("\t\t\t\t<option value=\"0\">JAN</option>\n");
      out.write("\t\t\t\t<option value=\"1\">FEB</option>\n");
      out.write("\t\t\t\t<option value=\"2\">MAR </option>\n");
      out.write("\t\t\t\t<option value=\"3\">APR</option>\n");
      out.write("\t\t\t\t<option value=\"4\">MAY</option>\n");
      out.write("                                <option value=\"5\">JUN</option>\n");
      out.write("\t\t\t\t<option value=\"6\">JUL</option>\n");
      out.write("\t\t\t\t<option value=\"7\">AUG</option>\n");
      out.write("\t\t\t\t<option value=\"8\">SEP</option>\n");
      out.write("\t\t\t\t<option value=\"9\">OCT</option>\n");
      out.write("\t\t\t\t<option value=\"10\">Nov</option>\n");
      out.write("                                <option value=\"11\">DEC</option>\n");
      out.write("\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("                            <select id=\"yyyy\" name=\"date\">\n");
      out.write("\t\t\t<option value=\"yyyy\"selected>YYYY</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t<script type=\"text/javascript\">\n");
      out.write("\tvar dt= new Date();\n");
      out.write("\tfor(var i=1979;i<=dt.getFullYear()+18;i++)\n");
      out.write("\tdocument.write(\"<option value='\"+i+\"'>\" + i+\"</option> \");\n");
      out.write("\t</script>\n");
      out.write("        \n");
      out.write("        <tr>\n");
      out.write("            <td><input type=\"submit\" value=\"Update\" /></a></td>\n");
      out.write("            <td><a href=\"view.jsp\"> <input type=\"submit\" value=\"Back\" /></a></td>\n");
      out.write("        </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
