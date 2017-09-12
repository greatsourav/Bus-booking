package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class success_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         <img src=\"/bb1/images/im4.PNG\" height=\"300\" width=\"1350\" />\n");
      out.write("       <table align=\"left\" border=\"0\" width=\"270\">\n");
      out.write("           <tr>\n");
      out.write("               <td><a href=\"/bb1/p1.html\" style=\"text-decoration: none\">Home</a></td>\n");
      out.write("           </tr>\n");
      out.write("           <tr>\n");
      out.write("               <td><a href=\"/bb1/bsch.html\" style=\"text-decoration: none\">Bus Schedule</a></td>\n");
      out.write("           </tr>\n");
      out.write("           <tr>\n");
      out.write("               <td><a href=\"/bb1/addbus.html\" style=\"text-decoration: none\">Add Bus</a></td>\n");
      out.write("           </tr>\n");
      out.write("           <tr>\n");
      out.write("               <td>Add Pickup Stand</td>\n");
      out.write("           </tr>\n");
      out.write("           <tr>\n");
      out.write("               <td>View Report</td>\n");
      out.write("           </tr>\n");
      out.write("           <tr>\n");
      out.write("               <td>Logout</td>\n");
      out.write("           </tr>\n");
      out.write("       </table>\n");
      out.write("       ");

           String name=request.getParameter("ud");
           
      out.write("\n");
      out.write("         Welcome!! <font color=\"orange\">");
 out.println(name); 
      out.write(" </font>To G.S.R.T.C<br>\n");
      out.write("        <h2><font color=\"orange\">Welcome to Gujarat State Road Transportation Corporation- Administrator Home </font></h2>\n");
      out.write("        <a href=\"/bb1/upn.html\">Update News</a> | <a href=\"/bb1/chnpw.html\">Change Password</a> | <a href=\"/bb1/ud.html\">User Details</a> | <a href=\"/bb1/vf.html\">View Feedback</a>    </body>\n");
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
