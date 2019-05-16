<%-- 
    Document   : examtime
    Created on : Sep 15, 2018, 10:22:10 PM
    Author     : AMDPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.ijpioneer.classes.*"%>
<%@page import="com.ijpioneer.database.*" %>
<%@page import="java.util.*"%>
<jsp:useBean id="pDAO" class="com.ijpioneer.database.DatabaseClass" scope="page"/>
<!DOCTYPE html>                      
  
    
     
               <span id="remainingTime" style="position: fixed;top:90px;font-size:23px;background: rgba(255,0,77,0.38);border-radius: 5px;padding: 10px;box-shadow: 2px -2px 6px 0px;">
        </span>
                   
                    <script>
                        var time = <%=pDAO.getRemainingTime(Integer.parseInt(session.getAttribute("examId").toString())) %>;
    time--;
    var sec=60;                    
    document.getElementById("remainingTime").innerHTML =  time+" : "+sec;
       //it calls fuction after specific time again and again                  
   var x= window.setInterval(timerFunction, 1000);

function timerFunction(){
        sec--;
  // Display the result in the element with id="demo"
  
 
  if (time < 0) {
    clearInterval(x);
    document.getElementById("remainingTime").innerHTML = "00 : 00";
    document.getElementById("myform").submit();
  }
  document.getElementById("remainingTime").innerHTML =  time+" : "+sec;
if(sec==0){
    sec=60;
    time--;
    
}
}
</script>

<form action="controller.jsp" method="post">
                   <input type="hidden" name="page" value="exams">
                   <input type="hidden" name="operation" value="submitted"> 
                  
                       <%
                       ArrayList list=pDAO.getQuestions(request.getParameter("coursename"),5);
                       Question question;
                       %>
                       <input type="hidden" name="size" value="<%=list.size()%>">
                       <input type="hidden" name="totalmarks" value="<%=pDAO.getTotalMarksByName(request.getParameter("coursename"))%>">
                       
                       <%
                       for(int i=0;i<list.size();i++){
                           question=(Question)list.get(i);
                       %>
         
                       
                       <center>
					<div class="question-panel">
						<div class="question" >
						<label class="question-label"><%=i+1 %></label>
						<%=question.getQuestion() %>
                                                </div>
						<div class="answer">
							<input type="radio" id="c1<%=i%>" name="ans<%=i%>" value="<%=question.getOpt1()%>"/>
							<label for="c1<%=i%>"><%=question.getOpt1()%></label>
							<input type="radio" id="c2<%=i%>" name="ans<%=i%>" value="<%=question.getOpt2()%>" />
							<label for="c2<%=i%>"><%=question.getOpt2()%></label>
							<input type="radio" id="c3<%=i%>" name="ans<%=i%>" value="<%=question.getOpt3()%>" />
							<label for="c3<%=i%>"><%=question.getOpt3()%></label>
							<input type="radio"  id="c4<%=i%>" name="ans<%=i%>" value="<%=question.getOpt4()%>"/>
							<label for="c4<%=i%>" ><%=question.getOpt4()%></label>
							
						</div>
					</div>
                       </center>
                       <input type="hidden" name="question<%=i%>" value="<%=question.getQuestion()%>">
                       <input type="hidden" name="qid<%=i%>" value="<%=question.getQuestionId()%>">
                       
                       
                       
                       <%
                       }
                       
                       %>
                       
                        <center>
                       <input type="submit" class="add-btn" value="Done">
                   </center>
                   
               </form>
               
               
                
                