<%@ include file="header1.html" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,p.*"%>

    <div style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;">
            Welcome,<%=session.getAttribute("username")%>
    </div>
    
    <div  style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;margin-left:90%;">     
           <a href="index.jsp?msg=You are successfully Logged out!">logout</a>
    </div>
	<div  style="width:150px;font-size:15px;text-align:center;line-height:20px;color: blue;">     
      <% 
      String username=(String)session.getAttribute("username");
      if("Admin".equals(username))
      {
    	  out.println("<a href=welcome_admin.jsp>Back to Main Menu</a>");
      }
      else
      {
    	  out.println("<a href=welcome_user.jsp>Back to Main Menu</a>");
      }
      %>
      </div>
    
           
            <center>
            <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            	String userid=request.getParameter("userid");
            	if(userid!=null)
            		session.setAttribute("userid",userid);
            	
            %>
            
            		</center>
            		<div style="position: absolute;top:50%;left:35%;background-color: aqua;width:520px;">
            		<form action="delete_usertodb.jsp">
            		<h3>This will delete your car details and also account permanently..<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Do you really want to do it?<br></h3>
            		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            		<input type="submit" value="yes" name="btn"/>&nbsp;&nbsp;<input type="submit" value="no" name="btn"/>
            		</form>
            		</div>
                  <%@include file="footer.html"%>