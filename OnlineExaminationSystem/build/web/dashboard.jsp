<%-- 
    Document   : dashboard
    Created on : May 16, 2018, 6:23:57 PM
    Author     : AVI CHHETRI
--%>


<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:useBean id="pDAO" class="com.ijpioneer.database.DatabaseClass" scope="page"/>

        <% 
           if(session.getAttribute("userStatus")!=null){
            String loginConfirm=session.getAttribute("userStatus").toString();
            if(loginConfirm.equals("1")){
                
            if(pDAO.getUserType(session.getAttribute("userId").toString()).equals("admin")){
            response.sendRedirect("adm-page.jsp?pgprt=0"); 
            
            }else if(pDAO.getUserType(session.getAttribute("userId").toString()).equals("student")){
              //  response.sendRedirect("adm-page.jsp?pgprt=0"); 
                response.sendRedirect("std-page.jsp?pgprt=0");
            }else if(pDAO.getUserType(session.getAttribute("userId").toString()).equals("teacher")){
                response.sendRedirect("tech-page.jsp?pgprt=0");
            }else {
                 response.sendRedirect("signin.jsp");
            }
                            
            }else{
                response.sendRedirect("signin.jsp");
            }
        }else response.sendRedirect("signin.jsp");
        %>