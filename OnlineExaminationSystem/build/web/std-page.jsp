<%-- 
    Document   : std-page
    Created on : May 16, 2018, 6:31:15 PM
    Author     : AVI CHHETRI
--%>


<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style-backend.css">
</head>
<body style="background-color: lightskyblue">
	
    
    <%
           if(session.getAttribute("userStatus")!=null){
           if(session.getAttribute("userStatus").equals("1")){
            %>
            	
            
            
            <% 
            //pgpart = pagepart, exams=1,results=2 and  profile is default
            if(request.getParameter("pgprt").equals("2")){
                
            %>
                  <jsp:include page="exam.jsp"/>
            <% 
            //pgpart = pagepart, exams=1,results=2 and  profile is default
            }else if(request.getParameter("pgprt").equals("1")){
                
            %>
            
            <jsp:include page="examtime.jsp"/>
            
            <%
                
            }else if(request.getParameter("pgprt").equals("3")){
            
                %>
            
                <jsp:include page="results.jsp"/>
                
                <%
                
            }else if(request.getParameter("pgprt").equals("0")){
                %>
            
                <jsp:include page="profile.jsp" />
            
            <%
            }
            %>
            
            <%
           }else response.sendRedirect("login.jsp");
            }else response.sendRedirect("login.jsp");
            
          
           %>
            
           </body>
</html>
            
