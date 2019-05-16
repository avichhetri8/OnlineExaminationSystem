<%-- 
    Document   : Exam
    Created on : May 16, 2018, 6:53:24 PM
    Author     : AVI CHHETRI
--%>
<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="java.util.ArrayList"%>
        <jsp:useBean id="pDAO" class="com.ijpioneer.database.DatabaseClass" scope="page"/>
        <%@page import="com.ijpioneer.classes.*" %>
        <jsp:include page="backendnav.jsp"/>
    </head>
    <body>
<!-- SIDEBAR -->
		<div><div class="wrapper">	
                        
                         <nav id="sidebar" style="background-color: black">
                <div class="sidebar-header" style="background-color: red">
                    <h3>Student Panel</h3>
                    <strong>SP</strong>
                </div>

                <ul class="list-unstyled components" style="margin-top:20%">
                      <li >
                        <a href="std-page.jsp?pgprt=0">
                            <i class="glyphicon glyphicon-link"></i>
                            Profile
                        </a>
                    </li>
                      
                   
                    <li class="active">
                        <a href="std-page.jsp?pgprt=2">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Exams
                        </a>
                    </li>
                    <li >
                        <a href="std-page.jsp?pgprt=3">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Results
                        </a>
                    </li>
                                        <li>
                        <a href="controller.jsp?page=logout">
                            <i class="glyphicon glyphicon-send"></i>
                            Logout
                        </a>
                    </li>
                </ul>
            </nav>
             <div id="content">
                
                <nav >
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                <span></span>
                            </button>
                        </div>
                       
                    </div> 
                     
                </nav>
            
               <!-- CONTENT AREA -->
		<div class="content-area">
                            
                               
    <% if(session.getAttribute("examStarted")!=null){ %> 
    
    <% }%>
    
    
        <% if(request.getParameter("showresult")!=null){
               if(request.getParameter("showresult").equals("1")){
                  Exam result= pDAO.getResultByExamId(Integer.parseInt(request.getParameter("eid")));
           %>
           <div class="panel" style="float: left;max-width: 900px">
           <div class="title">Result of Recent Exam</div>
           <div class="profile">
               <span class="tag">Exam Date</span><span class="val"><%=result.getDate() %></span><br/>
               <span class="tag">Start Time</span><span class="val"><%=result.getStartTime() %></span><br/>
               <span class="tag">End Time</span><span class="val"><%=result.getEndTime() %></span><br/>
               <span class="tag">Course</span><span class="val"><%=result.getcName() %></span><br/>
               <span class="tag">Obt Marks</span><span class="val"><%=result.getObtMarks() %></span><br/>
               <span class="tag">Total Marks</span><span class="val"><%=result.gettMarks() %></span><br/>
               <span class="tag">Result</span><span class="val"><%=result.getStatus() %></span></h2>
           </div>
           <p></p>
           <p></p>
           <p></p>
           <p></p>
           <p></p>
           </div>
           <%
           }
           }else if(session.getAttribute("examStarted")==null ){
        %>
        <div class="panel form-style-6" style="float: left;max-width: 900px; padding-top: 40px;">
            <div class="title" style="margin-top: -60px;">Select Course to Take Exam</div>
       <br/>
           
               <form action="controller.jsp">
                   <br/><br>
                <label>Select Course</label>
                <input type="hidden" name="page" value="exams">
                <input type="hidden" name="operation" value="startexam">
                <select name="coursename" class="text">
        <% 
            ArrayList list1=pDAO.getAllCourses();
            
            for(int i=0;i<list1.size();i=i+2){
        %>
        <option value="<%=list1.get(i)%>"><%=list1.get(i)%></option>
            <%
            }
            %>
            </select>
            <input type="submit" value="Take Exam" class="form-button">
            </form>
         
        </div>
       <% }%>
    
</div>
             </div>
                    </div>
                </div>
    </body>
</html>
       