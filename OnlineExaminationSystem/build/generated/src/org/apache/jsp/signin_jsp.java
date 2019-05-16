package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("\t<title>Sign-In</title>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("        <style>\n");
      out.write("            #myVideo {\n");
      out.write("            position: fixed;\n");
      out.write("            right: 0;\n");
      out.write("            bottom: 0;\n");
      out.write("            min-width: 100%; \n");
      out.write("            min-height: 100%;\n");
      out.write("}\n");
      out.write("   </style>\n");
      out.write("</head>\n");
      out.write("<body >\n");
      out.write("    <video autoplay muted loop id=\"myVideo\">\n");
      out.write("        <source src=\"image/video.MP4\" type=\"video/mp4\">\n");
      out.write("       \n");
      out.write("      </video>\n");
      out.write("\t<center>\n");
      out.write("\t\t<div class=\"central-div\">\n");
      out.write("\t\t\t<form  method='post' action='controller.jsp'>\n");
      out.write("                             <input type=\"hidden\" name=\"page\" value=\"login\"> \n");
      out.write("\t\t\t\t<table>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td colspan=\"2\">\n");
      out.write("\t\t\t\t\t\t\t<center><h2>SignIn Form</h2></center>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>User Name</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"text\" class=\"text\" placeholder=\"User Name\" name=\"username\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>Password</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"password\" class=\"text\" placeholder=\"Password\" name=\"password\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    ");
 
                                                        if(request.getSession().getAttribute("userStatus")!=null){
                                                            System.out.println("its called");
                                                      if(request.getSession().getAttribute("userStatus").equals("-1")){  
                                                          System.out.println("now inside");
                                                    
      out.write("\n");
      out.write("                                                    <script>alert(\"username or password is incorrect\");</script>\n");
      out.write("                                                    <p style=\"color: rgba(255, 255, 51, 1);font-size: 17px\">username or password is incorrect</p>\n");
      out.write("                                                    <br>\n");
      out.write("                                                    ");

                                                      }
                                                        }
                                                     
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <th>\n");
      out.write("                                                        <input type=\"checkbox\" style=\"margin-right:2%\">\n");
      out.write("                                                    </th>\n");
      out.write("                                                    <td>  <label>Remember Me</label> </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                    \n");
      out.write("                                                   \n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<th colspan=\"2\">\n");
      out.write("\t\t\t\t\t\t\t<center>\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" value=\"Login\" class=\"button\">\n");
      out.write("\t\t\t\t\t\t\t</center>\n");
      out.write("\t\t\t\t\t\t</th>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>\n");
      out.write("\t</center>\n");
      out.write("</body>\n");
      out.write("</html>");
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
