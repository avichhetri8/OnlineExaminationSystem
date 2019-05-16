<%-- 
    Document   : accounts.jsp
    Created on : May 16, 2018, 6:18:14 PM
    Author     : AVI CHHETRI
--%>

<html>
    <head>
            <%@page import="com.ijpioneer.classes.*"%>
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

                <ul class="list-unstyled components" style="margin-top:20%">
                      <li >
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
                    <li class="active">
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
            <div class="content-area" >
                            <div class="inner" style="margin-top: 50px;margin-left: 8px;background-color: grey;max-width:87%">
                                <div class="title" style="margin-top: 20px;margin-left:0%">List of All Registered Persons</div>
       
                             
           
                       <table id="one-column-emphasis" >
    <colgroup>
    	<col class="oce-first" />
        <col class="oce-first" />
        <col class="oce-first" />
        <col class="oce-first" />
        <col class="oce-first" />
        <col class="oce-first" />
        
    </colgroup>
    <thead>
    	<tr>
        
            <th scope="col" class="oce-first" >Name</th>
            <th scope="col" class="oce-first" >email</th>
            <th scope="col" class="oce-first" >City</th>
            <th scope="col" class="oce-first" >Address</th>
            <th scope="col" class="oce-first" >User Type</th>
            <th scope="col" class="oce-first" >Action</th>
            
        </tr>
    </thead>
    <tbody>
           <%
              ArrayList list=pDAO.getAllUsers();
              User user;
              for(int i=0;i<list.size();i++){
                  user=(User)list.get(i);
                  if(user.getUserId()!= Integer.parseInt(session.getAttribute("userId").toString())){
               %>
   
    	<tr >
            <td><%=user.getFirstName()+" "+user.getLastName() %></td>
            <td><%=user.getEmail() %></td>
            <td><%=user.getCity() %></td>
            <td><%=user.getAddress() %></td>
            <td><%=user.getType() %></td>
            <td><a href="controller.jsp?page=accounts&operation=del&uid=<%=user.getUserId() %>" 
                  onclick="return confirm('Are you sure you want to delete this ?');">
                <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding: 3px">X</div>
                </a></td>
            
        </tr>
         
               
               
               <%
                  }
                  } %>
               
                </tbody>
</table>
           
    
                            </div>
                        </div>
             </div>
                            </div>
                  </div></div>
    </body>
</html>