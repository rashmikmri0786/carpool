<%@ include file="header1.html" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,p.*"%>

    <div style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;">
            Welcome,<%=session.getAttribute("username")%>
    </div>
    
    <div  style=" width:100px;font-size:15px;text-align:center;line-height:20px;color: blue;margin-left:90%;">     
           <a href="finallogout.jsp">logout</a>
    </div>
<div  style="width:150px;font-size:15px;text-align:center;line-height:20px;color: blue;">     
           <a href="welcome_user.jsp">Back to Main Menu</a>
    </div>
    
           
            <center>
            <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            %>
            
            <% 
            try
            {
            	String userid=(String)session.getAttribute("userid");
            	Connection con=ConnectionProvider.getCon();
            	PreparedStatement pst=con.prepareStatement("select * from carpool_usercardetails where user_id=?");
            	pst.setString(1,userid);
            	
            	ResultSet rs=pst.executeQuery();
            	if(!rs.next())
            	{
            	out.println("<h3>You Have Not Registered Your Car Yet!</h3><br><br>");
            	}
            	else
            	{
            	
            	%> 
            		</center>
            		<div style="position: absolute;top:50%;left:35%;background-color: aqua;width:370px;">
            		<form action="delete_cardetails.jsp">
            		<h3>Do you really want to delete your car details?<br></h3>
            		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            		<input type="submit" value="yes" name="btn"/>&nbsp;&nbsp;<input type="submit" value="no" name="btn"/>
            		</form>
            		</div>
            	<% 
            	}
            	con.close();
            	
            }
            catch(Exception e)
            {
            System.out.println(e);
            }
            %>
			       <%@include file="footer.html"%>