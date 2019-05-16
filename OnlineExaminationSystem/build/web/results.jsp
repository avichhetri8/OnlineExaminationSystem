<%-- 
    Document   : results
    Created on : May 16, 2018, 6:28:34 PM
    Author     : AVI CHHETRI
--%>
<html>
    <head>
        <title>Result</title>
        <%@page import="com.ijpioneer.classes.*" %>
        <%@page import="java.util.ArrayList"%>
        <jsp:useBean id="pDAO" class="com.ijpioneer.database.DatabaseClass" scope="page"/>
        <jsp:include page="backendnav.jsp" />
        
        <script>
        function printContent(e){
            var restorepage= document.body.innerHTML;
            var content=document.getElementById(e).innerHTML;
            document.body.innerHTML=content;
            window.print();
            document.body.innerHTML=restorepage;
        }
    </script>
    </head>
        
    <body>
<!-- SIDEBAR -->
            
<%
           User user=pDAO.getUserDetails(session.getAttribute("userId").toString());
           if(user.getType().endsWith("student")){
        %>
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
                      
                   
                    <li >
                        <a href="std-page.jsp?pgprt=2">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Exams
                        </a>
                    </li>
                    <li class="active">
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
                            <div class="panel" style="float: left;max-width: 900px">
                                
        <%
            if(request.getParameter("eid")==null){
        %>
        <div class="title">All Results</div>
           <table id="rounded-corner">
    <thead>
    	<tr>
            <th scope="col" class="rounded-company">Date</th>
            <th scope="col" class="rounded-q1">Course</th>
            <th scope="col" class="rounded-q2">Time</th>
            <th scope="col" class="rounded-q3">Status</th>
            <th scope="col" class="rounded-q4">Action</th>
        </tr>
    </thead>
        
    <tbody>
        
        <%
            ArrayList list=pDAO.getAllResultsFromExams(Integer.parseInt(session.getAttribute("userId").toString()));
            for(int i=0;i<list.size();i++){
                Exam e=(Exam)list.get(i);
            %>
    	<tr>
            <td><%=e.getDate() %></td>
            <td><%=e.getcName() %></td>
            <td><%=e.getStartTime()+" - "+e.getEndTime()%></td>
            <% if(e.getStatus()!=null){
                if(e.getStatus().equals("Pass")){%>
                <td style="background: #00cc33;color:white"><%=e.getStatus()%></td>
            <% }else{%>
            <td style="background: #ff3333;color:white"><%=e.getStatus()%></td>
            <% }
            }else{%>
            <td style="background: bisque ;">Terminated</td>
            <% } %>
            <td><a href="std-page.jsp?pgprt=3&eid=<%=e.getExamId()%>">Details</a></td>
        </tr>
       
       <% }
       %>
    </tbody>
</table>
       <%
            }else{
                %>
                <div class="title">Result Details</div>
                <table id="gradient-style" >
                
                <%
                ArrayList list=pDAO.getAllAnswersByExamId(Integer.parseInt(request.getParameter("eid")));
                for(int i=0;i<list.size();i++){
                    Answer a=(Answer) list.get(i);
                
            %>

            
                <tr>
                    <td rowspan="2"><%=i+1 %>)</td>
                    <td colspan="2"><%=a.getQuestion()%></td>
                    <td rowspan="2"><%=a.getStatus() %></td>
                </tr>
                <tr >
                    <td><%="Your Ans: "+a.getAnswer()%></td>
                    <td><%="Correct Ans: "+a.getCorrectAns() %></td>
                </tr>
                <tr>
                    <td colspan="3" style="background: white"></td>
                <%
                }
                %>
            </table>
                    
            </div>
             </div>
             </div>
                            </div>
                        </div>
            <%
            }
            %>
             <%
           }else if(user.getType().endsWith("admin")){
                
        %>
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
                    <li class="active">
                        <a href="adm-page.jsp?pgprt=4">
                            <i class="glyphicon glyphicon-paperclip"></i>
                            Result
                        </a>
                    </li>
                    <li >
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
                            <div class="panel" style="float: left;max-width: 900px">
            <div id="print">                       
           <div class="title">All Results</div>
           <table id="rounded-corner">
    <thead>
    	<tr>
            <th scope="col" class="rounded-company">Date</th>
            <th scope="col" class="rounded-company">Student ID</th>
            <th scope="col" class="rounded-q1">Course</th>
            <th scope="col" class="rounded-q2">Time</th>
            <th scope="col" class="rounded-q3">Status</th>
            
        </tr>
    </thead>
        
    <tbody>
        
        <%
            ArrayList list=pDAO.getAllResultsFromExamsAll();
            for(int i=0;i<list.size();i++){
                Exam e=(Exam)list.get(i);
            %>
    	<tr>
            <td><%=e.getDate() %></td>
             <td><%=e.getStdId() %></td>
            <td><%=e.getcName() %></td>
            <td><%=e.getStartTime()+" - "+e.getEndTime()%></td>
            <% if(e.getStatus()!=null){
                if(e.getStatus().equals("Pass")){%>
                <td style="background: #00cc33;color:white"><%=e.getStatus()%></td>
            <% }else{%>
            <td style="background: #ff3333;color:white"><%=e.getStatus()%></td>
            <% }
            }else{%>
            <td style="background: bisque ;">Terminated</td>
            <% } %>
        </tr>
       
       <% }
       %>
    </tbody>
    </table>
    </div>
    <button  onclick="printContent('print')" style="float:right">Print</button>
                            </div>
    </div>
        <% 
            }
            %>
           
            
   </div>
    </div>
     </div>
                            
</body>
<h1>
    
    </html>
                        