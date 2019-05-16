<%-- 
    Document   : adm-page
    Created on : May 16, 2018, 6:21:24 PM
    Author     : AVI CHHETRI
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
	<!--<div class="top-area">
		<center><h2>Admin Panel</h2></center> 
        </div>-->

        <%
            if(session.getAttribute("userStatus")!=null){
            if(session.getAttribute("userStatus").equals("1")){
            
            %>
            
            
            
            
            
            <% 
            //pgpart = pagepart, accounts=1,courses=2,questions=3 and profile is default
            if(request.getParameter("pgprt").equals("1")){
                
            %>
            
                <jsp:include page="accounts.jsp"/>
            
            <%
                
            }else if(request.getParameter("pgprt").equals("2")){
            
                %>
            
                <jsp:include page="courses.jsp"/>
                  
            <%
                
            }else if(request.getParameter("pgprt").equals("4")){
            
                %>
            
                <jsp:include page="results.jsp"/>
               
            <%
            }else if(request.getParameter("pgprt").equals("5")){
                    %>
                    <jsp:include page="register.html"/>                     
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