package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.time.LocalTime;
import com.ijpioneer.classes.*;
import com.ijpioneer.database.*;
import java.util.*;
import java.util.*;

public final class controller_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" ");
      com.ijpioneer.database.DatabaseClass pDAO = null;
      synchronized (_jspx_page_context) {
        pDAO = (com.ijpioneer.database.DatabaseClass) _jspx_page_context.getAttribute("pDAO", PageContext.PAGE_SCOPE);
        if (pDAO == null){
          pDAO = new com.ijpioneer.database.DatabaseClass();
          _jspx_page_context.setAttribute("pDAO", pDAO, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');
      out.write('\n');

if(request.getParameter("page").toString().equals("login")){
if(pDAO.loginValidate(request.getParameter("username").toString(), request.getParameter("password").toString())){
    session.setAttribute("userStatus", "1");
    session.setAttribute("userId",pDAO.getUserId(request.getParameter("username")));
   
    response.sendRedirect("dashboard.jsp");

}else{
    request.getSession().setAttribute("userStatus", "-1");
    response.sendRedirect("signin.jsp");
}

}else if(request.getParameter("page").toString().equals("register")){
        
        String fName =request.getParameter("fname");
        String lName =request.getParameter("lname");
        String uName=request.getParameter("uname");
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        String contactNo =request.getParameter("contactno");
        String city =request.getParameter("city");
        String address =request.getParameter("address");
        String userType =request.getParameter("usertype");
         
    pDAO.addNewStudent(fName,lName,uName,email,pass,contactNo,city,address,userType);
    response.sendRedirect("adm-page.jsp?pgprt=1");
}else if(request.getParameter("page").toString().equals("profile")){
        
        String fName =request.getParameter("fname");
        String lName =request.getParameter("lname");
        String uName=request.getParameter("uname");
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        String contactNo =request.getParameter("contactno");
        String city =request.getParameter("city");
        String address =request.getParameter("address");
         String uType =request.getParameter("utype");
        int uid=Integer.parseInt(session.getAttribute("userId").toString());
    
         
    pDAO.updateStudent(uid,fName,lName,uName,email,pass,contactNo,city,address,uType);
    response.sendRedirect("dashboard.jsp");
}else if(request.getParameter("page").toString().equals("courses")){
    if(request.getParameter("operation").toString().equals("addnew")){
        pDAO.addNewCourse(request.getParameter("coursename"),Integer.parseInt(request.getParameter("totalmarks")),
                request.getParameter("time"));
        response.sendRedirect("adm-page.jsp?pgprt=2");
    }else if(request.getParameter("operation").toString().equals("del")){
        pDAO.delCourse(request.getParameter("cname").toString());
        response.sendRedirect("adm-page.jsp?pgprt=2");
    }

}else if(request.getParameter("page").toString().equals("accounts")){
    if(request.getParameter("operation").toString().equals("del")){
        pDAO.delUser(Integer.parseInt(request.getParameter("uid")));
        response.sendRedirect("adm-page.jsp?pgprt=1");
    }

}else if(request.getParameter("page").toString().equals("questions")){
    if(request.getParameter("operation").toString().equals("addnew")){
        pDAO.addQuestion(request.getParameter("coursename"),request.getParameter("question"),
                request.getParameter("opt1"), request.getParameter("opt2"),request.getParameter("opt3"),
        request.getParameter("opt4"), request.getParameter("correct"));
        response.sendRedirect("tech-page.jsp?pgprt=3");
    }else if(request.getParameter("operation").toString().equals("del")){
        pDAO.delCourse(request.getParameter("cname").toString());
        response.sendRedirect("tech-page.jsp?pgprt=3");
    }else if(request.getParameter("operation").toString().equals("delQuestion")){
        pDAO.delQuestion(Integer.parseInt(request.getParameter("qid")));
        response.sendRedirect("tech-page.jsp?pgprt=3");
        
    }

}else if(request.getParameter("page").toString().equals("exams")){
    if(request.getParameter("operation").toString().equals("startexam")){
        String cName=request.getParameter("coursename");
        int userId=Integer.parseInt(session.getAttribute("userId").toString());
        
        int examId=pDAO.startExam(cName,userId);
        session.setAttribute("examId",examId);
        session.setAttribute("examStarted","1");
        response.sendRedirect("std-page.jsp?pgprt=1&coursename="+cName);
    }else if(request.getParameter("operation").toString().equals("submitted")){
        try{
        String time=LocalTime.now().toString();
        int size=Integer.parseInt(request.getParameter("size"));
        int eId=Integer.parseInt(session.getAttribute("examId").toString());
        int tMarks=Integer.parseInt(request.getParameter("totalmarks"));
        session.removeAttribute("examId");
        session.removeAttribute("examStarted");
        for(int i=0;i<size;i++){
            String question=request.getParameter("question"+i);
            String ans=request.getParameter("ans"+i);
            
            int qid=Integer.parseInt(request.getParameter("qid"+i));
            
            pDAO.insertAnswer(eId,qid,question,ans);
        }
        System.out.println(tMarks+" conn\t Size: "+size);
        pDAO.calculateResult(eId,tMarks,time,size);
        
        response.sendRedirect("std-page.jsp?pgprt=1&eid="+eId+"&showresult=1");
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
    }

}else if(request.getParameter("page").toString().equals("logout")){
    session.setAttribute("userStatus","0");
    session.removeAttribute("examId");
    session.removeAttribute("examStarted");
    response.sendRedirect("index.jsp");
}


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
