<%-- 
    Document   : showall
    Created on : May 16, 2018, 6:30:16 PM
    Author     : AVI CHHETRI
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ijpioneer.classes.*" %>
<%@page import="java.util.ArrayList"%>
 <jsp:useBean id="pDAO" class="com.ijpioneer.database.DatabaseClass" scope="page"/>

<jsp:include page="backendnav.jsp" />

<!-- SIDEBAR -->
 <div>
     <div class="wrapper">
		 <nav id="sidebar" style="background-color: black">
                <div class="sidebar-header" style="background-color: red">
                    <h3>Teacher Panel</h3>
                    <strong>TP</strong>
                </div>

                <ul class="list-unstyled components" style="margin-top:20%">
                      <li >
                        <a href="tech-page.jsp?pgprt=0">
                            <i class="glyphicon glyphicon-link"></i>
                            Profile
                        </a>
                    </li>
                      
                   
                    <li>
                        <a href="tech-page.jsp?pgprt=3">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Questions
                        </a>
                    </li>
                    <li class="active">
                        <a href="tech-page.jsp?pgprt=4">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Show All 
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
            <div class="content-area" >
                 <div class="panel form-style-6" style="min-width: 300px;max-width: 390px;float: left">
            <form action="tech-page.jsp?pgprt=2">
                <div class="title">Show All Questions for</div>
                <br><br>
                <label style="color:white;"><b>Select Course</b></label>
                <input type="hidden" name="pgprt" value="2">
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
            <input type="submit" value="Show" class="form-button">
            </form>
            </div>
        
                         </div>
             </div>
     </div>
 </div>
