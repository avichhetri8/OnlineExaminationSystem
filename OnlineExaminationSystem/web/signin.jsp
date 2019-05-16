<%-- 
    Document   : singin.jsp
    Created on : May 16, 2018, 5:40:07 PM
    Author     : AVI CHHETRI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sign-In</title>
	<link rel="stylesheet" type="text/css" href="style.css">
        <style>
            #myVideo {
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%; 
            min-height: 100%;
}
   </style>
</head>
<body >
    <video autoplay muted loop id="myVideo">
        <source src="image/video.MP4" type="video/mp4">
       
      </video>
	<center>
		<div class="central-div">
			<form  method='post' action='controller.jsp'>
                             <input type="hidden" name="page" value="login"> 
				<table>
					<tr>
						<td colspan="2">
							<center><h2>SignIn Form</h2></center>
						</td>
					</tr>
					<tr>
						<td>
							<label>User Name</label>
						</td>
						<td>
                                                    <input type="text" class="text" placeholder="User Name" name="username">
						</td>
					</tr>
					<tr>
						<td>
							<label>Password</label>
						</td>
						<td>
                                                    <input type="password" class="text" placeholder="Password" name="password">
						</td>
					</tr>
					<tr>
						
						<td>
                                                    <% 
                                                        if(request.getSession().getAttribute("userStatus")!=null){
                                                            System.out.println("its called");
                                                      if(request.getSession().getAttribute("userStatus").equals("-1")){  
                                                          System.out.println("now inside");
                                                    %>
                                                    <script>alert("username or password is incorrect");</script>
                                                    <p style="color: rgba(255, 255, 51, 1);font-size: 17px">username or password is incorrect</p>
                                                    <br>
                                                    <%
                                                      }
                                                        }
                                                     %>
                                                <tr>
                                                    <th>
                                                        <input type="checkbox" style="margin-right:2%">
                                                    </th>
                                                    <td>  <label>Remember Me</label> </td>
                                                </tr>
                                                    
                                                   
					</tr>
					<tr>
						
						<th colspan="2">
							<center>
							<input type="submit" value="Login" class="button">
							</center>
						</th>
					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>