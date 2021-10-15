<%@ include file="header.html" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,p.*"%>

    <div style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;">
            Welcome,<%=session.getAttribute("username")%>
    </div>
    
    <div  style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;margin-left:90%;">     
           <a href="index.jsp?msg=You are successfully Logged out!">logout</a>
    </div>
<div  style="width:150px;font-size:15px;text-align:center;line-height:20px;color: blue;">     
           <a href="welcome_admin.jsp">Back to Main Menu</a>
    </div>
    
           
            <center>
            <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            	
            	String userid=request.getParameter("userid");
            	session.setAttribute("userid",userid);
            %>
            		</center>
            		<div style="position: absolute;top:50%;left:35%;background-color: aqua;width:370px;">
            		<form action="deletecartodb_byadmin.jsp">
            		<h3>Do you really want to delete car details?<br></h3>
            		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            		<input type="submit" value="yes" name="btn"/>&nbsp;&nbsp;<input type="submit" value="no" name="btn"/>
            		</form>
            		</div>
                   <%@include file="footer.html"%>