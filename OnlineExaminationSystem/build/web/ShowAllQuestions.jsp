<%-- 
    Document   : ShowAllQuestions
    Created on : Aug 30, 2018, 12:07:48 AM
    Author     : AMDPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ijpioneer.classes.*"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="com.ijpioneer.database.DatabaseClass" scope="page"/>

<!DOCTYPE html>
<html>
    
    <body style="background-color: lightskyblue">
        
           <center>
        <%
           if(request.getParameter("coursename")!=null){
               ArrayList list=pDAO.getAllQuestions(request.getParameter("coursename"));
               for(int i=0;i<list.size();i++){
                   Question question=(Question)list.get(i);
                   
                   %>
                   <div class="question-panel" >
						<div class="question" >
                                                    <label class="question-label"><%=i+1 %></label>
						<%=question.getQuestion() %>	
<a href="controller.jsp?page=questions&operation=delQuestion&qid=<%=question.getQuestionId() %>" 
                                                                             onclick="return confirm('Are you sure you want to delete this ?');" >
    <div class="delete-btn" style="position: absolute;right: 10px;top: -20px;">delete</div></a>
                                                </div>
						<div class="answer">
                                                        <label class="show"><%=question.getOpt1() %></label>
							<label class="show"><%=question.getOpt2() %></label>
							<label class="show"><%=question.getOpt3() %></label>
							<label class="show"><%=question.getOpt4() %></label>
                                                        <label class="show-correct"><%=question.getCorrect() %></label>
						</div>
					</div>
                   
                   <%
               }
          } %>
       </center>
     <a href="tech-page.jsp?pgprt=0" style="float:right;margin-right:5%;margin-top:4%">
         <div class="delete-btn" style="background-color:blue">Back</div>
     </a>
        </body>
</html>
