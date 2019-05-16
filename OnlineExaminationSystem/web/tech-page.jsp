<%-- 
    Document   : tech-page
    Created on : Aug 4, 2018, 3:42:31 AM
    Author     : AMDPC
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="com.ijpioneer.database.DatabaseClass" scope="page"/>
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
           
            if(request.getParameter("pgprt").equals("3")){
                
            %>
            
                <jsp:include page="questions.jsp"/>
             <%
                  }else if(request.getParameter("pgprt").equals("4")){// if( 4 == 4 )
               %>
            
                <jsp:include page="showall.jsp"/>
            <%
                
            }else if(request.getParameter("pgprt").equals("2")){
            
                %>
            
                <jsp:include page="ShowAllQuestions.jsp"/>
                
                
            <%
                       }else{
                %>
            
                <jsp:include page="profile.jsp"/>
            
            <%
            }
            %>
            
            <%
            }else response.sendRedirect("signin.jsp");
           }else response.sendRedirect("sigin.jsp");
                %>
              

</body>
</html>