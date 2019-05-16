<%-- 
    Document   : profile
    Created on : May 16, 2018, 6:27:05 PM
    Author     : AVI CHHETRI
--%>

<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ijpioneer.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="com.ijpioneer.database.DatabaseClass" scope="page"/>
<jsp:include page="backendnav.jsp" />
</head>

<body>
    <div><div class="wrapper">
        <%
                
                   User user=pDAO.getUserDetails(session.getAttribute("userId").toString());
                   
                   if(user.getType().endsWith("admin")){
                %>
    
            <!-- Sidebar Holder -->
               <nav id="sidebar" style="background-color: black">
                <div class="sidebar-header" style="background-color: red">
                    <h3>Admin Panel</h3>
                    <strong>AP</strong>
                </div>

                <ul class="list-unstyled components" style="margin-top:20%">
                      <li class="active">
                        <a href="adm-page.jsp?pgprt=0">
                            <i class="glyphicon glyphicon-link"></i>
                            Profile
                        </a>
                    </li>
                      <li>
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
            
            <%
                
           }else if(user.getType().endsWith("teacher")){
                
        %>
            <nav id="sidebar" style="background-color: black">
                <div class="sidebar-header" style="background-color: red  ">
                    <h3>Teacher Panel</h3>
                    <strong>TP</strong>
                </div>

                <ul class="list-unstyled components" style="margin-top:20%">
                      <li class="active">
                        <a href="tech-page.jsp?pgprt=0">
                            <i class="glyphicon glyphicon-link"></i>
                            Profile
                        </a>
                    </li>
                      
                   
                    <li>
                        <a href="tech-page.jsp?pgprt=3">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Add Questions
                        </a>
                    </li>
                    <li >
                        <a href="tech-page.jsp?pgprt=4">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Show All Question 
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
            
        
        <%
            }else{
        %>
             <nav id="sidebar" style="background-color: black">
                <div class="sidebar-header" style="background-color: red">
                    <h3>Student Panel</h3>
                    <strong>SP</strong>
                </div>

                <ul class="list-unstyled components" style="margin-top:20%">
                      <li class="active">
                        <a href="std-page.jsp?pgprt=0">
                            <i class="glyphicon glyphicon-link"></i>
                            Profile
                        </a>
                    </li>
                      
                   
                    <li>
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
            
                
        <%
            }
        %>
            <!-- Page Content Holder -->
           
                 <div class="content-area">
           <div class="panel" style="max-width: 600px">
                <%
                  if(request.getParameter("pedt")==null){
           %>
         
           <div class="title" style="height:20%;padding-top:2%;padding-bottom: 2% ">Profile</div>
           <div class="profile ">
               <h2><span class="tag">Your Name</span><span class="val"><%=user.getFirstName()+" " %><%=user.getLastName() %></span><br/>
               <span class="tag">Email</span><span class="val"><%=user.getEmail() %></span><br/>
               <span class="tag">Contact No</span><span class="val"><%=user.getContact() %></span><br/>
               <span class="tag">City</span><span class="val"><%=user.getCity() %></span><br/>
               <span class="tag">Address</span><span class="val"><%=user.getAddress() %></span></h2>
           </div>
               <%
               if(user.getType().equals("admin")){
               %>
               <br/>
               <a href="adm-page.jsp?pgprt=0&pedt=1"><span class="add-btn">Edit Profile</span></a>
               <% 
               } else if(user.getType().equals("teacher")){
               %>
               <br/>
               <a href="tech-page.jsp?pgprt=0&pedt=1"><span class="add-btn">Edit Profile</span></a>
               <%
                   } else {
               %>  <br/>
               <a href="std-page.jsp?pgprt=0&pedt=1"><span class="add-btn">Edit Profile</span></a>
               <% 
               }
               %>
           </div>
           <%
           }else{
               %>
                    <div class="title">Edit Profile</div>
               <div class="central-div form-style-6" style="position:inherit;margin-top: 70px;" >
                    <form action="controller.jsp">
                        <input type="hidden" name="page" value="profile"> 
                        <input type="hidden" name="utype" value="<%=user.getType()%>">
				<table>
					
					<tr>
						<td>
							<label>First Name</label>
						</td>
						<td>
                                                    <input type="text" name="fname" value="<%=user.getFirstName() %>" class="text" placeholder="First Name">
						</td>
					</tr>
					<tr>
						<td>
							<label>Last Name</label>
						</td>
						<td>
                                                    <input type="text"  name="lname" value="<%=user.getLastName() %>" class="text" placeholder="Last Name">
						</td>
					</tr>
					
					<tr>
						<td>
							<label>User Name</label>
						</td>
						<td>
                                                    <input type="text" name="uname" value="<%=user.getUserName() %>" class="text" placeholder="User Name">
						</td>
					</tr>
					<tr>
						<td>
							<label>Email</label>
						</td>
						<td>
                                                    <input type="email" name="email" value="<%=user.getEmail() %>" class="text" placeholder="Email">
						</td>
					</tr>
					
					<tr>
						<td>
							<label>Password</label>
						</td>
						<td>
                                                    <input type="password" value="<%=user.getPassword() %>" name="pass" class="text" placeholder="Password">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>Contact No</label>
						</td>
						<td>
                                                    <input type="text" name="contactno" value="<%=user.getContact() %>" class="text" placeholder="Contact No">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>City</label>
						</td>
						<td>
                                                    <input type="text" name="city" value="<%=user.getCity() %>" class="text" placeholder="City">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>Address</label>
						</td>
						<td>
                                                    <input type="text" name="address" value="<%=user.getAddress() %>" class="text" placeholder="Address">
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<center>
							
							<input type="submit" value="Done" class="button">
							</center>
						</td>
					</tr>
				</table>
			</form>
		</div>

                
               <%
           }
           %>
    
        </div>
    </div>
        </div>
        
            </div>
       
    </div>

        


</body>

</html>