<%-- 
    Document   : questions
    Created on : May 16, 2018, 6:27:48 PM
    Author     : AVI CHHETRI
--%>


<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                      
                   
                    <li class="active">
                        <a href="tech-page.jsp?pgprt=3">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Add Questions
                        </a>
                    </li>
                    <li >
                        <a href="tech-page.jsp?pgprt=4">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Show All Questions
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
                   
        <div class="panel form-style-6" style="max-width: 420!important;margin-right:10%">   
            <center> <form action="controller.jsp" >
                   <div class="title">Add New Question</div>
                   <table >
                       <tr>
                           <td><label style="color:white;">Course Name</label></td>
                           <td colspan="3"> 
                               <select name="coursename" class="text">
        <% 
            ArrayList list=pDAO.getAllCourses();
            
            for(int i=0;i<list.size();i=i+2){
        %>
        <option value="<%=list.get(i)%>"><%=list.get(i)%></option>
            <%
            }
            %>
            </select>
                           </td>
                       </tr>
                       <tr>
                           <td><label style="color:white;">Your Question:</label></td>
                           <td colspan="3"><input type="text" name="question" class="text" placeholder="Type your question here" style="width: 420px;" ></td><br>
                       </tr>
                       <tr>
                           <td><label style="color:white;">Options</label></td>
                           <td><input type="text" name="opt1" class="text" placeholder="First Option" style="width: 130px;" ></td>
                           <td><input type="text" name="opt2" class="text" placeholder="Second Option" style="width: 130px;" ></td>
                           <td><input type="text" name="opt3" class="text" placeholder="Third Option" style="width: 130px;" ></td>
                           <td><input type="text" name="opt4" class="text" placeholder="Fourth Option" style="width: 130px;" ></td>
                       </tr>
                       <tr>
                           <td><label style="color:white;">Correct Answer</label></td>
                           <td colspan="3"><center><input type="text" name="correct" class="text" placeholder="Correct Answer" style="width: 140px;" ></center></td>
                       <tr>
                           <td colspan="5"><input type="hidden" name="page" value="questions">
                    <input type="hidden" name="operation" value="addnew">
                       <center><input type="submit" class="form-button" value="Add" name="submit" style="height:50px"></center></td>
                           
                   </tr>
                   </table>

                </form>
            </center>
    
     </div>
                        </div>
             </div>
     </div>
            </div