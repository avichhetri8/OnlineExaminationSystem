<%-- 
    Document   : courses
    Created on : May 16, 2018, 6:22:58 PM
    Author     : AVI CHHETRI
--%>


<%@page import="com.ijpioneer.classes.*"%>
<!DOCTYPE html>
<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="java.util.ArrayList"%>
        <jsp:useBean id="pDAO" class="com.ijpioneer.database.DatabaseClass" scope="page"/>
        <jsp:include page="backendnav.jsp"/>
    </head>
    <body>
<!-- SIDEBAR -->
			<div><div class="wrapper">
            <!-- Sidebar Holder -->
           
                             <nav id="sidebar" style="background-color: black">
                <div class="sidebar-header" style="background-color: red">
                    <h3>Admin Panel</h3>
                    <strong>AP</strong>
                </div>

                <ul class="list-unstyled components" style="margin-top:20%" >
                      <li >
                        <a href="adm-page.jsp?pgprt=0">
                            <i class="glyphicon glyphicon-link"></i>
                            Profile
                        </a>
                    </li>
                      <li class="active">
                        <a href="adm-page.jsp?pgprt=2">
                            <i class="glyphicon glyphicon-link"></i>
                            Courses
                        </a>
                    </li>
                    <li>
                        <a href="adm-page.jsp?pgprt=1">
                            <i class="glyphicon glyphicon-link"></i>
                            Accounts
                        </a>
                    </li>
                    <li>
                        <a href="adm-page.jsp?pgprt=5">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Register
                        </a>
                    </li>
                    <li>
                        <a href="adm-page.jsp?pgprt=4">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Result
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
                                 <div  class="panel form-style-6" style="max-width: 450px" >
           <div class="title">
                                   Add New Course
                                </div>
            <center>
               <form action="controller.jsp" >
                   <br>
                   <table style="color:white">
                       <tr>
                           <td><label>Course Name</label></td>
                           <td> <input type="text" name="coursename" class="text" placeholder="Course Name"  style="width: 230px;"></td>
                       </tr>
                       <tr>
                           <td><label>Total Marks</label></td>
                           <td><input type="text" name="totalmarks" class="text" placeholder="Total Marks" style="width: 230px;" ></td>
                       </tr>
                       <tr>
                           <td><label>Exam Time</label></td>
                           <td>
                                <input type="text" name="time" class="text" placeholder="MM" style="width: 230px;" >
                           </td>
                           
                       </tr>
                       <tr>
                           <td colspan="2"><input type="hidden" name="page" value="courses">
                    <input type="hidden" name="operation" value="addnew">
                       <center><input type="submit" class="form-button" value="Add" name="submit"></center></td>
                       </tr>
                   </table>

                </form>
            </center>
           
    </div>
                            
                            <div class="panel" style="max-width: 450px;margin-left:50%;margin-top:-20%">
                                <div class="title">
                                   All Courses
                                </div>
                                <table id="one-column-emphasis" style="min-width: 400px;margin: 5px; margin-top: 35px" >
                        <colgroup>
                            <col class="oce-first" />
                            <col class="oce-first" />
                            <col class="oce-first" />
                            
                        </colgroup>
                        <thead>
                            <tr>
                                    <th scope="col">Courses</th>

                                <th scope="col">T.Marks</th>
                                <th scope="col">Action</th>

                            </tr>
                        </thead>
    
                                       
        <% 
            ArrayList list=pDAO.getAllCourses();
            
            for(int i=0;i<list.size();i=i+2){
        %>
        
        <tr>
        <td><%=list.get(i)%></td>
        <td><%=list.get(i+1)%></td>
        <td ><a  href="controller.jsp?page=courses&operation=del&cname=<%=list.get(i)%>" 
                onclick="return confirm('Are you sure you want to delete this ?');" class="del">
                <center> <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding-left: 3px">X</div></center>
            </a></td>
    </tr>
            <%
            }
            %>
            </table>
        </div>
       
     </div>
                      </div>
               </div>
                        </div>
            
    </body>
</html>